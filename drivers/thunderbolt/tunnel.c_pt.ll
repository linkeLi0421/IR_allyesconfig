; ModuleID = '/llk/IR_all_yes/drivers/thunderbolt/tunnel.c_pt.bc'
source_filename = "../drivers/thunderbolt/tunnel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tb_tunnel = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.tb_regs_port_header = type { i16, i16, [12 x i8], i32, i32, i32, i32 }
%struct.tb_port = type { %struct.tb_regs_port_header, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i8, i8, i8, ptr, i8, %struct.ida, %struct.ida, %struct.list_head, i32, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tb_switch = type { %struct.device, %struct.tb_regs_switch_header, ptr, ptr, %struct.tb_switch_tmu, ptr, i64, ptr, i16, i16, ptr, ptr, i32, i32, i8, i32, i32, i32, i32, i32, i8, ptr, ptr, i8, i8, i8, i8, i32, i32, ptr, ptr, i8, i8, i8, i8, %struct.completion, i32, i8, i32, i32, i32, i32, i32, i32 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.tb_regs_switch_header = type <{ i16, i16, i32, i32, i64 }>
%struct.tb_switch_tmu = type { i32, i8, i32, i8, i8, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.tb = type { %struct.device, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [0 x i32] }
%struct.tb_nhi = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.ida, i8, %struct.work_struct, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.tb_path = type { ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, ptr, i32, i8 }
%struct.tb_path_hop = type { ptr, ptr, i32, i32, i32, i32, i32 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCIe Up\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PCIe Down\00", [22 x i8] zeroinitializer }, align 32
@tb_tunnel_discover_pci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 259, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%llx:%x: path does not end on a PCIe adapter, cleaning up\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tb_tunnel_discover_pci\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/thunderbolt/tunnel.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tb_tunnel_discover_pci._entry_ptr = internal global ptr @tb_tunnel_discover_pci._entry, section ".printk_index", align 4
@tb_tunnel_discover_pci._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 264, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%llx:%x <-> %llx:%x (%s): path is not complete, cleaning up\0A\00", [35 x i8] zeroinitializer }, align 32
@tb_tunnel_discover_pci._entry_ptr.9 = internal global ptr @tb_tunnel_discover_pci._entry.7, section ".printk_index", align 4
@tb_tunnel_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], [16 x i8] zeroinitializer }, align 32
@tb_tunnel_discover_pci._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 270, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%llx:%x <-> %llx:%x (%s): tunnel is not fully activated, cleaning up\0A\00", [58 x i8] zeroinitializer }, align 32
@tb_tunnel_discover_pci._entry_ptr.12 = internal global ptr @tb_tunnel_discover_pci._entry.10, section ".printk_index", align 4
@tb_tunnel_discover_pci.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.3, ptr @.str.4, ptr @.str.14, i8 0, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thunderbolt\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%llx:%x <-> %llx:%x (%s): discovered\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Video\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AUX TX\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AUX RX\00", [25 x i8] zeroinitializer }, align 32
@tb_tunnel_discover_dp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 820, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%llx:%x: path does not end on a DP adapter, cleaning up\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tb_tunnel_discover_dp\00", [42 x i8] zeroinitializer }, align 32
@tb_tunnel_discover_dp._entry_ptr = internal global ptr @tb_tunnel_discover_dp._entry, section ".printk_index", align 4
@tb_tunnel_discover_dp._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.19, ptr @.str.4, i32 831, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tb_tunnel_discover_dp._entry_ptr.21 = internal global ptr @tb_tunnel_discover_dp._entry.20, section ".printk_index", align 4
@tb_tunnel_discover_dp.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.19, ptr @.str.4, ptr @.str.14, i8 0, i8 -48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMA RX\00", [25 x i8] zeroinitializer }, align 32
@tb_tunnel_alloc_dma.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.23, ptr @.str.4, ptr @.str.24, i8 1, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tb_tunnel_alloc_dma\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%llx:%x <-> %llx:%x (%s): not enough buffers for RX path\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMA TX\00", [25 x i8] zeroinitializer }, align 32
@tb_tunnel_alloc_dma.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.23, ptr @.str.4, ptr @.str.26, i8 1, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%llx:%x <-> %llx:%x (%s): not enough buffers for TX path\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"USB3 Down\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"USB3 Up\00", [24 x i8] zeroinitializer }, align 32
@tb_tunnel_discover_usb3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 1398, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%llx:%x: path does not end on an USB3 adapter, cleaning up\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tb_tunnel_discover_usb3\00", [40 x i8] zeroinitializer }, align 32
@tb_tunnel_discover_usb3._entry_ptr = internal global ptr @tb_tunnel_discover_usb3._entry, section ".printk_index", align 4
@tb_tunnel_discover_usb3._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.30, ptr @.str.4, i32 1403, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tb_tunnel_discover_usb3._entry_ptr.32 = internal global ptr @tb_tunnel_discover_usb3._entry.31, section ".printk_index", align 4
@tb_tunnel_discover_usb3._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.30, ptr @.str.4, i32 1409, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tb_tunnel_discover_usb3._entry_ptr.34 = internal global ptr @tb_tunnel_discover_usb3._entry.33, section ".printk_index", align 4
@tb_tunnel_discover_usb3.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.30, ptr @.str.4, ptr @.str.35, i8 1, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%llx:%x <-> %llx:%x (%s): currently allocated bandwidth %d/%d Mb/s\0A\00", [60 x i8] zeroinitializer }, align 32
@tb_tunnel_discover_usb3.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.30, ptr @.str.4, ptr @.str.14, i8 1, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tb_tunnel_alloc_usb3.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.36, ptr @.str.4, ptr @.str.37, i8 1, i8 114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tb_tunnel_alloc_usb3\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%llx:%x: required bandwidth for USB3 tunnel %d Mb/s\0A\00", [43 x i8] zeroinitializer }, align 32
@tb_tunnel_alloc_usb3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.4, i32 1485, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%llx:%x: not enough bandwidth for USB3 tunnel\0A\00", [49 x i8] zeroinitializer }, align 32
@tb_tunnel_alloc_usb3._entry_ptr = internal global ptr @tb_tunnel_alloc_usb3._entry, section ".printk_index", align 4
@tb_tunnel_restart.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.39, ptr @.str.4, ptr @.str.40, i8 1, i8 -116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tb_tunnel_restart\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%llx:%x <-> %llx:%x (%s): activating\0A\00", [58 x i8] zeroinitializer }, align 32
@tb_tunnel_restart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.4, i32 1619, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%llx:%x <-> %llx:%x (%s): activation failed\0A\00", [51 x i8] zeroinitializer }, align 32
@tb_tunnel_restart._entry_ptr = internal global ptr @tb_tunnel_restart._entry, section ".printk_index", align 4
@.str.42 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%s %s: %llx:%x <-> %llx:%x (%s): trying to activate an already activated tunnel\0A\00", [47 x i8] zeroinitializer }, align 32
@tb_tunnel_deactivate.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.43, ptr @.str.4, ptr @.str.44, i8 1, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tb_tunnel_deactivate\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%llx:%x <-> %llx:%x (%s): deactivating\0A\00", [56 x i8] zeroinitializer }, align 32
@tb_tunnel_consumed_bandwidth.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.45, ptr @.str.4, ptr @.str.46, i8 1, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tb_tunnel_consumed_bandwidth\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%llx:%x <-> %llx:%x (%s): consumed bandwidth %d/%d Mb/s\0A\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCI\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DP\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DMA\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"USB3\00", [27 x i8] zeroinitializer }, align 32
@tb_dp_xchg_caps.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.51, ptr @.str.4, ptr @.str.52, i8 0, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tb_dp_xchg_caps\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%llx:%x: maximum supported bandwidth %u Mb/s x%u = %u Mb/s\0A\00", [36 x i8] zeroinitializer }, align 32
@tb_dp_xchg_caps.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.51, ptr @.str.4, ptr @.str.52, i8 0, i8 -118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tb_dp_xchg_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.4, i32 567, ptr @.str.54, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%llx:%x: not enough bandwidth for DP tunnel\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tb_dp_xchg_caps._entry_ptr = internal global ptr @tb_dp_xchg_caps._entry, section ".printk_index", align 4
@tb_dp_xchg_caps.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.51, ptr @.str.4, ptr @.str.55, i8 0, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%llx:%x: bandwidth reduced to %u Mb/s x%u = %u Mb/s\0A\00", [43 x i8] zeroinitializer }, align 32
@tb_dp_reduce_bandwidth.dp_bw = internal constant { [12 x [2 x i32]], [32 x i8] } { [12 x [2 x i32]] [[2 x i32] [i32 8100, i32 4], [2 x i32] [i32 5400, i32 4], [2 x i32] [i32 8100, i32 2], [2 x i32] [i32 2700, i32 4], [2 x i32] [i32 5400, i32 2], [2 x i32] [i32 8100, i32 1], [2 x i32] [i32 1620, i32 4], [2 x i32] [i32 5400, i32 1], [2 x i32] [i32 2700, i32 2], [2 x i32] [i32 1620, i32 2], [2 x i32] [i32 2700, i32 1], [2 x i32] [i32 1620, i32 1]], [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"invalid rate %u passed, defaulting to 1620 MB/s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"invalid number of lanes %u passed, defaulting to 1\0A\00", [44 x i8] zeroinitializer }, align 32
@tb_dma_release_credits.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.58, ptr @.str.4, ptr @.str.59, i8 1, i8 0, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tb_dma_release_credits\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%llx:%x: released %u DMA path credits\0A\00", [57 x i8] zeroinitializer }, align 32
@tb_dma_reserve_credits.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.60, ptr @.str.4, ptr @.str.61, i8 0, i8 -20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tb_dma_reserve_credits\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%llx:%x: reserving %u credits for DMA path\0A\00", [52 x i8] zeroinitializer }, align 32
@tb_usb3_init.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.62, ptr @.str.4, ptr @.str.63, i8 1, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tb_usb3_init\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%llx:%x <-> %llx:%x (%s): allocating initial bandwidth %d/%d Mb/s\0A\00", [61 x i8] zeroinitializer }, align 32
@tb_usb3_release_unused_bandwidth.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.64, ptr @.str.4, ptr @.str.65, i8 1, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tb_usb3_release_unused_bandwidth\00", [63 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%llx:%x <-> %llx:%x (%s): decreased bandwidth allocation to %d/%d Mb/s\0A\00", [56 x i8] zeroinitializer }, align 32
@tb_usb3_reclaim_available_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.4, i32 1260, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%llx:%x <-> %llx:%x (%s): failed to read actual link rate\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tb_usb3_reclaim_available_bandwidth\00", [60 x i8] zeroinitializer }, align 32
@tb_usb3_reclaim_available_bandwidth._entry_ptr = internal global ptr @tb_usb3_reclaim_available_bandwidth._entry, section ".printk_index", align 4
@tb_usb3_reclaim_available_bandwidth._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.4, i32 1266, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%llx:%x <-> %llx:%x (%s): failed to read maximum link rate\0A\00", [36 x i8] zeroinitializer }, align 32
@tb_usb3_reclaim_available_bandwidth._entry_ptr.70 = internal global ptr @tb_usb3_reclaim_available_bandwidth._entry.68, section ".printk_index", align 4
@tb_usb3_reclaim_available_bandwidth._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.4, i32 1299, ptr @.str.54, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%llx:%x <-> %llx:%x (%s): failed to allocate bandwidth\0A\00", [40 x i8] zeroinitializer }, align 32
@tb_usb3_reclaim_available_bandwidth._entry_ptr.73 = internal global ptr @tb_usb3_reclaim_available_bandwidth._entry.71, section ".printk_index", align 4
@tb_usb3_reclaim_available_bandwidth.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.67, ptr @.str.4, ptr @.str.74, i8 1, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%llx:%x <-> %llx:%x (%s): increased bandwidth allocation to %d/%d Mb/s\0A\00", [56 x i8] zeroinitializer }, align 32
@switch.table.tb_dp_xchg_caps = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1620, i32 2700, i32 5400, i32 8100], [16 x i8] zeroinitializer }, align 32
@switch.table.tb_dp_xchg_caps.75 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 4], [20 x i8] zeroinitializer }, align 32
@switch.table.tb_dp_xchg_caps.76 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1620, i32 2700, i32 5400, i32 8100], [16 x i8] zeroinitializer }, align 32
@switch.table.tb_dp_xchg_caps.77 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 4], [20 x i8] zeroinitializer }, align 32
@switch.table.tb_dp_consumed_bandwidth = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1620, i32 2700, i32 5400, i32 8100], [16 x i8] zeroinitializer }, align 32
@switch.table.tb_dp_consumed_bandwidth.78 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 4], [20 x i8] zeroinitializer }, align 32
@switch.table.tb_dp_consumed_bandwidth.79 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1620, i32 2700, i32 5400, i32 8100], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 5607, i64 5610, i64 5615]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 16, i64 5607, i64 5610, i64 5615]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 16, i64 5607, i64 5610, i64 5615]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [6 x i64] [i64 4, i64 32, i64 1620, i64 2700, i64 5400, i64 8100]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 238, i32 24 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 249, i32 5 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 258, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 264, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"tb_tunnel_names\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 47, i32 27 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 269, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 274, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 794, i32 24 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 804, i32 66 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 812, i32 12 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 820, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 831, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1093, i32 10 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1098, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1105, i32 10 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1110, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1379, i32 24 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1389, i32 5 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1397, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1403, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1408, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1425, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1481, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1485, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1585, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1619, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1636, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1653, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1729, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 47, i32 49 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 47, i32 56 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 47, i32 62 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 47, i32 69 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 542, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 567, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 572, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [6 x i8] c"dp_bw\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 462, i32 19 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 397, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 436, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1025, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 944, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1201, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1247, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1260, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1266, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1299, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.314 = private constant [32 x i8] c"../drivers/thunderbolt/tunnel.c\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1309, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [29 x i8] c"switch.table.tb_dp_xchg_caps\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [32 x i8] c"switch.table.tb_dp_xchg_caps.75\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [32 x i8] c"switch.table.tb_dp_xchg_caps.76\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [32 x i8] c"switch.table.tb_dp_xchg_caps.77\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [38 x i8] c"switch.table.tb_dp_consumed_bandwidth\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [41 x i8] c"switch.table.tb_dp_consumed_bandwidth.78\00", align 1
@___asan_gen_.322 = private unnamed_addr constant [41 x i8] c"switch.table.tb_dp_consumed_bandwidth.79\00", align 1
@llvm.compiler.used = appending global [98 x ptr] [ptr @tb_dp_xchg_caps._entry, ptr @tb_dp_xchg_caps._entry_ptr, ptr @tb_tunnel_alloc_usb3._entry, ptr @tb_tunnel_alloc_usb3._entry_ptr, ptr @tb_tunnel_discover_dp._entry, ptr @tb_tunnel_discover_dp._entry.20, ptr @tb_tunnel_discover_dp._entry_ptr, ptr @tb_tunnel_discover_dp._entry_ptr.21, ptr @tb_tunnel_discover_pci._entry, ptr @tb_tunnel_discover_pci._entry.10, ptr @tb_tunnel_discover_pci._entry.7, ptr @tb_tunnel_discover_pci._entry_ptr, ptr @tb_tunnel_discover_pci._entry_ptr.12, ptr @tb_tunnel_discover_pci._entry_ptr.9, ptr @tb_tunnel_discover_usb3._entry, ptr @tb_tunnel_discover_usb3._entry.31, ptr @tb_tunnel_discover_usb3._entry.33, ptr @tb_tunnel_discover_usb3._entry_ptr, ptr @tb_tunnel_discover_usb3._entry_ptr.32, ptr @tb_tunnel_discover_usb3._entry_ptr.34, ptr @tb_tunnel_restart._entry, ptr @tb_tunnel_restart._entry_ptr, ptr @tb_usb3_reclaim_available_bandwidth._entry, ptr @tb_usb3_reclaim_available_bandwidth._entry.68, ptr @tb_usb3_reclaim_available_bandwidth._entry.71, ptr @tb_usb3_reclaim_available_bandwidth._entry_ptr, ptr @tb_usb3_reclaim_available_bandwidth._entry_ptr.70, ptr @tb_usb3_reclaim_available_bandwidth._entry_ptr.73, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @tb_tunnel_names, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @tb_dp_reduce_bandwidth.dp_bw, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @switch.table.tb_dp_xchg_caps, ptr @switch.table.tb_dp_xchg_caps.75, ptr @switch.table.tb_dp_xchg_caps.76, ptr @switch.table.tb_dp_xchg_caps.77, ptr @switch.table.tb_dp_consumed_bandwidth, ptr @switch.table.tb_dp_consumed_bandwidth.78, ptr @switch.table.tb_dp_consumed_bandwidth.79], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_tunnel_discover_pci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_tunnel_discover_pci._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_tunnel_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_tunnel_discover_pci._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_tunnel_discover_dp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_tunnel_discover_dp._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_tunnel_discover_usb3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_tunnel_discover_usb3._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_tunnel_discover_usb3._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_tunnel_alloc_usb3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_tunnel_restart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_dp_xchg_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_dp_reduce_bandwidth.dp_bw to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_usb3_reclaim_available_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_usb3_reclaim_available_bandwidth._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_usb3_reclaim_available_bandwidth._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tb_dp_xchg_caps to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tb_dp_xchg_caps.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tb_dp_xchg_caps.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tb_dp_xchg_caps.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tb_dp_consumed_bandwidth to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tb_dp_consumed_bandwidth.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tb_dp_consumed_bandwidth.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tb_tunnel_discover_pci(ptr noundef %tb, ptr noundef %down, i1 noundef zeroext %alloc_hopid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @tb_pci_port_is_enabled(ptr noundef %down) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @tb_tunnel_alloc(ptr noundef %tb, i32 noundef 2, i32 noundef 0)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %activate = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 7
  %0 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @tb_pci_activate, ptr %activate, align 4
  %src_port = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 1
  %1 = ptrtoint ptr %src_port to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %down, ptr %src_port, align 4
  %dst_port = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 2
  %call5 = tail call ptr @tb_path_discover(ptr noundef %down, i32 noundef 8, ptr noundef null, i32 noundef -1, ptr noundef %dst_port, ptr noundef nonnull @.str, i1 noundef zeroext %alloc_hopid) #11
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 @tb_pci_port_enable(ptr noundef %down, i1 noundef zeroext false) #11
  br label %if.end.i

if.end9:                                          ; preds = %if.end3
  %paths = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %paths, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %arrayidx, align 4
  %5 = load ptr, ptr %paths, align 4
  %arrayidx11 = getelementptr ptr, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx11, align 4
  %call12 = tail call fastcc i32 @tb_pci_init_path(ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end9.if.end.i_crit_edge

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end15:                                         ; preds = %if.end9
  %8 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dst_port, align 4
  %call18 = tail call ptr @tb_path_discover(ptr noundef %9, i32 noundef -1, ptr noundef %down, i32 noundef 8, ptr noundef null, ptr noundef nonnull @.str.1, i1 noundef zeroext %alloc_hopid) #11
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end15.err_deactivate_crit_edge, label %if.end21

if.end15.err_deactivate_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_deactivate

if.end21:                                         ; preds = %if.end15
  %10 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %paths, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call18, ptr %11, align 4
  %13 = load ptr, ptr %paths, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call26 = tail call fastcc i32 @tb_pci_init_path(ptr noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end21.err_deactivate_crit_edge

if.end21.err_deactivate_crit_edge:                ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_deactivate

if.end29:                                         ; preds = %if.end21
  %16 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst_port, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end29.do.body_crit_edge, label %tb_port_is_pcie_up.exit

if.end29.do.body_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

tb_port_is_pcie_up.exit:                          ; preds = %if.end29
  %type.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 12)
  %bf.load.i = load i96, ptr %type.i, align 4
  %19 = and i96 %bf.load.i, 18446742974197923840
  %cmp.i = icmp eq i96 %19, 1153205178606813184
  br i1 %cmp.i, label %if.end40, label %tb_port_is_pcie_up.exit.do.body_crit_edge

tb_port_is_pcie_up.exit.do.body_crit_edge:        ; preds = %tb_port_is_pcie_up.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %tb_port_is_pcie_up.exit.do.body_crit_edge, %if.end29.do.body_crit_edge
  %sw = getelementptr inbounds %struct.tb_port, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sw, align 4
  %tb35 = getelementptr inbounds %struct.tb_switch, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %tb35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tb35, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %21, i32 0, i32 1, i32 4
  %28 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %bf.load.i174 = load i64, ptr %route_hi.i, align 4
  %29 = lshr i64 %bf.load.i174, 1
  %shl.i = and i64 %29, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %21, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %31 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port = getelementptr inbounds %struct.tb_port, ptr %17, i32 0, i32 9
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %port, align 4
  %conv = zext i8 %33 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.2, i64 noundef %or.i, i32 noundef %conv) #14
  br label %err_deactivate

if.end40:                                         ; preds = %tb_port_is_pcie_up.exit
  %34 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %src_port, align 4
  %cmp.not = icmp eq ptr %35, %down
  br i1 %cmp.not, label %if.end67, label %do.body44

do.body44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call1, align 4
  %nhi49 = getelementptr inbounds %struct.tb, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %nhi49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nhi49, align 4
  %pdev50 = getelementptr inbounds %struct.tb_nhi, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %pdev50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev50, align 4
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %sw53 = getelementptr inbounds %struct.tb_port, ptr %35, i32 0, i32 1
  %42 = ptrtoint ptr %sw53 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sw53, align 4
  %route_hi.i175 = getelementptr inbounds %struct.tb_switch, ptr %43, i32 0, i32 1, i32 4
  %44 = ptrtoint ptr %route_hi.i175 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %bf.load.i176 = load i64, ptr %route_hi.i175, align 4
  %45 = lshr i64 %bf.load.i176, 1
  %shl.i177 = and i64 %45, 9223372032559808512
  %route_lo.i178 = getelementptr inbounds %struct.tb_switch, ptr %43, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %route_lo.i178 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %route_lo.i178, align 8
  %conv2.i179 = zext i32 %47 to i64
  %or.i180 = or i64 %shl.i177, %conv2.i179
  %port56 = getelementptr inbounds %struct.tb_port, ptr %35, i32 0, i32 9
  %48 = ptrtoint ptr %port56 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %port56, align 4
  %conv57 = zext i8 %49 to i32
  %sw59 = getelementptr inbounds %struct.tb_port, ptr %17, i32 0, i32 1
  %50 = ptrtoint ptr %sw59 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sw59, align 4
  %route_hi.i181 = getelementptr inbounds %struct.tb_switch, ptr %51, i32 0, i32 1, i32 4
  %52 = ptrtoint ptr %route_hi.i181 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %bf.load.i182 = load i64, ptr %route_hi.i181, align 4
  %53 = lshr i64 %bf.load.i182, 1
  %shl.i183 = and i64 %53, 9223372032559808512
  %route_lo.i184 = getelementptr inbounds %struct.tb_switch, ptr %51, i32 0, i32 1, i32 3
  %54 = ptrtoint ptr %route_lo.i184 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %route_lo.i184, align 8
  %conv2.i185 = zext i32 %55 to i64
  %or.i186 = or i64 %shl.i183, %conv2.i185
  %port62 = getelementptr inbounds %struct.tb_port, ptr %17, i32 0, i32 9
  %56 = ptrtoint ptr %port62 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %port62, align 4
  %conv63 = zext i8 %57 to i32
  %type = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 12
  %58 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %type, align 4
  %arrayidx64 = getelementptr [4 x ptr], ptr @tb_tunnel_names, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx64, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev51, ptr noundef nonnull @.str.8, i64 noundef %or.i180, i32 noundef %conv57, i64 noundef %or.i186, i32 noundef %conv63, ptr noundef %61) #14
  br label %err_deactivate

if.end67:                                         ; preds = %if.end40
  %call69 = tail call zeroext i1 @tb_pci_port_is_enabled(ptr noundef nonnull %17) #11
  br i1 %call69, label %do.body97, label %do.body71

do.body71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call1, align 4
  %nhi77 = getelementptr inbounds %struct.tb, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %nhi77 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %nhi77, align 4
  %pdev78 = getelementptr inbounds %struct.tb_nhi, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %pdev78 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev78, align 4
  %dev79 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  %68 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %src_port, align 4
  %sw81 = getelementptr inbounds %struct.tb_port, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %sw81 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sw81, align 4
  %route_hi.i187 = getelementptr inbounds %struct.tb_switch, ptr %71, i32 0, i32 1, i32 4
  %72 = ptrtoint ptr %route_hi.i187 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 8)
  %bf.load.i188 = load i64, ptr %route_hi.i187, align 4
  %73 = lshr i64 %bf.load.i188, 1
  %shl.i189 = and i64 %73, 9223372032559808512
  %route_lo.i190 = getelementptr inbounds %struct.tb_switch, ptr %71, i32 0, i32 1, i32 3
  %74 = ptrtoint ptr %route_lo.i190 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %route_lo.i190, align 8
  %conv2.i191 = zext i32 %75 to i64
  %or.i192 = or i64 %shl.i189, %conv2.i191
  %port84 = getelementptr inbounds %struct.tb_port, ptr %69, i32 0, i32 9
  %76 = ptrtoint ptr %port84 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %port84, align 4
  %conv85 = zext i8 %77 to i32
  %78 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dst_port, align 4
  %sw87 = getelementptr inbounds %struct.tb_port, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %sw87 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sw87, align 4
  %route_hi.i193 = getelementptr inbounds %struct.tb_switch, ptr %81, i32 0, i32 1, i32 4
  %82 = ptrtoint ptr %route_hi.i193 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 8)
  %bf.load.i194 = load i64, ptr %route_hi.i193, align 4
  %83 = lshr i64 %bf.load.i194, 1
  %shl.i195 = and i64 %83, 9223372032559808512
  %route_lo.i196 = getelementptr inbounds %struct.tb_switch, ptr %81, i32 0, i32 1, i32 3
  %84 = ptrtoint ptr %route_lo.i196 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %route_lo.i196, align 8
  %conv2.i197 = zext i32 %85 to i64
  %or.i198 = or i64 %shl.i195, %conv2.i197
  %port90 = getelementptr inbounds %struct.tb_port, ptr %79, i32 0, i32 9
  %86 = ptrtoint ptr %port90 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %port90, align 4
  %conv91 = zext i8 %87 to i32
  %type92 = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 12
  %88 = ptrtoint ptr %type92 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %type92, align 4
  %arrayidx93 = getelementptr [4 x ptr], ptr @tb_tunnel_names, i32 0, i32 %89
  %90 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx93, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev79, ptr noundef nonnull @.str.11, i64 noundef %or.i192, i32 noundef %conv85, i64 noundef %or.i198, i32 noundef %conv91, ptr noundef %91) #14
  br label %err_deactivate

do.body97:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_tunnel_discover_pci.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_tunnel_discover_pci, %if.then105)) #11
          to label %cleanup [label %if.then105], !srcloc !168

if.then105:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #13
  %92 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call1, align 4
  %nhi107 = getelementptr inbounds %struct.tb, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %nhi107 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %nhi107, align 4
  %pdev108 = getelementptr inbounds %struct.tb_nhi, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %pdev108 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pdev108, align 4
  %dev109 = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44
  %98 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %src_port, align 4
  %sw111 = getelementptr inbounds %struct.tb_port, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %sw111 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sw111, align 4
  %route_hi.i199 = getelementptr inbounds %struct.tb_switch, ptr %101, i32 0, i32 1, i32 4
  %102 = ptrtoint ptr %route_hi.i199 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 8)
  %bf.load.i200 = load i64, ptr %route_hi.i199, align 4
  %103 = lshr i64 %bf.load.i200, 1
  %shl.i201 = and i64 %103, 9223372032559808512
  %route_lo.i202 = getelementptr inbounds %struct.tb_switch, ptr %101, i32 0, i32 1, i32 3
  %104 = ptrtoint ptr %route_lo.i202 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %route_lo.i202, align 8
  %conv2.i203 = zext i32 %105 to i64
  %or.i204 = or i64 %shl.i201, %conv2.i203
  %port114 = getelementptr inbounds %struct.tb_port, ptr %99, i32 0, i32 9
  %106 = ptrtoint ptr %port114 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %port114, align 4
  %conv115 = zext i8 %107 to i32
  %108 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dst_port, align 4
  %sw117 = getelementptr inbounds %struct.tb_port, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %sw117 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sw117, align 4
  %route_hi.i205 = getelementptr inbounds %struct.tb_switch, ptr %111, i32 0, i32 1, i32 4
  %112 = ptrtoint ptr %route_hi.i205 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 8)
  %bf.load.i206 = load i64, ptr %route_hi.i205, align 4
  %113 = lshr i64 %bf.load.i206, 1
  %shl.i207 = and i64 %113, 9223372032559808512
  %route_lo.i208 = getelementptr inbounds %struct.tb_switch, ptr %111, i32 0, i32 1, i32 3
  %114 = ptrtoint ptr %route_lo.i208 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %route_lo.i208, align 8
  %conv2.i209 = zext i32 %115 to i64
  %or.i210 = or i64 %shl.i207, %conv2.i209
  %port120 = getelementptr inbounds %struct.tb_port, ptr %109, i32 0, i32 9
  %116 = ptrtoint ptr %port120 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %port120, align 4
  %conv121 = zext i8 %117 to i32
  %type122 = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 12
  %118 = ptrtoint ptr %type122 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %type122, align 4
  %arrayidx123 = getelementptr [4 x ptr], ptr @tb_tunnel_names, i32 0, i32 %119
  %120 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx123, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_tunnel_discover_pci.__UNIQUE_ID_ddebug242, ptr noundef %dev109, ptr noundef nonnull @.str.14, i64 noundef %or.i204, i32 noundef %conv115, i64 noundef %or.i210, i32 noundef %conv121, ptr noundef %121) #11
  br label %cleanup

err_deactivate:                                   ; preds = %do.body71, %do.body44, %do.body, %if.end21.err_deactivate_crit_edge, %if.end15.err_deactivate_crit_edge
  tail call void @tb_tunnel_deactivate(ptr noundef nonnull %call1)
  br label %if.end.i

if.end.i:                                         ; preds = %err_deactivate, %if.end9.if.end.i_crit_edge, %if.then7
  %deinit.i = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 6
  %122 = ptrtoint ptr %deinit.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %deinit.i, align 4
  %tobool1.not.i = icmp eq ptr %123, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %123(ptr noundef nonnull %call1) #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %npaths.i = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 4
  %124 = ptrtoint ptr %npaths.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %npaths.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp23.not.i = icmp eq i32 %125, 0
  br i1 %cmp23.not.i, label %if.end4.i.tb_tunnel_free.exit_crit_edge, label %for.body.lr.ph.i

if.end4.i.tb_tunnel_free.exit_crit_edge:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_free.exit

for.body.lr.ph.i:                                 ; preds = %if.end4.i
  %paths.i = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %126 = ptrtoint ptr %paths.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %paths.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %127, i32 %i.024.i
  %128 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not.i = icmp eq ptr %129, null
  br i1 %tobool5.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then6.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tb_path_free(ptr noundef nonnull %129) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.024.i, 1
  %130 = ptrtoint ptr %npaths.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %npaths.i, align 4
  %cmp.i212 = icmp ult i32 %inc.i, %131
  br i1 %cmp.i212, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.tb_tunnel_free.exit_crit_edge

for.inc.i.tb_tunnel_free.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_free.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

tb_tunnel_free.exit:                              ; preds = %for.inc.i.tb_tunnel_free.exit_crit_edge, %if.end4.i.tb_tunnel_free.exit_crit_edge
  %paths10.i = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 3
  %132 = ptrtoint ptr %paths10.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %paths10.i, align 4
  tail call void @kfree(ptr noundef %133) #11
  tail call void @kfree(ptr noundef nonnull %call1) #11
  br label %cleanup

cleanup:                                          ; preds = %tb_tunnel_free.exit, %if.then105, %do.body97, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %tb_tunnel_free.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call1, %if.then105 ], [ %call1, %do.body97 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tb_pci_port_is_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tb_tunnel_alloc(ptr noundef %tb, i32 noundef %npaths, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %npaths, i32 4) #11
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !169

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %paths19 = getelementptr inbounds %struct.tb_tunnel, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %paths19 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %paths19, align 4
  br label %if.end.i

if.end7.i.i:                                      ; preds = %if.end
  %4 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #16
  %paths = getelementptr inbounds %struct.tb_tunnel, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %paths to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i, ptr %paths, align 4
  %tobool3.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool3.not, label %if.end7.i.i.if.end.i_crit_edge, label %if.end5

if.end7.i.i.if.end.i_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.end7.i.i.if.end.i_crit_edge, %kcalloc.exit.thread
  %paths21 = phi ptr [ %paths19, %kcalloc.exit.thread ], [ %paths, %if.end7.i.i.if.end.i_crit_edge ]
  %deinit.i = getelementptr inbounds %struct.tb_tunnel, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %deinit.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %deinit.i, align 8
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %7(ptr noundef nonnull %call7.i.i) #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %npaths.i = getelementptr inbounds %struct.tb_tunnel, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %npaths.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %npaths.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp23.not.i = icmp eq i32 %9, 0
  br i1 %cmp23.not.i, label %if.end4.i.tb_tunnel_free.exit_crit_edge, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  br label %for.body.i

if.end4.i.tb_tunnel_free.exit_crit_edge:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_free.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end4.i.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end4.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %paths21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %paths21, align 4
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %i.024.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not.i = icmp eq ptr %13, null
  br i1 %tobool5.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then6.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tb_path_free(ptr noundef nonnull %13) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.024.i, 1
  %14 = ptrtoint ptr %npaths.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %npaths.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %15
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.tb_tunnel_free.exit_crit_edge

for.inc.i.tb_tunnel_free.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_free.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

tb_tunnel_free.exit:                              ; preds = %for.inc.i.tb_tunnel_free.exit_crit_edge, %if.end4.i.tb_tunnel_free.exit_crit_edge
  %16 = ptrtoint ptr %paths21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %paths21, align 4
  tail call void @kfree(ptr noundef %17) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %list = getelementptr inbounds %struct.tb_tunnel, ptr %call7.i.i, i32 0, i32 11
  %18 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.tb_tunnel, ptr %call7.i.i, i32 0, i32 11, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list, ptr %prev.i, align 8
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %tb, ptr %call7.i.i, align 8
  %npaths7 = getelementptr inbounds %struct.tb_tunnel, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %npaths7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %npaths, ptr %npaths7, align 8
  %type8 = getelementptr inbounds %struct.tb_tunnel, ptr %call7.i.i, i32 0, i32 12
  %22 = ptrtoint ptr %type8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %type, ptr %type8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %tb_tunnel_free.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end5 ], [ null, %tb_tunnel_free.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tb_pci_activate(ptr nocapture noundef readonly %tunnel, i1 noundef zeroext %activate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %src_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 1
  %0 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src_port, align 4
  %call = tail call i32 @tb_pci_port_enable(ptr noundef %1, i1 noundef zeroext %activate) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dst_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 2
  %2 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst_port, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %tb_port_is_pcie_up.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

tb_port_is_pcie_up.exit:                          ; preds = %if.end
  %type.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 12)
  %bf.load.i = load i96, ptr %type.i, align 4
  %5 = and i96 %bf.load.i, 18446742974197923840
  %cmp.i = icmp eq i96 %5, 1153205178606813184
  br i1 %cmp.i, label %if.then3, label %tb_port_is_pcie_up.exit.cleanup_crit_edge

tb_port_is_pcie_up.exit.cleanup_crit_edge:        ; preds = %tb_port_is_pcie_up.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %tb_port_is_pcie_up.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 @tb_pci_port_enable(ptr noundef nonnull %3, i1 noundef zeroext %activate) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %tb_port_is_pcie_up.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %tb_port_is_pcie_up.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_path_discover(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_pci_port_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_pci_init_path(ptr nocapture noundef %path) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %egress_fc_enable = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 5
  %0 = ptrtoint ptr %egress_fc_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %egress_fc_enable, align 4
  %egress_shared_buffer = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 3
  %1 = ptrtoint ptr %egress_shared_buffer to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %egress_shared_buffer, align 4
  %ingress_fc_enable = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 4
  %2 = ptrtoint ptr %ingress_fc_enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 7, ptr %ingress_fc_enable, align 4
  %ingress_shared_buffer = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 2
  %3 = ptrtoint ptr %ingress_shared_buffer to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ingress_shared_buffer, align 4
  %priority = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 6
  %4 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %priority, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.set3 = or i8 %bf.clear, 98
  store i8 %bf.set3, ptr %priority, align 4
  %drop_packages = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 7
  %5 = ptrtoint ptr %drop_packages to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %drop_packages, align 1
  %hops = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 10
  %6 = ptrtoint ptr %hops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hops, align 4
  %path_length = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 11
  %8 = ptrtoint ptr %path_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %path_length, align 4
  %sub26 = add i32 %9, -1
  %arrayidx527 = getelementptr %struct.tb_path_hop, ptr %7, i32 %sub26
  %cmp.not28 = icmp ugt ptr %7, %arrayidx527
  br i1 %cmp.not28, label %entry.cleanup6_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup6

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %hop.029 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %7, %entry.for.body_crit_edge ]
  %10 = ptrtoint ptr %hop.029 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hop.029, align 4
  %sw1.i = getelementptr inbounds %struct.tb_port, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %sw1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sw1.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %for.body.for.inc_crit_edge, label %land.lhs.true.i.i.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.i.i.i:                              ; preds = %for.body
  %port1.i.i.i = getelementptr inbounds %struct.tb_port, ptr %11, i32 0, i32 9
  %14 = ptrtoint ptr %port1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool2.not.i.i.i = icmp eq i8 %15, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.for.inc_crit_edge, label %tb_port_is_null.exit.i.i

land.lhs.true.i.i.i.for.inc_crit_edge:            ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

tb_port_is_null.exit.i.i:                         ; preds = %land.lhs.true.i.i.i
  %type.i.i.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 12)
  %bf.load.i.i.i = load i96, ptr %type.i.i.i, align 4
  %17 = and i96 %bf.load.i.i.i, 18446742974197923840
  %cmp.i.i.i = icmp eq i96 %17, 1099511627776
  br i1 %cmp.i.i.i, label %tb_port_use_credit_allocation.exit.i, label %tb_port_is_null.exit.i.i.for.inc_crit_edge

tb_port_is_null.exit.i.i.for.inc_crit_edge:       ; preds = %tb_port_is_null.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

tb_port_use_credit_allocation.exit.i:             ; preds = %tb_port_is_null.exit.i.i
  %credit_allocation.i.i = getelementptr inbounds %struct.tb_switch, ptr %13, i32 0, i32 37
  %18 = ptrtoint ptr %credit_allocation.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %credit_allocation.i.i, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.i.not.i = icmp eq i8 %19, 0
  br i1 %tobool.i.not.i, label %if.then12.i, label %if.then.i

if.then.i:                                        ; preds = %tb_port_use_credit_allocation.exit.i
  %max_usb3_credits.i.i = getelementptr inbounds %struct.tb_switch, ptr %13, i32 0, i32 38
  %20 = ptrtoint ptr %max_usb3_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_usb3_credits.i.i, align 4
  %max_pcie_credits.i.i = getelementptr inbounds %struct.tb_switch, ptr %13, i32 0, i32 41
  %22 = ptrtoint ptr %max_pcie_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_pcie_credits.i.i, align 8
  %max_dma_credits.i.i = getelementptr inbounds %struct.tb_switch, ptr %13, i32 0, i32 42
  %24 = ptrtoint ptr %max_dma_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_dma_credits.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i = icmp eq i32 %25, 0
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 14) #11
  %.op.neg.i.i = xor i32 %26, -1
  %add.neg66.i.i = select i1 %cmp.i.i, i32 -15, i32 %.op.neg.i.i
  %total_credits.i.i.i = getelementptr inbounds %struct.tb_port, ptr %11, i32 0, i32 17
  %27 = ptrtoint ptr %total_credits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %total_credits.i.i.i, align 4
  %ctl_credits.i.i.i = getelementptr inbounds %struct.tb_port, ptr %11, i32 0, i32 18
  %29 = ptrtoint ptr %ctl_credits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ctl_credits.i.i.i, align 4
  %sub.i.i.i = sub i32 %28, %30
  %31 = add i32 %23, %21
  %add27.neg.i.i = sub i32 %add.neg66.i.i, %31
  %sub.i.i = add i32 %add27.neg.i.i, %sub.i.i.i
  %min_dp_aux_credits.i.i = getelementptr inbounds %struct.tb_switch, ptr %13, i32 0, i32 39
  %32 = ptrtoint ptr %min_dp_aux_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %min_dp_aux_credits.i.i, align 8
  %min_dp_main_credits.i.i = getelementptr inbounds %struct.tb_switch, ptr %13, i32 0, i32 40
  %34 = ptrtoint ptr %min_dp_main_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %min_dp_main_credits.i.i, align 4
  %add28.i.i = add i32 %35, %33
  %36 = urem i32 %sub.i.i, %add28.i.i
  %37 = add i32 %21, %sub.i.i
  %.neg38.i = sub i32 %sub.i.i.i, %37
  %sub35.i.i = add i32 %.neg38.i, %36
  %38 = tail call i32 @llvm.smax.i32(i32 %sub35.i.i, i32 0) #11
  %39 = tail call i32 @llvm.umin.i32(i32 %23, i32 %38) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %39)
  %cmp3.i = icmp ult i32 %39, 6
  br i1 %cmp3.i, label %if.then.i.cleanup6_crit_edge, label %if.then.i.for.inc_crit_edge

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then.i.cleanup6_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup6

if.then12.i:                                      ; preds = %tb_port_use_credit_allocation.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %bonded.i = getelementptr inbounds %struct.tb_port, ptr %11, i32 0, i32 11
  %40 = ptrtoint ptr %bonded.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bonded.i, align 2, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i = icmp eq i8 %41, 0
  %cond13.i = select i1 %tobool.not.i, i32 16, i32 32
  br label %for.inc

for.inc:                                          ; preds = %if.then12.i, %if.then.i.for.inc_crit_edge, %tb_port_is_null.exit.i.i.for.inc_crit_edge, %land.lhs.true.i.i.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %credits.1.i = phi i32 [ %39, %if.then.i.for.inc_crit_edge ], [ %cond13.i, %if.then12.i ], [ 7, %for.body.for.inc_crit_edge ], [ 7, %land.lhs.true.i.i.i.for.inc_crit_edge ], [ 7, %tb_port_is_null.exit.i.i.for.inc_crit_edge ]
  %initial_credits.i = getelementptr inbounds %struct.tb_path_hop, ptr %hop.029, i32 0, i32 5
  %42 = ptrtoint ptr %initial_credits.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %credits.1.i, ptr %initial_credits.i, align 4
  %incdec.ptr = getelementptr %struct.tb_path_hop, ptr %hop.029, i32 1
  %43 = ptrtoint ptr %hops to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hops, align 4
  %45 = ptrtoint ptr %path_length to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %path_length, align 4
  %sub = add i32 %46, -1
  %arrayidx5 = getelementptr %struct.tb_path_hop, ptr %44, i32 %sub
  %cmp.not = icmp ugt ptr %incdec.ptr, %arrayidx5
  br i1 %cmp.not, label %for.inc.cleanup6_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup6_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup6

cleanup6:                                         ; preds = %for.inc.cleanup6_crit_edge, %if.then.i.cleanup6_crit_edge, %entry.cleanup6_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup6_crit_edge ], [ -28, %if.then.i.cleanup6_crit_edge ], [ 0, %for.inc.cleanup6_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_tunnel_deactivate(ptr noundef %tunnel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_tunnel_deactivate.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_tunnel_deactivate, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tunnel, align 4
  %nhi = getelementptr inbounds %struct.tb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %src_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 1
  %6 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src_port, align 4
  %sw = getelementptr inbounds %struct.tb_port, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sw, align 4
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %9, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %11 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %11, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %9, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %13 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port = getelementptr inbounds %struct.tb_port, ptr %7, i32 0, i32 9
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port, align 4
  %conv = zext i8 %15 to i32
  %dst_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 2
  %16 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst_port, align 4
  %sw6 = getelementptr inbounds %struct.tb_port, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %sw6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sw6, align 4
  %route_hi.i46 = getelementptr inbounds %struct.tb_switch, ptr %19, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %route_hi.i46 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %bf.load.i47 = load i64, ptr %route_hi.i46, align 4
  %21 = lshr i64 %bf.load.i47, 1
  %shl.i48 = and i64 %21, 9223372032559808512
  %route_lo.i49 = getelementptr inbounds %struct.tb_switch, ptr %19, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %route_lo.i49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %route_lo.i49, align 8
  %conv2.i50 = zext i32 %23 to i64
  %or.i51 = or i64 %shl.i48, %conv2.i50
  %port9 = getelementptr inbounds %struct.tb_port, ptr %17, i32 0, i32 9
  %24 = ptrtoint ptr %port9 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %port9, align 4
  %conv10 = zext i8 %25 to i32
  %type = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 12
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @tb_tunnel_names, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_tunnel_deactivate.__UNIQUE_ID_ddebug272, ptr noundef %dev, ptr noundef nonnull @.str.44, i64 noundef %or.i, i32 noundef %conv, i64 noundef %or.i51, i32 noundef %conv10, ptr noundef %29) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %activate = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 7
  %30 = ptrtoint ptr %activate to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %activate, align 4
  %tobool13.not = icmp eq ptr %31, null
  br i1 %tobool13.not, label %do.end.if.end17_crit_edge, label %if.then14

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call i32 %31(ptr noundef %tunnel, i1 noundef zeroext false) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %do.end.if.end17_crit_edge
  %npaths = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 4
  %32 = ptrtoint ptr %npaths to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %npaths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp53.not = icmp eq i32 %33, 0
  br i1 %cmp53.not, label %if.end17.for.end_crit_edge, label %for.body.lr.ph

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end17
  %paths = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %34 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %paths, align 4
  %arrayidx19 = getelementptr ptr, ptr %35, i32 %i.054
  %36 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx19, align 4
  %tobool20.not = icmp eq ptr %37, null
  br i1 %tobool20.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %activated = getelementptr inbounds %struct.tb_path, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %activated to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %activated, align 2, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool23.not = icmp eq i8 %39, 0
  br i1 %tobool23.not, label %land.lhs.true.for.inc_crit_edge, label %if.then25

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tb_path_deactivate(ptr noundef nonnull %37) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then25, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.054, 1
  %40 = ptrtoint ptr %npaths to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %npaths, align 4
  %cmp = icmp ult i32 %inc, %41
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end17.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_tunnel_free(ptr noundef %tunnel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tunnel, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %deinit = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 6
  %0 = ptrtoint ptr %deinit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %deinit, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %1(ptr noundef nonnull %tunnel) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %npaths = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 4
  %2 = ptrtoint ptr %npaths to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npaths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp23.not = icmp eq i32 %3, 0
  br i1 %cmp23.not, label %if.end4.for.end_crit_edge, label %for.body.lr.ph

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end4
  %paths = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %paths, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.024
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tb_path_free(ptr noundef nonnull %7) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.024, 1
  %8 = ptrtoint ptr %npaths to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %npaths, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end4.for.end_crit_edge
  %paths10 = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 3
  %10 = ptrtoint ptr %paths10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %paths10, align 4
  tail call void @kfree(ptr noundef %11) #11
  tail call void @kfree(ptr noundef nonnull %tunnel) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tb_tunnel_alloc_pci(ptr noundef %tb, ptr noundef %up, ptr noundef %down) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tb_tunnel_alloc(ptr noundef %tb, i32 noundef 2, i32 noundef 0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %activate = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @tb_pci_activate, ptr %activate, align 4
  %src_port = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %src_port to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %down, ptr %src_port, align 4
  %dst_port = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %dst_port to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %up, ptr %dst_port, align 4
  %call1 = tail call ptr @tb_path_alloc(ptr noundef %tb, ptr noundef %down, i32 noundef 8, ptr noundef %up, i32 noundef 8, i32 noundef 0, ptr noundef nonnull @.str.1) #11
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.if.end.i_crit_edge, label %if.end4

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end4:                                          ; preds = %if.end
  %paths = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %paths, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %4, align 4
  %call5 = tail call fastcc i32 @tb_pci_init_path(ptr noundef nonnull %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.if.end.i_crit_edge

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @tb_path_alloc(ptr noundef %tb, ptr noundef %up, i32 noundef 8, ptr noundef %down, i32 noundef 8, i32 noundef 0, ptr noundef nonnull @.str) #11
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.if.end.i_crit_edge, label %if.end12

if.end8.if.end.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end12:                                         ; preds = %if.end8
  %6 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %paths, align 4
  %arrayidx14 = getelementptr ptr, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9, ptr %arrayidx14, align 4
  %call15 = tail call fastcc i32 @tb_pci_init_path(ptr noundef nonnull %call9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end12.cleanup_crit_edge, label %if.end12.if.end.i_crit_edge

if.end12.if.end.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end12.if.end.i_crit_edge, %if.end8.if.end.i_crit_edge, %if.end4.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %deinit.i = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 6
  %9 = ptrtoint ptr %deinit.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %deinit.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %10(ptr noundef nonnull %call) #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %npaths.i = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 4
  %11 = ptrtoint ptr %npaths.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %npaths.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp23.not.i = icmp eq i32 %12, 0
  br i1 %cmp23.not.i, label %if.end4.i.tb_tunnel_free.exit_crit_edge, label %for.body.lr.ph.i

if.end4.i.tb_tunnel_free.exit_crit_edge:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_free.exit

for.body.lr.ph.i:                                 ; preds = %if.end4.i
  %paths.i = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %paths.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %paths.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %14, i32 %i.024.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not.i = icmp eq ptr %16, null
  br i1 %tobool5.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then6.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tb_path_free(ptr noundef nonnull %16) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.024.i, 1
  %17 = ptrtoint ptr %npaths.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %npaths.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %18
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.tb_tunnel_free.exit_crit_edge

for.inc.i.tb_tunnel_free.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_free.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

tb_tunnel_free.exit:                              ; preds = %for.inc.i.tb_tunnel_free.exit_crit_edge, %if.end4.i.tb_tunnel_free.exit_crit_edge
  %paths10.i = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 3
  %19 = ptrtoint ptr %paths10.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %paths10.i, align 4
  tail call void @kfree(ptr noundef %20) #11
  tail call void @kfree(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %tb_tunnel_free.exit, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %tb_tunnel_free.exit ], [ null, %entry.cleanup_crit_edge ], [ %call, %if.end12.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_path_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tb_tunnel_discover_dp(ptr noundef %tb, ptr noundef %in, i1 noundef zeroext %alloc_hopid) local_unnamed_addr #0 align 64 {
entry:
  %port = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port) #11
  %0 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %port, align 4, !annotation !171
  %call = tail call zeroext i1 @tb_dp_port_is_enabled(ptr noundef %in) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @tb_tunnel_alloc(ptr noundef %tb, i32 noundef 3, i32 noundef 1)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %init = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 5
  %1 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @tb_dp_xchg_caps, ptr %init, align 4
  %activate = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 7
  %2 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @tb_dp_activate, ptr %activate, align 4
  %consumed_bandwidth = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 8
  %3 = ptrtoint ptr %consumed_bandwidth to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @tb_dp_consumed_bandwidth, ptr %consumed_bandwidth, align 4
  %src_port = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %src_port to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %in, ptr %src_port, align 4
  %dst_port = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 2
  %call5 = tail call ptr @tb_path_discover(ptr noundef %in, i32 noundef 9, ptr noundef null, i32 noundef -1, ptr noundef %dst_port, ptr noundef nonnull @.str.15, i1 noundef zeroext %alloc_hopid) #11
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 @tb_dp_port_enable(ptr noundef %in, i1 noundef zeroext false) #11
  br label %if.end.i

if.end9:                                          ; preds = %if.end3
  %paths = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 3
  %5 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %paths, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %6, align 4
  %8 = load ptr, ptr %paths, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call12 = tail call fastcc i32 @tb_dp_init_video_path(ptr noundef %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end9.if.end.i_crit_edge

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end15:                                         ; preds = %if.end9
  %call17 = tail call ptr @tb_path_discover(ptr noundef %in, i32 noundef 8, ptr noundef null, i32 noundef -1, ptr noundef null, ptr noundef nonnull @.str.16, i1 noundef zeroext %alloc_hopid) #11
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end15.err_deactivate_crit_edge, label %if.end20

if.end15.err_deactivate_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_deactivate

if.end20:                                         ; preds = %if.end15
  %11 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %paths, align 4
  %arrayidx22 = getelementptr ptr, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call17, ptr %arrayidx22, align 4
  %14 = load ptr, ptr %paths, align 4
  %arrayidx24 = getelementptr ptr, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx24, align 4
  %egress_fc_enable.i = getelementptr inbounds %struct.tb_path, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %egress_fc_enable.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %egress_fc_enable.i, align 4
  %egress_shared_buffer.i = getelementptr inbounds %struct.tb_path, ptr %16, i32 0, i32 3
  %18 = ptrtoint ptr %egress_shared_buffer.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %egress_shared_buffer.i, align 4
  %ingress_fc_enable.i = getelementptr inbounds %struct.tb_path, ptr %16, i32 0, i32 4
  %19 = ptrtoint ptr %ingress_fc_enable.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 7, ptr %ingress_fc_enable.i, align 4
  %ingress_shared_buffer.i = getelementptr inbounds %struct.tb_path, ptr %16, i32 0, i32 2
  %20 = ptrtoint ptr %ingress_shared_buffer.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %ingress_shared_buffer.i, align 4
  %priority.i = getelementptr inbounds %struct.tb_path, ptr %16, i32 0, i32 6
  %21 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %priority.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 1
  %bf.set3.i = or i8 %bf.clear.i, 66
  store i8 %bf.set3.i, ptr %priority.i, align 4
  %hops.i = getelementptr inbounds %struct.tb_path, ptr %16, i32 0, i32 10
  %22 = ptrtoint ptr %hops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hops.i, align 4
  %path_length.i = getelementptr inbounds %struct.tb_path, ptr %16, i32 0, i32 11
  %24 = ptrtoint ptr %path_length.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %path_length.i, align 4
  %sub16.i = add i32 %25, -1
  %arrayidx517.i = getelementptr %struct.tb_path_hop, ptr %23, i32 %sub16.i
  %cmp.not18.i = icmp ugt ptr %23, %arrayidx517.i
  br i1 %cmp.not18.i, label %if.end20.tb_dp_init_aux_path.exit_crit_edge, label %if.end20.for.body.i_crit_edge

if.end20.for.body.i_crit_edge:                    ; preds = %if.end20
  br label %for.body.i

if.end20.tb_dp_init_aux_path.exit_crit_edge:      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_path.exit

for.body.i:                                       ; preds = %tb_dp_init_aux_credits.exit.i.for.body.i_crit_edge, %if.end20.for.body.i_crit_edge
  %hop.019.i = phi ptr [ %incdec.ptr.i, %tb_dp_init_aux_credits.exit.i.for.body.i_crit_edge ], [ %23, %if.end20.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %hop.019.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hop.019.i, align 4
  %sw1.i.i = getelementptr inbounds %struct.tb_port, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %sw1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sw1.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i.i, label %for.body.i.tb_dp_init_aux_credits.exit.i_crit_edge, label %land.lhs.true.i.i.i.i

for.body.i.tb_dp_init_aux_credits.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_credits.exit.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i
  %port1.i.i.i.i = getelementptr inbounds %struct.tb_port, ptr %27, i32 0, i32 9
  %30 = ptrtoint ptr %port1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %port1.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool2.not.i.i.i.i = icmp eq i8 %31, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.tb_dp_init_aux_credits.exit.i_crit_edge, label %tb_port_is_null.exit.i.i.i

land.lhs.true.i.i.i.i.tb_dp_init_aux_credits.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_credits.exit.i

tb_port_is_null.exit.i.i.i:                       ; preds = %land.lhs.true.i.i.i.i
  %type.i.i.i.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %27, i32 0, i32 2
  %32 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 12)
  %bf.load.i.i.i.i = load i96, ptr %type.i.i.i.i, align 4
  %33 = and i96 %bf.load.i.i.i.i, 18446742974197923840
  %cmp.i.i.i.i = icmp eq i96 %33, 1099511627776
  br i1 %cmp.i.i.i.i, label %tb_port_use_credit_allocation.exit.i.i, label %tb_port_is_null.exit.i.i.i.tb_dp_init_aux_credits.exit.i_crit_edge

tb_port_is_null.exit.i.i.i.tb_dp_init_aux_credits.exit.i_crit_edge: ; preds = %tb_port_is_null.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_credits.exit.i

tb_port_use_credit_allocation.exit.i.i:           ; preds = %tb_port_is_null.exit.i.i.i
  %credit_allocation.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %29, i32 0, i32 37
  %34 = ptrtoint ptr %credit_allocation.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %credit_allocation.i.i.i, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.i.not.i.i = icmp eq i8 %35, 0
  br i1 %tobool.i.not.i.i, label %tb_port_use_credit_allocation.exit.i.i.tb_dp_init_aux_credits.exit.i_crit_edge, label %if.then.i.i

tb_port_use_credit_allocation.exit.i.i.tb_dp_init_aux_credits.exit.i_crit_edge: ; preds = %tb_port_use_credit_allocation.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_credits.exit.i

if.then.i.i:                                      ; preds = %tb_port_use_credit_allocation.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %min_dp_aux_credits.i.i = getelementptr inbounds %struct.tb_switch, ptr %29, i32 0, i32 39
  %36 = ptrtoint ptr %min_dp_aux_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %min_dp_aux_credits.i.i, align 8
  br label %tb_dp_init_aux_credits.exit.i

tb_dp_init_aux_credits.exit.i:                    ; preds = %if.then.i.i, %tb_port_use_credit_allocation.exit.i.i.tb_dp_init_aux_credits.exit.i_crit_edge, %tb_port_is_null.exit.i.i.i.tb_dp_init_aux_credits.exit.i_crit_edge, %land.lhs.true.i.i.i.i.tb_dp_init_aux_credits.exit.i_crit_edge, %for.body.i.tb_dp_init_aux_credits.exit.i_crit_edge
  %.sink.i.i = phi i32 [ %37, %if.then.i.i ], [ 1, %for.body.i.tb_dp_init_aux_credits.exit.i_crit_edge ], [ 1, %land.lhs.true.i.i.i.i.tb_dp_init_aux_credits.exit.i_crit_edge ], [ 1, %tb_port_is_null.exit.i.i.i.tb_dp_init_aux_credits.exit.i_crit_edge ], [ 1, %tb_port_use_credit_allocation.exit.i.i.tb_dp_init_aux_credits.exit.i_crit_edge ]
  %initial_credits2.i.i = getelementptr inbounds %struct.tb_path_hop, ptr %hop.019.i, i32 0, i32 5
  %38 = ptrtoint ptr %initial_credits2.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink.i.i, ptr %initial_credits2.i.i, align 4
  %incdec.ptr.i = getelementptr %struct.tb_path_hop, ptr %hop.019.i, i32 1
  %39 = ptrtoint ptr %hops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hops.i, align 4
  %41 = ptrtoint ptr %path_length.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %path_length.i, align 4
  %sub.i = add i32 %42, -1
  %arrayidx5.i = getelementptr %struct.tb_path_hop, ptr %40, i32 %sub.i
  %cmp.not.i = icmp ugt ptr %incdec.ptr.i, %arrayidx5.i
  br i1 %cmp.not.i, label %tb_dp_init_aux_credits.exit.i.tb_dp_init_aux_path.exit_crit_edge, label %tb_dp_init_aux_credits.exit.i.for.body.i_crit_edge

tb_dp_init_aux_credits.exit.i.for.body.i_crit_edge: ; preds = %tb_dp_init_aux_credits.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

tb_dp_init_aux_credits.exit.i.tb_dp_init_aux_path.exit_crit_edge: ; preds = %tb_dp_init_aux_credits.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_path.exit

tb_dp_init_aux_path.exit:                         ; preds = %tb_dp_init_aux_credits.exit.i.tb_dp_init_aux_path.exit_crit_edge, %if.end20.tb_dp_init_aux_path.exit_crit_edge
  %43 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dst_port, align 4
  %call27 = call ptr @tb_path_discover(ptr noundef %44, i32 noundef -1, ptr noundef %in, i32 noundef 8, ptr noundef nonnull %port, ptr noundef nonnull @.str.17, i1 noundef zeroext %alloc_hopid) #11
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %tb_dp_init_aux_path.exit.err_deactivate_crit_edge, label %if.end30

tb_dp_init_aux_path.exit.err_deactivate_crit_edge: ; preds = %tb_dp_init_aux_path.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_deactivate

if.end30:                                         ; preds = %tb_dp_init_aux_path.exit
  %45 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %paths, align 4
  %arrayidx32 = getelementptr ptr, ptr %46, i32 2
  %47 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call27, ptr %arrayidx32, align 4
  %48 = load ptr, ptr %paths, align 4
  %arrayidx34 = getelementptr ptr, ptr %48, i32 2
  %49 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx34, align 4
  %egress_fc_enable.i162 = getelementptr inbounds %struct.tb_path, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %egress_fc_enable.i162 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 3, ptr %egress_fc_enable.i162, align 4
  %egress_shared_buffer.i163 = getelementptr inbounds %struct.tb_path, ptr %50, i32 0, i32 3
  %52 = ptrtoint ptr %egress_shared_buffer.i163 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %egress_shared_buffer.i163, align 4
  %ingress_fc_enable.i164 = getelementptr inbounds %struct.tb_path, ptr %50, i32 0, i32 4
  %53 = ptrtoint ptr %ingress_fc_enable.i164 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 7, ptr %ingress_fc_enable.i164, align 4
  %ingress_shared_buffer.i165 = getelementptr inbounds %struct.tb_path, ptr %50, i32 0, i32 2
  %54 = ptrtoint ptr %ingress_shared_buffer.i165 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %ingress_shared_buffer.i165, align 4
  %priority.i166 = getelementptr inbounds %struct.tb_path, ptr %50, i32 0, i32 6
  %55 = ptrtoint ptr %priority.i166 to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load.i167 = load i8, ptr %priority.i166, align 4
  %bf.clear.i168 = and i8 %bf.load.i167, 1
  %bf.set3.i169 = or i8 %bf.clear.i168, 66
  store i8 %bf.set3.i169, ptr %priority.i166, align 4
  %hops.i170 = getelementptr inbounds %struct.tb_path, ptr %50, i32 0, i32 10
  %56 = ptrtoint ptr %hops.i170 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hops.i170, align 4
  %path_length.i171 = getelementptr inbounds %struct.tb_path, ptr %50, i32 0, i32 11
  %58 = ptrtoint ptr %path_length.i171 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %path_length.i171, align 4
  %sub16.i172 = add i32 %59, -1
  %arrayidx517.i173 = getelementptr %struct.tb_path_hop, ptr %57, i32 %sub16.i172
  %cmp.not18.i174 = icmp ugt ptr %57, %arrayidx517.i173
  br i1 %cmp.not18.i174, label %if.end30.tb_dp_init_aux_path.exit198_crit_edge, label %if.end30.for.body.i178_crit_edge

if.end30.for.body.i178_crit_edge:                 ; preds = %if.end30
  br label %for.body.i178

if.end30.tb_dp_init_aux_path.exit198_crit_edge:   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_path.exit198

for.body.i178:                                    ; preds = %tb_dp_init_aux_credits.exit.i197.for.body.i178_crit_edge, %if.end30.for.body.i178_crit_edge
  %hop.019.i175 = phi ptr [ %incdec.ptr.i193, %tb_dp_init_aux_credits.exit.i197.for.body.i178_crit_edge ], [ %57, %if.end30.for.body.i178_crit_edge ]
  %60 = ptrtoint ptr %hop.019.i175 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hop.019.i175, align 4
  %sw1.i.i176 = getelementptr inbounds %struct.tb_port, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %sw1.i.i176 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sw1.i.i176, align 4
  %tobool.not.i.i.i.i177 = icmp eq ptr %61, null
  br i1 %tobool.not.i.i.i.i177, label %for.body.i178.tb_dp_init_aux_credits.exit.i197_crit_edge, label %land.lhs.true.i.i.i.i181

for.body.i178.tb_dp_init_aux_credits.exit.i197_crit_edge: ; preds = %for.body.i178
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_credits.exit.i197

land.lhs.true.i.i.i.i181:                         ; preds = %for.body.i178
  %port1.i.i.i.i179 = getelementptr inbounds %struct.tb_port, ptr %61, i32 0, i32 9
  %64 = ptrtoint ptr %port1.i.i.i.i179 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %port1.i.i.i.i179, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool2.not.i.i.i.i180 = icmp eq i8 %65, 0
  br i1 %tobool2.not.i.i.i.i180, label %land.lhs.true.i.i.i.i181.tb_dp_init_aux_credits.exit.i197_crit_edge, label %tb_port_is_null.exit.i.i.i185

land.lhs.true.i.i.i.i181.tb_dp_init_aux_credits.exit.i197_crit_edge: ; preds = %land.lhs.true.i.i.i.i181
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_credits.exit.i197

tb_port_is_null.exit.i.i.i185:                    ; preds = %land.lhs.true.i.i.i.i181
  %type.i.i.i.i182 = getelementptr inbounds %struct.tb_regs_port_header, ptr %61, i32 0, i32 2
  %66 = ptrtoint ptr %type.i.i.i.i182 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 12)
  %bf.load.i.i.i.i183 = load i96, ptr %type.i.i.i.i182, align 4
  %67 = and i96 %bf.load.i.i.i.i183, 18446742974197923840
  %cmp.i.i.i.i184 = icmp eq i96 %67, 1099511627776
  br i1 %cmp.i.i.i.i184, label %tb_port_use_credit_allocation.exit.i.i188, label %tb_port_is_null.exit.i.i.i185.tb_dp_init_aux_credits.exit.i197_crit_edge

tb_port_is_null.exit.i.i.i185.tb_dp_init_aux_credits.exit.i197_crit_edge: ; preds = %tb_port_is_null.exit.i.i.i185
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_credits.exit.i197

tb_port_use_credit_allocation.exit.i.i188:        ; preds = %tb_port_is_null.exit.i.i.i185
  %credit_allocation.i.i.i186 = getelementptr inbounds %struct.tb_switch, ptr %63, i32 0, i32 37
  %68 = ptrtoint ptr %credit_allocation.i.i.i186 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %credit_allocation.i.i.i186, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.i.not.i.i187 = icmp eq i8 %69, 0
  br i1 %tobool.i.not.i.i187, label %tb_port_use_credit_allocation.exit.i.i188.tb_dp_init_aux_credits.exit.i197_crit_edge, label %if.then.i.i190

tb_port_use_credit_allocation.exit.i.i188.tb_dp_init_aux_credits.exit.i197_crit_edge: ; preds = %tb_port_use_credit_allocation.exit.i.i188
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_credits.exit.i197

if.then.i.i190:                                   ; preds = %tb_port_use_credit_allocation.exit.i.i188
  call void @__sanitizer_cov_trace_pc() #13
  %min_dp_aux_credits.i.i189 = getelementptr inbounds %struct.tb_switch, ptr %63, i32 0, i32 39
  %70 = ptrtoint ptr %min_dp_aux_credits.i.i189 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %min_dp_aux_credits.i.i189, align 8
  br label %tb_dp_init_aux_credits.exit.i197

tb_dp_init_aux_credits.exit.i197:                 ; preds = %if.then.i.i190, %tb_port_use_credit_allocation.exit.i.i188.tb_dp_init_aux_credits.exit.i197_crit_edge, %tb_port_is_null.exit.i.i.i185.tb_dp_init_aux_credits.exit.i197_crit_edge, %land.lhs.true.i.i.i.i181.tb_dp_init_aux_credits.exit.i197_crit_edge, %for.body.i178.tb_dp_init_aux_credits.exit.i197_crit_edge
  %.sink.i.i191 = phi i32 [ %71, %if.then.i.i190 ], [ 1, %for.body.i178.tb_dp_init_aux_credits.exit.i197_crit_edge ], [ 1, %land.lhs.true.i.i.i.i181.tb_dp_init_aux_credits.exit.i197_crit_edge ], [ 1, %tb_port_is_null.exit.i.i.i185.tb_dp_init_aux_credits.exit.i197_crit_edge ], [ 1, %tb_port_use_credit_allocation.exit.i.i188.tb_dp_init_aux_credits.exit.i197_crit_edge ]
  %initial_credits2.i.i192 = getelementptr inbounds %struct.tb_path_hop, ptr %hop.019.i175, i32 0, i32 5
  %72 = ptrtoint ptr %initial_credits2.i.i192 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %.sink.i.i191, ptr %initial_credits2.i.i192, align 4
  %incdec.ptr.i193 = getelementptr %struct.tb_path_hop, ptr %hop.019.i175, i32 1
  %73 = ptrtoint ptr %hops.i170 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hops.i170, align 4
  %75 = ptrtoint ptr %path_length.i171 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %path_length.i171, align 4
  %sub.i194 = add i32 %76, -1
  %arrayidx5.i195 = getelementptr %struct.tb_path_hop, ptr %74, i32 %sub.i194
  %cmp.not.i196 = icmp ugt ptr %incdec.ptr.i193, %arrayidx5.i195
  br i1 %cmp.not.i196, label %tb_dp_init_aux_credits.exit.i197.tb_dp_init_aux_path.exit198_crit_edge, label %tb_dp_init_aux_credits.exit.i197.for.body.i178_crit_edge

tb_dp_init_aux_credits.exit.i197.for.body.i178_crit_edge: ; preds = %tb_dp_init_aux_credits.exit.i197
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i178

tb_dp_init_aux_credits.exit.i197.tb_dp_init_aux_path.exit198_crit_edge: ; preds = %tb_dp_init_aux_credits.exit.i197
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_path.exit198

tb_dp_init_aux_path.exit198:                      ; preds = %tb_dp_init_aux_credits.exit.i197.tb_dp_init_aux_path.exit198_crit_edge, %if.end30.tb_dp_init_aux_path.exit198_crit_edge
  %77 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dst_port, align 4
  %tobool.not.i = icmp eq ptr %78, null
  br i1 %tobool.not.i, label %tb_dp_init_aux_path.exit198.do.body_crit_edge, label %tb_port_is_dpout.exit

tb_dp_init_aux_path.exit198.do.body_crit_edge:    ; preds = %tb_dp_init_aux_path.exit198
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

tb_port_is_dpout.exit:                            ; preds = %tb_dp_init_aux_path.exit198
  %type.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 12)
  %bf.load.i199 = load i96, ptr %type.i, align 4
  %80 = and i96 %bf.load.i199, 18446742974197923840
  %cmp.i = icmp eq i96 %80, 1009089990530957312
  br i1 %cmp.i, label %if.end45, label %tb_port_is_dpout.exit.do.body_crit_edge

tb_port_is_dpout.exit.do.body_crit_edge:          ; preds = %tb_port_is_dpout.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %tb_port_is_dpout.exit.do.body_crit_edge, %tb_dp_init_aux_path.exit198.do.body_crit_edge
  %sw = getelementptr inbounds %struct.tb_port, ptr %in, i32 0, i32 1
  %81 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sw, align 4
  %tb39 = getelementptr inbounds %struct.tb_switch, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %tb39 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tb39, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %88, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %82, i32 0, i32 1, i32 4
  %89 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 8)
  %bf.load.i200 = load i64, ptr %route_hi.i, align 4
  %90 = lshr i64 %bf.load.i200, 1
  %shl.i = and i64 %90, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %82, i32 0, i32 1, i32 3
  %91 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %92 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port42 = getelementptr inbounds %struct.tb_port, ptr %in, i32 0, i32 9
  %93 = ptrtoint ptr %port42 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %port42, align 4
  %conv = zext i8 %94 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.18, i64 noundef %or.i, i32 noundef %conv) #14
  br label %err_deactivate

if.end45:                                         ; preds = %tb_port_is_dpout.exit
  %call47 = call zeroext i1 @tb_dp_port_is_enabled(ptr noundef nonnull %78) #11
  br i1 %call47, label %if.end49, label %if.end45.err_deactivate_crit_edge

if.end45.err_deactivate_crit_edge:                ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_deactivate

if.end49:                                         ; preds = %if.end45
  %95 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dst_port, align 4
  %call51 = call i32 @tb_dp_port_hpd_is_active(ptr noundef %96) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end49.err_deactivate_crit_edge, label %if.end54

if.end49.err_deactivate_crit_edge:                ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_deactivate

if.end54:                                         ; preds = %if.end49
  %97 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %port, align 4
  %99 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %src_port, align 4
  %cmp.not = icmp eq ptr %98, %100
  br i1 %cmp.not, label %do.body82, label %do.body58

do.body58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call1, align 4
  %nhi63 = getelementptr inbounds %struct.tb, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %nhi63 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %nhi63, align 4
  %pdev64 = getelementptr inbounds %struct.tb_nhi, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %pdev64 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pdev64, align 4
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 44
  %sw67 = getelementptr inbounds %struct.tb_port, ptr %100, i32 0, i32 1
  %107 = ptrtoint ptr %sw67 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %sw67, align 4
  %route_hi.i201 = getelementptr inbounds %struct.tb_switch, ptr %108, i32 0, i32 1, i32 4
  %109 = ptrtoint ptr %route_hi.i201 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 8)
  %bf.load.i202 = load i64, ptr %route_hi.i201, align 4
  %110 = lshr i64 %bf.load.i202, 1
  %shl.i203 = and i64 %110, 9223372032559808512
  %route_lo.i204 = getelementptr inbounds %struct.tb_switch, ptr %108, i32 0, i32 1, i32 3
  %111 = ptrtoint ptr %route_lo.i204 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %route_lo.i204, align 8
  %conv2.i205 = zext i32 %112 to i64
  %or.i206 = or i64 %shl.i203, %conv2.i205
  %port70 = getelementptr inbounds %struct.tb_port, ptr %100, i32 0, i32 9
  %113 = ptrtoint ptr %port70 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %port70, align 4
  %conv71 = zext i8 %114 to i32
  %115 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dst_port, align 4
  %sw73 = getelementptr inbounds %struct.tb_port, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %sw73 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %sw73, align 4
  %route_hi.i207 = getelementptr inbounds %struct.tb_switch, ptr %118, i32 0, i32 1, i32 4
  %119 = ptrtoint ptr %route_hi.i207 to i32
  call void @__asan_loadN_noabort(i32 %119, i32 8)
  %bf.load.i208 = load i64, ptr %route_hi.i207, align 4
  %120 = lshr i64 %bf.load.i208, 1
  %shl.i209 = and i64 %120, 9223372032559808512
  %route_lo.i210 = getelementptr inbounds %struct.tb_switch, ptr %118, i32 0, i32 1, i32 3
  %121 = ptrtoint ptr %route_lo.i210 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %route_lo.i210, align 8
  %conv2.i211 = zext i32 %122 to i64
  %or.i212 = or i64 %shl.i209, %conv2.i211
  %port76 = getelementptr inbounds %struct.tb_port, ptr %116, i32 0, i32 9
  %123 = ptrtoint ptr %port76 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %port76, align 4
  %conv77 = zext i8 %124 to i32
  %type = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 12
  %125 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %type, align 4
  %arrayidx78 = getelementptr [4 x ptr], ptr @tb_tunnel_names, i32 0, i32 %126
  %127 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx78, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev65, ptr noundef nonnull @.str.8, i64 noundef %or.i206, i32 noundef %conv71, i64 noundef %or.i212, i32 noundef %conv77, ptr noundef %128) #14
  br label %err_deactivate

do.body82:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_tunnel_discover_dp.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_tunnel_discover_dp, %if.then90)) #11
          to label %cleanup [label %if.then90], !srcloc !168

if.then90:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #13
  %129 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %call1, align 4
  %nhi92 = getelementptr inbounds %struct.tb, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %nhi92 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %nhi92, align 4
  %pdev93 = getelementptr inbounds %struct.tb_nhi, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %pdev93 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pdev93, align 4
  %dev94 = getelementptr inbounds %struct.pci_dev, ptr %134, i32 0, i32 44
  %135 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %src_port, align 4
  %sw96 = getelementptr inbounds %struct.tb_port, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %sw96 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %sw96, align 4
  %route_hi.i213 = getelementptr inbounds %struct.tb_switch, ptr %138, i32 0, i32 1, i32 4
  %139 = ptrtoint ptr %route_hi.i213 to i32
  call void @__asan_loadN_noabort(i32 %139, i32 8)
  %bf.load.i214 = load i64, ptr %route_hi.i213, align 4
  %140 = lshr i64 %bf.load.i214, 1
  %shl.i215 = and i64 %140, 9223372032559808512
  %route_lo.i216 = getelementptr inbounds %struct.tb_switch, ptr %138, i32 0, i32 1, i32 3
  %141 = ptrtoint ptr %route_lo.i216 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %route_lo.i216, align 8
  %conv2.i217 = zext i32 %142 to i64
  %or.i218 = or i64 %shl.i215, %conv2.i217
  %port99 = getelementptr inbounds %struct.tb_port, ptr %136, i32 0, i32 9
  %143 = ptrtoint ptr %port99 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %port99, align 4
  %conv100 = zext i8 %144 to i32
  %145 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dst_port, align 4
  %sw102 = getelementptr inbounds %struct.tb_port, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %sw102 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %sw102, align 4
  %route_hi.i219 = getelementptr inbounds %struct.tb_switch, ptr %148, i32 0, i32 1, i32 4
  %149 = ptrtoint ptr %route_hi.i219 to i32
  call void @__asan_loadN_noabort(i32 %149, i32 8)
  %bf.load.i220 = load i64, ptr %route_hi.i219, align 4
  %150 = lshr i64 %bf.load.i220, 1
  %shl.i221 = and i64 %150, 9223372032559808512
  %route_lo.i222 = getelementptr inbounds %struct.tb_switch, ptr %148, i32 0, i32 1, i32 3
  %151 = ptrtoint ptr %route_lo.i222 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %route_lo.i222, align 8
  %conv2.i223 = zext i32 %152 to i64
  %or.i224 = or i64 %shl.i221, %conv2.i223
  %port105 = getelementptr inbounds %struct.tb_port, ptr %146, i32 0, i32 9
  %153 = ptrtoint ptr %port105 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %port105, align 4
  %conv106 = zext i8 %154 to i32
  %type107 = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 12
  %155 = ptrtoint ptr %type107 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %type107, align 4
  %arrayidx108 = getelementptr [4 x ptr], ptr @tb_tunnel_names, i32 0, i32 %156
  %157 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx108, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_tunnel_discover_dp.__UNIQUE_ID_ddebug248, ptr noundef %dev94, ptr noundef nonnull @.str.14, i64 noundef %or.i218, i32 noundef %conv100, i64 noundef %or.i224, i32 noundef %conv106, ptr noundef %158) #11
  br label %cleanup

err_deactivate:                                   ; preds = %do.body58, %if.end49.err_deactivate_crit_edge, %if.end45.err_deactivate_crit_edge, %do.body, %tb_dp_init_aux_path.exit.err_deactivate_crit_edge, %if.end15.err_deactivate_crit_edge
  call void @tb_tunnel_deactivate(ptr noundef nonnull %call1)
  br label %if.end.i

if.end.i:                                         ; preds = %err_deactivate, %if.end9.if.end.i_crit_edge, %if.then7
  %deinit.i = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 6
  %159 = ptrtoint ptr %deinit.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %deinit.i, align 4
  %tobool1.not.i = icmp eq ptr %160, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %160(ptr noundef nonnull %call1) #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %npaths.i = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 4
  %161 = ptrtoint ptr %npaths.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %npaths.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %cmp23.not.i = icmp eq i32 %162, 0
  br i1 %cmp23.not.i, label %if.end4.i.tb_tunnel_free.exit_crit_edge, label %for.body.lr.ph.i

if.end4.i.tb_tunnel_free.exit_crit_edge:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_free.exit

for.body.lr.ph.i:                                 ; preds = %if.end4.i
  %paths.i = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 3
  br label %for.body.i226

for.body.i226:                                    ; preds = %for.inc.i.for.body.i226_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i226_crit_edge ]
  %163 = ptrtoint ptr %paths.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %paths.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %164, i32 %i.024.i
  %165 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not.i = icmp eq ptr %166, null
  br i1 %tobool5.not.i, label %for.body.i226.for.inc.i_crit_edge, label %if.then6.i

for.body.i226.for.inc.i_crit_edge:                ; preds = %for.body.i226
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i226
  call void @__sanitizer_cov_trace_pc() #13
  call void @tb_path_free(ptr noundef nonnull %166) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %for.body.i226.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.024.i, 1
  %167 = ptrtoint ptr %npaths.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %npaths.i, align 4
  %cmp.i227 = icmp ult i32 %inc.i, %168
  br i1 %cmp.i227, label %for.inc.i.for.body.i226_crit_edge, label %for.inc.i.tb_tunnel_free.exit_crit_edge

for.inc.i.tb_tunnel_free.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_free.exit

for.inc.i.for.body.i226_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i226

tb_tunnel_free.exit:                              ; preds = %for.inc.i.tb_tunnel_free.exit_crit_edge, %if.end4.i.tb_tunnel_free.exit_crit_edge
  %paths10.i = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 3
  %169 = ptrtoint ptr %paths10.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %paths10.i, align 4
  call void @kfree(ptr noundef %170) #11
  call void @kfree(ptr noundef nonnull %call1) #11
  br label %cleanup

cleanup:                                          ; preds = %tb_tunnel_free.exit, %if.then90, %do.body82, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %tb_tunnel_free.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call1, %if.then90 ], [ %call1, %do.body82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tb_dp_port_is_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tb_dp_xchg_caps(ptr nocapture noundef readonly %tunnel) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %out_dp_cap = alloca i32, align 4
  %in_dp_cap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_dp_cap) #11
  %0 = ptrtoint ptr %out_dp_cap to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %out_dp_cap, align 4, !annotation !171
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in_dp_cap) #11
  %1 = ptrtoint ptr %in_dp_cap to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %in_dp_cap, align 4, !annotation !171
  %dst_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 2
  %2 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst_port, align 4
  %src_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 1
  %4 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src_port, align 4
  %sw = getelementptr inbounds %struct.tb_port, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sw, align 4
  %generation = getelementptr inbounds %struct.tb_switch, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %generation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp ult i32 %9, 2
  br i1 %cmp, label %entry.cleanup142_crit_edge, label %lor.lhs.false

entry.cleanup142_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup142

lor.lhs.false:                                    ; preds = %entry
  %sw1 = getelementptr inbounds %struct.tb_port, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sw1, align 4
  %generation2 = getelementptr inbounds %struct.tb_switch, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %generation2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %generation2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp3 = icmp ult i32 %13, 2
  br i1 %cmp3, label %lor.lhs.false.cleanup142_crit_edge, label %if.end

lor.lhs.false.cleanup142_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup142

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %val.i, align 4, !annotation !171
  %thunderbolt_version.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %7, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %thunderbolt_version.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %bf.load.i.i.i = load i64, ptr %thunderbolt_version.i.i.i, align 4
  %bf.cast1.i.i.i = and i64 %bf.load.i.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %bf.cast1.i.i.i)
  %cmp.i.i.i = icmp eq i64 %bf.cast1.i.i.i, 32
  br i1 %cmp.i.i.i, label %if.end.lor.lhs.false.i_crit_edge, label %lor.rhs.i.i

if.end.lor.lhs.false.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

lor.rhs.i.i:                                      ; preds = %if.end
  %config.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %config.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %17)
  %cmp.i3.i.i = icmp eq i16 %17, -32634
  br i1 %cmp.i3.i.i, label %if.then.i.i.i, label %lor.rhs.i.i.if.end5_crit_edge

lor.rhs.i.i.if.end5_crit_edge:                    ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then.i.i.i:                                    ; preds = %lor.rhs.i.i
  %device_id.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %7, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %device_id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %device_id.i.i.i, align 2
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i16 %19, label %if.then.i.i.i.if.end5_crit_edge [
    i16 5607, label %if.then.i.i.i.lor.lhs.false.i_crit_edge
    i16 5610, label %if.then.i.i.i.lor.lhs.false.i_crit_edge320
    i16 5615, label %if.then.i.i.i.lor.lhs.false.i_crit_edge321
  ]

if.then.i.i.i.lor.lhs.false.i_crit_edge321:       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

if.then.i.i.i.lor.lhs.false.i_crit_edge320:       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

if.then.i.i.i.lor.lhs.false.i_crit_edge:          ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

if.then.i.i.i.if.end5_crit_edge:                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

lor.lhs.false.i:                                  ; preds = %if.then.i.i.i.lor.lhs.false.i_crit_edge, %if.then.i.i.i.lor.lhs.false.i_crit_edge320, %if.then.i.i.i.lor.lhs.false.i_crit_edge321, %if.end.lor.lhs.false.i_crit_edge
  %thunderbolt_version.i.i35.i = getelementptr inbounds %struct.tb_switch, ptr %11, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %thunderbolt_version.i.i35.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %bf.load.i.i36.i = load i64, ptr %thunderbolt_version.i.i35.i, align 4
  %bf.cast1.i.i37.i = and i64 %bf.load.i.i36.i, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %bf.cast1.i.i37.i)
  %cmp.i.i38.i = icmp eq i64 %bf.cast1.i.i37.i, 32
  br i1 %cmp.i.i38.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.rhs.i41.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

lor.rhs.i41.i:                                    ; preds = %lor.lhs.false.i
  %config.i.i39.i = getelementptr inbounds %struct.tb_switch, ptr %11, i32 0, i32 1
  %22 = ptrtoint ptr %config.i.i39.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %config.i.i39.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %23)
  %cmp.i3.i40.i = icmp eq i16 %23, -32634
  br i1 %cmp.i3.i40.i, label %if.then.i.i43.i, label %lor.rhs.i41.i.if.end5_crit_edge

lor.rhs.i41.i.if.end5_crit_edge:                  ; preds = %lor.rhs.i41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then.i.i43.i:                                  ; preds = %lor.rhs.i41.i
  %device_id.i.i42.i = getelementptr inbounds %struct.tb_switch, ptr %11, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %device_id.i.i42.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device_id.i.i42.i, align 2
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %25, label %if.then.i.i43.i.if.end5_crit_edge [
    i16 5607, label %if.then.i.i43.i.if.end.i_crit_edge
    i16 5610, label %if.then.i.i43.i.if.end.i_crit_edge322
    i16 5615, label %if.then.i.i43.i.if.end.i_crit_edge323
  ]

if.then.i.i43.i.if.end.i_crit_edge323:            ; preds = %if.then.i.i43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i.i43.i.if.end.i_crit_edge322:            ; preds = %if.then.i.i43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i.i43.i.if.end.i_crit_edge:               ; preds = %if.then.i.i43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i.i43.i.if.end5_crit_edge:                ; preds = %if.then.i.i43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end.i:                                         ; preds = %if.then.i.i43.i.if.end.i_crit_edge, %if.then.i.i43.i.if.end.i_crit_edge322, %if.then.i.i43.i.if.end.i_crit_edge323, %lor.lhs.false.i.if.end.i_crit_edge
  %cap_adap.i = getelementptr inbounds %struct.tb_port, ptr %3, i32 0, i32 6
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %11, i32 0, i32 20
  %27 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_unplugged.i.i, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i.i, label %tb_port_read.exit.i, label %if.end.i.tb_dp_cm_handshake.exit.thread_crit_edge

if.end.i.tb_dp_cm_handshake.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_cm_handshake.exit.thread

tb_port_read.exit.i:                              ; preds = %if.end.i
  %29 = ptrtoint ptr %cap_adap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cap_adap.i, align 4
  %add.i = add i32 %30, 6
  %tb.i.i = getelementptr inbounds %struct.tb_switch, ptr %11, i32 0, i32 5
  %31 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctl.i.i, align 8
  %35 = lshr i64 %bf.load.i.i36.i, 1
  %shl.i.i.i = and i64 %35, 9223372032559808512
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %11, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i = zext i32 %37 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %port3.i.i = getelementptr inbounds %struct.tb_port, ptr %3, i32 0, i32 9
  %38 = ptrtoint ptr %port3.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %port3.i.i, align 4
  %conv.i.i = zext i8 %39 to i32
  %call4.i.i = call i32 @tb_cfg_read(ptr noundef %34, ptr noundef nonnull %val.i, i64 noundef %or.i.i.i, i32 noundef %conv.i.i, i32 noundef 1, i32 noundef %add.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %tb_port_read.exit.i.tb_dp_cm_handshake.exit.thread_crit_edge

tb_port_read.exit.i.tb_dp_cm_handshake.exit.thread_crit_edge: ; preds = %tb_port_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_cm_handshake.exit.thread

if.end5.i:                                        ; preds = %tb_port_read.exit.i
  %40 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val.i, align 4
  %or.i = or i32 %41, 100663296
  store i32 %or.i, ptr %val.i, align 4
  %42 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sw1, align 4
  %is_unplugged.i48.i = getelementptr inbounds %struct.tb_switch, ptr %43, i32 0, i32 20
  %44 = ptrtoint ptr %is_unplugged.i48.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %is_unplugged.i48.i, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i49.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i49.i, label %tb_port_write.exit.i, label %if.end5.i.tb_dp_cm_handshake.exit.thread_crit_edge

if.end5.i.tb_dp_cm_handshake.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_cm_handshake.exit.thread

tb_port_write.exit.i:                             ; preds = %if.end5.i
  %46 = ptrtoint ptr %cap_adap.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cap_adap.i, align 4
  %add7.i = add i32 %47, 6
  %tb.i50.i = getelementptr inbounds %struct.tb_switch, ptr %43, i32 0, i32 5
  %48 = ptrtoint ptr %tb.i50.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tb.i50.i, align 8
  %ctl.i51.i = getelementptr inbounds %struct.tb, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %ctl.i51.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctl.i51.i, align 8
  %route_hi.i.i52.i = getelementptr inbounds %struct.tb_switch, ptr %43, i32 0, i32 1, i32 4
  %52 = ptrtoint ptr %route_hi.i.i52.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %bf.load.i.i53.i = load i64, ptr %route_hi.i.i52.i, align 4
  %53 = lshr i64 %bf.load.i.i53.i, 1
  %shl.i.i54.i = and i64 %53, 9223372032559808512
  %route_lo.i.i55.i = getelementptr inbounds %struct.tb_switch, ptr %43, i32 0, i32 1, i32 3
  %54 = ptrtoint ptr %route_lo.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %route_lo.i.i55.i, align 8
  %conv2.i.i56.i = zext i32 %55 to i64
  %or.i.i57.i = or i64 %shl.i.i54.i, %conv2.i.i56.i
  %56 = ptrtoint ptr %port3.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %port3.i.i, align 4
  %conv.i59.i = zext i8 %57 to i32
  %call4.i60.i = call i32 @tb_cfg_write(ptr noundef %51, ptr noundef nonnull %val.i, i64 noundef %or.i.i57.i, i32 noundef %conv.i59.i, i32 noundef 1, i32 noundef %add7.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i60.i)
  %tobool9.not.i = icmp eq i32 %call4.i60.i, 0
  br i1 %tobool9.not.i, label %tb_port_write.exit.i.do.body.i_crit_edge, label %tb_port_write.exit.i.tb_dp_cm_handshake.exit.thread_crit_edge

tb_port_write.exit.i.tb_dp_cm_handshake.exit.thread_crit_edge: ; preds = %tb_port_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_cm_handshake.exit.thread

tb_port_write.exit.i.do.body.i_crit_edge:         ; preds = %tb_port_write.exit.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.end20.i.do.body.i_crit_edge, %tb_port_write.exit.i.do.body.i_crit_edge
  %timeout.0.i = phi i32 [ %dec.i, %if.end20.i.do.body.i_crit_edge ], [ 10, %tb_port_write.exit.i.do.body.i_crit_edge ]
  %58 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sw1, align 4
  %is_unplugged.i64.i = getelementptr inbounds %struct.tb_switch, ptr %59, i32 0, i32 20
  %60 = ptrtoint ptr %is_unplugged.i64.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %is_unplugged.i64.i, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i65.i = icmp eq i8 %61, 0
  br i1 %tobool.not.i65.i, label %tb_port_read.exit79.i, label %do.body.i.tb_dp_cm_handshake.exit.thread_crit_edge

do.body.i.tb_dp_cm_handshake.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_cm_handshake.exit.thread

tb_port_read.exit79.i:                            ; preds = %do.body.i
  %62 = ptrtoint ptr %cap_adap.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cap_adap.i, align 4
  %add13.i = add i32 %63, 6
  %tb.i66.i = getelementptr inbounds %struct.tb_switch, ptr %59, i32 0, i32 5
  %64 = ptrtoint ptr %tb.i66.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tb.i66.i, align 8
  %ctl.i67.i = getelementptr inbounds %struct.tb, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %ctl.i67.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ctl.i67.i, align 8
  %route_hi.i.i68.i = getelementptr inbounds %struct.tb_switch, ptr %59, i32 0, i32 1, i32 4
  %68 = ptrtoint ptr %route_hi.i.i68.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 8)
  %bf.load.i.i69.i = load i64, ptr %route_hi.i.i68.i, align 4
  %69 = lshr i64 %bf.load.i.i69.i, 1
  %shl.i.i70.i = and i64 %69, 9223372032559808512
  %route_lo.i.i71.i = getelementptr inbounds %struct.tb_switch, ptr %59, i32 0, i32 1, i32 3
  %70 = ptrtoint ptr %route_lo.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %route_lo.i.i71.i, align 8
  %conv2.i.i72.i = zext i32 %71 to i64
  %or.i.i73.i = or i64 %shl.i.i70.i, %conv2.i.i72.i
  %72 = ptrtoint ptr %port3.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %port3.i.i, align 4
  %conv.i75.i = zext i8 %73 to i32
  %call4.i76.i = call i32 @tb_cfg_read(ptr noundef %67, ptr noundef nonnull %val.i, i64 noundef %or.i.i73.i, i32 noundef %conv.i75.i, i32 noundef 1, i32 noundef %add13.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i76.i)
  %tobool15.not.i = icmp eq i32 %call4.i76.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %tb_port_read.exit79.i.tb_dp_cm_handshake.exit.thread_crit_edge

tb_port_read.exit79.i.tb_dp_cm_handshake.exit.thread_crit_edge: ; preds = %tb_port_read.exit79.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_cm_handshake.exit.thread

if.end17.i:                                       ; preds = %tb_port_read.exit79.i
  %74 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %val.i, align 4
  %and.i = and i32 %75, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool18.not.i, label %if.end17.i.if.end5_crit_edge, label %if.end20.i

if.end17.i.if.end5_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end20.i:                                       ; preds = %if.end17.i
  call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #11
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool21.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %tobool21.not.i, label %if.end20.i.tb_dp_cm_handshake.exit.thread_crit_edge, label %if.end20.i.do.body.i_crit_edge

if.end20.i.do.body.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end20.i.tb_dp_cm_handshake.exit.thread_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_cm_handshake.exit.thread

tb_dp_cm_handshake.exit.thread:                   ; preds = %if.end20.i.tb_dp_cm_handshake.exit.thread_crit_edge, %tb_port_read.exit79.i.tb_dp_cm_handshake.exit.thread_crit_edge, %do.body.i.tb_dp_cm_handshake.exit.thread_crit_edge, %tb_port_write.exit.i.tb_dp_cm_handshake.exit.thread_crit_edge, %if.end5.i.tb_dp_cm_handshake.exit.thread_crit_edge, %tb_port_read.exit.i.tb_dp_cm_handshake.exit.thread_crit_edge, %if.end.i.tb_dp_cm_handshake.exit.thread_crit_edge
  %retval.0.i206.ph = phi i32 [ -19, %if.end5.i.tb_dp_cm_handshake.exit.thread_crit_edge ], [ -19, %if.end.i.tb_dp_cm_handshake.exit.thread_crit_edge ], [ %call4.i60.i, %tb_port_write.exit.i.tb_dp_cm_handshake.exit.thread_crit_edge ], [ %call4.i.i, %tb_port_read.exit.i.tb_dp_cm_handshake.exit.thread_crit_edge ], [ -19, %do.body.i.tb_dp_cm_handshake.exit.thread_crit_edge ], [ -110, %if.end20.i.tb_dp_cm_handshake.exit.thread_crit_edge ], [ %call4.i76.i, %tb_port_read.exit79.i.tb_dp_cm_handshake.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  br label %cleanup142

if.end5:                                          ; preds = %if.end17.i.if.end5_crit_edge, %if.then.i.i43.i.if.end5_crit_edge, %lor.rhs.i41.i.if.end5_crit_edge, %if.then.i.i.i.if.end5_crit_edge, %lor.rhs.i.i.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  %cap_adap = getelementptr inbounds %struct.tb_port, ptr %5, i32 0, i32 6
  %76 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sw, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %77, i32 0, i32 20
  %78 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %is_unplugged.i, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i208 = icmp eq i8 %79, 0
  br i1 %tobool.not.i208, label %tb_port_read.exit, label %if.end5.cleanup142_crit_edge

if.end5.cleanup142_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup142

tb_port_read.exit:                                ; preds = %if.end5
  %80 = ptrtoint ptr %cap_adap to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cap_adap, align 4
  %add = add i32 %81, 4
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %77, i32 0, i32 5
  %82 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %77, i32 0, i32 1, i32 4
  %86 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %87 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %87, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %77, i32 0, i32 1, i32 3
  %88 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %89 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %5, i32 0, i32 9
  %90 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %91 to i32
  %call4.i = call i32 @tb_cfg_read(ptr noundef %85, ptr noundef nonnull %in_dp_cap, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 1, i32 noundef %add, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool7.not = icmp eq i32 %call4.i, 0
  br i1 %tobool7.not, label %if.end9, label %tb_port_read.exit.cleanup142_crit_edge

tb_port_read.exit.cleanup142_crit_edge:           ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup142

if.end9:                                          ; preds = %tb_port_read.exit
  %cap_adap10 = getelementptr inbounds %struct.tb_port, ptr %3, i32 0, i32 6
  %92 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sw1, align 4
  %is_unplugged.i212 = getelementptr inbounds %struct.tb_switch, ptr %93, i32 0, i32 20
  %94 = ptrtoint ptr %is_unplugged.i212 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %is_unplugged.i212, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i213 = icmp eq i8 %95, 0
  br i1 %tobool.not.i213, label %tb_port_read.exit227, label %if.end9.cleanup142_crit_edge

if.end9.cleanup142_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup142

tb_port_read.exit227:                             ; preds = %if.end9
  %96 = ptrtoint ptr %cap_adap10 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cap_adap10, align 4
  %add11 = add i32 %97, 4
  %tb.i214 = getelementptr inbounds %struct.tb_switch, ptr %93, i32 0, i32 5
  %98 = ptrtoint ptr %tb.i214 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tb.i214, align 8
  %ctl.i215 = getelementptr inbounds %struct.tb, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %ctl.i215 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ctl.i215, align 8
  %route_hi.i.i216 = getelementptr inbounds %struct.tb_switch, ptr %93, i32 0, i32 1, i32 4
  %102 = ptrtoint ptr %route_hi.i.i216 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 8)
  %bf.load.i.i217 = load i64, ptr %route_hi.i.i216, align 4
  %103 = lshr i64 %bf.load.i.i217, 1
  %shl.i.i218 = and i64 %103, 9223372032559808512
  %route_lo.i.i219 = getelementptr inbounds %struct.tb_switch, ptr %93, i32 0, i32 1, i32 3
  %104 = ptrtoint ptr %route_lo.i.i219 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %route_lo.i.i219, align 8
  %conv2.i.i220 = zext i32 %105 to i64
  %or.i.i221 = or i64 %shl.i.i218, %conv2.i.i220
  %port3.i222 = getelementptr inbounds %struct.tb_port, ptr %3, i32 0, i32 9
  %106 = ptrtoint ptr %port3.i222 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %port3.i222, align 4
  %conv.i223 = zext i8 %107 to i32
  %call4.i224 = call i32 @tb_cfg_read(ptr noundef %101, ptr noundef nonnull %out_dp_cap, i64 noundef %or.i.i221, i32 noundef %conv.i223, i32 noundef 1, i32 noundef %add11, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i224)
  %tobool13.not = icmp eq i32 %call4.i224, 0
  br i1 %tobool13.not, label %if.end15, label %tb_port_read.exit227.cleanup142_crit_edge

tb_port_read.exit227.cleanup142_crit_edge:        ; preds = %tb_port_read.exit227
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup142

if.end15:                                         ; preds = %tb_port_read.exit227
  %108 = ptrtoint ptr %cap_adap10 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cap_adap10, align 4
  %add17 = add i32 %109, 5
  %call18 = call fastcc i32 @tb_port_write(ptr noundef %3, ptr noundef nonnull %in_dp_cap, i32 noundef %add17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.cleanup142_crit_edge

if.end15.cleanup142_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup142

if.end21:                                         ; preds = %if.end15
  %110 = ptrtoint ptr %in_dp_cap to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %in_dp_cap, align 4
  %and.i228 = lshr i32 %111, 8
  %shr.i = and i32 %and.i228, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr.i)
  %112 = icmp ult i32 %shr.i, 4
  br i1 %112, label %switch.lookup, label %if.end21.tb_dp_cap_get_rate.exit_crit_edge

if.end21.tb_dp_cap_get_rate.exit_crit_edge:       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_cap_get_rate.exit

switch.lookup:                                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.tb_dp_xchg_caps, i32 0, i32 %shr.i
  %113 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %113)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %tb_dp_cap_get_rate.exit

tb_dp_cap_get_rate.exit:                          ; preds = %switch.lookup, %if.end21.tb_dp_cap_get_rate.exit_crit_edge
  %retval.0.i229 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end21.tb_dp_cap_get_rate.exit_crit_edge ]
  %and.i230 = lshr i32 %111, 12
  %shr.i231 = and i32 %and.i230, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i231)
  %114 = icmp ult i32 %shr.i231, 3
  br i1 %114, label %switch.lookup307, label %tb_dp_cap_get_rate.exit.tb_dp_cap_get_lanes.exit_crit_edge

tb_dp_cap_get_rate.exit.tb_dp_cap_get_lanes.exit_crit_edge: ; preds = %tb_dp_cap_get_rate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_cap_get_lanes.exit

switch.lookup307:                                 ; preds = %tb_dp_cap_get_rate.exit
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep308 = getelementptr inbounds [3 x i32], ptr @switch.table.tb_dp_xchg_caps.75, i32 0, i32 %shr.i231
  %115 = ptrtoint ptr %switch.gep308 to i32
  call void @__asan_load4_noabort(i32 %115)
  %switch.load309 = load i32, ptr %switch.gep308, align 4
  br label %tb_dp_cap_get_lanes.exit

tb_dp_cap_get_lanes.exit:                         ; preds = %switch.lookup307, %tb_dp_cap_get_rate.exit.tb_dp_cap_get_lanes.exit_crit_edge
  %retval.0.i235 = phi i32 [ %switch.load309, %switch.lookup307 ], [ 0, %tb_dp_cap_get_rate.exit.tb_dp_cap_get_lanes.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_dp_xchg_caps.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_dp_xchg_caps, %if.then29)) #11
          to label %do.end [label %if.then29], !srcloc !168

if.then29:                                        ; preds = %tb_dp_cap_get_lanes.exit
  call void @__sanitizer_cov_trace_pc() #13
  %116 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %sw, align 4
  %tb = getelementptr inbounds %struct.tb_switch, ptr %117, i32 0, i32 5
  %118 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %tb, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %117, i32 0, i32 1, i32 4
  %124 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %124, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %125 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %125, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %117, i32 0, i32 1, i32 3
  %126 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %127 to i64
  %or.i236 = or i64 %shl.i, %conv2.i
  %128 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %port3.i, align 4
  %conv = zext i8 %129 to i32
  %mul.i = shl nuw nsw i32 %retval.0.i229, 3
  %mul1.i = mul nuw nsw i32 %mul.i, %retval.0.i235
  %div.i = udiv i32 %mul1.i, 10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_dp_xchg_caps.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.52, i64 noundef %or.i236, i32 noundef %conv, i32 noundef %retval.0.i229, i32 noundef %retval.0.i235, i32 noundef %div.i) #11
  br label %do.end

do.end:                                           ; preds = %if.then29, %tb_dp_cap_get_lanes.exit
  %130 = ptrtoint ptr %out_dp_cap to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %out_dp_cap, align 4
  %and.i237 = lshr i32 %131, 8
  %shr.i238 = and i32 %and.i237, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr.i238)
  %132 = icmp ult i32 %shr.i238, 4
  br i1 %132, label %switch.lookup310, label %do.end.tb_dp_cap_get_rate.exit244_crit_edge

do.end.tb_dp_cap_get_rate.exit244_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_cap_get_rate.exit244

switch.lookup310:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep311 = getelementptr inbounds [4 x i32], ptr @switch.table.tb_dp_xchg_caps.76, i32 0, i32 %shr.i238
  %133 = ptrtoint ptr %switch.gep311 to i32
  call void @__asan_load4_noabort(i32 %133)
  %switch.load312 = load i32, ptr %switch.gep311, align 4
  br label %tb_dp_cap_get_rate.exit244

tb_dp_cap_get_rate.exit244:                       ; preds = %switch.lookup310, %do.end.tb_dp_cap_get_rate.exit244_crit_edge
  %retval.0.i243 = phi i32 [ %switch.load312, %switch.lookup310 ], [ 0, %do.end.tb_dp_cap_get_rate.exit244_crit_edge ]
  %and.i245 = lshr i32 %131, 12
  %shr.i246 = and i32 %and.i245, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i246)
  %134 = icmp ult i32 %shr.i246, 3
  br i1 %134, label %switch.lookup313, label %tb_dp_cap_get_rate.exit244.tb_dp_cap_get_lanes.exit251_crit_edge

tb_dp_cap_get_rate.exit244.tb_dp_cap_get_lanes.exit251_crit_edge: ; preds = %tb_dp_cap_get_rate.exit244
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_cap_get_lanes.exit251

switch.lookup313:                                 ; preds = %tb_dp_cap_get_rate.exit244
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep314 = getelementptr inbounds [3 x i32], ptr @switch.table.tb_dp_xchg_caps.77, i32 0, i32 %shr.i246
  %135 = ptrtoint ptr %switch.gep314 to i32
  call void @__asan_load4_noabort(i32 %135)
  %switch.load315 = load i32, ptr %switch.gep314, align 4
  br label %tb_dp_cap_get_lanes.exit251

tb_dp_cap_get_lanes.exit251:                      ; preds = %switch.lookup313, %tb_dp_cap_get_rate.exit244.tb_dp_cap_get_lanes.exit251_crit_edge
  %retval.0.i250 = phi i32 [ %switch.load315, %switch.lookup313 ], [ 0, %tb_dp_cap_get_rate.exit244.tb_dp_cap_get_lanes.exit251_crit_edge ]
  %mul.i252 = shl nuw nsw i32 %retval.0.i243, 3
  %mul1.i253 = mul nuw nsw i32 %mul.i252, %retval.0.i250
  %div.i254 = udiv i32 %mul1.i253, 10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_dp_xchg_caps.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_dp_xchg_caps, %if.then54)) #11
          to label %do.end66 [label %if.then54], !srcloc !168

if.then54:                                        ; preds = %tb_dp_cap_get_lanes.exit251
  call void @__sanitizer_cov_trace_pc() #13
  %136 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %sw1, align 4
  %tb56 = getelementptr inbounds %struct.tb_switch, ptr %137, i32 0, i32 5
  %138 = ptrtoint ptr %tb56 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %tb56, align 8
  %nhi57 = getelementptr inbounds %struct.tb, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %nhi57 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %nhi57, align 4
  %pdev58 = getelementptr inbounds %struct.tb_nhi, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %pdev58 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pdev58, align 4
  %dev59 = getelementptr inbounds %struct.pci_dev, ptr %143, i32 0, i32 44
  %route_hi.i255 = getelementptr inbounds %struct.tb_switch, ptr %137, i32 0, i32 1, i32 4
  %144 = ptrtoint ptr %route_hi.i255 to i32
  call void @__asan_loadN_noabort(i32 %144, i32 8)
  %bf.load.i256 = load i64, ptr %route_hi.i255, align 4
  %145 = lshr i64 %bf.load.i256, 1
  %shl.i257 = and i64 %145, 9223372032559808512
  %route_lo.i258 = getelementptr inbounds %struct.tb_switch, ptr %137, i32 0, i32 1, i32 3
  %146 = ptrtoint ptr %route_lo.i258 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %route_lo.i258, align 8
  %conv2.i259 = zext i32 %147 to i64
  %or.i260 = or i64 %shl.i257, %conv2.i259
  %148 = ptrtoint ptr %port3.i222 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %port3.i222, align 4
  %conv63 = zext i8 %149 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_dp_xchg_caps.__UNIQUE_ID_ddebug244, ptr noundef %dev59, ptr noundef nonnull @.str.52, i64 noundef %or.i260, i32 noundef %conv63, i32 noundef %retval.0.i243, i32 noundef %retval.0.i250, i32 noundef %div.i254) #11
  br label %do.end66

do.end66:                                         ; preds = %if.then54, %tb_dp_cap_get_lanes.exit251
  %150 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %sw, align 4
  %depth = getelementptr inbounds %struct.tb_switch, ptr %151, i32 0, i32 1, i32 2
  %152 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %152)
  %bf.load = load i32, ptr %depth, align 4
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 7
  %153 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %sw1, align 4
  %depth72 = getelementptr inbounds %struct.tb_switch, ptr %154, i32 0, i32 1, i32 2
  %155 = ptrtoint ptr %depth72 to i32
  call void @__asan_load4_noabort(i32 %155)
  %bf.load73 = load i32, ptr %depth72, align 4
  %bf.lshr74 = lshr i32 %bf.load73, 9
  %bf.clear75 = and i32 %bf.lshr74, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %bf.clear75)
  %cmp76 = icmp ult i32 %bf.clear, %bf.clear75
  %max_down = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 14
  %max_up = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 13
  %max_bw.0.in = select i1 %cmp76, ptr %max_down, ptr %max_up
  %156 = ptrtoint ptr %max_bw.0.in to i32
  call void @__asan_load4_noabort(i32 %156)
  %max_bw.0 = load i32, ptr %max_bw.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_bw.0)
  %tobool80.not = icmp ne i32 %max_bw.0, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i254, i32 %max_bw.0)
  %cmp81 = icmp ugt i32 %div.i254, %max_bw.0
  %or.cond = select i1 %tobool80.not, i1 %cmp81, i1 false
  br i1 %or.cond, label %do.end66.for.body.i_crit_edge, label %do.end66.if.end138_crit_edge

do.end66.if.end138_crit_edge:                     ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end138

do.end66.for.body.i_crit_edge:                    ; preds = %do.end66
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end66.for.body.i_crit_edge
  %i.038.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end66.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [12 x [2 x i32]], ptr @tb_dp_reduce_bandwidth.dp_bw, i32 0, i32 %i.038.i
  %157 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %158, i32 %retval.0.i243)
  %cmp2.i = icmp ugt i32 %158, %retval.0.i243
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i261

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

lor.lhs.false.i261:                               ; preds = %for.body.i
  %arrayidx4.i = getelementptr [12 x [2 x i32]], ptr @tb_dp_reduce_bandwidth.dp_bw, i32 0, i32 %i.038.i, i32 1
  %159 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %retval.0.i250)
  %cmp5.i = icmp ugt i32 %160, %retval.0.i250
  call void @__sanitizer_cov_trace_cmp4(i32 %158, i32 %retval.0.i229)
  %cmp8.i = icmp ugt i32 %158, %retval.0.i229
  %or.cond.i = select i1 %cmp5.i, i1 true, i1 %cmp8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %retval.0.i235)
  %cmp12.i = icmp ugt i32 %160, %retval.0.i235
  %or.cond36.i = or i1 %cmp12.i, %or.cond.i
  br i1 %or.cond36.i, label %lor.lhs.false.i261.for.inc.i_crit_edge, label %if.end14.i

lor.lhs.false.i261.for.inc.i_crit_edge:           ; preds = %lor.lhs.false.i261
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end14.i:                                       ; preds = %lor.lhs.false.i261
  %mul.i.i = shl i32 %158, 3
  %mul1.i.i = mul i32 %mul.i.i, %160
  %div.i.i = udiv i32 %mul1.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %max_bw.0)
  %cmp19.not.i = icmp ugt i32 %div.i.i, %max_bw.0
  br i1 %cmp19.not.i, label %if.end14.i.for.inc.i_crit_edge, label %if.end103

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end14.i.for.inc.i_crit_edge, %lor.lhs.false.i261.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %do.body87, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.body87:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  %tb93 = getelementptr inbounds %struct.tb_switch, ptr %154, i32 0, i32 5
  %161 = ptrtoint ptr %tb93 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %tb93, align 8
  %nhi94 = getelementptr inbounds %struct.tb, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %nhi94 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %nhi94, align 4
  %pdev95 = getelementptr inbounds %struct.tb_nhi, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %pdev95 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %pdev95, align 4
  %dev96 = getelementptr inbounds %struct.pci_dev, ptr %166, i32 0, i32 44
  %route_hi.i263 = getelementptr inbounds %struct.tb_switch, ptr %154, i32 0, i32 1, i32 4
  %167 = ptrtoint ptr %route_hi.i263 to i32
  call void @__asan_loadN_noabort(i32 %167, i32 8)
  %bf.load.i264 = load i64, ptr %route_hi.i263, align 4
  %168 = lshr i64 %bf.load.i264, 1
  %shl.i265 = and i64 %168, 9223372032559808512
  %route_lo.i266 = getelementptr inbounds %struct.tb_switch, ptr %154, i32 0, i32 1, i32 3
  %169 = ptrtoint ptr %route_lo.i266 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %route_lo.i266, align 8
  %conv2.i267 = zext i32 %170 to i64
  %or.i268 = or i64 %shl.i265, %conv2.i267
  %171 = ptrtoint ptr %port3.i222 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %port3.i222, align 4
  %conv100 = zext i8 %172 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev96, ptr noundef nonnull @.str.53, i64 noundef %or.i268, i32 noundef %conv100) #14
  br label %cleanup142

if.end103:                                        ; preds = %if.end14.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_dp_xchg_caps.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_dp_xchg_caps, %if.then119)) #11
          to label %do.end131 [label %if.then119], !srcloc !168

if.then119:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  %173 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %sw1, align 4
  %tb121 = getelementptr inbounds %struct.tb_switch, ptr %174, i32 0, i32 5
  %175 = ptrtoint ptr %tb121 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %tb121, align 8
  %nhi122 = getelementptr inbounds %struct.tb, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %nhi122 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %nhi122, align 4
  %pdev123 = getelementptr inbounds %struct.tb_nhi, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %pdev123 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %pdev123, align 4
  %dev124 = getelementptr inbounds %struct.pci_dev, ptr %180, i32 0, i32 44
  %route_hi.i272 = getelementptr inbounds %struct.tb_switch, ptr %174, i32 0, i32 1, i32 4
  %181 = ptrtoint ptr %route_hi.i272 to i32
  call void @__asan_loadN_noabort(i32 %181, i32 8)
  %bf.load.i273 = load i64, ptr %route_hi.i272, align 4
  %182 = lshr i64 %bf.load.i273, 1
  %shl.i274 = and i64 %182, 9223372032559808512
  %route_lo.i275 = getelementptr inbounds %struct.tb_switch, ptr %174, i32 0, i32 1, i32 3
  %183 = ptrtoint ptr %route_lo.i275 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %route_lo.i275, align 8
  %conv2.i276 = zext i32 %184 to i64
  %or.i277 = or i64 %shl.i274, %conv2.i276
  %185 = ptrtoint ptr %port3.i222 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %port3.i222, align 4
  %conv128 = zext i8 %186 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_dp_xchg_caps.__UNIQUE_ID_ddebug245, ptr noundef %dev124, ptr noundef nonnull @.str.55, i64 noundef %or.i277, i32 noundef %conv128, i32 noundef %158, i32 noundef %160, i32 noundef %div.i.i) #11
  br label %do.end131

do.end131:                                        ; preds = %if.then119, %if.end103
  %187 = ptrtoint ptr %out_dp_cap to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %out_dp_cap, align 4
  %call134 = call fastcc i32 @tb_dp_cap_set_rate(i32 noundef %188, i32 noundef %158)
  %189 = ptrtoint ptr %out_dp_cap to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %call134, ptr %out_dp_cap, align 4
  %call135 = call fastcc i32 @tb_dp_cap_set_lanes(i32 noundef %call134, i32 noundef %160)
  %190 = ptrtoint ptr %out_dp_cap to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %call135, ptr %out_dp_cap, align 4
  br label %if.end138

if.end138:                                        ; preds = %do.end131, %do.end66.if.end138_crit_edge
  %191 = ptrtoint ptr %cap_adap to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %cap_adap, align 4
  %add140 = add i32 %192, 5
  %call141 = call fastcc i32 @tb_port_write(ptr noundef %5, ptr noundef nonnull %out_dp_cap, i32 noundef %add140)
  br label %cleanup142

cleanup142:                                       ; preds = %if.end138, %do.body87, %if.end15.cleanup142_crit_edge, %tb_port_read.exit227.cleanup142_crit_edge, %if.end9.cleanup142_crit_edge, %tb_port_read.exit.cleanup142_crit_edge, %if.end5.cleanup142_crit_edge, %tb_dp_cm_handshake.exit.thread, %lor.lhs.false.cleanup142_crit_edge, %entry.cleanup142_crit_edge
  %retval.1 = phi i32 [ %call141, %if.end138 ], [ 0, %lor.lhs.false.cleanup142_crit_edge ], [ 0, %entry.cleanup142_crit_edge ], [ %call4.i, %tb_port_read.exit.cleanup142_crit_edge ], [ %call4.i224, %tb_port_read.exit227.cleanup142_crit_edge ], [ %call18, %if.end15.cleanup142_crit_edge ], [ -63, %do.body87 ], [ %retval.0.i206.ph, %tb_dp_cm_handshake.exit.thread ], [ -19, %if.end5.cleanup142_crit_edge ], [ -19, %if.end9.cleanup142_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in_dp_cap) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_dp_cap) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tb_dp_activate(ptr nocapture noundef readonly %tunnel, i1 noundef zeroext %active) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %active, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %paths1 = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 3
  %0 = ptrtoint ptr %paths1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %paths1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %path_length = getelementptr inbounds %struct.tb_path, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %path_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %path_length, align 4
  %sub = add i32 %5, -1
  %src_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 1
  %6 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src_port, align 4
  %hops = getelementptr inbounds %struct.tb_path, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %hops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hops, align 4
  %in_hop_index = getelementptr inbounds %struct.tb_path_hop, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %in_hop_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %in_hop_index, align 4
  %arrayidx4 = getelementptr ptr, ptr %1, i32 1
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  %hops5 = getelementptr inbounds %struct.tb_path, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %hops5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hops5, align 4
  %in_hop_index7 = getelementptr inbounds %struct.tb_path_hop, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %in_hop_index7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %in_hop_index7, align 4
  %arrayidx8 = getelementptr ptr, ptr %1, i32 2
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx8, align 4
  %hops9 = getelementptr inbounds %struct.tb_path, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %hops9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hops9, align 4
  %next_hop_index = getelementptr %struct.tb_path_hop, ptr %21, i32 %sub, i32 4
  %22 = ptrtoint ptr %next_hop_index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %next_hop_index, align 4
  %call = tail call i32 @tb_dp_port_set_hops(ptr noundef %7, i32 noundef %11, i32 noundef %17, i32 noundef %23) #11
  %dst_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 2
  %24 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dst_port, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %hops12 = getelementptr inbounds %struct.tb_path, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %hops12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hops12, align 4
  %next_hop_index14 = getelementptr %struct.tb_path_hop, ptr %29, i32 %sub, i32 4
  %30 = ptrtoint ptr %next_hop_index14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %next_hop_index14, align 4
  %32 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx8, align 4
  %hops16 = getelementptr inbounds %struct.tb_path, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %hops16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hops16, align 4
  %in_hop_index18 = getelementptr inbounds %struct.tb_path_hop, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %in_hop_index18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %in_hop_index18, align 4
  %38 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx4, align 4
  %hops20 = getelementptr inbounds %struct.tb_path, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %hops20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hops20, align 4
  %next_hop_index22 = getelementptr %struct.tb_path_hop, ptr %41, i32 %sub, i32 4
  %42 = ptrtoint ptr %next_hop_index22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %next_hop_index22, align 4
  %call23 = tail call i32 @tb_dp_port_set_hops(ptr noundef %25, i32 noundef %31, i32 noundef %37, i32 noundef %43) #11
  br label %if.end33

if.else:                                          ; preds = %entry
  %src_port24 = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 1
  %44 = ptrtoint ptr %src_port24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %src_port24, align 4
  %call25 = tail call i32 @tb_dp_port_hpd_clear(ptr noundef %45) #11
  %46 = ptrtoint ptr %src_port24 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %src_port24, align 4
  %call27 = tail call i32 @tb_dp_port_set_hops(ptr noundef %47, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %dst_port28 = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 2
  %48 = ptrtoint ptr %dst_port28 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dst_port28, align 4
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %if.else.if.end33_crit_edge, label %tb_port_is_dpout.exit

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

tb_port_is_dpout.exit:                            ; preds = %if.else
  %type.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 12)
  %bf.load.i = load i96, ptr %type.i, align 4
  %51 = and i96 %bf.load.i, 18446742974197923840
  %cmp.i = icmp eq i96 %51, 1009089990530957312
  br i1 %cmp.i, label %if.then30, label %tb_port_is_dpout.exit.if.end33_crit_edge

tb_port_is_dpout.exit.if.end33_crit_edge:         ; preds = %tb_port_is_dpout.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then30:                                        ; preds = %tb_port_is_dpout.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call32 = tail call i32 @tb_dp_port_set_hops(ptr noundef nonnull %49, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %tb_port_is_dpout.exit.if.end33_crit_edge, %if.else.if.end33_crit_edge, %if.then
  %src_port34 = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 1
  %52 = ptrtoint ptr %src_port34 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %src_port34, align 4
  %call36 = tail call i32 @tb_dp_port_enable(ptr noundef %53, i1 noundef zeroext %active) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end39:                                         ; preds = %if.end33
  %dst_port40 = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 2
  %54 = ptrtoint ptr %dst_port40 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dst_port40, align 4
  %tobool.not.i67 = icmp eq ptr %55, null
  br i1 %tobool.not.i67, label %if.end39.cleanup_crit_edge, label %tb_port_is_dpout.exit72

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

tb_port_is_dpout.exit72:                          ; preds = %if.end39
  %type.i68 = getelementptr inbounds %struct.tb_regs_port_header, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %type.i68 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 12)
  %bf.load.i69 = load i96, ptr %type.i68, align 4
  %57 = and i96 %bf.load.i69, 18446742974197923840
  %cmp.i70 = icmp eq i96 %57, 1009089990530957312
  br i1 %cmp.i70, label %if.then42, label %tb_port_is_dpout.exit72.cleanup_crit_edge

tb_port_is_dpout.exit72.cleanup_crit_edge:        ; preds = %tb_port_is_dpout.exit72
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then42:                                        ; preds = %tb_port_is_dpout.exit72
  call void @__sanitizer_cov_trace_pc() #13
  %call45 = tail call i32 @tb_dp_port_enable(ptr noundef nonnull %55, i1 noundef zeroext %active) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %tb_port_is_dpout.exit72.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end33.cleanup_crit_edge
  %retval.0 = phi i32 [ %call45, %if.then42 ], [ %call36, %if.end33.cleanup_crit_edge ], [ 0, %tb_port_is_dpout.exit72.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tb_dp_consumed_bandwidth(ptr nocapture noundef readonly %tunnel, ptr nocapture noundef writeonly %consumed_up, ptr nocapture noundef writeonly %consumed_down) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %src_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 1
  %0 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src_port, align 4
  %sw1 = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !171
  %thunderbolt_version.i.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %thunderbolt_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %bf.load.i.i = load i64, ptr %thunderbolt_version.i.i, align 4
  %bf.cast1.i.i = and i64 %bf.load.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %bf.cast1.i.i)
  %cmp.i.i = icmp eq i64 %bf.cast1.i.i, 32
  br i1 %cmp.i.i, label %entry.tb_dp_is_usb4.exit_crit_edge, label %lor.rhs.i

entry.tb_dp_is_usb4.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_is_usb4.exit

lor.rhs.i:                                        ; preds = %entry
  %config.i.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %config.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %7)
  %cmp.i3.i = icmp eq i16 %7, -32634
  br i1 %cmp.i3.i, label %if.then.i.i, label %lor.rhs.i.if.else_crit_edge

lor.rhs.i.if.else_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then.i.i:                                      ; preds = %lor.rhs.i
  %device_id.i.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device_id.i.i, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.81)
  switch i16 %9, label %if.then.i.i.if.else_crit_edge [
    i16 5607, label %if.then.i.i.tb_dp_is_usb4.exit_crit_edge
    i16 5610, label %if.then.i.i.tb_dp_is_usb4.exit_crit_edge143
    i16 5615, label %if.then.i.i.tb_dp_is_usb4.exit_crit_edge144
  ]

if.then.i.i.tb_dp_is_usb4.exit_crit_edge144:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_is_usb4.exit

if.then.i.i.tb_dp_is_usb4.exit_crit_edge143:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_is_usb4.exit

if.then.i.i.tb_dp_is_usb4.exit_crit_edge:         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_is_usb4.exit

if.then.i.i.if.else_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

tb_dp_is_usb4.exit:                               ; preds = %if.then.i.i.tb_dp_is_usb4.exit_crit_edge, %if.then.i.i.tb_dp_is_usb4.exit_crit_edge143, %if.then.i.i.tb_dp_is_usb4.exit_crit_edge144, %entry.tb_dp_is_usb4.exit_crit_edge
  %cap_adap = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 6
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 9
  br label %do.body

do.body:                                          ; preds = %if.end8.do.body_crit_edge, %tb_dp_is_usb4.exit
  %timeout.0 = phi i32 [ %dec, %if.end8.do.body_crit_edge ], [ 20, %tb_dp_is_usb4.exit ]
  %11 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sw1, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %12, i32 0, i32 20
  %13 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_unplugged.i, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %tb_port_read.exit, label %do.body.cleanup38_crit_edge

do.body.cleanup38_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup38

tb_port_read.exit:                                ; preds = %do.body
  %15 = ptrtoint ptr %cap_adap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cap_adap, align 4
  %add = add i32 %16, 7
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %12, i32 0, i32 5
  %17 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %12, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %bf.load.i.i62 = load i64, ptr %route_hi.i.i, align 4
  %22 = lshr i64 %bf.load.i.i62, 1
  %shl.i.i = and i64 %22, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %12, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %24 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %25 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %26 to i32
  %call4.i = call i32 @tb_cfg_read(ptr noundef %20, ptr noundef nonnull %val, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 1, i32 noundef %add, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end, label %tb_port_read.exit.cleanup38_crit_edge

tb_port_read.exit.cleanup38_crit_edge:            ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup38

if.end:                                           ; preds = %tb_port_read.exit
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %tobool4.not = icmp sgt i32 %28, -1
  br i1 %tobool4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  %and.i = lshr i32 %28, 8
  %shr.i = and i32 %and.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr.i)
  %29 = icmp ult i32 %shr.i, 4
  br i1 %29, label %switch.lookup, label %if.then5.tb_dp_cap_get_rate.exit_crit_edge

if.then5.tb_dp_cap_get_rate.exit_crit_edge:       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_cap_get_rate.exit

switch.lookup:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.tb_dp_consumed_bandwidth, i32 0, i32 %shr.i
  %30 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %tb_dp_cap_get_rate.exit

tb_dp_cap_get_rate.exit:                          ; preds = %switch.lookup, %if.then5.tb_dp_cap_get_rate.exit_crit_edge
  %retval.0.i63 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then5.tb_dp_cap_get_rate.exit_crit_edge ]
  %and.i64 = lshr i32 %28, 12
  %shr.i65 = and i32 %and.i64, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i65)
  %31 = icmp ult i32 %shr.i65, 3
  br i1 %31, label %switch.lookup131, label %tb_dp_cap_get_rate.exit.cleanup_crit_edge

tb_dp_cap_get_rate.exit.cleanup_crit_edge:        ; preds = %tb_dp_cap_get_rate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @msleep(i32 noundef 250) #11
  %dec = add nsw i32 %timeout.0, -1
  %tobool9.not = icmp eq i32 %timeout.0, 0
  br i1 %tobool9.not, label %if.end8.if.end24_crit_edge, label %if.end8.do.body_crit_edge

if.end8.do.body_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end8.if.end24_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

switch.lookup131:                                 ; preds = %tb_dp_cap_get_rate.exit
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep132 = getelementptr inbounds [3 x i32], ptr @switch.table.tb_dp_consumed_bandwidth.78, i32 0, i32 %shr.i65
  %32 = ptrtoint ptr %switch.gep132 to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load133 = load i32, ptr %switch.gep132, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup131, %tb_dp_cap_get_rate.exit.cleanup_crit_edge
  %lanes.0 = phi i32 [ %switch.load133, %switch.lookup131 ], [ 0, %tb_dp_cap_get_rate.exit.cleanup_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %tobool10.not.not = icmp eq i32 %timeout.0, 0
  br i1 %tobool10.not.not, label %cleanup.cleanup38_crit_edge, label %cleanup.if.end24_crit_edge

cleanup.if.end24_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

cleanup.cleanup38_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup38

if.else:                                          ; preds = %if.then.i.i.if.else_crit_edge, %lor.rhs.i.if.else_crit_edge
  %generation = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 15
  %33 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %generation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp = icmp ugt i32 %34, 1
  br i1 %cmp, label %if.then13, label %if.else22

if.then13:                                        ; preds = %if.else
  %is_unplugged.i71 = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 20
  %35 = ptrtoint ptr %is_unplugged.i71 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %is_unplugged.i71, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i72 = icmp eq i8 %36, 0
  br i1 %tobool.not.i72, label %tb_port_read.exit86, label %if.then13.cleanup38_crit_edge

if.then13.cleanup38_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup38

tb_port_read.exit86:                              ; preds = %if.then13
  %cap_adap14 = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 6
  %37 = ptrtoint ptr %cap_adap14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cap_adap14, align 4
  %add15 = add i32 %38, 5
  %tb.i73 = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 5
  %39 = ptrtoint ptr %tb.i73 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tb.i73, align 8
  %ctl.i74 = getelementptr inbounds %struct.tb, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %ctl.i74 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctl.i74, align 8
  %43 = lshr i64 %bf.load.i.i, 1
  %shl.i.i77 = and i64 %43, 9223372032559808512
  %route_lo.i.i78 = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 3
  %44 = ptrtoint ptr %route_lo.i.i78 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %route_lo.i.i78, align 8
  %conv2.i.i79 = zext i32 %45 to i64
  %or.i.i80 = or i64 %shl.i.i77, %conv2.i.i79
  %port3.i81 = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 9
  %46 = ptrtoint ptr %port3.i81 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %port3.i81, align 4
  %conv.i82 = zext i8 %47 to i32
  %call4.i83 = call i32 @tb_cfg_read(ptr noundef %42, ptr noundef nonnull %val, i64 noundef %or.i.i80, i32 noundef %conv.i82, i32 noundef 1, i32 noundef %add15, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i83)
  %tobool17.not = icmp eq i32 %call4.i83, 0
  br i1 %tobool17.not, label %if.end19, label %tb_port_read.exit86.cleanup38_crit_edge

tb_port_read.exit86.cleanup38_crit_edge:          ; preds = %tb_port_read.exit86
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup38

if.end19:                                         ; preds = %tb_port_read.exit86
  %48 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val, align 4
  %and.i87 = lshr i32 %49, 8
  %shr.i88 = and i32 %and.i87, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr.i88)
  %50 = icmp ult i32 %shr.i88, 4
  br i1 %50, label %switch.lookup134, label %if.end19.tb_dp_cap_get_rate.exit94_crit_edge

if.end19.tb_dp_cap_get_rate.exit94_crit_edge:     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_cap_get_rate.exit94

switch.lookup134:                                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep135 = getelementptr inbounds [4 x i32], ptr @switch.table.tb_dp_consumed_bandwidth.79, i32 0, i32 %shr.i88
  %51 = ptrtoint ptr %switch.gep135 to i32
  call void @__asan_load4_noabort(i32 %51)
  %switch.load136 = load i32, ptr %switch.gep135, align 4
  br label %tb_dp_cap_get_rate.exit94

tb_dp_cap_get_rate.exit94:                        ; preds = %switch.lookup134, %if.end19.tb_dp_cap_get_rate.exit94_crit_edge
  %retval.0.i93 = phi i32 [ %switch.load136, %switch.lookup134 ], [ 0, %if.end19.tb_dp_cap_get_rate.exit94_crit_edge ]
  %and.i95 = lshr i32 %49, 12
  %shr.i96 = and i32 %and.i95, 7
  %52 = zext i32 %shr.i96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %shr.i96, label %sw.default.i99 [
    i32 0, label %tb_dp_cap_get_rate.exit94.if.end24_crit_edge
    i32 1, label %sw.bb1.i97
    i32 2, label %sw.bb2.i98
  ]

tb_dp_cap_get_rate.exit94.if.end24_crit_edge:     ; preds = %tb_dp_cap_get_rate.exit94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

sw.bb1.i97:                                       ; preds = %tb_dp_cap_get_rate.exit94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

sw.bb2.i98:                                       ; preds = %tb_dp_cap_get_rate.exit94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

sw.default.i99:                                   ; preds = %tb_dp_cap_get_rate.exit94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.else22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %consumed_up to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %consumed_up, align 4
  br label %cleanup38.sink.split

if.end24:                                         ; preds = %sw.default.i99, %sw.bb2.i98, %sw.bb1.i97, %tb_dp_cap_get_rate.exit94.if.end24_crit_edge, %cleanup.if.end24_crit_edge, %if.end8.if.end24_crit_edge
  %rate.2 = phi i32 [ %retval.0.i63, %cleanup.if.end24_crit_edge ], [ %retval.0.i93, %tb_dp_cap_get_rate.exit94.if.end24_crit_edge ], [ %retval.0.i93, %sw.bb1.i97 ], [ %retval.0.i93, %sw.bb2.i98 ], [ %retval.0.i93, %sw.default.i99 ], [ 0, %if.end8.if.end24_crit_edge ]
  %lanes.2 = phi i32 [ %lanes.0, %cleanup.if.end24_crit_edge ], [ 1, %tb_dp_cap_get_rate.exit94.if.end24_crit_edge ], [ 2, %sw.bb1.i97 ], [ 4, %sw.bb2.i98 ], [ 0, %sw.default.i99 ], [ 0, %if.end8.if.end24_crit_edge ]
  %54 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sw1, align 4
  %depth = getelementptr inbounds %struct.tb_switch, ptr %55, i32 0, i32 1, i32 2
  %56 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %56)
  %bf.load = load i32, ptr %depth, align 4
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 7
  %dst_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 2
  %57 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dst_port, align 4
  %sw26 = getelementptr inbounds %struct.tb_port, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %sw26 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sw26, align 4
  %depth28 = getelementptr inbounds %struct.tb_switch, ptr %60, i32 0, i32 1, i32 2
  %61 = ptrtoint ptr %depth28 to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load29 = load i32, ptr %depth28, align 4
  %bf.lshr30 = lshr i32 %bf.load29, 9
  %bf.clear31 = and i32 %bf.lshr30, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %bf.clear31)
  %cmp32 = icmp ult i32 %bf.clear, %bf.clear31
  br i1 %cmp32, label %if.then33, label %if.else35

if.then33:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %consumed_up to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %consumed_up, align 4
  %mul.i = shl nuw nsw i32 %rate.2, 3
  %mul1.i = mul nuw nsw i32 %mul.i, %lanes.2
  %div.i = udiv i32 %mul1.i, 10
  br label %cleanup38.sink.split

if.else35:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i102 = shl nuw nsw i32 %rate.2, 3
  %mul1.i103 = mul nuw nsw i32 %mul.i102, %lanes.2
  %div.i104 = udiv i32 %mul1.i103, 10
  %63 = ptrtoint ptr %consumed_up to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %div.i104, ptr %consumed_up, align 4
  br label %cleanup38.sink.split

cleanup38.sink.split:                             ; preds = %if.else35, %if.then33, %if.else22
  %storemerge.sink = phi i32 [ 0, %if.else22 ], [ 0, %if.else35 ], [ %div.i, %if.then33 ]
  %64 = ptrtoint ptr %consumed_down to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %storemerge.sink, ptr %consumed_down, align 4
  br label %cleanup38

cleanup38:                                        ; preds = %cleanup38.sink.split, %tb_port_read.exit86.cleanup38_crit_edge, %if.then13.cleanup38_crit_edge, %cleanup.cleanup38_crit_edge, %tb_port_read.exit.cleanup38_crit_edge, %do.body.cleanup38_crit_edge
  %retval.1 = phi i32 [ -110, %cleanup.cleanup38_crit_edge ], [ %call4.i83, %tb_port_read.exit86.cleanup38_crit_edge ], [ -19, %if.then13.cleanup38_crit_edge ], [ 0, %cleanup38.sink.split ], [ -19, %do.body.cleanup38_crit_edge ], [ %call4.i, %tb_port_read.exit.cleanup38_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_dp_port_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_dp_init_video_path(ptr nocapture noundef %path) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ingress_shared_buffer = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 2
  %priority = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 6
  %0 = call ptr @memset(ptr %ingress_shared_buffer, i32 0, i32 16)
  %1 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %priority, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.set3 = or i8 %bf.clear, 34
  store i8 %bf.set3, ptr %priority, align 4
  %hops = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 10
  %2 = ptrtoint ptr %hops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hops, align 4
  %path_length = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 11
  %4 = ptrtoint ptr %path_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %path_length, align 4
  %sub26 = add i32 %5, -1
  %arrayidx527 = getelementptr %struct.tb_path_hop, ptr %3, i32 %sub26
  %cmp.not28 = icmp ugt ptr %3, %arrayidx527
  br i1 %cmp.not28, label %entry.cleanup6_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup6

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %hop.029 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %hop.029 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hop.029, align 4
  %sw1.i = getelementptr inbounds %struct.tb_port, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %sw1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sw1.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %for.body.if.else.i_crit_edge, label %land.lhs.true.i.i.i

for.body.if.else.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i.i.i:                              ; preds = %for.body
  %port1.i.i.i = getelementptr inbounds %struct.tb_port, ptr %7, i32 0, i32 9
  %10 = ptrtoint ptr %port1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not.i.i.i = icmp eq i8 %11, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.if.else.i_crit_edge, label %tb_port_is_null.exit.i.i

land.lhs.true.i.i.i.if.else.i_crit_edge:          ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

tb_port_is_null.exit.i.i:                         ; preds = %land.lhs.true.i.i.i
  %type.i.i.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 12)
  %bf.load.i.i.i = load i96, ptr %type.i.i.i, align 4
  %13 = and i96 %bf.load.i.i.i, 18446742974197923840
  %cmp.i.i.i = icmp eq i96 %13, 1099511627776
  br i1 %cmp.i.i.i, label %tb_port_use_credit_allocation.exit.i, label %tb_port_is_null.exit.i.i.if.else.i_crit_edge

tb_port_is_null.exit.i.i.if.else.i_crit_edge:     ; preds = %tb_port_is_null.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

tb_port_use_credit_allocation.exit.i:             ; preds = %tb_port_is_null.exit.i.i
  %credit_allocation.i.i = getelementptr inbounds %struct.tb_switch, ptr %9, i32 0, i32 37
  %14 = ptrtoint ptr %credit_allocation.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %credit_allocation.i.i, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.i.not.i = icmp eq i8 %15, 0
  br i1 %tobool.i.not.i, label %tb_port_use_credit_allocation.exit.i.if.else.i_crit_edge, label %if.then.i

tb_port_use_credit_allocation.exit.i.if.else.i_crit_edge: ; preds = %tb_port_use_credit_allocation.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %tb_port_use_credit_allocation.exit.i
  %max_usb3_credits.i.i = getelementptr inbounds %struct.tb_switch, ptr %9, i32 0, i32 38
  %16 = ptrtoint ptr %max_usb3_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_usb3_credits.i.i, align 4
  %max_pcie_credits.i.i = getelementptr inbounds %struct.tb_switch, ptr %9, i32 0, i32 41
  %18 = ptrtoint ptr %max_pcie_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_pcie_credits.i.i, align 8
  %max_dma_credits.i.i = getelementptr inbounds %struct.tb_switch, ptr %9, i32 0, i32 42
  %20 = ptrtoint ptr %max_dma_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_dma_credits.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i = icmp eq i32 %21, 0
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 14) #11
  %.op.neg.i.i = xor i32 %22, -1
  %add.neg66.i.i = select i1 %cmp.i.i, i32 -15, i32 %.op.neg.i.i
  %total_credits.i.i.i = getelementptr inbounds %struct.tb_port, ptr %7, i32 0, i32 17
  %23 = ptrtoint ptr %total_credits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %total_credits.i.i.i, align 4
  %ctl_credits.i.i.i = getelementptr inbounds %struct.tb_port, ptr %7, i32 0, i32 18
  %25 = ptrtoint ptr %ctl_credits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctl_credits.i.i.i, align 4
  %27 = add i32 %19, %17
  %28 = add i32 %24, %add.neg66.i.i
  %29 = add i32 %27, %26
  %sub.i.i = sub i32 %28, %29
  %min_dp_aux_credits.i.i = getelementptr inbounds %struct.tb_switch, ptr %9, i32 0, i32 39
  %30 = ptrtoint ptr %min_dp_aux_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %min_dp_aux_credits.i.i, align 8
  %min_dp_main_credits.i.i = getelementptr inbounds %struct.tb_switch, ptr %9, i32 0, i32 40
  %32 = ptrtoint ptr %min_dp_main_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %min_dp_main_credits.i.i, align 4
  %add28.i.i = add i32 %33, %31
  %div.i.i = udiv i32 %sub.i.i, %add28.i.i
  %nfc_credits3.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %7, i32 0, i32 3
  %34 = ptrtoint ptr %nfc_credits3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nfc_credits3.i, align 4
  %and.i = and i32 %35, 1023
  %div.i = udiv i32 %and.i, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %div.i.i)
  %cmp.i = icmp ugt i32 %div.i, %div.i.i
  br i1 %cmp.i, label %if.then.i.cleanup6_crit_edge, label %if.then.i.for.inc_crit_edge

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then.i.cleanup6_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup6

if.else.i:                                        ; preds = %tb_port_use_credit_allocation.exit.i.if.else.i_crit_edge, %tb_port_is_null.exit.i.i.if.else.i_crit_edge, %land.lhs.true.i.i.i.if.else.i_crit_edge, %for.body.if.else.i_crit_edge
  %total_credits.i = getelementptr inbounds %struct.tb_port, ptr %7, i32 0, i32 17
  %36 = ptrtoint ptr %total_credits.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %total_credits.i, align 4
  %sub.i = add i32 %37, -2
  %38 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 12) #11
  br label %for.inc

for.inc:                                          ; preds = %if.else.i, %if.then.i.for.inc_crit_edge
  %.sink.i = phi i32 [ %38, %if.else.i ], [ %33, %if.then.i.for.inc_crit_edge ]
  %nfc_credits9.i = getelementptr inbounds %struct.tb_path_hop, ptr %hop.029, i32 0, i32 6
  %39 = ptrtoint ptr %nfc_credits9.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink.i, ptr %nfc_credits9.i, align 4
  %incdec.ptr = getelementptr %struct.tb_path_hop, ptr %hop.029, i32 1
  %40 = ptrtoint ptr %hops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hops, align 4
  %42 = ptrtoint ptr %path_length to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %path_length, align 4
  %sub = add i32 %43, -1
  %arrayidx5 = getelementptr %struct.tb_path_hop, ptr %41, i32 %sub
  %cmp.not = icmp ugt ptr %incdec.ptr, %arrayidx5
  br i1 %cmp.not, label %for.inc.cleanup6_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup6_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup6

cleanup6:                                         ; preds = %for.inc.cleanup6_crit_edge, %if.then.i.cleanup6_crit_edge, %entry.cleanup6_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup6_crit_edge ], [ -28, %if.then.i.cleanup6_crit_edge ], [ 0, %for.inc.cleanup6_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_dp_port_hpd_is_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tb_tunnel_alloc_dp(ptr noundef %tb, ptr noundef %in, ptr noundef %out, i32 noundef %max_up, i32 noundef %max_down) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cap_adap = getelementptr inbounds %struct.tb_port, ptr %in, i32 0, i32 6
  %0 = ptrtoint ptr %cap_adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cap_adap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %cap_adap1 = getelementptr inbounds %struct.tb_port, ptr %out, i32 0, i32 6
  %2 = ptrtoint ptr %cap_adap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cap_adap1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %lor.rhs.do.end_crit_edge, label %if.end25, !prof !169

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 869, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end25:                                         ; preds = %lor.rhs
  %call = tail call fastcc ptr @tb_tunnel_alloc(ptr noundef %tb, i32 noundef 3, i32 noundef 1)
  %tobool26.not = icmp eq ptr %call, null
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %if.end28

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end25
  %init = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tb_dp_xchg_caps, ptr %init, align 4
  %activate = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 7
  %5 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tb_dp_activate, ptr %activate, align 4
  %consumed_bandwidth = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 8
  %6 = ptrtoint ptr %consumed_bandwidth to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tb_dp_consumed_bandwidth, ptr %consumed_bandwidth, align 4
  %src_port = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %src_port to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %in, ptr %src_port, align 4
  %dst_port = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %dst_port to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %out, ptr %dst_port, align 4
  %max_up29 = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 13
  %9 = ptrtoint ptr %max_up29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %max_up, ptr %max_up29, align 4
  %max_down30 = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 14
  %10 = ptrtoint ptr %max_down30 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %max_down, ptr %max_down30, align 4
  %paths31 = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 3
  %11 = ptrtoint ptr %paths31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %paths31, align 4
  %call32 = tail call ptr @tb_path_alloc(ptr noundef %tb, ptr noundef %in, i32 noundef 9, ptr noundef %out, i32 noundef 9, i32 noundef 1, ptr noundef nonnull @.str.15) #11
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end28.if.end.i_crit_edge, label %if.end35

if.end28.if.end.i_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end35:                                         ; preds = %if.end28
  %call36 = tail call fastcc i32 @tb_dp_init_video_path(ptr noundef nonnull %call32)
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call32, ptr %12, align 4
  %call37 = tail call ptr @tb_path_alloc(ptr noundef %tb, ptr noundef %in, i32 noundef 8, ptr noundef %out, i32 noundef 8, i32 noundef 1, ptr noundef nonnull @.str.16) #11
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end35.if.end.i_crit_edge, label %if.end40

if.end35.if.end.i_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end40:                                         ; preds = %if.end35
  %egress_fc_enable.i = getelementptr inbounds %struct.tb_path, ptr %call37, i32 0, i32 5
  %14 = ptrtoint ptr %egress_fc_enable.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %egress_fc_enable.i, align 4
  %egress_shared_buffer.i = getelementptr inbounds %struct.tb_path, ptr %call37, i32 0, i32 3
  %15 = ptrtoint ptr %egress_shared_buffer.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %egress_shared_buffer.i, align 4
  %ingress_fc_enable.i = getelementptr inbounds %struct.tb_path, ptr %call37, i32 0, i32 4
  %16 = ptrtoint ptr %ingress_fc_enable.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 7, ptr %ingress_fc_enable.i, align 4
  %ingress_shared_buffer.i = getelementptr inbounds %struct.tb_path, ptr %call37, i32 0, i32 2
  %17 = ptrtoint ptr %ingress_shared_buffer.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %ingress_shared_buffer.i, align 4
  %priority.i = getelementptr inbounds %struct.tb_path, ptr %call37, i32 0, i32 6
  %18 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %priority.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 1
  %bf.set3.i = or i8 %bf.clear.i, 66
  store i8 %bf.set3.i, ptr %priority.i, align 4
  %hops.i = getelementptr inbounds %struct.tb_path, ptr %call37, i32 0, i32 10
  %19 = ptrtoint ptr %hops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hops.i, align 4
  %path_length.i = getelementptr inbounds %struct.tb_path, ptr %call37, i32 0, i32 11
  %21 = ptrtoint ptr %path_length.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %path_length.i, align 4
  %sub16.i = add i32 %22, -1
  %arrayidx517.i = getelementptr %struct.tb_path_hop, ptr %20, i32 %sub16.i
  %cmp.not18.i = icmp ugt ptr %20, %arrayidx517.i
  br i1 %cmp.not18.i, label %if.end40.tb_dp_init_aux_path.exit_crit_edge, label %if.end40.for.body.i_crit_edge

if.end40.for.body.i_crit_edge:                    ; preds = %if.end40
  br label %for.body.i

if.end40.tb_dp_init_aux_path.exit_crit_edge:      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_path.exit

for.body.i:                                       ; preds = %tb_dp_init_aux_credits.exit.i.for.body.i_crit_edge, %if.end40.for.body.i_crit_edge
  %hop.019.i = phi ptr [ %incdec.ptr.i, %tb_dp_init_aux_credits.exit.i.for.body.i_crit_edge ], [ %20, %if.end40.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %hop.019.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hop.019.i, align 4
  %sw1.i.i = getelementptr inbounds %struct.tb_port, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %sw1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sw1.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.i.i, label %for.body.i.tb_dp_init_aux_credits.exit.i_crit_edge, label %land.lhs.true.i.i.i.i

for.body.i.tb_dp_init_aux_credits.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_credits.exit.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i
  %port1.i.i.i.i = getelementptr inbounds %struct.tb_port, ptr %24, i32 0, i32 9
  %27 = ptrtoint ptr %port1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %port1.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool2.not.i.i.i.i = icmp eq i8 %28, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.tb_dp_init_aux_credits.exit.i_crit_edge, label %tb_port_is_null.exit.i.i.i

land.lhs.true.i.i.i.i.tb_dp_init_aux_credits.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_credits.exit.i

tb_port_is_null.exit.i.i.i:                       ; preds = %land.lhs.true.i.i.i.i
  %type.i.i.i.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %24, i32 0, i32 2
  %29 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 12)
  %bf.load.i.i.i.i = load i96, ptr %type.i.i.i.i, align 4
  %30 = and i96 %bf.load.i.i.i.i, 18446742974197923840
  %cmp.i.i.i.i = icmp eq i96 %30, 1099511627776
  br i1 %cmp.i.i.i.i, label %tb_port_use_credit_allocation.exit.i.i, label %tb_port_is_null.exit.i.i.i.tb_dp_init_aux_credits.exit.i_crit_edge

tb_port_is_null.exit.i.i.i.tb_dp_init_aux_credits.exit.i_crit_edge: ; preds = %tb_port_is_null.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_credits.exit.i

tb_port_use_credit_allocation.exit.i.i:           ; preds = %tb_port_is_null.exit.i.i.i
  %credit_allocation.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %26, i32 0, i32 37
  %31 = ptrtoint ptr %credit_allocation.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %credit_allocation.i.i.i, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.i.not.i.i = icmp eq i8 %32, 0
  br i1 %tobool.i.not.i.i, label %tb_port_use_credit_allocation.exit.i.i.tb_dp_init_aux_credits.exit.i_crit_edge, label %if.then.i.i

tb_port_use_credit_allocation.exit.i.i.tb_dp_init_aux_credits.exit.i_crit_edge: ; preds = %tb_port_use_credit_allocation.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_credits.exit.i

if.then.i.i:                                      ; preds = %tb_port_use_credit_allocation.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %min_dp_aux_credits.i.i = getelementptr inbounds %struct.tb_switch, ptr %26, i32 0, i32 39
  %33 = ptrtoint ptr %min_dp_aux_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %min_dp_aux_credits.i.i, align 8
  br label %tb_dp_init_aux_credits.exit.i

tb_dp_init_aux_credits.exit.i:                    ; preds = %if.then.i.i, %tb_port_use_credit_allocation.exit.i.i.tb_dp_init_aux_credits.exit.i_crit_edge, %tb_port_is_null.exit.i.i.i.tb_dp_init_aux_credits.exit.i_crit_edge, %land.lhs.true.i.i.i.i.tb_dp_init_aux_credits.exit.i_crit_edge, %for.body.i.tb_dp_init_aux_credits.exit.i_crit_edge
  %.sink.i.i = phi i32 [ %34, %if.then.i.i ], [ 1, %for.body.i.tb_dp_init_aux_credits.exit.i_crit_edge ], [ 1, %land.lhs.true.i.i.i.i.tb_dp_init_aux_credits.exit.i_crit_edge ], [ 1, %tb_port_is_null.exit.i.i.i.tb_dp_init_aux_credits.exit.i_crit_edge ], [ 1, %tb_port_use_credit_allocation.exit.i.i.tb_dp_init_aux_credits.exit.i_crit_edge ]
  %initial_credits2.i.i = getelementptr inbounds %struct.tb_path_hop, ptr %hop.019.i, i32 0, i32 5
  %35 = ptrtoint ptr %initial_credits2.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink.i.i, ptr %initial_credits2.i.i, align 4
  %incdec.ptr.i = getelementptr %struct.tb_path_hop, ptr %hop.019.i, i32 1
  %36 = ptrtoint ptr %hops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hops.i, align 4
  %38 = ptrtoint ptr %path_length.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %path_length.i, align 4
  %sub.i = add i32 %39, -1
  %arrayidx5.i = getelementptr %struct.tb_path_hop, ptr %37, i32 %sub.i
  %cmp.not.i = icmp ugt ptr %incdec.ptr.i, %arrayidx5.i
  br i1 %cmp.not.i, label %tb_dp_init_aux_credits.exit.i.tb_dp_init_aux_path.exit_crit_edge, label %tb_dp_init_aux_credits.exit.i.for.body.i_crit_edge

tb_dp_init_aux_credits.exit.i.for.body.i_crit_edge: ; preds = %tb_dp_init_aux_credits.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

tb_dp_init_aux_credits.exit.i.tb_dp_init_aux_path.exit_crit_edge: ; preds = %tb_dp_init_aux_credits.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_path.exit

tb_dp_init_aux_path.exit:                         ; preds = %tb_dp_init_aux_credits.exit.i.tb_dp_init_aux_path.exit_crit_edge, %if.end40.tb_dp_init_aux_path.exit_crit_edge
  %arrayidx41 = getelementptr ptr, ptr %12, i32 1
  %40 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call37, ptr %arrayidx41, align 4
  %call42 = tail call ptr @tb_path_alloc(ptr noundef %tb, ptr noundef %out, i32 noundef 8, ptr noundef %in, i32 noundef 8, i32 noundef 1, ptr noundef nonnull @.str.17) #11
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %tb_dp_init_aux_path.exit.if.end.i_crit_edge, label %if.end45

tb_dp_init_aux_path.exit.if.end.i_crit_edge:      ; preds = %tb_dp_init_aux_path.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end45:                                         ; preds = %tb_dp_init_aux_path.exit
  %egress_fc_enable.i81 = getelementptr inbounds %struct.tb_path, ptr %call42, i32 0, i32 5
  %41 = ptrtoint ptr %egress_fc_enable.i81 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %egress_fc_enable.i81, align 4
  %egress_shared_buffer.i82 = getelementptr inbounds %struct.tb_path, ptr %call42, i32 0, i32 3
  %42 = ptrtoint ptr %egress_shared_buffer.i82 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %egress_shared_buffer.i82, align 4
  %ingress_fc_enable.i83 = getelementptr inbounds %struct.tb_path, ptr %call42, i32 0, i32 4
  %43 = ptrtoint ptr %ingress_fc_enable.i83 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 7, ptr %ingress_fc_enable.i83, align 4
  %ingress_shared_buffer.i84 = getelementptr inbounds %struct.tb_path, ptr %call42, i32 0, i32 2
  %44 = ptrtoint ptr %ingress_shared_buffer.i84 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %ingress_shared_buffer.i84, align 4
  %priority.i85 = getelementptr inbounds %struct.tb_path, ptr %call42, i32 0, i32 6
  %45 = ptrtoint ptr %priority.i85 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i86 = load i8, ptr %priority.i85, align 4
  %bf.clear.i87 = and i8 %bf.load.i86, 1
  %bf.set3.i88 = or i8 %bf.clear.i87, 66
  store i8 %bf.set3.i88, ptr %priority.i85, align 4
  %hops.i89 = getelementptr inbounds %struct.tb_path, ptr %call42, i32 0, i32 10
  %46 = ptrtoint ptr %hops.i89 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hops.i89, align 4
  %path_length.i90 = getelementptr inbounds %struct.tb_path, ptr %call42, i32 0, i32 11
  %48 = ptrtoint ptr %path_length.i90 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %path_length.i90, align 4
  %sub16.i91 = add i32 %49, -1
  %arrayidx517.i92 = getelementptr %struct.tb_path_hop, ptr %47, i32 %sub16.i91
  %cmp.not18.i93 = icmp ugt ptr %47, %arrayidx517.i92
  br i1 %cmp.not18.i93, label %if.end45.tb_dp_init_aux_path.exit117_crit_edge, label %if.end45.for.body.i97_crit_edge

if.end45.for.body.i97_crit_edge:                  ; preds = %if.end45
  br label %for.body.i97

if.end45.tb_dp_init_aux_path.exit117_crit_edge:   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_path.exit117

for.body.i97:                                     ; preds = %tb_dp_init_aux_credits.exit.i116.for.body.i97_crit_edge, %if.end45.for.body.i97_crit_edge
  %hop.019.i94 = phi ptr [ %incdec.ptr.i112, %tb_dp_init_aux_credits.exit.i116.for.body.i97_crit_edge ], [ %47, %if.end45.for.body.i97_crit_edge ]
  %50 = ptrtoint ptr %hop.019.i94 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hop.019.i94, align 4
  %sw1.i.i95 = getelementptr inbounds %struct.tb_port, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %sw1.i.i95 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sw1.i.i95, align 4
  %tobool.not.i.i.i.i96 = icmp eq ptr %51, null
  br i1 %tobool.not.i.i.i.i96, label %for.body.i97.tb_dp_init_aux_credits.exit.i116_crit_edge, label %land.lhs.true.i.i.i.i100

for.body.i97.tb_dp_init_aux_credits.exit.i116_crit_edge: ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_credits.exit.i116

land.lhs.true.i.i.i.i100:                         ; preds = %for.body.i97
  %port1.i.i.i.i98 = getelementptr inbounds %struct.tb_port, ptr %51, i32 0, i32 9
  %54 = ptrtoint ptr %port1.i.i.i.i98 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %port1.i.i.i.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool2.not.i.i.i.i99 = icmp eq i8 %55, 0
  br i1 %tobool2.not.i.i.i.i99, label %land.lhs.true.i.i.i.i100.tb_dp_init_aux_credits.exit.i116_crit_edge, label %tb_port_is_null.exit.i.i.i104

land.lhs.true.i.i.i.i100.tb_dp_init_aux_credits.exit.i116_crit_edge: ; preds = %land.lhs.true.i.i.i.i100
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_credits.exit.i116

tb_port_is_null.exit.i.i.i104:                    ; preds = %land.lhs.true.i.i.i.i100
  %type.i.i.i.i101 = getelementptr inbounds %struct.tb_regs_port_header, ptr %51, i32 0, i32 2
  %56 = ptrtoint ptr %type.i.i.i.i101 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 12)
  %bf.load.i.i.i.i102 = load i96, ptr %type.i.i.i.i101, align 4
  %57 = and i96 %bf.load.i.i.i.i102, 18446742974197923840
  %cmp.i.i.i.i103 = icmp eq i96 %57, 1099511627776
  br i1 %cmp.i.i.i.i103, label %tb_port_use_credit_allocation.exit.i.i107, label %tb_port_is_null.exit.i.i.i104.tb_dp_init_aux_credits.exit.i116_crit_edge

tb_port_is_null.exit.i.i.i104.tb_dp_init_aux_credits.exit.i116_crit_edge: ; preds = %tb_port_is_null.exit.i.i.i104
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_credits.exit.i116

tb_port_use_credit_allocation.exit.i.i107:        ; preds = %tb_port_is_null.exit.i.i.i104
  %credit_allocation.i.i.i105 = getelementptr inbounds %struct.tb_switch, ptr %53, i32 0, i32 37
  %58 = ptrtoint ptr %credit_allocation.i.i.i105 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %credit_allocation.i.i.i105, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.i.not.i.i106 = icmp eq i8 %59, 0
  br i1 %tobool.i.not.i.i106, label %tb_port_use_credit_allocation.exit.i.i107.tb_dp_init_aux_credits.exit.i116_crit_edge, label %if.then.i.i109

tb_port_use_credit_allocation.exit.i.i107.tb_dp_init_aux_credits.exit.i116_crit_edge: ; preds = %tb_port_use_credit_allocation.exit.i.i107
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_credits.exit.i116

if.then.i.i109:                                   ; preds = %tb_port_use_credit_allocation.exit.i.i107
  call void @__sanitizer_cov_trace_pc() #13
  %min_dp_aux_credits.i.i108 = getelementptr inbounds %struct.tb_switch, ptr %53, i32 0, i32 39
  %60 = ptrtoint ptr %min_dp_aux_credits.i.i108 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %min_dp_aux_credits.i.i108, align 8
  br label %tb_dp_init_aux_credits.exit.i116

tb_dp_init_aux_credits.exit.i116:                 ; preds = %if.then.i.i109, %tb_port_use_credit_allocation.exit.i.i107.tb_dp_init_aux_credits.exit.i116_crit_edge, %tb_port_is_null.exit.i.i.i104.tb_dp_init_aux_credits.exit.i116_crit_edge, %land.lhs.true.i.i.i.i100.tb_dp_init_aux_credits.exit.i116_crit_edge, %for.body.i97.tb_dp_init_aux_credits.exit.i116_crit_edge
  %.sink.i.i110 = phi i32 [ %61, %if.then.i.i109 ], [ 1, %for.body.i97.tb_dp_init_aux_credits.exit.i116_crit_edge ], [ 1, %land.lhs.true.i.i.i.i100.tb_dp_init_aux_credits.exit.i116_crit_edge ], [ 1, %tb_port_is_null.exit.i.i.i104.tb_dp_init_aux_credits.exit.i116_crit_edge ], [ 1, %tb_port_use_credit_allocation.exit.i.i107.tb_dp_init_aux_credits.exit.i116_crit_edge ]
  %initial_credits2.i.i111 = getelementptr inbounds %struct.tb_path_hop, ptr %hop.019.i94, i32 0, i32 5
  %62 = ptrtoint ptr %initial_credits2.i.i111 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %.sink.i.i110, ptr %initial_credits2.i.i111, align 4
  %incdec.ptr.i112 = getelementptr %struct.tb_path_hop, ptr %hop.019.i94, i32 1
  %63 = ptrtoint ptr %hops.i89 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hops.i89, align 4
  %65 = ptrtoint ptr %path_length.i90 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %path_length.i90, align 4
  %sub.i113 = add i32 %66, -1
  %arrayidx5.i114 = getelementptr %struct.tb_path_hop, ptr %64, i32 %sub.i113
  %cmp.not.i115 = icmp ugt ptr %incdec.ptr.i112, %arrayidx5.i114
  br i1 %cmp.not.i115, label %tb_dp_init_aux_credits.exit.i116.tb_dp_init_aux_path.exit117_crit_edge, label %tb_dp_init_aux_credits.exit.i116.for.body.i97_crit_edge

tb_dp_init_aux_credits.exit.i116.for.body.i97_crit_edge: ; preds = %tb_dp_init_aux_credits.exit.i116
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i97

tb_dp_init_aux_credits.exit.i116.tb_dp_init_aux_path.exit117_crit_edge: ; preds = %tb_dp_init_aux_credits.exit.i116
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dp_init_aux_path.exit117

tb_dp_init_aux_path.exit117:                      ; preds = %tb_dp_init_aux_credits.exit.i116.tb_dp_init_aux_path.exit117_crit_edge, %if.end45.tb_dp_init_aux_path.exit117_crit_edge
  %arrayidx46 = getelementptr ptr, ptr %12, i32 2
  %67 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call42, ptr %arrayidx46, align 4
  br label %cleanup

if.end.i:                                         ; preds = %tb_dp_init_aux_path.exit.if.end.i_crit_edge, %if.end35.if.end.i_crit_edge, %if.end28.if.end.i_crit_edge
  %deinit.i = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 6
  %68 = ptrtoint ptr %deinit.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %deinit.i, align 4
  %tobool1.not.i = icmp eq ptr %69, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %69(ptr noundef nonnull %call) #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %npaths.i = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 4
  %70 = ptrtoint ptr %npaths.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %npaths.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp23.not.i = icmp eq i32 %71, 0
  br i1 %cmp23.not.i, label %if.end4.i.tb_tunnel_free.exit_crit_edge, label %if.end4.i.for.body.i118_crit_edge

if.end4.i.for.body.i118_crit_edge:                ; preds = %if.end4.i
  br label %for.body.i118

if.end4.i.tb_tunnel_free.exit_crit_edge:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_free.exit

for.body.i118:                                    ; preds = %for.inc.i.for.body.i118_crit_edge, %if.end4.i.for.body.i118_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.inc.i.for.body.i118_crit_edge ], [ 0, %if.end4.i.for.body.i118_crit_edge ]
  %72 = ptrtoint ptr %paths31 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %paths31, align 4
  %arrayidx.i = getelementptr ptr, ptr %73, i32 %i.024.i
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not.i = icmp eq ptr %75, null
  br i1 %tobool5.not.i, label %for.body.i118.for.inc.i_crit_edge, label %if.then6.i

for.body.i118.for.inc.i_crit_edge:                ; preds = %for.body.i118
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i118
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tb_path_free(ptr noundef nonnull %75) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %for.body.i118.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.024.i, 1
  %76 = ptrtoint ptr %npaths.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %npaths.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %77
  br i1 %cmp.i, label %for.inc.i.for.body.i118_crit_edge, label %for.inc.i.tb_tunnel_free.exit_crit_edge

for.inc.i.tb_tunnel_free.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_free.exit

for.inc.i.for.body.i118_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i118

tb_tunnel_free.exit:                              ; preds = %for.inc.i.tb_tunnel_free.exit_crit_edge, %if.end4.i.tb_tunnel_free.exit_crit_edge
  %78 = ptrtoint ptr %paths31 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %paths31, align 4
  tail call void @kfree(ptr noundef %79) #11
  tail call void @kfree(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %tb_tunnel_free.exit, %tb_dp_init_aux_path.exit117, %if.end25.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call, %tb_dp_init_aux_path.exit117 ], [ null, %tb_tunnel_free.exit ], [ null, %if.end25.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tb_tunnel_alloc_dma(ptr noundef %tb, ptr noundef %nhi, ptr noundef %dst, i32 noundef %transmit_path, i32 noundef %transmit_ring, i32 noundef %receive_path, i32 noundef %receive_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %receive_ring)
  %cmp = icmp sgt i32 %receive_ring, 0
  %spec.select = zext i1 %cmp to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %transmit_ring)
  %cmp1 = icmp sgt i32 %transmit_ring, 0
  %inc3 = select i1 %cmp, i32 2, i32 1
  %npaths.1 = select i1 %cmp1, i32 %inc3, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npaths.1)
  %tobool.not = icmp eq i32 %npaths.1, 0
  br i1 %tobool.not, label %do.end, label %if.end29, !prof !169

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1078, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end29:                                         ; preds = %entry
  %call = tail call fastcc ptr @tb_tunnel_alloc(ptr noundef %tb, i32 noundef %npaths.1, i32 noundef 2)
  %tobool30.not = icmp eq ptr %call, null
  br i1 %tobool30.not, label %if.end29.cleanup_crit_edge, label %if.end32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  %src_port = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %src_port to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %nhi, ptr %src_port, align 4
  %dst_port = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %dst_port to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dst, ptr %dst_port, align 4
  %deinit = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %deinit to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @tb_dma_deinit, ptr %deinit, align 4
  %sw = getelementptr inbounds %struct.tb_port, ptr %nhi, i32 0, i32 1
  %3 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sw, align 4
  %max_dma_credits = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 42
  %5 = ptrtoint ptr %max_dma_credits to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_dma_credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp35 = icmp eq i32 %6, 0
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 14)
  %cond45 = select i1 %cmp35, i32 14, i32 %7
  br i1 %cmp, label %if.then47, label %if.end32.if.end87_crit_edge

if.end32.if.end87_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then47:                                        ; preds = %if.end32
  %call48 = tail call ptr @tb_path_alloc(ptr noundef %tb, ptr noundef %dst, i32 noundef %receive_path, ptr noundef %nhi, i32 noundef %receive_ring, i32 noundef 0, ptr noundef nonnull @.str.22) #11
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.then47.if.end.i_crit_edge, label %if.end51

if.then47.if.end.i_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end51:                                         ; preds = %if.then47
  %paths = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %paths, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call48, ptr %9, align 4
  %egress_fc_enable.i = getelementptr inbounds %struct.tb_path, ptr %call48, i32 0, i32 5
  %11 = ptrtoint ptr %egress_fc_enable.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %egress_fc_enable.i, align 4
  %ingress_fc_enable.i = getelementptr inbounds %struct.tb_path, ptr %call48, i32 0, i32 4
  %12 = ptrtoint ptr %ingress_fc_enable.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 7, ptr %ingress_fc_enable.i, align 4
  %egress_shared_buffer.i = getelementptr inbounds %struct.tb_path, ptr %call48, i32 0, i32 3
  %13 = ptrtoint ptr %egress_shared_buffer.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %egress_shared_buffer.i, align 4
  %ingress_shared_buffer.i = getelementptr inbounds %struct.tb_path, ptr %call48, i32 0, i32 2
  %14 = ptrtoint ptr %ingress_shared_buffer.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %ingress_shared_buffer.i, align 4
  %priority.i = getelementptr inbounds %struct.tb_path, ptr %call48, i32 0, i32 6
  %15 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %priority.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 1
  %bf.set3.i = or i8 %bf.clear.i, -94
  store i8 %bf.set3.i, ptr %priority.i, align 4
  %clear_fc.i = getelementptr inbounds %struct.tb_path, ptr %call48, i32 0, i32 9
  %16 = ptrtoint ptr %clear_fc.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %clear_fc.i, align 1
  %hops.i = getelementptr inbounds %struct.tb_path, ptr %call48, i32 0, i32 10
  %17 = ptrtoint ptr %hops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hops.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %total_credits.i.i = getelementptr inbounds %struct.tb_port, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %total_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %total_credits.i.i, align 4
  %ctl_credits.i.i = getelementptr inbounds %struct.tb_port, ptr %20, i32 0, i32 18
  %23 = ptrtoint ptr %ctl_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ctl_credits.i.i, align 4
  %sub.i.i = sub i32 %22, %24
  %25 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %cond45) #11
  %initial_credits.i = getelementptr inbounds %struct.tb_path_hop, ptr %18, i32 0, i32 5
  %26 = ptrtoint ptr %initial_credits.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %initial_credits.i, align 4
  %dma_credits.i = getelementptr inbounds %struct.tb_port, ptr %20, i32 0, i32 19
  %27 = ptrtoint ptr %dma_credits.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_credits.i, align 4
  %add.i = add i32 %28, %25
  store i32 %add.i, ptr %dma_credits.i, align 4
  %path_length.i = getelementptr inbounds %struct.tb_path, ptr %call48, i32 0, i32 11
  %29 = ptrtoint ptr %path_length.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %path_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp632.i = icmp ugt i32 %30, 1
  br i1 %cmp632.i, label %if.end51.for.body.i_crit_edge, label %if.end51.if.end87_crit_edge

if.end51.if.end87_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.end51.for.body.i_crit_edge:                    ; preds = %if.end51
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.033.i, 1
  %31 = ptrtoint ptr %path_length.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %path_length.i, align 4
  %cmp6.i = icmp ult i32 %inc.i, %32
  br i1 %cmp6.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end87_crit_edge

for.cond.i.if.end87_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end51.for.body.i_crit_edge
  %i.033.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 1, %if.end51.for.body.i_crit_edge ]
  %33 = ptrtoint ptr %hops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hops.i, align 4
  %arrayidx8.i = getelementptr %struct.tb_path_hop, ptr %34, i32 %i.033.i
  %call9.i = tail call fastcc i32 @tb_dma_reserve_credits(ptr noundef %arrayidx8.i, i32 noundef %cond45) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %do.body56

do.body56:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_tunnel_alloc_dma.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_tunnel_alloc_dma, %if.then67)) #11
          to label %if.end.i [label %if.then67], !srcloc !168

if.then67:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call, align 4
  %nhi69 = getelementptr inbounds %struct.tb, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %nhi69 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nhi69, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %41 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %src_port, align 4
  %sw71 = getelementptr inbounds %struct.tb_port, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %sw71 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sw71, align 4
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %44, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %bf.load.i195 = load i64, ptr %route_hi.i, align 4
  %46 = lshr i64 %bf.load.i195, 1
  %shl.i = and i64 %46, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %44, i32 0, i32 1, i32 3
  %47 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %48 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port = getelementptr inbounds %struct.tb_port, ptr %42, i32 0, i32 9
  %49 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %port, align 4
  %conv = zext i8 %50 to i32
  %51 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dst_port, align 4
  %sw75 = getelementptr inbounds %struct.tb_port, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %sw75 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sw75, align 4
  %route_hi.i196 = getelementptr inbounds %struct.tb_switch, ptr %54, i32 0, i32 1, i32 4
  %55 = ptrtoint ptr %route_hi.i196 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %bf.load.i197 = load i64, ptr %route_hi.i196, align 4
  %56 = lshr i64 %bf.load.i197, 1
  %shl.i198 = and i64 %56, 9223372032559808512
  %route_lo.i199 = getelementptr inbounds %struct.tb_switch, ptr %54, i32 0, i32 1, i32 3
  %57 = ptrtoint ptr %route_lo.i199 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %route_lo.i199, align 8
  %conv2.i200 = zext i32 %58 to i64
  %or.i201 = or i64 %shl.i198, %conv2.i200
  %port78 = getelementptr inbounds %struct.tb_port, ptr %52, i32 0, i32 9
  %59 = ptrtoint ptr %port78 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %port78, align 4
  %conv79 = zext i8 %60 to i32
  %type = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 12
  %61 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %type, align 4
  %arrayidx80 = getelementptr [4 x ptr], ptr @tb_tunnel_names, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx80, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_tunnel_alloc_dma.__UNIQUE_ID_ddebug257, ptr noundef %dev, ptr noundef nonnull @.str.24, i64 noundef %or.i, i32 noundef %conv, i64 noundef %or.i201, i32 noundef %conv79, ptr noundef %64) #11
  br label %if.end.i

if.end87:                                         ; preds = %for.cond.i.if.end87_crit_edge, %if.end51.if.end87_crit_edge, %if.end32.if.end87_crit_edge
  %i.0 = phi i32 [ 0, %if.end32.if.end87_crit_edge ], [ 1, %if.end51.if.end87_crit_edge ], [ 1, %for.cond.i.if.end87_crit_edge ]
  br i1 %cmp1, label %if.then90, label %if.end87.cleanup_crit_edge

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then90:                                        ; preds = %if.end87
  %call91 = tail call ptr @tb_path_alloc(ptr noundef %tb, ptr noundef %nhi, i32 noundef %transmit_ring, ptr noundef %dst, i32 noundef %transmit_path, i32 noundef 0, ptr noundef nonnull @.str.25) #11
  %tobool92.not = icmp eq ptr %call91, null
  br i1 %tobool92.not, label %if.then90.if.end.i_crit_edge, label %if.end94

if.then90.if.end.i_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end94:                                         ; preds = %if.then90
  %paths95 = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 3
  %65 = ptrtoint ptr %paths95 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %paths95, align 4
  %arrayidx97 = getelementptr ptr, ptr %66, i32 %i.0
  %67 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call91, ptr %arrayidx97, align 4
  %egress_fc_enable.i202 = getelementptr inbounds %struct.tb_path, ptr %call91, i32 0, i32 5
  %68 = ptrtoint ptr %egress_fc_enable.i202 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 7, ptr %egress_fc_enable.i202, align 4
  %ingress_fc_enable.i203 = getelementptr inbounds %struct.tb_path, ptr %call91, i32 0, i32 4
  %69 = ptrtoint ptr %ingress_fc_enable.i203 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 7, ptr %ingress_fc_enable.i203, align 4
  %egress_shared_buffer.i204 = getelementptr inbounds %struct.tb_path, ptr %call91, i32 0, i32 3
  %70 = ptrtoint ptr %egress_shared_buffer.i204 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %egress_shared_buffer.i204, align 4
  %ingress_shared_buffer.i205 = getelementptr inbounds %struct.tb_path, ptr %call91, i32 0, i32 2
  %71 = ptrtoint ptr %ingress_shared_buffer.i205 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %ingress_shared_buffer.i205, align 4
  %priority.i206 = getelementptr inbounds %struct.tb_path, ptr %call91, i32 0, i32 6
  %72 = ptrtoint ptr %priority.i206 to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load.i207 = load i8, ptr %priority.i206, align 4
  %bf.clear.i208 = and i8 %bf.load.i207, 1
  %bf.set3.i209 = or i8 %bf.clear.i208, -94
  store i8 %bf.set3.i209, ptr %priority.i206, align 4
  %clear_fc.i210 = getelementptr inbounds %struct.tb_path, ptr %call91, i32 0, i32 9
  %73 = ptrtoint ptr %clear_fc.i210 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %clear_fc.i210, align 1
  %hops.i211 = getelementptr inbounds %struct.tb_path, ptr %call91, i32 0, i32 10
  %74 = ptrtoint ptr %hops.i211 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hops.i211, align 4
  %path_length.i212 = getelementptr inbounds %struct.tb_path, ptr %call91, i32 0, i32 11
  %76 = ptrtoint ptr %path_length.i212 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %path_length.i212, align 4
  %sub19.i = add i32 %77, -1
  %arrayidx520.i = getelementptr %struct.tb_path_hop, ptr %75, i32 %sub19.i
  %cmp.not21.i = icmp ugt ptr %75, %arrayidx520.i
  br i1 %cmp.not21.i, label %if.end94.cleanup_crit_edge, label %if.end94.for.body.i215_crit_edge

if.end94.for.body.i215_crit_edge:                 ; preds = %if.end94
  br label %for.body.i215

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.i213:                                    ; preds = %for.body.i215
  %incdec.ptr.i = getelementptr %struct.tb_path_hop, ptr %hop.022.i, i32 1
  %78 = ptrtoint ptr %hops.i211 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hops.i211, align 4
  %80 = ptrtoint ptr %path_length.i212 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %path_length.i212, align 4
  %sub.i = add i32 %81, -1
  %arrayidx5.i = getelementptr %struct.tb_path_hop, ptr %79, i32 %sub.i
  %cmp.not.i = icmp ugt ptr %incdec.ptr.i, %arrayidx5.i
  br i1 %cmp.not.i, label %for.cond.i213.cleanup_crit_edge, label %for.cond.i213.for.body.i215_crit_edge

for.cond.i213.for.body.i215_crit_edge:            ; preds = %for.cond.i213
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i215

for.cond.i213.cleanup_crit_edge:                  ; preds = %for.cond.i213
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i215:                                    ; preds = %for.cond.i213.for.body.i215_crit_edge, %if.end94.for.body.i215_crit_edge
  %hop.022.i = phi ptr [ %incdec.ptr.i, %for.cond.i213.for.body.i215_crit_edge ], [ %75, %if.end94.for.body.i215_crit_edge ]
  %call.i = tail call fastcc i32 @tb_dma_reserve_credits(ptr noundef %hop.022.i, i32 noundef %cond45) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i214 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i214, label %for.cond.i213, label %do.body101

do.body101:                                       ; preds = %for.body.i215
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_tunnel_alloc_dma.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_tunnel_alloc_dma, %if.then115)) #11
          to label %if.end.i [label %if.then115], !srcloc !168

if.then115:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call, align 4
  %nhi117 = getelementptr inbounds %struct.tb, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %nhi117 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %nhi117, align 4
  %pdev118 = getelementptr inbounds %struct.tb_nhi, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %pdev118 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdev118, align 4
  %dev119 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %88 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %src_port, align 4
  %sw121 = getelementptr inbounds %struct.tb_port, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %sw121 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sw121, align 4
  %route_hi.i217 = getelementptr inbounds %struct.tb_switch, ptr %91, i32 0, i32 1, i32 4
  %92 = ptrtoint ptr %route_hi.i217 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 8)
  %bf.load.i218 = load i64, ptr %route_hi.i217, align 4
  %93 = lshr i64 %bf.load.i218, 1
  %shl.i219 = and i64 %93, 9223372032559808512
  %route_lo.i220 = getelementptr inbounds %struct.tb_switch, ptr %91, i32 0, i32 1, i32 3
  %94 = ptrtoint ptr %route_lo.i220 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %route_lo.i220, align 8
  %conv2.i221 = zext i32 %95 to i64
  %or.i222 = or i64 %shl.i219, %conv2.i221
  %port124 = getelementptr inbounds %struct.tb_port, ptr %89, i32 0, i32 9
  %96 = ptrtoint ptr %port124 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %port124, align 4
  %conv125 = zext i8 %97 to i32
  %98 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dst_port, align 4
  %sw127 = getelementptr inbounds %struct.tb_port, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %sw127 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sw127, align 4
  %route_hi.i223 = getelementptr inbounds %struct.tb_switch, ptr %101, i32 0, i32 1, i32 4
  %102 = ptrtoint ptr %route_hi.i223 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 8)
  %bf.load.i224 = load i64, ptr %route_hi.i223, align 4
  %103 = lshr i64 %bf.load.i224, 1
  %shl.i225 = and i64 %103, 9223372032559808512
  %route_lo.i226 = getelementptr inbounds %struct.tb_switch, ptr %101, i32 0, i32 1, i32 3
  %104 = ptrtoint ptr %route_lo.i226 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %route_lo.i226, align 8
  %conv2.i227 = zext i32 %105 to i64
  %or.i228 = or i64 %shl.i225, %conv2.i227
  %port130 = getelementptr inbounds %struct.tb_port, ptr %99, i32 0, i32 9
  %106 = ptrtoint ptr %port130 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %port130, align 4
  %conv131 = zext i8 %107 to i32
  %type132 = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 12
  %108 = ptrtoint ptr %type132 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %type132, align 4
  %arrayidx133 = getelementptr [4 x ptr], ptr @tb_tunnel_names, i32 0, i32 %109
  %110 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx133, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_tunnel_alloc_dma.__UNIQUE_ID_ddebug258, ptr noundef %dev119, ptr noundef nonnull @.str.26, i64 noundef %or.i222, i32 noundef %conv125, i64 noundef %or.i228, i32 noundef %conv131, ptr noundef %111) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then115, %do.body101, %if.then90.if.end.i_crit_edge, %if.then67, %do.body56, %if.then47.if.end.i_crit_edge
  %112 = ptrtoint ptr %deinit to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %deinit, align 4
  %tobool1.not.i = icmp eq ptr %113, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %113(ptr noundef nonnull %call) #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %npaths.i = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 4
  %114 = ptrtoint ptr %npaths.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %npaths.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp23.not.i = icmp eq i32 %115, 0
  br i1 %cmp23.not.i, label %if.end4.i.tb_tunnel_free.exit_crit_edge, label %for.body.lr.ph.i

if.end4.i.tb_tunnel_free.exit_crit_edge:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_free.exit

for.body.lr.ph.i:                                 ; preds = %if.end4.i
  %paths.i = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 3
  br label %for.body.i230

for.body.i230:                                    ; preds = %for.inc.i.for.body.i230_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i231, %for.inc.i.for.body.i230_crit_edge ]
  %116 = ptrtoint ptr %paths.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %paths.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %117, i32 %i.024.i
  %118 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not.i = icmp eq ptr %119, null
  br i1 %tobool5.not.i, label %for.body.i230.for.inc.i_crit_edge, label %if.then6.i

for.body.i230.for.inc.i_crit_edge:                ; preds = %for.body.i230
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i230
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tb_path_free(ptr noundef nonnull %119) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %for.body.i230.for.inc.i_crit_edge
  %inc.i231 = add nuw i32 %i.024.i, 1
  %120 = ptrtoint ptr %npaths.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %npaths.i, align 4
  %cmp.i = icmp ult i32 %inc.i231, %121
  br i1 %cmp.i, label %for.inc.i.for.body.i230_crit_edge, label %for.inc.i.tb_tunnel_free.exit_crit_edge

for.inc.i.tb_tunnel_free.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_free.exit

for.inc.i.for.body.i230_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i230

tb_tunnel_free.exit:                              ; preds = %for.inc.i.tb_tunnel_free.exit_crit_edge, %if.end4.i.tb_tunnel_free.exit_crit_edge
  %paths10.i = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 3
  %122 = ptrtoint ptr %paths10.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %paths10.i, align 4
  tail call void @kfree(ptr noundef %123) #11
  tail call void @kfree(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %tb_tunnel_free.exit, %for.cond.i213.cleanup_crit_edge, %if.end94.cleanup_crit_edge, %if.end87.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %tb_tunnel_free.exit ], [ null, %if.end29.cleanup_crit_edge ], [ %call, %if.end87.cleanup_crit_edge ], [ %call, %if.end94.cleanup_crit_edge ], [ %call, %for.cond.i213.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tb_dma_deinit(ptr nocapture noundef readonly %tunnel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %npaths = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 4
  %0 = ptrtoint ptr %npaths to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %npaths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not = icmp eq i32 %1, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %paths = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %paths, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.09
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @tb_dma_deinit_path(ptr noundef nonnull %5)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.09, 1
  %6 = ptrtoint ptr %npaths to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %npaths, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tb_tunnel_match_dma(ptr nocapture noundef readonly %tunnel, i32 noundef %transmit_path, i32 noundef %transmit_ring, i32 noundef %receive_path, i32 noundef %receive_ring) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %receive_ring)
  %tobool.not = icmp eq i32 %receive_ring, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %transmit_ring)
  %tobool1.not = icmp eq i32 %transmit_ring, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup62_crit_edge, label %for.cond.preheader

entry.cleanup62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

for.cond.preheader:                               ; preds = %entry
  %npaths = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 4
  %0 = ptrtoint ptr %npaths to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %npaths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp97.not = icmp eq i32 %1, 0
  br i1 %cmp97.not, label %for.end.thread, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %paths = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 3
  %2 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %paths, align 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0100 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %rx_path.099 = phi ptr [ null, %for.body.lr.ph ], [ %rx_path.2, %cleanup.for.body_crit_edge ]
  %tx_path.098 = phi ptr [ null, %for.body.lr.ph ], [ %tx_path.2, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.0100
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %for.body.cleanup_crit_edge, label %if.end4

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %for.body
  %hops = getelementptr inbounds %struct.tb_path, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %hops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hops, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end4.if.else_crit_edge, label %tb_port_is_nhi.exit

if.end4.if.else_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

tb_port_is_nhi.exit:                              ; preds = %if.end4
  %type.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 12)
  %bf.load.i = load i96, ptr %type.i, align 4
  %11 = and i96 %bf.load.i, 18446742974197923840
  %cmp.i = icmp eq i96 %11, 2199023255552
  br i1 %cmp.i, label %tb_port_is_nhi.exit.cleanup_crit_edge, label %tb_port_is_nhi.exit.if.else_crit_edge

tb_port_is_nhi.exit.if.else_crit_edge:            ; preds = %tb_port_is_nhi.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

tb_port_is_nhi.exit.cleanup_crit_edge:            ; preds = %tb_port_is_nhi.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %tb_port_is_nhi.exit.if.else_crit_edge, %if.end4.if.else_crit_edge
  %path_length = getelementptr inbounds %struct.tb_path, ptr %5, i32 0, i32 11
  %12 = ptrtoint ptr %path_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %path_length, align 4
  %sub = add i32 %13, -1
  %out_port = getelementptr %struct.tb_path_hop, ptr %7, i32 %sub, i32 1
  %14 = ptrtoint ptr %out_port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %out_port, align 4
  %tobool.not.i91 = icmp eq ptr %15, null
  br i1 %tobool.not.i91, label %if.else.cleanup_crit_edge, label %tb_port_is_nhi.exit96

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

tb_port_is_nhi.exit96:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %type.i92 = getelementptr inbounds %struct.tb_regs_port_header, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %type.i92 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 12)
  %bf.load.i93 = load i96, ptr %type.i92, align 4
  %17 = and i96 %bf.load.i93, 18446742974197923840
  %cmp.i94 = icmp eq i96 %17, 2199023255552
  %spec.select = select i1 %cmp.i94, ptr %5, ptr %rx_path.099
  br label %cleanup

cleanup:                                          ; preds = %tb_port_is_nhi.exit96, %if.else.cleanup_crit_edge, %tb_port_is_nhi.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %tx_path.2 = phi ptr [ %tx_path.098, %for.body.cleanup_crit_edge ], [ %5, %tb_port_is_nhi.exit.cleanup_crit_edge ], [ %tx_path.098, %if.else.cleanup_crit_edge ], [ %tx_path.098, %tb_port_is_nhi.exit96 ]
  %rx_path.2 = phi ptr [ %rx_path.099, %for.body.cleanup_crit_edge ], [ %rx_path.099, %tb_port_is_nhi.exit.cleanup_crit_edge ], [ %rx_path.099, %if.else.cleanup_crit_edge ], [ %spec.select, %tb_port_is_nhi.exit96 ]
  %inc = add nuw i32 %i.0100, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %transmit_ring)
  %cmp13 = icmp sgt i32 %transmit_ring, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %transmit_path)
  %cmp15 = icmp sgt i32 %transmit_path, 0
  %or.cond89 = or i1 %cmp15, %cmp13
  br i1 %or.cond89, label %if.then16, label %for.end.if.end35_crit_edge

for.end.if.end35_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

for.end.thread:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %transmit_ring)
  %cmp13104 = icmp sgt i32 %transmit_ring, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %transmit_path)
  %cmp15105 = icmp sgt i32 %transmit_path, 0
  %or.cond89106 = or i1 %cmp15105, %cmp13104
  br i1 %or.cond89106, label %for.end.thread.cleanup62_crit_edge, label %if.end35.thread

for.end.thread.cleanup62_crit_edge:               ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

if.then16:                                        ; preds = %for.end
  %tobool17.not = icmp eq ptr %tx_path.2, null
  br i1 %tobool17.not, label %if.then16.cleanup62_crit_edge, label %if.end19

if.then16.cleanup62_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

if.end19:                                         ; preds = %if.then16
  br i1 %cmp13, label %land.lhs.true, label %if.end19.if.end25_crit_edge

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end19
  %hops21 = getelementptr inbounds %struct.tb_path, ptr %tx_path.2, i32 0, i32 10
  %18 = ptrtoint ptr %hops21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hops21, align 4
  %in_hop_index = getelementptr inbounds %struct.tb_path_hop, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %in_hop_index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %in_hop_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %transmit_ring)
  %cmp23.not = icmp eq i32 %21, %transmit_ring
  br i1 %cmp23.not, label %land.lhs.true.if.end25_crit_edge, label %land.lhs.true.cleanup62_crit_edge

land.lhs.true.cleanup62_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end19.if.end25_crit_edge
  br i1 %cmp15, label %land.lhs.true27, label %if.end25.if.end35_crit_edge

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

land.lhs.true27:                                  ; preds = %if.end25
  %hops28 = getelementptr inbounds %struct.tb_path, ptr %tx_path.2, i32 0, i32 10
  %22 = ptrtoint ptr %hops28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hops28, align 4
  %path_length29 = getelementptr inbounds %struct.tb_path, ptr %tx_path.2, i32 0, i32 11
  %24 = ptrtoint ptr %path_length29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %path_length29, align 4
  %sub30 = add i32 %25, -1
  %next_hop_index = getelementptr %struct.tb_path_hop, ptr %23, i32 %sub30, i32 4
  %26 = ptrtoint ptr %next_hop_index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %next_hop_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %transmit_path)
  %cmp32.not = icmp eq i32 %27, %transmit_path
  br i1 %cmp32.not, label %land.lhs.true27.if.end35_crit_edge, label %land.lhs.true27.cleanup62_crit_edge

land.lhs.true27.cleanup62_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

land.lhs.true27.if.end35_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.end35:                                         ; preds = %land.lhs.true27.if.end35_crit_edge, %if.end25.if.end35_crit_edge, %for.end.if.end35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %receive_ring)
  %cmp36 = icmp sgt i32 %receive_ring, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %receive_path)
  %cmp38 = icmp sgt i32 %receive_path, 0
  %or.cond90 = or i1 %cmp38, %cmp36
  br i1 %or.cond90, label %if.then39, label %if.end35.if.end61_crit_edge

if.end35.if.end61_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.end35.thread:                                  ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %receive_ring)
  %cmp36120 = icmp sgt i32 %receive_ring, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %receive_path)
  %cmp38121 = icmp sgt i32 %receive_path, 0
  %or.cond90122 = or i1 %cmp38121, %cmp36120
  br i1 %or.cond90122, label %if.end35.thread.cleanup62_crit_edge, label %if.end35.thread.if.end61_crit_edge

if.end35.thread.if.end61_crit_edge:               ; preds = %if.end35.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.end35.thread.cleanup62_crit_edge:              ; preds = %if.end35.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

if.then39:                                        ; preds = %if.end35
  %tobool40.not = icmp eq ptr %rx_path.2, null
  br i1 %tobool40.not, label %if.then39.cleanup62_crit_edge, label %if.end42

if.then39.cleanup62_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

if.end42:                                         ; preds = %if.then39
  br i1 %cmp38, label %land.lhs.true44, label %if.end42.if.end50_crit_edge

if.end42.if.end50_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

land.lhs.true44:                                  ; preds = %if.end42
  %hops45 = getelementptr inbounds %struct.tb_path, ptr %rx_path.2, i32 0, i32 10
  %28 = ptrtoint ptr %hops45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hops45, align 4
  %in_hop_index47 = getelementptr inbounds %struct.tb_path_hop, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %in_hop_index47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %in_hop_index47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %receive_path)
  %cmp48.not = icmp eq i32 %31, %receive_path
  br i1 %cmp48.not, label %land.lhs.true44.if.end50_crit_edge, label %land.lhs.true44.cleanup62_crit_edge

land.lhs.true44.cleanup62_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

land.lhs.true44.if.end50_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.end50:                                         ; preds = %land.lhs.true44.if.end50_crit_edge, %if.end42.if.end50_crit_edge
  br i1 %cmp36, label %land.lhs.true52, label %if.end50.if.end61_crit_edge

if.end50.if.end61_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

land.lhs.true52:                                  ; preds = %if.end50
  %hops53 = getelementptr inbounds %struct.tb_path, ptr %rx_path.2, i32 0, i32 10
  %32 = ptrtoint ptr %hops53 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hops53, align 4
  %path_length54 = getelementptr inbounds %struct.tb_path, ptr %rx_path.2, i32 0, i32 11
  %34 = ptrtoint ptr %path_length54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %path_length54, align 4
  %sub55 = add i32 %35, -1
  %next_hop_index57 = getelementptr %struct.tb_path_hop, ptr %33, i32 %sub55, i32 4
  %36 = ptrtoint ptr %next_hop_index57 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %next_hop_index57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %receive_ring)
  %cmp58.not = icmp eq i32 %37, %receive_ring
  br i1 %cmp58.not, label %land.lhs.true52.if.end61_crit_edge, label %land.lhs.true52.cleanup62_crit_edge

land.lhs.true52.cleanup62_crit_edge:              ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

land.lhs.true52.if.end61_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.end61:                                         ; preds = %land.lhs.true52.if.end61_crit_edge, %if.end50.if.end61_crit_edge, %if.end35.thread.if.end61_crit_edge, %if.end35.if.end61_crit_edge
  br label %cleanup62

cleanup62:                                        ; preds = %if.end61, %land.lhs.true52.cleanup62_crit_edge, %land.lhs.true44.cleanup62_crit_edge, %if.then39.cleanup62_crit_edge, %if.end35.thread.cleanup62_crit_edge, %land.lhs.true27.cleanup62_crit_edge, %land.lhs.true.cleanup62_crit_edge, %if.then16.cleanup62_crit_edge, %for.end.thread.cleanup62_crit_edge, %entry.cleanup62_crit_edge
  %retval.0 = phi i1 [ true, %if.end61 ], [ false, %entry.cleanup62_crit_edge ], [ false, %if.then16.cleanup62_crit_edge ], [ false, %land.lhs.true.cleanup62_crit_edge ], [ false, %land.lhs.true27.cleanup62_crit_edge ], [ false, %if.then39.cleanup62_crit_edge ], [ false, %land.lhs.true44.cleanup62_crit_edge ], [ false, %land.lhs.true52.cleanup62_crit_edge ], [ false, %for.end.thread.cleanup62_crit_edge ], [ false, %if.end35.thread.cleanup62_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tb_tunnel_discover_usb3(ptr noundef %tb, ptr noundef %down, i1 noundef zeroext %alloc_hopid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @tb_usb3_port_is_enabled(ptr noundef %down) #11
  br i1 %call, label %if.end, label %entry.cleanup170_crit_edge

entry.cleanup170_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup170

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @tb_tunnel_alloc(ptr noundef %tb, i32 noundef 2, i32 noundef 3)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup170_crit_edge, label %if.end3

if.end.cleanup170_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup170

if.end3:                                          ; preds = %if.end
  %activate = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 7
  %0 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @tb_usb3_activate, ptr %activate, align 4
  %src_port = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 1
  %1 = ptrtoint ptr %src_port to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %down, ptr %src_port, align 4
  %dst_port = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 2
  %call5 = tail call ptr @tb_path_discover(ptr noundef %down, i32 noundef 8, ptr noundef null, i32 noundef -1, ptr noundef %dst_port, ptr noundef nonnull @.str.27, i1 noundef zeroext %alloc_hopid) #11
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 @tb_usb3_port_enable(ptr noundef %down, i1 noundef zeroext false) #11
  br label %if.end.i

if.end9:                                          ; preds = %if.end3
  %paths = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %paths, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %3, align 4
  %5 = load ptr, ptr %paths, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %egress_fc_enable.i = getelementptr inbounds %struct.tb_path, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %egress_fc_enable.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %egress_fc_enable.i, align 4
  %egress_shared_buffer.i = getelementptr inbounds %struct.tb_path, ptr %7, i32 0, i32 3
  %9 = ptrtoint ptr %egress_shared_buffer.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %egress_shared_buffer.i, align 4
  %ingress_fc_enable.i = getelementptr inbounds %struct.tb_path, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %ingress_fc_enable.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 7, ptr %ingress_fc_enable.i, align 4
  %ingress_shared_buffer.i = getelementptr inbounds %struct.tb_path, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %ingress_shared_buffer.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ingress_shared_buffer.i, align 4
  %priority.i = getelementptr inbounds %struct.tb_path, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %priority.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 1
  %bf.set3.i = or i8 %bf.clear.i, 102
  store i8 %bf.set3.i, ptr %priority.i, align 4
  %drop_packages.i = getelementptr inbounds %struct.tb_path, ptr %7, i32 0, i32 7
  %13 = ptrtoint ptr %drop_packages.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %drop_packages.i, align 1
  %hops.i = getelementptr inbounds %struct.tb_path, ptr %7, i32 0, i32 10
  %14 = ptrtoint ptr %hops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hops.i, align 4
  %path_length.i = getelementptr inbounds %struct.tb_path, ptr %7, i32 0, i32 11
  %16 = ptrtoint ptr %path_length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %path_length.i, align 4
  %sub17.i = add i32 %17, -1
  %arrayidx518.i = getelementptr %struct.tb_path_hop, ptr %15, i32 %sub17.i
  %cmp.not19.i = icmp ugt ptr %15, %arrayidx518.i
  br i1 %cmp.not19.i, label %if.end9.tb_usb3_init_path.exit_crit_edge, label %if.end9.for.body.i_crit_edge

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

if.end9.tb_usb3_init_path.exit_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_usb3_init_path.exit

for.body.i:                                       ; preds = %tb_usb3_init_credits.exit.i.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %hop.020.i = phi ptr [ %incdec.ptr.i, %tb_usb3_init_credits.exit.i.for.body.i_crit_edge ], [ %15, %if.end9.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %hop.020.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hop.020.i, align 4
  %sw1.i.i = getelementptr inbounds %struct.tb_port, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %sw1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sw1.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i.i, label %for.body.i.tb_usb3_init_credits.exit.i_crit_edge, label %land.lhs.true.i.i.i.i

for.body.i.tb_usb3_init_credits.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_usb3_init_credits.exit.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i
  %port1.i.i.i.i = getelementptr inbounds %struct.tb_port, ptr %19, i32 0, i32 9
  %22 = ptrtoint ptr %port1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port1.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool2.not.i.i.i.i = icmp eq i8 %23, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.tb_usb3_init_credits.exit.i_crit_edge, label %tb_port_is_null.exit.i.i.i

land.lhs.true.i.i.i.i.tb_usb3_init_credits.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_usb3_init_credits.exit.i

tb_port_is_null.exit.i.i.i:                       ; preds = %land.lhs.true.i.i.i.i
  %type.i.i.i.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %19, i32 0, i32 2
  %24 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 12)
  %bf.load.i.i.i.i = load i96, ptr %type.i.i.i.i, align 4
  %25 = and i96 %bf.load.i.i.i.i, 18446742974197923840
  %cmp.i.i.i.i = icmp eq i96 %25, 1099511627776
  br i1 %cmp.i.i.i.i, label %tb_port_use_credit_allocation.exit.i.i, label %tb_port_is_null.exit.i.i.i.tb_usb3_init_credits.exit.i_crit_edge

tb_port_is_null.exit.i.i.i.tb_usb3_init_credits.exit.i_crit_edge: ; preds = %tb_port_is_null.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_usb3_init_credits.exit.i

tb_port_use_credit_allocation.exit.i.i:           ; preds = %tb_port_is_null.exit.i.i.i
  %credit_allocation.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %21, i32 0, i32 37
  %26 = ptrtoint ptr %credit_allocation.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %credit_allocation.i.i.i, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.i.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool.i.not.i.i, label %if.then3.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %tb_port_use_credit_allocation.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %max_usb3_credits.i.i = getelementptr inbounds %struct.tb_switch, ptr %21, i32 0, i32 38
  %28 = ptrtoint ptr %max_usb3_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_usb3_credits.i.i, align 4
  br label %tb_usb3_init_credits.exit.i

if.then3.i.i:                                     ; preds = %tb_port_use_credit_allocation.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bonded.i.i = getelementptr inbounds %struct.tb_port, ptr %19, i32 0, i32 11
  %30 = ptrtoint ptr %bonded.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bonded.i.i, align 2, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i = icmp eq i8 %31, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 16, i32 32
  br label %tb_usb3_init_credits.exit.i

tb_usb3_init_credits.exit.i:                      ; preds = %if.then3.i.i, %if.then.i.i, %tb_port_is_null.exit.i.i.i.tb_usb3_init_credits.exit.i_crit_edge, %land.lhs.true.i.i.i.i.tb_usb3_init_credits.exit.i_crit_edge, %for.body.i.tb_usb3_init_credits.exit.i_crit_edge
  %credits.0.i.i = phi i32 [ %29, %if.then.i.i ], [ %cond.i.i, %if.then3.i.i ], [ 7, %for.body.i.tb_usb3_init_credits.exit.i_crit_edge ], [ 7, %land.lhs.true.i.i.i.i.tb_usb3_init_credits.exit.i_crit_edge ], [ 7, %tb_port_is_null.exit.i.i.i.tb_usb3_init_credits.exit.i_crit_edge ]
  %initial_credits.i.i = getelementptr inbounds %struct.tb_path_hop, ptr %hop.020.i, i32 0, i32 5
  %32 = ptrtoint ptr %initial_credits.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %credits.0.i.i, ptr %initial_credits.i.i, align 4
  %incdec.ptr.i = getelementptr %struct.tb_path_hop, ptr %hop.020.i, i32 1
  %33 = ptrtoint ptr %hops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hops.i, align 4
  %35 = ptrtoint ptr %path_length.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %path_length.i, align 4
  %sub.i = add i32 %36, -1
  %arrayidx5.i = getelementptr %struct.tb_path_hop, ptr %34, i32 %sub.i
  %cmp.not.i = icmp ugt ptr %incdec.ptr.i, %arrayidx5.i
  br i1 %cmp.not.i, label %tb_usb3_init_credits.exit.i.tb_usb3_init_path.exit_crit_edge, label %tb_usb3_init_credits.exit.i.for.body.i_crit_edge

tb_usb3_init_credits.exit.i.for.body.i_crit_edge: ; preds = %tb_usb3_init_credits.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

tb_usb3_init_credits.exit.i.tb_usb3_init_path.exit_crit_edge: ; preds = %tb_usb3_init_credits.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_usb3_init_path.exit

tb_usb3_init_path.exit:                           ; preds = %tb_usb3_init_credits.exit.i.tb_usb3_init_path.exit_crit_edge, %if.end9.tb_usb3_init_path.exit_crit_edge
  %37 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dst_port, align 4
  %call14 = tail call ptr @tb_path_discover(ptr noundef %38, i32 noundef -1, ptr noundef %down, i32 noundef 8, ptr noundef null, ptr noundef nonnull @.str.28, i1 noundef zeroext %alloc_hopid) #11
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %tb_usb3_init_path.exit.err_deactivate_crit_edge, label %if.end17

tb_usb3_init_path.exit.err_deactivate_crit_edge:  ; preds = %tb_usb3_init_path.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_deactivate

if.end17:                                         ; preds = %tb_usb3_init_path.exit
  %39 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %paths, align 4
  %arrayidx19 = getelementptr ptr, ptr %40, i32 1
  %41 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call14, ptr %arrayidx19, align 4
  %42 = load ptr, ptr %paths, align 4
  %arrayidx21 = getelementptr ptr, ptr %42, i32 1
  %43 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx21, align 4
  %egress_fc_enable.i235 = getelementptr inbounds %struct.tb_path, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %egress_fc_enable.i235 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %egress_fc_enable.i235, align 4
  %egress_shared_buffer.i236 = getelementptr inbounds %struct.tb_path, ptr %44, i32 0, i32 3
  %46 = ptrtoint ptr %egress_shared_buffer.i236 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %egress_shared_buffer.i236, align 4
  %ingress_fc_enable.i237 = getelementptr inbounds %struct.tb_path, ptr %44, i32 0, i32 4
  %47 = ptrtoint ptr %ingress_fc_enable.i237 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 7, ptr %ingress_fc_enable.i237, align 4
  %ingress_shared_buffer.i238 = getelementptr inbounds %struct.tb_path, ptr %44, i32 0, i32 2
  %48 = ptrtoint ptr %ingress_shared_buffer.i238 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %ingress_shared_buffer.i238, align 4
  %priority.i239 = getelementptr inbounds %struct.tb_path, ptr %44, i32 0, i32 6
  %49 = ptrtoint ptr %priority.i239 to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load.i240 = load i8, ptr %priority.i239, align 4
  %bf.clear.i241 = and i8 %bf.load.i240, 1
  %bf.set3.i242 = or i8 %bf.clear.i241, 102
  store i8 %bf.set3.i242, ptr %priority.i239, align 4
  %drop_packages.i243 = getelementptr inbounds %struct.tb_path, ptr %44, i32 0, i32 7
  %50 = ptrtoint ptr %drop_packages.i243 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %drop_packages.i243, align 1
  %hops.i244 = getelementptr inbounds %struct.tb_path, ptr %44, i32 0, i32 10
  %51 = ptrtoint ptr %hops.i244 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hops.i244, align 4
  %path_length.i245 = getelementptr inbounds %struct.tb_path, ptr %44, i32 0, i32 11
  %53 = ptrtoint ptr %path_length.i245 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %path_length.i245, align 4
  %sub17.i246 = add i32 %54, -1
  %arrayidx518.i247 = getelementptr %struct.tb_path_hop, ptr %52, i32 %sub17.i246
  %cmp.not19.i248 = icmp ugt ptr %52, %arrayidx518.i247
  br i1 %cmp.not19.i248, label %if.end17.tb_usb3_init_path.exit276_crit_edge, label %if.end17.for.body.i252_crit_edge

if.end17.for.body.i252_crit_edge:                 ; preds = %if.end17
  br label %for.body.i252

if.end17.tb_usb3_init_path.exit276_crit_edge:     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_usb3_init_path.exit276

for.body.i252:                                    ; preds = %tb_usb3_init_credits.exit.i275.for.body.i252_crit_edge, %if.end17.for.body.i252_crit_edge
  %hop.020.i249 = phi ptr [ %incdec.ptr.i271, %tb_usb3_init_credits.exit.i275.for.body.i252_crit_edge ], [ %52, %if.end17.for.body.i252_crit_edge ]
  %55 = ptrtoint ptr %hop.020.i249 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hop.020.i249, align 4
  %sw1.i.i250 = getelementptr inbounds %struct.tb_port, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %sw1.i.i250 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sw1.i.i250, align 4
  %tobool.not.i.i.i.i251 = icmp eq ptr %56, null
  br i1 %tobool.not.i.i.i.i251, label %for.body.i252.tb_usb3_init_credits.exit.i275_crit_edge, label %land.lhs.true.i.i.i.i255

for.body.i252.tb_usb3_init_credits.exit.i275_crit_edge: ; preds = %for.body.i252
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_usb3_init_credits.exit.i275

land.lhs.true.i.i.i.i255:                         ; preds = %for.body.i252
  %port1.i.i.i.i253 = getelementptr inbounds %struct.tb_port, ptr %56, i32 0, i32 9
  %59 = ptrtoint ptr %port1.i.i.i.i253 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %port1.i.i.i.i253, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool2.not.i.i.i.i254 = icmp eq i8 %60, 0
  br i1 %tobool2.not.i.i.i.i254, label %land.lhs.true.i.i.i.i255.tb_usb3_init_credits.exit.i275_crit_edge, label %tb_port_is_null.exit.i.i.i259

land.lhs.true.i.i.i.i255.tb_usb3_init_credits.exit.i275_crit_edge: ; preds = %land.lhs.true.i.i.i.i255
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_usb3_init_credits.exit.i275

tb_port_is_null.exit.i.i.i259:                    ; preds = %land.lhs.true.i.i.i.i255
  %type.i.i.i.i256 = getelementptr inbounds %struct.tb_regs_port_header, ptr %56, i32 0, i32 2
  %61 = ptrtoint ptr %type.i.i.i.i256 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 12)
  %bf.load.i.i.i.i257 = load i96, ptr %type.i.i.i.i256, align 4
  %62 = and i96 %bf.load.i.i.i.i257, 18446742974197923840
  %cmp.i.i.i.i258 = icmp eq i96 %62, 1099511627776
  br i1 %cmp.i.i.i.i258, label %tb_port_use_credit_allocation.exit.i.i262, label %tb_port_is_null.exit.i.i.i259.tb_usb3_init_credits.exit.i275_crit_edge

tb_port_is_null.exit.i.i.i259.tb_usb3_init_credits.exit.i275_crit_edge: ; preds = %tb_port_is_null.exit.i.i.i259
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_usb3_init_credits.exit.i275

tb_port_use_credit_allocation.exit.i.i262:        ; preds = %tb_port_is_null.exit.i.i.i259
  %credit_allocation.i.i.i260 = getelementptr inbounds %struct.tb_switch, ptr %58, i32 0, i32 37
  %63 = ptrtoint ptr %credit_allocation.i.i.i260 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %credit_allocation.i.i.i260, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.i.not.i.i261 = icmp eq i8 %64, 0
  br i1 %tobool.i.not.i.i261, label %if.then3.i.i268, label %if.then.i.i264

if.then.i.i264:                                   ; preds = %tb_port_use_credit_allocation.exit.i.i262
  call void @__sanitizer_cov_trace_pc() #13
  %max_usb3_credits.i.i263 = getelementptr inbounds %struct.tb_switch, ptr %58, i32 0, i32 38
  %65 = ptrtoint ptr %max_usb3_credits.i.i263 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_usb3_credits.i.i263, align 4
  br label %tb_usb3_init_credits.exit.i275

if.then3.i.i268:                                  ; preds = %tb_port_use_credit_allocation.exit.i.i262
  call void @__sanitizer_cov_trace_pc() #13
  %bonded.i.i265 = getelementptr inbounds %struct.tb_port, ptr %56, i32 0, i32 11
  %67 = ptrtoint ptr %bonded.i.i265 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bonded.i.i265, align 2, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i.i266 = icmp eq i8 %68, 0
  %cond.i.i267 = select i1 %tobool.not.i.i266, i32 16, i32 32
  br label %tb_usb3_init_credits.exit.i275

tb_usb3_init_credits.exit.i275:                   ; preds = %if.then3.i.i268, %if.then.i.i264, %tb_port_is_null.exit.i.i.i259.tb_usb3_init_credits.exit.i275_crit_edge, %land.lhs.true.i.i.i.i255.tb_usb3_init_credits.exit.i275_crit_edge, %for.body.i252.tb_usb3_init_credits.exit.i275_crit_edge
  %credits.0.i.i269 = phi i32 [ %66, %if.then.i.i264 ], [ %cond.i.i267, %if.then3.i.i268 ], [ 7, %for.body.i252.tb_usb3_init_credits.exit.i275_crit_edge ], [ 7, %land.lhs.true.i.i.i.i255.tb_usb3_init_credits.exit.i275_crit_edge ], [ 7, %tb_port_is_null.exit.i.i.i259.tb_usb3_init_credits.exit.i275_crit_edge ]
  %initial_credits.i.i270 = getelementptr inbounds %struct.tb_path_hop, ptr %hop.020.i249, i32 0, i32 5
  %69 = ptrtoint ptr %initial_credits.i.i270 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %credits.0.i.i269, ptr %initial_credits.i.i270, align 4
  %incdec.ptr.i271 = getelementptr %struct.tb_path_hop, ptr %hop.020.i249, i32 1
  %70 = ptrtoint ptr %hops.i244 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hops.i244, align 4
  %72 = ptrtoint ptr %path_length.i245 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %path_length.i245, align 4
  %sub.i272 = add i32 %73, -1
  %arrayidx5.i273 = getelementptr %struct.tb_path_hop, ptr %71, i32 %sub.i272
  %cmp.not.i274 = icmp ugt ptr %incdec.ptr.i271, %arrayidx5.i273
  br i1 %cmp.not.i274, label %tb_usb3_init_credits.exit.i275.tb_usb3_init_path.exit276_crit_edge, label %tb_usb3_init_credits.exit.i275.for.body.i252_crit_edge

tb_usb3_init_credits.exit.i275.for.body.i252_crit_edge: ; preds = %tb_usb3_init_credits.exit.i275
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i252

tb_usb3_init_credits.exit.i275.tb_usb3_init_path.exit276_crit_edge: ; preds = %tb_usb3_init_credits.exit.i275
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_usb3_init_path.exit276

tb_usb3_init_path.exit276:                        ; preds = %tb_usb3_init_credits.exit.i275.tb_usb3_init_path.exit276_crit_edge, %if.end17.tb_usb3_init_path.exit276_crit_edge
  %74 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dst_port, align 4
  %tobool.not.i = icmp eq ptr %75, null
  br i1 %tobool.not.i, label %tb_usb3_init_path.exit276.do.body_crit_edge, label %tb_port_is_usb3_up.exit

tb_usb3_init_path.exit276.do.body_crit_edge:      ; preds = %tb_usb3_init_path.exit276
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

tb_port_is_usb3_up.exit:                          ; preds = %tb_usb3_init_path.exit276
  %type.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 12)
  %bf.load.i277 = load i96, ptr %type.i, align 4
  %77 = and i96 %bf.load.i277, 18446742974197923840
  %cmp.i = icmp eq i96 %77, 2306126683213660160
  br i1 %cmp.i, label %if.end32, label %tb_port_is_usb3_up.exit.do.body_crit_edge

tb_port_is_usb3_up.exit.do.body_crit_edge:        ; preds = %tb_port_is_usb3_up.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %tb_port_is_usb3_up.exit.do.body_crit_edge, %tb_usb3_init_path.exit276.do.body_crit_edge
  %sw = getelementptr inbounds %struct.tb_port, ptr %75, i32 0, i32 1
  %78 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sw, align 4
  %tb27 = getelementptr inbounds %struct.tb_switch, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %tb27 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tb27, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %79, i32 0, i32 1, i32 4
  %86 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 8)
  %bf.load.i278 = load i64, ptr %route_hi.i, align 4
  %87 = lshr i64 %bf.load.i278, 1
  %shl.i = and i64 %87, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %79, i32 0, i32 1, i32 3
  %88 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %89 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port = getelementptr inbounds %struct.tb_port, ptr %75, i32 0, i32 9
  %90 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %port, align 4
  %conv = zext i8 %91 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.29, i64 noundef %or.i, i32 noundef %conv) #14
  br label %err_deactivate

if.end32:                                         ; preds = %tb_port_is_usb3_up.exit
  %92 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %src_port, align 4
  %cmp.not = icmp eq ptr %93, %down
  br i1 %cmp.not, label %if.end59, label %do.body36

do.body36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %call1, align 4
  %nhi41 = getelementptr inbounds %struct.tb, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %nhi41 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %nhi41, align 4
  %pdev42 = getelementptr inbounds %struct.tb_nhi, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev42, align 4
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44
  %sw45 = getelementptr inbounds %struct.tb_port, ptr %93, i32 0, i32 1
  %100 = ptrtoint ptr %sw45 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sw45, align 4
  %route_hi.i279 = getelementptr inbounds %struct.tb_switch, ptr %101, i32 0, i32 1, i32 4
  %102 = ptrtoint ptr %route_hi.i279 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 8)
  %bf.load.i280 = load i64, ptr %route_hi.i279, align 4
  %103 = lshr i64 %bf.load.i280, 1
  %shl.i281 = and i64 %103, 9223372032559808512
  %route_lo.i282 = getelementptr inbounds %struct.tb_switch, ptr %101, i32 0, i32 1, i32 3
  %104 = ptrtoint ptr %route_lo.i282 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %route_lo.i282, align 8
  %conv2.i283 = zext i32 %105 to i64
  %or.i284 = or i64 %shl.i281, %conv2.i283
  %port48 = getelementptr inbounds %struct.tb_port, ptr %93, i32 0, i32 9
  %106 = ptrtoint ptr %port48 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %port48, align 4
  %conv49 = zext i8 %107 to i32
  %sw51 = getelementptr inbounds %struct.tb_port, ptr %75, i32 0, i32 1
  %108 = ptrtoint ptr %sw51 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sw51, align 4
  %route_hi.i285 = getelementptr inbounds %struct.tb_switch, ptr %109, i32 0, i32 1, i32 4
  %110 = ptrtoint ptr %route_hi.i285 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 8)
  %bf.load.i286 = load i64, ptr %route_hi.i285, align 4
  %111 = lshr i64 %bf.load.i286, 1
  %shl.i287 = and i64 %111, 9223372032559808512
  %route_lo.i288 = getelementptr inbounds %struct.tb_switch, ptr %109, i32 0, i32 1, i32 3
  %112 = ptrtoint ptr %route_lo.i288 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %route_lo.i288, align 8
  %conv2.i289 = zext i32 %113 to i64
  %or.i290 = or i64 %shl.i287, %conv2.i289
  %port54 = getelementptr inbounds %struct.tb_port, ptr %75, i32 0, i32 9
  %114 = ptrtoint ptr %port54 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %port54, align 4
  %conv55 = zext i8 %115 to i32
  %type = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 12
  %116 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %type, align 4
  %arrayidx56 = getelementptr [4 x ptr], ptr @tb_tunnel_names, i32 0, i32 %117
  %118 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx56, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev43, ptr noundef nonnull @.str.8, i64 noundef %or.i284, i32 noundef %conv49, i64 noundef %or.i290, i32 noundef %conv55, ptr noundef %119) #14
  br label %err_deactivate

if.end59:                                         ; preds = %if.end32
  %call61 = tail call zeroext i1 @tb_usb3_port_is_enabled(ptr noundef nonnull %75) #11
  br i1 %call61, label %if.end88, label %do.body63

do.body63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %call1, align 4
  %nhi69 = getelementptr inbounds %struct.tb, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %nhi69 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %nhi69, align 4
  %pdev70 = getelementptr inbounds %struct.tb_nhi, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %pdev70 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pdev70, align 4
  %dev71 = getelementptr inbounds %struct.pci_dev, ptr %125, i32 0, i32 44
  %126 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %src_port, align 4
  %sw73 = getelementptr inbounds %struct.tb_port, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %sw73 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %sw73, align 4
  %route_hi.i291 = getelementptr inbounds %struct.tb_switch, ptr %129, i32 0, i32 1, i32 4
  %130 = ptrtoint ptr %route_hi.i291 to i32
  call void @__asan_loadN_noabort(i32 %130, i32 8)
  %bf.load.i292 = load i64, ptr %route_hi.i291, align 4
  %131 = lshr i64 %bf.load.i292, 1
  %shl.i293 = and i64 %131, 9223372032559808512
  %route_lo.i294 = getelementptr inbounds %struct.tb_switch, ptr %129, i32 0, i32 1, i32 3
  %132 = ptrtoint ptr %route_lo.i294 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %route_lo.i294, align 8
  %conv2.i295 = zext i32 %133 to i64
  %or.i296 = or i64 %shl.i293, %conv2.i295
  %port76 = getelementptr inbounds %struct.tb_port, ptr %127, i32 0, i32 9
  %134 = ptrtoint ptr %port76 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %port76, align 4
  %conv77 = zext i8 %135 to i32
  %136 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dst_port, align 4
  %sw79 = getelementptr inbounds %struct.tb_port, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %sw79 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %sw79, align 4
  %route_hi.i297 = getelementptr inbounds %struct.tb_switch, ptr %139, i32 0, i32 1, i32 4
  %140 = ptrtoint ptr %route_hi.i297 to i32
  call void @__asan_loadN_noabort(i32 %140, i32 8)
  %bf.load.i298 = load i64, ptr %route_hi.i297, align 4
  %141 = lshr i64 %bf.load.i298, 1
  %shl.i299 = and i64 %141, 9223372032559808512
  %route_lo.i300 = getelementptr inbounds %struct.tb_switch, ptr %139, i32 0, i32 1, i32 3
  %142 = ptrtoint ptr %route_lo.i300 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %route_lo.i300, align 8
  %conv2.i301 = zext i32 %143 to i64
  %or.i302 = or i64 %shl.i299, %conv2.i301
  %port82 = getelementptr inbounds %struct.tb_port, ptr %137, i32 0, i32 9
  %144 = ptrtoint ptr %port82 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %port82, align 4
  %conv83 = zext i8 %145 to i32
  %type84 = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 12
  %146 = ptrtoint ptr %type84 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %type84, align 4
  %arrayidx85 = getelementptr [4 x ptr], ptr @tb_tunnel_names, i32 0, i32 %147
  %148 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx85, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev71, ptr noundef nonnull @.str.11, i64 noundef %or.i296, i32 noundef %conv77, i64 noundef %or.i302, i32 noundef %conv83, ptr noundef %149) #14
  br label %err_deactivate

if.end88:                                         ; preds = %if.end59
  %sw89 = getelementptr inbounds %struct.tb_port, ptr %down, i32 0, i32 1
  %150 = ptrtoint ptr %sw89 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %sw89, align 4
  %route_hi.i303 = getelementptr inbounds %struct.tb_switch, ptr %151, i32 0, i32 1, i32 4
  %152 = ptrtoint ptr %route_hi.i303 to i32
  call void @__asan_loadN_noabort(i32 %152, i32 8)
  %bf.load.i304 = load i64, ptr %route_hi.i303, align 4
  %153 = lshr i64 %bf.load.i304, 1
  %shl.i305 = and i64 %153, 9223372032559808512
  %route_lo.i306 = getelementptr inbounds %struct.tb_switch, ptr %151, i32 0, i32 1, i32 3
  %154 = ptrtoint ptr %route_lo.i306 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %route_lo.i306, align 8
  %conv2.i307 = zext i32 %155 to i64
  %or.i308 = or i64 %shl.i305, %conv2.i307
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i308)
  %tobool91.not = icmp eq i64 %or.i308, 0
  br i1 %tobool91.not, label %if.then92, label %if.end88.do.body132_crit_edge

if.end88.do.body132_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body132

if.then92:                                        ; preds = %if.end88
  %allocated_up = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 15
  %allocated_down = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 16
  %call93 = tail call i32 @usb4_usb3_port_allocated_bandwidth(ptr noundef %down, ptr noundef %allocated_up, ptr noundef %allocated_down) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %do.body97, label %if.then92.err_deactivate_crit_edge

if.then92.err_deactivate_crit_edge:               ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_deactivate

do.body97:                                        ; preds = %if.then92
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_tunnel_discover_usb3.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_tunnel_discover_usb3, %if.then105)) #11
          to label %cleanup.thread [label %if.then105], !srcloc !168

if.then105:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #13
  %156 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %call1, align 4
  %nhi107 = getelementptr inbounds %struct.tb, ptr %157, i32 0, i32 2
  %158 = ptrtoint ptr %nhi107 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %nhi107, align 4
  %pdev108 = getelementptr inbounds %struct.tb_nhi, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %pdev108 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pdev108, align 4
  %dev109 = getelementptr inbounds %struct.pci_dev, ptr %161, i32 0, i32 44
  %162 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %src_port, align 4
  %sw111 = getelementptr inbounds %struct.tb_port, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %sw111 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %sw111, align 4
  %route_hi.i309 = getelementptr inbounds %struct.tb_switch, ptr %165, i32 0, i32 1, i32 4
  %166 = ptrtoint ptr %route_hi.i309 to i32
  call void @__asan_loadN_noabort(i32 %166, i32 8)
  %bf.load.i310 = load i64, ptr %route_hi.i309, align 4
  %167 = lshr i64 %bf.load.i310, 1
  %shl.i311 = and i64 %167, 9223372032559808512
  %route_lo.i312 = getelementptr inbounds %struct.tb_switch, ptr %165, i32 0, i32 1, i32 3
  %168 = ptrtoint ptr %route_lo.i312 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %route_lo.i312, align 8
  %conv2.i313 = zext i32 %169 to i64
  %or.i314 = or i64 %shl.i311, %conv2.i313
  %port114 = getelementptr inbounds %struct.tb_port, ptr %163, i32 0, i32 9
  %170 = ptrtoint ptr %port114 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %port114, align 4
  %conv115 = zext i8 %171 to i32
  %172 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dst_port, align 4
  %sw117 = getelementptr inbounds %struct.tb_port, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %sw117 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %sw117, align 4
  %route_hi.i315 = getelementptr inbounds %struct.tb_switch, ptr %175, i32 0, i32 1, i32 4
  %176 = ptrtoint ptr %route_hi.i315 to i32
  call void @__asan_loadN_noabort(i32 %176, i32 8)
  %bf.load.i316 = load i64, ptr %route_hi.i315, align 4
  %177 = lshr i64 %bf.load.i316, 1
  %shl.i317 = and i64 %177, 9223372032559808512
  %route_lo.i318 = getelementptr inbounds %struct.tb_switch, ptr %175, i32 0, i32 1, i32 3
  %178 = ptrtoint ptr %route_lo.i318 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %route_lo.i318, align 8
  %conv2.i319 = zext i32 %179 to i64
  %or.i320 = or i64 %shl.i317, %conv2.i319
  %port120 = getelementptr inbounds %struct.tb_port, ptr %173, i32 0, i32 9
  %180 = ptrtoint ptr %port120 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %port120, align 4
  %conv121 = zext i8 %181 to i32
  %type122 = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 12
  %182 = ptrtoint ptr %type122 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %type122, align 4
  %arrayidx123 = getelementptr [4 x ptr], ptr @tb_tunnel_names, i32 0, i32 %183
  %184 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx123, align 4
  %186 = ptrtoint ptr %allocated_up to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %allocated_up, align 4
  %188 = ptrtoint ptr %allocated_down to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %allocated_down, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_tunnel_discover_usb3.__UNIQUE_ID_ddebug268, ptr noundef %dev109, ptr noundef nonnull @.str.35, i64 noundef %or.i314, i32 noundef %conv115, i64 noundef %or.i320, i32 noundef %conv121, ptr noundef %185, i32 noundef %187, i32 noundef %189) #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then105, %do.body97
  %init = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 5
  %190 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @tb_usb3_init, ptr %init, align 4
  %consumed_bandwidth = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 8
  %191 = ptrtoint ptr %consumed_bandwidth to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr @tb_usb3_consumed_bandwidth, ptr %consumed_bandwidth, align 4
  %release_unused_bandwidth = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 9
  %192 = ptrtoint ptr %release_unused_bandwidth to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @tb_usb3_release_unused_bandwidth, ptr %release_unused_bandwidth, align 4
  %reclaim_available_bandwidth = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 10
  %193 = ptrtoint ptr %reclaim_available_bandwidth to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr @tb_usb3_reclaim_available_bandwidth, ptr %reclaim_available_bandwidth, align 4
  br label %do.body132

do.body132:                                       ; preds = %cleanup.thread, %if.end88.do.body132_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_tunnel_discover_usb3.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_tunnel_discover_usb3, %if.then146)) #11
          to label %cleanup170 [label %if.then146], !srcloc !168

if.then146:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #13
  %194 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %call1, align 4
  %nhi148 = getelementptr inbounds %struct.tb, ptr %195, i32 0, i32 2
  %196 = ptrtoint ptr %nhi148 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %nhi148, align 4
  %pdev149 = getelementptr inbounds %struct.tb_nhi, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %pdev149 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %pdev149, align 4
  %dev150 = getelementptr inbounds %struct.pci_dev, ptr %199, i32 0, i32 44
  %200 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %src_port, align 4
  %sw152 = getelementptr inbounds %struct.tb_port, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %sw152 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %sw152, align 4
  %route_hi.i321 = getelementptr inbounds %struct.tb_switch, ptr %203, i32 0, i32 1, i32 4
  %204 = ptrtoint ptr %route_hi.i321 to i32
  call void @__asan_loadN_noabort(i32 %204, i32 8)
  %bf.load.i322 = load i64, ptr %route_hi.i321, align 4
  %205 = lshr i64 %bf.load.i322, 1
  %shl.i323 = and i64 %205, 9223372032559808512
  %route_lo.i324 = getelementptr inbounds %struct.tb_switch, ptr %203, i32 0, i32 1, i32 3
  %206 = ptrtoint ptr %route_lo.i324 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %route_lo.i324, align 8
  %conv2.i325 = zext i32 %207 to i64
  %or.i326 = or i64 %shl.i323, %conv2.i325
  %port155 = getelementptr inbounds %struct.tb_port, ptr %201, i32 0, i32 9
  %208 = ptrtoint ptr %port155 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %port155, align 4
  %conv156 = zext i8 %209 to i32
  %210 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dst_port, align 4
  %sw158 = getelementptr inbounds %struct.tb_port, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %sw158 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %sw158, align 4
  %route_hi.i327 = getelementptr inbounds %struct.tb_switch, ptr %213, i32 0, i32 1, i32 4
  %214 = ptrtoint ptr %route_hi.i327 to i32
  call void @__asan_loadN_noabort(i32 %214, i32 8)
  %bf.load.i328 = load i64, ptr %route_hi.i327, align 4
  %215 = lshr i64 %bf.load.i328, 1
  %shl.i329 = and i64 %215, 9223372032559808512
  %route_lo.i330 = getelementptr inbounds %struct.tb_switch, ptr %213, i32 0, i32 1, i32 3
  %216 = ptrtoint ptr %route_lo.i330 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %route_lo.i330, align 8
  %conv2.i331 = zext i32 %217 to i64
  %or.i332 = or i64 %shl.i329, %conv2.i331
  %port161 = getelementptr inbounds %struct.tb_port, ptr %211, i32 0, i32 9
  %218 = ptrtoint ptr %port161 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %port161, align 4
  %conv162 = zext i8 %219 to i32
  %type163 = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 12
  %220 = ptrtoint ptr %type163 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %type163, align 4
  %arrayidx164 = getelementptr [4 x ptr], ptr @tb_tunnel_names, i32 0, i32 %221
  %222 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %arrayidx164, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_tunnel_discover_usb3.__UNIQUE_ID_ddebug269, ptr noundef %dev150, ptr noundef nonnull @.str.14, i64 noundef %or.i326, i32 noundef %conv156, i64 noundef %or.i332, i32 noundef %conv162, ptr noundef %223) #11
  br label %cleanup170

err_deactivate:                                   ; preds = %if.then92.err_deactivate_crit_edge, %do.body63, %do.body36, %do.body, %tb_usb3_init_path.exit.err_deactivate_crit_edge
  tail call void @tb_tunnel_deactivate(ptr noundef %call1)
  br label %if.end.i

if.end.i:                                         ; preds = %err_deactivate, %if.then7
  %deinit.i = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 6
  %224 = ptrtoint ptr %deinit.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %deinit.i, align 4
  %tobool1.not.i = icmp eq ptr %225, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %225(ptr noundef nonnull %call1) #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %npaths.i = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 4
  %226 = ptrtoint ptr %npaths.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %npaths.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %cmp23.not.i = icmp eq i32 %227, 0
  br i1 %cmp23.not.i, label %if.end4.i.tb_tunnel_free.exit_crit_edge, label %for.body.lr.ph.i

if.end4.i.tb_tunnel_free.exit_crit_edge:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_free.exit

for.body.lr.ph.i:                                 ; preds = %if.end4.i
  %paths.i = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 3
  br label %for.body.i334

for.body.i334:                                    ; preds = %for.inc.i.for.body.i334_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i334_crit_edge ]
  %228 = ptrtoint ptr %paths.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %paths.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %229, i32 %i.024.i
  %230 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not.i = icmp eq ptr %231, null
  br i1 %tobool5.not.i, label %for.body.i334.for.inc.i_crit_edge, label %if.then6.i

for.body.i334.for.inc.i_crit_edge:                ; preds = %for.body.i334
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i334
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tb_path_free(ptr noundef nonnull %231) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %for.body.i334.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.024.i, 1
  %232 = ptrtoint ptr %npaths.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %npaths.i, align 4
  %cmp.i335 = icmp ult i32 %inc.i, %233
  br i1 %cmp.i335, label %for.inc.i.for.body.i334_crit_edge, label %for.inc.i.tb_tunnel_free.exit_crit_edge

for.inc.i.tb_tunnel_free.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_free.exit

for.inc.i.for.body.i334_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i334

tb_tunnel_free.exit:                              ; preds = %for.inc.i.tb_tunnel_free.exit_crit_edge, %if.end4.i.tb_tunnel_free.exit_crit_edge
  %paths10.i = getelementptr inbounds %struct.tb_tunnel, ptr %call1, i32 0, i32 3
  %234 = ptrtoint ptr %paths10.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %paths10.i, align 4
  tail call void @kfree(ptr noundef %235) #11
  tail call void @kfree(ptr noundef nonnull %call1) #11
  br label %cleanup170

cleanup170:                                       ; preds = %tb_tunnel_free.exit, %if.then146, %do.body132, %if.end.cleanup170_crit_edge, %entry.cleanup170_crit_edge
  %retval.0 = phi ptr [ null, %tb_tunnel_free.exit ], [ null, %entry.cleanup170_crit_edge ], [ null, %if.end.cleanup170_crit_edge ], [ %call1, %if.then146 ], [ %call1, %do.body132 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tb_usb3_port_is_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tb_usb3_activate(ptr nocapture noundef readonly %tunnel, i1 noundef zeroext %activate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %src_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 1
  %0 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src_port, align 4
  %call = tail call i32 @tb_usb3_port_enable(ptr noundef %1, i1 noundef zeroext %activate) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dst_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 2
  %2 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst_port, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %tb_port_is_usb3_up.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

tb_port_is_usb3_up.exit:                          ; preds = %if.end
  %type.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 12)
  %bf.load.i = load i96, ptr %type.i, align 4
  %5 = and i96 %bf.load.i, 18446742974197923840
  %cmp.i = icmp eq i96 %5, 2306126683213660160
  br i1 %cmp.i, label %if.then3, label %tb_port_is_usb3_up.exit.cleanup_crit_edge

tb_port_is_usb3_up.exit.cleanup_crit_edge:        ; preds = %tb_port_is_usb3_up.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %tb_port_is_usb3_up.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 @tb_usb3_port_enable(ptr noundef nonnull %3, i1 noundef zeroext %activate) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %tb_port_is_usb3_up.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %tb_port_is_usb3_up.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_usb3_port_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb4_usb3_port_allocated_bandwidth(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tb_usb3_init(ptr noundef %tunnel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_usb3_init.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_usb3_init, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tunnel, align 4
  %nhi = getelementptr inbounds %struct.tb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %src_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 1
  %6 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src_port, align 4
  %sw = getelementptr inbounds %struct.tb_port, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sw, align 4
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %9, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %11 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %11, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %9, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %13 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port = getelementptr inbounds %struct.tb_port, ptr %7, i32 0, i32 9
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port, align 4
  %conv = zext i8 %15 to i32
  %dst_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 2
  %16 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst_port, align 4
  %sw6 = getelementptr inbounds %struct.tb_port, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %sw6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sw6, align 4
  %route_hi.i27 = getelementptr inbounds %struct.tb_switch, ptr %19, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %route_hi.i27 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %bf.load.i28 = load i64, ptr %route_hi.i27, align 4
  %21 = lshr i64 %bf.load.i28, 1
  %shl.i29 = and i64 %21, 9223372032559808512
  %route_lo.i30 = getelementptr inbounds %struct.tb_switch, ptr %19, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %route_lo.i30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %route_lo.i30, align 8
  %conv2.i31 = zext i32 %23 to i64
  %or.i32 = or i64 %shl.i29, %conv2.i31
  %port9 = getelementptr inbounds %struct.tb_port, ptr %17, i32 0, i32 9
  %24 = ptrtoint ptr %port9 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %port9, align 4
  %conv10 = zext i8 %25 to i32
  %type = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 12
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @tb_tunnel_names, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %allocated_up = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 15
  %30 = ptrtoint ptr %allocated_up to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %allocated_up, align 4
  %allocated_down = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 16
  %32 = ptrtoint ptr %allocated_down to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %allocated_down, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_usb3_init.__UNIQUE_ID_ddebug261, ptr noundef %dev, ptr noundef nonnull @.str.63, i64 noundef %or.i, i32 noundef %conv, i64 noundef %or.i32, i32 noundef %conv10, ptr noundef %29, i32 noundef %31, i32 noundef %33) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %src_port13 = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 1
  %34 = ptrtoint ptr %src_port13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %src_port13, align 4
  %allocated_up14 = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 15
  %allocated_down15 = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 16
  %call16 = tail call i32 @usb4_usb3_port_allocate_bandwidth(ptr noundef %35, ptr noundef %allocated_up14, ptr noundef %allocated_down15) #11
  ret i32 %call16
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tb_usb3_consumed_bandwidth(ptr nocapture noundef readonly %tunnel, ptr nocapture noundef writeonly %consumed_up, ptr nocapture noundef writeonly %consumed_down) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %allocated_up = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 15
  %0 = ptrtoint ptr %allocated_up to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %allocated_up, align 4
  %mul = shl i32 %1, 2
  %div = sdiv i32 %mul, 3
  %2 = ptrtoint ptr %consumed_up to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div, ptr %consumed_up, align 4
  %allocated_down = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 16
  %3 = ptrtoint ptr %allocated_down to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %allocated_down, align 4
  %mul2 = shl i32 %4, 2
  %div3 = sdiv i32 %mul2, 3
  %5 = ptrtoint ptr %consumed_down to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div3, ptr %consumed_down, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tb_usb3_release_unused_bandwidth(ptr noundef %tunnel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %src_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 1
  %0 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src_port, align 4
  %allocated_up = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 15
  %allocated_down = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 16
  %call = tail call i32 @usb4_usb3_port_release_bandwidth(ptr noundef %1, ptr noundef %allocated_up, ptr noundef %allocated_down) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_usb3_release_unused_bandwidth.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_usb3_release_unused_bandwidth, %if.then6)) #11
          to label %cleanup [label %if.then6], !srcloc !168

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tunnel, align 4
  %nhi = getelementptr inbounds %struct.tb, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %src_port, align 4
  %sw = getelementptr inbounds %struct.tb_port, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sw, align 4
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %11, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %13 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %13, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %11, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %15 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port = getelementptr inbounds %struct.tb_port, ptr %9, i32 0, i32 9
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %port, align 4
  %conv = zext i8 %17 to i32
  %dst_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 2
  %18 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst_port, align 4
  %sw10 = getelementptr inbounds %struct.tb_port, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %sw10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sw10, align 4
  %route_hi.i31 = getelementptr inbounds %struct.tb_switch, ptr %21, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %route_hi.i31 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %bf.load.i32 = load i64, ptr %route_hi.i31, align 4
  %23 = lshr i64 %bf.load.i32, 1
  %shl.i33 = and i64 %23, 9223372032559808512
  %route_lo.i34 = getelementptr inbounds %struct.tb_switch, ptr %21, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %route_lo.i34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %route_lo.i34, align 8
  %conv2.i35 = zext i32 %25 to i64
  %or.i36 = or i64 %shl.i33, %conv2.i35
  %port13 = getelementptr inbounds %struct.tb_port, ptr %19, i32 0, i32 9
  %26 = ptrtoint ptr %port13 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %port13, align 4
  %conv14 = zext i8 %27 to i32
  %type = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 12
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @tb_tunnel_names, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %32 = ptrtoint ptr %allocated_up to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %allocated_up, align 4
  %34 = ptrtoint ptr %allocated_down to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %allocated_down, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_usb3_release_unused_bandwidth.__UNIQUE_ID_ddebug262, ptr noundef %dev, ptr noundef nonnull @.str.65, i64 noundef %or.i, i32 noundef %conv, i64 noundef %or.i36, i32 noundef %conv14, ptr noundef %31, i32 noundef %33, i32 noundef %35) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.body, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tb_usb3_reclaim_available_bandwidth(ptr nocapture noundef %tunnel, ptr nocapture noundef %available_up, ptr nocapture noundef %available_down) #0 align 64 {
entry:
  %allocate_up = alloca i32, align 4
  %allocate_down = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %allocate_up) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %allocate_down) #11
  %src_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 1
  %0 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src_port, align 4
  %call = tail call i32 @usb4_usb3_port_actual_link_rate(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tunnel, align 4
  %nhi = getelementptr inbounds %struct.tb, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %src_port, align 4
  %sw = getelementptr inbounds %struct.tb_port, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sw, align 4
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %11, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %13 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %13, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %11, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %15 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port = getelementptr inbounds %struct.tb_port, ptr %9, i32 0, i32 9
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %port, align 4
  %conv = zext i8 %17 to i32
  %dst_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 2
  %18 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst_port, align 4
  %sw5 = getelementptr inbounds %struct.tb_port, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %sw5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sw5, align 4
  %route_hi.i211 = getelementptr inbounds %struct.tb_switch, ptr %21, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %route_hi.i211 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %bf.load.i212 = load i64, ptr %route_hi.i211, align 4
  %23 = lshr i64 %bf.load.i212, 1
  %shl.i213 = and i64 %23, 9223372032559808512
  %route_lo.i214 = getelementptr inbounds %struct.tb_switch, ptr %21, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %route_lo.i214 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %route_lo.i214, align 8
  %conv2.i215 = zext i32 %25 to i64
  %or.i216 = or i64 %shl.i213, %conv2.i215
  %port8 = getelementptr inbounds %struct.tb_port, ptr %19, i32 0, i32 9
  %26 = ptrtoint ptr %port8 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %port8, align 4
  %conv9 = zext i8 %27 to i32
  %type = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 12
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @tb_tunnel_names, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.66, i64 noundef %or.i, i32 noundef %conv, i64 noundef %or.i216, i32 noundef %conv9, ptr noundef %31) #14
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then12, label %if.else.if.end44_crit_edge

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then12:                                        ; preds = %if.else
  %32 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %src_port, align 4
  %call14 = tail call i32 @usb4_usb3_port_max_link_rate(ptr noundef %33) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.body18, label %if.then12.if.end44_crit_edge

if.then12.if.end44_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

do.body18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tunnel, align 4
  %nhi24 = getelementptr inbounds %struct.tb, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %nhi24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nhi24, align 4
  %pdev25 = getelementptr inbounds %struct.tb_nhi, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %pdev25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev25, align 4
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %40 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %src_port, align 4
  %sw28 = getelementptr inbounds %struct.tb_port, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %sw28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sw28, align 4
  %route_hi.i217 = getelementptr inbounds %struct.tb_switch, ptr %43, i32 0, i32 1, i32 4
  %44 = ptrtoint ptr %route_hi.i217 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %bf.load.i218 = load i64, ptr %route_hi.i217, align 4
  %45 = lshr i64 %bf.load.i218, 1
  %shl.i219 = and i64 %45, 9223372032559808512
  %route_lo.i220 = getelementptr inbounds %struct.tb_switch, ptr %43, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %route_lo.i220 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %route_lo.i220, align 8
  %conv2.i221 = zext i32 %47 to i64
  %or.i222 = or i64 %shl.i219, %conv2.i221
  %port31 = getelementptr inbounds %struct.tb_port, ptr %41, i32 0, i32 9
  %48 = ptrtoint ptr %port31 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %port31, align 4
  %conv32 = zext i8 %49 to i32
  %dst_port33 = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 2
  %50 = ptrtoint ptr %dst_port33 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dst_port33, align 4
  %sw34 = getelementptr inbounds %struct.tb_port, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %sw34 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sw34, align 4
  %route_hi.i223 = getelementptr inbounds %struct.tb_switch, ptr %53, i32 0, i32 1, i32 4
  %54 = ptrtoint ptr %route_hi.i223 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %bf.load.i224 = load i64, ptr %route_hi.i223, align 4
  %55 = lshr i64 %bf.load.i224, 1
  %shl.i225 = and i64 %55, 9223372032559808512
  %route_lo.i226 = getelementptr inbounds %struct.tb_switch, ptr %53, i32 0, i32 1, i32 3
  %56 = ptrtoint ptr %route_lo.i226 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %route_lo.i226, align 8
  %conv2.i227 = zext i32 %57 to i64
  %or.i228 = or i64 %shl.i225, %conv2.i227
  %port37 = getelementptr inbounds %struct.tb_port, ptr %51, i32 0, i32 9
  %58 = ptrtoint ptr %port37 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %port37, align 4
  %conv38 = zext i8 %59 to i32
  %type39 = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 12
  %60 = ptrtoint ptr %type39 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %type39, align 4
  %arrayidx40 = getelementptr [4 x ptr], ptr @tb_tunnel_names, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx40, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26, ptr noundef nonnull @.str.69, i64 noundef %or.i222, i32 noundef %conv32, i64 noundef %or.i228, i32 noundef %conv38, ptr noundef %63) #14
  br label %cleanup

if.end44:                                         ; preds = %if.then12.if.end44_crit_edge, %if.else.if.end44_crit_edge
  %ret.0 = phi i32 [ %call, %if.else.if.end44_crit_edge ], [ %call14, %if.then12.if.end44_crit_edge ]
  %mul = mul i32 %ret.0, 90
  %div = sdiv i32 %mul, 100
  %allocated_up = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 15
  %64 = ptrtoint ptr %allocated_up to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %allocated_up, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %div)
  %cmp45.not = icmp slt i32 %65, %div
  br i1 %cmp45.not, label %if.end44.if.end50_crit_edge, label %land.lhs.true

if.end44.if.end50_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

land.lhs.true:                                    ; preds = %if.end44
  %allocated_down = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 16
  %66 = ptrtoint ptr %allocated_down to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %allocated_down, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %div)
  %cmp47.not = icmp slt i32 %67, %div
  br i1 %cmp47.not, label %land.lhs.true.if.end50_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.end50:                                         ; preds = %land.lhs.true.if.end50_crit_edge, %if.end44.if.end50_crit_edge
  %68 = ptrtoint ptr %available_up to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %available_up, align 4
  %70 = tail call i32 @llvm.smin.i32(i32 %div, i32 %69)
  %71 = tail call i32 @llvm.smax.i32(i32 %70, i32 %65)
  %72 = ptrtoint ptr %allocate_up to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %allocate_up, align 4
  %73 = ptrtoint ptr %available_down to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %available_down, align 4
  %75 = tail call i32 @llvm.smin.i32(i32 %div, i32 %74)
  %allocated_down66 = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 16
  %76 = ptrtoint ptr %allocated_down66 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %allocated_down66, align 4
  %78 = tail call i32 @llvm.smax.i32(i32 %75, i32 %77)
  %79 = ptrtoint ptr %allocate_down to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %allocate_down, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %70)
  %cmp73 = icmp sge i32 %65, %70
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %75)
  %cmp77 = icmp sge i32 %77, %75
  %or.cond = select i1 %cmp73, i1 %cmp77, i1 false
  br i1 %or.cond, label %if.end50.cleanup_crit_edge, label %if.end80

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end80:                                         ; preds = %if.end50
  %80 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %src_port, align 4
  %call82 = call i32 @usb4_usb3_port_allocate_bandwidth(ptr noundef %81, ptr noundef nonnull %allocate_up, ptr noundef nonnull %allocate_down) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end110, label %do.body85

do.body85:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tunnel, align 4
  %nhi91 = getelementptr inbounds %struct.tb, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %nhi91 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %nhi91, align 4
  %pdev92 = getelementptr inbounds %struct.tb_nhi, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %pdev92 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdev92, align 4
  %dev93 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %88 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %src_port, align 4
  %sw95 = getelementptr inbounds %struct.tb_port, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %sw95 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sw95, align 4
  %route_hi.i229 = getelementptr inbounds %struct.tb_switch, ptr %91, i32 0, i32 1, i32 4
  %92 = ptrtoint ptr %route_hi.i229 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 8)
  %bf.load.i230 = load i64, ptr %route_hi.i229, align 4
  %93 = lshr i64 %bf.load.i230, 1
  %shl.i231 = and i64 %93, 9223372032559808512
  %route_lo.i232 = getelementptr inbounds %struct.tb_switch, ptr %91, i32 0, i32 1, i32 3
  %94 = ptrtoint ptr %route_lo.i232 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %route_lo.i232, align 8
  %conv2.i233 = zext i32 %95 to i64
  %or.i234 = or i64 %shl.i231, %conv2.i233
  %port98 = getelementptr inbounds %struct.tb_port, ptr %89, i32 0, i32 9
  %96 = ptrtoint ptr %port98 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %port98, align 4
  %conv99 = zext i8 %97 to i32
  %dst_port100 = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 2
  %98 = ptrtoint ptr %dst_port100 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dst_port100, align 4
  %sw101 = getelementptr inbounds %struct.tb_port, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %sw101 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sw101, align 4
  %route_hi.i235 = getelementptr inbounds %struct.tb_switch, ptr %101, i32 0, i32 1, i32 4
  %102 = ptrtoint ptr %route_hi.i235 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 8)
  %bf.load.i236 = load i64, ptr %route_hi.i235, align 4
  %103 = lshr i64 %bf.load.i236, 1
  %shl.i237 = and i64 %103, 9223372032559808512
  %route_lo.i238 = getelementptr inbounds %struct.tb_switch, ptr %101, i32 0, i32 1, i32 3
  %104 = ptrtoint ptr %route_lo.i238 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %route_lo.i238, align 8
  %conv2.i239 = zext i32 %105 to i64
  %or.i240 = or i64 %shl.i237, %conv2.i239
  %port104 = getelementptr inbounds %struct.tb_port, ptr %99, i32 0, i32 9
  %106 = ptrtoint ptr %port104 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %port104, align 4
  %conv105 = zext i8 %107 to i32
  %type106 = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 12
  %108 = ptrtoint ptr %type106 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %type106, align 4
  %arrayidx107 = getelementptr [4 x ptr], ptr @tb_tunnel_names, i32 0, i32 %109
  %110 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx107, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev93, ptr noundef nonnull @.str.72, i64 noundef %or.i234, i32 noundef %conv99, i64 noundef %or.i240, i32 noundef %conv105, ptr noundef %111) #14
  br label %cleanup

if.end110:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  %112 = ptrtoint ptr %allocate_up to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %allocate_up, align 4
  %114 = ptrtoint ptr %allocated_up to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %allocated_up, align 4
  %115 = ptrtoint ptr %available_up to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %available_up, align 4
  %sub = sub i32 %116, %113
  store i32 %sub, ptr %available_up, align 4
  %117 = ptrtoint ptr %allocate_down to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %allocate_down, align 4
  %119 = ptrtoint ptr %allocated_down66 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %allocated_down66, align 4
  %120 = ptrtoint ptr %available_down to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %available_down, align 4
  %sub115 = sub i32 %121, %118
  store i32 %sub115, ptr %available_down, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_usb3_reclaim_available_bandwidth.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_usb3_reclaim_available_bandwidth, %if.then124)) #11
          to label %cleanup [label %if.then124], !srcloc !168

if.then124:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  %122 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tunnel, align 4
  %nhi126 = getelementptr inbounds %struct.tb, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %nhi126 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %nhi126, align 4
  %pdev127 = getelementptr inbounds %struct.tb_nhi, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %pdev127 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pdev127, align 4
  %dev128 = getelementptr inbounds %struct.pci_dev, ptr %127, i32 0, i32 44
  %128 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %src_port, align 4
  %sw130 = getelementptr inbounds %struct.tb_port, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %sw130 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %sw130, align 4
  %route_hi.i241 = getelementptr inbounds %struct.tb_switch, ptr %131, i32 0, i32 1, i32 4
  %132 = ptrtoint ptr %route_hi.i241 to i32
  call void @__asan_loadN_noabort(i32 %132, i32 8)
  %bf.load.i242 = load i64, ptr %route_hi.i241, align 4
  %133 = lshr i64 %bf.load.i242, 1
  %shl.i243 = and i64 %133, 9223372032559808512
  %route_lo.i244 = getelementptr inbounds %struct.tb_switch, ptr %131, i32 0, i32 1, i32 3
  %134 = ptrtoint ptr %route_lo.i244 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %route_lo.i244, align 8
  %conv2.i245 = zext i32 %135 to i64
  %or.i246 = or i64 %shl.i243, %conv2.i245
  %port133 = getelementptr inbounds %struct.tb_port, ptr %129, i32 0, i32 9
  %136 = ptrtoint ptr %port133 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %port133, align 4
  %conv134 = zext i8 %137 to i32
  %dst_port135 = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 2
  %138 = ptrtoint ptr %dst_port135 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dst_port135, align 4
  %sw136 = getelementptr inbounds %struct.tb_port, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %sw136 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %sw136, align 4
  %route_hi.i247 = getelementptr inbounds %struct.tb_switch, ptr %141, i32 0, i32 1, i32 4
  %142 = ptrtoint ptr %route_hi.i247 to i32
  call void @__asan_loadN_noabort(i32 %142, i32 8)
  %bf.load.i248 = load i64, ptr %route_hi.i247, align 4
  %143 = lshr i64 %bf.load.i248, 1
  %shl.i249 = and i64 %143, 9223372032559808512
  %route_lo.i250 = getelementptr inbounds %struct.tb_switch, ptr %141, i32 0, i32 1, i32 3
  %144 = ptrtoint ptr %route_lo.i250 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %route_lo.i250, align 8
  %conv2.i251 = zext i32 %145 to i64
  %or.i252 = or i64 %shl.i249, %conv2.i251
  %port139 = getelementptr inbounds %struct.tb_port, ptr %139, i32 0, i32 9
  %146 = ptrtoint ptr %port139 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %port139, align 4
  %conv140 = zext i8 %147 to i32
  %type141 = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 12
  %148 = ptrtoint ptr %type141 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %type141, align 4
  %arrayidx142 = getelementptr [4 x ptr], ptr @tb_tunnel_names, i32 0, i32 %149
  %150 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx142, align 4
  %152 = ptrtoint ptr %allocated_up to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %allocated_up, align 4
  %154 = ptrtoint ptr %allocated_down66 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %allocated_down66, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_usb3_reclaim_available_bandwidth.__UNIQUE_ID_ddebug267, ptr noundef %dev128, ptr noundef nonnull @.str.74, i64 noundef %or.i246, i32 noundef %conv134, i64 noundef %or.i252, i32 noundef %conv140, ptr noundef %151, i32 noundef %153, i32 noundef %155) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then124, %if.end110, %do.body85, %if.end50.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.body18, %do.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %allocate_down) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %allocate_up) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tb_tunnel_alloc_usb3(ptr noundef %tb, ptr noundef %up, ptr noundef %down, i32 noundef %max_up, i32 noundef %max_down) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_up)
  %cmp = icmp sgt i32 %max_up, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_down)
  %cmp1 = icmp sgt i32 %max_down, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %entry.if.end38_crit_edge

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @usb4_usb3_port_max_link_rate(ptr noundef %down) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @usb4_usb3_port_max_link_rate(ptr noundef %up) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %0 = tail call i32 @llvm.umin.i32(i32 %call.i, i32 %call1.i) #11
  %mul = mul i32 %0, 90
  %div = sdiv i32 %mul, 100
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_tunnel_alloc_usb3.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_tunnel_alloc_usb3, %if.then8)) #11
          to label %do.end [label %if.then8], !srcloc !168

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sw = getelementptr inbounds %struct.tb_port, ptr %up, i32 0, i32 1
  %1 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sw, align 4
  %tb9 = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %tb9 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tb9, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %10 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %10, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %12 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port = getelementptr inbounds %struct.tb_port, ptr %up, i32 0, i32 9
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %port, align 4
  %conv = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_tunnel_alloc_usb3.__UNIQUE_ID_ddebug270, ptr noundef %dev, ptr noundef nonnull @.str.37, i64 noundef %or.i, i32 noundef %conv, i32 noundef %div) #11
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %max_up)
  %cmp15 = icmp sgt i32 %div, %max_up
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %max_down)
  %cmp18 = icmp sgt i32 %div, %max_down
  %or.cond108 = or i1 %cmp15, %cmp18
  br i1 %or.cond108, label %do.body21, label %do.end.if.end38_crit_edge

do.end.if.end38_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

do.body21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %sw26 = getelementptr inbounds %struct.tb_port, ptr %up, i32 0, i32 1
  %15 = ptrtoint ptr %sw26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sw26, align 4
  %tb27 = getelementptr inbounds %struct.tb_switch, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %tb27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tb27, align 8
  %nhi28 = getelementptr inbounds %struct.tb, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %nhi28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nhi28, align 4
  %pdev29 = getelementptr inbounds %struct.tb_nhi, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %pdev29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev29, align 4
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %route_hi.i110 = getelementptr inbounds %struct.tb_switch, ptr %16, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %route_hi.i110 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %bf.load.i111 = load i64, ptr %route_hi.i110, align 4
  %24 = lshr i64 %bf.load.i111, 1
  %shl.i112 = and i64 %24, 9223372032559808512
  %route_lo.i113 = getelementptr inbounds %struct.tb_switch, ptr %16, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %route_lo.i113 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %route_lo.i113, align 8
  %conv2.i114 = zext i32 %26 to i64
  %or.i115 = or i64 %shl.i112, %conv2.i114
  %port33 = getelementptr inbounds %struct.tb_port, ptr %up, i32 0, i32 9
  %27 = ptrtoint ptr %port33 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %port33, align 4
  %conv34 = zext i8 %28 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev30, ptr noundef nonnull @.str.38, i64 noundef %or.i115, i32 noundef %conv34) #14
  br label %cleanup

if.end38:                                         ; preds = %do.end.if.end38_crit_edge, %entry.if.end38_crit_edge
  %max_rate.0 = phi i32 [ 0, %entry.if.end38_crit_edge ], [ %div, %do.end.if.end38_crit_edge ]
  %call39 = tail call fastcc ptr @tb_tunnel_alloc(ptr noundef %tb, i32 noundef 2, i32 noundef 3)
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.end38.cleanup_crit_edge, label %if.end42

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  %activate = getelementptr inbounds %struct.tb_tunnel, ptr %call39, i32 0, i32 7
  %29 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @tb_usb3_activate, ptr %activate, align 4
  %src_port = getelementptr inbounds %struct.tb_tunnel, ptr %call39, i32 0, i32 1
  %30 = ptrtoint ptr %src_port to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %down, ptr %src_port, align 4
  %dst_port = getelementptr inbounds %struct.tb_tunnel, ptr %call39, i32 0, i32 2
  %31 = ptrtoint ptr %dst_port to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %up, ptr %dst_port, align 4
  %max_up43 = getelementptr inbounds %struct.tb_tunnel, ptr %call39, i32 0, i32 13
  %32 = ptrtoint ptr %max_up43 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %max_up, ptr %max_up43, align 4
  %max_down44 = getelementptr inbounds %struct.tb_tunnel, ptr %call39, i32 0, i32 14
  %33 = ptrtoint ptr %max_down44 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %max_down, ptr %max_down44, align 4
  %call45 = tail call ptr @tb_path_alloc(ptr noundef %tb, ptr noundef %down, i32 noundef 8, ptr noundef %up, i32 noundef 8, i32 noundef 0, ptr noundef nonnull @.str.27) #11
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end.i116, label %if.end48

if.end.i116:                                      ; preds = %if.end42
  %deinit.i = getelementptr inbounds %struct.tb_tunnel, ptr %call39, i32 0, i32 6
  %34 = ptrtoint ptr %deinit.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %deinit.i, align 4
  %tobool1.not.i = icmp eq ptr %35, null
  br i1 %tobool1.not.i, label %if.end.i116.if.end4.i_crit_edge, label %if.then2.i

if.end.i116.if.end4.i_crit_edge:                  ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %35(ptr noundef nonnull %call39) #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i116.if.end4.i_crit_edge
  %npaths.i = getelementptr inbounds %struct.tb_tunnel, ptr %call39, i32 0, i32 4
  %36 = ptrtoint ptr %npaths.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %npaths.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp23.not.i = icmp eq i32 %37, 0
  br i1 %cmp23.not.i, label %if.end4.i.tb_tunnel_free.exit_crit_edge, label %for.body.lr.ph.i

if.end4.i.tb_tunnel_free.exit_crit_edge:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_free.exit

for.body.lr.ph.i:                                 ; preds = %if.end4.i
  %paths.i = getelementptr inbounds %struct.tb_tunnel, ptr %call39, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %38 = ptrtoint ptr %paths.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %paths.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %39, i32 %i.024.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not.i = icmp eq ptr %41, null
  br i1 %tobool5.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then6.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tb_path_free(ptr noundef nonnull %41) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.024.i, 1
  %42 = ptrtoint ptr %npaths.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %npaths.i, align 4
  %cmp.i117 = icmp ult i32 %inc.i, %43
  br i1 %cmp.i117, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.tb_tunnel_free.exit_crit_edge

for.inc.i.tb_tunnel_free.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_free.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

tb_tunnel_free.exit:                              ; preds = %for.inc.i.tb_tunnel_free.exit_crit_edge, %if.end4.i.tb_tunnel_free.exit_crit_edge
  %paths10.i = getelementptr inbounds %struct.tb_tunnel, ptr %call39, i32 0, i32 3
  %44 = ptrtoint ptr %paths10.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %paths10.i, align 4
  tail call void @kfree(ptr noundef %45) #11
  tail call void @kfree(ptr noundef nonnull %call39) #11
  br label %cleanup

if.end48:                                         ; preds = %if.end42
  %egress_fc_enable.i = getelementptr inbounds %struct.tb_path, ptr %call45, i32 0, i32 5
  %46 = ptrtoint ptr %egress_fc_enable.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3, ptr %egress_fc_enable.i, align 4
  %egress_shared_buffer.i = getelementptr inbounds %struct.tb_path, ptr %call45, i32 0, i32 3
  %47 = ptrtoint ptr %egress_shared_buffer.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %egress_shared_buffer.i, align 4
  %ingress_fc_enable.i = getelementptr inbounds %struct.tb_path, ptr %call45, i32 0, i32 4
  %48 = ptrtoint ptr %ingress_fc_enable.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 7, ptr %ingress_fc_enable.i, align 4
  %ingress_shared_buffer.i = getelementptr inbounds %struct.tb_path, ptr %call45, i32 0, i32 2
  %49 = ptrtoint ptr %ingress_shared_buffer.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %ingress_shared_buffer.i, align 4
  %priority.i = getelementptr inbounds %struct.tb_path, ptr %call45, i32 0, i32 6
  %50 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i118 = load i8, ptr %priority.i, align 4
  %bf.clear.i = and i8 %bf.load.i118, 1
  %bf.set3.i = or i8 %bf.clear.i, 102
  store i8 %bf.set3.i, ptr %priority.i, align 4
  %drop_packages.i = getelementptr inbounds %struct.tb_path, ptr %call45, i32 0, i32 7
  %51 = ptrtoint ptr %drop_packages.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %drop_packages.i, align 1
  %hops.i = getelementptr inbounds %struct.tb_path, ptr %call45, i32 0, i32 10
  %52 = ptrtoint ptr %hops.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hops.i, align 4
  %path_length.i = getelementptr inbounds %struct.tb_path, ptr %call45, i32 0, i32 11
  %54 = ptrtoint ptr %path_length.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %path_length.i, align 4
  %sub17.i = add i32 %55, -1
  %arrayidx518.i = getelementptr %struct.tb_path_hop, ptr %53, i32 %sub17.i
  %cmp.not19.i = icmp ugt ptr %53, %arrayidx518.i
  br i1 %cmp.not19.i, label %if.end48.tb_usb3_init_path.exit_crit_edge, label %if.end48.for.body.i119_crit_edge

if.end48.for.body.i119_crit_edge:                 ; preds = %if.end48
  br label %for.body.i119

if.end48.tb_usb3_init_path.exit_crit_edge:        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_usb3_init_path.exit

for.body.i119:                                    ; preds = %tb_usb3_init_credits.exit.i.for.body.i119_crit_edge, %if.end48.for.body.i119_crit_edge
  %hop.020.i = phi ptr [ %incdec.ptr.i, %tb_usb3_init_credits.exit.i.for.body.i119_crit_edge ], [ %53, %if.end48.for.body.i119_crit_edge ]
  %56 = ptrtoint ptr %hop.020.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hop.020.i, align 4
  %sw1.i.i = getelementptr inbounds %struct.tb_port, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %sw1.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sw1.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i.i.i, label %for.body.i119.tb_usb3_init_credits.exit.i_crit_edge, label %land.lhs.true.i.i.i.i

for.body.i119.tb_usb3_init_credits.exit.i_crit_edge: ; preds = %for.body.i119
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_usb3_init_credits.exit.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i119
  %port1.i.i.i.i = getelementptr inbounds %struct.tb_port, ptr %57, i32 0, i32 9
  %60 = ptrtoint ptr %port1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %port1.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool2.not.i.i.i.i = icmp eq i8 %61, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.tb_usb3_init_credits.exit.i_crit_edge, label %tb_port_is_null.exit.i.i.i

land.lhs.true.i.i.i.i.tb_usb3_init_credits.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_usb3_init_credits.exit.i

tb_port_is_null.exit.i.i.i:                       ; preds = %land.lhs.true.i.i.i.i
  %type.i.i.i.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %57, i32 0, i32 2
  %62 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 12)
  %bf.load.i.i.i.i = load i96, ptr %type.i.i.i.i, align 4
  %63 = and i96 %bf.load.i.i.i.i, 18446742974197923840
  %cmp.i.i.i.i = icmp eq i96 %63, 1099511627776
  br i1 %cmp.i.i.i.i, label %tb_port_use_credit_allocation.exit.i.i, label %tb_port_is_null.exit.i.i.i.tb_usb3_init_credits.exit.i_crit_edge

tb_port_is_null.exit.i.i.i.tb_usb3_init_credits.exit.i_crit_edge: ; preds = %tb_port_is_null.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_usb3_init_credits.exit.i

tb_port_use_credit_allocation.exit.i.i:           ; preds = %tb_port_is_null.exit.i.i.i
  %credit_allocation.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %59, i32 0, i32 37
  %64 = ptrtoint ptr %credit_allocation.i.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %credit_allocation.i.i.i, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.i.not.i.i = icmp eq i8 %65, 0
  br i1 %tobool.i.not.i.i, label %if.then3.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %tb_port_use_credit_allocation.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %max_usb3_credits.i.i = getelementptr inbounds %struct.tb_switch, ptr %59, i32 0, i32 38
  %66 = ptrtoint ptr %max_usb3_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_usb3_credits.i.i, align 4
  br label %tb_usb3_init_credits.exit.i

if.then3.i.i:                                     ; preds = %tb_port_use_credit_allocation.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bonded.i.i = getelementptr inbounds %struct.tb_port, ptr %57, i32 0, i32 11
  %68 = ptrtoint ptr %bonded.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bonded.i.i, align 2, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i.i = icmp eq i8 %69, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 16, i32 32
  br label %tb_usb3_init_credits.exit.i

tb_usb3_init_credits.exit.i:                      ; preds = %if.then3.i.i, %if.then.i.i, %tb_port_is_null.exit.i.i.i.tb_usb3_init_credits.exit.i_crit_edge, %land.lhs.true.i.i.i.i.tb_usb3_init_credits.exit.i_crit_edge, %for.body.i119.tb_usb3_init_credits.exit.i_crit_edge
  %credits.0.i.i = phi i32 [ %67, %if.then.i.i ], [ %cond.i.i, %if.then3.i.i ], [ 7, %for.body.i119.tb_usb3_init_credits.exit.i_crit_edge ], [ 7, %land.lhs.true.i.i.i.i.tb_usb3_init_credits.exit.i_crit_edge ], [ 7, %tb_port_is_null.exit.i.i.i.tb_usb3_init_credits.exit.i_crit_edge ]
  %initial_credits.i.i = getelementptr inbounds %struct.tb_path_hop, ptr %hop.020.i, i32 0, i32 5
  %70 = ptrtoint ptr %initial_credits.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %credits.0.i.i, ptr %initial_credits.i.i, align 4
  %incdec.ptr.i = getelementptr %struct.tb_path_hop, ptr %hop.020.i, i32 1
  %71 = ptrtoint ptr %hops.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hops.i, align 4
  %73 = ptrtoint ptr %path_length.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %path_length.i, align 4
  %sub.i = add i32 %74, -1
  %arrayidx5.i = getelementptr %struct.tb_path_hop, ptr %72, i32 %sub.i
  %cmp.not.i = icmp ugt ptr %incdec.ptr.i, %arrayidx5.i
  br i1 %cmp.not.i, label %tb_usb3_init_credits.exit.i.tb_usb3_init_path.exit_crit_edge, label %tb_usb3_init_credits.exit.i.for.body.i119_crit_edge

tb_usb3_init_credits.exit.i.for.body.i119_crit_edge: ; preds = %tb_usb3_init_credits.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i119

tb_usb3_init_credits.exit.i.tb_usb3_init_path.exit_crit_edge: ; preds = %tb_usb3_init_credits.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_usb3_init_path.exit

tb_usb3_init_path.exit:                           ; preds = %tb_usb3_init_credits.exit.i.tb_usb3_init_path.exit_crit_edge, %if.end48.tb_usb3_init_path.exit_crit_edge
  %paths = getelementptr inbounds %struct.tb_tunnel, ptr %call39, i32 0, i32 3
  %75 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %paths, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call45, ptr %76, align 4
  %call49 = tail call ptr @tb_path_alloc(ptr noundef %tb, ptr noundef %up, i32 noundef 8, ptr noundef %down, i32 noundef 8, i32 noundef 0, ptr noundef nonnull @.str.28) #11
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %if.end.i124, label %if.end52

if.end.i124:                                      ; preds = %tb_usb3_init_path.exit
  %deinit.i122 = getelementptr inbounds %struct.tb_tunnel, ptr %call39, i32 0, i32 6
  %78 = ptrtoint ptr %deinit.i122 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %deinit.i122, align 4
  %tobool1.not.i123 = icmp eq ptr %79, null
  br i1 %tobool1.not.i123, label %if.end.i124.if.end4.i128_crit_edge, label %if.then2.i125

if.end.i124.if.end4.i128_crit_edge:               ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i128

if.then2.i125:                                    ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %79(ptr noundef nonnull %call39) #11
  br label %if.end4.i128

if.end4.i128:                                     ; preds = %if.then2.i125, %if.end.i124.if.end4.i128_crit_edge
  %npaths.i126 = getelementptr inbounds %struct.tb_tunnel, ptr %call39, i32 0, i32 4
  %80 = ptrtoint ptr %npaths.i126 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %npaths.i126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp23.not.i127 = icmp eq i32 %81, 0
  br i1 %cmp23.not.i127, label %if.end4.i128.tb_tunnel_free.exit141_crit_edge, label %if.end4.i128.for.body.i134_crit_edge

if.end4.i128.for.body.i134_crit_edge:             ; preds = %if.end4.i128
  br label %for.body.i134

if.end4.i128.tb_tunnel_free.exit141_crit_edge:    ; preds = %if.end4.i128
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_free.exit141

for.body.i134:                                    ; preds = %for.inc.i138.for.body.i134_crit_edge, %if.end4.i128.for.body.i134_crit_edge
  %i.024.i131 = phi i32 [ %inc.i136, %for.inc.i138.for.body.i134_crit_edge ], [ 0, %if.end4.i128.for.body.i134_crit_edge ]
  %82 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %paths, align 4
  %arrayidx.i132 = getelementptr ptr, ptr %83, i32 %i.024.i131
  %84 = ptrtoint ptr %arrayidx.i132 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i132, align 4
  %tobool5.not.i133 = icmp eq ptr %85, null
  br i1 %tobool5.not.i133, label %for.body.i134.for.inc.i138_crit_edge, label %if.then6.i135

for.body.i134.for.inc.i138_crit_edge:             ; preds = %for.body.i134
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i138

if.then6.i135:                                    ; preds = %for.body.i134
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tb_path_free(ptr noundef nonnull %85) #11
  br label %for.inc.i138

for.inc.i138:                                     ; preds = %if.then6.i135, %for.body.i134.for.inc.i138_crit_edge
  %inc.i136 = add nuw i32 %i.024.i131, 1
  %86 = ptrtoint ptr %npaths.i126 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %npaths.i126, align 4
  %cmp.i137 = icmp ult i32 %inc.i136, %87
  br i1 %cmp.i137, label %for.inc.i138.for.body.i134_crit_edge, label %for.inc.i138.tb_tunnel_free.exit141_crit_edge

for.inc.i138.tb_tunnel_free.exit141_crit_edge:    ; preds = %for.inc.i138
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_free.exit141

for.inc.i138.for.body.i134_crit_edge:             ; preds = %for.inc.i138
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i134

tb_tunnel_free.exit141:                           ; preds = %for.inc.i138.tb_tunnel_free.exit141_crit_edge, %if.end4.i128.tb_tunnel_free.exit141_crit_edge
  %88 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %paths, align 4
  tail call void @kfree(ptr noundef %89) #11
  tail call void @kfree(ptr noundef nonnull %call39) #11
  br label %cleanup

if.end52:                                         ; preds = %tb_usb3_init_path.exit
  %egress_fc_enable.i142 = getelementptr inbounds %struct.tb_path, ptr %call49, i32 0, i32 5
  %90 = ptrtoint ptr %egress_fc_enable.i142 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 3, ptr %egress_fc_enable.i142, align 4
  %egress_shared_buffer.i143 = getelementptr inbounds %struct.tb_path, ptr %call49, i32 0, i32 3
  %91 = ptrtoint ptr %egress_shared_buffer.i143 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %egress_shared_buffer.i143, align 4
  %ingress_fc_enable.i144 = getelementptr inbounds %struct.tb_path, ptr %call49, i32 0, i32 4
  %92 = ptrtoint ptr %ingress_fc_enable.i144 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 7, ptr %ingress_fc_enable.i144, align 4
  %ingress_shared_buffer.i145 = getelementptr inbounds %struct.tb_path, ptr %call49, i32 0, i32 2
  %93 = ptrtoint ptr %ingress_shared_buffer.i145 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %ingress_shared_buffer.i145, align 4
  %priority.i146 = getelementptr inbounds %struct.tb_path, ptr %call49, i32 0, i32 6
  %94 = ptrtoint ptr %priority.i146 to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load.i147 = load i8, ptr %priority.i146, align 4
  %bf.clear.i148 = and i8 %bf.load.i147, 1
  %bf.set3.i149 = or i8 %bf.clear.i148, 102
  store i8 %bf.set3.i149, ptr %priority.i146, align 4
  %drop_packages.i150 = getelementptr inbounds %struct.tb_path, ptr %call49, i32 0, i32 7
  %95 = ptrtoint ptr %drop_packages.i150 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %drop_packages.i150, align 1
  %hops.i151 = getelementptr inbounds %struct.tb_path, ptr %call49, i32 0, i32 10
  %96 = ptrtoint ptr %hops.i151 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hops.i151, align 4
  %path_length.i152 = getelementptr inbounds %struct.tb_path, ptr %call49, i32 0, i32 11
  %98 = ptrtoint ptr %path_length.i152 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %path_length.i152, align 4
  %sub17.i153 = add i32 %99, -1
  %arrayidx518.i154 = getelementptr %struct.tb_path_hop, ptr %97, i32 %sub17.i153
  %cmp.not19.i155 = icmp ugt ptr %97, %arrayidx518.i154
  br i1 %cmp.not19.i155, label %if.end52.tb_usb3_init_path.exit184_crit_edge, label %if.end52.for.body.i159_crit_edge

if.end52.for.body.i159_crit_edge:                 ; preds = %if.end52
  br label %for.body.i159

if.end52.tb_usb3_init_path.exit184_crit_edge:     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_usb3_init_path.exit184

for.body.i159:                                    ; preds = %tb_usb3_init_credits.exit.i182.for.body.i159_crit_edge, %if.end52.for.body.i159_crit_edge
  %hop.020.i156 = phi ptr [ %incdec.ptr.i178, %tb_usb3_init_credits.exit.i182.for.body.i159_crit_edge ], [ %97, %if.end52.for.body.i159_crit_edge ]
  %100 = ptrtoint ptr %hop.020.i156 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hop.020.i156, align 4
  %sw1.i.i157 = getelementptr inbounds %struct.tb_port, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %sw1.i.i157 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %sw1.i.i157, align 4
  %tobool.not.i.i.i.i158 = icmp eq ptr %101, null
  br i1 %tobool.not.i.i.i.i158, label %for.body.i159.tb_usb3_init_credits.exit.i182_crit_edge, label %land.lhs.true.i.i.i.i162

for.body.i159.tb_usb3_init_credits.exit.i182_crit_edge: ; preds = %for.body.i159
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_usb3_init_credits.exit.i182

land.lhs.true.i.i.i.i162:                         ; preds = %for.body.i159
  %port1.i.i.i.i160 = getelementptr inbounds %struct.tb_port, ptr %101, i32 0, i32 9
  %104 = ptrtoint ptr %port1.i.i.i.i160 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %port1.i.i.i.i160, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool2.not.i.i.i.i161 = icmp eq i8 %105, 0
  br i1 %tobool2.not.i.i.i.i161, label %land.lhs.true.i.i.i.i162.tb_usb3_init_credits.exit.i182_crit_edge, label %tb_port_is_null.exit.i.i.i166

land.lhs.true.i.i.i.i162.tb_usb3_init_credits.exit.i182_crit_edge: ; preds = %land.lhs.true.i.i.i.i162
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_usb3_init_credits.exit.i182

tb_port_is_null.exit.i.i.i166:                    ; preds = %land.lhs.true.i.i.i.i162
  %type.i.i.i.i163 = getelementptr inbounds %struct.tb_regs_port_header, ptr %101, i32 0, i32 2
  %106 = ptrtoint ptr %type.i.i.i.i163 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 12)
  %bf.load.i.i.i.i164 = load i96, ptr %type.i.i.i.i163, align 4
  %107 = and i96 %bf.load.i.i.i.i164, 18446742974197923840
  %cmp.i.i.i.i165 = icmp eq i96 %107, 1099511627776
  br i1 %cmp.i.i.i.i165, label %tb_port_use_credit_allocation.exit.i.i169, label %tb_port_is_null.exit.i.i.i166.tb_usb3_init_credits.exit.i182_crit_edge

tb_port_is_null.exit.i.i.i166.tb_usb3_init_credits.exit.i182_crit_edge: ; preds = %tb_port_is_null.exit.i.i.i166
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_usb3_init_credits.exit.i182

tb_port_use_credit_allocation.exit.i.i169:        ; preds = %tb_port_is_null.exit.i.i.i166
  %credit_allocation.i.i.i167 = getelementptr inbounds %struct.tb_switch, ptr %103, i32 0, i32 37
  %108 = ptrtoint ptr %credit_allocation.i.i.i167 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %credit_allocation.i.i.i167, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.i.not.i.i168 = icmp eq i8 %109, 0
  br i1 %tobool.i.not.i.i168, label %if.then3.i.i175, label %if.then.i.i171

if.then.i.i171:                                   ; preds = %tb_port_use_credit_allocation.exit.i.i169
  call void @__sanitizer_cov_trace_pc() #13
  %max_usb3_credits.i.i170 = getelementptr inbounds %struct.tb_switch, ptr %103, i32 0, i32 38
  %110 = ptrtoint ptr %max_usb3_credits.i.i170 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %max_usb3_credits.i.i170, align 4
  br label %tb_usb3_init_credits.exit.i182

if.then3.i.i175:                                  ; preds = %tb_port_use_credit_allocation.exit.i.i169
  call void @__sanitizer_cov_trace_pc() #13
  %bonded.i.i172 = getelementptr inbounds %struct.tb_port, ptr %101, i32 0, i32 11
  %112 = ptrtoint ptr %bonded.i.i172 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %bonded.i.i172, align 2, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i.i173 = icmp eq i8 %113, 0
  %cond.i.i174 = select i1 %tobool.not.i.i173, i32 16, i32 32
  br label %tb_usb3_init_credits.exit.i182

tb_usb3_init_credits.exit.i182:                   ; preds = %if.then3.i.i175, %if.then.i.i171, %tb_port_is_null.exit.i.i.i166.tb_usb3_init_credits.exit.i182_crit_edge, %land.lhs.true.i.i.i.i162.tb_usb3_init_credits.exit.i182_crit_edge, %for.body.i159.tb_usb3_init_credits.exit.i182_crit_edge
  %credits.0.i.i176 = phi i32 [ %111, %if.then.i.i171 ], [ %cond.i.i174, %if.then3.i.i175 ], [ 7, %for.body.i159.tb_usb3_init_credits.exit.i182_crit_edge ], [ 7, %land.lhs.true.i.i.i.i162.tb_usb3_init_credits.exit.i182_crit_edge ], [ 7, %tb_port_is_null.exit.i.i.i166.tb_usb3_init_credits.exit.i182_crit_edge ]
  %initial_credits.i.i177 = getelementptr inbounds %struct.tb_path_hop, ptr %hop.020.i156, i32 0, i32 5
  %114 = ptrtoint ptr %initial_credits.i.i177 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %credits.0.i.i176, ptr %initial_credits.i.i177, align 4
  %incdec.ptr.i178 = getelementptr %struct.tb_path_hop, ptr %hop.020.i156, i32 1
  %115 = ptrtoint ptr %hops.i151 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hops.i151, align 4
  %117 = ptrtoint ptr %path_length.i152 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %path_length.i152, align 4
  %sub.i179 = add i32 %118, -1
  %arrayidx5.i180 = getelementptr %struct.tb_path_hop, ptr %116, i32 %sub.i179
  %cmp.not.i181 = icmp ugt ptr %incdec.ptr.i178, %arrayidx5.i180
  br i1 %cmp.not.i181, label %tb_usb3_init_credits.exit.i182.tb_usb3_init_path.exit184_crit_edge, label %tb_usb3_init_credits.exit.i182.for.body.i159_crit_edge

tb_usb3_init_credits.exit.i182.for.body.i159_crit_edge: ; preds = %tb_usb3_init_credits.exit.i182
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i159

tb_usb3_init_credits.exit.i182.tb_usb3_init_path.exit184_crit_edge: ; preds = %tb_usb3_init_credits.exit.i182
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_usb3_init_path.exit184

tb_usb3_init_path.exit184:                        ; preds = %tb_usb3_init_credits.exit.i182.tb_usb3_init_path.exit184_crit_edge, %if.end52.tb_usb3_init_path.exit184_crit_edge
  %119 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %paths, align 4
  %arrayidx54 = getelementptr ptr, ptr %120, i32 1
  %121 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call49, ptr %arrayidx54, align 4
  %sw55 = getelementptr inbounds %struct.tb_port, ptr %down, i32 0, i32 1
  %122 = ptrtoint ptr %sw55 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %sw55, align 4
  %route_hi.i185 = getelementptr inbounds %struct.tb_switch, ptr %123, i32 0, i32 1, i32 4
  %124 = ptrtoint ptr %route_hi.i185 to i32
  call void @__asan_loadN_noabort(i32 %124, i32 8)
  %bf.load.i186 = load i64, ptr %route_hi.i185, align 4
  %125 = lshr i64 %bf.load.i186, 1
  %shl.i187 = and i64 %125, 9223372032559808512
  %route_lo.i188 = getelementptr inbounds %struct.tb_switch, ptr %123, i32 0, i32 1, i32 3
  %126 = ptrtoint ptr %route_lo.i188 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %route_lo.i188, align 8
  %conv2.i189 = zext i32 %127 to i64
  %or.i190 = or i64 %shl.i187, %conv2.i189
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i190)
  %tobool57.not = icmp eq i64 %or.i190, 0
  br i1 %tobool57.not, label %if.then58, label %tb_usb3_init_path.exit184.cleanup_crit_edge

tb_usb3_init_path.exit184.cleanup_crit_edge:      ; preds = %tb_usb3_init_path.exit184
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then58:                                        ; preds = %tb_usb3_init_path.exit184
  call void @__sanitizer_cov_trace_pc() #13
  %allocated_up = getelementptr inbounds %struct.tb_tunnel, ptr %call39, i32 0, i32 15
  %128 = ptrtoint ptr %allocated_up to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %max_rate.0, ptr %allocated_up, align 4
  %allocated_down = getelementptr inbounds %struct.tb_tunnel, ptr %call39, i32 0, i32 16
  %129 = ptrtoint ptr %allocated_down to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %max_rate.0, ptr %allocated_down, align 4
  %init = getelementptr inbounds %struct.tb_tunnel, ptr %call39, i32 0, i32 5
  %130 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @tb_usb3_init, ptr %init, align 4
  %consumed_bandwidth = getelementptr inbounds %struct.tb_tunnel, ptr %call39, i32 0, i32 8
  %131 = ptrtoint ptr %consumed_bandwidth to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @tb_usb3_consumed_bandwidth, ptr %consumed_bandwidth, align 4
  %release_unused_bandwidth = getelementptr inbounds %struct.tb_tunnel, ptr %call39, i32 0, i32 9
  %132 = ptrtoint ptr %release_unused_bandwidth to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @tb_usb3_release_unused_bandwidth, ptr %release_unused_bandwidth, align 4
  %reclaim_available_bandwidth = getelementptr inbounds %struct.tb_tunnel, ptr %call39, i32 0, i32 10
  %133 = ptrtoint ptr %reclaim_available_bandwidth to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @tb_usb3_reclaim_available_bandwidth, ptr %reclaim_available_bandwidth, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %tb_usb3_init_path.exit184.cleanup_crit_edge, %tb_tunnel_free.exit141, %tb_tunnel_free.exit, %if.end38.cleanup_crit_edge, %do.body21, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.body21 ], [ null, %tb_tunnel_free.exit141 ], [ null, %tb_tunnel_free.exit ], [ null, %if.end38.cleanup_crit_edge ], [ %call39, %if.then58 ], [ %call39, %tb_usb3_init_path.exit184.cleanup_crit_edge ], [ null, %if.then.cleanup_crit_edge ], [ null, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_path_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tb_tunnel_is_invalid(ptr nocapture noundef readonly %tunnel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %npaths = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 4
  %0 = ptrtoint ptr %npaths to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %npaths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp31.not = icmp eq i32 %1, 0
  br i1 %cmp31.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %paths = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 3
  br label %for.body

for.cond:                                         ; preds = %if.end
  %inc = add nuw i32 %i.032, 1
  %2 = ptrtoint ptr %npaths to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npaths, align 4
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %4 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %paths, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.032
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %activated = getelementptr inbounds %struct.tb_path, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %activated to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %activated, align 2, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %do.end, label %for.body.if.end_crit_edge, !prof !169

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1567, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %10 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %paths, align 4
  %arrayidx22 = getelementptr ptr, ptr %11, i32 %i.032
  %12 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx22, align 4
  %call = tail call zeroext i1 @tb_path_is_invalid(ptr noundef %13) #11
  br i1 %call, label %if.end.cleanup_crit_edge, label %for.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ %call, %for.cond.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i1 %cmp.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tb_path_is_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_tunnel_restart(ptr noundef %tunnel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_tunnel_restart.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_tunnel_restart, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tunnel, align 4
  %nhi = getelementptr inbounds %struct.tb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %src_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 1
  %6 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src_port, align 4
  %sw = getelementptr inbounds %struct.tb_port, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sw, align 4
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %9, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %11 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %11, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %9, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %13 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port = getelementptr inbounds %struct.tb_port, ptr %7, i32 0, i32 9
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port, align 4
  %conv = zext i8 %15 to i32
  %dst_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 2
  %16 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst_port, align 4
  %sw6 = getelementptr inbounds %struct.tb_port, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %sw6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sw6, align 4
  %route_hi.i115 = getelementptr inbounds %struct.tb_switch, ptr %19, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %route_hi.i115 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %bf.load.i116 = load i64, ptr %route_hi.i115, align 4
  %21 = lshr i64 %bf.load.i116, 1
  %shl.i117 = and i64 %21, 9223372032559808512
  %route_lo.i118 = getelementptr inbounds %struct.tb_switch, ptr %19, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %route_lo.i118 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %route_lo.i118, align 8
  %conv2.i119 = zext i32 %23 to i64
  %or.i120 = or i64 %shl.i117, %conv2.i119
  %port9 = getelementptr inbounds %struct.tb_port, ptr %17, i32 0, i32 9
  %24 = ptrtoint ptr %port9 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %port9, align 4
  %conv10 = zext i8 %25 to i32
  %type = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 12
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @tb_tunnel_names, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_tunnel_restart.__UNIQUE_ID_ddebug271, ptr noundef %dev, ptr noundef nonnull @.str.40, i64 noundef %or.i, i32 noundef %conv, i64 noundef %or.i120, i32 noundef %conv10, ptr noundef %29) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %npaths = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 4
  %30 = ptrtoint ptr %npaths to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %npaths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp134.not = icmp eq i32 %31, 0
  br i1 %cmp134.not, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %paths = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0135 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %32 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %paths, align 4
  %arrayidx14 = getelementptr ptr, ptr %33, i32 %i.0135
  %34 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx14, align 4
  %activated = getelementptr inbounds %struct.tb_path, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %activated to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %activated, align 2, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool15.not = icmp eq i8 %37, 0
  br i1 %tobool15.not, label %for.body.for.inc_crit_edge, label %if.then16

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tb_path_deactivate(ptr noundef %35) #11
  %38 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %paths, align 4
  %arrayidx20 = getelementptr ptr, ptr %39, i32 %i.0135
  %40 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx20, align 4
  %activated21 = getelementptr inbounds %struct.tb_path, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %activated21 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %activated21, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0135, 1
  %43 = ptrtoint ptr %npaths to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %npaths, align 4
  %cmp = icmp ult i32 %inc, %44
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %init = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 5
  %45 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init, align 4
  %tobool23.not = icmp eq ptr %46, null
  br i1 %tobool23.not, label %for.end.if.end30_crit_edge, label %if.then24

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then24:                                        ; preds = %for.end
  %call26 = tail call i32 %46(ptr noundef %tunnel) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then24.if.end30_crit_edge, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.end30:                                         ; preds = %if.then24.if.end30_crit_edge, %for.end.if.end30_crit_edge
  %47 = ptrtoint ptr %npaths to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %npaths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp33137.not = icmp eq i32 %48, 0
  br i1 %cmp33137.not, label %if.end30.for.end44_crit_edge, label %for.body35.lr.ph

if.end30.for.end44_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end44

for.body35.lr.ph:                                 ; preds = %if.end30
  %paths36 = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 3
  br label %for.body35

for.cond31:                                       ; preds = %for.body35
  %inc43 = add nuw i32 %i.1138, 1
  %49 = ptrtoint ptr %npaths to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %npaths, align 4
  %cmp33 = icmp ult i32 %inc43, %50
  br i1 %cmp33, label %for.cond31.for.body35_crit_edge, label %for.cond31.for.end44_crit_edge

for.cond31.for.end44_crit_edge:                   ; preds = %for.cond31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end44

for.cond31.for.body35_crit_edge:                  ; preds = %for.cond31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body35

for.body35:                                       ; preds = %for.cond31.for.body35_crit_edge, %for.body35.lr.ph
  %i.1138 = phi i32 [ 0, %for.body35.lr.ph ], [ %inc43, %for.cond31.for.body35_crit_edge ]
  %51 = ptrtoint ptr %paths36 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %paths36, align 4
  %arrayidx37 = getelementptr ptr, ptr %52, i32 %i.1138
  %53 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx37, align 4
  %call38 = tail call i32 @tb_path_activate(ptr noundef %54) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %for.cond31, label %for.body35.do.body53_crit_edge

for.body35.do.body53_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body53

for.end44:                                        ; preds = %for.cond31.for.end44_crit_edge, %if.end30.for.end44_crit_edge
  %activate = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 7
  %55 = ptrtoint ptr %activate to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %activate, align 4
  %tobool45.not = icmp eq ptr %56, null
  br i1 %tobool45.not, label %for.end44.cleanup_crit_edge, label %if.then46

for.end44.cleanup_crit_edge:                      ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then46:                                        ; preds = %for.end44
  %call48 = tail call i32 %56(ptr noundef %tunnel, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then46.cleanup_crit_edge, label %if.then46.do.body53_crit_edge

if.then46.do.body53_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body53

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body53:                                        ; preds = %if.then46.do.body53_crit_edge, %for.body35.do.body53_crit_edge
  %res.0 = phi i32 [ %call48, %if.then46.do.body53_crit_edge ], [ %call38, %for.body35.do.body53_crit_edge ]
  %57 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tunnel, align 4
  %nhi59 = getelementptr inbounds %struct.tb, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %nhi59 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %nhi59, align 4
  %pdev60 = getelementptr inbounds %struct.tb_nhi, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %pdev60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev60, align 4
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %src_port62 = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 1
  %63 = ptrtoint ptr %src_port62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %src_port62, align 4
  %sw63 = getelementptr inbounds %struct.tb_port, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %sw63 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sw63, align 4
  %route_hi.i121 = getelementptr inbounds %struct.tb_switch, ptr %66, i32 0, i32 1, i32 4
  %67 = ptrtoint ptr %route_hi.i121 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 8)
  %bf.load.i122 = load i64, ptr %route_hi.i121, align 4
  %68 = lshr i64 %bf.load.i122, 1
  %shl.i123 = and i64 %68, 9223372032559808512
  %route_lo.i124 = getelementptr inbounds %struct.tb_switch, ptr %66, i32 0, i32 1, i32 3
  %69 = ptrtoint ptr %route_lo.i124 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %route_lo.i124, align 8
  %conv2.i125 = zext i32 %70 to i64
  %or.i126 = or i64 %shl.i123, %conv2.i125
  %port66 = getelementptr inbounds %struct.tb_port, ptr %64, i32 0, i32 9
  %71 = ptrtoint ptr %port66 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %port66, align 4
  %conv67 = zext i8 %72 to i32
  %dst_port68 = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 2
  %73 = ptrtoint ptr %dst_port68 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dst_port68, align 4
  %sw69 = getelementptr inbounds %struct.tb_port, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %sw69 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sw69, align 4
  %route_hi.i127 = getelementptr inbounds %struct.tb_switch, ptr %76, i32 0, i32 1, i32 4
  %77 = ptrtoint ptr %route_hi.i127 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 8)
  %bf.load.i128 = load i64, ptr %route_hi.i127, align 4
  %78 = lshr i64 %bf.load.i128, 1
  %shl.i129 = and i64 %78, 9223372032559808512
  %route_lo.i130 = getelementptr inbounds %struct.tb_switch, ptr %76, i32 0, i32 1, i32 3
  %79 = ptrtoint ptr %route_lo.i130 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %route_lo.i130, align 8
  %conv2.i131 = zext i32 %80 to i64
  %or.i132 = or i64 %shl.i129, %conv2.i131
  %port72 = getelementptr inbounds %struct.tb_port, ptr %74, i32 0, i32 9
  %81 = ptrtoint ptr %port72 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %port72, align 4
  %conv73 = zext i8 %82 to i32
  %type74 = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 12
  %83 = ptrtoint ptr %type74 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %type74, align 4
  %arrayidx75 = getelementptr [4 x ptr], ptr @tb_tunnel_names, i32 0, i32 %84
  %85 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx75, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev61, ptr noundef nonnull @.str.41, i64 noundef %or.i126, i32 noundef %conv67, i64 noundef %or.i132, i32 noundef %conv73, ptr noundef %86) #14
  tail call void @tb_tunnel_deactivate(ptr noundef %tunnel)
  br label %cleanup

cleanup:                                          ; preds = %do.body53, %if.then46.cleanup_crit_edge, %for.end44.cleanup_crit_edge, %if.then24.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %do.body53 ], [ %call26, %if.then24.cleanup_crit_edge ], [ 0, %if.then46.cleanup_crit_edge ], [ 0, %for.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_path_deactivate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_path_activate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_tunnel_activate(ptr noundef %tunnel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %npaths = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 4
  %0 = ptrtoint ptr %npaths to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %npaths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp53.not = icmp eq i32 %1, 0
  br i1 %cmp53.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %paths = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 3
  %2 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %paths, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.054
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %activated = getelementptr inbounds %struct.tb_path, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %activated to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %activated, align 2, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %for.cond, label %do.end

do.end:                                           ; preds = %for.body
  %8 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tunnel, align 4
  %nhi = getelementptr inbounds %struct.tb, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %call = tail call ptr @dev_driver_string(ptr noundef %dev) #11
  %14 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tunnel, align 4
  %nhi8 = getelementptr inbounds %struct.tb, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %nhi8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nhi8, align 4
  %pdev9 = getelementptr inbounds %struct.tb_nhi, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %pdev9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev9, align 4
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44, i32 3
  %20 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %22 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev10, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %23, %if.end.i ], [ %21, %do.end.dev_name.exit_crit_edge ]
  %src_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 1
  %24 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %src_port, align 4
  %sw = getelementptr inbounds %struct.tb_port, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sw, align 4
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %27, i32 0, i32 1, i32 4
  %28 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %29 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %29, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %27, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %31 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port = getelementptr inbounds %struct.tb_port, ptr %25, i32 0, i32 9
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %port, align 4
  %conv = zext i8 %33 to i32
  %dst_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 2
  %34 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dst_port, align 4
  %sw14 = getelementptr inbounds %struct.tb_port, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %sw14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sw14, align 4
  %route_hi.i47 = getelementptr inbounds %struct.tb_switch, ptr %37, i32 0, i32 1, i32 4
  %38 = ptrtoint ptr %route_hi.i47 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %bf.load.i48 = load i64, ptr %route_hi.i47, align 4
  %39 = lshr i64 %bf.load.i48, 1
  %shl.i49 = and i64 %39, 9223372032559808512
  %route_lo.i50 = getelementptr inbounds %struct.tb_switch, ptr %37, i32 0, i32 1, i32 3
  %40 = ptrtoint ptr %route_lo.i50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %route_lo.i50, align 8
  %conv2.i51 = zext i32 %41 to i64
  %or.i52 = or i64 %shl.i49, %conv2.i51
  %port17 = getelementptr inbounds %struct.tb_port, ptr %35, i32 0, i32 9
  %42 = ptrtoint ptr %port17 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %port17, align 4
  %conv18 = zext i8 %43 to i32
  %type = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 12
  %44 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type, align 4
  %arrayidx19 = getelementptr [4 x ptr], ptr @tb_tunnel_names, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx19, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1637, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %call, ptr noundef %retval.0.i, i64 noundef %or.i, i32 noundef %conv, i64 noundef %or.i52, i32 noundef %conv18, ptr noundef %47) #11
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %call34 = tail call i32 @tb_tunnel_restart(ptr noundef %tunnel)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %dev_name.exit
  %retval.0 = phi i32 [ -22, %dev_name.exit ], [ %call34, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tb_tunnel_port_on_path(ptr nocapture noundef readonly %tunnel, ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %npaths = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 4
  %0 = ptrtoint ptr %npaths to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %npaths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.not = icmp eq i32 %1, 0
  br i1 %cmp10.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %paths = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %paths, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.011
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call = tail call zeroext i1 @tb_path_port_on_path(ptr noundef nonnull %5, ptr noundef %port) #11
  br i1 %call, label %if.end.cleanup_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.011, 1
  %6 = ptrtoint ptr %npaths to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %npaths, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %for.inc.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %cmp.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tb_path_port_on_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_tunnel_consumed_bandwidth(ptr noundef %tunnel, ptr noundef writeonly %consumed_up, ptr noundef writeonly %consumed_down) local_unnamed_addr #0 align 64 {
entry:
  %up_bw = alloca i32, align 4
  %down_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %up_bw) #11
  %0 = ptrtoint ptr %up_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %up_bw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %down_bw) #11
  %1 = ptrtoint ptr %down_bw to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %down_bw, align 4
  %npaths.i = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 4
  %2 = ptrtoint ptr %npaths.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npaths.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not.i = icmp eq i32 %3, 0
  br i1 %cmp11.not.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %paths.i = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 3
  %4 = ptrtoint ptr %paths.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %paths.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not.i53 = icmp eq ptr %7, null
  br i1 %tobool.not.i53, label %for.body.lr.ph.i.out_crit_edge, label %if.end.i.preheader

for.body.lr.ph.i.out_crit_edge:                   ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.i.preheader:                               ; preds = %for.body.lr.ph.i
  %activated.i58 = getelementptr inbounds %struct.tb_path, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %activated.i58 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %activated.i58, align 2, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not.i59 = icmp eq i8 %9, 0
  br i1 %tobool3.not.i59, label %if.end.i.preheader.out_crit_edge, label %if.end.i.preheader.for.cond.i_crit_edge

if.end.i.preheader.for.cond.i_crit_edge:          ; preds = %if.end.i.preheader
  br label %for.cond.i

if.end.i.preheader.out_crit_edge:                 ; preds = %if.end.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %if.end.i.preheader.for.cond.i_crit_edge
  %i.012.i5560 = phi i32 [ %inc.i, %if.end.i.for.cond.i_crit_edge ], [ 0, %if.end.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add nuw i32 %i.012.i5560, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %3)
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.tb_tunnel_is_active.exit_crit_edge, label %for.body.i

for.cond.i.tb_tunnel_is_active.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_is_active.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %inc.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %for.body.i.tb_tunnel_is_active.exit_crit_edge, label %if.end.i

for.body.i.tb_tunnel_is_active.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_is_active.exit

if.end.i:                                         ; preds = %for.body.i
  %activated.i = getelementptr inbounds %struct.tb_path, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %activated.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %activated.i, align 2, !range !170
  %tobool3.not.i = icmp eq i8 %13, 0
  br i1 %tobool3.not.i, label %if.end.i.tb_tunnel_is_active.exit_crit_edge, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

if.end.i.tb_tunnel_is_active.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_is_active.exit

tb_tunnel_is_active.exit:                         ; preds = %if.end.i.tb_tunnel_is_active.exit_crit_edge, %for.body.i.tb_tunnel_is_active.exit_crit_edge, %for.cond.i.tb_tunnel_is_active.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %3)
  %cmp.i.le = icmp ult i32 %inc.i, %3
  br i1 %cmp.i.le, label %tb_tunnel_is_active.exit.out_crit_edge, label %tb_tunnel_is_active.exit.if.end_crit_edge

tb_tunnel_is_active.exit.if.end_crit_edge:        ; preds = %tb_tunnel_is_active.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

tb_tunnel_is_active.exit.out_crit_edge:           ; preds = %tb_tunnel_is_active.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %tb_tunnel_is_active.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %consumed_bandwidth = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 8
  %14 = ptrtoint ptr %consumed_bandwidth to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %consumed_bandwidth, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.then1

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then1:                                         ; preds = %if.end
  %call3 = call i32 %15(ptr noundef %tunnel, ptr noundef nonnull %up_bw, ptr noundef nonnull %down_bw) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body, label %if.then1.cleanup30_crit_edge

if.then1.cleanup30_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup30

do.body:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_tunnel_consumed_bandwidth.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_tunnel_consumed_bandwidth, %if.then12)) #11
          to label %out [label %if.then12], !srcloc !168

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tunnel, align 4
  %nhi = getelementptr inbounds %struct.tb, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %src_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 1
  %22 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %src_port, align 4
  %sw = getelementptr inbounds %struct.tb_port, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sw, align 4
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %25, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %27 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %27, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %25, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %29 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port = getelementptr inbounds %struct.tb_port, ptr %23, i32 0, i32 9
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %port, align 4
  %conv = zext i8 %31 to i32
  %dst_port = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 2
  %32 = ptrtoint ptr %dst_port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dst_port, align 4
  %sw15 = getelementptr inbounds %struct.tb_port, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %sw15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sw15, align 4
  %route_hi.i45 = getelementptr inbounds %struct.tb_switch, ptr %35, i32 0, i32 1, i32 4
  %36 = ptrtoint ptr %route_hi.i45 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %bf.load.i46 = load i64, ptr %route_hi.i45, align 4
  %37 = lshr i64 %bf.load.i46, 1
  %shl.i47 = and i64 %37, 9223372032559808512
  %route_lo.i48 = getelementptr inbounds %struct.tb_switch, ptr %35, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %route_lo.i48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %route_lo.i48, align 8
  %conv2.i49 = zext i32 %39 to i64
  %or.i50 = or i64 %shl.i47, %conv2.i49
  %port18 = getelementptr inbounds %struct.tb_port, ptr %33, i32 0, i32 9
  %40 = ptrtoint ptr %port18 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %port18, align 4
  %conv19 = zext i8 %41 to i32
  %type = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 12
  %42 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @tb_tunnel_names, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx, align 4
  %46 = ptrtoint ptr %up_bw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %up_bw, align 4
  %48 = ptrtoint ptr %down_bw to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %down_bw, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_tunnel_consumed_bandwidth.__UNIQUE_ID_ddebug273, ptr noundef %dev, ptr noundef nonnull @.str.46, i64 noundef %or.i, i32 noundef %conv, i64 noundef %or.i50, i32 noundef %conv19, ptr noundef %45, i32 noundef %47, i32 noundef %49) #11
  br label %out

out:                                              ; preds = %if.then12, %do.body, %if.end.out_crit_edge, %tb_tunnel_is_active.exit.out_crit_edge, %if.end.i.preheader.out_crit_edge, %for.body.lr.ph.i.out_crit_edge
  %tobool24.not = icmp eq ptr %consumed_up, null
  br i1 %tobool24.not, label %out.if.end26_crit_edge, label %if.then25

out.if.end26_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then25:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %up_bw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %up_bw, align 4
  %52 = ptrtoint ptr %consumed_up to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %consumed_up, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %out.if.end26_crit_edge
  %tobool27.not = icmp eq ptr %consumed_down, null
  br i1 %tobool27.not, label %if.end26.cleanup30_crit_edge, label %if.then28

if.end26.cleanup30_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup30

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %down_bw to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %down_bw, align 4
  %55 = ptrtoint ptr %consumed_down to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %consumed_down, align 4
  br label %cleanup30

cleanup30:                                        ; preds = %if.then28, %if.end26.cleanup30_crit_edge, %if.then1.cleanup30_crit_edge
  %retval.1 = phi i32 [ 0, %if.then28 ], [ 0, %if.end26.cleanup30_crit_edge ], [ %call3, %if.then1.cleanup30_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %down_bw) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %up_bw) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_tunnel_release_unused_bandwidth(ptr noundef %tunnel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %npaths.i = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 4
  %0 = ptrtoint ptr %npaths.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %npaths.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11.not.i = icmp eq i32 %1, 0
  br i1 %cmp11.not.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %paths.i = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 3
  %2 = ptrtoint ptr %paths.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %paths.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i13 = icmp eq ptr %5, null
  br i1 %tobool.not.i13, label %for.body.lr.ph.i.return_crit_edge, label %if.end.i.preheader

for.body.lr.ph.i.return_crit_edge:                ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i.preheader:                               ; preds = %for.body.lr.ph.i
  %activated.i18 = getelementptr inbounds %struct.tb_path, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %activated.i18 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %activated.i18, align 2, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not.i19 = icmp eq i8 %7, 0
  br i1 %tobool3.not.i19, label %if.end.i.preheader.return_crit_edge, label %if.end.i.preheader.for.cond.i_crit_edge

if.end.i.preheader.for.cond.i_crit_edge:          ; preds = %if.end.i.preheader
  br label %for.cond.i

if.end.i.preheader.return_crit_edge:              ; preds = %if.end.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %if.end.i.preheader.for.cond.i_crit_edge
  %i.012.i1520 = phi i32 [ %inc.i, %if.end.i.for.cond.i_crit_edge ], [ 0, %if.end.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add nuw i32 %i.012.i1520, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %1)
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.cond.i.tb_tunnel_is_active.exit_crit_edge, label %for.body.i

for.cond.i.tb_tunnel_is_active.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_is_active.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %inc.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.i.tb_tunnel_is_active.exit_crit_edge, label %if.end.i

for.body.i.tb_tunnel_is_active.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_is_active.exit

if.end.i:                                         ; preds = %for.body.i
  %activated.i = getelementptr inbounds %struct.tb_path, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %activated.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %activated.i, align 2, !range !170
  %tobool3.not.i = icmp eq i8 %11, 0
  br i1 %tobool3.not.i, label %if.end.i.tb_tunnel_is_active.exit_crit_edge, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

if.end.i.tb_tunnel_is_active.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_is_active.exit

tb_tunnel_is_active.exit:                         ; preds = %if.end.i.tb_tunnel_is_active.exit_crit_edge, %for.body.i.tb_tunnel_is_active.exit_crit_edge, %for.cond.i.tb_tunnel_is_active.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %1)
  %cmp.i.le = icmp ult i32 %inc.i, %1
  br i1 %cmp.i.le, label %tb_tunnel_is_active.exit.return_crit_edge, label %tb_tunnel_is_active.exit.if.end_crit_edge

tb_tunnel_is_active.exit.if.end_crit_edge:        ; preds = %tb_tunnel_is_active.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

tb_tunnel_is_active.exit.return_crit_edge:        ; preds = %tb_tunnel_is_active.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %tb_tunnel_is_active.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %release_unused_bandwidth = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 9
  %12 = ptrtoint ptr %release_unused_bandwidth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %release_unused_bandwidth, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then1

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then1:                                         ; preds = %if.end
  %call3 = tail call i32 %13(ptr noundef %tunnel) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then1.if.end7_crit_edge, label %if.then1.return_crit_edge

if.then1.return_crit_edge:                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then1.if.end7_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end7:                                          ; preds = %if.then1.if.end7_crit_edge, %if.end.if.end7_crit_edge
  br label %return

return:                                           ; preds = %if.end7, %if.then1.return_crit_edge, %tb_tunnel_is_active.exit.return_crit_edge, %if.end.i.preheader.return_crit_edge, %for.body.lr.ph.i.return_crit_edge
  %retval.1 = phi i32 [ %call3, %if.then1.return_crit_edge ], [ 0, %if.end7 ], [ 0, %tb_tunnel_is_active.exit.return_crit_edge ], [ 0, %for.body.lr.ph.i.return_crit_edge ], [ 0, %if.end.i.preheader.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_tunnel_reclaim_available_bandwidth(ptr noundef %tunnel, ptr noundef %available_up, ptr noundef %available_down) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %npaths.i = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 4
  %0 = ptrtoint ptr %npaths.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %npaths.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11.not.i = icmp eq i32 %1, 0
  br i1 %cmp11.not.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %paths.i = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 3
  %2 = ptrtoint ptr %paths.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %paths.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i8 = icmp eq ptr %5, null
  br i1 %tobool.not.i8, label %for.body.lr.ph.i.if.end3_crit_edge, label %if.end.i.preheader

for.body.lr.ph.i.if.end3_crit_edge:               ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.end.i.preheader:                               ; preds = %for.body.lr.ph.i
  %activated.i13 = getelementptr inbounds %struct.tb_path, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %activated.i13 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %activated.i13, align 2, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not.i14 = icmp eq i8 %7, 0
  br i1 %tobool3.not.i14, label %if.end.i.preheader.if.end3_crit_edge, label %if.end.i.preheader.for.cond.i_crit_edge

if.end.i.preheader.for.cond.i_crit_edge:          ; preds = %if.end.i.preheader
  br label %for.cond.i

if.end.i.preheader.if.end3_crit_edge:             ; preds = %if.end.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %if.end.i.preheader.for.cond.i_crit_edge
  %i.012.i1015 = phi i32 [ %inc.i, %if.end.i.for.cond.i_crit_edge ], [ 0, %if.end.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add nuw i32 %i.012.i1015, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %1)
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.cond.i.tb_tunnel_is_active.exit_crit_edge, label %for.body.i

for.cond.i.tb_tunnel_is_active.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_is_active.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %inc.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.i.tb_tunnel_is_active.exit_crit_edge, label %if.end.i

for.body.i.tb_tunnel_is_active.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_is_active.exit

if.end.i:                                         ; preds = %for.body.i
  %activated.i = getelementptr inbounds %struct.tb_path, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %activated.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %activated.i, align 2, !range !170
  %tobool3.not.i = icmp eq i8 %11, 0
  br i1 %tobool3.not.i, label %if.end.i.tb_tunnel_is_active.exit_crit_edge, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

if.end.i.tb_tunnel_is_active.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_tunnel_is_active.exit

tb_tunnel_is_active.exit:                         ; preds = %if.end.i.tb_tunnel_is_active.exit_crit_edge, %for.body.i.tb_tunnel_is_active.exit_crit_edge, %for.cond.i.tb_tunnel_is_active.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %1)
  %cmp.i.le = icmp ult i32 %inc.i, %1
  br i1 %cmp.i.le, label %tb_tunnel_is_active.exit.if.end3_crit_edge, label %tb_tunnel_is_active.exit.if.end_crit_edge

tb_tunnel_is_active.exit.if.end_crit_edge:        ; preds = %tb_tunnel_is_active.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

tb_tunnel_is_active.exit.if.end3_crit_edge:       ; preds = %tb_tunnel_is_active.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.end:                                           ; preds = %tb_tunnel_is_active.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %reclaim_available_bandwidth = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 10
  %12 = ptrtoint ptr %reclaim_available_bandwidth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reclaim_available_bandwidth, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %13(ptr noundef %tunnel, ptr noundef %available_up, ptr noundef %available_down) #11
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge, %tb_tunnel_is_active.exit.if.end3_crit_edge, %if.end.i.preheader.if.end3_crit_edge, %for.body.lr.ph.i.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_port_write(ptr nocapture noundef readonly %port, ptr noundef %buffer, i32 noundef %offset) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %sw = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw, align 4
  %is_unplugged = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %is_unplugged to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_unplugged, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tb = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tb, align 8
  %ctl = getelementptr inbounds %struct.tb, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctl, align 8
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %9 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %9, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %11 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port3 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %12 = ptrtoint ptr %port3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port3, align 4
  %conv = zext i8 %13 to i32
  %call4 = tail call i32 @tb_cfg_write(ptr noundef %7, ptr noundef %buffer, i64 noundef %or.i, i32 noundef %conv, i32 noundef 1, i32 noundef %offset, i32 noundef 1) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_dp_cap_set_rate(i32 noundef %val, i32 noundef %rate) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %val, -3841
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %rate, label %do.end [
    i32 1620, label %entry.sw.epilog_crit_edge
    i32 2700, label %sw.bb15
    i32 5400, label %sw.bb17
    i32 8100, label %sw.bb19
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 397, i32 noundef 9, ptr noundef nonnull @.str.56, i32 noundef %rate) #11
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or16 = or i32 %and, 256
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or18 = or i32 %and, 512
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or20 = or i32 %and, 768
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb17, %sw.bb15, %do.end, %entry.sw.epilog_crit_edge
  %val.addr.0 = phi i32 [ %or20, %sw.bb19 ], [ %or18, %sw.bb17 ], [ %or16, %sw.bb15 ], [ %and, %entry.sw.epilog_crit_edge ], [ %and, %do.end ]
  ret i32 %val.addr.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_dp_cap_set_lanes(i32 noundef %val, i32 noundef %lanes) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %val, -28673
  %0 = zext i32 %lanes to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %lanes, label %do.end [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb15
    i32 4, label %sw.bb17
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 437, i32 noundef 9, ptr noundef nonnull @.str.57, i32 noundef %lanes) #11
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or16 = or i32 %and, 4096
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or18 = or i32 %and, 8192
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb15, %do.end, %entry.sw.epilog_crit_edge
  %val.addr.0 = phi i32 [ %or18, %sw.bb17 ], [ %or16, %sw.bb15 ], [ %and, %entry.sw.epilog_crit_edge ], [ %and, %do.end ]
  ret i32 %val.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_cfg_read(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_cfg_write(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_dp_port_set_hops(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_dp_port_hpd_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tb_dma_deinit_path(ptr nocapture noundef readonly %path) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hops = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 10
  %0 = ptrtoint ptr %hops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hops, align 4
  %path_length = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 11
  %2 = ptrtoint ptr %path_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %path_length, align 4
  %sub7 = add i32 %3, -1
  %arrayidx28 = getelementptr %struct.tb_path_hop, ptr %1, i32 %sub7
  %cmp.not9 = icmp ugt ptr %1, %arrayidx28
  br i1 %cmp.not9, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %tb_dma_release_credits.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %hop.010 = phi ptr [ %incdec.ptr, %tb_dma_release_credits.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %hop.010 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hop.010, align 4
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %for.body.tb_dma_release_credits.exit_crit_edge, label %land.lhs.true.i.i.i

for.body.tb_dma_release_credits.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dma_release_credits.exit

land.lhs.true.i.i.i:                              ; preds = %for.body
  %port1.i.i.i = getelementptr inbounds %struct.tb_port, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %port1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not.i.i.i = icmp eq i8 %7, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.tb_dma_release_credits.exit_crit_edge, label %tb_port_is_null.exit.i.i

land.lhs.true.i.i.i.tb_dma_release_credits.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dma_release_credits.exit

tb_port_is_null.exit.i.i:                         ; preds = %land.lhs.true.i.i.i
  %type.i.i.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 12)
  %bf.load.i.i.i = load i96, ptr %type.i.i.i, align 4
  %9 = and i96 %bf.load.i.i.i, 18446742974197923840
  %cmp.i.i.i = icmp eq i96 %9, 1099511627776
  br i1 %cmp.i.i.i, label %tb_port_use_credit_allocation.exit.i, label %tb_port_is_null.exit.i.i.tb_dma_release_credits.exit_crit_edge

tb_port_is_null.exit.i.i.tb_dma_release_credits.exit_crit_edge: ; preds = %tb_port_is_null.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dma_release_credits.exit

tb_port_use_credit_allocation.exit.i:             ; preds = %tb_port_is_null.exit.i.i
  %sw.i.i = getelementptr inbounds %struct.tb_port, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sw.i.i, align 4
  %credit_allocation.i.i = getelementptr inbounds %struct.tb_switch, ptr %11, i32 0, i32 37
  %12 = ptrtoint ptr %credit_allocation.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %credit_allocation.i.i, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.i.not.i = icmp eq i8 %13, 0
  br i1 %tobool.i.not.i, label %tb_port_use_credit_allocation.exit.i.tb_dma_release_credits.exit_crit_edge, label %if.then.i

tb_port_use_credit_allocation.exit.i.tb_dma_release_credits.exit_crit_edge: ; preds = %tb_port_use_credit_allocation.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tb_dma_release_credits.exit

if.then.i:                                        ; preds = %tb_port_use_credit_allocation.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %initial_credits.i = getelementptr inbounds %struct.tb_path_hop, ptr %hop.010, i32 0, i32 5
  %14 = ptrtoint ptr %initial_credits.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %initial_credits.i, align 4
  %dma_credits.i = getelementptr inbounds %struct.tb_port, ptr %5, i32 0, i32 19
  %16 = ptrtoint ptr %dma_credits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_credits.i, align 4
  %sub.i = sub i32 %17, %15
  store i32 %sub.i, ptr %dma_credits.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_dma_release_credits.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_dma_deinit_path, %if.then5.i)) #11
          to label %tb_dma_release_credits.exit [label %if.then5.i], !srcloc !168

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sw.i.i, align 4
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tb.i, align 8
  %nhi.i = getelementptr inbounds %struct.tb, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %nhi.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nhi.i, align 4
  %pdev.i = getelementptr inbounds %struct.tb_nhi, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %19, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %27 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %27, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %19, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %29 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %30 = ptrtoint ptr %port1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %port1.i.i.i, align 4
  %conv.i = zext i8 %31 to i32
  %32 = ptrtoint ptr %initial_credits.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %initial_credits.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_dma_release_credits.__UNIQUE_ID_ddebug254, ptr noundef %dev.i, ptr noundef nonnull @.str.59, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef %33) #11
  br label %tb_dma_release_credits.exit

tb_dma_release_credits.exit:                      ; preds = %if.then5.i, %if.then.i, %tb_port_use_credit_allocation.exit.i.tb_dma_release_credits.exit_crit_edge, %tb_port_is_null.exit.i.i.tb_dma_release_credits.exit_crit_edge, %land.lhs.true.i.i.i.tb_dma_release_credits.exit_crit_edge, %for.body.tb_dma_release_credits.exit_crit_edge
  %incdec.ptr = getelementptr %struct.tb_path_hop, ptr %hop.010, i32 1
  %34 = ptrtoint ptr %hops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hops, align 4
  %36 = ptrtoint ptr %path_length to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %path_length, align 4
  %sub = add i32 %37, -1
  %arrayidx2 = getelementptr %struct.tb_path_hop, ptr %35, i32 %sub
  %cmp.not = icmp ugt ptr %incdec.ptr, %arrayidx2
  br i1 %cmp.not, label %tb_dma_release_credits.exit.for.end_crit_edge, label %tb_dma_release_credits.exit.for.body_crit_edge

tb_dma_release_credits.exit.for.body_crit_edge:   ; preds = %tb_dma_release_credits.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

tb_dma_release_credits.exit.for.end_crit_edge:    ; preds = %tb_dma_release_credits.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %tb_dma_release_credits.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_dma_reserve_credits(ptr nocapture noundef %hop, i32 noundef %credits) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hop, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.if.else19_crit_edge, label %land.lhs.true.i.i

entry.if.else19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else19

land.lhs.true.i.i:                                ; preds = %entry
  %port1.i.i = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %port1.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.else19_crit_edge, label %tb_port_is_null.exit.i

land.lhs.true.i.i.if.else19_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else19

tb_port_is_null.exit.i:                           ; preds = %land.lhs.true.i.i
  %type.i.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %type.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 12)
  %bf.load.i.i = load i96, ptr %type.i.i, align 4
  %5 = and i96 %bf.load.i.i, 18446742974197923840
  %cmp.i.i = icmp eq i96 %5, 1099511627776
  br i1 %cmp.i.i, label %tb_port_use_credit_allocation.exit, label %tb_port_is_null.exit.i.land.lhs.true.i_crit_edge

tb_port_is_null.exit.i.land.lhs.true.i_crit_edge: ; preds = %tb_port_is_null.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

tb_port_use_credit_allocation.exit:               ; preds = %tb_port_is_null.exit.i
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sw.i, align 4
  %credit_allocation.i = getelementptr inbounds %struct.tb_switch, ptr %7, i32 0, i32 37
  %8 = ptrtoint ptr %credit_allocation.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %credit_allocation.i, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i.not = icmp eq i8 %9, 0
  br i1 %tobool.i.not, label %tb_port_use_credit_allocation.exit.land.lhs.true.i_crit_edge, label %if.then

tb_port_use_credit_allocation.exit.land.lhs.true.i_crit_edge: ; preds = %tb_port_use_credit_allocation.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.then:                                          ; preds = %tb_port_use_credit_allocation.exit
  %10 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sw.i, align 4
  %max_usb3_credits.i.i = getelementptr inbounds %struct.tb_switch, ptr %11, i32 0, i32 38
  %12 = ptrtoint ptr %max_usb3_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_usb3_credits.i.i, align 4
  %max_pcie_credits.i.i = getelementptr inbounds %struct.tb_switch, ptr %11, i32 0, i32 41
  %14 = ptrtoint ptr %max_pcie_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_pcie_credits.i.i, align 8
  %max_dma_credits.i.i = getelementptr inbounds %struct.tb_switch, ptr %11, i32 0, i32 42
  %16 = ptrtoint ptr %max_dma_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_dma_credits.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i45 = icmp eq i32 %17, 0
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 14) #11
  %.op.neg.i.i = xor i32 %18, -1
  %add.neg66.i.i = select i1 %cmp.i.i45, i32 -15, i32 %.op.neg.i.i
  %total_credits.i.i.i = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 17
  %19 = ptrtoint ptr %total_credits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %total_credits.i.i.i, align 4
  %ctl_credits.i.i.i = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 18
  %21 = ptrtoint ptr %ctl_credits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctl_credits.i.i.i, align 4
  %sub.i.i.i = sub i32 %20, %22
  %23 = add i32 %15, %13
  %add27.neg.i.i = sub i32 %add.neg66.i.i, %23
  %sub.i.i = add i32 %add27.neg.i.i, %sub.i.i.i
  %min_dp_aux_credits.i.i = getelementptr inbounds %struct.tb_switch, ptr %11, i32 0, i32 39
  %24 = ptrtoint ptr %min_dp_aux_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %min_dp_aux_credits.i.i, align 8
  %min_dp_main_credits.i.i = getelementptr inbounds %struct.tb_switch, ptr %11, i32 0, i32 40
  %26 = ptrtoint ptr %min_dp_main_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %min_dp_main_credits.i.i, align 4
  %add28.i.i = add i32 %27, %25
  %28 = urem i32 %sub.i.i, %add28.i.i
  %29 = add i32 %13, %sub.i.i
  %.neg12.i = sub i32 %sub.i.i.i, %29
  %sub35.i.i = add i32 %.neg12.i, %28
  %30 = tail call i32 @llvm.smax.i32(i32 %sub35.i.i, i32 0) #11
  %dma_credits.i = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 19
  %31 = ptrtoint ptr %dma_credits.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_credits.i, align 4
  %33 = add i32 %32, %15
  %sub3.i = sub i32 %30, %33
  %34 = tail call i32 @llvm.smax.i32(i32 %sub3.i, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub3.i)
  %cmp = icmp slt i32 %sub3.i, 1
  br i1 %cmp, label %if.then.cleanup26_crit_edge, label %if.then.while.cond_crit_edge

if.then.while.cond_crit_edge:                     ; preds = %if.then
  br label %while.cond

if.then.cleanup26_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup26

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then.while.cond_crit_edge
  %credits.addr.0 = phi i32 [ %dec, %while.cond.while.cond_crit_edge ], [ %credits, %if.then.while.cond_crit_edge ]
  %cmp3 = icmp ugt i32 %credits.addr.0, %34
  %dec = add i32 %credits.addr.0, -1
  br i1 %cmp3, label %while.cond.while.cond_crit_edge, label %do.body

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

do.body:                                          ; preds = %while.cond
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_dma_reserve_credits.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_dma_reserve_credits, %if.then8)) #11
          to label %cleanup [label %if.then8], !srcloc !168

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sw.i, align 4
  %tb = getelementptr inbounds %struct.tb_switch, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tb, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %36, i32 0, i32 1, i32 4
  %43 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %44 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %44, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %36, i32 0, i32 1, i32 3
  %45 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %46 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %47 = ptrtoint ptr %port1.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %port1.i.i, align 4
  %conv = zext i8 %48 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_dma_reserve_credits.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.61, i64 noundef %or.i, i32 noundef %conv, i32 noundef %credits.addr.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %do.body
  %49 = ptrtoint ptr %dma_credits.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_credits.i, align 4
  %add = add i32 %50, %credits.addr.0
  store i32 %add, ptr %dma_credits.i, align 4
  br label %if.end25

land.lhs.true.i:                                  ; preds = %tb_port_use_credit_allocation.exit.land.lhs.true.i_crit_edge, %tb_port_is_null.exit.i.land.lhs.true.i_crit_edge
  %51 = ptrtoint ptr %port1.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %.pr = load i8, ptr %port1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool2.not.i = icmp eq i8 %.pr, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else19_crit_edge, label %tb_port_is_null.exit

land.lhs.true.i.if.else19_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else19

tb_port_is_null.exit:                             ; preds = %land.lhs.true.i
  %type.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %1, i32 0, i32 2
  %52 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 12)
  %bf.load.i46 = load i96, ptr %type.i, align 4
  %53 = and i96 %bf.load.i46, 18446742974197923840
  %cmp.i = icmp eq i96 %53, 1099511627776
  br i1 %cmp.i, label %if.then16, label %tb_port_is_null.exit.if.else19_crit_edge

tb_port_is_null.exit.if.else19_crit_edge:         ; preds = %tb_port_is_null.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else19

if.then16:                                        ; preds = %tb_port_is_null.exit
  call void @__sanitizer_cov_trace_pc() #13
  %bonded = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 11
  %54 = ptrtoint ptr %bonded to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bonded, align 2, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool17.not = icmp eq i8 %55, 0
  %cond = select i1 %tobool17.not, i32 6, i32 14
  br label %if.end25

if.else19:                                        ; preds = %tb_port_is_null.exit.if.else19_crit_edge, %land.lhs.true.i.if.else19_crit_edge, %land.lhs.true.i.i.if.else19_crit_edge, %entry.if.else19_crit_edge
  %total_credits = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 17
  %56 = ptrtoint ptr %total_credits to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %total_credits, align 4
  %58 = tail call i32 @llvm.umin.i32(i32 %57, i32 %credits)
  br label %if.end25

if.end25:                                         ; preds = %if.else19, %if.then16, %cleanup
  %credits.addr.2 = phi i32 [ %credits.addr.0, %cleanup ], [ %cond, %if.then16 ], [ %58, %if.else19 ]
  %initial_credits = getelementptr inbounds %struct.tb_path_hop, ptr %hop, i32 0, i32 5
  %59 = ptrtoint ptr %initial_credits to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %credits.addr.2, ptr %initial_credits, align 4
  br label %cleanup26

cleanup26:                                        ; preds = %if.end25, %if.then.cleanup26_crit_edge
  %retval.1 = phi i32 [ 0, %if.end25 ], [ -28, %if.then.cleanup26_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb4_usb3_port_allocate_bandwidth(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb4_usb3_port_release_bandwidth(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb4_usb3_port_actual_link_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb4_usb3_port_max_link_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !40, !42, !44, !45, !46, !48, !50, !51, !53, !55, !57, !58, !59, !60, !62, !63, !65, !66, !68, !69, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !91, !92, !93, !95, !96, !97, !99, !101, !103, !105, !107, !109, !110, !111, !113, !115, !116, !117, !118, !120, !121, !123, !125, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/thunderbolt/tunnel.c", i32 238, i32 24}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/thunderbolt/tunnel.c", i32 249, i32 5}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/thunderbolt/tunnel.c", i32 258, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @tb_tunnel_discover_pci._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @tb_tunnel_discover_pci._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/thunderbolt/tunnel.c", i32 264, i32 3}
!14 = !{ptr @tb_tunnel_discover_pci._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @tb_tunnel_discover_pci._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/thunderbolt/tunnel.c", i32 269, i32 3}
!18 = !{ptr @tb_tunnel_discover_pci._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @tb_tunnel_discover_pci._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/thunderbolt/tunnel.c", i32 274, i32 2}
!22 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tb_tunnel_discover_pci.__UNIQUE_ID_ddebug242, !21, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/thunderbolt/tunnel.c", i32 794, i32 24}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/thunderbolt/tunnel.c", i32 804, i32 66}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/thunderbolt/tunnel.c", i32 812, i32 12}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/thunderbolt/tunnel.c", i32 820, i32 3}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @tb_tunnel_discover_dp._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @tb_tunnel_discover_dp._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @tb_tunnel_discover_dp._entry.20, !36, !"_entry", i1 false, i1 false}
!36 = !{!"../drivers/thunderbolt/tunnel.c", i32 831, i32 3}
!37 = !{ptr @tb_tunnel_discover_dp._entry_ptr.21, !36, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @tb_tunnel_discover_dp.__UNIQUE_ID_ddebug248, !39, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!39 = !{!"../drivers/thunderbolt/tunnel.c", i32 835, i32 2}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/thunderbolt/tunnel.c", i32 1093, i32 10}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/thunderbolt/tunnel.c", i32 1098, i32 4}
!44 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @tb_tunnel_alloc_dma.__UNIQUE_ID_ddebug257, !43, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/thunderbolt/tunnel.c", i32 1105, i32 10}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/thunderbolt/tunnel.c", i32 1110, i32 4}
!50 = !{ptr @tb_tunnel_alloc_dma.__UNIQUE_ID_ddebug258, !49, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/thunderbolt/tunnel.c", i32 1379, i32 24}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/thunderbolt/tunnel.c", i32 1389, i32 5}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/thunderbolt/tunnel.c", i32 1397, i32 3}
!57 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @tb_tunnel_discover_usb3._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @tb_tunnel_discover_usb3._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @tb_tunnel_discover_usb3._entry.31, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../drivers/thunderbolt/tunnel.c", i32 1403, i32 3}
!62 = !{ptr @tb_tunnel_discover_usb3._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @tb_tunnel_discover_usb3._entry.33, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/thunderbolt/tunnel.c", i32 1408, i32 3}
!65 = !{ptr @tb_tunnel_discover_usb3._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/thunderbolt/tunnel.c", i32 1425, i32 3}
!68 = !{ptr @tb_tunnel_discover_usb3.__UNIQUE_ID_ddebug268, !67, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!69 = !{ptr @tb_tunnel_discover_usb3.__UNIQUE_ID_ddebug269, !70, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!70 = !{!"../drivers/thunderbolt/tunnel.c", i32 1436, i32 2}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/thunderbolt/tunnel.c", i32 1481, i32 3}
!73 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @tb_tunnel_alloc_usb3.__UNIQUE_ID_ddebug270, !72, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/thunderbolt/tunnel.c", i32 1485, i32 4}
!77 = !{ptr @tb_tunnel_alloc_usb3._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @tb_tunnel_alloc_usb3._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/thunderbolt/tunnel.c", i32 1585, i32 2}
!81 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @tb_tunnel_restart.__UNIQUE_ID_ddebug271, !80, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/thunderbolt/tunnel.c", i32 1619, i32 2}
!85 = !{ptr @tb_tunnel_restart._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @tb_tunnel_restart._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/thunderbolt/tunnel.c", i32 1636, i32 4}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/thunderbolt/tunnel.c", i32 1653, i32 2}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @tb_tunnel_deactivate.__UNIQUE_ID_ddebug272, !90, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/thunderbolt/tunnel.c", i32 1729, i32 3}
!95 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @tb_tunnel_consumed_bandwidth.__UNIQUE_ID_ddebug273, !94, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/thunderbolt/tunnel.c", i32 47, i32 49}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/thunderbolt/tunnel.c", i32 47, i32 56}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/thunderbolt/tunnel.c", i32 47, i32 62}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/thunderbolt/tunnel.c", i32 47, i32 69}
!105 = !{ptr @tb_tunnel_names, !106, !"tb_tunnel_names", i1 false, i1 false}
!106 = !{!"../drivers/thunderbolt/tunnel.c", i32 47, i32 27}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/thunderbolt/tunnel.c", i32 542, i32 2}
!109 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @tb_dp_xchg_caps.__UNIQUE_ID_ddebug243, !108, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!111 = !{ptr @tb_dp_xchg_caps.__UNIQUE_ID_ddebug244, !112, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!112 = !{!"../drivers/thunderbolt/tunnel.c", i32 552, i32 2}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/thunderbolt/tunnel.c", i32 567, i32 4}
!115 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @tb_dp_xchg_caps._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @tb_dp_xchg_caps._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/thunderbolt/tunnel.c", i32 572, i32 3}
!120 = !{ptr @tb_dp_xchg_caps.__UNIQUE_ID_ddebug245, !119, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!121 = !{ptr @tb_dp_reduce_bandwidth.dp_bw, !122, !"dp_bw", i1 false, i1 false}
!122 = !{!"../drivers/thunderbolt/tunnel.c", i32 462, i32 19}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/thunderbolt/tunnel.c", i32 397, i32 3}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/thunderbolt/tunnel.c", i32 436, i32 3}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/thunderbolt/tunnel.c", i32 1025, i32 3}
!129 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @tb_dma_release_credits.__UNIQUE_ID_ddebug254, !128, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/thunderbolt/tunnel.c", i32 944, i32 3}
!133 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @tb_dma_reserve_credits.__UNIQUE_ID_ddebug249, !132, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/thunderbolt/tunnel.c", i32 1201, i32 2}
!137 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @tb_usb3_init.__UNIQUE_ID_ddebug261, !136, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!139 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/thunderbolt/tunnel.c", i32 1247, i32 2}
!141 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @tb_usb3_release_unused_bandwidth.__UNIQUE_ID_ddebug262, !140, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/thunderbolt/tunnel.c", i32 1260, i32 3}
!145 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @tb_usb3_reclaim_available_bandwidth._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @tb_usb3_reclaim_available_bandwidth._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/thunderbolt/tunnel.c", i32 1266, i32 4}
!150 = !{ptr @tb_usb3_reclaim_available_bandwidth._entry.68, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @tb_usb3_reclaim_available_bandwidth._entry_ptr.70, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/thunderbolt/tunnel.c", i32 1299, i32 3}
!154 = !{ptr @tb_usb3_reclaim_available_bandwidth._entry.71, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @tb_usb3_reclaim_available_bandwidth._entry_ptr.73, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/thunderbolt/tunnel.c", i32 1309, i32 2}
!158 = !{ptr @tb_usb3_reclaim_available_bandwidth.__UNIQUE_ID_ddebug267, !157, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{i64 2148799579, i64 2148799584, i64 2148799597, i64 2148799641, i64 2148799675, i64 2148799696}
!169 = !{!"branch_weights", i32 1, i32 2000}
!170 = !{i8 0, i8 2}
!171 = !{!"auto-init"}
