; ModuleID = '/llk/IR_all_yes/drivers/rapidio/devices/tsi721.c_pt.bc'
source_filename = "../drivers/rapidio/devices/tsi721.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
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
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rio_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.74, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.74 = type { ptr }
%struct.tsi721_device = type { ptr, %struct.rio_mport, i32, ptr, [34 x %struct.msix_irq], ptr, ptr, i32, %struct.work_struct, i32, %struct.work_struct, %struct.kfifo, %struct.spinlock, i32, %struct.tsi721_bdma_maint, [8 x %struct.tsi721_bdma_chan], [8 x i32], [8 x %struct.tsi721_imsg_ring], [4 x i32], [4 x %struct.tsi721_omsg_ring], [8 x %struct.tsi721_ib_win], i32, [2 x %struct.tsi721_obw_bar], [8 x %struct.tsi721_ob_win], i32 }
%struct.rio_mport = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, %struct.resource, [16 x %struct.resource], [4 x %struct.rio_msg], [4 x %struct.rio_msg], i32, ptr, i8, i8, i32, i32, i32, [40 x i8], %struct.device, ptr, %struct.dma_device, ptr, %struct.atomic_t, i32 }
%struct.rio_msg = type { ptr, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msix_irq = type { i16, [64 x i8] }
%struct.kfifo = type { %union.anon.76, [0 x i8] }
%union.anon.76 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.tsi721_bdma_maint = type { i32, i32, ptr, i32, ptr, i32, i32 }
%struct.tsi721_bdma_chan = type { i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.dma_chan, ptr, %struct.spinlock, ptr, %struct.list_head, %struct.list_head, %struct.tasklet_struct, i8 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.77, i32 }
%union.anon.77 = type { ptr }
%struct.tsi721_imsg_ring = type { i32, ptr, i32, ptr, i32, ptr, i32, [512 x ptr], i32, ptr, i32, i32, %struct.spinlock }
%struct.tsi721_omsg_ring = type { i32, ptr, i32, [512 x ptr], [512 x i32], ptr, i32, i32, i32, i32, ptr, i32, %struct.spinlock }
%struct.tsi721_ib_win = type { i64, i32, i32, i8, i8, %struct.list_head }
%struct.tsi721_obw_bar = type { i64, i64, i64 }
%struct.tsi721_ob_win = type { i64, i32, i16, i64, i8, ptr }
%struct.tsi721_dma_desc = type { i32, i32, %union.anon.79, %union.anon.80, %union.anon.81 }
%union.anon.79 = type { i32 }
%union.anon.80 = type { i32 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32, i32, i32 }
%struct.msix_entry = type { i32, i16 }
%struct.rio_dbell = type { %struct.list_head, ptr, ptr, ptr }
%union.rio_pw_msg = type { %struct.anon.75 }
%struct.anon.75 = type { i32, i32, i32, i32, [12 x i32] }
%struct.tsi721_omsg_desc = type { i32, i32, %union.anon.84, %union.anon.85 }
%union.anon.84 = type { i32 }
%union.anon.85 = type { i32 }
%struct.rio_dev = type { %struct.list_head, %struct.list_head, ptr, i8, i16, i16, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.device, [16 x %struct.resource], ptr, i16, i8, ptr, %struct.atomic_t, [0 x %struct.rio_switch] }
%struct.rio_switch = type { %struct.list_head, ptr, i32, ptr, %struct.spinlock, [0 x ptr] }
%struct.tsi721_imsg_desc = type { i32, i32, i32, i32, [12 x i32] }
%struct.tsi721_ib_win_mapping = type { %struct.list_head, i32 }
%struct.rio_mport_attr = type { i32, i32, i32, i32, i32, i32 }

@__param_str_dbg_level = internal constant [23 x i8] c"tsi721_mport.dbg_level\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@tsi_dbg_level = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dbg_level = internal constant %struct.kernel_param { ptr @__param_str_dbg_level, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @tsi_dbg_level } }, section "__param", align 4
@__UNIQUE_ID_dbg_leveltype238 = internal constant [37 x i8] c"tsi721_mport.parmtype=dbg_level:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dbg_level239 = internal constant [70 x i8] c"tsi721_mport.parm=dbg_level:Debugging output level (default 0 = none)\00", section ".modinfo", align 1
@__param_str_pcie_mrrs = internal constant [23 x i8] c"tsi721_mport.pcie_mrrs\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@pcie_mrrs = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_pcie_mrrs = internal constant %struct.kernel_param { ptr @__param_str_pcie_mrrs, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @pcie_mrrs } }, section "__param", align 4
@__UNIQUE_ID_pcie_mrrstype240 = internal constant [36 x i8] c"tsi721_mport.parmtype=pcie_mrrs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pcie_mrrs241 = internal constant [61 x i8] c"tsi721_mport.parm=pcie_mrrs:PCIe MRRS override value (0...5)\00", section ".modinfo", align 1
@__param_str_mbox_sel = internal constant [22 x i8] c"tsi721_mport.mbox_sel\00", align 1
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@mbox_sel = internal global { i8, [31 x i8] } { i8 15, [31 x i8] zeroinitializer }, align 32
@__param_mbox_sel = internal constant %struct.kernel_param { ptr @__param_str_mbox_sel, ptr null, ptr @param_ops_byte, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @mbox_sel } }, section "__param", align 4
@__UNIQUE_ID_mbox_seltype242 = internal constant [36 x i8] c"tsi721_mport.parmtype=mbox_sel:byte\00", section ".modinfo", align 1
@__UNIQUE_ID_mbox_sel243 = internal constant [83 x i8] c"tsi721_mport.parm=mbox_sel:RIO Messaging MBOX Selection Mask (default: 0x0f = all)\00", section ".modinfo", align 1
@__initcall__kmod_tsi721_mport__281_2998_tsi721_driver_init6 = internal global ptr @tsi721_driver_init, section ".initcall6.init", align 4
@tsi721_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @tsi721_pci_tbl, ptr @tsi721_probe, ptr @tsi721_remove, ptr null, ptr null, ptr @tsi721_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_tsi721_driver_exit = internal global ptr @tsi721_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description282 = internal constant [69 x i8] c"tsi721_mport.description=IDT Tsi721 PCIExpress-to-SRIO bridge driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author283 = internal constant [55 x i8] c"tsi721_mport.author=Integrated Device Technology, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file284 = internal constant [55 x i8] c"tsi721_mport.file=drivers/rapidio/devices/tsi721_mport\00", section ".modinfo", align 1
@__UNIQUE_ID_license285 = internal constant [25 x i8] c"tsi721_mport.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tsi721_mport\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tsi721\00", [25 x i8] zeroinitializer }, align 32
@tsi721_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4381, i32 32939, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@tsi721_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2748, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: ERROR Failed to enable PCI device\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tsi721_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/rapidio/devices/tsi721.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tsi721_probe._entry_ptr = internal global ptr @tsi721_probe._entry, section ".printk_index", align 4
@tsi721_probe.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 2, i8 -78, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: res%d %pR\0A\00", [17 x i8] zeroinitializer }, align 32
@tsi721_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 2772, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: ERROR Missing or misconfigured CSR BAR0\0A\00", [51 x i8] zeroinitializer }, align 32
@tsi721_probe._entry_ptr.10 = internal global ptr @tsi721_probe._entry.8, section ".printk_index", align 4
@tsi721_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 2781, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: ERROR Missing or misconfigured Doorbell BAR1\0A\00", [46 x i8] zeroinitializer }, align 32
@tsi721_probe._entry_ptr.13 = internal global ptr @tsi721_probe._entry.11, section ".printk_index", align 4
@tsi721_probe.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.14, i8 2, i8 -69, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Prefetchable OBW BAR2 will not be used\0A\00", [52 x i8] zeroinitializer }, align 32
@tsi721_probe.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.15, i8 2, i8 -66, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Prefetchable OBW BAR4 will not be used\0A\00", [52 x i8] zeroinitializer }, align 32
@tsi721_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 2818, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: ERROR Unable to obtain PCI resources\0A\00", [54 x i8] zeroinitializer }, align 32
@tsi721_probe._entry_ptr.18 = internal global ptr @tsi721_probe._entry.16, section ".printk_index", align 4
@tsi721_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 2826, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: ERROR Unable to map device registers space\0A\00", [48 x i8] zeroinitializer }, align 32
@tsi721_probe._entry_ptr.21 = internal global ptr @tsi721_probe._entry.19, section ".printk_index", align 4
@tsi721_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 2833, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: ERROR Unable to map outbound doorbells space\0A\00", [46 x i8] zeroinitializer }, align 32
@tsi721_probe._entry_ptr.24 = internal global ptr @tsi721_probe._entry.22, section ".printk_index", align 4
@tsi721_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 2842, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: ERROR Unable to set DMA mask\0A\00", [62 x i8] zeroinitializer }, align 32
@tsi721_probe._entry_ptr.27 = internal global ptr @tsi721_probe._entry.25, section ".printk_index", align 4
@tsi721_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 2847, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Unable to set consistent DMA mask\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tsi721_probe._entry_ptr.31 = internal global ptr @tsi721_probe._entry.28, section ".printk_index", align 4
@tsi721_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 2851, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tsi721_probe._entry_ptr.33 = internal global ptr @tsi721_probe._entry.32, section ".printk_index", align 4
@tsi721_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 2867, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Invalid MRRS override value %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tsi721_probe._entry_ptr.36 = internal global ptr @tsi721_probe._entry.34, section ".printk_index", align 4
@tsi721_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.3, ptr @.str.4, i32 2891, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: ERROR BDMA initialization failed\0A\00", [58 x i8] zeroinitializer }, align 32
@tsi721_probe._entry_ptr.39 = internal global ptr @tsi721_probe._entry.37, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tsi721_bdma_maint_init.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.4, ptr @.str.41, i8 1, i8 100, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tsi721_bdma_maint_init\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Init BDMA_%d Maintenance requests\0A\00", [57 x i8] zeroinitializer }, align 32
@tsi721_bdma_maint_init.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.4, ptr @.str.42, i8 1, i8 106, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: DMA descriptors @ %p (phys = %pad)\0A\00", [56 x i8] zeroinitializer }, align 32
@tsi721_bdma_maint_init.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.4, ptr @.str.43, i8 1, i8 112, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: desc status FIFO @ %p (phys = %pad) size=0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@tsi721_doorbell_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&priv->idb_work)\00", [61 x i8] zeroinitializer }, align 32
@tsi721_doorbell_init.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.4, ptr @.str.46, i8 1, i8 89, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tsi721_doorbell_init\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Allocated IDB buffer @ %p (phys = %pad)\0A\00", [51 x i8] zeroinitializer }, align 32
@tsi721_db_dpc.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.4, ptr @.str.48, i8 0, i8 107, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tsi721_db_dpc\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: spurious IDB sid %2.2x tid %2.2x info %4.4x\0A\00", [47 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@tsi721_port_write_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&priv->pw_work)\00", [62 x i8] zeroinitializer }, align 32
@tsi721_port_write_init.__key.50 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&priv->pw_fifo_lock\00", [44 x i8] zeroinitializer }, align 32
@tsi721_port_write_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 1346, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: ERROR PW FIFO allocation failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tsi721_port_write_init\00", [41 x i8] zeroinitializer }, align 32
@tsi721_port_write_init._entry_ptr = internal global ptr @tsi721_port_write_init._entry, section ".printk_index", align 4
@tsi721_rio_ops = internal global { %struct.rio_ops, [56 x i8] } { %struct.rio_ops { ptr @tsi721_lcread, ptr @tsi721_lcwrite, ptr @tsi721_cread_dma, ptr @tsi721_cwrite_dma, ptr @tsi721_dsend, ptr @tsi721_pw_enable, ptr @tsi721_open_outb_mbox, ptr @tsi721_close_outb_mbox, ptr @tsi721_open_inb_mbox, ptr @tsi721_close_inb_mbox, ptr @tsi721_add_outb_message, ptr @tsi721_add_inb_buffer, ptr @tsi721_get_inb_message, ptr @tsi721_rio_map_inb_mem, ptr @tsi721_rio_unmap_inb_mem, ptr @tsi721_query_mport, ptr @tsi721_map_outb_win, ptr @tsi721_unmap_outb_win }, [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s(%s)\00", [25 x i8] zeroinitializer }, align 32
@tsi721_setup_mport.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.4, ptr @.str.56, i8 2, i8 -95, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tsi721_setup_mport\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: MSI/MSI-X is not available. Using legacy INTx.\0A\00", [44 x i8] zeroinitializer }, align 32
@tsi721_setup_mport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.4, i32 2700, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: ERROR Unable to get PCI IRQ %02X (err=0x%x)\0A\00", [47 x i8] zeroinitializer }, align 32
@tsi721_setup_mport._entry_ptr = internal global ptr @tsi721_setup_mport._entry, section ".printk_index", align 4
@tsi721_maint_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.62, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@tsi721_maint_dma.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.4, ptr @.str.59, i8 0, i8 38, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tsi721_maint_dma\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: DMA[%d] read timeout ch_status=%x\0A\00", [57 x i8] zeroinitializer }, align 32
@tsi721_maint_dma.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.4, ptr @.str.60, i8 0, i8 41, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: DMA ABORT ch_stat=%x\0A\00", [38 x i8] zeroinitializer }, align 32
@tsi721_maint_dma.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.4, ptr @.str.61, i8 0, i8 42, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: OP=%d : destid=%x hc=%x off=%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tsi721_maint_lock\00", [46 x i8] zeroinitializer }, align 32
@tsi721_dsend.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.4, ptr @.str.64, i8 0, i8 87, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tsi721_dsend\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Send Doorbell 0x%04x to destID 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@tsi721_open_outb_mbox.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&priv->omsg_ring[mbox].lock\00", [36 x i8] zeroinitializer }, align 32
@tsi721_open_outb_mbox.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.4, ptr @.str.67, i8 1, i8 -36, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tsi721_open_outb_mbox\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: ENOMEM for OB_MSG_%d data buffer\0A\00", [58 x i8] zeroinitializer }, align 32
@tsi721_open_outb_mbox.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.4, ptr @.str.68, i8 1, i8 -32, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: ENOMEM for OB_MSG_%d descriptor memory\0A\00", [52 x i8] zeroinitializer }, align 32
@tsi721_open_outb_mbox.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.4, ptr @.str.69, i8 1, i8 -29, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: ENOMEM for OB_MSG_%d status FIFO\0A\00", [58 x i8] zeroinitializer }, align 32
@tsi721_open_outb_mbox.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.4, ptr @.str.70, i8 1, i8 -19, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Unable to get MSI-X IRQ for OBOX%d-DONE\0A\00", [51 x i8] zeroinitializer }, align 32
@tsi721_open_outb_mbox.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.4, ptr @.str.71, i8 1, i8 -17, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Unable to get MSI-X IRQ for MBOX%d-INT\0A\00", [52 x i8] zeroinitializer }, align 32
@tsi721_omsg_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.4, i32 1748, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: OB MBOX%d: Status FIFO is full\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tsi721_omsg_handler\00", [44 x i8] zeroinitializer }, align 32
@tsi721_omsg_handler._entry_ptr = internal global ptr @tsi721_omsg_handler._entry, section ".printk_index", align 4
@tsi721_omsg_handler.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.4, ptr @.str.74, i8 1, i8 -61, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: OB_MSG tx_slot=%x > size=%x\0A\00", [63 x i8] zeroinitializer }, align 32
@tsi721_omsg_handler.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.4, ptr @.str.75, i8 1, i8 -56, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: OB MSG ABORT ch_stat=%x\0A\00", [35 x i8] zeroinitializer }, align 32
@tsi721_open_inb_mbox.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&priv->imsg_ring[mbox].lock\00", [36 x i8] zeroinitializer }, align 32
@tsi721_open_inb_mbox._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.4, i32 2200, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: ERROR Failed to allocate buffers for IB MBOX%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tsi721_open_inb_mbox\00", [43 x i8] zeroinitializer }, align 32
@tsi721_open_inb_mbox._entry_ptr = internal global ptr @tsi721_open_inb_mbox._entry, section ".printk_index", align 4
@tsi721_open_inb_mbox._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.4, i32 2214, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: ERROR Failed to allocate free queue for IB MBOX%d\0A\00", [41 x i8] zeroinitializer }, align 32
@tsi721_open_inb_mbox._entry_ptr.81 = internal global ptr @tsi721_open_inb_mbox._entry.79, section ".printk_index", align 4
@tsi721_open_inb_mbox._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.4, i32 2228, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: ERROR Failed to allocate descriptor memory for IB MBOX%d\0A\00", [34 x i8] zeroinitializer }, align 32
@tsi721_open_inb_mbox._entry_ptr.84 = internal global ptr @tsi721_open_inb_mbox._entry.82, section ".printk_index", align 4
@tsi721_open_inb_mbox.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.4, ptr @.str.85, i8 2, i8 60, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Unable to get MSI-X IRQ for IBOX%d-DONE\0A\00", [51 x i8] zeroinitializer }, align 32
@tsi721_open_inb_mbox.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.4, ptr @.str.86, i8 2, i8 62, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Unable to get MSI-X IRQ for IBOX%d-INT\0A\00", [52 x i8] zeroinitializer }, align 32
@tsi721_imsg_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.4, i32 2124, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: IB MBOX%d SRIO timeout\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tsi721_imsg_handler\00", [44 x i8] zeroinitializer }, align 32
@tsi721_imsg_handler._entry_ptr = internal global ptr @tsi721_imsg_handler._entry, section ".printk_index", align 4
@tsi721_imsg_handler._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.4, i32 2127, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: IB MBOX%d PCIe error\0A\00", [38 x i8] zeroinitializer }, align 32
@tsi721_imsg_handler._entry_ptr.91 = internal global ptr @tsi721_imsg_handler._entry.89, section ".printk_index", align 4
@tsi721_imsg_handler._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.4, i32 2130, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: IB MBOX%d IB free queue low\0A\00", [63 x i8] zeroinitializer }, align 32
@tsi721_imsg_handler._entry_ptr.94 = internal global ptr @tsi721_imsg_handler._entry.92, section ".printk_index", align 4
@tsi721_add_inb_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.4, i32 2423, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: ERROR Error adding inbound buffer %d, buffer exists\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tsi721_add_inb_buffer\00", [42 x i8] zeroinitializer }, align 32
@tsi721_add_inb_buffer._entry_ptr = internal global ptr @tsi721_add_inb_buffer._entry, section ".printk_index", align 4
@tsi721_rio_map_inb_mem.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.4, ptr @.str.98, i8 1, i8 22, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tsi721_rio_map_inb_mem\00", [41 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s: Direct (RIO_0x%llx -> PCIe_%pad), size=0x%llx, ibw_start = 0x%llx\0A\00", [57 x i8] zeroinitializer }, align 32
@tsi721_rio_map_inb_mem.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.4, ptr @.str.99, i8 1, i8 26, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: Translated (RIO_0x%llx -> PCIe_%pad), size=0x%llx\0A\00", [41 x i8] zeroinitializer }, align 32
@tsi721_rio_map_inb_mem.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.4, ptr @.str.100, i8 1, i8 50, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: Configured IBWIN%d (RIO_0x%llx -> PCIe_%pad), size=0x%llx\0A\00", [33 x i8] zeroinitializer }, align 32
@tsi721_rio_unmap_inb_mem.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.4, ptr @.str.102, i8 1, i8 55, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tsi721_rio_unmap_inb_mem\00", [39 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Unmap IBW mapped to PCIe_%pad\0A\00", [61 x i8] zeroinitializer }, align 32
@tsi721_rio_unmap_inb_mem.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.4, ptr @.str.103, i8 1, i8 64, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Disable IBWIN_%d\0A\00", [42 x i8] zeroinitializer }, align 32
@tsi721_rio_unmap_inb_mem.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.4, ptr @.str.104, i8 1, i8 67, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: IB window mapped to %pad not found\0A\00", [56 x i8] zeroinitializer }, align 32
@tsi721_map_outb_win.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.4, ptr @.str.106, i8 0, i8 -23, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tsi721_map_outb_win\00", [44 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: did=%d ra=0x%llx sz=0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@tsi721_map_outb_win.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.4, ptr @.str.107, i8 0, i8 -17, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: allocated OBW%d @%llx\0A\00", [37 x i8] zeroinitializer }, align 32
@tsi721_obw_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.4, i32 905, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: ERROR OBW count tracking failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tsi721_obw_alloc\00", [47 x i8] zeroinitializer }, align 32
@tsi721_obw_alloc._entry_ptr = internal global ptr @tsi721_obw_alloc._entry, section ".printk_index", align 4
@tsi721_unmap_outb_win.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.4, ptr @.str.111, i8 0, i8 -4, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tsi721_unmap_outb_win\00", [42 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: did=%d ra=0x%llx\0A\00", [42 x i8] zeroinitializer }, align 32
@tsi721_unmap_outb_win.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.4, ptr @.str.112, i8 0, i8 -2, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: free OBW%d @%llx\0A\00", [42 x i8] zeroinitializer }, align 32
@tsi721_mport_release.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.4, ptr @.str.114, i8 2, i8 -106, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tsi721_mport_release\00", [43 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: %s id=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@tsi721_enable_msix._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.4, i32 764, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: ERROR Failed to enable MSI-X (err=%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tsi721_enable_msix\00", [45 x i8] zeroinitializer }, align 32
@tsi721_enable_msix._entry_ptr = internal global ptr @tsi721_enable_msix._entry, section ".printk_index", align 4
@.str.117 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tsi721-idb@pci:%s\00", [46 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tsi721-pwrx@pci:%s\00", [45 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tsi721-imbr%d@pci:%s\00", [43 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tsi721-imbi%d@pci:%s\00", [43 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tsi721-ombd%d@pci:%s\00", [43 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tsi721-ombi%d@pci:%s\00", [43 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tsi721-dmad%d@pci:%s\00", [43 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tsi721-dmai%d@pci:%s\00", [43 x i8] zeroinitializer }, align 32
@tsi721_request_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.4, i32 839, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: ERROR Unable to allocate interrupt, err=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tsi721_request_irq\00", [45 x i8] zeroinitializer }, align 32
@tsi721_request_irq._entry_ptr = internal global ptr @tsi721_request_irq._entry, section ".printk_index", align 4
@tsi721_irqhandler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.4, i32 485, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Unsupported SR_CH_INT %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tsi721_irqhandler\00", [46 x i8] zeroinitializer }, align 32
@tsi721_irqhandler._entry_ptr = internal global ptr @tsi721_irqhandler._entry, section ".printk_index", align 4
@tsi721_irqhandler.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.128, ptr @.str.4, ptr @.str.129, i8 0, i8 -119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: IRQ from DMA channel 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@tsi721_remove.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.4, ptr @.str.131, i8 2, i8 -33, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tsi721_remove\00", [18 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: enter\0A\00", [21 x i8] zeroinitializer }, align 32
@tsi721_remove.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.4, ptr @.str.132, i8 2, i8 -26, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: exit\0A\00", [22 x i8] zeroinitializer }, align 32
@tsi721_shutdown.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.133, ptr @.str.4, ptr @.str.131, i8 2, i8 -25, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tsi721_shutdown\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.134 = private unnamed_addr constant [14 x i8] c"tsi_dbg_level\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 27, i32 5 }
@___asan_gen_.137 = private unnamed_addr constant [10 x i8] c"pcie_mrrs\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 32, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant [9 x i8] c"mbox_sel\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 36, i32 11 }
@___asan_gen_.143 = private unnamed_addr constant [14 x i8] c"tsi721_driver\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2990, i32 26 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2998, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2991, i32 11 }
@___asan_gen_.152 = private unnamed_addr constant [15 x i8] c"tsi721_pci_tbl\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2983, i32 35 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2748, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2759, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2772, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2781, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2798, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2808, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2818, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2826, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2833, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2842, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2847, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2851, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2866, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2891, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1426, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1447, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1470, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1369, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1378, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 425, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1342, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1343, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1346, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant [15 x i8] c"tsi721_rio_ops\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2623, i32 23 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2681, i32 44 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2692, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2699, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant [18 x i8] c"tsi721_maint_lock\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 151, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 165, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 167, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 41, i32 8 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 350, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1895, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1906, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1919, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1934, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1971, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1982, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1747, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1804, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1826, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2189, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2199, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2213, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2226, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2286, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2297, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2124, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2127, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2130, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2421, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1110, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1129, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1224, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1246, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1282, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1291, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 932, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 957, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 905, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1009, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1016, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2648, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 763, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 773, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 776, i32 4 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 782, i32 26 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 788, i32 26 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 794, i32 26 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 800, i32 26 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 809, i32 26 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 815, i32 26 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 838, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 484, i32 5 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 547, i32 4 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2940, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2968, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.558 = private constant [36 x i8] c"../drivers/rapidio/devices/tsi721.c\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2975, i32 2 }
@llvm.compiler.used = appending global [183 x ptr] [ptr @__UNIQUE_ID_author283, ptr @__UNIQUE_ID_dbg_level239, ptr @__UNIQUE_ID_dbg_leveltype238, ptr @__UNIQUE_ID_description282, ptr @__UNIQUE_ID_file284, ptr @__UNIQUE_ID_license285, ptr @__UNIQUE_ID_mbox_sel243, ptr @__UNIQUE_ID_mbox_seltype242, ptr @__UNIQUE_ID_pcie_mrrs241, ptr @__UNIQUE_ID_pcie_mrrstype240, ptr @__exitcall_tsi721_driver_exit, ptr @__initcall__kmod_tsi721_mport__281_2998_tsi721_driver_init6, ptr @__param_dbg_level, ptr @__param_mbox_sel, ptr @__param_pcie_mrrs, ptr @tsi721_add_inb_buffer._entry, ptr @tsi721_add_inb_buffer._entry_ptr, ptr @tsi721_driver_exit, ptr @tsi721_enable_msix._entry, ptr @tsi721_enable_msix._entry_ptr, ptr @tsi721_imsg_handler._entry, ptr @tsi721_imsg_handler._entry.89, ptr @tsi721_imsg_handler._entry.92, ptr @tsi721_imsg_handler._entry_ptr, ptr @tsi721_imsg_handler._entry_ptr.91, ptr @tsi721_imsg_handler._entry_ptr.94, ptr @tsi721_irqhandler._entry, ptr @tsi721_irqhandler._entry_ptr, ptr @tsi721_obw_alloc._entry, ptr @tsi721_obw_alloc._entry_ptr, ptr @tsi721_omsg_handler._entry, ptr @tsi721_omsg_handler._entry_ptr, ptr @tsi721_open_inb_mbox._entry, ptr @tsi721_open_inb_mbox._entry.79, ptr @tsi721_open_inb_mbox._entry.82, ptr @tsi721_open_inb_mbox._entry_ptr, ptr @tsi721_open_inb_mbox._entry_ptr.81, ptr @tsi721_open_inb_mbox._entry_ptr.84, ptr @tsi721_port_write_init._entry, ptr @tsi721_port_write_init._entry_ptr, ptr @tsi721_probe._entry, ptr @tsi721_probe._entry.11, ptr @tsi721_probe._entry.16, ptr @tsi721_probe._entry.19, ptr @tsi721_probe._entry.22, ptr @tsi721_probe._entry.25, ptr @tsi721_probe._entry.28, ptr @tsi721_probe._entry.32, ptr @tsi721_probe._entry.34, ptr @tsi721_probe._entry.37, ptr @tsi721_probe._entry.8, ptr @tsi721_probe._entry_ptr, ptr @tsi721_probe._entry_ptr.10, ptr @tsi721_probe._entry_ptr.13, ptr @tsi721_probe._entry_ptr.18, ptr @tsi721_probe._entry_ptr.21, ptr @tsi721_probe._entry_ptr.24, ptr @tsi721_probe._entry_ptr.27, ptr @tsi721_probe._entry_ptr.31, ptr @tsi721_probe._entry_ptr.33, ptr @tsi721_probe._entry_ptr.36, ptr @tsi721_probe._entry_ptr.39, ptr @tsi721_request_irq._entry, ptr @tsi721_request_irq._entry_ptr, ptr @tsi721_setup_mport._entry, ptr @tsi721_setup_mport._entry_ptr, ptr @tsi_dbg_level, ptr @pcie_mrrs, ptr @mbox_sel, ptr @tsi721_driver, ptr @.str, ptr @.str.1, ptr @tsi721_pci_tbl, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @tsi721_doorbell_init.__key, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @tsi721_port_write_init.__key, ptr @.str.49, ptr @tsi721_port_write_init.__key.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @tsi721_rio_ops, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @tsi721_maint_lock, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @tsi721_open_outb_mbox.__key, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @tsi721_open_inb_mbox.__key, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133], section "llvm.metadata"
@0 = internal global [142 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi_dbg_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_mrrs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_sel to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_doorbell_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_port_write_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_port_write_init.__key.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_port_write_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_rio_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_setup_mport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_maint_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_open_outb_mbox.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_omsg_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_open_inb_mbox.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_open_inb_mbox._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_open_inb_mbox._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_open_inb_mbox._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_imsg_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_imsg_handler._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_imsg_handler._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_add_inb_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_obw_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_enable_msix._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_request_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_irqhandler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @tsi721_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tsi721_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @tsi721_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 40640, i32 noundef 3520, i32 noundef 4) #12
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #13
  br label %err_clean

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %call1.i.i.i, align 4096
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br label %do.body6

do.body6:                                         ; preds = %for.inc.do.body6_crit_edge, %if.end4
  %i.0506 = phi i32 [ 0, %if.end4 ], [ %inc, %for.inc.do.body6_crit_edge ]
  %1 = load i32, ptr @tsi_dbg_level, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body6.for.inc_crit_edge, label %do.body9

do.body6.for.inc_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body9:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_probe.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_probe, %for.inc)) #9
          to label %if.then15 [label %for.inc], !srcloc !325

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %i.0506
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_probe.__UNIQUE_ID_ddebug275, ptr noundef %dev16, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef %i.0506, ptr noundef %arrayidx) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %do.body9, %do.body6.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0506, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.do.body6_crit_edge

for.inc.do.body6_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body6

for.end:                                          ; preds = %for.inc
  %resource23 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %flags = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %4 = and i32 %3, 1049088
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %4)
  %5 = icmp eq i32 %4, 512
  br i1 %5, label %lor.lhs.false32, label %for.end.do.end45_crit_edge

for.end.do.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

lor.lhs.false32:                                  ; preds = %for.end
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp35 = icmp eq i32 %7, 0
  br i1 %cmp35, label %lor.lhs.false32.do.end45_crit_edge, label %cond.end

lor.lhs.false32.do.end45_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

cond.end:                                         ; preds = %lor.lhs.false32
  %8 = ptrtoint ptr %resource23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resource23, align 8
  %sub = add i32 %7, 1
  %add = sub i32 %sub, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %add)
  %cmp41 = icmp ult i32 %add, 524288
  br i1 %cmp41, label %cond.end.do.end45_crit_edge, label %if.end47

cond.end.do.end45_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

do.end45:                                         ; preds = %cond.end.do.end45_crit_edge, %lor.lhs.false32.do.end45_crit_edge, %for.end.do.end45_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3) #13
  br label %err_disable_pdev

if.end47:                                         ; preds = %cond.end
  %arrayidx49 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %flags50 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 3
  %10 = ptrtoint ptr %flags50 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags50, align 4
  %12 = and i32 %11, 1049088
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %12)
  %13 = icmp eq i32 %12, 512
  br i1 %13, label %lor.lhs.false59, label %if.end47.do.end80_crit_edge

if.end47.do.end80_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end80

lor.lhs.false59:                                  ; preds = %if.end47
  %end62 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %14 = ptrtoint ptr %end62 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp63 = icmp eq i32 %15, 0
  br i1 %cmp63, label %lor.lhs.false59.do.end80_crit_edge, label %cond.end74

lor.lhs.false59.do.end80_crit_edge:               ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end80

cond.end74:                                       ; preds = %lor.lhs.false59
  %16 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx49, align 8
  %sub72 = add i32 %15, 1
  %add73 = sub i32 %sub72, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %add73)
  %cmp76 = icmp ult i32 %add73, 16777216
  br i1 %cmp76, label %cond.end74.do.end80_crit_edge, label %if.end82

cond.end74.do.end80_crit_edge:                    ; preds = %cond.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end80

do.end80:                                         ; preds = %cond.end74.do.end80_crit_edge, %lor.lhs.false59.do.end80_crit_edge, %if.end47.do.end80_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3) #13
  br label %err_disable_pdev

if.end82:                                         ; preds = %cond.end74
  %p2r_bar = getelementptr inbounds %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 22
  %arrayidx83 = getelementptr %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 22, i32 1
  %size = getelementptr %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 22, i32 1, i32 1
  %18 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %size, align 8
  %size86 = getelementptr inbounds %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 22, i32 0, i32 1
  %19 = ptrtoint ptr %size86 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %size86, align 16
  %arrayidx88 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %flags89 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 3
  %20 = ptrtoint ptr %flags89 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags89, align 4
  %and90 = and i32 %21, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end82.if.end152_crit_edge, label %if.then92

if.end82.if.end152_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

if.then92:                                        ; preds = %if.end82
  %and96 = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.else, label %do.body99

do.body99:                                        ; preds = %if.then92
  %22 = load i32, ptr @tsi_dbg_level, align 4
  %and100 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %do.body99.if.end152_crit_edge, label %do.body103

do.body99.if.end152_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

do.body103:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_probe.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_probe, %if.end152)) #9
          to label %if.then117 [label %if.end152], !srcloc !325

if.then117:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_probe.__UNIQUE_ID_ddebug276, ptr noundef %dev16, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.3) #9
  br label %if.end152

if.else:                                          ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx88, align 8
  %conv = zext i32 %24 to i64
  %25 = ptrtoint ptr %p2r_bar to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv, ptr %p2r_bar, align 8
  %end132 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %26 = ptrtoint ptr %end132 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp133 = icmp eq i32 %27, 0
  %sub143 = sub i32 1, %24
  %add144 = add i32 %sub143, %27
  %cond146 = select i1 %cmp133, i32 0, i32 %add144
  %conv147 = zext i32 %cond146 to i64
  %28 = ptrtoint ptr %size86 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv147, ptr %size86, align 16
  br label %if.end152

if.end152:                                        ; preds = %if.else, %if.then117, %do.body103, %do.body99.if.end152_crit_edge, %if.end82.if.end152_crit_edge
  %arrayidx154 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4
  %flags155 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4, i32 3
  %29 = ptrtoint ptr %flags155 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags155, align 4
  %and156 = and i32 %30, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %if.end152.if.end221_crit_edge, label %if.then158

if.end152.if.end221_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end221

if.then158:                                       ; preds = %if.end152
  %and162 = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.else191, label %do.body165

do.body165:                                       ; preds = %if.then158
  %31 = load i32, ptr @tsi_dbg_level, align 4
  %and166 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %do.body165.if.end221_crit_edge, label %do.body169

do.body165.if.end221_crit_edge:                   ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end221

do.body169:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_probe.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_probe, %if.end221)) #9
          to label %if.then183 [label %if.end221], !srcloc !325

if.then183:                                       ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_probe.__UNIQUE_ID_ddebug277, ptr noundef %dev16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.3) #9
  br label %if.end221

if.else191:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx154, align 8
  %conv195 = zext i32 %33 to i64
  %34 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv195, ptr %arrayidx83, align 32
  %end201 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4, i32 1
  %35 = ptrtoint ptr %end201 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %end201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp202 = icmp eq i32 %36, 0
  %sub212 = sub i32 1, %33
  %add213 = add i32 %sub212, %36
  %cond215 = select i1 %cmp202, i32 0, i32 %add213
  %conv216 = zext i32 %cond215 to i64
  %37 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv216, ptr %size, align 8
  br label %if.end221

if.end221:                                        ; preds = %if.else191, %if.then183, %do.body169, %do.body165.if.end221_crit_edge, %if.end152.if.end221_crit_edge
  %call222 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %if.end229, label %do.end227

do.end227:                                        ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3) #13
  br label %err_disable_pdev

if.end229:                                        ; preds = %if.end221
  tail call void @pci_set_master(ptr noundef %pdev) #9
  %call230 = tail call ptr @pci_ioremap_bar(ptr noundef %pdev, i32 noundef 0) #9
  %regs = getelementptr inbounds %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call230, ptr %regs, align 4
  %tobool232.not = icmp eq ptr %call230, null
  br i1 %tobool232.not, label %do.end236, label %if.end238

do.end236:                                        ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.3) #13
  br label %err_free_res

if.end238:                                        ; preds = %if.end229
  %call239 = tail call ptr @pci_ioremap_bar(ptr noundef %pdev, i32 noundef 1) #9
  %odb_base = getelementptr inbounds %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %odb_base to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call239, ptr %odb_base, align 4
  %tobool241.not = icmp eq ptr %call239, null
  br i1 %tobool241.not, label %do.end245, label %if.end247

do.end245:                                        ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.3) #13
  br label %err_unmap_bars

if.end247:                                        ; preds = %if.end238
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev16, i64 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool249.not = icmp eq i32 %call.i, 0
  br i1 %tobool249.not, label %if.else267, label %if.then250

if.then250:                                       ; preds = %if.end247
  %call.i462 = tail call i32 @dma_set_mask(ptr noundef %dev16, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i462)
  %tobool252.not = icmp eq i32 %call.i462, 0
  br i1 %tobool252.not, label %if.end258, label %do.end256

do.end256:                                        ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.3) #13
  br label %err_unmap_bars

if.end258:                                        ; preds = %if.then250
  %call.i464 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev16, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i464)
  %tobool260.not = icmp eq i32 %call.i464, 0
  br i1 %tobool260.not, label %if.end258.do.body277_crit_edge, label %if.end258.do.body277.sink.split_crit_edge

if.end258.do.body277.sink.split_crit_edge:        ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body277.sink.split

if.end258.do.body277_crit_edge:                   ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body277

if.else267:                                       ; preds = %if.end247
  %call.i466 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev16, i64 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i466)
  %tobool269.not = icmp eq i32 %call.i466, 0
  br i1 %tobool269.not, label %if.else267.do.body277_crit_edge, label %if.else267.do.body277.sink.split_crit_edge

if.else267.do.body277.sink.split_crit_edge:       ; preds = %if.else267
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body277.sink.split

if.else267.do.body277_crit_edge:                  ; preds = %if.else267
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body277

do.body277.sink.split:                            ; preds = %if.else267.do.body277.sink.split_crit_edge, %if.end258.do.body277.sink.split_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3) #13
  br label %do.body277

do.body277:                                       ; preds = %do.body277.sink.split, %if.else267.do.body277_crit_edge, %if.end258.do.body277_crit_edge
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 19
  %40 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.i.not = icmp eq i8 %41, 0
  br i1 %tobool.i.not, label %do.body288, label %do.end296, !prof !326

do.body288:                                       ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/rapidio/devices/tsi721.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2854, 0\0A.popsection", ""() #9, !srcloc !327
  unreachable

do.end296:                                        ; preds = %do.body277
  %call297 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %pdev, i32 noundef 8, i16 noundef zeroext 2064, i16 noundef zeroext 0) #9
  %42 = load i32, ptr @pcie_mrrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp298 = icmp sgt i32 %42, -1
  br i1 %cmp298, label %if.then300, label %do.end296.if.end312_crit_edge

do.end296.if.end312_crit_edge:                    ; preds = %do.end296
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end312

if.then300:                                       ; preds = %do.end296
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %42)
  %cmp301 = icmp ult i32 %42, 6
  br i1 %cmp301, label %if.then303, label %do.end309

if.then303:                                       ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #11
  %.tr = trunc i32 %42 to i16
  %conv304 = shl nuw nsw i16 %.tr, 12
  %call305 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %pdev, i32 noundef 8, i16 noundef zeroext 28672, i16 noundef zeroext %conv304) #9
  br label %if.end312

do.end309:                                        ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, i32 noundef %42) #13
  br label %if.end312

if.end312:                                        ; preds = %do.end309, %if.then303, %do.end296.if.end312_crit_edge
  %call313 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %pdev, i32 noundef 40, i16 noundef zeroext 15, i16 noundef zeroext 2) #9
  %call314 = tail call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 1024, i32 noundef 1) #9
  %call315 = tail call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 164, i32 noundef 180224) #9
  %call316 = tail call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 168, i32 noundef 172032) #9
  %call317 = tail call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #9
  tail call fastcc void @tsi721_disable_ints(ptr noundef %call1.i.i.i)
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %44, i32 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !329
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %add.ptr.1.i = getelementptr i8, ptr %46, i32 262176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i, i32 0) #9, !srcloc !329
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 4
  %add.ptr.2.i = getelementptr i8, ptr %48, i32 262208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.i, i32 0) #9, !srcloc !329
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 4
  %add.ptr.3.i = getelementptr i8, ptr %50, i32 262240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3.i, i32 0) #9, !srcloc !329
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs, align 4
  %add.ptr.4.i = getelementptr i8, ptr %52, i32 262272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.4.i, i32 0) #9, !srcloc !329
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs, align 4
  %add.ptr.5.i = getelementptr i8, ptr %54, i32 262304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.5.i, i32 0) #9, !srcloc !329
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs, align 4
  %add.ptr.6.i = getelementptr i8, ptr %56, i32 262336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.6.i, i32 0) #9, !srcloc !329
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 4
  %add.ptr.7.i = getelementptr i8, ptr %58, i32 262368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.7.i, i32 0) #9, !srcloc !329
  %59 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs, align 4
  %add.ptr2.i = getelementptr i8, ptr %60, i32 267012
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #9, !srcloc !329
  %61 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs, align 4
  %add.ptr4.i = getelementptr i8, ptr %62, i32 267016
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #9, !srcloc !329
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs, align 4
  %add.ptr6.i = getelementptr i8, ptr %64, i32 267020
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #9, !srcloc !329
  br label %for.cond10.preheader.i

for.cond10.preheader.i:                           ; preds = %for.inc21.i.for.cond10.preheader.i_crit_edge, %if.end312
  %i.178.i = phi i32 [ 0, %if.end312 ], [ %inc22.i, %for.inc21.i.for.cond10.preheader.i_crit_edge ]
  %shl.i = shl i32 %i.178.i, 3
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %while.end.i.while.cond.preheader.i_crit_edge, %for.cond10.preheader.i
  %z.077.i = phi i32 [ 0, %for.cond10.preheader.i ], [ %inc19.i, %while.end.i.while.cond.preheader.i_crit_edge ]
  %65 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs, align 4
  %add.ptr1475.i = getelementptr i8, ptr %66, i32 267008
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1475.i) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %68 = and i32 %67, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not76.i = icmp eq i32 %68, 0
  br i1 %tobool.not76.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748) #9
  %70 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs, align 4
  %add.ptr14.i = getelementptr i8, ptr %71, i32 267008
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %73 = and i32 %72, 256
  %tobool.not.i = icmp eq i32 %73, 0
  br i1 %tobool.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %or.i = or i32 %shl.i, %z.077.i
  %or15.i = or i32 %or.i, 65536
  %74 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs, align 4
  %add.ptr17.i = getelementptr i8, ptr %75, i32 267008
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %76 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %76) #9, !srcloc !329
  %inc19.i = add nuw nsw i32 %z.077.i, 1
  %exitcond.not.i = icmp eq i32 %inc19.i, 8
  br i1 %exitcond.not.i, label %for.inc21.i, label %while.end.i.while.cond.preheader.i_crit_edge

while.end.i.while.cond.preheader.i_crit_edge:     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader.i

for.inc21.i:                                      ; preds = %while.end.i
  %inc22.i = add nuw nsw i32 %i.178.i, 1
  %exitcond80.not.i = icmp eq i32 %inc22.i, 8
  br i1 %exitcond80.not.i, label %for.end23.i, label %for.inc21.i.for.cond10.preheader.i_crit_edge

for.inc21.i.for.cond10.preheader.i_crit_edge:     ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond10.preheader.i

for.end23.i:                                      ; preds = %for.inc21.i
  %77 = ptrtoint ptr %size86 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %size86, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %78)
  %cmp24.i = icmp eq i64 %78, 0
  br i1 %cmp24.i, label %land.lhs.true.i, label %for.end23.i.if.end.i_crit_edge

for.end23.i.if.end.i_crit_edge:                   ; preds = %for.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.end23.i
  %79 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %80)
  %cmp28.i = icmp eq i64 %80, 0
  br i1 %cmp28.i, label %land.lhs.true.i.tsi721_init_pc2sr_mapping.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.tsi721_init_pc2sr_mapping.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsi721_init_pc2sr_mapping.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.end23.i.if.end.i_crit_edge
  %free.i = getelementptr inbounds %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 22, i32 0, i32 2
  %81 = ptrtoint ptr %free.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %78, ptr %free.i, align 8
  %82 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %size, align 8
  %free39.i = getelementptr %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 22, i32 1, i32 2
  %84 = ptrtoint ptr %free39.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %free39.i, align 16
  %active.i = getelementptr %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 23, i32 0, i32 4
  %85 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %active.i, align 16
  %active.1.i = getelementptr %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 23, i32 1, i32 4
  %86 = ptrtoint ptr %active.1.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %active.1.i, align 16
  %active.2.i = getelementptr %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 23, i32 2, i32 4
  %87 = ptrtoint ptr %active.2.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %active.2.i, align 16
  %active.3.i = getelementptr %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 23, i32 3, i32 4
  %88 = ptrtoint ptr %active.3.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %active.3.i, align 16
  %active.4.i = getelementptr %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 23, i32 4, i32 4
  %89 = ptrtoint ptr %active.4.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %active.4.i, align 16
  %active.5.i = getelementptr %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 23, i32 5, i32 4
  %90 = ptrtoint ptr %active.5.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %active.5.i, align 16
  %active.6.i = getelementptr %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 23, i32 6, i32 4
  %91 = ptrtoint ptr %active.6.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %active.6.i, align 16
  %active.7.i = getelementptr %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 23, i32 7, i32 4
  %92 = ptrtoint ptr %active.7.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %active.7.i, align 16
  br label %tsi721_init_pc2sr_mapping.exit

tsi721_init_pc2sr_mapping.exit:                   ; preds = %if.end.i, %land.lhs.true.i.tsi721_init_pc2sr_mapping.exit_crit_edge
  %.sink.i = phi i32 [ 8, %if.end.i ], [ 0, %land.lhs.true.i.tsi721_init_pc2sr_mapping.exit_crit_edge ]
  %obwin_cnt47.i = getelementptr inbounds %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 24
  %93 = ptrtoint ptr %obwin_cnt47.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %.sink.i, ptr %obwin_cnt47.i, align 8
  %94 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs, align 4
  %add.ptr.i468 = getelementptr i8, ptr %95, i32 167936
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i468, i32 0) #9, !srcloc !329
  %96 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs, align 4
  %add.ptr.1.i469 = getelementptr i8, ptr %97, i32 167968
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i469, i32 0) #9, !srcloc !329
  %98 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs, align 4
  %add.ptr.2.i470 = getelementptr i8, ptr %99, i32 168000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.i470, i32 0) #9, !srcloc !329
  %100 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs, align 4
  %add.ptr.3.i471 = getelementptr i8, ptr %101, i32 168032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3.i471, i32 0) #9, !srcloc !329
  %102 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs, align 4
  %add.ptr.4.i472 = getelementptr i8, ptr %103, i32 168064
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.4.i472, i32 0) #9, !srcloc !329
  %104 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs, align 4
  %add.ptr.5.i473 = getelementptr i8, ptr %105, i32 168096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.5.i473, i32 0) #9, !srcloc !329
  %106 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs, align 4
  %add.ptr.6.i474 = getelementptr i8, ptr %107, i32 168128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.6.i474, i32 0) #9, !srcloc !329
  %108 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs, align 4
  %add.ptr.7.i475 = getelementptr i8, ptr %109, i32 168160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.7.i475, i32 0) #9, !srcloc !329
  %ibwin_cnt.i = getelementptr inbounds %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 21
  %110 = ptrtoint ptr %ibwin_cnt.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 8, ptr %ibwin_cnt.i, align 128
  %call318 = tail call fastcc i32 @tsi721_bdma_maint_init(ptr noundef %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call318)
  %tobool319.not = icmp eq i32 %call318, 0
  br i1 %tobool319.not, label %if.end325, label %do.end323

do.end323:                                        ; preds = %tsi721_init_pc2sr_mapping.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3) #13
  br label %err_unmap_bars

if.end325:                                        ; preds = %tsi721_init_pc2sr_mapping.exit
  %call326 = tail call fastcc i32 @tsi721_doorbell_init(ptr noundef %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call326)
  %tobool327.not = icmp eq i32 %call326, 0
  br i1 %tobool327.not, label %if.end329, label %if.end325.err_free_bdma_crit_edge

if.end325.err_free_bdma_crit_edge:                ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_bdma

if.end329:                                        ; preds = %if.end325
  %pw_discard_count.i = getelementptr inbounds %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 13
  %111 = ptrtoint ptr %pw_discard_count.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %pw_discard_count.i, align 4
  %pw_work.i = getelementptr inbounds %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %pw_work.i, i32 noundef 0) #9
  %112 = ptrtoint ptr %pw_work.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -64, ptr %pw_work.i, align 16
  %lockdep_map.i = getelementptr inbounds %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @tsi721_port_write_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry4.i = getelementptr inbounds %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 10, i32 1
  %113 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 10, i32 1, i32 1
  %114 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %entry4.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 10, i32 2
  %115 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @tsi721_pw_dpc, ptr %func.i, align 4
  %pw_fifo_lock.i = getelementptr inbounds %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %pw_fifo_lock.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @tsi721_port_write_init.__key.50, i16 noundef signext 3) #9
  %pw_fifo.i = getelementptr inbounds %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 11
  %call8.i = tail call i32 @__kfifo_alloc(ptr noundef %pw_fifo.i, i32 noundef 512, i32 noundef 1, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i476 = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i476, label %if.end.i479, label %do.end11.i

do.end11.i:                                       ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %call1.i.i.i, align 4096
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #13
  br label %tsi721_port_write_init.exit

if.end.i479:                                      ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #11
  %118 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs, align 4
  %add.ptr.i478 = getelementptr i8, ptr %119, i32 68100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i478, i32 1) #9, !srcloc !329
  br label %tsi721_port_write_init.exit

tsi721_port_write_init.exit:                      ; preds = %if.end.i479, %do.end11.i
  %120 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs, align 4
  %add.ptr.i481 = getelementptr i8, ptr %121, i32 434196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i481, i32 0) #9, !srcloc !329
  %122 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs, align 4
  %add.ptr2.i482 = getelementptr i8, ptr %123, i32 434432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i482, i32 0) #9, !srcloc !329
  %124 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs, align 4
  %add.ptr4.i483 = getelementptr i8, ptr %125, i32 434436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i483, i32 0) #9, !srcloc !329
  %126 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regs, align 4
  %add.ptr6.i484 = getelementptr i8, ptr %127, i32 393232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i484, i32 -1878982656) #9, !srcloc !329
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %tsi721_port_write_init.exit
  %ch.01.i = phi i32 [ 0, %tsi721_port_write_init.exit ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %128 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs, align 4
  %mul.i = shl i32 %ch.01.i, 12
  %add.i = add nuw nsw i32 %mul.i, 397896
  %add.ptr8.i = getelementptr i8, ptr %129, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 252706816) #9, !srcloc !329
  %130 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs, align 4
  %add11.i = add nuw nsw i32 %mul.i, 397892
  %add.ptr12.i = getelementptr i8, ptr %131, i32 %add11.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 0) #9, !srcloc !329
  %132 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs, align 4
  %mul14.i = shl i32 %ch.01.i, 2
  %add15.i = add nuw nsw i32 %mul14.i, 434944
  %add.ptr16.i = getelementptr i8, ptr %133, i32 %add15.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 -16777216) #9, !srcloc !329
  %134 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regs, align 4
  %add19.i = add nuw nsw i32 %mul14.i, 435008
  %add.ptr20.i = getelementptr i8, ptr %135, i32 %add19.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 -16777216) #9, !srcloc !329
  %inc.i = add nuw nsw i32 %ch.01.i, 1
  %exitcond.not.i485 = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i485, label %tsi721_messages_init.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

tsi721_messages_init.exit:                        ; preds = %for.body.i
  %call335 = tail call fastcc i32 @tsi721_setup_mport(ptr noundef %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call335)
  %tobool336.not = icmp eq i32 %call335, 0
  br i1 %tobool336.not, label %if.end338, label %err_free_consistent

if.end338:                                        ; preds = %tsi721_messages_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %136 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call1.i.i.i, ptr %driver_data.i.i, align 4
  %137 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regs, align 4
  %add.ptr.i487 = getelementptr i8, ptr %138, i32 131136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i487, i32 1056964608) #9, !srcloc !329
  %139 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regs, align 4
  %add.ptr2.i488 = getelementptr i8, ptr %140, i32 131140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i488, i32 268435456) #9, !srcloc !329
  %141 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs, align 4
  %add.ptr4.i489 = getelementptr i8, ptr %142, i32 67888
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i489, i32 16777216) #9, !srcloc !329
  %143 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regs, align 4
  %add.ptr6.i490 = getelementptr i8, ptr %144, i32 170060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i490, i32 2130706433) #9, !srcloc !329
  %flags.i = getelementptr inbounds %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 2
  %145 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %146, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i491 = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i491, i32 10784, i32 32
  %147 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %regs, align 4
  %add.ptr8.i492 = getelementptr i8, ptr %148, i32 170048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %149 = tail call i32 @llvm.bswap.i32(i32 %..i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i492, i32 %149) #9, !srcloc !329
  %150 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regs, align 4
  %add.ptr10.i = getelementptr i8, ptr %151, i32 170048
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  br label %cleanup

err_free_consistent:                              ; preds = %tsi721_messages_init.exit
  tail call void @__kfifo_free(ptr noundef %pw_fifo.i) #9
  %idb_base.i = getelementptr inbounds %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 6
  %153 = ptrtoint ptr %idb_base.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %idb_base.i, align 8
  %cmp.i = icmp eq ptr %154, null
  br i1 %cmp.i, label %err_free_consistent.err_free_bdma_crit_edge, label %if.end.i495

err_free_consistent.err_free_bdma_crit_edge:      ; preds = %err_free_consistent
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_bdma

if.end.i495:                                      ; preds = %err_free_consistent
  call void @__sanitizer_cov_trace_pc() #11
  %155 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %call1.i.i.i, align 4096
  %dev.i494 = getelementptr inbounds %struct.pci_dev, ptr %156, i32 0, i32 44
  %idb_dma.i = getelementptr inbounds %struct.tsi721_device, ptr %call1.i.i.i, i32 0, i32 7
  %157 = ptrtoint ptr %idb_dma.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %idb_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i494, i32 noundef 32768, ptr noundef nonnull %154, i32 noundef %158, i32 noundef 0) #9
  %159 = ptrtoint ptr %idb_base.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr null, ptr %idb_base.i, align 8
  br label %err_free_bdma

err_free_bdma:                                    ; preds = %if.end.i495, %err_free_consistent.err_free_bdma_crit_edge, %if.end325.err_free_bdma_crit_edge
  %err.1 = phi i32 [ %call326, %if.end325.err_free_bdma_crit_edge ], [ %call335, %err_free_consistent.err_free_bdma_crit_edge ], [ %call335, %if.end.i495 ]
  tail call fastcc void @tsi721_bdma_maint_free(ptr noundef %call1.i.i.i)
  br label %err_unmap_bars

err_unmap_bars:                                   ; preds = %err_free_bdma, %do.end323, %do.end256, %do.end245
  %err.2 = phi i32 [ %call.i462, %do.end256 ], [ -12, %do.end323 ], [ %err.1, %err_free_bdma ], [ -12, %do.end245 ]
  %160 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regs, align 4
  %tobool341.not = icmp eq ptr %161, null
  br i1 %tobool341.not, label %err_unmap_bars.if.end344_crit_edge, label %if.then342

err_unmap_bars.if.end344_crit_edge:               ; preds = %err_unmap_bars
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end344

if.then342:                                       ; preds = %err_unmap_bars
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %161) #9
  br label %if.end344

if.end344:                                        ; preds = %if.then342, %err_unmap_bars.if.end344_crit_edge
  %162 = ptrtoint ptr %odb_base to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %odb_base, align 4
  %tobool346.not = icmp eq ptr %163, null
  br i1 %tobool346.not, label %if.end344.err_free_res_crit_edge, label %if.then347

if.end344.err_free_res_crit_edge:                 ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_res

if.then347:                                       ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %163) #9
  br label %err_free_res

err_free_res:                                     ; preds = %if.then347, %if.end344.err_free_res_crit_edge, %do.end236
  %err.3 = phi i32 [ %err.2, %if.then347 ], [ %err.2, %if.end344.err_free_res_crit_edge ], [ -12, %do.end236 ]
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  tail call void @pci_clear_master(ptr noundef %pdev) #9
  br label %err_disable_pdev

err_disable_pdev:                                 ; preds = %err_free_res, %do.end227, %do.end80, %do.end45
  %err.4 = phi i32 [ -19, %do.end45 ], [ -19, %do.end80 ], [ %call222, %do.end227 ], [ %err.3, %err_free_res ]
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  br label %err_clean

err_clean:                                        ; preds = %err_disable_pdev, %do.end
  %err.5 = phi i32 [ %call1, %do.end ], [ %err.4, %err_disable_pdev ]
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_clean, %if.end338, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end338 ], [ %err.5, %err_clean ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsi721_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @tsi_dbg_level, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_remove.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_remove, %do.end10)) #9
          to label %if.then7 [label %do.end10], !srcloc !325

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_remove.__UNIQUE_ID_ddebug278, ptr noundef %dev, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.130) #9
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1, %entry.do.end10_crit_edge
  tail call fastcc void @tsi721_disable_ints(ptr noundef %1)
  %flags.i = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  %msix.i = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %msix.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %msix.i, align 8
  %conv.i = zext i16 %6 to i32
  %call.i = tail call ptr @free_irq(i32 noundef %conv.i, ptr noundef %1) #9
  %arrayidx2.i = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx2.i, align 2
  %conv4.i = zext i16 %8 to i32
  br label %tsi721_free_irq.exit

if.else.i:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 46
  %11 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq.i, align 4
  br label %tsi721_free_irq.exit

tsi721_free_irq.exit:                             ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ %12, %if.else.i ], [ %conv4.i, %if.then.i ]
  %call6.i = tail call ptr @free_irq(i32 noundef %.sink.i, ptr noundef %1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %13 = load ptr, ptr @system_wq, align 4
  tail call void @flush_workqueue(ptr noundef %13) #9
  %mport = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 1
  %call11 = tail call i32 @rio_unregister_mport(ptr noundef %mport) #9
  tail call void @tsi721_unregister_dma(ptr noundef %1) #9
  tail call fastcc void @tsi721_bdma_maint_free(ptr noundef %1)
  %idb_base.i = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %idb_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %idb_base.i, align 8
  %cmp.i = icmp eq ptr %15, null
  br i1 %cmp.i, label %tsi721_free_irq.exit.tsi721_doorbell_free.exit_crit_edge, label %if.end.i

tsi721_free_irq.exit.tsi721_doorbell_free.exit_crit_edge: ; preds = %tsi721_free_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsi721_doorbell_free.exit

if.end.i:                                         ; preds = %tsi721_free_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %idb_dma.i = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %idb_dma.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idb_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 32768, ptr noundef nonnull %15, i32 noundef %19, i32 noundef 0) #9
  %20 = ptrtoint ptr %idb_base.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %idb_base.i, align 8
  br label %tsi721_doorbell_free.exit

tsi721_doorbell_free.exit:                        ; preds = %if.end.i, %tsi721_free_irq.exit.tsi721_doorbell_free.exit_crit_edge
  %pw_fifo.i = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 11
  tail call void @__kfifo_free(ptr noundef %pw_fifo.i) #9
  %regs.i = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 3
  %active.i = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 20, i32 0, i32 3
  %21 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %active.i, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i84 = icmp eq i8 %22, 0
  br i1 %tobool.not.i84, label %tsi721_doorbell_free.exit.for.inc.i_crit_edge, label %if.then.i85

tsi721_doorbell_free.exit.for.inc.i_crit_edge:    ; preds = %tsi721_doorbell_free.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i85:                                      ; preds = %tsi721_doorbell_free.exit
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 167936
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !329
  %25 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %active.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i85, %tsi721_doorbell_free.exit.for.inc.i_crit_edge
  %active.1.i = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 20, i32 1, i32 3
  %26 = ptrtoint ptr %active.1.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %active.1.i, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.1.i = icmp eq i8 %27, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %29, i32 167968
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i, i32 0) #9, !srcloc !329
  %30 = ptrtoint ptr %active.1.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %active.1.i, align 8
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %active.2.i = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 20, i32 2, i32 3
  %31 = ptrtoint ptr %active.2.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %active.2.i, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.2.i = icmp eq i8 %32, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %34, i32 168000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.i, i32 0) #9, !srcloc !329
  %35 = ptrtoint ptr %active.2.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %active.2.i, align 8
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %active.3.i = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 20, i32 3, i32 3
  %36 = ptrtoint ptr %active.3.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %active.3.i, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.3.i = icmp eq i8 %37, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %add.ptr.3.i = getelementptr i8, ptr %39, i32 168032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3.i, i32 0) #9, !srcloc !329
  %40 = ptrtoint ptr %active.3.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %active.3.i, align 8
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %active.4.i = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 20, i32 4, i32 3
  %41 = ptrtoint ptr %active.4.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %active.4.i, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.4.i = icmp eq i8 %42, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %add.ptr.4.i = getelementptr i8, ptr %44, i32 168064
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.4.i, i32 0) #9, !srcloc !329
  %45 = ptrtoint ptr %active.4.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %active.4.i, align 8
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %active.5.i = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 20, i32 5, i32 3
  %46 = ptrtoint ptr %active.5.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %active.5.i, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.5.i = icmp eq i8 %47, 0
  br i1 %tobool.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.then.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5.i

if.then.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %add.ptr.5.i = getelementptr i8, ptr %49, i32 168096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.5.i, i32 0) #9, !srcloc !329
  %50 = ptrtoint ptr %active.5.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %active.5.i, align 8
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %active.6.i = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 20, i32 6, i32 3
  %51 = ptrtoint ptr %active.6.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %active.6.i, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.6.i = icmp eq i8 %52, 0
  br i1 %tobool.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %if.then.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6.i

if.then.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i, align 4
  %add.ptr.6.i = getelementptr i8, ptr %54, i32 168128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.6.i, i32 0) #9, !srcloc !329
  %55 = ptrtoint ptr %active.6.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %active.6.i, align 8
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %active.7.i = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 20, i32 7, i32 3
  %56 = ptrtoint ptr %active.7.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %active.7.i, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.7.i = icmp eq i8 %57, 0
  br i1 %tobool.not.7.i, label %for.inc.6.i.tsi721_close_sr2pc_mapping.exit_crit_edge, label %if.then.7.i

for.inc.6.i.tsi721_close_sr2pc_mapping.exit_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsi721_close_sr2pc_mapping.exit

if.then.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 4
  %add.ptr.7.i = getelementptr i8, ptr %59, i32 168160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.7.i, i32 0) #9, !srcloc !329
  %60 = ptrtoint ptr %active.7.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %active.7.i, align 8
  br label %tsi721_close_sr2pc_mapping.exit

tsi721_close_sr2pc_mapping.exit:                  ; preds = %if.then.7.i, %for.inc.6.i.tsi721_close_sr2pc_mapping.exit_crit_edge
  %61 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i, align 4
  %tobool13.not = icmp eq ptr %62, null
  br i1 %tobool13.not, label %tsi721_close_sr2pc_mapping.exit.if.end16_crit_edge, label %if.then14

tsi721_close_sr2pc_mapping.exit.if.end16_crit_edge: ; preds = %tsi721_close_sr2pc_mapping.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %tsi721_close_sr2pc_mapping.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %62) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %tsi721_close_sr2pc_mapping.exit.if.end16_crit_edge
  %odb_base = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 5
  %63 = ptrtoint ptr %odb_base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %odb_base, align 4
  %tobool17.not = icmp eq ptr %64, null
  br i1 %tobool17.not, label %if.end16.if.end20_crit_edge, label %if.then18

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %64) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16.if.end20_crit_edge
  %65 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags.i, align 8
  %and21 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 8
  tail call void @pci_disable_msix(ptr noundef %68) #9
  br label %if.end31

if.else:                                          ; preds = %if.end20
  %and26 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else.if.end31_crit_edge, label %if.then28

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 8
  tail call void @pci_disable_msi(ptr noundef %70) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.else.if.end31_crit_edge, %if.then23
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  tail call void @pci_clear_master(ptr noundef %pdev) #9
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  %71 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #9
  %72 = load i32, ptr @tsi_dbg_level, align 4
  %and33 = and i32 %72, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end31.do.end57_crit_edge, label %do.body36

if.end31.do.end57_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57

do.body36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_remove.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_remove, %do.end57)) #9
          to label %if.then50 [label %do.end57], !srcloc !325

if.then50:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_remove.__UNIQUE_ID_ddebug279, ptr noundef %dev51, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.130) #9
  br label %do.end57

do.end57:                                         ; preds = %if.then50, %do.body36, %if.end31.do.end57_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsi721_shutdown(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @tsi_dbg_level, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_shutdown.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_shutdown, %do.end10)) #9
          to label %if.then7 [label %do.end10], !srcloc !325

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_shutdown.__UNIQUE_ID_ddebug280, ptr noundef %dev, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.133) #9
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1, %entry.do.end10_crit_edge
  tail call fastcc void @tsi721_disable_ints(ptr noundef %1)
  tail call void @tsi721_dma_stop_all(ptr noundef %1) #9
  tail call void @pci_clear_master(ptr noundef %pdev) #9
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_word(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tsi721_disable_ints(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 170048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !329
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 170060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #9, !srcloc !329
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 397904
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #9, !srcloc !329
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr4.1 = getelementptr i8, ptr %7, i32 402000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.1, i32 0) #9, !srcloc !329
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr4.2 = getelementptr i8, ptr %9, i32 406096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.2, i32 0) #9, !srcloc !329
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr4.3 = getelementptr i8, ptr %11, i32 410192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.3, i32 0) #9, !srcloc !329
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr4.4 = getelementptr i8, ptr %13, i32 414288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.4, i32 0) #9, !srcloc !329
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr4.5 = getelementptr i8, ptr %15, i32 418384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.5, i32 0) #9, !srcloc !329
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr4.6 = getelementptr i8, ptr %17, i32 422480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.6, i32 0) #9, !srcloc !329
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr4.7 = getelementptr i8, ptr %19, i32 426576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.7, i32 0) #9, !srcloc !329
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr11 = getelementptr i8, ptr %21, i32 397336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #9, !srcloc !329
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr11.1 = getelementptr i8, ptr %23, i32 401432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.1, i32 0) #9, !srcloc !329
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr11.2 = getelementptr i8, ptr %25, i32 405528
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.2, i32 0) #9, !srcloc !329
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr11.3 = getelementptr i8, ptr %27, i32 409624
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.3, i32 0) #9, !srcloc !329
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr16 = getelementptr i8, ptr %29, i32 434176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #9, !srcloc !329
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %add.ptr24 = getelementptr i8, ptr %31, i32 331800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 0) #9, !srcloc !329
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %add.ptr24.1 = getelementptr i8, ptr %33, i32 335896
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.1, i32 0) #9, !srcloc !329
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %add.ptr24.2 = getelementptr i8, ptr %35, i32 339992
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.2, i32 0) #9, !srcloc !329
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %add.ptr24.3 = getelementptr i8, ptr %37, i32 344088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.3, i32 0) #9, !srcloc !329
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %add.ptr24.4 = getelementptr i8, ptr %39, i32 348184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.4, i32 0) #9, !srcloc !329
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %add.ptr24.5 = getelementptr i8, ptr %41, i32 352280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.5, i32 0) #9, !srcloc !329
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %add.ptr24.6 = getelementptr i8, ptr %43, i32 356376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.6, i32 0) #9, !srcloc !329
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %add.ptr24.7 = getelementptr i8, ptr %45, i32 360472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.7, i32 0) #9, !srcloc !329
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 4
  %add.ptr29 = getelementptr i8, ptr %47, i32 389120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 0) #9, !srcloc !329
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 4
  %add.ptr36 = getelementptr i8, ptr %49, i32 131140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 0) #9, !srcloc !329
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %add.ptr36.1 = getelementptr i8, ptr %51, i32 135236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.1, i32 0) #9, !srcloc !329
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %add.ptr36.2 = getelementptr i8, ptr %53, i32 139332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.2, i32 0) #9, !srcloc !329
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  %add.ptr36.3 = getelementptr i8, ptr %55, i32 143428
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.3, i32 0) #9, !srcloc !329
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %add.ptr36.4 = getelementptr i8, ptr %57, i32 147524
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.4, i32 0) #9, !srcloc !329
  %58 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs, align 4
  %add.ptr36.5 = getelementptr i8, ptr %59, i32 151620
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.5, i32 0) #9, !srcloc !329
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  %add.ptr36.6 = getelementptr i8, ptr %61, i32 155716
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.6, i32 0) #9, !srcloc !329
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs, align 4
  %add.ptr36.7 = getelementptr i8, ptr %63, i32 159812
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.7, i32 0) #9, !srcloc !329
  %64 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs, align 4
  %add.ptr41 = getelementptr i8, ptr %65, i32 169984
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 0) #9, !srcloc !329
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 4
  %add.ptr43 = getelementptr i8, ptr %67, i32 267024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 0) #9, !srcloc !329
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 4
  %add.ptr45 = getelementptr i8, ptr %69, i32 299296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 0) #9, !srcloc !329
  %70 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs, align 4
  %add.ptr47 = getelementptr i8, ptr %71, i32 67860
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 0) #9, !srcloc !329
  %72 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs, align 4
  %add.ptr49 = getelementptr i8, ptr %73, i32 67888
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 0) #9, !srcloc !329
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tsi721_bdma_maint_init(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  %bd_phys = alloca i32, align 4
  %sts_phys = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bd_phys) #9
  %0 = ptrtoint ptr %bd_phys to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bd_phys, align 4, !annotation !333
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sts_phys) #9
  %1 = ptrtoint ptr %sts_phys to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %sts_phys, align 4, !annotation !333
  %2 = load i32, ptr @tsi_dbg_level, align 4
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_bdma_maint_init.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_bdma_maint_init, %do.end9)) #9
          to label %if.then6 [label %do.end9], !srcloc !325

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_bdma_maint_init.__UNIQUE_ID_ddebug261, ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef 7) #9
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %mdma = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 14
  %5 = ptrtoint ptr %mdma to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 7, ptr %mdma, align 8
  %regs10 = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 3
  %6 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs10, align 4
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev12, i32 noundef 64, ptr noundef nonnull %bd_phys, i32 noundef 3264, i32 noundef 0) #9
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %do.end9.cleanup_crit_edge, label %if.end16

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %do.end9
  %bd_num18 = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 14, i32 1
  %10 = ptrtoint ptr %bd_num18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %bd_num18, align 4
  %11 = ptrtoint ptr %bd_phys to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bd_phys, align 4
  %bd_phys20 = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 14, i32 3
  %13 = ptrtoint ptr %bd_phys20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %bd_phys20, align 4
  %bd_base = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 14, i32 2
  %14 = ptrtoint ptr %bd_base to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %bd_base, align 8
  %15 = load i32, ptr @tsi_dbg_level, align 4
  %and23 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end16.cond.end71_crit_edge, label %do.body26

if.end16.cond.end71_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end71

do.body26:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_bdma_maint_init.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_bdma_maint_init, %cond.end71)) #9
          to label %if.then40 [label %cond.end71], !srcloc !325

if.then40:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_bdma_maint_init.__UNIQUE_ID_ddebug262, ptr noundef %dev42, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, ptr noundef nonnull %call.i, ptr noundef nonnull %bd_phys) #9
  br label %cond.end71

cond.end71:                                       ; preds = %if.then40, %do.body26, %if.end16.cond.end71_crit_edge
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  %dev74 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %call.i211 = call ptr @dma_alloc_attrs(ptr noundef %dev74, i32 noundef 2048, ptr noundef nonnull %sts_phys, i32 noundef 3264, i32 noundef 0) #9
  %tobool77.not = icmp eq ptr %call.i211, null
  br i1 %tobool77.not, label %if.then78, label %if.end84

if.then78:                                        ; preds = %cond.end71
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 8
  %dev80 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %bd_phys to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bd_phys, align 4
  call void @dma_free_attrs(ptr noundef %dev80, i32 noundef 64, ptr noundef nonnull %call.i, i32 noundef %23, i32 noundef 0) #9
  %24 = ptrtoint ptr %bd_base to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %bd_base, align 8
  br label %cleanup

if.end84:                                         ; preds = %cond.end71
  %25 = ptrtoint ptr %sts_phys to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sts_phys, align 4
  %sts_phys86 = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 14, i32 5
  %27 = ptrtoint ptr %sts_phys86 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %sts_phys86, align 4
  %sts_base = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 14, i32 4
  %28 = ptrtoint ptr %sts_base to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i211, ptr %sts_base, align 8
  %sts_size89 = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 14, i32 6
  %29 = ptrtoint ptr %sts_size89 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 32, ptr %sts_size89, align 8
  %30 = load i32, ptr @tsi_dbg_level, align 4
  %and91 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end84.do.end116_crit_edge, label %do.body94

if.end84.do.end116_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end116

do.body94:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_bdma_maint_init.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_bdma_maint_init, %do.end116)) #9
          to label %if.then108 [label %do.end116], !srcloc !325

if.then108:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  %dev110 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_bdma_maint_init.__UNIQUE_ID_ddebug263, ptr noundef %dev110, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.40, ptr noundef nonnull %call.i211, ptr noundef nonnull %sts_phys, i32 noundef 32) #9
  br label %do.end116

do.end116:                                        ; preds = %if.then108, %do.body94, %if.end84.do.end116_crit_edge
  %arrayidx = getelementptr %struct.tsi721_dma_desc, ptr %call.i, i32 1
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 96, ptr %arrayidx, align 32
  %34 = ptrtoint ptr %bd_phys to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bd_phys, align 4
  %36 = and i32 %35, -32
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %38 = getelementptr %struct.tsi721_dma_desc, ptr %call.i, i32 1, i32 2
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %37, ptr %38, align 8
  %40 = getelementptr %struct.tsi721_dma_desc, ptr %call.i, i32 1, i32 3
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %40, align 4
  %add.ptr130 = getelementptr i8, ptr %7, i32 360488
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 0) #9, !srcloc !329
  %42 = ptrtoint ptr %bd_phys to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bd_phys, align 4
  %44 = and i32 %43, -32
  %add.ptr134 = getelementptr i8, ptr %7, i32 360484
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  call void @arm_heavy_mb() #9
  %45 = call i32 @llvm.bswap.i32(i32 %44) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 %45) #9, !srcloc !329
  %add.ptr138 = getelementptr i8, ptr %7, i32 360496
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138, i32 0) #9, !srcloc !329
  %46 = ptrtoint ptr %sts_phys to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sts_phys, align 4
  %48 = and i32 %47, -64
  %add.ptr142 = getelementptr i8, ptr %7, i32 360492
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  call void @arm_heavy_mb() #9
  %49 = call i32 @llvm.bswap.i32(i32 %48) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142, i32 %49) #9, !srcloc !329
  %add.ptr145 = getelementptr i8, ptr %7, i32 360500
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145, i32 16777216) #9, !srcloc !329
  %add.ptr146 = getelementptr i8, ptr %7, i32 360460
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr146, i32 520093696) #9, !srcloc !329
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr146) #9, !srcloc !330
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %add.ptr149 = getelementptr i8, ptr %7, i32 360456
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr149, i32 16777216) #9, !srcloc !329
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr149) #9, !srcloc !330
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 2147480) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end116, %if.then78, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end116 ], [ -12, %if.then78 ], [ -12, %do.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sts_phys) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bd_phys) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tsi721_doorbell_init(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %db_discard_count = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %db_discard_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %db_discard_count, align 4
  %idb_work = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 8
  tail call void @__init_work(ptr noundef %idb_work, i32 noundef 0) #9
  %1 = ptrtoint ptr %idb_work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %idb_work, align 8
  %lockdep_map = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.44, ptr noundef nonnull @tsi721_doorbell_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry4 = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 8, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 8, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tsi721_db_dpc, ptr %func, align 4
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %idb_dma = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 7
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 32768, ptr noundef %idb_dma, i32 noundef 3264, i32 noundef 0) #9
  %idb_base = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 6
  %7 = ptrtoint ptr %idb_base to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %idb_base, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body7

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.body7:                                         ; preds = %entry
  %8 = load i32, ptr @tsi_dbg_level, align 4
  %and = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body7.do.end24_crit_edge, label %do.body10

do.body7.do.end24_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

do.body10:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_doorbell_init.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_doorbell_init, %do.end24)) #9
          to label %if.then16 [label %do.end24], !srcloc !325

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %11 = ptrtoint ptr %idb_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %idb_base, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_doorbell_init.__UNIQUE_ID_ddebug260, ptr noundef %dev18, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, ptr noundef %12, ptr noundef %idb_dma) #9
  br label %do.end24

do.end24:                                         ; preds = %if.then16, %do.body10, %do.body7.do.end24_crit_edge
  %regs = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 3
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 131100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 83886080) #9, !srcloc !329
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr29 = getelementptr i8, ptr %16, i32 131096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 0) #9, !srcloc !329
  %17 = ptrtoint ptr %idb_dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %idb_dma, align 4
  %19 = and i32 %18, -64
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr35 = getelementptr i8, ptr %21, i32 131092
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %22 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %22) #9, !srcloc !329
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr37 = getelementptr i8, ptr %24, i32 131080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 0) #9, !srcloc !329
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr39 = getelementptr i8, ptr %26, i32 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 16777216) #9, !srcloc !329
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr41 = getelementptr i8, ptr %28, i32 131084
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 0) #9, !srcloc !329
  br label %return

return:                                           ; preds = %do.end24, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end24 ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tsi721_setup_mport(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %entries.i = alloca [34 x %struct.msix_entry], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mport2 = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1
  %call = tail call i32 @rio_mport_initialize(ptr noundef %mport2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 11
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @tsi721_rio_ops, ptr %ops, align 4
  %index = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 13
  %3 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %index, align 1
  %sys_size = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 14
  %4 = ptrtoint ptr %sys_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %sys_size, align 4
  %priv3 = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 19
  %5 = ptrtoint ptr %priv3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %priv, ptr %priv3, align 8
  %phys_efptr = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 15
  %6 = ptrtoint ptr %phys_efptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 256, ptr %phys_efptr, align 8
  %phys_rmap = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 16
  %7 = ptrtoint ptr %phys_rmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %phys_rmap, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %parent = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 18, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %parent, align 8
  %release = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 18, i32 35
  %9 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @tsi721_mport_release, ptr %release, align 4
  %10 = ptrtoint ptr %mport2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %mport2, ptr %mport2, align 4
  %prev.i = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %mport2, ptr %prev.i, align 4
  %riores = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 7
  %end3.i = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 7, i32 0, i32 1
  %12 = call ptr @memset(ptr %riores, i32 0, i32 32)
  %13 = ptrtoint ptr %end3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65535, ptr %end3.i, align 4
  %flags.i = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 7, i32 0, i32 3
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 512, ptr %flags.i, align 4
  %arrayidx7 = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 7, i32 1
  %end2.i = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 7, i32 1, i32 1
  %15 = call ptr @memset(ptr %arrayidx7, i32 0, i32 32)
  %16 = ptrtoint ptr %end2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %end2.i, align 4
  %flags.i110 = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 7, i32 1, i32 3
  %17 = ptrtoint ptr %flags.i110 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1024, ptr %flags.i110, align 4
  %arrayidx9 = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 7, i32 2
  %end2.i111 = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 7, i32 2, i32 1
  %18 = call ptr @memset(ptr %arrayidx9, i32 0, i32 32)
  %19 = ptrtoint ptr %end2.i111 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %end2.i111, align 4
  %flags.i112 = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 7, i32 2, i32 3
  %20 = ptrtoint ptr %flags.i112 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1024, ptr %flags.i112, align 4
  %name = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 17
  %call11 = tail call ptr @dev_driver_string(ptr noundef %dev) #9
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %21 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i113 = phi ptr [ %24, %if.end.i ], [ %22, %if.end.dev_name.exit_crit_edge ]
  %call14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 40, ptr noundef nonnull @.str.54, ptr noundef %call11, ptr noundef %retval.0.i113)
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %entries.i) #9
  %25 = call ptr @memset(ptr %entries.i, i32 255, i32 272)
  %entry1.i = getelementptr inbounds %struct.msix_entry, ptr %entries.i, i32 0, i32 1
  %26 = ptrtoint ptr %entry1.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 50, ptr %entry1.i, align 4
  %entry3.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %entry3.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 68, ptr %entry3.i, align 4
  %entry7.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 10, i32 1
  %28 = ptrtoint ptr %entry7.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 37, ptr %entry7.i, align 4
  %entry13.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 14, i32 1
  %29 = ptrtoint ptr %entry13.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 45, ptr %entry13.i, align 4
  %entry18.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %entry18.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 17, ptr %entry18.i, align 4
  %entry23.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 6, i32 1
  %31 = ptrtoint ptr %entry23.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 25, ptr %entry23.i, align 4
  %entry7.1.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 11, i32 1
  %32 = ptrtoint ptr %entry7.1.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 38, ptr %entry7.1.i, align 4
  %entry13.1.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 15, i32 1
  %33 = ptrtoint ptr %entry13.1.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 46, ptr %entry13.1.i, align 4
  %entry18.1.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %entry18.1.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 18, ptr %entry18.1.i, align 4
  %entry23.1.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 7, i32 1
  %35 = ptrtoint ptr %entry23.1.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 26, ptr %entry23.1.i, align 4
  %entry7.2.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 12, i32 1
  %36 = ptrtoint ptr %entry7.2.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 39, ptr %entry7.2.i, align 4
  %entry13.2.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 16, i32 1
  %37 = ptrtoint ptr %entry13.2.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 47, ptr %entry13.2.i, align 4
  %entry18.2.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %entry18.2.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 19, ptr %entry18.2.i, align 4
  %entry23.2.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 8, i32 1
  %39 = ptrtoint ptr %entry23.2.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 27, ptr %entry23.2.i, align 4
  %entry7.3.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 13, i32 1
  %40 = ptrtoint ptr %entry7.3.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 40, ptr %entry7.3.i, align 4
  %entry13.3.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 17, i32 1
  %41 = ptrtoint ptr %entry13.3.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 48, ptr %entry13.3.i, align 4
  %entry18.3.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %entry18.3.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 20, ptr %entry18.3.i, align 4
  %entry23.3.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 9, i32 1
  %43 = ptrtoint ptr %entry23.3.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 28, ptr %entry23.3.i, align 4
  %entry32.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 18, i32 1
  %44 = ptrtoint ptr %entry32.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %entry32.i, align 4
  %entry37.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 26, i32 1
  %45 = ptrtoint ptr %entry37.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 8, ptr %entry37.i, align 4
  %entry32.1.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 19, i32 1
  %46 = ptrtoint ptr %entry32.1.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1, ptr %entry32.1.i, align 4
  %entry37.1.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 27, i32 1
  %47 = ptrtoint ptr %entry37.1.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 9, ptr %entry37.1.i, align 4
  %entry32.2.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 20, i32 1
  %48 = ptrtoint ptr %entry32.2.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 2, ptr %entry32.2.i, align 4
  %entry37.2.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 28, i32 1
  %49 = ptrtoint ptr %entry37.2.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 10, ptr %entry37.2.i, align 4
  %entry32.3.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 21, i32 1
  %50 = ptrtoint ptr %entry32.3.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 3, ptr %entry32.3.i, align 4
  %entry37.3.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 29, i32 1
  %51 = ptrtoint ptr %entry37.3.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 11, ptr %entry37.3.i, align 4
  %entry32.4.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 22, i32 1
  %52 = ptrtoint ptr %entry32.4.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 4, ptr %entry32.4.i, align 4
  %entry37.4.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 30, i32 1
  %53 = ptrtoint ptr %entry37.4.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 12, ptr %entry37.4.i, align 4
  %entry32.5.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 23, i32 1
  %54 = ptrtoint ptr %entry32.5.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 5, ptr %entry32.5.i, align 4
  %entry37.5.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 31, i32 1
  %55 = ptrtoint ptr %entry37.5.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 13, ptr %entry37.5.i, align 4
  %entry32.6.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 24, i32 1
  %56 = ptrtoint ptr %entry32.6.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 6, ptr %entry32.6.i, align 4
  %entry37.6.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 32, i32 1
  %57 = ptrtoint ptr %entry37.6.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 14, ptr %entry37.6.i, align 4
  %entry32.7.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 25, i32 1
  %58 = ptrtoint ptr %entry32.7.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 7, ptr %entry32.7.i, align 4
  %entry37.7.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 33, i32 1
  %59 = ptrtoint ptr %entry37.7.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 15, ptr %entry37.7.i, align 4
  %arrayidx2.i = getelementptr inbounds [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 1
  %60 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv, align 8
  %call.i.i = call i32 @pci_enable_msix_range(ptr noundef %61, ptr noundef nonnull %entries.i, i32 noundef 34, i32 noundef 34) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i114 = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i114, label %if.end.i115, label %if.else

if.end.i115:                                      ; preds = %dev_name.exit
  %62 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %entries.i, align 4
  %conv43.i = trunc i32 %63 to i16
  %msix.i = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 4
  %64 = ptrtoint ptr %msix.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv43.i, ptr %msix.i, align 8
  %irq_name.i = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 4, i32 0, i32 1
  %65 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44, i32 3
  %67 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i115.pci_name.exit.i_crit_edge

if.end.i115.pci_name.exit.i_crit_edge:            ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %69 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i115.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %70, %if.end.i.i.i ], [ %68, %if.end.i115.pci_name.exit.i_crit_edge ]
  %call51.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_name.i, i32 noundef 64, ptr noundef nonnull @.str.117, ptr noundef %retval.0.i.i.i) #9
  %71 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx2.i, align 4
  %conv54.i = trunc i32 %72 to i16
  %arrayidx56.i = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 4, i32 1
  %73 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv54.i, ptr %arrayidx56.i, align 2
  %irq_name60.i = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 4, i32 1, i32 1
  %74 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %priv, align 8
  %init_name.i.i247.i = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44, i32 3
  %76 = ptrtoint ptr %init_name.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %init_name.i.i247.i, align 8
  %tobool.not.i.i248.i = icmp eq ptr %77, null
  br i1 %tobool.not.i.i248.i, label %if.end.i.i250.i, label %pci_name.exit.i.pci_name.exit252.i_crit_edge

pci_name.exit.i.pci_name.exit252.i_crit_edge:     ; preds = %pci_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit252.i

if.end.i.i250.i:                                  ; preds = %pci_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i249.i = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  %78 = ptrtoint ptr %dev.i249.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i249.i, align 4
  br label %pci_name.exit252.i

pci_name.exit252.i:                               ; preds = %if.end.i.i250.i, %pci_name.exit.i.pci_name.exit252.i_crit_edge
  %retval.0.i.i251.i = phi ptr [ %79, %if.end.i.i250.i ], [ %77, %pci_name.exit.i.pci_name.exit252.i_crit_edge ]
  %call64.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_name60.i, i32 noundef 64, ptr noundef nonnull @.str.118, ptr noundef %retval.0.i.i251.i) #9
  br label %for.body68.i

for.body68.i:                                     ; preds = %pci_name.exit276.i.for.body68.i_crit_edge, %pci_name.exit252.i
  %i.2291.i = phi i32 [ 0, %pci_name.exit252.i ], [ %inc134.i, %pci_name.exit276.i.for.body68.i_crit_edge ]
  %add69.i = add nuw nsw i32 %i.2291.i, 10
  %arrayidx70.i = getelementptr [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 %add69.i
  %80 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx70.i, align 4
  %conv72.i = trunc i32 %81 to i16
  %arrayidx75.i = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 4, i32 %add69.i
  %82 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv72.i, ptr %arrayidx75.i, align 2
  %irq_name80.i = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 4, i32 %add69.i, i32 1
  %83 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %priv, align 8
  %init_name.i.i253.i = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44, i32 3
  %85 = ptrtoint ptr %init_name.i.i253.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %init_name.i.i253.i, align 8
  %tobool.not.i.i254.i = icmp eq ptr %86, null
  br i1 %tobool.not.i.i254.i, label %if.end.i.i256.i, label %for.body68.i.pci_name.exit258.i_crit_edge

for.body68.i.pci_name.exit258.i_crit_edge:        ; preds = %for.body68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit258.i

if.end.i.i256.i:                                  ; preds = %for.body68.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i255.i = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44
  %87 = ptrtoint ptr %dev.i255.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i255.i, align 4
  br label %pci_name.exit258.i

pci_name.exit258.i:                               ; preds = %if.end.i.i256.i, %for.body68.i.pci_name.exit258.i_crit_edge
  %retval.0.i.i257.i = phi ptr [ %88, %if.end.i.i256.i ], [ %86, %for.body68.i.pci_name.exit258.i_crit_edge ]
  %call84.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_name80.i, i32 noundef 64, ptr noundef nonnull @.str.119, i32 noundef %i.2291.i, ptr noundef %retval.0.i.i257.i) #9
  %add85.i = add nuw nsw i32 %i.2291.i, 14
  %arrayidx86.i = getelementptr [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 %add85.i
  %89 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx86.i, align 4
  %conv88.i = trunc i32 %90 to i16
  %arrayidx91.i = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 4, i32 %add85.i
  %91 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv88.i, ptr %arrayidx91.i, align 2
  %irq_name96.i = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 4, i32 %add85.i, i32 1
  %92 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %priv, align 8
  %init_name.i.i259.i = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44, i32 3
  %94 = ptrtoint ptr %init_name.i.i259.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %init_name.i.i259.i, align 8
  %tobool.not.i.i260.i = icmp eq ptr %95, null
  br i1 %tobool.not.i.i260.i, label %if.end.i.i262.i, label %pci_name.exit258.i.pci_name.exit264.i_crit_edge

pci_name.exit258.i.pci_name.exit264.i_crit_edge:  ; preds = %pci_name.exit258.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit264.i

if.end.i.i262.i:                                  ; preds = %pci_name.exit258.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i261.i = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  %96 = ptrtoint ptr %dev.i261.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev.i261.i, align 4
  br label %pci_name.exit264.i

pci_name.exit264.i:                               ; preds = %if.end.i.i262.i, %pci_name.exit258.i.pci_name.exit264.i_crit_edge
  %retval.0.i.i263.i = phi ptr [ %97, %if.end.i.i262.i ], [ %95, %pci_name.exit258.i.pci_name.exit264.i_crit_edge ]
  %call100.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_name96.i, i32 noundef 64, ptr noundef nonnull @.str.120, i32 noundef %i.2291.i, ptr noundef %retval.0.i.i263.i) #9
  %add101.i = add nuw nsw i32 %i.2291.i, 2
  %arrayidx102.i = getelementptr [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 %add101.i
  %98 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx102.i, align 4
  %conv104.i = trunc i32 %99 to i16
  %arrayidx107.i = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 4, i32 %add101.i
  %100 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv104.i, ptr %arrayidx107.i, align 2
  %irq_name112.i = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 4, i32 %add101.i, i32 1
  %101 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %priv, align 8
  %init_name.i.i265.i = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44, i32 3
  %103 = ptrtoint ptr %init_name.i.i265.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %init_name.i.i265.i, align 8
  %tobool.not.i.i266.i = icmp eq ptr %104, null
  br i1 %tobool.not.i.i266.i, label %if.end.i.i268.i, label %pci_name.exit264.i.pci_name.exit270.i_crit_edge

pci_name.exit264.i.pci_name.exit270.i_crit_edge:  ; preds = %pci_name.exit264.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit270.i

if.end.i.i268.i:                                  ; preds = %pci_name.exit264.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i267.i = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  %105 = ptrtoint ptr %dev.i267.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev.i267.i, align 4
  br label %pci_name.exit270.i

pci_name.exit270.i:                               ; preds = %if.end.i.i268.i, %pci_name.exit264.i.pci_name.exit270.i_crit_edge
  %retval.0.i.i269.i = phi ptr [ %106, %if.end.i.i268.i ], [ %104, %pci_name.exit264.i.pci_name.exit270.i_crit_edge ]
  %call116.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_name112.i, i32 noundef 64, ptr noundef nonnull @.str.121, i32 noundef %i.2291.i, ptr noundef %retval.0.i.i269.i) #9
  %add117.i = add nuw nsw i32 %i.2291.i, 6
  %arrayidx118.i = getelementptr [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 %add117.i
  %107 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx118.i, align 4
  %conv120.i = trunc i32 %108 to i16
  %arrayidx123.i = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 4, i32 %add117.i
  %109 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %conv120.i, ptr %arrayidx123.i, align 2
  %irq_name128.i = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 4, i32 %add117.i, i32 1
  %110 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %priv, align 8
  %init_name.i.i271.i = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44, i32 3
  %112 = ptrtoint ptr %init_name.i.i271.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %init_name.i.i271.i, align 8
  %tobool.not.i.i272.i = icmp eq ptr %113, null
  br i1 %tobool.not.i.i272.i, label %if.end.i.i274.i, label %pci_name.exit270.i.pci_name.exit276.i_crit_edge

pci_name.exit270.i.pci_name.exit276.i_crit_edge:  ; preds = %pci_name.exit270.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit276.i

if.end.i.i274.i:                                  ; preds = %pci_name.exit270.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i273.i = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  %114 = ptrtoint ptr %dev.i273.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev.i273.i, align 4
  br label %pci_name.exit276.i

pci_name.exit276.i:                               ; preds = %if.end.i.i274.i, %pci_name.exit270.i.pci_name.exit276.i_crit_edge
  %retval.0.i.i275.i = phi ptr [ %115, %if.end.i.i274.i ], [ %113, %pci_name.exit270.i.pci_name.exit276.i_crit_edge ]
  %call132.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_name128.i, i32 noundef 64, ptr noundef nonnull @.str.122, i32 noundef %i.2291.i, ptr noundef %retval.0.i.i275.i) #9
  %inc134.i = add nuw nsw i32 %i.2291.i, 1
  %exitcond.not.i = icmp eq i32 %inc134.i, 4
  br i1 %exitcond.not.i, label %pci_name.exit276.i.for.body139.i_crit_edge, label %pci_name.exit276.i.for.body68.i_crit_edge

pci_name.exit276.i.for.body68.i_crit_edge:        ; preds = %pci_name.exit276.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body68.i

pci_name.exit276.i.for.body139.i_crit_edge:       ; preds = %pci_name.exit276.i
  br label %for.body139.i

for.body139.i:                                    ; preds = %pci_name.exit288.i.for.body139.i_crit_edge, %pci_name.exit276.i.for.body139.i_crit_edge
  %i.3292.i = phi i32 [ %inc173.i, %pci_name.exit288.i.for.body139.i_crit_edge ], [ 0, %pci_name.exit276.i.for.body139.i_crit_edge ]
  %add140.i = add nuw nsw i32 %i.3292.i, 18
  %arrayidx141.i = getelementptr [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 %add140.i
  %116 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx141.i, align 4
  %conv143.i = trunc i32 %117 to i16
  %arrayidx146.i = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 4, i32 %add140.i
  %118 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv143.i, ptr %arrayidx146.i, align 2
  %irq_name151.i = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 4, i32 %add140.i, i32 1
  %119 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %priv, align 8
  %init_name.i.i277.i = getelementptr inbounds %struct.pci_dev, ptr %120, i32 0, i32 44, i32 3
  %121 = ptrtoint ptr %init_name.i.i277.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %init_name.i.i277.i, align 8
  %tobool.not.i.i278.i = icmp eq ptr %122, null
  br i1 %tobool.not.i.i278.i, label %if.end.i.i280.i, label %for.body139.i.pci_name.exit282.i_crit_edge

for.body139.i.pci_name.exit282.i_crit_edge:       ; preds = %for.body139.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit282.i

if.end.i.i280.i:                                  ; preds = %for.body139.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i279.i = getelementptr inbounds %struct.pci_dev, ptr %120, i32 0, i32 44
  %123 = ptrtoint ptr %dev.i279.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i279.i, align 4
  br label %pci_name.exit282.i

pci_name.exit282.i:                               ; preds = %if.end.i.i280.i, %for.body139.i.pci_name.exit282.i_crit_edge
  %retval.0.i.i281.i = phi ptr [ %124, %if.end.i.i280.i ], [ %122, %for.body139.i.pci_name.exit282.i_crit_edge ]
  %call155.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_name151.i, i32 noundef 64, ptr noundef nonnull @.str.123, i32 noundef %i.3292.i, ptr noundef %retval.0.i.i281.i) #9
  %add156.i = add nuw nsw i32 %i.3292.i, 26
  %arrayidx157.i = getelementptr [34 x %struct.msix_entry], ptr %entries.i, i32 0, i32 %add156.i
  %125 = ptrtoint ptr %arrayidx157.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx157.i, align 4
  %conv159.i = trunc i32 %126 to i16
  %arrayidx162.i = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 4, i32 %add156.i
  %127 = ptrtoint ptr %arrayidx162.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %conv159.i, ptr %arrayidx162.i, align 2
  %irq_name167.i = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 4, i32 %add156.i, i32 1
  %128 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %priv, align 8
  %init_name.i.i283.i = getelementptr inbounds %struct.pci_dev, ptr %129, i32 0, i32 44, i32 3
  %130 = ptrtoint ptr %init_name.i.i283.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %init_name.i.i283.i, align 8
  %tobool.not.i.i284.i = icmp eq ptr %131, null
  br i1 %tobool.not.i.i284.i, label %if.end.i.i286.i, label %pci_name.exit282.i.pci_name.exit288.i_crit_edge

pci_name.exit282.i.pci_name.exit288.i_crit_edge:  ; preds = %pci_name.exit282.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit288.i

if.end.i.i286.i:                                  ; preds = %pci_name.exit282.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i285.i = getelementptr inbounds %struct.pci_dev, ptr %129, i32 0, i32 44
  %132 = ptrtoint ptr %dev.i285.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev.i285.i, align 4
  br label %pci_name.exit288.i

pci_name.exit288.i:                               ; preds = %if.end.i.i286.i, %pci_name.exit282.i.pci_name.exit288.i_crit_edge
  %retval.0.i.i287.i = phi ptr [ %133, %if.end.i.i286.i ], [ %131, %pci_name.exit282.i.pci_name.exit288.i_crit_edge ]
  %call171.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_name167.i, i32 noundef 64, ptr noundef nonnull @.str.124, i32 noundef %i.3292.i, ptr noundef %retval.0.i.i287.i) #9
  %inc173.i = add nuw nsw i32 %i.3292.i, 1
  %exitcond293.not.i = icmp eq i32 %inc173.i, 8
  br i1 %exitcond293.not.i, label %if.then17, label %pci_name.exit288.i.for.body139.i_crit_edge

pci_name.exit288.i.for.body139.i_crit_edge:       ; preds = %pci_name.exit288.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body139.i

if.then17:                                        ; preds = %pci_name.exit288.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %entries.i) #9
  %flags = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 2
  %134 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %flags, align 8
  %or = or i32 %135, 2
  store i32 %or, ptr %flags, align 8
  br label %if.end39

if.else:                                          ; preds = %dev_name.exit
  %136 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %priv, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %137, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, i32 noundef %call.i.i) #13
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %entries.i) #9
  %call18 = call i32 @pci_enable_msi(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %do.body

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %flags21 = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 2
  %138 = ptrtoint ptr %flags21 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %flags21, align 8
  %or22 = or i32 %139, 1
  store i32 %or22, ptr %flags21, align 8
  br label %if.end39

do.body:                                          ; preds = %if.else
  %140 = load i32, ptr @tsi_dbg_level, align 4
  %and = and i32 %140, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %do.body.if.end39_crit_edge, label %do.body26

do.body.if.end39_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

do.body26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_setup_mport.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_setup_mport, %if.end39)) #9
          to label %if.then32 [label %if.end39], !srcloc !325

if.then32:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_setup_mport.__UNIQUE_ID_ddebug274, ptr noundef %dev, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.55) #9
  br label %if.end39

if.end39:                                         ; preds = %if.then32, %do.body26, %do.body.if.end39_crit_edge, %if.then20, %if.then17
  %flags.i117 = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 2
  %141 = ptrtoint ptr %flags.i117 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %flags.i117, align 8
  %and.i = and i32 %142, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i118 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i118, label %if.end.i120, label %if.then.i

if.then.i:                                        ; preds = %if.end39
  %msix.i.i = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 4
  %143 = ptrtoint ptr %msix.i.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %msix.i.i, align 8
  %conv.i.i = zext i16 %144 to i32
  %irq_name.i.i = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 4, i32 0, i32 1
  %call.i.i.i = call i32 @request_threaded_irq(i32 noundef %conv.i.i, ptr noundef nonnull @tsi721_sr2pc_ch_msix, ptr noundef null, i32 noundef 0, ptr noundef %irq_name.i.i, ptr noundef %priv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.do.end45_crit_edge

if.then.i.do.end45_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

if.end.i.i:                                       ; preds = %if.then.i
  %arrayidx4.i.i = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 4, i32 1
  %145 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %arrayidx4.i.i, align 2
  %conv6.i.i = zext i16 %146 to i32
  %irq_name9.i.i = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 4, i32 1, i32 1
  %call.i30.i.i = call i32 @request_threaded_irq(i32 noundef %conv6.i.i, ptr noundef nonnull @tsi721_srio_msix, ptr noundef null, i32 noundef 0, ptr noundef %irq_name9.i.i, ptr noundef %priv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i.i)
  %tobool12.not.i.i = icmp eq i32 %call.i30.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end.i.i.if.end47_crit_edge, label %if.then13.i.i

if.end.i.i.if.end47_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then13.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %147 = ptrtoint ptr %msix.i.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %msix.i.i, align 8
  %conv17.i.i = zext i16 %148 to i32
  %call18.i.i = call ptr @free_irq(i32 noundef %conv17.i.i, ptr noundef %priv) #9
  br label %do.end45

if.end.i120:                                      ; preds = %if.end39
  %149 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %priv, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %150, i32 0, i32 46
  %151 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %irq.i, align 4
  %and2.i = shl i32 %142, 7
  %153 = and i32 %and2.i, 128
  %154 = xor i32 %153, 128
  %call.i.i119 = call i32 @request_threaded_irq(i32 noundef %152, ptr noundef nonnull @tsi721_irqhandler, ptr noundef null, i32 noundef %154, ptr noundef nonnull @.str.1, ptr noundef %priv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i119)
  %tobool5.not.i = icmp eq i32 %call.i.i119, 0
  br i1 %tobool5.not.i, label %if.end.i120.if.end47_crit_edge, label %if.end.i120.do.end45_crit_edge

if.end.i120.do.end45_crit_edge:                   ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

if.end.i120.if.end47_crit_edge:                   ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

do.end45:                                         ; preds = %if.end.i120.do.end45_crit_edge, %if.then13.i.i, %if.then.i.do.end45_crit_edge
  %err.018.i = phi i32 [ %call.i.i119, %if.end.i120.do.end45_crit_edge ], [ %call.i.i.i, %if.then.i.do.end45_crit_edge ], [ %call.i30.i.i, %if.then13.i.i ]
  %155 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %priv, align 8
  %dev.i121 = getelementptr inbounds %struct.pci_dev, ptr %156, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i121, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126, i32 noundef %err.018.i) #13
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %157 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.55, i32 noundef %158, i32 noundef %err.018.i) #13
  br label %cleanup

if.end47:                                         ; preds = %if.end.i120.if.end47_crit_edge, %if.end.i.i.if.end47_crit_edge
  %call48 = call i32 @tsi721_register_dma(ptr noundef %priv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.err_exit_crit_edge

if.end47.err_exit_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_exit

if.end51:                                         ; preds = %if.end47
  %regs = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 3
  %159 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %160, i32 294916
  %161 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !330
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %162 = or i32 %161, 67108864
  %163 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regs, align 4
  %add.ptr55 = getelementptr i8, ptr %164, i32 294916
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %162) #9, !srcloc !329
  %host_deviceid = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 10
  %165 = ptrtoint ptr %host_deviceid to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %host_deviceid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %166)
  %cmp = icmp sgt i32 %166, -1
  %167 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %regs, align 4
  %add.ptr58 = getelementptr i8, ptr %168, i32 316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  br i1 %cmp, label %if.then56, label %if.else59

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 224) #9, !srcloc !329
  br label %if.end62

if.else59:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 0) #9, !srcloc !329
  br label %if.end62

if.end62:                                         ; preds = %if.else59, %if.then56
  %call63 = call i32 @rio_register_mport(ptr noundef %mport2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end62.cleanup_crit_edge, label %if.then65

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  call void @tsi721_unregister_dma(ptr noundef %priv) #9
  br label %err_exit

err_exit:                                         ; preds = %if.then65, %if.end47.err_exit_crit_edge
  %err.0 = phi i32 [ %call48, %if.end47.err_exit_crit_edge ], [ %call63, %if.then65 ]
  %169 = ptrtoint ptr %flags.i117 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %flags.i117, align 8
  %and.i124 = and i32 %170, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i124)
  %tobool.not.i125 = icmp eq i32 %and.i124, 0
  br i1 %tobool.not.i125, label %if.else.i, label %if.then.i128

if.then.i128:                                     ; preds = %err_exit
  call void @__sanitizer_cov_trace_pc() #11
  %msix.i126 = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 4
  %171 = ptrtoint ptr %msix.i126 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %msix.i126, align 8
  %conv.i = zext i16 %172 to i32
  %call.i = call ptr @free_irq(i32 noundef %conv.i, ptr noundef %priv) #9
  %arrayidx2.i127 = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 4, i32 1
  %173 = ptrtoint ptr %arrayidx2.i127 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %arrayidx2.i127, align 2
  %conv4.i = zext i16 %174 to i32
  br label %tsi721_free_irq.exit

if.else.i:                                        ; preds = %err_exit
  call void @__sanitizer_cov_trace_pc() #11
  %175 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %priv, align 8
  %irq.i129 = getelementptr inbounds %struct.pci_dev, ptr %176, i32 0, i32 46
  %177 = ptrtoint ptr %irq.i129 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %irq.i129, align 4
  br label %tsi721_free_irq.exit

tsi721_free_irq.exit:                             ; preds = %if.else.i, %if.then.i128
  %.sink.i = phi i32 [ %178, %if.else.i ], [ %conv4.i, %if.then.i128 ]
  %call6.i = call ptr @free_irq(i32 noundef %.sink.i, ptr noundef %priv) #9
  br label %cleanup

cleanup:                                          ; preds = %tsi721_free_irq.exit, %if.end62.cleanup_crit_edge, %do.end45, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.018.i, %do.end45 ], [ %err.0, %tsi721_free_irq.exit ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tsi721_bdma_maint_free(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mdma1 = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 14
  %regs2 = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs2, align 4
  %2 = ptrtoint ptr %mdma1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mdma1, align 4
  %mul = shl i32 %3, 12
  %add = add i32 %mul, 331776
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %bd_base = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 14, i32 2
  %4 = ptrtoint ptr %bd_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_base, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %7 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 16777216) #9, !srcloc !329
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %bd_num = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 14, i32 1
  %10 = ptrtoint ptr %bd_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bd_num, align 4
  %mul7 = shl i32 %11, 5
  %12 = ptrtoint ptr %bd_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bd_base, align 4
  %bd_phys = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 14, i32 3
  %14 = ptrtoint ptr %bd_phys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bd_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul7, ptr noundef %13, i32 noundef %15, i32 noundef 0) #9
  %16 = ptrtoint ptr %bd_base to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %bd_base, align 4
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 8
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %sts_size = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 14, i32 6
  %19 = ptrtoint ptr %sts_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sts_size, align 4
  %mul12 = shl i32 %20, 6
  %sts_base = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 14, i32 4
  %21 = ptrtoint ptr %sts_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sts_base, align 4
  %sts_phys = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 14, i32 5
  %23 = ptrtoint ptr %sts_phys to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sts_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev11, i32 noundef %mul12, ptr noundef %22, i32 noundef %24, i32 noundef 0) #9
  %25 = ptrtoint ptr %sts_base to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %sts_base, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsi721_db_dpc(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4384
  %mport1 = getelementptr i8, ptr %work, i32 -4376
  %regs = getelementptr i8, ptr %work, i32 -2260
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 131088
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %4, i32 131084
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %6 = and i32 %2, -16711680
  %7 = and i32 %5, -16711680
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %7)
  %cmp.not157 = icmp eq i32 %6, %7
  br i1 %cmp.not157, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %idb_base = getelementptr i8, ptr %work, i32 -8
  br label %while.body

while.body:                                       ; preds = %if.end87.while.body_crit_edge, %while.body.lr.ph
  %rd_ptr.0159 = phi i32 [ %8, %while.body.lr.ph ], [ %rd_ptr.0, %if.end87.while.body_crit_edge ]
  %found.0158 = phi i32 [ 0, %while.body.lr.ph ], [ %found.1147, %if.end87.while.body_crit_edge ]
  %9 = ptrtoint ptr %idb_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %idb_base, align 8
  %mul = shl nuw nsw i32 %rd_ptr.0159, 6
  %add.ptr7 = getelementptr i8, ptr %10, i32 %mul
  %inc = add nuw nsw i32 %rd_ptr.0159, 1
  %11 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %add.ptr7, align 8
  %idb.sroa.0.0.extract.shift = lshr i64 %12, 56
  %idb.sroa.0.0.extract.trunc = trunc i64 %idb.sroa.0.0.extract.shift to i32
  %idb.sroa.8.0.extract.shift = lshr i64 %12, 48
  %idb.sroa.8.0.extract.trunc = trunc i64 %idb.sroa.8.0.extract.shift to i32
  %idb.sroa.12.0.extract.shift = lshr i64 %12, 40
  %idb.sroa.12.0.extract.trunc = trunc i64 %idb.sroa.12.0.extract.shift to i16
  %idb.sroa.14.0.extract.shift = lshr i64 %12, 32
  %idb.sroa.14.0.extract.trunc = trunc i64 %idb.sroa.14.0.extract.shift to i16
  %idb.sroa.16.0.extract.shift = lshr i64 %12, 24
  %idb.sroa.16.0.extract.trunc = trunc i64 %idb.sroa.16.0.extract.shift to i16
  %idb.sroa.18.0.extract.shift = lshr i64 %12, 16
  %idb.sroa.18.0.extract.trunc = trunc i64 %idb.sroa.18.0.extract.shift to i16
  store i64 0, ptr %add.ptr7, align 8
  %13 = ptrtoint ptr %mport1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %dbell.0152 = load ptr, ptr %mport1, align 4
  %cmp13.not153 = icmp eq ptr %dbell.0152, %mport1
  br i1 %cmp13.not153, label %while.body.for.end_crit_edge, label %for.body.lr.ph

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.body
  %shl = shl nuw nsw i32 %idb.sroa.0.0.extract.trunc, 8
  %conv15 = and i32 %idb.sroa.8.0.extract.trunc, 255
  %or = or i32 %shl, %conv15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dbell.0154 = phi ptr [ %dbell.0152, %for.body.lr.ph ], [ %dbell.0, %for.inc.for.body_crit_edge ]
  %res = getelementptr inbounds %struct.rio_dbell, ptr %dbell.0154, i32 0, i32 1
  %14 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %res, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %or)
  %cmp16.not = icmp ugt i32 %17, %or
  br i1 %cmp16.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %end = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %or)
  %cmp25.not = icmp ult i32 %19, %or
  br i1 %cmp25.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.then32_crit_edge

land.lhs.true.if.then32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %dbell.0154 to i32
  call void @__asan_load4_noabort(i32 %20)
  %dbell.0 = load ptr, ptr %dbell.0154, align 4
  %cmp13.not = icmp eq ptr %dbell.0, %mport1
  br i1 %cmp13.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.body.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.0158)
  %tobool.not = icmp eq i32 %found.0158, 0
  br i1 %tobool.not, label %do.body, label %for.end.if.then32_crit_edge

for.end.if.then32_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

if.then32:                                        ; preds = %for.end.if.then32_crit_edge, %land.lhs.true.if.then32_crit_edge
  %dbell.0151 = phi ptr [ %mport1, %for.end.if.then32_crit_edge ], [ %dbell.0154, %land.lhs.true.if.then32_crit_edge ]
  %found.1148 = phi i32 [ %found.0158, %for.end.if.then32_crit_edge ], [ 1, %land.lhs.true.if.then32_crit_edge ]
  %dinb = getelementptr inbounds %struct.rio_dbell, ptr %dbell.0151, i32 0, i32 2
  %21 = ptrtoint ptr %dinb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dinb, align 4
  %dev_id = getelementptr inbounds %struct.rio_dbell, ptr %dbell.0151, i32 0, i32 3
  %23 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_id, align 4
  %conv34 = shl i16 %idb.sroa.12.0.extract.trunc, 8
  %conv37 = and i16 %idb.sroa.14.0.extract.trunc, 255
  %or38 = or i16 %conv34, %conv37
  %conv41 = shl i16 %idb.sroa.16.0.extract.trunc, 8
  %conv44 = and i16 %idb.sroa.18.0.extract.trunc, 255
  %or45 = or i16 %conv41, %conv44
  %25 = trunc i64 %idb.sroa.0.0.extract.shift to i16
  %shl49 = shl nuw i16 %25, 8
  %26 = trunc i64 %idb.sroa.8.0.extract.shift to i16
  %conv51 = and i16 %26, 255
  %or52 = or i16 %shl49, %conv51
  tail call void %22(ptr noundef %mport1, ptr noundef %24, i16 noundef zeroext %or38, i16 noundef zeroext %or45, i16 noundef zeroext %or52) #9
  br label %if.end87

do.body:                                          ; preds = %for.end
  %27 = load i32, ptr @tsi_dbg_level, align 4
  %and = and i32 %27, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool54.not = icmp eq i32 %and, 0
  br i1 %tobool54.not, label %do.body.if.end87_crit_edge, label %do.body56

do.body.if.end87_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

do.body56:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_db_dpc.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_db_dpc, %if.end87)) #9
          to label %if.then64 [label %if.end87], !srcloc !325

if.then64:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %30 = trunc i64 %idb.sroa.12.0.extract.shift to i32
  %conv66 = shl nuw i32 %30, 8
  %shl67 = and i32 %conv66, 65280
  %31 = trunc i64 %idb.sroa.14.0.extract.shift to i32
  %conv69 = and i32 %31, 255
  %or70 = or i32 %shl67, %conv69
  %32 = trunc i64 %idb.sroa.16.0.extract.shift to i32
  %conv72 = shl i32 %32, 8
  %shl73 = and i32 %conv72, 65280
  %33 = trunc i64 %idb.sroa.18.0.extract.shift to i32
  %conv75 = and i32 %33, 255
  %or76 = or i32 %shl73, %conv75
  %shl79 = shl nuw nsw i32 %idb.sroa.0.0.extract.trunc, 8
  %conv81 = and i32 %idb.sroa.8.0.extract.trunc, 255
  %or82 = or i32 %shl79, %conv81
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_db_dpc.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47, i32 noundef %or70, i32 noundef %or76, i32 noundef %or82) #9
  br label %if.end87

if.end87:                                         ; preds = %if.then64, %do.body56, %do.body.if.end87_crit_edge, %if.then32
  %found.1147 = phi i32 [ 0, %do.body.if.end87_crit_edge ], [ 0, %if.then64 ], [ %found.1148, %if.then32 ], [ 0, %do.body56 ]
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %add.ptr89 = getelementptr i8, ptr %35, i32 131088
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %37 = and i32 %36, -16711680
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  %rd_ptr.0 = and i32 %inc, 511
  %cmp.not = icmp eq i32 %38, %rd_ptr.0
  br i1 %cmp.not, label %if.end87.while.end_crit_edge, label %if.end87.while.body_crit_edge

if.end87.while.body_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end87.while.end_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end87.while.end_crit_edge, %entry.while.end_crit_edge
  %rd_ptr.0.lcssa = phi i32 [ %8, %entry.while.end_crit_edge ], [ %38, %if.end87.while.end_crit_edge ]
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  %add.ptr94 = getelementptr i8, ptr %40, i32 131084
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %41 = tail call i32 @llvm.bswap.i32(i32 %rd_ptr.0.lcssa) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %41) #9, !srcloc !329
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %add.ptr96 = getelementptr i8, ptr %43, i32 131140
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %45 = or i32 %44, 268435456
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 4
  %add.ptr100 = getelementptr i8, ptr %47, i32 131140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 %45) #9, !srcloc !329
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 4
  %add.ptr102 = getelementptr i8, ptr %49, i32 131088
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %51 = and i32 %50, -16711680
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %rd_ptr.0.lcssa)
  %cmp105.not = icmp eq i32 %52, %rd_ptr.0.lcssa
  br i1 %cmp105.not, label %while.end.if.end109_crit_edge, label %if.then107

while.end.if.end109_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.then107:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %53 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %53, ptr noundef %work) #9
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %while.end.if.end109_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsi721_pw_dpc(ptr noundef %work) #2 align 64 {
entry:
  %pwmsg = alloca %union.rio_pw_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pwmsg) #9
  %0 = call ptr @memset(ptr %pwmsg, i32 255, i32 64)
  %pw_fifo_lock = getelementptr i8, ptr %work, i32 64
  %call316 = call i32 @_raw_spin_lock_irqsave(ptr noundef %pw_fifo_lock) #9
  %pw_fifo = getelementptr i8, ptr %work, i32 44
  %call717 = call i32 @__kfifo_out(ptr noundef %pw_fifo, ptr noundef nonnull %pwmsg, i32 noundef 16) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pw_fifo_lock, i32 noundef %call316) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call717)
  %tobool.not18 = icmp eq i32 %call717, 0
  br i1 %tobool.not18, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %mport = getelementptr i8, ptr %work, i32 -4424
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call12 = call i32 @rio_inb_pwrite_handler(ptr noundef %mport, ptr noundef nonnull %pwmsg) #9
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %pw_fifo_lock) #9
  %call7 = call i32 @__kfifo_out(ptr noundef %pw_fifo, ptr noundef nonnull %pwmsg, i32 noundef 16) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pw_fifo_lock, i32 noundef %call3) #9
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pwmsg) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_inb_pwrite_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsi721_mport_release(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @tsi_dbg_level, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_mport_release.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_mport_release, %do.end10)) #9
          to label %if.then7 [label %do.end10], !srcloc !325

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr i8, ptr %dev, i32 -40
  %id = getelementptr i8, ptr %dev, i32 -56
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %id, align 8
  %conv = zext i8 %2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_mport_release.__UNIQUE_ID_ddebug273, ptr noundef %dev, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.113, ptr noundef %name, i32 noundef %conv) #9
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1, %entry.do.end10_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tsi721_register_dma(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_register_mport(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tsi721_unregister_dma(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_lcread(ptr nocapture noundef readonly %mport, i32 noundef %index, i32 noundef %offset, i32 noundef %len, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp.not = icmp eq i32 %len, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv1 = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 19
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %regs = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %offset
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !330
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_lcwrite(ptr nocapture noundef readonly %mport, i32 noundef %index, i32 noundef %offset, i32 noundef %len, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp.not = icmp eq i32 %len, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv1 = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 19
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %regs = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %data) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #9, !srcloc !329
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_cread_dma(ptr nocapture noundef readonly %mport, i32 noundef %index, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef %offset, i32 noundef %len, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 19
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %sys_size = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 14
  %2 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sys_size, align 4
  %call = tail call fastcc i32 @tsi721_maint_dma(ptr noundef %1, i32 noundef %3, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef %offset, i32 noundef %len, ptr noundef %data, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_cwrite_dma(ptr nocapture noundef readonly %mport, i32 noundef %index, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef %offset, i32 noundef %len, i32 noundef %data) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 19
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %data, ptr %temp, align 4
  %sys_size = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 14
  %3 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sys_size, align 4
  %call = call fastcc i32 @tsi721_maint_dma(ptr noundef %1, i32 noundef %4, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef %offset, i32 noundef %len, ptr noundef nonnull %temp, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_dsend(ptr nocapture noundef readonly %mport, i32 noundef %index, i16 noundef zeroext %destid, i16 noundef zeroext %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 19
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %sys_size = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 14
  %2 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sys_size, align 4
  %conv = zext i16 %destid to i32
  %4 = load i32, ptr @tsi_dbg_level, align 4
  %and = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %entry.do.body15_crit_edge, label %do.body4

entry.do.body15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body15

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_dsend.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_dsend, %do.body15)) #9
          to label %if.then9 [label %do.body15], !srcloc !325

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %conv10 = zext i16 %data to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_dsend.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, i32 noundef %conv10, i32 noundef %conv) #9
  br label %do.body15

do.body15:                                        ; preds = %if.then9, %do.body4, %entry.do.body15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not = icmp eq i32 %3, 0
  %shl = select i1 %tobool.not.not, i32 0, i32 262144
  %shl2 = shl nuw nsw i32 %conv, 2
  %or = or i32 %shl, %shl2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  tail call void @arm_heavy_mb() #9
  %odb_base = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %odb_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %odb_base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %or
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %data) #9, !srcloc !335
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_pw_enable(ptr nocapture noundef readonly %mport, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 19
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %regs = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 67860
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %5 = and i32 %4, -257
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %masksel = select i1 %tobool.not, i32 0, i32 65536
  %rval.0 = or i32 %6, %masksel
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr3 = getelementptr i8, ptr %8, i32 68112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 50331648) #9, !srcloc !329
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %10, i32 67860
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %rval.0) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %11) #9, !srcloc !329
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_open_outb_mbox(ptr nocapture noundef readonly %mport, ptr noundef %dev_id, i32 noundef %mbox, i32 noundef %entries) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 19
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = add i32 %entries, -513
  call void @__sanitizer_cov_trace_const_cmp4(i32 -481, i32 %2)
  %3 = icmp ult i32 %2, -481
  br i1 %3, label %entry.cleanup400_crit_edge, label %is_power_of_2.exit

entry.cleanup400_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup400

is_power_of_2.exit:                               ; preds = %entry
  %4 = tail call i32 @llvm.ctpop.i32(i32 %entries) #9, !range !336
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp ugt i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mbox)
  %cmp5 = icmp sgt i32 %mbox, 3
  %or.cond560 = or i1 %cmp5, %cmp1.i
  br i1 %or.cond560, label %is_power_of_2.exit.cleanup400_crit_edge, label %if.end

is_power_of_2.exit.cleanup400_crit_edge:          ; preds = %is_power_of_2.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup400

if.end:                                           ; preds = %is_power_of_2.exit
  %5 = load i8, ptr @mbox_sel, align 1
  %conv = zext i8 %5 to i32
  %shl = shl nuw nsw i32 1, %mbox
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.end.cleanup400_crit_edge, label %for.body.preheader

if.end.cleanup400_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup400

for.body.preheader:                               ; preds = %if.end
  %arrayidx = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox
  %dev_id10 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 10
  %6 = ptrtoint ptr %dev_id10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev_id, ptr %dev_id10, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %entries, ptr %arrayidx, align 4
  %sts_rdptr = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 8
  %8 = ptrtoint ptr %sts_rdptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %sts_rdptr, align 4
  %lock = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.65, ptr noundef nonnull @tsi721_open_outb_mbox.__key, i16 noundef signext 3) #9
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0588, 1
  %exitcond.not = icmp eq i32 %inc, %entries
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0588 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %arrayidx22 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 4, i32 %i.0588
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef %arrayidx22, i32 noundef 3264, i32 noundef 0) #9
  %arrayidx26 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 3, i32 %i.0588
  %11 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %arrayidx26, align 4
  %cmp31 = icmp eq ptr %call.i, null
  br i1 %cmp31, label %do.body34, label %for.cond

do.body34:                                        ; preds = %for.body
  %12 = load i32, ptr @tsi_dbg_level, align 4
  %and35 = and i32 %12, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool.not = icmp eq i32 %and35, 0
  br i1 %tobool.not, label %do.body34.out_buf_crit_edge, label %do.body37

do.body34.out_buf_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_buf

do.body37:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_open_outb_mbox.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_open_outb_mbox, %out_buf)) #9
          to label %if.then43 [label %out_buf], !srcloc !325

if.then43:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_open_outb_mbox.__UNIQUE_ID_ddebug266, ptr noundef %dev45, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef %mbox) #9
  br label %out_buf

for.end:                                          ; preds = %for.cond
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %add = shl i32 %entries, 4
  %mul = add i32 %add, 16
  %omd_phys = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 2
  %call.i573 = tail call ptr @dma_alloc_attrs(ptr noundef %dev54, i32 noundef %mul, ptr noundef %omd_phys, i32 noundef 3264, i32 noundef 0) #9
  %omd_base = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 1
  %17 = ptrtoint ptr %omd_base to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i573, ptr %omd_base, align 4
  %cmp63 = icmp eq ptr %call.i573, null
  br i1 %cmp63, label %do.body66, label %if.end93

do.body66:                                        ; preds = %for.end
  %18 = load i32, ptr @tsi_dbg_level, align 4
  %and67 = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %do.body66.out_buf_crit_edge, label %do.body70

do.body66.out_buf_crit_edge:                      ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_buf

do.body70:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_open_outb_mbox.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_open_outb_mbox, %out_buf)) #9
          to label %if.then84 [label %out_buf], !srcloc !325

if.then84:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %dev86 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_open_outb_mbox.__UNIQUE_ID_ddebug267, ptr noundef %dev86, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.66, i32 noundef %mbox) #9
  br label %out_buf

if.end93:                                         ; preds = %for.end
  %tx_slot = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 9
  %21 = ptrtoint ptr %tx_slot to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %tx_slot, align 4
  %22 = tail call i32 @llvm.ctlz.i32(i32 %entries, i1 true) #9, !range !336
  %sub.i.i.i = sub nuw nsw i32 32, %22
  %cond127 = shl nuw i32 1, %sub.i.i.i
  %sts_size = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 7
  %23 = ptrtoint ptr %sts_size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond127, ptr %sts_size, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %dev131 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %mul135 = shl i32 %cond127, 6
  %sts_phys = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 6
  %call.i575 = tail call ptr @dma_alloc_attrs(ptr noundef %dev131, i32 noundef %mul135, ptr noundef %sts_phys, i32 noundef 3264, i32 noundef 0) #9
  %sts_base = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 5
  %26 = ptrtoint ptr %sts_base to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i575, ptr %sts_base, align 4
  %cmp144 = icmp eq ptr %call.i575, null
  br i1 %cmp144, label %do.body147, label %if.end174

do.body147:                                       ; preds = %if.end93
  %27 = load i32, ptr @tsi_dbg_level, align 4
  %and148 = and i32 %27, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %do.body147.out_desc_crit_edge, label %do.body151

do.body147.out_desc_crit_edge:                    ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_desc

do.body151:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_open_outb_mbox.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_open_outb_mbox, %out_desc)) #9
          to label %if.then165 [label %out_desc], !srcloc !325

if.then165:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %dev167 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_open_outb_mbox.__UNIQUE_ID_ddebug268, ptr noundef %dev167, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.66, i32 noundef %mbox) #9
  br label %out_desc

if.end174:                                        ; preds = %if.end93
  %regs = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %mul180 = shl i32 %mbox, 12
  %add181 = add i32 %mul180, 397348
  %add.ptr = getelementptr i8, ptr %31, i32 %add181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !329
  %32 = ptrtoint ptr %omd_phys to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %omd_phys, align 4
  %34 = and i32 %33, -16
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %add190 = add i32 %mul180, 397344
  %add.ptr191 = getelementptr i8, ptr %36, i32 %add190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %37 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr191, i32 %37) #9, !srcloc !329
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %add200 = add i32 %mul180, 397380
  %add.ptr201 = getelementptr i8, ptr %39, i32 %add200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr201, i32 0) #9, !srcloc !329
  %40 = ptrtoint ptr %sts_phys to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sts_phys, align 4
  %42 = and i32 %41, -64
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 4
  %add210 = add i32 %mul180, 397376
  %add.ptr211 = getelementptr i8, ptr %44, i32 %add210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %45 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr211, i32 %45) #9, !srcloc !329
  %46 = ptrtoint ptr %sts_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sts_size, align 4
  %48 = tail call i32 @llvm.ctlz.i32(i32 %47, i1 false) #9, !range !336
  %sub216 = sub nsw i32 27, %48
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 4
  %add219 = add i32 %mul180, 397384
  %add.ptr220 = getelementptr i8, ptr %50, i32 %add219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %51 = tail call i32 @llvm.bswap.i32(i32 %sub216) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr220, i32 %51) #9, !srcloc !329
  %flags = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 2
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 8
  %and221 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221)
  %tobool222.not = icmp eq i32 %and221, 0
  br i1 %tobool222.not, label %if.end174.if.end306_crit_edge, label %if.then223

if.end174.if.end306_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end306

if.then223:                                       ; preds = %if.end174
  %add224 = add i32 %mbox, 2
  %arrayidx225 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 4, i32 %add224
  %54 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx225, align 2
  %conv226 = zext i16 %55 to i32
  %irq_name = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 4, i32 %add224, i32 1
  %call.i576 = tail call i32 @request_threaded_irq(i32 noundef %conv226, ptr noundef nonnull @tsi721_omsg_msix, ptr noundef null, i32 noundef 0, ptr noundef %irq_name, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i576)
  %tobool230.not = icmp eq i32 %call.i576, 0
  br i1 %tobool230.not, label %if.end259, label %do.body232

do.body232:                                       ; preds = %if.then223
  %56 = load i32, ptr @tsi_dbg_level, align 4
  %and233 = and i32 %56, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233)
  %tobool234.not = icmp eq i32 %and233, 0
  br i1 %tobool234.not, label %do.body232.out_stat_crit_edge, label %do.body236

do.body232.out_stat_crit_edge:                    ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_stat

do.body236:                                       ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_open_outb_mbox.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_open_outb_mbox, %out_stat)) #9
          to label %if.then250 [label %out_stat], !srcloc !325

if.then250:                                       ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 8
  %dev252 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_open_outb_mbox.__UNIQUE_ID_ddebug269, ptr noundef %dev252, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.66, i32 noundef %mbox) #9
  br label %out_stat

if.end259:                                        ; preds = %if.then223
  %add260 = add i32 %mbox, 6
  %arrayidx262 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 4, i32 %add260
  %59 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx262, align 2
  %conv264 = zext i16 %60 to i32
  %irq_name267 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 4, i32 %add260, i32 1
  %call.i577 = tail call i32 @request_threaded_irq(i32 noundef %conv264, ptr noundef nonnull @tsi721_omsg_msix, ptr noundef null, i32 noundef 0, ptr noundef %irq_name267, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i577)
  %tobool270.not = icmp eq i32 %call.i577, 0
  br i1 %tobool270.not, label %if.end259.if.end306_crit_edge, label %do.body272

if.end259.if.end306_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end306

do.body272:                                       ; preds = %if.end259
  %61 = load i32, ptr @tsi_dbg_level, align 4
  %and273 = and i32 %61, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and273)
  %tobool274.not = icmp eq i32 %and273, 0
  br i1 %tobool274.not, label %do.body272.do.end298_crit_edge, label %do.body276

do.body272.do.end298_crit_edge:                   ; preds = %do.body272
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end298

do.body276:                                       ; preds = %do.body272
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_open_outb_mbox.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_open_outb_mbox, %do.end298)) #9
          to label %if.then290 [label %do.end298], !srcloc !325

if.then290:                                       ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 8
  %dev292 = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_open_outb_mbox.__UNIQUE_ID_ddebug270, ptr noundef %dev292, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.66, i32 noundef %mbox) #9
  br label %do.end298

do.end298:                                        ; preds = %if.then290, %do.body276, %do.body272.do.end298_crit_edge
  %64 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx225, align 2
  %conv303 = zext i16 %65 to i32
  %call304 = tail call ptr @free_irq(i32 noundef %conv303, ptr noundef %1) #9
  br label %out_stat

if.end306:                                        ; preds = %if.end259.if.end306_crit_edge, %if.end174.if.end306_crit_edge
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 4
  %add.i = add i32 %mul180, 397324
  %add.ptr.i = getelementptr i8, ptr %67, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 520093696) #9, !srcloc !329
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 4
  %add3.i = add i32 %mul180, 397336
  %add.ptr4.i = getelementptr i8, ptr %69, i32 %add3.i
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %71 = or i32 %70, 520093696
  %72 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs, align 4
  %add.ptr8.i = getelementptr i8, ptr %73, i32 %add3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %71) #9, !srcloc !329
  %74 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags, align 8
  %and.i = and i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end306.tsi721_omsg_interrupt_enable.exit_crit_edge

if.end306.tsi721_omsg_interrupt_enable.exit_crit_edge: ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsi721_omsg_interrupt_enable.exit

if.end11.i:                                       ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs, align 4
  %add.ptr13.i = getelementptr i8, ptr %77, i32 170060
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #9, !srcloc !330
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %add15.i = add i32 %mbox, 8
  %shl.i578 = shl nuw i32 1, %add15.i
  %or16.i = or i32 %79, %shl.i578
  %80 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs, align 4
  %add.ptr18.i = getelementptr i8, ptr %81, i32 170060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %82 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %82) #9, !srcloc !329
  br label %tsi721_omsg_interrupt_enable.exit

tsi721_omsg_interrupt_enable.exit:                ; preds = %if.end11.i, %if.end306.tsi721_omsg_interrupt_enable.exit_crit_edge
  %83 = ptrtoint ptr %omd_base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %omd_base, align 4
  %arrayidx310 = getelementptr %struct.tsi721_omsg_desc, ptr %84, i32 %entries
  %85 = ptrtoint ptr %arrayidx310 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 160, ptr %arrayidx310, align 16
  %msg_info = getelementptr %struct.tsi721_omsg_desc, ptr %84, i32 %entries, i32 1
  %86 = ptrtoint ptr %msg_info to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %msg_info, align 4
  %87 = ptrtoint ptr %omd_phys to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %omd_phys, align 4
  %89 = and i32 %88, -16
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  %91 = getelementptr %struct.tsi721_omsg_desc, ptr %84, i32 %entries, i32 2
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %90, ptr %91, align 8
  %93 = getelementptr %struct.tsi721_omsg_desc, ptr %84, i32 %entries, i32 3
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %93, align 4
  %wr_count = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 11
  %95 = ptrtoint ptr %wr_count to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %wr_count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %96 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs, align 4
  %add333 = add i32 %mul180, 397320
  %add.ptr334 = getelementptr i8, ptr %97, i32 %add333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr334, i32 83886080) #9, !srcloc !329
  %98 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs, align 4
  %add337 = add i32 %mul180, 397312
  %add.ptr338 = getelementptr i8, ptr %99, i32 %add337
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr338) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 2147480) #9
  %arrayidx340 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 18, i32 %mbox
  %102 = ptrtoint ptr %arrayidx340 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1, ptr %arrayidx340, align 4
  br label %cleanup400

out_stat:                                         ; preds = %do.end298, %if.then250, %do.body236, %do.body232.out_stat_crit_edge
  %rc.0.ph = phi i32 [ %call.i576, %do.body232.out_stat_crit_edge ], [ %call.i576, %if.then250 ], [ %call.i577, %do.end298 ], [ %call.i576, %do.body236 ]
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 8
  %dev342 = getelementptr inbounds %struct.pci_dev, ptr %104, i32 0, i32 44
  %105 = ptrtoint ptr %sts_size to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sts_size, align 4
  %mul346 = shl i32 %106, 6
  %107 = ptrtoint ptr %sts_base to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %sts_base, align 4
  %109 = ptrtoint ptr %sts_phys to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %sts_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev342, i32 noundef %mul346, ptr noundef %108, i32 noundef %110, i32 noundef 0) #9
  %111 = ptrtoint ptr %sts_base to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %sts_base, align 4
  br label %out_desc

out_desc:                                         ; preds = %out_stat, %if.then165, %do.body151, %do.body147.out_desc_crit_edge
  %rc.1 = phi i32 [ %rc.0.ph, %out_stat ], [ -12, %if.then165 ], [ -12, %do.body147.out_desc_crit_edge ], [ -12, %do.body151 ]
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 8
  %dev357 = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 44
  %114 = ptrtoint ptr %omd_base to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %omd_base, align 4
  %116 = ptrtoint ptr %omd_phys to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %omd_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev357, i32 noundef %mul, ptr noundef %115, i32 noundef %117, i32 noundef 0) #9
  %118 = ptrtoint ptr %omd_base to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %omd_base, align 4
  br label %out_buf

out_buf:                                          ; preds = %out_desc, %if.then84, %do.body70, %do.body66.out_buf_crit_edge, %if.then43, %do.body37, %do.body34.out_buf_crit_edge
  %rc.2 = phi i32 [ %rc.1, %out_desc ], [ -12, %if.then43 ], [ -12, %do.body34.out_buf_crit_edge ], [ -12, %if.then84 ], [ -12, %do.body66.out_buf_crit_edge ], [ -12, %do.body37 ], [ -12, %do.body70 ]
  %119 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp373589.not = icmp eq i32 %120, 0
  br i1 %cmp373589.not, label %out_buf.cleanup400_crit_edge, label %out_buf.for.body375_crit_edge

out_buf.for.body375_crit_edge:                    ; preds = %out_buf
  br label %for.body375

out_buf.cleanup400_crit_edge:                     ; preds = %out_buf
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup400

for.body375:                                      ; preds = %for.inc397.for.body375_crit_edge, %out_buf.for.body375_crit_edge
  %i.1590 = phi i32 [ %inc398, %for.inc397.for.body375_crit_edge ], [ 0, %out_buf.for.body375_crit_edge ]
  %arrayidx379 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 3, i32 %i.1590
  %121 = ptrtoint ptr %arrayidx379 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx379, align 4
  %tobool380.not = icmp eq ptr %122, null
  br i1 %tobool380.not, label %for.body375.for.inc397_crit_edge, label %if.then381

for.body375.for.inc397_crit_edge:                 ; preds = %for.body375
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc397

if.then381:                                       ; preds = %for.body375
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 8
  %dev383 = getelementptr inbounds %struct.pci_dev, ptr %124, i32 0, i32 44
  %arrayidx391 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 4, i32 %i.1590
  %125 = ptrtoint ptr %arrayidx391 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx391, align 4
  tail call void @dma_free_attrs(ptr noundef %dev383, i32 noundef 4096, ptr noundef nonnull %122, i32 noundef %126, i32 noundef 0) #9
  %127 = ptrtoint ptr %arrayidx379 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %arrayidx379, align 4
  br label %for.inc397

for.inc397:                                       ; preds = %if.then381, %for.body375.for.inc397_crit_edge
  %inc398 = add nuw i32 %i.1590, 1
  %128 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx, align 4
  %cmp373 = icmp ult i32 %inc398, %129
  br i1 %cmp373, label %for.inc397.for.body375_crit_edge, label %for.inc397.cleanup400_crit_edge

for.inc397.cleanup400_crit_edge:                  ; preds = %for.inc397
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup400

for.inc397.for.body375_crit_edge:                 ; preds = %for.inc397
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body375

cleanup400:                                       ; preds = %for.inc397.cleanup400_crit_edge, %out_buf.cleanup400_crit_edge, %tsi721_omsg_interrupt_enable.exit, %if.end.cleanup400_crit_edge, %is_power_of_2.exit.cleanup400_crit_edge, %entry.cleanup400_crit_edge
  %retval.0 = phi i32 [ 0, %tsi721_omsg_interrupt_enable.exit ], [ -22, %is_power_of_2.exit.cleanup400_crit_edge ], [ -22, %entry.cleanup400_crit_edge ], [ -19, %if.end.cleanup400_crit_edge ], [ %rc.2, %out_buf.cleanup400_crit_edge ], [ %rc.2, %for.inc397.cleanup400_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsi721_close_outb_mbox(ptr nocapture noundef readonly %mport, i32 noundef %mbox) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 19
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %arrayidx = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 18, i32 %mbox
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx, align 4
  %regs.i = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %mul.i = shl i32 %mbox, 12
  %add.i = add i32 %mul.i, 397324
  %add.ptr.i = getelementptr i8, ptr %6, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 520093696) #9, !srcloc !329
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add3.i = add i32 %mul.i, 397336
  %add.ptr4.i = getelementptr i8, ptr %8, i32 %add3.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %10 = and i32 %9, -520093697
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %12, i32 %add3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %10) #9, !srcloc !329
  %flags.i = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 8
  %and9.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end.tsi721_omsg_interrupt_disable.exit_crit_edge

if.end.tsi721_omsg_interrupt_disable.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsi721_omsg_interrupt_disable.exit

if.end12.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %16, i32 170060
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #9, !srcloc !330
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %add16.i = add i32 %mbox, 8
  %shl.i = shl nuw i32 1, %add16.i
  %neg17.i = xor i32 %shl.i, -1
  %and18.i = and i32 %18, %neg17.i
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %20, i32 170060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %and18.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %21) #9, !srcloc !329
  br label %tsi721_omsg_interrupt_disable.exit

tsi721_omsg_interrupt_disable.exit:               ; preds = %if.end12.i, %if.end.tsi721_omsg_interrupt_disable.exit_crit_edge
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 8
  %and = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %tsi721_omsg_interrupt_disable.exit.if.end13_crit_edge, label %if.then5

tsi721_omsg_interrupt_disable.exit.if.end13_crit_edge: ; preds = %tsi721_omsg_interrupt_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then5:                                         ; preds = %tsi721_omsg_interrupt_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %mbox, 2
  %arrayidx6 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 4, i32 %add
  %24 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx6, align 2
  %conv = zext i16 %25 to i32
  %call = tail call ptr @free_irq(i32 noundef %conv, ptr noundef %1) #9
  %add8 = add i32 %mbox, 6
  %arrayidx9 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 4, i32 %add8
  %26 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx9, align 2
  %conv11 = zext i16 %27 to i32
  %call12 = tail call ptr @free_irq(i32 noundef %conv11, ptr noundef %1) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then5, %tsi721_omsg_interrupt_disable.exit.if.end13_crit_edge
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %arrayidx14 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox
  %sts_size = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 7
  %30 = ptrtoint ptr %sts_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sts_size, align 4
  %mul = shl i32 %31, 6
  %sts_base = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 5
  %32 = ptrtoint ptr %sts_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sts_base, align 4
  %sts_phys = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 6
  %34 = ptrtoint ptr %sts_phys to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sts_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef %33, i32 noundef %35, i32 noundef 0) #9
  %36 = ptrtoint ptr %sts_base to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %sts_base, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %39 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx14, align 4
  %add26 = shl i32 %40, 4
  %mul27 = add i32 %add26, 16
  %omd_base = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 1
  %41 = ptrtoint ptr %omd_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %omd_base, align 4
  %omd_phys = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 2
  %43 = ptrtoint ptr %omd_phys to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %omd_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev23, i32 noundef %mul27, ptr noundef %42, i32 noundef %44, i32 noundef 0) #9
  %45 = ptrtoint ptr %omd_base to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %omd_base, align 4
  %46 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp104.not = icmp eq i32 %47, 0
  br i1 %cmp104.not, label %if.end13.cleanup_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end13.for.body_crit_edge
  %i.0105 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end13.for.body_crit_edge ]
  %arrayidx41 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 3, i32 %i.0105
  %48 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx41, align 4
  %tobool42.not = icmp eq ptr %49, null
  br i1 %tobool42.not, label %for.body.for.inc_crit_edge, label %if.then43

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then43:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %arrayidx52 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 4, i32 %i.0105
  %52 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx52, align 4
  tail call void @dma_free_attrs(ptr noundef %dev45, i32 noundef 4096, ptr noundef nonnull %49, i32 noundef %53, i32 noundef 0) #9
  %54 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %arrayidx41, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then43, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0105, 1
  %55 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx14, align 4
  %cmp = icmp ult i32 %inc, %56
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_open_inb_mbox(ptr nocapture noundef readonly %mport, ptr noundef %dev_id, i32 noundef %mbox, i32 noundef %entries) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 19
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = add i32 %entries, -513
  call void @__sanitizer_cov_trace_const_cmp4(i32 -481, i32 %2)
  %3 = icmp ult i32 %2, -481
  br i1 %3, label %entry.cleanup304_crit_edge, label %is_power_of_2.exit

entry.cleanup304_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup304

is_power_of_2.exit:                               ; preds = %entry
  %4 = tail call i32 @llvm.ctpop.i32(i32 %entries) #9, !range !336
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp ugt i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mbox)
  %cmp5 = icmp sgt i32 %mbox, 3
  %or.cond457 = or i1 %cmp5, %cmp1.i
  br i1 %or.cond457, label %is_power_of_2.exit.cleanup304_crit_edge, label %if.end

is_power_of_2.exit.cleanup304_crit_edge:          ; preds = %is_power_of_2.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup304

if.end:                                           ; preds = %is_power_of_2.exit
  %5 = load i8, ptr @mbox_sel, align 1
  %conv = zext i8 %5 to i32
  %shl = shl nuw nsw i32 1, %mbox
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.end.cleanup304_crit_edge, label %for.body.preheader

if.end.cleanup304_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup304

for.body.preheader:                               ; preds = %if.end
  %arrayidx = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox
  %dev_id10 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 9
  %6 = ptrtoint ptr %dev_id10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev_id, ptr %dev_id10, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %entries, ptr %arrayidx, align 4
  %rx_slot = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 8
  %8 = ptrtoint ptr %rx_slot to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rx_slot, align 4
  %desc_rdptr = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 11
  %9 = ptrtoint ptr %desc_rdptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %desc_rdptr, align 4
  %fq_wrptr = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 10
  %10 = ptrtoint ptr %fq_wrptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %fq_wrptr, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0472 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx26 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 7, i32 %i.0472
  %11 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx26, align 4
  %inc = add nuw i32 %i.0472, 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %cmp22 = icmp ult i32 %inc, %13
  br i1 %cmp22, label %for.body.for.body_crit_edge, label %do.body

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body:                                          ; preds = %for.body
  %lock = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.76, ptr noundef nonnull @tsi721_open_inb_mbox.__key, i16 noundef signext 3) #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %mul = shl i32 %entries, 12
  %buf_phys = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef %buf_phys, i32 noundef 3264, i32 noundef 0) #9
  %buf_base = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 1
  %16 = ptrtoint ptr %buf_base to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %buf_base, align 4
  %cmp38 = icmp eq ptr %call.i, null
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  br i1 %cmp38, label %do.end43, label %if.end46

do.end43:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef %mbox) #13
  br label %cleanup304

if.end46:                                         ; preds = %do.body
  %mul49 = shl i32 %entries, 3
  %imfq_phys = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 4
  %call.i462 = tail call ptr @dma_alloc_attrs(ptr noundef %dev45, i32 noundef %mul49, ptr noundef %imfq_phys, i32 noundef 3264, i32 noundef 0) #9
  %imfq_base = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 3
  %19 = ptrtoint ptr %imfq_base to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i462, ptr %imfq_base, align 4
  %cmp58 = icmp eq ptr %call.i462, null
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  br i1 %cmp58, label %do.end63, label %if.end66

do.end63:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.78, i32 noundef %mbox) #13
  br label %out_buf

if.end66:                                         ; preds = %if.end46
  %mul69 = shl i32 %entries, 6
  %imd_phys = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 6
  %call.i463 = tail call ptr @dma_alloc_attrs(ptr noundef %dev65, i32 noundef %mul69, ptr noundef %imd_phys, i32 noundef 3264, i32 noundef 0) #9
  %imd_base = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 5
  %22 = ptrtoint ptr %imd_base to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i463, ptr %imd_base, align 4
  %cmp78 = icmp eq ptr %call.i463, null
  br i1 %cmp78, label %do.end83, label %if.end86

do.end83:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %dev85 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev85, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.78, i32 noundef %mbox) #13
  br label %out_dma

if.end86:                                         ; preds = %if.end66
  %25 = ptrtoint ptr %imfq_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %imfq_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entries)
  %cmp91473 = icmp sgt i32 %entries, 0
  br i1 %cmp91473, label %if.end86.for.body93_crit_edge, label %if.end86.do.body105_crit_edge

if.end86.do.body105_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body105

if.end86.for.body93_crit_edge:                    ; preds = %if.end86
  br label %for.body93

for.body93:                                       ; preds = %for.body93.for.body93_crit_edge, %if.end86.for.body93_crit_edge
  %i.1474 = phi i32 [ %inc103, %for.body93.for.body93_crit_edge ], [ 0, %if.end86.for.body93_crit_edge ]
  %27 = ptrtoint ptr %buf_phys to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buf_phys, align 4
  %conv97 = zext i32 %28 to i64
  %mul98 = shl i32 %i.1474, 12
  %conv99 = sext i32 %mul98 to i64
  %add100 = add nsw i64 %conv97, %conv99
  %29 = tail call i64 @llvm.bswap.i64(i64 %add100)
  %arrayidx101 = getelementptr i64, ptr %26, i32 %i.1474
  %30 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %arrayidx101, align 8
  %inc103 = add nuw nsw i32 %i.1474, 1
  %exitcond.not = icmp eq i32 %inc103, %entries
  br i1 %exitcond.not, label %for.body93.do.body105_crit_edge, label %for.body93.for.body93_crit_edge

for.body93.for.body93_crit_edge:                  ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body93

for.body93.do.body105_crit_edge:                  ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body105

do.body105:                                       ; preds = %for.body93.do.body105_crit_edge, %if.end86.do.body105_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %flags = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 8
  %and108 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool.not = icmp eq i32 %and108, 0
  br i1 %tobool.not, label %if.then109, label %do.body105.if.end112_crit_edge

do.body105.if.end112_crit_edge:                   ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then109:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #11
  %host_deviceid = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 1, i32 10
  %33 = ptrtoint ptr %host_deviceid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %host_deviceid, align 8
  %regs = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %36, i32 393248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %37 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %37) #9, !srcloc !329
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 8
  %or = or i32 %39, 4
  store i32 %or, ptr %flags, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %do.body105.if.end112_crit_edge
  %regs118 = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %regs118 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs118, align 4
  %add = shl i32 %mbox, 12
  %add120 = add i32 %add, 414212
  %add.ptr121 = getelementptr i8, ptr %41, i32 %add120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 0) #9, !srcloc !329
  %42 = ptrtoint ptr %imfq_phys to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %imfq_phys, align 4
  %44 = and i32 %43, -64
  %45 = ptrtoint ptr %regs118 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs118, align 4
  %add130 = add i32 %add, 414208
  %add.ptr131 = getelementptr i8, ptr %46, i32 %add130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %47 = tail call i32 @llvm.bswap.i32(i32 %44) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 %47) #9, !srcloc !329
  %48 = tail call i32 @llvm.ctlz.i32(i32 %entries, i1 false) #9, !range !336
  %sub = sub nsw i32 27, %48
  %49 = ptrtoint ptr %regs118 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs118, align 4
  %add135 = add i32 %add, 414216
  %add.ptr136 = getelementptr i8, ptr %50, i32 %add135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %51 = tail call i32 @llvm.bswap.i32(i32 %sub) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136, i32 %51) #9, !srcloc !329
  %52 = ptrtoint ptr %regs118 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs118, align 4
  %add145 = add i32 %add, 414468
  %add.ptr146 = getelementptr i8, ptr %53, i32 %add145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr146, i32 0) #9, !srcloc !329
  %54 = ptrtoint ptr %imd_phys to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %imd_phys, align 4
  %and150 = and i32 %55, -64
  %56 = ptrtoint ptr %regs118 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs118, align 4
  %add153 = add i32 %add, 414464
  %add.ptr154 = getelementptr i8, ptr %57, i32 %add153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %58 = tail call i32 @llvm.bswap.i32(i32 %and150) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154, i32 %58) #9, !srcloc !329
  %59 = ptrtoint ptr %regs118 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs118, align 4
  %add159 = add i32 %add, 414484
  %add.ptr160 = getelementptr i8, ptr %60, i32 %add159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr160, i32 %51) #9, !srcloc !329
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags, align 8
  %and162 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.end112.if.end239_crit_edge, label %if.then164

if.end112.if.end239_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end239

if.then164:                                       ; preds = %if.end112
  %add165 = add i32 %mbox, 10
  %arrayidx166 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 4, i32 %add165
  %63 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx166, align 2
  %conv167 = zext i16 %64 to i32
  %irq_name = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 4, i32 %add165, i32 1
  %call.i464 = tail call i32 @request_threaded_irq(i32 noundef %conv167, ptr noundef nonnull @tsi721_imsg_msix, ptr noundef null, i32 noundef 0, ptr noundef %irq_name, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i464)
  %tobool171.not = icmp eq i32 %call.i464, 0
  br i1 %tobool171.not, label %if.end192, label %do.body173

do.body173:                                       ; preds = %if.then164
  %65 = load i32, ptr @tsi_dbg_level, align 4
  %and174 = and i32 %65, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %do.body173.out_desc_crit_edge, label %do.body177

do.body173.out_desc_crit_edge:                    ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_desc

do.body177:                                       ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_open_inb_mbox.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_open_inb_mbox, %out_desc)) #9
          to label %if.then183 [label %out_desc], !srcloc !325

if.then183:                                       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 8
  %dev185 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_open_inb_mbox.__UNIQUE_ID_ddebug271, ptr noundef %dev185, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.78, i32 noundef %mbox) #9
  br label %out_desc

if.end192:                                        ; preds = %if.then164
  %add193 = add i32 %mbox, 14
  %arrayidx195 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 4, i32 %add193
  %68 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx195, align 2
  %conv197 = zext i16 %69 to i32
  %irq_name200 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 4, i32 %add193, i32 1
  %call.i465 = tail call i32 @request_threaded_irq(i32 noundef %conv197, ptr noundef nonnull @tsi721_imsg_msix, ptr noundef null, i32 noundef 0, ptr noundef %irq_name200, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i465)
  %tobool203.not = icmp eq i32 %call.i465, 0
  br i1 %tobool203.not, label %if.end192.if.end239_crit_edge, label %do.body205

if.end192.if.end239_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end239

do.body205:                                       ; preds = %if.end192
  %70 = load i32, ptr @tsi_dbg_level, align 4
  %and206 = and i32 %70, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and206)
  %tobool207.not = icmp eq i32 %and206, 0
  br i1 %tobool207.not, label %do.body205.do.end231_crit_edge, label %do.body209

do.body205.do.end231_crit_edge:                   ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end231

do.body209:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_open_inb_mbox.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_open_inb_mbox, %do.end231)) #9
          to label %if.then223 [label %do.end231], !srcloc !325

if.then223:                                       ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 8
  %dev225 = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_open_inb_mbox.__UNIQUE_ID_ddebug272, ptr noundef %dev225, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.78, i32 noundef %mbox) #9
  br label %do.end231

do.end231:                                        ; preds = %if.then223, %do.body209, %do.body205.do.end231_crit_edge
  %73 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx166, align 2
  %conv236 = zext i16 %74 to i32
  %call237 = tail call ptr @free_irq(i32 noundef %conv236, ptr noundef %1) #9
  br label %out_desc

if.end239:                                        ; preds = %if.end192.if.end239_crit_edge, %if.end112.if.end239_crit_edge
  %75 = ptrtoint ptr %regs118 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs118, align 4
  %add.i = add i32 %add, 414280
  %add.ptr.i = getelementptr i8, ptr %76, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 252706816) #9, !srcloc !329
  %77 = ptrtoint ptr %regs118 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs118, align 4
  %add3.i = add i32 %add, 414288
  %add.ptr4.i = getelementptr i8, ptr %78, i32 %add3.i
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %80 = or i32 %79, 252706816
  %81 = ptrtoint ptr %regs118 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs118, align 4
  %add.ptr8.i = getelementptr i8, ptr %82, i32 %add3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %80) #9, !srcloc !329
  %83 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags, align 8
  %and.i = and i32 %84, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end239.tsi721_imsg_interrupt_enable.exit_crit_edge

if.end239.tsi721_imsg_interrupt_enable.exit_crit_edge: ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsi721_imsg_interrupt_enable.exit

if.end11.i:                                       ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %regs118 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs118, align 4
  %add.ptr13.i = getelementptr i8, ptr %86, i32 170060
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #9, !srcloc !330
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %add15.i = add i32 %mbox, 20
  %shl.i = shl nuw i32 1, %add15.i
  %or16.i = or i32 %88, %shl.i
  %89 = ptrtoint ptr %regs118 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs118, align 4
  %add.ptr18.i = getelementptr i8, ptr %90, i32 170060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %91 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %91) #9, !srcloc !329
  br label %tsi721_imsg_interrupt_enable.exit

tsi721_imsg_interrupt_enable.exit:                ; preds = %if.end11.i, %if.end239.tsi721_imsg_interrupt_enable.exit_crit_edge
  %92 = ptrtoint ptr %regs118 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs118, align 4
  %add242 = add i32 %add, 414272
  %add.ptr243 = getelementptr i8, ptr %93, i32 %add242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr243, i32 16777216) #9, !srcloc !329
  %94 = ptrtoint ptr %regs118 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs118, align 4
  %add.ptr247 = getelementptr i8, ptr %95, i32 %add242
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr247) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %97(i32 noundef 2147480) #9
  %sub249 = add i32 %entries, -1
  %98 = ptrtoint ptr %fq_wrptr to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %sub249, ptr %fq_wrptr, align 4
  %99 = ptrtoint ptr %regs118 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs118, align 4
  %add256 = add i32 %add, 414224
  %add.ptr257 = getelementptr i8, ptr %100, i32 %add256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %101 = tail call i32 @llvm.bswap.i32(i32 %sub249) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr257, i32 %101) #9, !srcloc !329
  %arrayidx258 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 16, i32 %mbox
  %102 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1, ptr %arrayidx258, align 4
  br label %cleanup304

out_desc:                                         ; preds = %do.end231, %if.then183, %do.body177, %do.body173.out_desc_crit_edge
  %rc.0.ph = phi i32 [ %call.i464, %do.body173.out_desc_crit_edge ], [ %call.i464, %if.then183 ], [ %call.i465, %do.end231 ], [ %call.i464, %do.body177 ]
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 8
  %dev260 = getelementptr inbounds %struct.pci_dev, ptr %104, i32 0, i32 44
  %105 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx, align 4
  %mul264 = shl i32 %106, 6
  %107 = ptrtoint ptr %imd_base to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %imd_base, align 4
  %109 = ptrtoint ptr %imd_phys to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %imd_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev260, i32 noundef %mul264, ptr noundef %108, i32 noundef %110, i32 noundef 0) #9
  %111 = ptrtoint ptr %imd_base to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %imd_base, align 4
  br label %out_dma

out_dma:                                          ; preds = %out_desc, %do.end83
  %rc.1 = phi i32 [ -12, %do.end83 ], [ %rc.0.ph, %out_desc ]
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 8
  %dev275 = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 44
  %114 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx, align 4
  %mul279 = shl i32 %115, 3
  %116 = ptrtoint ptr %imfq_base to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %imfq_base, align 4
  %118 = ptrtoint ptr %imfq_phys to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %imfq_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev275, i32 noundef %mul279, ptr noundef %117, i32 noundef %119, i32 noundef 0) #9
  %120 = ptrtoint ptr %imfq_base to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %imfq_base, align 4
  br label %out_buf

out_buf:                                          ; preds = %out_dma, %do.end63
  %rc.2 = phi i32 [ -12, %do.end63 ], [ %rc.1, %out_dma ]
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %1, align 8
  %dev290 = getelementptr inbounds %struct.pci_dev, ptr %122, i32 0, i32 44
  %123 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx, align 4
  %mul294 = shl i32 %124, 12
  %125 = ptrtoint ptr %buf_base to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %buf_base, align 4
  %127 = ptrtoint ptr %buf_phys to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %buf_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev290, i32 noundef %mul294, ptr noundef %126, i32 noundef %128, i32 noundef 0) #9
  %129 = ptrtoint ptr %buf_base to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %buf_base, align 4
  br label %cleanup304

cleanup304:                                       ; preds = %out_buf, %tsi721_imsg_interrupt_enable.exit, %do.end43, %if.end.cleanup304_crit_edge, %is_power_of_2.exit.cleanup304_crit_edge, %entry.cleanup304_crit_edge
  %retval.0 = phi i32 [ 0, %tsi721_imsg_interrupt_enable.exit ], [ -12, %do.end43 ], [ %rc.2, %out_buf ], [ -22, %is_power_of_2.exit.cleanup304_crit_edge ], [ -22, %entry.cleanup304_crit_edge ], [ -19, %if.end.cleanup304_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsi721_close_inb_mbox(ptr nocapture noundef readonly %mport, i32 noundef %mbox) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 19
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %arrayidx = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 16, i32 %mbox
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx, align 4
  %regs.i = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add = shl i32 %mbox, 12
  %add.i = add i32 %add, 414280
  %add.ptr.i = getelementptr i8, ptr %6, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 520093696) #9, !srcloc !329
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add3.i = add i32 %add, 414288
  %add.ptr4.i = getelementptr i8, ptr %8, i32 %add3.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %10 = and i32 %9, -520093697
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %12, i32 %add3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %10) #9, !srcloc !329
  %flags.i = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 8
  %and9.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end.tsi721_imsg_interrupt_disable.exit_crit_edge

if.end.tsi721_imsg_interrupt_disable.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsi721_imsg_interrupt_disable.exit

if.end12.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %16, i32 170060
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #9, !srcloc !330
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %add16.i = add i32 %mbox, 20
  %shl.i = shl nuw i32 1, %add16.i
  %neg17.i = xor i32 %shl.i, -1
  %and18.i = and i32 %18, %neg17.i
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %20, i32 170060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %and18.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %21) #9, !srcloc !329
  br label %tsi721_imsg_interrupt_disable.exit

tsi721_imsg_interrupt_disable.exit:               ; preds = %if.end12.i, %if.end.tsi721_imsg_interrupt_disable.exit_crit_edge
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 8
  %and = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %tsi721_imsg_interrupt_disable.exit.if.end14_crit_edge, label %if.then5

tsi721_imsg_interrupt_disable.exit.if.end14_crit_edge: ; preds = %tsi721_imsg_interrupt_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then5:                                         ; preds = %tsi721_imsg_interrupt_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add6 = add i32 %mbox, 10
  %arrayidx7 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 4, i32 %add6
  %24 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx7, align 2
  %conv = zext i16 %25 to i32
  %call = tail call ptr @free_irq(i32 noundef %conv, ptr noundef %1) #9
  %add9 = add i32 %mbox, 14
  %arrayidx10 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 4, i32 %add9
  %26 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx10, align 2
  %conv12 = zext i16 %27 to i32
  %call13 = tail call ptr @free_irq(i32 noundef %conv12, ptr noundef %1) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then5, %tsi721_imsg_interrupt_disable.exit.if.end14_crit_edge
  %arrayidx15 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox
  %28 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp102.not = icmp eq i32 %29, 0
  br i1 %cmp102.not, label %if.end14.for.end_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  br label %for.body

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end14.for.body_crit_edge
  %rx_slot.0103 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end14.for.body_crit_edge ]
  %arrayidx19 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 7, i32 %rx_slot.0103
  %30 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx19, align 4
  %inc = add nuw i32 %rx_slot.0103, 1
  %31 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx15, align 4
  %cmp = icmp ult i32 %inc, %32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo = shl i32 %32, 12
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end14.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %if.end14.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %buf_base = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 1
  %35 = ptrtoint ptr %buf_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf_base, align 4
  %buf_phys = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 2
  %37 = ptrtoint ptr %buf_phys to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buf_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %.lcssa, ptr noundef %36, i32 noundef %38, i32 noundef 0) #9
  %39 = ptrtoint ptr %buf_base to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %buf_base, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %42 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx15, align 4
  %mul35 = shl i32 %43, 3
  %imfq_base = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 3
  %44 = ptrtoint ptr %imfq_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %imfq_base, align 4
  %imfq_phys = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 4
  %46 = ptrtoint ptr %imfq_phys to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %imfq_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev31, i32 noundef %mul35, ptr noundef %45, i32 noundef %47, i32 noundef 0) #9
  %48 = ptrtoint ptr %imfq_base to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %imfq_base, align 4
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 8
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %51 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx15, align 4
  %mul48 = shl i32 %52, 6
  %imd_base = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 5
  %53 = ptrtoint ptr %imd_base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %imd_base, align 4
  %imd_phys = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 6
  %55 = ptrtoint ptr %imd_phys to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %imd_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev44, i32 noundef %mul48, ptr noundef %54, i32 noundef %56, i32 noundef 0) #9
  %57 = ptrtoint ptr %imd_base to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %imd_base, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_add_outb_message(ptr nocapture noundef readonly %mport, ptr nocapture noundef readonly %rdev, i32 noundef %mbox, ptr nocapture noundef readonly %buffer, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 19
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %arrayidx = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 18, i32 %mbox
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %4 = add i32 %len, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4089, i32 %4)
  %5 = icmp ult i32 %4, -4089
  %6 = or i1 %5, %tobool.not
  br i1 %6, label %entry.cleanup_crit_edge, label %do.body4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body4:                                         ; preds = %entry
  %arrayidx6 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox
  %lock = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 12
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %tx_slot12 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 9
  %7 = ptrtoint ptr %tx_slot12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_slot12, align 4
  %arrayidx15 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 3, i32 %8
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx15, align 4
  %11 = call ptr @memcpy(ptr %10, ptr %buffer, i32 %len)
  %and = and i32 %len, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  %add = add nuw nsw i32 %len, 8
  %spec.select = select i1 %tobool16.not, i32 %len, i32 %add
  %omd_base = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 1
  %12 = ptrtoint ptr %omd_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %omd_base, align 4
  %destid = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 24
  %14 = ptrtoint ptr %destid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %destid, align 4
  %conv21 = zext i16 %15 to i32
  %or = or i32 %conv21, -2147483648
  %16 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx22 = getelementptr %struct.tsi721_omsg_desc, ptr %13, i32 %8
  %17 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx22, align 16
  %sys_size = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 14
  %18 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sys_size, align 4
  %shl = shl i32 %19, 26
  %shl23 = shl i32 %mbox, 22
  %and26 = and i32 %spec.select, 4088
  %or24 = or i32 %shl23, %and26
  %or25 = or i32 %or24, %shl
  %or27 = or i32 %or25, 57344
  %20 = tail call i32 @llvm.bswap.i32(i32 %or27)
  %msg_info = getelementptr %struct.tsi721_omsg_desc, ptr %13, i32 %8, i32 1
  %21 = ptrtoint ptr %msg_info to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %msg_info, align 4
  %arrayidx31 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 4, i32 %8
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx31, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = getelementptr %struct.tsi721_omsg_desc, ptr %13, i32 %8, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %25, align 8
  %27 = getelementptr %struct.tsi721_omsg_desc, ptr %13, i32 %8, i32 3
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %27, align 4
  %wr_count = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 19, i32 %mbox, i32 11
  %29 = ptrtoint ptr %wr_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wr_count, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %wr_count, align 4
  %31 = ptrtoint ptr %tx_slot12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_slot12, align 4
  %inc48 = add i32 %32, 1
  store i32 %inc48, ptr %tx_slot12, align 4
  %33 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc48, i32 %34)
  %cmp51 = icmp eq i32 %inc48, %34
  br i1 %cmp51, label %if.then53, label %do.body4.do.body62_crit_edge

do.body4.do.body62_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body62

if.then53:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %tx_slot12 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %tx_slot12, align 4
  %inc60 = add i32 %30, 2
  %36 = ptrtoint ptr %wr_count to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %inc60, ptr %wr_count, align 4
  br label %do.body62

do.body62:                                        ; preds = %if.then53, %do.body4.do.body62_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %wr_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wr_count, align 4
  %regs = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  %mul = shl i32 %mbox, 12
  %add68 = add i32 %mul, 397312
  %add.ptr = getelementptr i8, ptr %40, i32 %add68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %41) #9, !srcloc !329
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %add.ptr72 = getelementptr i8, ptr %43, i32 %add68
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body62, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body62 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_add_inb_buffer(ptr nocapture noundef readonly %mport, i32 noundef %mbox, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 19
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %rx_slot2 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 8
  %2 = ptrtoint ptr %rx_slot2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_slot2, align 4
  %arrayidx5 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 7, i32 %3
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx5, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, i32 noundef %3) #13
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buf, ptr %arrayidx5, align 4
  %9 = ptrtoint ptr %rx_slot2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_slot2, align 4
  %inc = add i32 %10, 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %12)
  %cmp = icmp eq i32 %inc, %12
  %spec.store.select = select i1 %cmp, i32 0, i32 %inc
  %13 = ptrtoint ptr %rx_slot2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.store.select, ptr %rx_slot2, align 4
  br label %out

out:                                              ; preds = %if.end, %do.end
  %rc.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tsi721_get_inb_message(ptr nocapture noundef readonly %mport, i32 noundef %mbox) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 19
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %arrayidx = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 16, i32 %mbox
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox
  %imd_base = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 5
  %4 = ptrtoint ptr %imd_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %imd_base, align 4
  %desc_rdptr = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 11
  %6 = ptrtoint ptr %desc_rdptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %desc_rdptr, align 4
  %msg_info = getelementptr %struct.tsi721_imsg_desc, ptr %5, i32 %7, i32 1
  %8 = ptrtoint ptr %msg_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_info, align 4
  %.mask = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool5.not = icmp eq i32 %.mask, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %rx_slot10 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 8
  %10 = ptrtoint ptr %rx_slot10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_slot10, align 4
  %arrayidx13151 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 7, i32 %11
  %12 = ptrtoint ptr %arrayidx13151 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx13151, align 4
  %cmp152 = icmp eq ptr %13, null
  br i1 %cmp152, label %while.body.lr.ph, label %if.end7.while.end_crit_edge

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end7
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %rx_slot.0153 = phi i32 [ %11, %while.body.lr.ph ], [ %spec.store.select, %while.body.while.body_crit_edge ]
  %inc = add i32 %rx_slot.0153, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %15)
  %cmp16 = icmp eq i32 %inc, %15
  %spec.store.select = select i1 %cmp16, i32 0, i32 %inc
  %arrayidx13 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 7, i32 %spec.store.select
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx13, align 4
  %cmp = icmp eq ptr %17, null
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end7.while.end_crit_edge
  %arrayidx13.lcssa = phi ptr [ %arrayidx13151, %if.end7.while.end_crit_edge ], [ %arrayidx13, %while.body.while.end_crit_edge ]
  %.lcssa = phi ptr [ %13, %if.end7.while.end_crit_edge ], [ %17, %while.body.while.end_crit_edge ]
  %bufptr_hi = getelementptr %struct.tsi721_imsg_desc, ptr %5, i32 %7, i32 3
  %18 = ptrtoint ptr %bufptr_hi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bufptr_hi, align 4
  %bufptr_lo = getelementptr %struct.tsi721_imsg_desc, ptr %5, i32 %7, i32 2
  %20 = ptrtoint ptr %bufptr_lo to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bufptr_lo, align 8
  %22 = zext i32 %19 to i64
  %23 = zext i32 %21 to i64
  %24 = shl nuw i64 %23, 32
  %25 = or i64 %24, %22
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  %buf_base = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 1
  %27 = ptrtoint ptr %buf_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf_base, align 4
  %buf_phys = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 2
  %29 = ptrtoint ptr %buf_phys to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf_phys, align 4
  %31 = trunc i64 %26 to i32
  %idx.ext = sub i32 %31, %30
  %add.ptr25 = getelementptr i8, ptr %28, i32 %idx.ext
  %32 = and i32 %9, -133234688
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp32 = icmp eq i32 %32, 0
  %spec.store.select95 = select i1 %cmp32, i32 4096, i32 %33
  %34 = call ptr @memcpy(ptr %.lcssa, ptr %add.ptr25, i32 %spec.store.select95)
  %35 = ptrtoint ptr %arrayidx13.lcssa to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx13.lcssa, align 4
  %36 = ptrtoint ptr %msg_info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_info, align 4
  %and41 = and i32 %37, -129
  store i32 %and41, ptr %msg_info, align 4
  %38 = ptrtoint ptr %desc_rdptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %desc_rdptr, align 4
  %inc45 = add i32 %39, 1
  %40 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc45, i32 %41)
  %cmp49 = icmp eq i32 %inc45, %41
  %spec.store.select149 = select i1 %cmp49, i32 0, i32 %inc45
  %42 = ptrtoint ptr %desc_rdptr to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %spec.store.select149, ptr %desc_rdptr, align 4
  %regs = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 3
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 4
  %add = shl i32 %mbox, 12
  %add59 = add i32 %add, 414472
  %add.ptr60 = getelementptr i8, ptr %44, i32 %add59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %45 = tail call i32 @llvm.bswap.i32(i32 %spec.store.select149) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %45) #9, !srcloc !329
  %imfq_base = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 3
  %46 = ptrtoint ptr %imfq_base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %imfq_base, align 4
  %fq_wrptr = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 17, i32 %mbox, i32 10
  %48 = ptrtoint ptr %fq_wrptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fq_wrptr, align 4
  %arrayidx65 = getelementptr i64, ptr %47, i32 %49
  %50 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %25, ptr %arrayidx65, align 8
  %51 = load i32, ptr %fq_wrptr, align 4
  %inc69 = add i32 %51, 1
  %52 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc69, i32 %53)
  %cmp73 = icmp eq i32 %inc69, %53
  %spec.store.select150 = select i1 %cmp73, i32 0, i32 %inc69
  %54 = ptrtoint ptr %fq_wrptr to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %spec.store.select150, ptr %fq_wrptr, align 4
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs, align 4
  %add85 = add i32 %add, 414224
  %add.ptr86 = getelementptr i8, ptr %56, i32 %add85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %57 = tail call i32 @llvm.bswap.i32(i32 %spec.store.select150) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %57) #9, !srcloc !329
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %.lcssa, %while.end ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_rio_map_inb_mem(ptr nocapture noundef readonly %mport, i32 noundef %lstart, i64 noundef %rstart, i64 noundef %size, i32 noundef %flags) #2 align 64 {
entry:
  %lstart.addr = alloca i32, align 4
  %loc_start = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lstart.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %lstart, ptr %lstart.addr, align 4
  %priv1 = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 19
  %1 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1, align 8
  %conv = zext i32 %lstart to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %rstart)
  %cmp = icmp eq i64 %conv, %rstart
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %loc_start) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 17179869184, i64 %size)
  %cmp3 = icmp ugt i64 %size, 17179869184
  br i1 %cmp3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp, label %cond.end26, label %do.body65

cond.end26:                                       ; preds = %if.end
  %conv24 = trunc i64 %size to i32
  %sub.i383 = add i32 %conv24, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i383)
  %tobool.not.i.i.i = icmp eq i32 %sub.i383, 0
  %3 = tail call i32 @llvm.ctlz.i32(i32 %sub.i383, i1 true) #9, !range !336
  %sub.i.i.i = sub nuw nsw i32 32, %3
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  %conv28 = zext i32 %shl.i to i64
  %neg = sub nsw i64 0, %conv28
  %and = and i64 %neg, %rstart
  %4 = load i32, ptr @tsi_dbg_level, align 4
  %and31 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %cond.end26.do.end45_crit_edge, label %do.body34

cond.end26.do.end45_crit_edge:                    ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

do.body34:                                        ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_rio_map_inb_mem.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_rio_map_inb_mem, %do.end45)) #9
          to label %if.then41 [label %do.end45], !srcloc !325

if.then41:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_rio_map_inb_mem.__UNIQUE_ID_ddebug254, ptr noundef %dev, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.97, i64 noundef %rstart, ptr noundef nonnull %lstart.addr, i64 noundef %size, i64 noundef %and) #9
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body34, %cond.end26.do.end45_crit_edge
  %7 = ptrtoint ptr %lstart.addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lstart.addr, align 4
  %conv46 = zext i32 %8 to i64
  %add47 = add nuw nsw i64 %conv46, %size
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %do.end45
  %ibw_size.0 = phi i64 [ %conv28, %do.end45 ], [ %mul, %while.body.while.cond_crit_edge ]
  %ibw_start.0 = phi i64 [ %and, %do.end45 ], [ %and54, %while.body.while.cond_crit_edge ]
  %add48 = add nuw nsw i64 %ibw_start.0, %ibw_size.0
  call void @__sanitizer_cov_trace_cmp8(i64 %add47, i64 %add48)
  %cmp49 = icmp ugt i64 %add47, %add48
  br i1 %cmp49, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %mul = shl i64 %ibw_size.0, 1
  %neg53 = sub i64 0, %mul
  %and54 = and i64 %conv46, %neg53
  %cmp55 = icmp ugt i64 %mul, 17179869184
  br i1 %cmp55, label %while.body.cleanup_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.end:                                        ; preds = %while.cond
  %conv59 = trunc i64 %ibw_start.0 to i32
  %9 = ptrtoint ptr %loc_start to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv59, ptr %loc_start, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2848, i32 noundef 12) #14
  %cmp61 = icmp eq ptr %call7.i.i, null
  br i1 %cmp61, label %while.end.cleanup_crit_edge, label %while.end.if.end111_crit_edge

while.end.if.end111_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body65:                                        ; preds = %if.end
  %11 = load i32, ptr @tsi_dbg_level, align 4
  %and66 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %do.body65.do.end91_crit_edge, label %do.body69

do.body65.do.end91_crit_edge:                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end91

do.body69:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_rio_map_inb_mem.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_rio_map_inb_mem, %do.end91)) #9
          to label %if.then83 [label %do.end91], !srcloc !325

if.then83:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 8
  %dev85 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_rio_map_inb_mem.__UNIQUE_ID_ddebug255, ptr noundef %dev85, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.97, i64 noundef %rstart, ptr noundef nonnull %lstart.addr, i64 noundef %size) #9
  br label %do.end91

do.end91:                                         ; preds = %if.then83, %do.body69, %do.body65.do.end91_crit_edge
  %conv92 = trunc i64 %size to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv92)
  %cmp.not.i = icmp eq i32 %conv92, 0
  br i1 %cmp.not.i, label %do.end91.cleanup_crit_edge, label %is_power_of_2.exit

do.end91.cleanup_crit_edge:                       ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

is_power_of_2.exit:                               ; preds = %do.end91
  %14 = call i32 @llvm.ctpop.i32(i32 %conv92) #9, !range !336
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp1.i = icmp ugt i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %size)
  %cmp94 = icmp ult i64 %size, 4096
  %or.cond = or i1 %cmp94, %cmp1.i
  br i1 %or.cond, label %is_power_of_2.exit.cleanup_crit_edge, label %lor.lhs.false96

is_power_of_2.exit.cleanup_crit_edge:             ; preds = %is_power_of_2.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false96:                                  ; preds = %is_power_of_2.exit
  %15 = ptrtoint ptr %lstart.addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lstart.addr, align 4
  %conv97 = zext i32 %16 to i64
  %sub98 = add nsw i64 %size, -1
  %17 = or i64 %conv97, %rstart
  %18 = and i64 %17, %sub98
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %if.end106, label %lor.lhs.false96.cleanup_crit_edge

lor.lhs.false96.cleanup_crit_edge:                ; preds = %lor.lhs.false96
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end106:                                        ; preds = %lor.lhs.false96
  %ibwin_cnt = getelementptr inbounds %struct.tsi721_device, ptr %2, i32 0, i32 21
  %20 = ptrtoint ptr %ibwin_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ibwin_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp107 = icmp eq i32 %21, 0
  br i1 %cmp107, label %if.end106.cleanup_crit_edge, label %if.end110

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end110:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %loc_start to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %16, ptr %loc_start, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %while.end.if.end111_crit_edge
  %ibw_size.1 = phi i64 [ %ibw_size.0, %while.end.if.end111_crit_edge ], [ %size, %if.end110 ]
  %ibw_start.1 = phi i64 [ %ibw_start.0, %while.end.if.end111_crit_edge ], [ %rstart, %if.end110 ]
  %map.0 = phi ptr [ %call7.i.i, %while.end.if.end111_crit_edge ], [ null, %if.end110 ]
  %add128 = add i64 %ibw_start.1, %ibw_size.1
  %active = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 0, i32 3
  %23 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %active, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool115.not = icmp eq i8 %24, 0
  br i1 %tobool115.not, label %if.end111.for.inc_crit_edge, label %if.else121

if.end111.for.inc_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else121:                                       ; preds = %if.end111
  %arrayidx = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 0
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx, align 8
  %size123 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 0, i32 1
  %27 = ptrtoint ptr %size123 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size123, align 8
  %conv124 = zext i32 %28 to i64
  %add125 = add i64 %26, %conv124
  call void @__sanitizer_cov_trace_cmp8(i64 %ibw_start.1, i64 %add125)
  %cmp126 = icmp ult i64 %ibw_start.1, %add125
  call void @__sanitizer_cov_trace_cmp8(i64 %add128, i64 %26)
  %cmp130 = icmp ugt i64 %add128, %26
  %or.cond374 = select i1 %cmp126, i1 %cmp130, i1 false
  br i1 %or.cond374, label %if.else121.if.then132_crit_edge, label %if.else121.for.inc_crit_edge

if.else121.for.inc_crit_edge:                     ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else121.if.then132_crit_edge:                  ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then132

if.then132:                                       ; preds = %if.else121.7.if.then132_crit_edge, %if.else121.6.if.then132_crit_edge, %if.else121.5.if.then132_crit_edge, %if.else121.4.if.then132_crit_edge, %if.else121.3.if.then132_crit_edge, %if.else121.2.if.then132_crit_edge, %if.else121.1.if.then132_crit_edge, %if.else121.if.then132_crit_edge
  %i.0408.lcssa = phi i32 [ 0, %if.else121.if.then132_crit_edge ], [ 1, %if.else121.1.if.then132_crit_edge ], [ 2, %if.else121.2.if.then132_crit_edge ], [ 3, %if.else121.3.if.then132_crit_edge ], [ 4, %if.else121.4.if.then132_crit_edge ], [ 5, %if.else121.5.if.then132_crit_edge ], [ 6, %if.else121.6.if.then132_crit_edge ], [ 7, %if.else121.7.if.then132_crit_edge ]
  %.lcssa = phi i64 [ %26, %if.else121.if.then132_crit_edge ], [ %43, %if.else121.1.if.then132_crit_edge ], [ %49, %if.else121.2.if.then132_crit_edge ], [ %55, %if.else121.3.if.then132_crit_edge ], [ %61, %if.else121.4.if.then132_crit_edge ], [ %67, %if.else121.5.if.then132_crit_edge ], [ %73, %if.else121.6.if.then132_crit_edge ], [ %79, %if.else121.7.if.then132_crit_edge ]
  %add125.lcssa = phi i64 [ %add125, %if.else121.if.then132_crit_edge ], [ %add125.1, %if.else121.1.if.then132_crit_edge ], [ %add125.2, %if.else121.2.if.then132_crit_edge ], [ %add125.3, %if.else121.3.if.then132_crit_edge ], [ %add125.4, %if.else121.4.if.then132_crit_edge ], [ %add125.5, %if.else121.5.if.then132_crit_edge ], [ %add125.6, %if.else121.6.if.then132_crit_edge ], [ %add125.7, %if.else121.7.if.then132_crit_edge ]
  br i1 %cmp, label %lor.lhs.false134, label %if.then132.out_crit_edge

if.then132.out_crit_edge:                         ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false134:                                 ; preds = %if.then132
  %xlat = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 %i.0408.lcssa, i32 4
  %29 = ptrtoint ptr %xlat to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %xlat, align 1, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool135.not = icmp eq i8 %30, 0
  br i1 %tobool135.not, label %if.end138, label %lor.lhs.false134.out_crit_edge

lor.lhs.false134.out_crit_edge:                   ; preds = %lor.lhs.false134
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end138:                                        ; preds = %lor.lhs.false134
  call void @__sanitizer_cov_trace_cmp8(i64 %.lcssa, i64 %rstart)
  %cmp140.not = icmp ugt i64 %.lcssa, %rstart
  %add143 = add i64 %size, %rstart
  call void @__sanitizer_cov_trace_cmp8(i64 %add143, i64 %add125.lcssa)
  %cmp148.not = icmp ugt i64 %add143, %add125.lcssa
  %or.cond375 = select i1 %cmp140.not, i1 true, i1 %cmp148.not
  br i1 %or.cond375, label %if.end138.out_crit_edge, label %if.then150

if.end138.out_crit_edge:                          ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then150:                                       ; preds = %if.end138
  %31 = ptrtoint ptr %lstart.addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lstart.addr, align 4
  %lstart151 = getelementptr inbounds %struct.tsi721_ib_win_mapping, ptr %map.0, i32 0, i32 1
  %33 = ptrtoint ptr %lstart151 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %lstart151, align 8
  %mappings = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 %i.0408.lcssa, i32 5
  %prev.i = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 %i.0408.lcssa, i32 5, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %map.0, ptr noundef %35, ptr noundef %mappings) #9
  br i1 %call.i.i, label %if.end.i.i386, label %if.then150.cleanup_crit_edge

if.then150.cleanup_crit_edge:                     ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i386:                                    ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %map.0, ptr %prev.i, align 4
  %37 = ptrtoint ptr %map.0 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %mappings, ptr %map.0, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %map.0, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %map.0, ptr %35, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.else121.for.inc_crit_edge, %if.end111.for.inc_crit_edge
  %spec.select373.1 = phi i32 [ 1, %if.else121.for.inc_crit_edge ], [ 0, %if.end111.for.inc_crit_edge ]
  %ret.1 = phi i32 [ -16, %if.else121.for.inc_crit_edge ], [ 0, %if.end111.for.inc_crit_edge ]
  %avail.1 = phi i32 [ -1, %if.else121.for.inc_crit_edge ], [ 0, %if.end111.for.inc_crit_edge ]
  %active.1 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 1, i32 3
  %40 = ptrtoint ptr %active.1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %active.1, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool115.not.1 = icmp eq i8 %41, 0
  br i1 %tobool115.not.1, label %for.inc.for.inc.1_crit_edge, label %if.else121.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.else121.1:                                     ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 1
  %42 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx.1, align 8
  %size123.1 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 1, i32 1
  %44 = ptrtoint ptr %size123.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size123.1, align 8
  %conv124.1 = zext i32 %45 to i64
  %add125.1 = add i64 %43, %conv124.1
  call void @__sanitizer_cov_trace_cmp8(i64 %ibw_start.1, i64 %add125.1)
  %cmp126.1 = icmp ult i64 %ibw_start.1, %add125.1
  call void @__sanitizer_cov_trace_cmp8(i64 %add128, i64 %43)
  %cmp130.1 = icmp ugt i64 %add128, %43
  %or.cond374.1 = select i1 %cmp126.1, i1 %cmp130.1, i1 false
  br i1 %or.cond374.1, label %if.else121.1.if.then132_crit_edge, label %if.else121.1.for.inc.1_crit_edge

if.else121.1.for.inc.1_crit_edge:                 ; preds = %if.else121.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.else121.1.if.then132_crit_edge:                ; preds = %if.else121.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then132

for.inc.1:                                        ; preds = %if.else121.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %ret.1.1 = phi i32 [ %ret.1, %if.else121.1.for.inc.1_crit_edge ], [ 0, %for.inc.for.inc.1_crit_edge ]
  %avail.1.1 = phi i32 [ %avail.1, %if.else121.1.for.inc.1_crit_edge ], [ %spec.select373.1, %for.inc.for.inc.1_crit_edge ]
  %active.2 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 2, i32 3
  %46 = ptrtoint ptr %active.2 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %active.2, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool115.not.2 = icmp eq i8 %47, 0
  br i1 %tobool115.not.2, label %if.then116.2, label %if.else121.2

if.else121.2:                                     ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 2
  %48 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx.2, align 8
  %size123.2 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 2, i32 1
  %50 = ptrtoint ptr %size123.2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size123.2, align 8
  %conv124.2 = zext i32 %51 to i64
  %add125.2 = add i64 %49, %conv124.2
  call void @__sanitizer_cov_trace_cmp8(i64 %ibw_start.1, i64 %add125.2)
  %cmp126.2 = icmp ult i64 %ibw_start.1, %add125.2
  call void @__sanitizer_cov_trace_cmp8(i64 %add128, i64 %49)
  %cmp130.2 = icmp ugt i64 %add128, %49
  %or.cond374.2 = select i1 %cmp126.2, i1 %cmp130.2, i1 false
  br i1 %or.cond374.2, label %if.else121.2.if.then132_crit_edge, label %if.else121.2.for.inc.2_crit_edge

if.else121.2.for.inc.2_crit_edge:                 ; preds = %if.else121.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.else121.2.if.then132_crit_edge:                ; preds = %if.else121.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then132

if.then116.2:                                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %avail.1.1)
  %cmp117.2 = icmp eq i32 %avail.1.1, -1
  %spec.select.2 = select i1 %cmp117.2, i32 0, i32 %ret.1.1
  %spec.select373.2 = select i1 %cmp117.2, i32 2, i32 %avail.1.1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then116.2, %if.else121.2.for.inc.2_crit_edge
  %ret.1.2 = phi i32 [ %ret.1.1, %if.else121.2.for.inc.2_crit_edge ], [ %spec.select.2, %if.then116.2 ]
  %avail.1.2 = phi i32 [ %avail.1.1, %if.else121.2.for.inc.2_crit_edge ], [ %spec.select373.2, %if.then116.2 ]
  %active.3 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 3, i32 3
  %52 = ptrtoint ptr %active.3 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %active.3, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool115.not.3 = icmp eq i8 %53, 0
  br i1 %tobool115.not.3, label %if.then116.3, label %if.else121.3

if.else121.3:                                     ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 3
  %54 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx.3, align 8
  %size123.3 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 3, i32 1
  %56 = ptrtoint ptr %size123.3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size123.3, align 8
  %conv124.3 = zext i32 %57 to i64
  %add125.3 = add i64 %55, %conv124.3
  call void @__sanitizer_cov_trace_cmp8(i64 %ibw_start.1, i64 %add125.3)
  %cmp126.3 = icmp ult i64 %ibw_start.1, %add125.3
  call void @__sanitizer_cov_trace_cmp8(i64 %add128, i64 %55)
  %cmp130.3 = icmp ugt i64 %add128, %55
  %or.cond374.3 = select i1 %cmp126.3, i1 %cmp130.3, i1 false
  br i1 %or.cond374.3, label %if.else121.3.if.then132_crit_edge, label %if.else121.3.for.inc.3_crit_edge

if.else121.3.for.inc.3_crit_edge:                 ; preds = %if.else121.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.else121.3.if.then132_crit_edge:                ; preds = %if.else121.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then132

if.then116.3:                                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %avail.1.2)
  %cmp117.3 = icmp eq i32 %avail.1.2, -1
  %spec.select.3 = select i1 %cmp117.3, i32 0, i32 %ret.1.2
  %spec.select373.3 = select i1 %cmp117.3, i32 3, i32 %avail.1.2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then116.3, %if.else121.3.for.inc.3_crit_edge
  %ret.1.3 = phi i32 [ %ret.1.2, %if.else121.3.for.inc.3_crit_edge ], [ %spec.select.3, %if.then116.3 ]
  %avail.1.3 = phi i32 [ %avail.1.2, %if.else121.3.for.inc.3_crit_edge ], [ %spec.select373.3, %if.then116.3 ]
  %active.4 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 4, i32 3
  %58 = ptrtoint ptr %active.4 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %active.4, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool115.not.4 = icmp eq i8 %59, 0
  br i1 %tobool115.not.4, label %if.then116.4, label %if.else121.4

if.else121.4:                                     ; preds = %for.inc.3
  %arrayidx.4 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 4
  %60 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx.4, align 8
  %size123.4 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 4, i32 1
  %62 = ptrtoint ptr %size123.4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %size123.4, align 8
  %conv124.4 = zext i32 %63 to i64
  %add125.4 = add i64 %61, %conv124.4
  call void @__sanitizer_cov_trace_cmp8(i64 %ibw_start.1, i64 %add125.4)
  %cmp126.4 = icmp ult i64 %ibw_start.1, %add125.4
  call void @__sanitizer_cov_trace_cmp8(i64 %add128, i64 %61)
  %cmp130.4 = icmp ugt i64 %add128, %61
  %or.cond374.4 = select i1 %cmp126.4, i1 %cmp130.4, i1 false
  br i1 %or.cond374.4, label %if.else121.4.if.then132_crit_edge, label %if.else121.4.for.inc.4_crit_edge

if.else121.4.for.inc.4_crit_edge:                 ; preds = %if.else121.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

if.else121.4.if.then132_crit_edge:                ; preds = %if.else121.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then132

if.then116.4:                                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %avail.1.3)
  %cmp117.4 = icmp eq i32 %avail.1.3, -1
  %spec.select.4 = select i1 %cmp117.4, i32 0, i32 %ret.1.3
  %spec.select373.4 = select i1 %cmp117.4, i32 4, i32 %avail.1.3
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then116.4, %if.else121.4.for.inc.4_crit_edge
  %ret.1.4 = phi i32 [ %ret.1.3, %if.else121.4.for.inc.4_crit_edge ], [ %spec.select.4, %if.then116.4 ]
  %avail.1.4 = phi i32 [ %avail.1.3, %if.else121.4.for.inc.4_crit_edge ], [ %spec.select373.4, %if.then116.4 ]
  %active.5 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 5, i32 3
  %64 = ptrtoint ptr %active.5 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %active.5, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool115.not.5 = icmp eq i8 %65, 0
  br i1 %tobool115.not.5, label %if.then116.5, label %if.else121.5

if.else121.5:                                     ; preds = %for.inc.4
  %arrayidx.5 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 5
  %66 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx.5, align 8
  %size123.5 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 5, i32 1
  %68 = ptrtoint ptr %size123.5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %size123.5, align 8
  %conv124.5 = zext i32 %69 to i64
  %add125.5 = add i64 %67, %conv124.5
  call void @__sanitizer_cov_trace_cmp8(i64 %ibw_start.1, i64 %add125.5)
  %cmp126.5 = icmp ult i64 %ibw_start.1, %add125.5
  call void @__sanitizer_cov_trace_cmp8(i64 %add128, i64 %67)
  %cmp130.5 = icmp ugt i64 %add128, %67
  %or.cond374.5 = select i1 %cmp126.5, i1 %cmp130.5, i1 false
  br i1 %or.cond374.5, label %if.else121.5.if.then132_crit_edge, label %if.else121.5.for.inc.5_crit_edge

if.else121.5.for.inc.5_crit_edge:                 ; preds = %if.else121.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

if.else121.5.if.then132_crit_edge:                ; preds = %if.else121.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then132

if.then116.5:                                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %avail.1.4)
  %cmp117.5 = icmp eq i32 %avail.1.4, -1
  %spec.select.5 = select i1 %cmp117.5, i32 0, i32 %ret.1.4
  %spec.select373.5 = select i1 %cmp117.5, i32 5, i32 %avail.1.4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then116.5, %if.else121.5.for.inc.5_crit_edge
  %ret.1.5 = phi i32 [ %ret.1.4, %if.else121.5.for.inc.5_crit_edge ], [ %spec.select.5, %if.then116.5 ]
  %avail.1.5 = phi i32 [ %avail.1.4, %if.else121.5.for.inc.5_crit_edge ], [ %spec.select373.5, %if.then116.5 ]
  %active.6 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 6, i32 3
  %70 = ptrtoint ptr %active.6 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %active.6, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool115.not.6 = icmp eq i8 %71, 0
  br i1 %tobool115.not.6, label %if.then116.6, label %if.else121.6

if.else121.6:                                     ; preds = %for.inc.5
  %arrayidx.6 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 6
  %72 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx.6, align 8
  %size123.6 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 6, i32 1
  %74 = ptrtoint ptr %size123.6 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %size123.6, align 8
  %conv124.6 = zext i32 %75 to i64
  %add125.6 = add i64 %73, %conv124.6
  call void @__sanitizer_cov_trace_cmp8(i64 %ibw_start.1, i64 %add125.6)
  %cmp126.6 = icmp ult i64 %ibw_start.1, %add125.6
  call void @__sanitizer_cov_trace_cmp8(i64 %add128, i64 %73)
  %cmp130.6 = icmp ugt i64 %add128, %73
  %or.cond374.6 = select i1 %cmp126.6, i1 %cmp130.6, i1 false
  br i1 %or.cond374.6, label %if.else121.6.if.then132_crit_edge, label %if.else121.6.for.inc.6_crit_edge

if.else121.6.for.inc.6_crit_edge:                 ; preds = %if.else121.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

if.else121.6.if.then132_crit_edge:                ; preds = %if.else121.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then132

if.then116.6:                                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %avail.1.5)
  %cmp117.6 = icmp eq i32 %avail.1.5, -1
  %spec.select.6 = select i1 %cmp117.6, i32 0, i32 %ret.1.5
  %spec.select373.6 = select i1 %cmp117.6, i32 6, i32 %avail.1.5
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then116.6, %if.else121.6.for.inc.6_crit_edge
  %ret.1.6 = phi i32 [ %ret.1.5, %if.else121.6.for.inc.6_crit_edge ], [ %spec.select.6, %if.then116.6 ]
  %avail.1.6 = phi i32 [ %avail.1.5, %if.else121.6.for.inc.6_crit_edge ], [ %spec.select373.6, %if.then116.6 ]
  %active.7 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 7, i32 3
  %76 = ptrtoint ptr %active.7 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %active.7, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool115.not.7 = icmp eq i8 %77, 0
  br i1 %tobool115.not.7, label %if.then116.7, label %if.else121.7

if.else121.7:                                     ; preds = %for.inc.6
  %arrayidx.7 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 7
  %78 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx.7, align 8
  %size123.7 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 7, i32 1
  %80 = ptrtoint ptr %size123.7 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %size123.7, align 8
  %conv124.7 = zext i32 %81 to i64
  %add125.7 = add i64 %79, %conv124.7
  call void @__sanitizer_cov_trace_cmp8(i64 %ibw_start.1, i64 %add125.7)
  %cmp126.7 = icmp ult i64 %ibw_start.1, %add125.7
  call void @__sanitizer_cov_trace_cmp8(i64 %add128, i64 %79)
  %cmp130.7 = icmp ugt i64 %add128, %79
  %or.cond374.7 = select i1 %cmp126.7, i1 %cmp130.7, i1 false
  br i1 %or.cond374.7, label %if.else121.7.if.then132_crit_edge, label %if.else121.7.for.inc.7_crit_edge

if.else121.7.for.inc.7_crit_edge:                 ; preds = %if.else121.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7

if.else121.7.if.then132_crit_edge:                ; preds = %if.else121.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then132

if.then116.7:                                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %avail.1.6)
  %cmp117.7 = icmp eq i32 %avail.1.6, -1
  br i1 %cmp117.7, label %if.then116.7.if.end157_crit_edge, label %if.then116.7.for.inc.7_crit_edge

if.then116.7.for.inc.7_crit_edge:                 ; preds = %if.then116.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7

if.then116.7.if.end157_crit_edge:                 ; preds = %if.then116.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end157

for.inc.7:                                        ; preds = %if.then116.7.for.inc.7_crit_edge, %if.else121.7.for.inc.7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.6)
  %tobool155.not = icmp eq i32 %ret.1.6, 0
  br i1 %tobool155.not, label %for.inc.7.if.end157_crit_edge, label %for.inc.7.out_crit_edge

for.inc.7.out_crit_edge:                          ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.inc.7.if.end157_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end157

if.end157:                                        ; preds = %for.inc.7.if.end157_crit_edge, %if.then116.7.if.end157_crit_edge
  %avail.1.7416 = phi i32 [ %avail.1.6, %for.inc.7.if.end157_crit_edge ], [ 7, %if.then116.7.if.end157_crit_edge ]
  %regs = getelementptr inbounds %struct.tsi721_device, ptr %2, i32 0, i32 3
  %82 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs, align 4
  %mul158 = shl nsw i32 %avail.1.7416, 5
  %add159 = add i32 %mul158, 167936
  %add.ptr = getelementptr i8, ptr %83, i32 %add159
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !330
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %85 = and i32 %84, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool162.not = icmp eq i32 %85, 0
  br i1 %tobool162.not, label %if.end194, label %do.end178, !prof !340

do.end178:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1188, i32 noundef 9, ptr noundef null) #9
  br label %out

if.end194:                                        ; preds = %if.end157
  %arrayidx196 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 %avail.1.7416
  %active197 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 %avail.1.7416, i32 3
  %86 = ptrtoint ptr %active197 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %active197, align 8
  %87 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %ibw_start.1, ptr %arrayidx196, align 8
  %88 = ptrtoint ptr %loc_start to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %loc_start, align 4
  %lstart199 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 %avail.1.7416, i32 2
  %90 = ptrtoint ptr %lstart199 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %lstart199, align 4
  %conv200 = trunc i64 %ibw_size.1 to i32
  %size201 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 %avail.1.7416, i32 1
  %91 = ptrtoint ptr %size201 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %conv200, ptr %size201, align 8
  %92 = ptrtoint ptr %lstart.addr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %lstart.addr, align 4
  %conv202 = zext i32 %93 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv202, i64 %rstart)
  %cmp203 = icmp ne i64 %conv202, %rstart
  %xlat205 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 %avail.1.7416, i32 4
  %frombool206 = zext i1 %cmp203 to i8
  %94 = ptrtoint ptr %xlat205 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %frombool206, ptr %xlat205, align 1
  %mappings207 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 %avail.1.7416, i32 5
  %95 = ptrtoint ptr %mappings207 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %mappings207, ptr %mappings207, align 4
  %prev.i387 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 %avail.1.7416, i32 5, i32 1
  %96 = ptrtoint ptr %prev.i387 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %mappings207, ptr %prev.i387, align 4
  br i1 %cmp, label %if.then209, label %if.end194.if.end213_crit_edge

if.end194.if.end213_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end213

if.then209:                                       ; preds = %if.end194
  %97 = ptrtoint ptr %lstart.addr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %lstart.addr, align 4
  %lstart210 = getelementptr inbounds %struct.tsi721_ib_win_mapping, ptr %map.0, i32 0, i32 1
  %99 = ptrtoint ptr %lstart210 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %lstart210, align 8
  %100 = ptrtoint ptr %prev.i387 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i387, align 4
  %call.i.i389 = call zeroext i1 @__list_add_valid(ptr noundef %map.0, ptr noundef %101, ptr noundef %mappings207) #9
  br i1 %call.i.i389, label %if.end.i.i391, label %if.then209.if.end213_crit_edge

if.then209.if.end213_crit_edge:                   ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end213

if.end.i.i391:                                    ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %prev.i387 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %map.0, ptr %prev.i387, align 4
  %103 = ptrtoint ptr %map.0 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %mappings207, ptr %map.0, align 8
  %prev3.i.i390 = getelementptr inbounds %struct.list_head, ptr %map.0, i32 0, i32 1
  %104 = ptrtoint ptr %prev3.i.i390 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev3.i.i390, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %map.0, ptr %101, align 4
  br label %if.end213

if.end213:                                        ; preds = %if.end.i.i391, %if.then209.if.end213_crit_edge, %if.end194.if.end213_crit_edge
  %106 = call i32 @llvm.ctlz.i32(i32 %conv200, i1 false) #9, !range !336
  %.neg = mul nsw i32 %106, -256
  %shl217 = add nsw i32 %.neg, 4864
  %107 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs, align 4
  %add220 = add i32 %mul158, 167944
  %add.ptr221 = getelementptr i8, ptr %108, i32 %add220
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  call void @arm_heavy_mb() #9
  %109 = call i32 @llvm.bswap.i32(i32 %shl217) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr221, i32 %109) #9, !srcloc !329
  %110 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs, align 4
  %add226 = add i32 %mul158, 167952
  %add.ptr227 = getelementptr i8, ptr %111, i32 %add226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr227, i32 0) #9, !srcloc !329
  %112 = ptrtoint ptr %loc_start to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %loc_start, align 4
  %114 = and i32 %113, -4096
  %115 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs, align 4
  %add233 = add i32 %mul158, 167948
  %add.ptr234 = getelementptr i8, ptr %116, i32 %add233
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  call void @arm_heavy_mb() #9
  %117 = call i32 @llvm.bswap.i32(i32 %114) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr234, i32 %117) #9, !srcloc !329
  %shr235 = lshr i64 %ibw_start.1, 32
  %conv236 = trunc i64 %shr235 to i32
  %118 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs, align 4
  %add239 = add i32 %mul158, 167940
  %add.ptr240 = getelementptr i8, ptr %119, i32 %add239
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  call void @arm_heavy_mb() #9
  %120 = call i32 @llvm.bswap.i32(i32 %conv236) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr240, i32 %120) #9, !srcloc !329
  %121 = trunc i64 %ibw_start.1 to i32
  %122 = and i32 %121, -4096
  %conv242 = or i32 %122, 1
  %123 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs, align 4
  %add.ptr246 = getelementptr i8, ptr %124, i32 %add159
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  call void @arm_heavy_mb() #9
  %125 = call i32 @llvm.bswap.i32(i32 %conv242) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr246, i32 %125) #9, !srcloc !329
  %ibwin_cnt247 = getelementptr inbounds %struct.tsi721_device, ptr %2, i32 0, i32 21
  %126 = ptrtoint ptr %ibwin_cnt247 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ibwin_cnt247, align 8
  %dec = add i32 %127, -1
  store i32 %dec, ptr %ibwin_cnt247, align 8
  %128 = load i32, ptr @tsi_dbg_level, align 4
  %and249 = and i32 %128, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249)
  %tobool250.not = icmp eq i32 %and249, 0
  br i1 %tobool250.not, label %if.end213.cleanup_crit_edge, label %do.body252

if.end213.cleanup_crit_edge:                      ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body252:                                       ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_rio_map_inb_mem.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_rio_map_inb_mem, %cleanup)) #9
          to label %if.then266 [label %cleanup], !srcloc !325

if.then266:                                       ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #11
  %129 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %2, align 8
  %dev268 = getelementptr inbounds %struct.pci_dev, ptr %130, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_rio_map_inb_mem.__UNIQUE_ID_ddebug256, ptr noundef %dev268, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.97, i32 noundef %avail.1.7416, i64 noundef %ibw_start.1, ptr noundef nonnull %loc_start, i64 noundef %ibw_size.1) #9
  br label %cleanup

out:                                              ; preds = %do.end178, %for.inc.7.out_crit_edge, %if.end138.out_crit_edge, %lor.lhs.false134.out_crit_edge, %if.then132.out_crit_edge
  %ret.3 = phi i32 [ %ret.1.6, %for.inc.7.out_crit_edge ], [ -5, %do.end178 ], [ -14, %lor.lhs.false134.out_crit_edge ], [ -14, %if.then132.out_crit_edge ], [ -14, %if.end138.out_crit_edge ]
  call void @kfree(ptr noundef %map.0) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then266, %do.body252, %if.end213.cleanup_crit_edge, %if.end.i.i386, %if.then150.cleanup_crit_edge, %if.end106.cleanup_crit_edge, %lor.lhs.false96.cleanup_crit_edge, %is_power_of_2.exit.cleanup_crit_edge, %do.end91.cleanup_crit_edge, %while.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %out ], [ -22, %entry.cleanup_crit_edge ], [ -12, %while.end.cleanup_crit_edge ], [ -22, %lor.lhs.false96.cleanup_crit_edge ], [ -22, %is_power_of_2.exit.cleanup_crit_edge ], [ -16, %if.end106.cleanup_crit_edge ], [ 0, %if.then266 ], [ 0, %if.end213.cleanup_crit_edge ], [ 0, %if.then150.cleanup_crit_edge ], [ 0, %if.end.i.i386 ], [ -22, %do.end91.cleanup_crit_edge ], [ 0, %do.body252 ], [ -16, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %loc_start) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsi721_rio_unmap_inb_mem(ptr nocapture noundef readonly %mport, i32 noundef %lstart) #2 align 64 {
entry:
  %lstart.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lstart.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %lstart, ptr %lstart.addr, align 4
  %priv1 = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 19
  %1 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1, align 8
  %3 = load i32, ptr @tsi_dbg_level, align 4
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %do.body2

entry.for.body_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_rio_unmap_inb_mem.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_rio_unmap_inb_mem, %for.body)) #9
          to label %if.then7 [label %for.body], !srcloc !325

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %2, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_rio_unmap_inb_mem.__UNIQUE_ID_ddebug257, ptr noundef %dev, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.101, ptr noundef nonnull %lstart.addr) #9
  br label %for.body

for.body:                                         ; preds = %for.inc85.for.body_crit_edge, %if.then7, %do.body2, %entry.for.body_crit_edge
  %i.0163 = phi i32 [ %inc86, %for.inc85.for.body_crit_edge ], [ 0, %do.body2 ], [ 0, %if.then7 ], [ 0, %entry.for.body_crit_edge ]
  %active = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 %i.0163, i32 3
  %6 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %active, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool12.not = icmp eq i8 %7, 0
  br i1 %tobool12.not, label %for.body.for.inc85_crit_edge, label %lor.lhs.false

for.body.for.inc85_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc85

lor.lhs.false:                                    ; preds = %for.body
  %xlat = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 %i.0163, i32 4
  %8 = ptrtoint ptr %xlat to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %xlat, align 1, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not = icmp eq i8 %9, 0
  br i1 %tobool13.not, label %lor.lhs.false.if.end17_crit_edge, label %land.lhs.true

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true:                                    ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %lstart.addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lstart.addr, align 4
  %lstart14 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 %i.0163, i32 2
  %12 = ptrtoint ptr %lstart14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lstart14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp15.not = icmp eq i32 %11, %13
  br i1 %cmp15.not, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.for.inc85_crit_edge

land.lhs.true.for.inc85_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc85

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %lor.lhs.false.if.end17_crit_edge
  %14 = ptrtoint ptr %lstart.addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lstart.addr, align 4
  %lstart18 = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 %i.0163, i32 2
  %16 = ptrtoint ptr %lstart18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lstart18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp19.not = icmp ult i32 %15, %17
  br i1 %cmp19.not, label %if.end17.for.inc85_crit_edge, label %land.lhs.true20

if.end17.for.inc85_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc85

land.lhs.true20:                                  ; preds = %if.end17
  %size = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 %i.0163, i32 1
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 8
  %add = add i32 %19, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add)
  %cmp22 = icmp ult i32 %15, %add
  br i1 %cmp22, label %if.then23, label %land.lhs.true20.for.inc85_crit_edge

land.lhs.true20.for.inc85_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc85

if.then23:                                        ; preds = %land.lhs.true20
  br i1 %tobool13.not, label %if.then26, label %if.then23.do.body54_crit_edge

if.then23.do.body54_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body54

if.then26:                                        ; preds = %if.then23
  %mappings = getelementptr %struct.tsi721_device, ptr %2, i32 0, i32 20, i32 %i.0163, i32 5
  br label %for.cond28

for.cond28:                                       ; preds = %for.body33.for.cond28_crit_edge, %if.then26
  %map.0.in = phi ptr [ %mappings, %if.then26 ], [ %map.0, %for.body33.for.cond28_crit_edge ]
  %20 = ptrtoint ptr %map.0.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %map.0 = load ptr, ptr %map.0.in, align 4
  %cmp30.not = icmp eq ptr %map.0, %mappings
  br i1 %cmp30.not, label %for.cond28.for.inc85_crit_edge, label %for.body33

for.cond28.for.inc85_crit_edge:                   ; preds = %for.cond28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc85

for.body33:                                       ; preds = %for.cond28
  %lstart34 = getelementptr inbounds %struct.tsi721_ib_win_mapping, ptr %map.0, i32 0, i32 1
  %21 = ptrtoint ptr %lstart34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lstart34, align 4
  %cmp35 = icmp eq i32 %22, %15
  br i1 %cmp35, label %if.then36, label %for.body33.for.cond28_crit_edge

for.body33.for.cond28_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond28

if.then36:                                        ; preds = %for.body33
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %map.0) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then36.list_del.exit_crit_edge

if.then36.list_del.exit_crit_edge:                ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %map.0, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %map.0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then36.list_del.exit_crit_edge
  %29 = ptrtoint ptr %map.0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %map.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %map.0, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %map.0) #9
  %31 = ptrtoint ptr %mappings to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %mappings, align 4
  %cmp.i.not = icmp eq ptr %32, %mappings
  br i1 %cmp.i.not, label %list_del.exit.do.body54_crit_edge, label %list_del.exit.for.end87_crit_edge

list_del.exit.for.end87_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end87

list_del.exit.do.body54_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body54

do.body54:                                        ; preds = %list_del.exit.do.body54_crit_edge, %if.then23.do.body54_crit_edge
  %33 = load i32, ptr @tsi_dbg_level, align 4
  %and55 = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.body54.do.end80_crit_edge, label %do.body58

do.body54.do.end80_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end80

do.body58:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_rio_unmap_inb_mem.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_rio_unmap_inb_mem, %do.end80)) #9
          to label %if.then72 [label %do.end80], !srcloc !325

if.then72:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %2, align 8
  %dev74 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_rio_unmap_inb_mem.__UNIQUE_ID_ddebug258, ptr noundef %dev74, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.101, i32 noundef %i.0163) #9
  br label %do.end80

do.end80:                                         ; preds = %if.then72, %do.body58, %do.body54.do.end80_crit_edge
  %regs = getelementptr inbounds %struct.tsi721_device, ptr %2, i32 0, i32 3
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %mul = shl i32 %i.0163, 5
  %add81 = add i32 %mul, 167936
  %add.ptr82 = getelementptr i8, ptr %37, i32 %add81
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 0) #9, !srcloc !329
  %38 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %active, align 8
  %ibwin_cnt = getelementptr inbounds %struct.tsi721_device, ptr %2, i32 0, i32 21
  %39 = ptrtoint ptr %ibwin_cnt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ibwin_cnt, align 8
  %inc = add i32 %40, 1
  store i32 %inc, ptr %ibwin_cnt, align 8
  br label %for.end87

for.inc85:                                        ; preds = %for.cond28.for.inc85_crit_edge, %land.lhs.true20.for.inc85_crit_edge, %if.end17.for.inc85_crit_edge, %land.lhs.true.for.inc85_crit_edge, %for.body.for.inc85_crit_edge
  %inc86 = add nuw nsw i32 %i.0163, 1
  %exitcond.not = icmp eq i32 %inc86, 8
  br i1 %exitcond.not, label %for.inc85.do.body90_crit_edge, label %for.inc85.for.body_crit_edge

for.inc85.for.body_crit_edge:                     ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc85.do.body90_crit_edge:                    ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body90

for.end87:                                        ; preds = %do.end80, %list_del.exit.for.end87_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0163)
  %cmp88 = icmp eq i32 %i.0163, 8
  br i1 %cmp88, label %for.end87.do.body90_crit_edge, label %for.end87.if.end117_crit_edge

for.end87.if.end117_crit_edge:                    ; preds = %for.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

for.end87.do.body90_crit_edge:                    ; preds = %for.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body90

do.body90:                                        ; preds = %for.end87.do.body90_crit_edge, %for.inc85.do.body90_crit_edge
  %41 = load i32, ptr @tsi_dbg_level, align 4
  %and91 = and i32 %41, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %do.body90.if.end117_crit_edge, label %do.body94

do.body90.if.end117_crit_edge:                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

do.body94:                                        ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_rio_unmap_inb_mem.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_rio_unmap_inb_mem, %if.end117)) #9
          to label %if.then108 [label %if.end117], !srcloc !325

if.then108:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %2, align 8
  %dev110 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_rio_unmap_inb_mem.__UNIQUE_ID_ddebug259, ptr noundef %dev110, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.101, ptr noundef nonnull %lstart.addr) #9
  br label %if.end117

if.end117:                                        ; preds = %if.then108, %do.body94, %do.body90.if.end117_crit_edge, %for.end87.if.end117_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_query_mport(ptr nocapture noundef readonly %mport, ptr nocapture noundef writeonly %attr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 19
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %regs = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 344
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %5 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 340
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %9 = lshr i32 %8, 4
  %shr = and i32 %9, 15
  %link_speed = getelementptr inbounds %struct.rio_mport_attr, ptr %attr, i32 0, i32 1
  %10 = ptrtoint ptr %link_speed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr, ptr %link_speed, align 4
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr10 = getelementptr i8, ptr %12, i32 348
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %14 = lshr i32 %13, 3
  %shr13 = and i32 %14, 7
  %link_width = getelementptr inbounds %struct.rio_mport_attr, ptr %attr, i32 0, i32 2
  %15 = ptrtoint ptr %link_width to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr13, ptr %link_width, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %link_speed14 = getelementptr inbounds %struct.rio_mport_attr, ptr %attr, i32 0, i32 1
  %16 = ptrtoint ptr %link_speed14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %link_speed14, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %attr, align 4
  %dma_max_sge = getelementptr inbounds %struct.rio_mport_attr, ptr %attr, i32 0, i32 3
  %18 = ptrtoint ptr %dma_max_sge to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %dma_max_sge, align 4
  %dma_max_size = getelementptr inbounds %struct.rio_mport_attr, ptr %attr, i32 0, i32 4
  %19 = ptrtoint ptr %dma_max_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 67108864, ptr %dma_max_size, align 4
  %dma_align = getelementptr inbounds %struct.rio_mport_attr, ptr %attr, i32 0, i32 5
  %20 = ptrtoint ptr %dma_align to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %dma_align, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_map_outb_win(ptr nocapture noundef readonly %mport, i16 noundef zeroext %destid, i64 noundef %rstart, i32 noundef %size, i32 noundef %flags, ptr nocapture noundef writeonly %laddr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 19
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = load i32, ptr @tsi_dbg_level, align 4
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body2

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_map_outb_win.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_map_outb_win, %do.end10)) #9
          to label %if.then7 [label %do.end10], !srcloc !325

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %conv = zext i16 %destid to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_map_outb_win.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.105, i32 noundef %conv, i64 noundef %rstart, i32 noundef %size) #9
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2, %entry.do.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp.not.i = icmp eq i32 %size, 0
  br i1 %cmp.not.i, label %do.end10.cleanup_crit_edge, label %is_power_of_2.exit

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

is_power_of_2.exit:                               ; preds = %do.end10
  %5 = tail call i32 @llvm.ctpop.i32(i32 %size) #9, !range !336
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1.i = icmp ugt i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %size)
  %cmp = icmp ult i32 %size, 32768
  %or.cond = or i1 %cmp, %cmp1.i
  br i1 %or.cond, label %is_power_of_2.exit.cleanup_crit_edge, label %lor.lhs.false13

is_power_of_2.exit.cleanup_crit_edge:             ; preds = %is_power_of_2.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false13:                                  ; preds = %is_power_of_2.exit
  %sub = add i32 %size, -1
  %conv14 = zext i32 %sub to i64
  %and15 = and i64 %conv14, %rstart
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15)
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %if.end18, label %lor.lhs.false13.cleanup_crit_edge

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false13
  %obwin_cnt = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %obwin_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %obwin_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp19 = icmp eq i32 %7, 0
  br i1 %cmp19, label %if.end18.cleanup_crit_edge, label %for.cond.preheader

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end18
  %conv25 = zext i32 %size to i64
  %div95.i = lshr i32 %size, 3
  %conv31.i = zext i32 %div95.i to i64
  %sub.i207 = add nsw i64 %conv31.i, -1
  %neg.i = sub nsw i64 0, %conv31.i
  %free = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 22, i32 0, i32 2
  %8 = ptrtoint ptr %free to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %free, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv25)
  %cmp26.not = icmp ult i64 %9, %conv25
  br i1 %cmp26.not, label %for.cond.preheader.for.inc_crit_edge, label %if.then28

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then28:                                        ; preds = %for.cond.preheader
  %arrayidx = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 22, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx, align 8
  %size1.i = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 22, i32 0, i32 1
  %12 = ptrtoint ptr %size1.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %size1.i, align 8
  %add.i = add i64 %13, %11
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.end.i.for.cond.preheader.i_crit_edge, %if.then28
  %new_win_idx.0109.i = phi i32 [ -1, %if.then28 ], [ %new_win_idx.1104.i, %for.end.i.for.cond.preheader.i_crit_edge ]
  %new_win.0108.i = phi ptr [ null, %if.then28 ], [ %new_win.1103.i, %for.end.i.for.cond.preheader.i_crit_edge ]
  %win_base.0107.i = phi i64 [ %11, %if.then28 ], [ %and.i, %for.end.i.for.cond.preheader.i_crit_edge ]
  %add22.i = add i64 %win_base.0107.i, %conv25
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.1105.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %new_win_idx.1104.i = phi i32 [ %new_win_idx.0109.i, %for.cond.preheader.i ], [ %new_win_idx.2.i, %for.inc.i.for.body.i_crit_edge ]
  %new_win.1103.i = phi ptr [ %new_win.0108.i, %for.cond.preheader.i ], [ %new_win.2.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 %i.1105.i
  %active.i = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 %i.1105.i, i32 4
  %14 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %active.i, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end7.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %cmp3.i = icmp eq ptr %new_win.1103.i, null
  %spec.select.i = select i1 %cmp3.i, ptr %arrayidx.i, ptr %new_win.1103.i
  %spec.select96.i = select i1 %cmp3.i, i32 %i.1105.i, i32 %new_win_idx.1104.i
  br label %for.inc.i

if.end7.i:                                        ; preds = %for.body.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %11)
  %cmp11.not.i = icmp uge i64 %17, %11
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %add.i)
  %cmp13.i = icmp ult i64 %17, %add.i
  %or.cond.i = select i1 %cmp11.not.i, i1 %cmp13.i, i1 false
  br i1 %or.cond.i, label %if.then14.i, label %if.end7.i.for.inc.i_crit_edge

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then14.i:                                      ; preds = %if.end7.i
  %size16.i = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 %i.1105.i, i32 1
  %18 = ptrtoint ptr %size16.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size16.i, align 8
  %conv.i = zext i32 %19 to i64
  %add17.i = add i64 %17, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %win_base.0107.i, i64 %add17.i)
  %cmp18.i = icmp ult i64 %win_base.0107.i, %add17.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add22.i, i64 %17)
  %cmp24.i = icmp ugt i64 %add22.i, %17
  %or.cond110.i = and i1 %cmp24.i, %cmp18.i
  br i1 %or.cond110.i, label %for.end.i, label %if.then14.i.for.inc.i_crit_edge

if.then14.i.for.inc.i_crit_edge:                  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then14.i.for.inc.i_crit_edge, %if.end7.i.for.inc.i_crit_edge, %if.then.i
  %new_win.2.i = phi ptr [ %new_win.1103.i, %if.then14.i.for.inc.i_crit_edge ], [ %new_win.1103.i, %if.end7.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.then.i ]
  %new_win_idx.2.i = phi i32 [ %new_win_idx.1104.i, %if.then14.i.for.inc.i_crit_edge ], [ %new_win_idx.1104.i, %if.end7.i.for.inc.i_crit_edge ], [ %spec.select96.i, %if.then.i ]
  %inc.i = add nuw nsw i32 %i.1105.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.inc.i.while.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.while.end.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

for.end.i:                                        ; preds = %if.then14.i
  %add32.i = add i64 %sub.i207, %add17.i
  %and.i = and i64 %add32.i, %neg.i
  %cmp.i = icmp ult i32 %i.1105.i, 8
  br i1 %cmp.i, label %for.end.i.for.cond.preheader.i_crit_edge, label %while.end.i.loopexit245

for.end.i.for.cond.preheader.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i

while.end.i.loopexit245:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %.pre251 = add i64 %and.i, %conv25
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit245, %for.inc.i.while.end.i_crit_edge
  %add38.i.pre-phi = phi i64 [ %.pre251, %while.end.i.loopexit245 ], [ %add22.i, %for.inc.i.while.end.i_crit_edge ]
  %win_base.1121.i = phi i64 [ %and.i, %while.end.i.loopexit245 ], [ %win_base.0107.i, %for.inc.i.while.end.i_crit_edge ]
  %new_win_idx.1100120.i = phi i32 [ %new_win_idx.1104.i, %while.end.i.loopexit245 ], [ %new_win_idx.2.i, %for.inc.i.while.end.i_crit_edge ]
  %new_win.1102119.i = phi ptr [ %new_win.1103.i, %while.end.i.loopexit245 ], [ %new_win.2.i, %for.inc.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %add38.i.pre-phi, i64 %add.i)
  %cmp39.i = icmp ugt i64 %add38.i.pre-phi, %add.i
  br i1 %cmp39.i, label %while.end.i.for.inc_crit_edge, label %if.end42.i

while.end.i.for.inc_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end42.i:                                       ; preds = %while.end.i
  %tobool43.not.i = icmp eq ptr %new_win.1102119.i, null
  br i1 %tobool43.not.i, label %do.end.i, label %if.end42.i.if.end38_crit_edge

if.end42.i.if.end38_crit_edge:                    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

do.end.i:                                         ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end.i, %while.end.i.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %ret.1 = phi i32 [ -12, %for.cond.preheader.for.inc_crit_edge ], [ -12, %while.end.i.for.inc_crit_edge ], [ -5, %do.end.i ]
  %free.1 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 22, i32 1, i32 2
  %22 = ptrtoint ptr %free.1 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %free.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %conv25)
  %cmp26.not.1 = icmp ult i64 %23, %conv25
  br i1 %cmp26.not.1, label %for.inc.cleanup_crit_edge, label %if.then28.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then28.1:                                      ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 22, i32 1
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx.1, align 8
  %size1.i.1 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 22, i32 1, i32 1
  %26 = ptrtoint ptr %size1.i.1 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %size1.i.1, align 8
  %add.i.1 = add i64 %27, %25
  br label %for.cond.preheader.i.1

for.cond.preheader.i.1:                           ; preds = %for.end.i.1.for.cond.preheader.i.1_crit_edge, %if.then28.1
  %new_win_idx.0109.i.1 = phi i32 [ -1, %if.then28.1 ], [ %new_win_idx.1104.i.1, %for.end.i.1.for.cond.preheader.i.1_crit_edge ]
  %new_win.0108.i.1 = phi ptr [ null, %if.then28.1 ], [ %new_win.1103.i.1, %for.end.i.1.for.cond.preheader.i.1_crit_edge ]
  %win_base.0107.i.1 = phi i64 [ %25, %if.then28.1 ], [ %and.i.1, %for.end.i.1.for.cond.preheader.i.1_crit_edge ]
  %add22.i.1 = add i64 %win_base.0107.i.1, %conv25
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %for.inc.i.1.for.body.i.1_crit_edge, %for.cond.preheader.i.1
  %i.1105.i.1 = phi i32 [ 0, %for.cond.preheader.i.1 ], [ %inc.i.1, %for.inc.i.1.for.body.i.1_crit_edge ]
  %new_win_idx.1104.i.1 = phi i32 [ %new_win_idx.0109.i.1, %for.cond.preheader.i.1 ], [ %new_win_idx.2.i.1, %for.inc.i.1.for.body.i.1_crit_edge ]
  %new_win.1103.i.1 = phi ptr [ %new_win.0108.i.1, %for.cond.preheader.i.1 ], [ %new_win.2.i.1, %for.inc.i.1.for.body.i.1_crit_edge ]
  %arrayidx.i.1 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 %i.1105.i.1
  %active.i.1 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 %i.1105.i.1, i32 4
  %28 = ptrtoint ptr %active.i.1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %active.i.1, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.1 = icmp eq i8 %29, 0
  br i1 %tobool.not.i.1, label %if.then.i.1, label %if.end7.i.1

if.end7.i.1:                                      ; preds = %for.body.i.1
  %30 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx.i.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %25)
  %cmp11.not.i.1 = icmp uge i64 %31, %25
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %add.i.1)
  %cmp13.i.1 = icmp ult i64 %31, %add.i.1
  %or.cond.i.1 = select i1 %cmp11.not.i.1, i1 %cmp13.i.1, i1 false
  br i1 %or.cond.i.1, label %if.then14.i.1, label %if.end7.i.1.for.inc.i.1_crit_edge

if.end7.i.1.for.inc.i.1_crit_edge:                ; preds = %if.end7.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.1

if.then14.i.1:                                    ; preds = %if.end7.i.1
  %size16.i.1 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 %i.1105.i.1, i32 1
  %32 = ptrtoint ptr %size16.i.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size16.i.1, align 8
  %conv.i.1 = zext i32 %33 to i64
  %add17.i.1 = add i64 %31, %conv.i.1
  call void @__sanitizer_cov_trace_cmp8(i64 %win_base.0107.i.1, i64 %add17.i.1)
  %cmp18.i.1 = icmp ult i64 %win_base.0107.i.1, %add17.i.1
  call void @__sanitizer_cov_trace_cmp8(i64 %add22.i.1, i64 %31)
  %cmp24.i.1 = icmp ugt i64 %add22.i.1, %31
  %or.cond110.i.1 = and i1 %cmp24.i.1, %cmp18.i.1
  br i1 %or.cond110.i.1, label %for.end.i.1, label %if.then14.i.1.for.inc.i.1_crit_edge

if.then14.i.1.for.inc.i.1_crit_edge:              ; preds = %if.then14.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.1

for.end.i.1:                                      ; preds = %if.then14.i.1
  %add32.i.1 = add i64 %sub.i207, %add17.i.1
  %and.i.1 = and i64 %add32.i.1, %neg.i
  %cmp.i.1 = icmp ult i32 %i.1105.i.1, 8
  br i1 %cmp.i.1, label %for.end.i.1.for.cond.preheader.i.1_crit_edge, label %while.end.i.loopexit245.1

for.end.i.1.for.cond.preheader.i.1_crit_edge:     ; preds = %for.end.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i.1

while.end.i.loopexit245.1:                        ; preds = %for.end.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = add i64 %and.i.1, %conv25
  br label %while.end.i.1

if.then.i.1:                                      ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %cmp3.i.1 = icmp eq ptr %new_win.1103.i.1, null
  %spec.select.i.1 = select i1 %cmp3.i.1, ptr %arrayidx.i.1, ptr %new_win.1103.i.1
  %spec.select96.i.1 = select i1 %cmp3.i.1, i32 %i.1105.i.1, i32 %new_win_idx.1104.i.1
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then.i.1, %if.then14.i.1.for.inc.i.1_crit_edge, %if.end7.i.1.for.inc.i.1_crit_edge
  %new_win.2.i.1 = phi ptr [ %new_win.1103.i.1, %if.then14.i.1.for.inc.i.1_crit_edge ], [ %new_win.1103.i.1, %if.end7.i.1.for.inc.i.1_crit_edge ], [ %spec.select.i.1, %if.then.i.1 ]
  %new_win_idx.2.i.1 = phi i32 [ %new_win_idx.1104.i.1, %if.then14.i.1.for.inc.i.1_crit_edge ], [ %new_win_idx.1104.i.1, %if.end7.i.1.for.inc.i.1_crit_edge ], [ %spec.select96.i.1, %if.then.i.1 ]
  %inc.i.1 = add nuw nsw i32 %i.1105.i.1, 1
  %exitcond.not.i.1 = icmp eq i32 %inc.i.1, 8
  br i1 %exitcond.not.i.1, label %for.inc.i.1.while.end.i.1_crit_edge, label %for.inc.i.1.for.body.i.1_crit_edge

for.inc.i.1.for.body.i.1_crit_edge:               ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.1

for.inc.i.1.while.end.i.1_crit_edge:              ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.1

while.end.i.1:                                    ; preds = %for.inc.i.1.while.end.i.1_crit_edge, %while.end.i.loopexit245.1
  %add38.i.1.pre-phi = phi i64 [ %.pre, %while.end.i.loopexit245.1 ], [ %add22.i.1, %for.inc.i.1.while.end.i.1_crit_edge ]
  %win_base.1121.i.1 = phi i64 [ %and.i.1, %while.end.i.loopexit245.1 ], [ %win_base.0107.i.1, %for.inc.i.1.while.end.i.1_crit_edge ]
  %new_win_idx.1100120.i.1 = phi i32 [ %new_win_idx.1104.i.1, %while.end.i.loopexit245.1 ], [ %new_win_idx.2.i.1, %for.inc.i.1.while.end.i.1_crit_edge ]
  %new_win.1102119.i.1 = phi ptr [ %new_win.1103.i.1, %while.end.i.loopexit245.1 ], [ %new_win.2.i.1, %for.inc.i.1.while.end.i.1_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %add38.i.1.pre-phi, i64 %add.i.1)
  %cmp39.i.1 = icmp ugt i64 %add38.i.1.pre-phi, %add.i.1
  br i1 %cmp39.i.1, label %while.end.i.1.cleanup_crit_edge, label %if.end42.i.1

while.end.i.1.cleanup_crit_edge:                  ; preds = %while.end.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end42.i.1:                                     ; preds = %while.end.i.1
  %tobool43.not.i.1 = icmp eq ptr %new_win.1102119.i.1, null
  br i1 %tobool43.not.i.1, label %do.end.i.1, label %if.end42.i.1.if.end38_crit_edge

if.end42.i.1.if.end38_crit_edge:                  ; preds = %if.end42.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

do.end.i.1:                                       ; preds = %if.end42.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  %dev.i.1 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.1, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109) #13
  br label %cleanup

if.end38:                                         ; preds = %if.end42.i.1.if.end38_crit_edge, %if.end42.i.if.end38_crit_edge
  %i.0239.lcssa = phi i32 [ 0, %if.end42.i.if.end38_crit_edge ], [ 1, %if.end42.i.1.if.end38_crit_edge ]
  %win_base.1121.i.lcssa = phi i64 [ %win_base.1121.i, %if.end42.i.if.end38_crit_edge ], [ %win_base.1121.i.1, %if.end42.i.1.if.end38_crit_edge ]
  %new_win_idx.1100120.i.lcssa = phi i32 [ %new_win_idx.1100120.i, %if.end42.i.if.end38_crit_edge ], [ %new_win_idx.1100120.i.1, %if.end42.i.1.if.end38_crit_edge ]
  %new_win.1102119.i.lcssa = phi ptr [ %new_win.1102119.i, %if.end42.i.if.end38_crit_edge ], [ %new_win.1102119.i.1, %if.end42.i.1.if.end38_crit_edge ]
  %arrayidx.lcssa = phi ptr [ %arrayidx, %if.end42.i.if.end38_crit_edge ], [ %arrayidx.1, %if.end42.i.1.if.end38_crit_edge ]
  %active46.i = getelementptr inbounds %struct.tsi721_ob_win, ptr %new_win.1102119.i.lcssa, i32 0, i32 4
  %36 = ptrtoint ptr %active46.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %active46.i, align 8
  %37 = ptrtoint ptr %new_win.1102119.i.lcssa to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %win_base.1121.i.lcssa, ptr %new_win.1102119.i.lcssa, align 8
  %size48.i = getelementptr inbounds %struct.tsi721_ob_win, ptr %new_win.1102119.i.lcssa, i32 0, i32 1
  %38 = ptrtoint ptr %size48.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %size, ptr %size48.i, align 8
  %pbar49.i = getelementptr inbounds %struct.tsi721_ob_win, ptr %new_win.1102119.i.lcssa, i32 0, i32 5
  %39 = ptrtoint ptr %pbar49.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx.lcssa, ptr %pbar49.i, align 4
  %40 = ptrtoint ptr %obwin_cnt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %obwin_cnt, align 8
  %dec.i = add i32 %41, -1
  store i32 %dec.i, ptr %obwin_cnt, align 8
  %free.i = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 22, i32 %i.0239.lcssa, i32 2
  %42 = ptrtoint ptr %free.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %free.i, align 8
  %sub51.i = sub i64 %43, %conv25
  store i64 %sub51.i, ptr %free.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %new_win_idx.1100120.i.lcssa)
  %cmp39 = icmp eq i32 %new_win_idx.1100120.i.lcssa, -1
  br i1 %cmp39, label %do.end56, label %if.end38.if.end62_crit_edge, !prof !326

if.end38.if.end62_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

do.end56:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 953, i32 noundef 9, ptr noundef null) #9
  br label %if.end62

if.end62:                                         ; preds = %do.end56, %if.end38.if.end62_crit_edge
  %arrayidx71 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 %new_win_idx.1100120.i.lcssa
  %destid72 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 %new_win_idx.1100120.i.lcssa, i32 2
  %44 = ptrtoint ptr %destid72 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %destid, ptr %destid72, align 4
  %rstart73 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 %new_win_idx.1100120.i.lcssa, i32 3
  %45 = ptrtoint ptr %rstart73 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %rstart, ptr %rstart73, align 8
  %46 = load i32, ptr @tsi_dbg_level, align 4
  %and75 = and i32 %46, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end62.do.end100_crit_edge, label %do.body78

if.end62.do.end100_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end100

do.body78:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_map_outb_win.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_map_outb_win, %do.end100)) #9
          to label %if.then92 [label %do.end100], !srcloc !325

if.then92:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 8
  %dev94 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %49 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx71, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_map_outb_win.__UNIQUE_ID_ddebug251, ptr noundef %dev94, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.105, i32 noundef %new_win_idx.1100120.i.lcssa, i64 noundef %50) #9
  br label %do.end100

do.end100:                                        ; preds = %if.then92, %do.body78, %if.end62.do.end100_crit_edge
  %regs = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 3
  %conv116 = zext i16 %destid to i32
  %51 = tail call i32 @llvm.bswap.i32(i32 %conv116) #9
  %shl = shl i32 %new_win_idx.1100120.i.lcssa, 3
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %while.end.while.cond.preheader_crit_edge, %do.end100
  %i.1244 = phi i32 [ 0, %do.end100 ], [ %inc125, %while.end.while.cond.preheader_crit_edge ]
  %rio_addr.0243 = phi i64 [ %rstart, %do.end100 ], [ %add, %while.end.while.cond.preheader_crit_edge ]
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %add.ptr241 = getelementptr i8, ptr %53, i32 267008
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr241) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %55 = and i32 %54, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool107.not242 = icmp eq i32 %55, 0
  br i1 %tobool107.not242, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748) #9
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %58, i32 267008
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %60 = and i32 %59, 256
  %tobool107.not = icmp eq i32 %60, 0
  br i1 %tobool107.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %61 = trunc i64 %rio_addr.0243 to i32
  %conv109 = and i32 %61, -4096
  %or110 = or i32 %conv109, 257
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs, align 4
  %add.ptr112 = getelementptr i8, ptr %63, i32 267012
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %64 = tail call i32 @llvm.bswap.i32(i32 %or110) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr112, i32 %64) #9, !srcloc !329
  %shr = lshr i64 %rio_addr.0243, 32
  %conv113 = trunc i64 %shr to i32
  %65 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs, align 4
  %add.ptr115 = getelementptr i8, ptr %66, i32 267016
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %67 = tail call i32 @llvm.bswap.i32(i32 %conv113) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %67) #9, !srcloc !329
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 4
  %add.ptr118 = getelementptr i8, ptr %69, i32 267020
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %51) #9, !srcloc !329
  %or119 = or i32 %shl, %i.1244
  %or120 = or i32 %or119, 65536
  %70 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs, align 4
  %add.ptr122 = getelementptr i8, ptr %71, i32 267008
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %72 = tail call i32 @llvm.bswap.i32(i32 %or120) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122, i32 %72) #9, !srcloc !329
  %add = add i64 %rio_addr.0243, %conv31.i
  %inc125 = add nuw nsw i32 %i.1244, 1
  %exitcond.not = icmp eq i32 %inc125, 8
  br i1 %exitcond.not, label %for.end126, label %while.end.while.cond.preheader_crit_edge

while.end.while.cond.preheader_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

for.end126:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %73 = tail call i32 @llvm.ctlz.i32(i32 %size, i1 true) #9, !range !336
  %sub.i = shl nuw nsw i32 %73, 8
  %sub128 = xor i32 %sub.i, 7936
  %shl129 = add nsw i32 %sub128, -3840
  %74 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs, align 4
  %mul = shl i32 %new_win_idx.1100120.i.lcssa, 5
  %add131 = add i32 %mul, 262152
  %add.ptr132 = getelementptr i8, ptr %75, i32 %add131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %76 = tail call i32 @llvm.bswap.i32(i32 %shl129) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132, i32 %76) #9, !srcloc !329
  %77 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %arrayidx71, align 8
  %shr134 = lshr i64 %78, 32
  %conv135 = trunc i64 %shr134 to i32
  %79 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs, align 4
  %add138 = add i32 %mul, 262148
  %add.ptr139 = getelementptr i8, ptr %80, i32 %add138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %81 = tail call i32 @llvm.bswap.i32(i32 %conv135) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr139, i32 %81) #9, !srcloc !329
  %82 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %arrayidx71, align 8
  %84 = trunc i64 %83 to i32
  %conv142 = and i32 %84, -32768
  %or143 = or i32 %conv142, 1
  %85 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs, align 4
  %add146 = add i32 %mul, 262144
  %add.ptr147 = getelementptr i8, ptr %86, i32 %add146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %87 = tail call i32 @llvm.bswap.i32(i32 %or143) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147, i32 %87) #9, !srcloc !329
  %88 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %arrayidx71, align 8
  %conv149 = trunc i64 %89 to i32
  %90 = ptrtoint ptr %laddr to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv149, ptr %laddr, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end126, %do.end.i.1, %while.end.i.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %lor.lhs.false13.cleanup_crit_edge, %is_power_of_2.exit.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end126 ], [ -22, %lor.lhs.false13.cleanup_crit_edge ], [ -22, %is_power_of_2.exit.cleanup_crit_edge ], [ -16, %if.end18.cleanup_crit_edge ], [ -22, %do.end10.cleanup_crit_edge ], [ %ret.1, %for.inc.cleanup_crit_edge ], [ -12, %while.end.i.1.cleanup_crit_edge ], [ -5, %do.end.i.1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsi721_unmap_outb_win(ptr nocapture noundef readonly %mport, i16 noundef zeroext %destid, i64 noundef %rstart) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 19
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = load i32, ptr @tsi_dbg_level, align 4
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body2

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_unmap_outb_win.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_unmap_outb_win, %do.end10)) #9
          to label %if.then7 [label %do.end10], !srcloc !325

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %conv = zext i16 %destid to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_unmap_outb_win.__UNIQUE_ID_ddebug252, ptr noundef %dev, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.110, i32 noundef %conv, i64 noundef %rstart) #9
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2, %entry.do.end10_crit_edge
  %active = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 0, i32 4
  %5 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %active, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool13.not = icmp eq i8 %6, 0
  br i1 %tobool13.not, label %do.end10.for.inc_crit_edge, label %land.lhs.true

do.end10.for.inc_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %do.end10
  %destid15 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 0, i32 2
  %7 = ptrtoint ptr %destid15 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %destid15, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %destid)
  %cmp18 = icmp eq i16 %8, %destid
  br i1 %cmp18, label %land.lhs.true20, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true20:                                  ; preds = %land.lhs.true
  %rstart21 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 0, i32 3
  %9 = ptrtoint ptr %rstart21 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %rstart21, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %rstart)
  %cmp22 = icmp eq i64 %10, %rstart
  br i1 %cmp22, label %land.lhs.true20.do.body25_crit_edge, label %land.lhs.true20.for.inc_crit_edge

land.lhs.true20.for.inc_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true20.do.body25_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

do.body25:                                        ; preds = %land.lhs.true20.7.do.body25_crit_edge, %land.lhs.true20.6.do.body25_crit_edge, %land.lhs.true20.5.do.body25_crit_edge, %land.lhs.true20.4.do.body25_crit_edge, %land.lhs.true20.3.do.body25_crit_edge, %land.lhs.true20.2.do.body25_crit_edge, %land.lhs.true20.1.do.body25_crit_edge, %land.lhs.true20.do.body25_crit_edge
  %i.079.lcssa = phi i32 [ 0, %land.lhs.true20.do.body25_crit_edge ], [ 1, %land.lhs.true20.1.do.body25_crit_edge ], [ 2, %land.lhs.true20.2.do.body25_crit_edge ], [ 3, %land.lhs.true20.3.do.body25_crit_edge ], [ 4, %land.lhs.true20.4.do.body25_crit_edge ], [ 5, %land.lhs.true20.5.do.body25_crit_edge ], [ 6, %land.lhs.true20.6.do.body25_crit_edge ], [ 7, %land.lhs.true20.7.do.body25_crit_edge ]
  %active.lcssa = phi ptr [ %active, %land.lhs.true20.do.body25_crit_edge ], [ %active.1, %land.lhs.true20.1.do.body25_crit_edge ], [ %active.2, %land.lhs.true20.2.do.body25_crit_edge ], [ %active.3, %land.lhs.true20.3.do.body25_crit_edge ], [ %active.4, %land.lhs.true20.4.do.body25_crit_edge ], [ %active.5, %land.lhs.true20.5.do.body25_crit_edge ], [ %active.6, %land.lhs.true20.6.do.body25_crit_edge ], [ %active.7, %land.lhs.true20.7.do.body25_crit_edge ]
  %arrayidx.le = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 %i.079.lcssa
  %11 = load i32, ptr @tsi_dbg_level, align 4
  %and26 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body25.do.end51_crit_edge, label %do.body29

do.body25.do.end51_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51

do.body29:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_unmap_outb_win.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_unmap_outb_win, %do.end51)) #9
          to label %if.then43 [label %do.end51], !srcloc !325

if.then43:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx.le, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_unmap_outb_win.__UNIQUE_ID_ddebug253, ptr noundef %dev45, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.110, i32 noundef %i.079.lcssa, i64 noundef %15) #9
  br label %do.end51

do.end51:                                         ; preds = %if.then43, %do.body29, %do.body25.do.end51_crit_edge
  %16 = ptrtoint ptr %active.lcssa to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %active.lcssa, align 8
  %regs = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %mul = shl nuw nsw i32 %i.079.lcssa, 5
  %add = or i32 %mul, 262144
  %add.ptr = getelementptr i8, ptr %18, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !329
  %size = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 %i.079.lcssa, i32 1
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 8
  %conv53 = zext i32 %20 to i64
  %pbar = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 %i.079.lcssa, i32 5
  %21 = ptrtoint ptr %pbar to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pbar, align 4
  %free = getelementptr inbounds %struct.tsi721_obw_bar, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %free to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %free, align 8
  %add54 = add i64 %24, %conv53
  store i64 %add54, ptr %free, align 8
  %obwin_cnt = getelementptr inbounds %struct.tsi721_device, ptr %1, i32 0, i32 24
  %25 = ptrtoint ptr %obwin_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %obwin_cnt, align 8
  %inc = add i32 %26, 1
  store i32 %inc, ptr %obwin_cnt, align 8
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true20.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %do.end10.for.inc_crit_edge
  %active.1 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 1, i32 4
  %27 = ptrtoint ptr %active.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %active.1, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool13.not.1 = icmp eq i8 %28, 0
  br i1 %tobool13.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %destid15.1 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 1, i32 2
  %29 = ptrtoint ptr %destid15.1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %destid15.1, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %destid)
  %cmp18.1 = icmp eq i16 %30, %destid
  br i1 %cmp18.1, label %land.lhs.true20.1, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

land.lhs.true20.1:                                ; preds = %land.lhs.true.1
  %rstart21.1 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 1, i32 3
  %31 = ptrtoint ptr %rstart21.1 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %rstart21.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %rstart)
  %cmp22.1 = icmp eq i64 %32, %rstart
  br i1 %cmp22.1, label %land.lhs.true20.1.do.body25_crit_edge, label %land.lhs.true20.1.for.inc.1_crit_edge

land.lhs.true20.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true20.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

land.lhs.true20.1.do.body25_crit_edge:            ; preds = %land.lhs.true20.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

for.inc.1:                                        ; preds = %land.lhs.true20.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %active.2 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 2, i32 4
  %33 = ptrtoint ptr %active.2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %active.2, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool13.not.2 = icmp eq i8 %34, 0
  br i1 %tobool13.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %destid15.2 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 2, i32 2
  %35 = ptrtoint ptr %destid15.2 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %destid15.2, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %destid)
  %cmp18.2 = icmp eq i16 %36, %destid
  br i1 %cmp18.2, label %land.lhs.true20.2, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

land.lhs.true20.2:                                ; preds = %land.lhs.true.2
  %rstart21.2 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 2, i32 3
  %37 = ptrtoint ptr %rstart21.2 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %rstart21.2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %rstart)
  %cmp22.2 = icmp eq i64 %38, %rstart
  br i1 %cmp22.2, label %land.lhs.true20.2.do.body25_crit_edge, label %land.lhs.true20.2.for.inc.2_crit_edge

land.lhs.true20.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true20.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

land.lhs.true20.2.do.body25_crit_edge:            ; preds = %land.lhs.true20.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

for.inc.2:                                        ; preds = %land.lhs.true20.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %active.3 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 3, i32 4
  %39 = ptrtoint ptr %active.3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %active.3, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool13.not.3 = icmp eq i8 %40, 0
  br i1 %tobool13.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %destid15.3 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 3, i32 2
  %41 = ptrtoint ptr %destid15.3 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %destid15.3, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %42, i16 %destid)
  %cmp18.3 = icmp eq i16 %42, %destid
  br i1 %cmp18.3, label %land.lhs.true20.3, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

land.lhs.true20.3:                                ; preds = %land.lhs.true.3
  %rstart21.3 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 3, i32 3
  %43 = ptrtoint ptr %rstart21.3 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %rstart21.3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %rstart)
  %cmp22.3 = icmp eq i64 %44, %rstart
  br i1 %cmp22.3, label %land.lhs.true20.3.do.body25_crit_edge, label %land.lhs.true20.3.for.inc.3_crit_edge

land.lhs.true20.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true20.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

land.lhs.true20.3.do.body25_crit_edge:            ; preds = %land.lhs.true20.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

for.inc.3:                                        ; preds = %land.lhs.true20.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %active.4 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 4, i32 4
  %45 = ptrtoint ptr %active.4 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %active.4, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool13.not.4 = icmp eq i8 %46, 0
  br i1 %tobool13.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %destid15.4 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 4, i32 2
  %47 = ptrtoint ptr %destid15.4 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %destid15.4, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %destid)
  %cmp18.4 = icmp eq i16 %48, %destid
  br i1 %cmp18.4, label %land.lhs.true20.4, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

land.lhs.true20.4:                                ; preds = %land.lhs.true.4
  %rstart21.4 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 4, i32 3
  %49 = ptrtoint ptr %rstart21.4 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %rstart21.4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %rstart)
  %cmp22.4 = icmp eq i64 %50, %rstart
  br i1 %cmp22.4, label %land.lhs.true20.4.do.body25_crit_edge, label %land.lhs.true20.4.for.inc.4_crit_edge

land.lhs.true20.4.for.inc.4_crit_edge:            ; preds = %land.lhs.true20.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

land.lhs.true20.4.do.body25_crit_edge:            ; preds = %land.lhs.true20.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

for.inc.4:                                        ; preds = %land.lhs.true20.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %active.5 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 5, i32 4
  %51 = ptrtoint ptr %active.5 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %active.5, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool13.not.5 = icmp eq i8 %52, 0
  br i1 %tobool13.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %destid15.5 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 5, i32 2
  %53 = ptrtoint ptr %destid15.5 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %destid15.5, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %54, i16 %destid)
  %cmp18.5 = icmp eq i16 %54, %destid
  br i1 %cmp18.5, label %land.lhs.true20.5, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

land.lhs.true20.5:                                ; preds = %land.lhs.true.5
  %rstart21.5 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 5, i32 3
  %55 = ptrtoint ptr %rstart21.5 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %rstart21.5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %56, i64 %rstart)
  %cmp22.5 = icmp eq i64 %56, %rstart
  br i1 %cmp22.5, label %land.lhs.true20.5.do.body25_crit_edge, label %land.lhs.true20.5.for.inc.5_crit_edge

land.lhs.true20.5.for.inc.5_crit_edge:            ; preds = %land.lhs.true20.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

land.lhs.true20.5.do.body25_crit_edge:            ; preds = %land.lhs.true20.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

for.inc.5:                                        ; preds = %land.lhs.true20.5.for.inc.5_crit_edge, %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %active.6 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 6, i32 4
  %57 = ptrtoint ptr %active.6 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %active.6, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool13.not.6 = icmp eq i8 %58, 0
  br i1 %tobool13.not.6, label %for.inc.5.for.inc.6_crit_edge, label %land.lhs.true.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %destid15.6 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 6, i32 2
  %59 = ptrtoint ptr %destid15.6 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %destid15.6, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %60, i16 %destid)
  %cmp18.6 = icmp eq i16 %60, %destid
  br i1 %cmp18.6, label %land.lhs.true20.6, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

land.lhs.true20.6:                                ; preds = %land.lhs.true.6
  %rstart21.6 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 6, i32 3
  %61 = ptrtoint ptr %rstart21.6 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %rstart21.6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %62, i64 %rstart)
  %cmp22.6 = icmp eq i64 %62, %rstart
  br i1 %cmp22.6, label %land.lhs.true20.6.do.body25_crit_edge, label %land.lhs.true20.6.for.inc.6_crit_edge

land.lhs.true20.6.for.inc.6_crit_edge:            ; preds = %land.lhs.true20.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

land.lhs.true20.6.do.body25_crit_edge:            ; preds = %land.lhs.true20.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

for.inc.6:                                        ; preds = %land.lhs.true20.6.for.inc.6_crit_edge, %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %active.7 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 7, i32 4
  %63 = ptrtoint ptr %active.7 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %active.7, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool13.not.7 = icmp eq i8 %64, 0
  br i1 %tobool13.not.7, label %for.inc.6.for.end_crit_edge, label %land.lhs.true.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true.7:                                  ; preds = %for.inc.6
  %destid15.7 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 7, i32 2
  %65 = ptrtoint ptr %destid15.7 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %destid15.7, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %66, i16 %destid)
  %cmp18.7 = icmp eq i16 %66, %destid
  br i1 %cmp18.7, label %land.lhs.true20.7, label %land.lhs.true.7.for.end_crit_edge

land.lhs.true.7.for.end_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true20.7:                                ; preds = %land.lhs.true.7
  %rstart21.7 = getelementptr %struct.tsi721_device, ptr %1, i32 0, i32 23, i32 7, i32 3
  %67 = ptrtoint ptr %rstart21.7 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %rstart21.7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %68, i64 %rstart)
  %cmp22.7 = icmp eq i64 %68, %rstart
  br i1 %cmp22.7, label %land.lhs.true20.7.do.body25_crit_edge, label %land.lhs.true20.7.for.end_crit_edge

land.lhs.true20.7.for.end_crit_edge:              ; preds = %land.lhs.true20.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true20.7.do.body25_crit_edge:            ; preds = %land.lhs.true20.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

for.end:                                          ; preds = %land.lhs.true20.7.for.end_crit_edge, %land.lhs.true.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %do.end51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tsi721_maint_dma(ptr nocapture noundef readonly %priv, i32 noundef %sys_size, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef %offset, i32 noundef %len, ptr nocapture noundef %data, i32 noundef %do_wr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %mdma = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 14
  %2 = ptrtoint ptr %mdma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mdma, align 8
  %mul = shl i32 %3, 12
  %add = add i32 %mul, 331776
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_wr)
  %tobool.not = icmp eq i32 %do_wr, 0
  %cond = select i1 %tobool.not, i32 4, i32 5
  %sub = sub i32 16777216, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %offset)
  %cmp = icmp uge i32 %sub, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp2.not = icmp eq i32 %len, 4
  %or.cond = and i1 %cmp2.not, %cmp
  br i1 %or.cond, label %do.body3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body3:                                         ; preds = %entry
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tsi721_maint_lock) #9
  %bd_base = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 14, i32 2
  %4 = ptrtoint ptr %bd_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_base, align 8
  %add.ptr9 = getelementptr i8, ptr %add.ptr, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #9, !srcloc !330
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %shl = shl nuw nsw i32 %cond, 19
  %conv11 = zext i16 %destid to i32
  %or = or i32 %shl, %conv11
  %or12 = or i32 %or, 1073741824
  %8 = tail call i32 @llvm.bswap.i32(i32 %or12)
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %5, align 32
  %shl13 = shl i32 %sys_size, 26
  %or14 = or i32 %shl13, 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %or14)
  %bcount = getelementptr inbounds %struct.tsi721_dma_desc, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %bcount to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %bcount, align 4
  %conv16 = zext i8 %hopcount to i32
  %shl17 = shl nuw i32 %conv16, 24
  %or18 = or i32 %shl17, %offset
  %12 = tail call i32 @llvm.bswap.i32(i32 %or18)
  %13 = getelementptr inbounds %struct.tsi721_dma_desc, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %13, align 8
  %15 = getelementptr inbounds %struct.tsi721_dma_desc, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %15, align 4
  br i1 %tobool.not, label %do.body3.do.body29_crit_edge, label %if.then22

do.body3.do.body29_crit_edge:                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29

if.then22:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data, align 4
  br label %do.body29

do.body29:                                        ; preds = %if.then22, %do.body3.do.body29_crit_edge
  %.sink = phi i32 [ %18, %if.then22 ], [ -1, %do.body3.do.body29_crit_edge ]
  %19 = getelementptr inbounds %struct.tsi721_dma_desc, ptr %5, i32 0, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %19, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !341
  tail call void @arm_heavy_mb() #9
  %add32 = add i32 %7, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %add32) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #9, !srcloc !329
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %add.ptr36 = getelementptr i8, ptr %add.ptr, i32 20
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %do.body29
  %i.0 = phi i32 [ 0, %do.body29 ], [ %inc, %while.body.while.cond_crit_edge ]
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #9, !srcloc !330
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %and = and i32 %24, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #9
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond = icmp eq i32 %inc, 5000000
  br i1 %exitcond, label %do.body42, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

do.body42:                                        ; preds = %while.body
  %26 = load i32, ptr @tsi_dbg_level, align 4
  %and43 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body42.do.end61_crit_edge, label %do.body46

do.body42.do.end61_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end61

do.body46:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_maint_dma.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_maint_dma, %do.end61)) #9
          to label %if.then53 [label %do.end61], !srcloc !325

if.then53:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %29 = ptrtoint ptr %mdma to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mdma, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_maint_dma.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, i32 noundef %30, i32 noundef %24) #9
  br label %do.end61

do.end61:                                         ; preds = %if.then53, %do.body46, %do.body42.do.end61_crit_edge
  br i1 %tobool.not, label %if.then63, label %do.end61.err_out_crit_edge

do.end61.err_out_crit_edge:                       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.then63:                                        ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %data, align 4
  br label %err_out

while.end:                                        ; preds = %while.cond
  %and66 = and i32 %24, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end133, label %do.body69

do.body69:                                        ; preds = %while.end
  %32 = load i32, ptr @tsi_dbg_level, align 4
  %and70 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %do.body69.do.body96_crit_edge, label %do.body73

do.body69.do.body96_crit_edge:                    ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body96

do.body73:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_maint_dma.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_maint_dma, %do.body96)) #9
          to label %if.then87 [label %do.body96], !srcloc !325

if.then87:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 8
  %dev89 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_maint_dma.__UNIQUE_ID_ddebug245, ptr noundef %dev89, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, i32 noundef %24) #9
  br label %do.body96

do.body96:                                        ; preds = %if.then87, %do.body73, %do.body69.do.body96_crit_edge
  %35 = load i32, ptr @tsi_dbg_level, align 4
  %and97 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %do.body96.do.end126_crit_edge, label %do.body100

do.body96.do.end126_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end126

do.body100:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_maint_dma.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_maint_dma, %do.end126)) #9
          to label %if.then114 [label %do.end126], !srcloc !325

if.then114:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 8
  %dev116 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_maint_dma.__UNIQUE_ID_ddebug246, ptr noundef %dev116, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.58, i32 noundef %cond, i32 noundef %conv11, i32 noundef %conv16, i32 noundef %offset) #9
  br label %do.end126

do.end126:                                        ; preds = %if.then114, %do.body100, %do.body96.do.end126_crit_edge
  %add.ptr127 = getelementptr i8, ptr %add.ptr, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127, i32 520093696) #9, !srcloc !329
  %add.ptr128 = getelementptr i8, ptr %add.ptr, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 16777216) #9, !srcloc !329
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 2147480) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !329
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #9
  br i1 %tobool.not, label %if.then131, label %do.end126.err_out_crit_edge

do.end126.err_out_crit_edge:                      ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.then131:                                       ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %data, align 4
  br label %err_out

if.end133:                                        ; preds = %while.end
  br i1 %tobool.not, label %if.then135, label %if.end133.if.end138_crit_edge

if.end133.if.end138_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

if.then135:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %19, align 16
  %43 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %data, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.then135, %if.end133.if.end138_crit_edge
  %add.ptr139 = getelementptr i8, ptr %add.ptr, i32 60
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr139) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %add.ptr141 = getelementptr i8, ptr %add.ptr, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 %44) #9, !srcloc !329
  br label %err_out

err_out:                                          ; preds = %if.end138, %if.then131, %do.end126.err_out_crit_edge, %if.then63, %do.end61.err_out_crit_edge
  %err.0 = phi i32 [ 0, %if.end138 ], [ -5, %if.then63 ], [ -5, %do.end61.err_out_crit_edge ], [ -5, %if.then131 ], [ -5, %do.end126.err_out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tsi721_maint_lock, i32 noundef %call5) #9
  br label %cleanup

cleanup:                                          ; preds = %err_out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_omsg_msix(i32 noundef %irq, ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.tsi721_device, ptr %ptr, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %1 to i32
  %sub = sub i32 %irq, %conv
  %rem = srem i32 %sub, 4
  tail call fastcc void @tsi721_omsg_handler(ptr noundef %ptr, i32 noundef %rem)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tsi721_omsg_handler(ptr noundef %priv, i32 noundef %ch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mport1 = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1
  %arrayidx = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 19, i32 %ch
  %lock = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 19, i32 %ch, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %regs = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %mul = shl i32 %ch, 12
  %add = add i32 %mul, 397324
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !330
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, i32 noundef %ch) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and2 = and i32 %3, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.no_sts_update_crit_edge, label %if.then4

if.end.no_sts_update_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_sts_update

if.then4:                                         ; preds = %if.end
  %sts_rdptr = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 19, i32 %ch, i32 8
  %6 = ptrtoint ptr %sts_rdptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sts_rdptr, align 4
  %sts_base = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 19, i32 %ch, i32 5
  %8 = ptrtoint ptr %sts_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sts_base, align 4
  %j.0347 = shl i32 %7, 3
  %arrayidx10348 = getelementptr i64, ptr %9, i32 %j.0347
  %10 = ptrtoint ptr %arrayidx10348 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx10348, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool11.not349 = icmp eq i64 %11, 0
  br i1 %tobool11.not349, label %if.then4.no_sts_update_crit_edge, label %for.cond.preheader.lr.ph

if.then4.no_sts_update_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_sts_update

for.cond.preheader.lr.ph:                         ; preds = %if.then4
  %sts_size = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 19, i32 %ch, i32 7
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.end.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %j.0353 = phi i32 [ %j.0347, %for.cond.preheader.lr.ph ], [ %j.0, %for.end.for.cond.preheader_crit_edge ]
  %srd_ptr.0352 = phi i32 [ %7, %for.cond.preheader.lr.ph ], [ %rem, %for.end.for.cond.preheader_crit_edge ]
  %prev_ptr.0351 = phi i64 [ 0, %for.cond.preheader.lr.ph ], [ %prev_ptr.1.lcssa, %for.end.for.cond.preheader_crit_edge ]
  %last_ptr.0350 = phi i64 [ 0, %for.cond.preheader.lr.ph ], [ %last_ptr.1.lcssa, %for.end.for.cond.preheader_crit_edge ]
  %arrayidx12 = getelementptr i64, ptr %9, i32 %j.0353
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx12, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool13.not = icmp eq i64 %13, 0
  br i1 %tobool13.not, label %for.cond.preheader.for.end_crit_edge, label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.preheader
  %14 = tail call i64 @llvm.bswap.i64(i64 %13)
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %arrayidx12, align 8
  %inc16 = or i32 %j.0353, 1
  %arrayidx12.1 = getelementptr i64, ptr %9, i32 %inc16
  %16 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx12.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool13.not.1 = icmp eq i64 %17, 0
  br i1 %tobool13.not.1, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %18 = tail call i64 @llvm.bswap.i64(i64 %17)
  %19 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %arrayidx12.1, align 8
  %inc16.1 = or i32 %j.0353, 2
  %arrayidx12.2 = getelementptr i64, ptr %9, i32 %inc16.1
  %20 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx12.2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool13.not.2 = icmp eq i64 %21, 0
  br i1 %tobool13.not.2, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %22 = tail call i64 @llvm.bswap.i64(i64 %21)
  %23 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %arrayidx12.2, align 8
  %inc16.2 = or i32 %j.0353, 3
  %arrayidx12.3 = getelementptr i64, ptr %9, i32 %inc16.2
  %24 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx12.3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool13.not.3 = icmp eq i64 %25, 0
  br i1 %tobool13.not.3, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  %27 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %arrayidx12.3, align 8
  %inc16.3 = or i32 %j.0353, 4
  %arrayidx12.4 = getelementptr i64, ptr %9, i32 %inc16.3
  %28 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx12.4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool13.not.4 = icmp eq i64 %29, 0
  br i1 %tobool13.not.4, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  %30 = tail call i64 @llvm.bswap.i64(i64 %29)
  %31 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %arrayidx12.4, align 8
  %inc16.4 = or i32 %j.0353, 5
  %arrayidx12.5 = getelementptr i64, ptr %9, i32 %inc16.4
  %32 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx12.5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %tobool13.not.5 = icmp eq i64 %33, 0
  br i1 %tobool13.not.5, label %for.body.4.for.end_crit_edge, label %for.body.5

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  %34 = tail call i64 @llvm.bswap.i64(i64 %33)
  %35 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 0, ptr %arrayidx12.5, align 8
  %inc16.5 = or i32 %j.0353, 6
  %arrayidx12.6 = getelementptr i64, ptr %9, i32 %inc16.5
  %36 = ptrtoint ptr %arrayidx12.6 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx12.6, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %tobool13.not.6 = icmp eq i64 %37, 0
  br i1 %tobool13.not.6, label %for.body.5.for.end_crit_edge, label %for.body.6

for.body.5.for.end_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.6:                                       ; preds = %for.body.5
  %38 = tail call i64 @llvm.bswap.i64(i64 %37)
  %39 = ptrtoint ptr %arrayidx12.6 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 0, ptr %arrayidx12.6, align 8
  %inc16.6 = or i32 %j.0353, 7
  %arrayidx12.7 = getelementptr i64, ptr %9, i32 %inc16.6
  %40 = ptrtoint ptr %arrayidx12.7 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx12.7, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %tobool13.not.7 = icmp eq i64 %41, 0
  br i1 %tobool13.not.7, label %for.body.6.for.end_crit_edge, label %for.body.7

for.body.6.for.end_crit_edge:                     ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.7:                                       ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #11
  %42 = tail call i64 @llvm.bswap.i64(i64 %41)
  %43 = ptrtoint ptr %arrayidx12.7 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 0, ptr %arrayidx12.7, align 8
  br label %for.end

for.end:                                          ; preds = %for.body.7, %for.body.6.for.end_crit_edge, %for.body.5.for.end_crit_edge, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %last_ptr.1.lcssa = phi i64 [ %last_ptr.0350, %for.cond.preheader.for.end_crit_edge ], [ %14, %for.body.for.end_crit_edge ], [ %18, %for.body.1.for.end_crit_edge ], [ %22, %for.body.2.for.end_crit_edge ], [ %26, %for.body.3.for.end_crit_edge ], [ %30, %for.body.4.for.end_crit_edge ], [ %34, %for.body.5.for.end_crit_edge ], [ %38, %for.body.6.for.end_crit_edge ], [ %42, %for.body.7 ]
  %prev_ptr.1.lcssa = phi i64 [ %prev_ptr.0351, %for.cond.preheader.for.end_crit_edge ], [ %last_ptr.0350, %for.body.for.end_crit_edge ], [ %14, %for.body.1.for.end_crit_edge ], [ %18, %for.body.2.for.end_crit_edge ], [ %22, %for.body.3.for.end_crit_edge ], [ %26, %for.body.4.for.end_crit_edge ], [ %30, %for.body.5.for.end_crit_edge ], [ %34, %for.body.6.for.end_crit_edge ], [ %38, %for.body.7 ]
  %inc17 = add i32 %srd_ptr.0352, 1
  %44 = ptrtoint ptr %sts_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sts_size, align 4
  %rem = urem i32 %inc17, %45
  %j.0 = shl i32 %rem, 3
  %arrayidx10 = getelementptr i64, ptr %9, i32 %j.0
  %46 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx10, align 8
  %tobool11.not = icmp eq i64 %47, 0
  br i1 %tobool11.not, label %while.end, label %for.end.for.cond.preheader_crit_edge

for.end.for.cond.preheader_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader

while.end:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %last_ptr.1.lcssa)
  %cmp21 = icmp eq i64 %last_ptr.1.lcssa, 0
  br i1 %cmp21, label %while.end.no_sts_update_crit_edge, label %if.end23

while.end.no_sts_update_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_sts_update

if.end23:                                         ; preds = %while.end
  %48 = ptrtoint ptr %sts_rdptr to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %rem, ptr %sts_rdptr, align 4
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 4
  %add29 = add i32 %mul, 397388
  %add.ptr30 = getelementptr i8, ptr %50, i32 %add29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %51 = tail call i32 @llvm.bswap.i32(i32 %rem) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %51) #9, !srcloc !329
  %mcback = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 9, i32 %ch, i32 1
  %52 = ptrtoint ptr %mcback to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mcback, align 4
  %tobool32.not = icmp eq ptr %53, null
  br i1 %tobool32.not, label %if.end23.no_sts_update_crit_edge, label %if.end34

if.end23.no_sts_update_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_sts_update

if.end34:                                         ; preds = %if.end23
  %omd_phys = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 19, i32 %ch, i32 2
  %54 = ptrtoint ptr %omd_phys to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %omd_phys, align 4
  %conv = zext i32 %55 to i64
  %sub = sub i64 %last_ptr.1.lcssa, %conv
  %div336 = lshr i64 %sub, 4
  %conv37 = trunc i64 %div336 to i32
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %conv37)
  %cmp40 = icmp eq i32 %57, %conv37
  br i1 %cmp40, label %if.then42, label %if.end34.if.end53_crit_edge

if.end34.if.end53_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then42:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %prev_ptr.1.lcssa)
  %tobool43.not = icmp eq i64 %prev_ptr.1.lcssa, 0
  br i1 %tobool43.not, label %if.then42.no_sts_update_crit_edge, label %if.then44

if.then42.no_sts_update_crit_edge:                ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_sts_update

if.then44:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %sub49 = sub i64 %prev_ptr.1.lcssa, %conv
  %div50337 = lshr i64 %sub49, 4
  %conv51 = trunc i64 %div50337 to i32
  br label %if.end53

if.end53:                                         ; preds = %if.then44, %if.end34.if.end53_crit_edge
  %tx_slot.0 = phi i32 [ %conv51, %if.then44 ], [ %conv37, %if.end34.if.end53_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_slot.0, i32 %57)
  %cmp57.not = icmp ult i32 %tx_slot.0, %57
  br i1 %cmp57.not, label %if.end53.if.end82_crit_edge, label %do.body60

if.end53.if.end82_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

do.body60:                                        ; preds = %if.end53
  %58 = load i32, ptr @tsi_dbg_level, align 4
  %and61 = and i32 %58, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body60.if.end82_crit_edge, label %do.body64

do.body60.if.end82_crit_edge:                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

do.body64:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_omsg_handler.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_omsg_handler, %if.end82)) #9
          to label %if.then70 [label %if.end82], !srcloc !325

if.then70:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %priv, align 8
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_omsg_handler.__UNIQUE_ID_ddebug264, ptr noundef %dev72, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.73, i32 noundef %tx_slot.0, i32 noundef %62) #9
  br label %if.end82

if.end82:                                         ; preds = %if.then70, %do.body64, %do.body60.if.end82_crit_edge, %if.end53.if.end82_crit_edge
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_slot.0, i32 %64)
  %cmp86.not = icmp ult i32 %tx_slot.0, %64
  br i1 %cmp86.not, label %if.end82.if.end109_crit_edge, label %do.end103, !prof !340

if.end82.if.end109_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

do.end103:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1807, i32 noundef 9, ptr noundef null) #9
  br label %if.end109

if.end109:                                        ; preds = %do.end103, %if.end82.if.end109_crit_edge
  %inc117 = add i32 %tx_slot.0, 1
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc117, i32 %66)
  %cmp121 = icmp eq i32 %inc117, %66
  %spec.store.select = select i1 %cmp121, i32 0, i32 %inc117
  %dev_id127 = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 19, i32 %ch, i32 10
  %67 = ptrtoint ptr %dev_id127 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_id127, align 4
  br label %no_sts_update

no_sts_update:                                    ; preds = %if.end109, %if.then42.no_sts_update_crit_edge, %if.end23.no_sts_update_crit_edge, %while.end.no_sts_update_crit_edge, %if.then4.no_sts_update_crit_edge, %if.end.no_sts_update_crit_edge
  %do_callback.1 = phi i32 [ 0, %if.end.no_sts_update_crit_edge ], [ 1, %if.end109 ], [ 0, %while.end.no_sts_update_crit_edge ], [ 0, %if.end23.no_sts_update_crit_edge ], [ 0, %if.then42.no_sts_update_crit_edge ], [ 0, %if.then4.no_sts_update_crit_edge ]
  %tx_slot.2 = phi i32 [ -1, %if.end.no_sts_update_crit_edge ], [ %spec.store.select, %if.end109 ], [ -1, %while.end.no_sts_update_crit_edge ], [ -1, %if.end23.no_sts_update_crit_edge ], [ %conv37, %if.then42.no_sts_update_crit_edge ], [ -1, %if.then4.no_sts_update_crit_edge ]
  %dev_id.1 = phi ptr [ null, %if.end.no_sts_update_crit_edge ], [ %68, %if.end109 ], [ null, %while.end.no_sts_update_crit_edge ], [ null, %if.end23.no_sts_update_crit_edge ], [ null, %if.then42.no_sts_update_crit_edge ], [ null, %if.then4.no_sts_update_crit_edge ]
  %and134 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %no_sts_update.if.end208_crit_edge, label %do.body137

no_sts_update.if.end208_crit_edge:                ; preds = %no_sts_update
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end208

do.body137:                                       ; preds = %no_sts_update
  %69 = load i32, ptr @tsi_dbg_level, align 4
  %and138 = and i32 %69, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %do.body137.do.end168_crit_edge, label %do.body141

do.body137.do.end168_crit_edge:                   ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end168

do.body141:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_omsg_handler.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_omsg_handler, %do.end168)) #9
          to label %if.then155 [label %do.end168], !srcloc !325

if.then155:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv, align 8
  %dev157 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %72 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs, align 4
  %add160 = add i32 %mul, 397332
  %add.ptr161 = getelementptr i8, ptr %73, i32 %add160
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr161) #9, !srcloc !330
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_omsg_handler.__UNIQUE_ID_ddebug265, ptr noundef %dev157, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.73, i32 noundef %75) #9
  br label %do.end168

do.end168:                                        ; preds = %if.then155, %do.body141, %do.body137.do.end168_crit_edge
  %76 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs, align 4
  %add.ptr172 = getelementptr i8, ptr %77, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr172, i32 33554432) #9, !srcloc !329
  %78 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs, align 4
  %add175 = add i32 %mul, 397320
  %add.ptr176 = getelementptr i8, ptr %79, i32 %add175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr176, i32 83886080) #9, !srcloc !329
  %80 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs, align 4
  %add.ptr180 = getelementptr i8, ptr %81, i32 %add175
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr180) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %dev_id184 = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 19, i32 %ch, i32 10
  %83 = ptrtoint ptr %dev_id184 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev_id184, align 4
  %tx_slot187 = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 19, i32 %ch, i32 9
  %85 = ptrtoint ptr %tx_slot187 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tx_slot187, align 4
  %87 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs, align 4
  %add193 = add i32 %mul, 397316
  %add.ptr194 = getelementptr i8, ptr %88, i32 %add193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %89 = tail call i32 @llvm.bswap.i32(i32 %86) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr194, i32 %89) #9, !srcloc !329
  %90 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs, align 4
  %add.ptr198 = getelementptr i8, ptr %91, i32 %add193
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr198) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %93 = ptrtoint ptr %tx_slot187 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tx_slot187, align 4
  %wr_count = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 19, i32 %ch, i32 11
  %95 = ptrtoint ptr %wr_count to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %wr_count, align 4
  %sts_rdptr207 = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 19, i32 %ch, i32 8
  %96 = ptrtoint ptr %sts_rdptr207 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %sts_rdptr207, align 4
  br label %if.end208

if.end208:                                        ; preds = %do.end168, %no_sts_update.if.end208_crit_edge
  %do_callback.2 = phi i32 [ 1, %do.end168 ], [ %do_callback.1, %no_sts_update.if.end208_crit_edge ]
  %tx_slot.3 = phi i32 [ %86, %do.end168 ], [ %tx_slot.2, %no_sts_update.if.end208_crit_edge ]
  %dev_id.2 = phi ptr [ %84, %do.end168 ], [ %dev_id.1, %no_sts_update.if.end208_crit_edge ]
  %97 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs, align 4
  %add.ptr212 = getelementptr i8, ptr %98, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr212, i32 %2) #9, !srcloc !329
  %flags = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 2
  %99 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags, align 8
  %and213 = and i32 %100, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213)
  %tobool214.not = icmp eq i32 %and213, 0
  br i1 %tobool214.not, label %if.then215, label %if.end208.if.end222_crit_edge

if.end208.if.end222_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end222

if.then215:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs, align 4
  %add.ptr217 = getelementptr i8, ptr %102, i32 170060
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr217) #9, !srcloc !330
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %add219 = add i32 %ch, 8
  %shl = shl nuw i32 1, %add219
  %or = or i32 %104, %shl
  %105 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs, align 4
  %add.ptr221 = getelementptr i8, ptr %106, i32 170060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %107 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr221, i32 %107) #9, !srcloc !329
  br label %if.end222

if.end222:                                        ; preds = %if.then215, %if.end208.if.end222_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %mcback228 = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 9, i32 %ch, i32 1
  %108 = ptrtoint ptr %mcback228 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mcback228, align 4
  %tobool229.not = icmp eq ptr %109, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_callback.2)
  %tobool230.not = icmp eq i32 %do_callback.2, 0
  %or.cond = or i1 %tobool230.not, %tobool229.not
  br i1 %or.cond, label %if.end222.if.end235_crit_edge, label %if.then231

if.end222.if.end235_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end235

if.then231:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %109(ptr noundef %mport1, ptr noundef %dev_id.2, i32 noundef %ch, i32 noundef %tx_slot.3) #9
  br label %if.end235

if.end235:                                        ; preds = %if.then231, %if.end222.if.end235_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_imsg_msix(i32 noundef %irq, ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.tsi721_device, ptr %ptr, i32 0, i32 4, i32 10
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %1 to i32
  %sub = sub i32 %irq, %conv
  %rem = srem i32 %sub, 4
  %add = add nsw i32 %rem, 4
  tail call fastcc void @tsi721_imsg_handler(ptr noundef %ptr, i32 noundef %add)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tsi721_imsg_handler(ptr noundef %priv, i32 noundef %ch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %ch, -4
  %mport1 = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1
  %lock = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 17, i32 %sub, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %regs = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %mul = shl i32 %ch, 12
  %add = add i32 %mul, 397896
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !330
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, i32 noundef %sub) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and2 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %do.end7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.88, i32 noundef %sub) #13
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %if.end.if.end10_crit_edge
  %and11 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end19_crit_edge, label %do.end16

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev18, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.88, i32 noundef %sub) #13
  br label %if.end19

if.end19:                                         ; preds = %do.end16, %if.end10.if.end19_crit_edge
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr23 = getelementptr i8, ptr %11, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %2) #9, !srcloc !329
  %and24 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end19.if.end34_crit_edge, label %land.lhs.true

if.end19.if.end34_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end19
  %mcback = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 8, i32 %sub, i32 1
  %12 = ptrtoint ptr %mcback to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mcback, align 4
  %tobool27.not = icmp eq ptr %13, null
  br i1 %tobool27.not, label %land.lhs.true.if.end34_crit_edge, label %if.then28

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev_id = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 17, i32 %sub, i32 9
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_id, align 4
  tail call void %13(ptr noundef %mport1, ptr noundef %15, i32 noundef %sub, i32 noundef -1) #9
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %land.lhs.true.if.end34_crit_edge, %if.end19.if.end34_crit_edge
  %flags = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 2
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 8
  %and35 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end34.if.end44_crit_edge

if.end34.if.end44_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr39 = getelementptr i8, ptr %19, i32 170060
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #9, !srcloc !330
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %add41 = add i32 %ch, 16
  %shl = shl nuw i32 1, %add41
  %or = or i32 %21, %shl
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr43 = getelementptr i8, ptr %23, i32 170060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %24) #9, !srcloc !329
  br label %if.end44

if.end44:                                         ; preds = %if.then37, %if.end34.if.end44_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msix_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_irqhandler(i32 noundef %irq, ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.tsi721_device, ptr %ptr, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regs = getelementptr inbounds %struct.tsi721_device, ptr %ptr, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 170048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !329
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regs1 = getelementptr inbounds %struct.tsi721_device, ptr %ptr, i32 0, i32 3
  %4 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 170052
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #9, !srcloc !330
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs1, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 170064
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !330
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %and9 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %and12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %or.cond = select i1 %tobool10.not, i1 true, i1 %tobool13.not
  br i1 %or.cond, label %if.end5.if.end29_crit_edge, label %if.then14

if.end5.if.end29_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then14:                                        ; preds = %if.end5
  %12 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs1, align 4
  %add.ptr16 = getelementptr i8, ptr %13, i32 131136
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #9, !srcloc !330
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %and18 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.end, label %if.then20

if.then20:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs1, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 131140
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %19 = and i32 %18, -268435457
  %20 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs1, align 4
  %add.ptr2.i = getelementptr i8, ptr %21, i32 131140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %19) #9, !srcloc !329
  %idb_work.i = getelementptr inbounds %struct.tsi721_device, ptr %ptr, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %idb_work.i) #9
  br label %if.end22

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128, i32 noundef %15) #13
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.then20
  %25 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs1, align 4
  %add.ptr24 = getelementptr i8, ptr %26, i32 131136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %14) #9, !srcloc !329
  %27 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs1, align 4
  %add.ptr26 = getelementptr i8, ptr %28, i32 131136
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  br label %if.end29

if.end29:                                         ; preds = %if.end22, %if.end5.if.end29_crit_edge
  %and30 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end72_crit_edge, label %if.then32

if.end29.if.end72_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then32:                                        ; preds = %if.end29
  %and33 = and i32 %11, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.then32.if.end47_crit_edge, label %if.then35

if.then32.if.end47_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then35:                                        ; preds = %if.then32
  %30 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs1, align 4
  %add.ptr37 = getelementptr i8, ptr %31, i32 170060
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #9, !srcloc !330
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %neg = xor i32 %and33, -1
  %and40 = and i32 %33, %neg
  %34 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs1, align 4
  %add.ptr42 = getelementptr i8, ptr %35, i32 170060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %36 = tail call i32 @llvm.bswap.i32(i32 %and40) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %36) #9, !srcloc !329
  %and43 = and i32 %11, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.then35.for.inc_crit_edge, label %if.end46

if.then35.for.inc_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end46:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tsi721_imsg_handler(ptr noundef %ptr, i32 noundef 4)
  br label %for.inc

for.inc:                                          ; preds = %if.end46, %if.then35.for.inc_crit_edge
  %and43.1 = and i32 %11, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.1)
  %tobool44.not.1 = icmp eq i32 %and43.1, 0
  br i1 %tobool44.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end46.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end46.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tsi721_imsg_handler(ptr noundef %ptr, i32 noundef 5)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end46.1, %for.inc.for.inc.1_crit_edge
  %and43.2 = and i32 %11, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.2)
  %tobool44.not.2 = icmp eq i32 %and43.2, 0
  br i1 %tobool44.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end46.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.end46.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tsi721_imsg_handler(ptr noundef %ptr, i32 noundef 6)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end46.2, %for.inc.1.for.inc.2_crit_edge
  %and43.3 = and i32 %11, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.3)
  %tobool44.not.3 = icmp eq i32 %and43.3, 0
  br i1 %tobool44.not.3, label %for.inc.2.if.end47_crit_edge, label %if.end46.3

for.inc.2.if.end47_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.end46.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tsi721_imsg_handler(ptr noundef %ptr, i32 noundef 7)
  br label %if.end47

if.end47:                                         ; preds = %if.end46.3, %for.inc.2.if.end47_crit_edge, %if.then32.if.end47_crit_edge
  %and48 = and i32 %11, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end72_crit_edge, label %if.then50

if.end47.if.end72_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then50:                                        ; preds = %if.end47
  %37 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs1, align 4
  %add.ptr52 = getelementptr i8, ptr %38, i32 170060
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #9, !srcloc !330
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %neg55 = xor i32 %and48, -1
  %and56 = and i32 %40, %neg55
  %41 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs1, align 4
  %add.ptr58 = getelementptr i8, ptr %42, i32 170060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %43 = tail call i32 @llvm.bswap.i32(i32 %and56) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %43) #9, !srcloc !329
  %and64 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.then50.for.inc68_crit_edge, label %if.end67

if.then50.for.inc68_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc68

if.end67:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tsi721_omsg_handler(ptr noundef %ptr, i32 noundef 0)
  br label %for.inc68

for.inc68:                                        ; preds = %if.end67, %if.then50.for.inc68_crit_edge
  %and64.1 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.1)
  %tobool65.not.1 = icmp eq i32 %and64.1, 0
  br i1 %tobool65.not.1, label %for.inc68.for.inc68.1_crit_edge, label %if.end67.1

for.inc68.for.inc68.1_crit_edge:                  ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc68.1

if.end67.1:                                       ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tsi721_omsg_handler(ptr noundef %ptr, i32 noundef 1)
  br label %for.inc68.1

for.inc68.1:                                      ; preds = %if.end67.1, %for.inc68.for.inc68.1_crit_edge
  %and64.2 = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.2)
  %tobool65.not.2 = icmp eq i32 %and64.2, 0
  br i1 %tobool65.not.2, label %for.inc68.1.for.inc68.2_crit_edge, label %if.end67.2

for.inc68.1.for.inc68.2_crit_edge:                ; preds = %for.inc68.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc68.2

if.end67.2:                                       ; preds = %for.inc68.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tsi721_omsg_handler(ptr noundef %ptr, i32 noundef 2)
  br label %for.inc68.2

for.inc68.2:                                      ; preds = %if.end67.2, %for.inc68.1.for.inc68.2_crit_edge
  %and64.3 = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.3)
  %tobool65.not.3 = icmp eq i32 %and64.3, 0
  br i1 %tobool65.not.3, label %for.inc68.2.if.end72_crit_edge, label %if.end67.3

for.inc68.2.if.end72_crit_edge:                   ; preds = %for.inc68.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.end67.3:                                       ; preds = %for.inc68.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tsi721_omsg_handler(ptr noundef %ptr, i32 noundef 3)
  br label %if.end72

if.end72:                                         ; preds = %if.end67.3, %for.inc68.2.if.end72_crit_edge, %if.end47.if.end72_crit_edge, %if.end29.if.end72_crit_edge
  %and73 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end72.if.end84_crit_edge, label %if.then75

if.end72.if.end84_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then75:                                        ; preds = %if.end72
  %44 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs1, align 4
  %add.ptr77 = getelementptr i8, ptr %45, i32 67856
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %47 = and i32 %46, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool80.not = icmp eq i32 %47, 0
  br i1 %tobool80.not, label %if.then75.if.end84_crit_edge, label %if.then81

if.then75.if.end84_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then81:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tsi721_pw_handler(ptr noundef %ptr)
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.then75.if.end84_crit_edge, %if.end72.if.end84_crit_edge
  %and85 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  %and89 = and i32 %11, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  %or.cond185 = select i1 %tobool86.not, i1 true, i1 %tobool90.not
  br i1 %or.cond185, label %if.end84.if.end123_crit_edge, label %do.body92

if.end84.if.end123_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

do.body92:                                        ; preds = %if.end84
  %48 = load i32, ptr @tsi_dbg_level, align 4
  %and93 = and i32 %48, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %do.body92.do.end110_crit_edge, label %do.body96

do.body92.do.end110_crit_edge:                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end110

do.body96:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_irqhandler.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_irqhandler, %do.end110)) #9
          to label %if.then102 [label %do.end110], !srcloc !325

if.then102:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ptr, align 8
  %dev104 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_irqhandler.__UNIQUE_ID_ddebug249, ptr noundef %dev104, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i32 noundef %11) #9
  br label %do.end110

do.end110:                                        ; preds = %if.then102, %do.body96, %do.body92.do.end110_crit_edge
  %and115 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %do.end110.for.inc119_crit_edge, label %if.end118

do.end110.for.inc119_crit_edge:                   ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc119

if.end118:                                        ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.tsi721_device, ptr %ptr, i32 0, i32 15, i32 0
  tail call void @tsi721_bdma_handler(ptr noundef %arrayidx) #9
  br label %for.inc119

for.inc119:                                       ; preds = %if.end118, %do.end110.for.inc119_crit_edge
  %and115.1 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.1)
  %tobool116.not.1 = icmp eq i32 %and115.1, 0
  br i1 %tobool116.not.1, label %for.inc119.for.inc119.1_crit_edge, label %if.end118.1

for.inc119.for.inc119.1_crit_edge:                ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc119.1

if.end118.1:                                      ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.1 = getelementptr %struct.tsi721_device, ptr %ptr, i32 0, i32 15, i32 1
  tail call void @tsi721_bdma_handler(ptr noundef %arrayidx.1) #9
  br label %for.inc119.1

for.inc119.1:                                     ; preds = %if.end118.1, %for.inc119.for.inc119.1_crit_edge
  %and115.2 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.2)
  %tobool116.not.2 = icmp eq i32 %and115.2, 0
  br i1 %tobool116.not.2, label %for.inc119.1.for.inc119.2_crit_edge, label %if.end118.2

for.inc119.1.for.inc119.2_crit_edge:              ; preds = %for.inc119.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc119.2

if.end118.2:                                      ; preds = %for.inc119.1
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.2 = getelementptr %struct.tsi721_device, ptr %ptr, i32 0, i32 15, i32 2
  tail call void @tsi721_bdma_handler(ptr noundef %arrayidx.2) #9
  br label %for.inc119.2

for.inc119.2:                                     ; preds = %if.end118.2, %for.inc119.1.for.inc119.2_crit_edge
  %and115.3 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.3)
  %tobool116.not.3 = icmp eq i32 %and115.3, 0
  br i1 %tobool116.not.3, label %for.inc119.2.for.inc119.3_crit_edge, label %if.end118.3

for.inc119.2.for.inc119.3_crit_edge:              ; preds = %for.inc119.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc119.3

if.end118.3:                                      ; preds = %for.inc119.2
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.3 = getelementptr %struct.tsi721_device, ptr %ptr, i32 0, i32 15, i32 3
  tail call void @tsi721_bdma_handler(ptr noundef %arrayidx.3) #9
  br label %for.inc119.3

for.inc119.3:                                     ; preds = %if.end118.3, %for.inc119.2.for.inc119.3_crit_edge
  %and115.4 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.4)
  %tobool116.not.4 = icmp eq i32 %and115.4, 0
  br i1 %tobool116.not.4, label %for.inc119.3.for.inc119.4_crit_edge, label %if.end118.4

for.inc119.3.for.inc119.4_crit_edge:              ; preds = %for.inc119.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc119.4

if.end118.4:                                      ; preds = %for.inc119.3
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.4 = getelementptr %struct.tsi721_device, ptr %ptr, i32 0, i32 15, i32 4
  tail call void @tsi721_bdma_handler(ptr noundef %arrayidx.4) #9
  br label %for.inc119.4

for.inc119.4:                                     ; preds = %if.end118.4, %for.inc119.3.for.inc119.4_crit_edge
  %and115.5 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.5)
  %tobool116.not.5 = icmp eq i32 %and115.5, 0
  br i1 %tobool116.not.5, label %for.inc119.4.for.inc119.5_crit_edge, label %if.end118.5

for.inc119.4.for.inc119.5_crit_edge:              ; preds = %for.inc119.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc119.5

if.end118.5:                                      ; preds = %for.inc119.4
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.5 = getelementptr %struct.tsi721_device, ptr %ptr, i32 0, i32 15, i32 5
  tail call void @tsi721_bdma_handler(ptr noundef %arrayidx.5) #9
  br label %for.inc119.5

for.inc119.5:                                     ; preds = %if.end118.5, %for.inc119.4.for.inc119.5_crit_edge
  %and115.6 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.6)
  %tobool116.not.6 = icmp eq i32 %and115.6, 0
  br i1 %tobool116.not.6, label %for.inc119.5.for.inc119.6_crit_edge, label %if.end118.6

for.inc119.5.for.inc119.6_crit_edge:              ; preds = %for.inc119.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc119.6

if.end118.6:                                      ; preds = %for.inc119.5
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.6 = getelementptr %struct.tsi721_device, ptr %ptr, i32 0, i32 15, i32 6
  tail call void @tsi721_bdma_handler(ptr noundef %arrayidx.6) #9
  br label %for.inc119.6

for.inc119.6:                                     ; preds = %if.end118.6, %for.inc119.5.for.inc119.6_crit_edge
  %and115.7 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.7)
  %tobool116.not.7 = icmp eq i32 %and115.7, 0
  br i1 %tobool116.not.7, label %for.inc119.6.if.end123_crit_edge, label %if.end118.7

for.inc119.6.if.end123_crit_edge:                 ; preds = %for.inc119.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

if.end118.7:                                      ; preds = %for.inc119.6
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.7 = getelementptr %struct.tsi721_device, ptr %ptr, i32 0, i32 15, i32 7
  tail call void @tsi721_bdma_handler(ptr noundef %arrayidx.7) #9
  br label %if.end123

if.end123:                                        ; preds = %if.end118.7, %for.inc119.6.if.end123_crit_edge, %if.end84.if.end123_crit_edge
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 8
  %and125 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.end123.cleanup_crit_edge, label %if.then127

if.end123.cleanup_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then127:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs1, align 4
  %add.ptr129 = getelementptr i8, ptr %54, i32 170048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 539623424) #9, !srcloc !329
  br label %cleanup

cleanup:                                          ; preds = %if.then127, %if.end123.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then127 ], [ 1, %if.end123.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_sr2pc_ch_msix(i32 noundef %irq, ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.tsi721_device, ptr %ptr, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 131136
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %3 = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 131140
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %7 = and i32 %6, -268435457
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr2.i = getelementptr i8, ptr %9, i32 131140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %7) #9, !srcloc !329
  %idb_work.i = getelementptr inbounds %struct.tsi721_device, ptr %ptr, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %idb_work.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr3 = getelementptr i8, ptr %12, i32 131136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #9, !srcloc !329
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %14, i32 131136
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_srio_msix(i32 noundef %irq, ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.tsi721_device, ptr %ptr, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 67856
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %3 = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tsi721_pw_handler(ptr noundef %ptr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tsi721_pw_handler(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %pw_buf = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pw_buf) #9
  %regs = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 3
  %0 = call ptr @memset(ptr %pw_buf, i32 255, i32 16)
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 68112
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %if.then

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then:                                          ; preds = %entry
  %5 = getelementptr inbounds [4 x i32], ptr %pw_buf, i32 0, i32 3
  %6 = getelementptr inbounds [4 x i32], ptr %pw_buf, i32 0, i32 2
  %7 = getelementptr inbounds [4 x i32], ptr %pw_buf, i32 0, i32 1
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr2 = getelementptr i8, ptr %9, i32 68128
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #9, !srcloc !330
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %12 = ptrtoint ptr %pw_buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pw_buf, align 4
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %14, i32 68132
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !330
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %7, align 4
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr9 = getelementptr i8, ptr %19, i32 68136
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #9, !srcloc !330
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %6, align 4
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr13 = getelementptr i8, ptr %24, i32 68140
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #9, !srcloc !330
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %5, align 4
  %pw_fifo_lock = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %pw_fifo_lock) #9
  %pw_fifo = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 11
  %mask = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 11, i32 0, i32 0, i32 2
  %28 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mask, align 4
  %30 = ptrtoint ptr %pw_fifo to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pw_fifo, align 4
  %out = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 11, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %out, align 4
  %sub.neg = add i32 %29, 1
  %add = sub i32 %sub.neg, %31
  %sub16 = add i32 %add, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub16)
  %cmp = icmp ugt i32 %sub16, 15
  br i1 %cmp, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = call i32 @__kfifo_in(ptr noundef %pw_fifo, ptr noundef nonnull %pw_buf, i32 noundef 16) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %pw_discard_count = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 13
  %34 = ptrtoint ptr %pw_discard_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pw_discard_count, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %pw_discard_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then19
  call void @_raw_spin_unlock(ptr noundef %pw_fifo_lock) #9
  br label %if.end25

if.end25:                                         ; preds = %if.end, %entry.if.end25_crit_edge
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %add.ptr27 = getelementptr i8, ptr %37, i32 68112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 50331648) #9, !srcloc !329
  %pw_work = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %38 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %pw_work) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pw_buf) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tsi721_bdma_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_unregister_mport(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msix(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tsi721_dma_stop_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !25, !27, !28, !29, !31, !32, !34, !35, !37, !39, !41, !43, !44, !45, !46, !47, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !124, !125, !127, !128, !129, !130, !132, !134, !135, !136, !138, !139, !140, !142, !144, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !159, !161, !162, !164, !165, !166, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !210, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !229, !231, !232, !233, !235, !236, !238, !239, !241, !242, !243, !245, !246, !248, !249, !251, !252, !253, !255, !256, !258, !259, !260, !261, !263, !264, !265, !267, !268, !270, !271, !272, !274, !275, !276, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !296, !297, !298, !300, !301, !302, !303, !305, !306, !308, !309, !310, !312, !313, !315}
!llvm.module.flags = !{!316, !317, !318, !319, !320, !321, !322, !323}
!llvm.ident = !{!324}

!0 = !{ptr @__param_dbg_level, !1, !"__param_dbg_level", i1 false, i1 false}
!1 = !{!"../drivers/rapidio/devices/tsi721.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_dbg_leveltype238, !1, !"__UNIQUE_ID_dbg_leveltype238", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_dbg_level239, !4, !"__UNIQUE_ID_dbg_level239", i1 false, i1 false}
!4 = !{!"../drivers/rapidio/devices/tsi721.c", i32 29, i32 1}
!5 = !{ptr @__param_pcie_mrrs, !6, !"__param_pcie_mrrs", i1 false, i1 false}
!6 = !{!"../drivers/rapidio/devices/tsi721.c", i32 33, i32 1}
!7 = !{ptr @__UNIQUE_ID_pcie_mrrstype240, !6, !"__UNIQUE_ID_pcie_mrrstype240", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_pcie_mrrs241, !9, !"__UNIQUE_ID_pcie_mrrs241", i1 false, i1 false}
!9 = !{!"../drivers/rapidio/devices/tsi721.c", i32 34, i32 1}
!10 = !{ptr @__param_mbox_sel, !11, !"__param_mbox_sel", i1 false, i1 false}
!11 = !{!"../drivers/rapidio/devices/tsi721.c", i32 37, i32 1}
!12 = !{ptr @__UNIQUE_ID_mbox_seltype242, !11, !"__UNIQUE_ID_mbox_seltype242", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_mbox_sel243, !14, !"__UNIQUE_ID_mbox_sel243", i1 false, i1 false}
!14 = !{!"../drivers/rapidio/devices/tsi721.c", i32 38, i32 1}
!15 = !{ptr @__initcall__kmod_tsi721_mport__281_2998_tsi721_driver_init6, !16, !"__initcall__kmod_tsi721_mport__281_2998_tsi721_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2998, i32 1}
!17 = !{ptr @__exitcall_tsi721_driver_exit, !16, !"__exitcall_tsi721_driver_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_description282, !19, !"__UNIQUE_ID_description282", i1 false, i1 false}
!19 = !{!"../drivers/rapidio/devices/tsi721.c", i32 3000, i32 1}
!20 = !{ptr @__UNIQUE_ID_author283, !21, !"__UNIQUE_ID_author283", i1 false, i1 false}
!21 = !{!"../drivers/rapidio/devices/tsi721.c", i32 3001, i32 1}
!22 = !{ptr @__UNIQUE_ID_file284, !23, !"__UNIQUE_ID_file284", i1 false, i1 false}
!23 = !{!"../drivers/rapidio/devices/tsi721.c", i32 3002, i32 1}
!24 = !{ptr @__UNIQUE_ID_license285, !23, !"__UNIQUE_ID_license285", i1 false, i1 false}
!25 = !{ptr @tsi_dbg_level, !26, !"tsi_dbg_level", i1 false, i1 false}
!26 = !{!"../drivers/rapidio/devices/tsi721.c", i32 27, i32 5}
!27 = !{ptr @__param_str_dbg_level, !1, !"__param_str_dbg_level", i1 false, i1 false}
!28 = !{ptr @__param_str_pcie_mrrs, !6, !"__param_str_pcie_mrrs", i1 false, i1 false}
!29 = !{ptr @pcie_mrrs, !30, !"pcie_mrrs", i1 false, i1 false}
!30 = !{!"../drivers/rapidio/devices/tsi721.c", i32 32, i32 12}
!31 = !{ptr @__param_str_mbox_sel, !11, !"__param_str_mbox_sel", i1 false, i1 false}
!32 = !{ptr @mbox_sel, !33, !"mbox_sel", i1 false, i1 false}
!33 = !{!"../drivers/rapidio/devices/tsi721.c", i32 36, i32 11}
!34 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.1, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2991, i32 11}
!37 = !{ptr @tsi721_driver, !38, !"tsi721_driver", i1 false, i1 false}
!38 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2990, i32 26}
!39 = !{ptr @tsi721_pci_tbl, !40, !"tsi721_pci_tbl", i1 false, i1 false}
!40 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2983, i32 35}
!41 = !{ptr @.str.2, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2748, i32 3}
!43 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.4, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.6, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @tsi721_probe._entry, !42, !"_entry", i1 false, i1 false}
!48 = !{ptr @tsi721_probe._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.7, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2759, i32 4}
!51 = !{ptr @tsi721_probe.__UNIQUE_ID_ddebug275, !50, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!52 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2772, i32 3}
!54 = !{ptr @tsi721_probe._entry.8, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @tsi721_probe._entry_ptr.10, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2781, i32 3}
!58 = !{ptr @tsi721_probe._entry.11, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @tsi721_probe._entry_ptr.13, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2798, i32 4}
!62 = !{ptr @tsi721_probe.__UNIQUE_ID_ddebug276, !61, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!63 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2808, i32 4}
!65 = !{ptr @tsi721_probe.__UNIQUE_ID_ddebug277, !64, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!66 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2818, i32 3}
!68 = !{ptr @tsi721_probe._entry.16, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @tsi721_probe._entry_ptr.18, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2826, i32 3}
!72 = !{ptr @tsi721_probe._entry.19, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @tsi721_probe._entry_ptr.21, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2833, i32 3}
!76 = !{ptr @tsi721_probe._entry.22, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @tsi721_probe._entry_ptr.24, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2842, i32 4}
!80 = !{ptr @tsi721_probe._entry.25, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @tsi721_probe._entry_ptr.27, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2847, i32 4}
!84 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @tsi721_probe._entry.28, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @tsi721_probe._entry_ptr.31, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @tsi721_probe._entry.32, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2851, i32 4}
!89 = !{ptr @tsi721_probe._entry_ptr.33, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2866, i32 4}
!92 = !{ptr @tsi721_probe._entry.34, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @tsi721_probe._entry_ptr.36, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2891, i32 3}
!96 = !{ptr @tsi721_probe._entry.37, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @tsi721_probe._entry_ptr.39, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1426, i32 2}
!100 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @tsi721_bdma_maint_init.__UNIQUE_ID_ddebug261, !99, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1447, i32 2}
!104 = !{ptr @tsi721_bdma_maint_init.__UNIQUE_ID_ddebug262, !103, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1470, i32 2}
!107 = !{ptr @tsi721_bdma_maint_init.__UNIQUE_ID_ddebug263, !106, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!108 = !{ptr @tsi721_doorbell_init.__key, !109, !"__key", i1 false, i1 false}
!109 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1369, i32 2}
!110 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1378, i32 2}
!113 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @tsi721_doorbell_init.__UNIQUE_ID_ddebug260, !112, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/rapidio/devices/tsi721.c", i32 425, i32 4}
!117 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @tsi721_db_dpc.__UNIQUE_ID_ddebug248, !116, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!119 = !{ptr @tsi721_port_write_init.__key, !120, !"__key", i1 false, i1 false}
!120 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1342, i32 2}
!121 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @tsi721_port_write_init.__key.50, !123, !"__key", i1 false, i1 false}
!123 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1343, i32 2}
!124 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1346, i32 3}
!127 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @tsi721_port_write_init._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @tsi721_port_write_init._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2681, i32 44}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2692, i32 3}
!134 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @tsi721_setup_mport.__UNIQUE_ID_ddebug274, !133, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2699, i32 3}
!138 = !{ptr @tsi721_setup_mport._entry, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @tsi721_setup_mport._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @tsi721_rio_ops, !141, !"tsi721_rio_ops", i1 false, i1 false}
!141 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2623, i32 23}
!142 = !{ptr @.str.58, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/rapidio/devices/tsi721.c", i32 151, i32 4}
!144 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @tsi721_maint_dma.__UNIQUE_ID_ddebug244, !143, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!146 = !{ptr @.str.60, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/rapidio/devices/tsi721.c", i32 165, i32 3}
!148 = !{ptr @tsi721_maint_dma.__UNIQUE_ID_ddebug245, !147, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!149 = !{ptr @.str.61, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/rapidio/devices/tsi721.c", i32 167, i32 3}
!151 = !{ptr @tsi721_maint_dma.__UNIQUE_ID_ddebug246, !150, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!152 = !{ptr @.str.62, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/rapidio/devices/tsi721.c", i32 41, i32 8}
!154 = !{ptr @tsi721_maint_lock, !153, !"tsi721_maint_lock", i1 false, i1 false}
!155 = !{ptr @.str.63, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/rapidio/devices/tsi721.c", i32 350, i32 2}
!157 = !{ptr @.str.64, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @tsi721_dsend.__UNIQUE_ID_ddebug247, !156, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!159 = !{ptr @tsi721_open_outb_mbox.__key, !160, !"__key", i1 false, i1 false}
!160 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1895, i32 2}
!161 = !{ptr @.str.65, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.66, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1906, i32 4}
!164 = !{ptr @.str.67, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @tsi721_open_outb_mbox.__UNIQUE_ID_ddebug266, !163, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!166 = !{ptr @.str.68, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1919, i32 3}
!168 = !{ptr @tsi721_open_outb_mbox.__UNIQUE_ID_ddebug267, !167, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!169 = !{ptr @.str.69, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1934, i32 3}
!171 = !{ptr @tsi721_open_outb_mbox.__UNIQUE_ID_ddebug268, !170, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!172 = !{ptr @.str.70, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1971, i32 4}
!174 = !{ptr @tsi721_open_outb_mbox.__UNIQUE_ID_ddebug269, !173, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!175 = !{ptr @.str.71, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1982, i32 4}
!177 = !{ptr @tsi721_open_outb_mbox.__UNIQUE_ID_ddebug270, !176, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!178 = !{ptr @.str.72, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1747, i32 3}
!180 = !{ptr @.str.73, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @tsi721_omsg_handler._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @tsi721_omsg_handler._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.74, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1804, i32 4}
!185 = !{ptr @tsi721_omsg_handler.__UNIQUE_ID_ddebug264, !184, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!186 = !{ptr @.str.75, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1826, i32 3}
!188 = !{ptr @tsi721_omsg_handler.__UNIQUE_ID_ddebug265, !187, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!189 = !{ptr @tsi721_open_inb_mbox.__key, !190, !"__key", i1 false, i1 false}
!190 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2189, i32 2}
!191 = !{ptr @.str.76, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.77, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2199, i32 3}
!194 = !{ptr @.str.78, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @tsi721_open_inb_mbox._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @tsi721_open_inb_mbox._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.80, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2213, i32 3}
!199 = !{ptr @tsi721_open_inb_mbox._entry.79, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @tsi721_open_inb_mbox._entry_ptr.81, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.83, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2226, i32 3}
!203 = !{ptr @tsi721_open_inb_mbox._entry.82, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @tsi721_open_inb_mbox._entry_ptr.84, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.85, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2286, i32 4}
!207 = !{ptr @tsi721_open_inb_mbox.__UNIQUE_ID_ddebug271, !206, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!208 = !{ptr @.str.86, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2297, i32 4}
!210 = !{ptr @tsi721_open_inb_mbox.__UNIQUE_ID_ddebug272, !209, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!211 = !{ptr @.str.87, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2124, i32 3}
!213 = !{ptr @.str.88, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @tsi721_imsg_handler._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @tsi721_imsg_handler._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.90, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2127, i32 3}
!218 = !{ptr @tsi721_imsg_handler._entry.89, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @tsi721_imsg_handler._entry_ptr.91, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.93, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2130, i32 3}
!222 = !{ptr @tsi721_imsg_handler._entry.92, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @tsi721_imsg_handler._entry_ptr.94, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.95, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2421, i32 3}
!226 = !{ptr @.str.96, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @tsi721_add_inb_buffer._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @tsi721_add_inb_buffer._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.97, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1110, i32 3}
!231 = !{ptr @.str.98, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @tsi721_rio_map_inb_mem.__UNIQUE_ID_ddebug254, !230, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!233 = !{ptr @.str.99, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1129, i32 3}
!235 = !{ptr @tsi721_rio_map_inb_mem.__UNIQUE_ID_ddebug255, !234, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!236 = !{ptr @.str.100, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1224, i32 2}
!238 = !{ptr @tsi721_rio_map_inb_mem.__UNIQUE_ID_ddebug256, !237, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!239 = !{ptr @.str.101, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1246, i32 2}
!241 = !{ptr @.str.102, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @tsi721_rio_unmap_inb_mem.__UNIQUE_ID_ddebug257, !240, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!243 = !{ptr @.str.103, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1282, i32 4}
!245 = !{ptr @tsi721_rio_unmap_inb_mem.__UNIQUE_ID_ddebug258, !244, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!246 = !{ptr @.str.104, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1291, i32 3}
!248 = !{ptr @tsi721_rio_unmap_inb_mem.__UNIQUE_ID_ddebug259, !247, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!249 = !{ptr @.str.105, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/rapidio/devices/tsi721.c", i32 932, i32 2}
!251 = !{ptr @.str.106, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @tsi721_map_outb_win.__UNIQUE_ID_ddebug250, !250, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!253 = !{ptr @.str.107, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/rapidio/devices/tsi721.c", i32 957, i32 2}
!255 = !{ptr @tsi721_map_outb_win.__UNIQUE_ID_ddebug251, !254, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!256 = !{ptr @.str.108, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/rapidio/devices/tsi721.c", i32 905, i32 3}
!258 = !{ptr @.str.109, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @tsi721_obw_alloc._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @tsi721_obw_alloc._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.110, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1009, i32 2}
!263 = !{ptr @.str.111, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @tsi721_unmap_outb_win.__UNIQUE_ID_ddebug252, !262, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!265 = !{ptr @.str.112, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/rapidio/devices/tsi721.c", i32 1016, i32 4}
!267 = !{ptr @tsi721_unmap_outb_win.__UNIQUE_ID_ddebug253, !266, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!268 = !{ptr @.str.113, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2648, i32 2}
!270 = !{ptr @.str.114, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @tsi721_mport_release.__UNIQUE_ID_ddebug273, !269, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!272 = !{ptr @.str.115, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/rapidio/devices/tsi721.c", i32 763, i32 3}
!274 = !{ptr @.str.116, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @tsi721_enable_msix._entry, !273, !"_entry", i1 false, i1 false}
!276 = !{ptr @tsi721_enable_msix._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.117, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/rapidio/devices/tsi721.c", i32 773, i32 4}
!279 = !{ptr @.str.118, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/rapidio/devices/tsi721.c", i32 776, i32 4}
!281 = !{ptr @.str.119, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/rapidio/devices/tsi721.c", i32 782, i32 26}
!283 = !{ptr @.str.120, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/rapidio/devices/tsi721.c", i32 788, i32 26}
!285 = !{ptr @.str.121, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/rapidio/devices/tsi721.c", i32 794, i32 26}
!287 = !{ptr @.str.122, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/rapidio/devices/tsi721.c", i32 800, i32 26}
!289 = !{ptr @.str.123, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/rapidio/devices/tsi721.c", i32 809, i32 26}
!291 = !{ptr @.str.124, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/rapidio/devices/tsi721.c", i32 815, i32 26}
!293 = !{ptr @.str.125, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/rapidio/devices/tsi721.c", i32 838, i32 3}
!295 = !{ptr @.str.126, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @tsi721_request_irq._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @tsi721_request_irq._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.127, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/rapidio/devices/tsi721.c", i32 484, i32 5}
!300 = !{ptr @.str.128, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @tsi721_irqhandler._entry, !299, !"_entry", i1 false, i1 false}
!302 = !{ptr @tsi721_irqhandler._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.129, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/rapidio/devices/tsi721.c", i32 547, i32 4}
!305 = !{ptr @tsi721_irqhandler.__UNIQUE_ID_ddebug249, !304, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!306 = !{ptr @.str.130, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2940, i32 2}
!308 = !{ptr @.str.131, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @tsi721_remove.__UNIQUE_ID_ddebug278, !307, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!310 = !{ptr @.str.132, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2968, i32 2}
!312 = !{ptr @tsi721_remove.__UNIQUE_ID_ddebug279, !311, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!313 = !{ptr @.str.133, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/rapidio/devices/tsi721.c", i32 2975, i32 2}
!315 = !{ptr @tsi721_shutdown.__UNIQUE_ID_ddebug280, !314, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!316 = !{i32 1, !"wchar_size", i32 2}
!317 = !{i32 1, !"min_enum_size", i32 4}
!318 = !{i32 8, !"branch-target-enforcement", i32 0}
!319 = !{i32 8, !"sign-return-address", i32 0}
!320 = !{i32 8, !"sign-return-address-all", i32 0}
!321 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!322 = !{i32 7, !"uwtable", i32 1}
!323 = !{i32 7, !"frame-pointer", i32 2}
!324 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!325 = !{i64 2148233420, i64 2148233425, i64 2148233438, i64 2148233482, i64 2148233516, i64 2148233537}
!326 = !{!"branch_weights", i32 1, i32 2000}
!327 = !{i64 2154905973, i64 2154906471, i64 2154906010, i64 2154906066, i64 2154906100, i64 2154906124, i64 2154906165, i64 2154906186, i64 2154906214, i64 2154906248}
!328 = !{i64 2148953209}
!329 = !{i64 766263}
!330 = !{i64 766681}
!331 = !{i64 2148951854}
!332 = !{i8 0, i8 2}
!333 = !{!"auto-init"}
!334 = !{i64 2154733997}
!335 = !{i64 765643}
!336 = !{i32 0, i32 33}
!337 = !{i64 2154840533}
!338 = !{i64 2154854564}
!339 = !{i64 2154815597}
!340 = !{!"branch_weights", i32 2000, i32 1}
!341 = !{i64 2154717163}
