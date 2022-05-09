; ModuleID = '/llk/IR_all_yes/arch/arm/mach-cns3xxx/pcie.c_pt.bc'
source_filename = "../arch/arm/mach-cns3xxx/pcie.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.cns3xxx_pcie = type { ptr, ptr, ptr, [2 x i32], %struct.resource, %struct.resource, i32, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hw_pci = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_sys_data = type { %struct.list_head, i32, i64, i32, ptr, %struct.list_head, %struct.resource, [12 x i8], ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@cns3xxx_pcie_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr @cns3xxx_pci_map_bus, ptr @cns3xxx_pci_read_config, ptr @pci_generic_config_write }, [44 x i8] zeroinitializer }, align 32
@pcibios_min_io = external dso_local local_unnamed_addr global i32, align 4
@pcibios_min_mem = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"imprecise external abort\00", [39 x i8] zeroinitializer }, align 32
@cns3xxx_pcie = internal global { [2 x %struct.cns3xxx_pcie], [40 x i8] } { [2 x %struct.cns3xxx_pcie] [%struct.cns3xxx_pcie { ptr inttoptr (i32 -520093696 to ptr), ptr inttoptr (i32 -486539264 to ptr), ptr inttoptr (i32 -469762048 to ptr), [2 x i32] [i32 87, i32 61], %struct.resource { i32 -1409286144, i32 -1392508929, ptr @.str.15, i32 256, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 -1610612736, i32 -1426063361, ptr @.str.16, i32 512, i32 0, ptr null, ptr null, ptr null }, i32 0, i8 0 }, %struct.cns3xxx_pcie { ptr inttoptr (i32 -385875968 to ptr), ptr inttoptr (i32 -352321536 to ptr), ptr inttoptr (i32 -335544320 to ptr), [2 x i32] [i32 88, i32 62], %struct.resource { i32 -1140850688, i32 -1124073473, ptr @.str.17, i32 256, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 -1342177280, i32 -1157627905, ptr @.str.18, i32 512, i32 0, ptr null, ptr null, ptr null }, i32 1, i8 0 }], [40 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@cns3xxx_pcie_map_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016PCIe map irq: %04d:%02x:%02x.%02x slot %d, pin %d, irq: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cns3xxx_pcie_map_irq\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"arch/arm/mach-cns3xxx/pcie.c\00", [35 x i8] zeroinitializer }, align 32
@cns3xxx_pcie_map_irq._entry_ptr = internal global ptr @cns3xxx_pcie_map_irq._entry, section ".printk_index", align 4
@cns3xxx_pcie_check_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016PCIe: Port[%d] Enable PCIe LTSSM\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cns3xxx_pcie_check_link\00", [40 x i8] zeroinitializer }, align 32
@cns3xxx_pcie_check_link._entry_ptr = internal global ptr @cns3xxx_pcie_check_link._entry, section ".printk_index", align 4
@cns3xxx_pcie_check_link._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.3, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016PCIe: Port[%d] Check data link layer...\00", [54 x i8] zeroinitializer }, align 32
@cns3xxx_pcie_check_link._entry_ptr.8 = internal global ptr @cns3xxx_pcie_check_link._entry.6, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cns3xxx_pcie_check_link._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.3, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016Link up.\0A\00", [20 x i8] zeroinitializer }, align 32
@cns3xxx_pcie_check_link._entry_ptr.11 = internal global ptr @cns3xxx_pcie_check_link._entry.9, section ".printk_index", align 4
@cns3xxx_pcie_check_link._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.3, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016Device not found.\0A\00", [43 x i8] zeroinitializer }, align 32
@cns3xxx_pcie_check_link._entry_ptr.14 = internal global ptr @cns3xxx_pcie_check_link._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PCIe0 I/O space\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PCIe0 non-prefetchable\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PCIe1 I/O space\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PCIe1 non-prefetchable\00", [41 x i8] zeroinitializer }, align 32
@pcie_bus_config = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"cns3xxx_pcie_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 122, i32 23 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 278, i32 4 }
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"cns3xxx_pcie\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 140, i32 28 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 133, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 195, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 196, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 202, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 206, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 146, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 152, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 165, i32 12 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [32 x i8] c"../arch/arm/mach-cns3xxx/pcie.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 171, i32 12 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @cns3xxx_pcie_check_link._entry, ptr @cns3xxx_pcie_check_link._entry.12, ptr @cns3xxx_pcie_check_link._entry.6, ptr @cns3xxx_pcie_check_link._entry.9, ptr @cns3xxx_pcie_check_link._entry_ptr, ptr @cns3xxx_pcie_check_link._entry_ptr.11, ptr @cns3xxx_pcie_check_link._entry_ptr.14, ptr @cns3xxx_pcie_check_link._entry_ptr.8, ptr @cns3xxx_pcie_map_irq._entry, ptr @cns3xxx_pcie_map_irq._entry_ptr, ptr @cns3xxx_pcie_ops, ptr @.str, ptr @cns3xxx_pcie, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3xxx_pcie_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3xxx_pcie to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3xxx_pcie_map_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3xxx_pcie_check_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3xxx_pcie_check_link._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3xxx_pcie_check_link._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3xxx_pcie_check_link._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cns3xxx_pcie_init_late() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %private_data = alloca ptr, align 4
  %hw_pci = alloca %struct.hw_pci, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %private_data) #8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %private_data, align 4, !annotation !46
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hw_pci) #8
  %1 = ptrtoint ptr %hw_pci to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cns3xxx_pcie_ops, ptr %hw_pci, align 4
  %nr_controllers = getelementptr inbounds %struct.hw_pci, ptr %hw_pci, i32 0, i32 1
  %2 = ptrtoint ptr %nr_controllers to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %nr_controllers, align 4
  %private_data1 = getelementptr inbounds %struct.hw_pci, ptr %hw_pci, i32 0, i32 2
  %3 = ptrtoint ptr %private_data1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %private_data, ptr %private_data1, align 4
  %setup = getelementptr inbounds %struct.hw_pci, ptr %hw_pci, i32 0, i32 3
  %4 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cns3xxx_pci_setup, ptr %setup, align 4
  %scan = getelementptr inbounds %struct.hw_pci, ptr %hw_pci, i32 0, i32 4
  %map_irq = getelementptr inbounds %struct.hw_pci, ptr %hw_pci, i32 0, i32 8
  %5 = call ptr @memset(ptr %scan, i32 0, i32 16)
  %6 = ptrtoint ptr %map_irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cns3xxx_pcie_map_irq, ptr %map_irq, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pcibios_min_io to i32))
  store i32 0, ptr @pcibios_min_io, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pcibios_min_mem to i32))
  store i32 0, ptr @pcibios_min_mem, align 4
  call void @hook_fault_code(i32 noundef 22, ptr noundef nonnull @cns3xxx_pcie_abort_handler, i32 noundef 7, i32 noundef 0, ptr noundef nonnull @.str) #8
  call void @cns3xxx_pwr_clk_en(i32 noundef 131072) #8
  call void @cns3xxx_pwr_soft_rst(i32 noundef 131072) #8
  call fastcc void @cns3xxx_pcie_check_link(ptr noundef nonnull @cns3xxx_pcie) #11
  call fastcc void @cns3xxx_pcie_hw_init(ptr noundef nonnull @cns3xxx_pcie) #11
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @cns3xxx_pcie, ptr %private_data, align 4
  call void @pci_common_init_dev(ptr noundef null, ptr noundef nonnull %hw_pci) #8
  call void @cns3xxx_pwr_clk_en(i32 noundef 262144) #8
  call void @cns3xxx_pwr_soft_rst(i32 noundef 262144) #8
  call fastcc void @cns3xxx_pcie_check_link(ptr noundef getelementptr inbounds ([2 x %struct.cns3xxx_pcie], ptr @cns3xxx_pcie, i32 0, i32 1)) #11
  call fastcc void @cns3xxx_pcie_hw_init(ptr noundef getelementptr inbounds ([2 x %struct.cns3xxx_pcie], ptr @cns3xxx_pcie, i32 0, i32 1)) #11
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr getelementptr inbounds ([2 x %struct.cns3xxx_pcie], ptr @cns3xxx_pcie, i32 0, i32 1), ptr %private_data, align 4
  call void @pci_common_init_dev(ptr noundef null, ptr noundef nonnull %hw_pci) #8
  call void @pci_assign_unassigned_resources() #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hw_pci) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %private_data) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cns3xxx_pci_setup(i32 noundef %nr, ptr noundef %sys) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.pci_sys_data, ptr %sys, i32 0, i32 10
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %res_io1 = getelementptr inbounds %struct.cns3xxx_pcie, ptr %1, i32 0, i32 4
  %res_mem2 = getelementptr inbounds %struct.cns3xxx_pcie, ptr %1, i32 0, i32 5
  %call3 = tail call i32 @request_resource(ptr noundef nonnull @iomem_resource, ptr noundef %res_io1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.do.body8_crit_edge, !prof !47

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body8

lor.rhs:                                          ; preds = %entry
  %call4 = tail call i32 @request_resource(ptr noundef nonnull @iomem_resource, ptr noundef %res_mem2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end13, label %lor.rhs.do.body8_crit_edge, !prof !47

lor.rhs.do.body8_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body8

do.body8:                                         ; preds = %lor.rhs.do.body8_crit_edge, %entry.do.body8_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-cns3xxx/pcie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !48
  unreachable

do.end13:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %resources = getelementptr inbounds %struct.pci_sys_data, ptr %sys, i32 0, i32 5
  %io_offset = getelementptr inbounds %struct.pci_sys_data, ptr %sys, i32 0, i32 3
  %2 = ptrtoint ptr %io_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_offset, align 8
  tail call void @pci_add_resource_offset(ptr noundef %resources, ptr noundef %res_io1, i32 noundef %3) #8
  %mem_offset = getelementptr inbounds %struct.pci_sys_data, ptr %sys, i32 0, i32 2
  %4 = ptrtoint ptr %mem_offset to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %mem_offset, align 8
  %conv = trunc i64 %5 to i32
  tail call void @pci_add_resource_offset(ptr noundef %resources, ptr noundef %res_mem2, i32 noundef %conv) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cns3xxx_pcie_map_irq(ptr nocapture noundef readonly %dev, i8 noundef zeroext %slot, i8 noundef zeroext %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %sysdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata.i, align 8
  %private_data.i.i = getelementptr inbounds %struct.pci_sys_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i.i, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %number, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool = icmp ne i8 %7, 0
  %lnot.ext = zext i1 %tobool to i32
  %arrayidx = getelementptr %struct.cns3xxx_pcie, ptr %3, i32 0, i32 3, i32 %lnot.ext
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 16
  %10 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %domain_nr.i, align 8
  %conv = zext i8 %7 to i32
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  %12 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %13, 3
  %and = and i32 %shr, 31
  %and7 = and i32 %13, 7
  %conv8 = zext i8 %slot to i32
  %conv9 = zext i8 %pin to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %11, i32 noundef %conv, i32 noundef %and, i32 noundef %and7, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %9) #12
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hook_fault_code(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cns3xxx_pcie_abort_handler(i32 noundef %addr, i32 noundef %fsr, ptr nocapture noundef %regs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %fsr, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, 4
  store i32 %add, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cns3xxx_pwr_clk_en(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cns3xxx_pwr_soft_rst(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cns3xxx_pcie_check_link(ptr nocapture noundef %cnspci) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.cns3xxx_pcie, ptr %cnspci, i32 0, i32 6
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port1, align 4
  %mul = shl i32 %1, 8
  %add2 = add i32 %mul, -83883684
  %2 = inttoptr i32 %add2 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #8, !srcloc !49
  %or = or i32 %3, 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 %or) #8, !srcloc !50
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %1) #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %1) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add14 = add i32 %mul, -83883680
  %5 = inttoptr i32 %add14 to ptr
  %add21 = add i32 %4, 50
  br label %while.cond

while.cond:                                       ; preds = %if.else.while.cond_crit_edge, %entry
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #8, !srcloc !49
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.end18

do.end18:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  %linked = getelementptr inbounds %struct.cns3xxx_pcie, ptr %cnspci, i32 0, i32 7
  %7 = ptrtoint ptr %linked to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %linked, align 4
  br label %while.end

if.else:                                          ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add21, %8
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end25, label %if.else.while.cond_crit_edge

if.else.while.cond_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

do.end25:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #12
  br label %while.end

while.end:                                        ; preds = %do.end25, %do.end18
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cns3xxx_pcie_hw_init(ptr nocapture noundef readonly %cnspci) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %res_mem = getelementptr inbounds %struct.cns3xxx_pcie, ptr %cnspci, i32 0, i32 5
  %0 = ptrtoint ptr %res_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %res_mem, align 4
  %shr = lshr i32 %1, 16
  %end = getelementptr inbounds %struct.cns3xxx_pcie, ptr %cnspci, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  %shr2 = and i32 %3, -65536
  %res_io = getelementptr inbounds %struct.cns3xxx_pcie, ptr %cnspci, i32 0, i32 4
  %4 = ptrtoint ptr %res_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %res_io, align 4
  %shr5 = lshr i32 %5, 16
  %end8 = getelementptr inbounds %struct.cns3xxx_pcie, ptr %cnspci, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %end8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end8, align 4
  %shr9 = and i32 %7, -65536
  %8 = ptrtoint ptr %cnspci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cnspci, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !49
  %11 = and i32 %10, 16777215
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #8, !srcloc !50
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !49
  %13 = ptrtoint ptr %cnspci to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cnspci, align 4
  %add.ptr.i31 = getelementptr i8, ptr %14, i32 24
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #8, !srcloc !49
  %16 = and i32 %15, -16711681
  %17 = or i32 %16, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %17) #8, !srcloc !50
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #8, !srcloc !49
  %19 = ptrtoint ptr %cnspci to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cnspci, align 4
  %add.ptr.i33 = getelementptr i8, ptr %20, i32 24
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #8, !srcloc !49
  %22 = and i32 %21, -65281
  %23 = or i32 %22, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %23) #8, !srcloc !50
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #8, !srcloc !49
  %25 = ptrtoint ptr %cnspci to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cnspci, align 4
  %add.ptr.i36 = getelementptr i8, ptr %26, i32 32
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #8, !srcloc !49
  %28 = and i32 %27, 65535
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %or.i38 = or i32 %29, %shr
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i38) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %30) #8, !srcloc !50
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #8, !srcloc !49
  %32 = ptrtoint ptr %cnspci to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cnspci, align 4
  %add.ptr.i39 = getelementptr i8, ptr %33, i32 32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #8, !srcloc !49
  %35 = and i32 %34, -65536
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %or.i41 = or i32 %36, %shr2
  %37 = tail call i32 @llvm.bswap.i32(i32 %or.i41) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %37) #8, !srcloc !50
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #8, !srcloc !49
  %39 = ptrtoint ptr %cnspci to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cnspci, align 4
  %add.ptr.i42 = getelementptr i8, ptr %40, i32 48
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #8, !srcloc !49
  %42 = and i32 %41, 65535
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %or.i44 = or i32 %43, %shr5
  %44 = tail call i32 @llvm.bswap.i32(i32 %or.i44) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %44) #8, !srcloc !50
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #8, !srcloc !49
  %46 = ptrtoint ptr %cnspci to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cnspci, align 4
  %add.ptr.i45 = getelementptr i8, ptr %47, i32 48
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #8, !srcloc !49
  %49 = and i32 %48, -65536
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %or.i48 = or i32 %50, %shr9
  %51 = tail call i32 @llvm.bswap.i32(i32 %or.i48) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %51) #8, !srcloc !50
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #8, !srcloc !49
  %linked = getelementptr inbounds %struct.cns3xxx_pcie, ptr %cnspci, i32 0, i32 7
  %53 = ptrtoint ptr %linked to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %linked, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not = icmp eq i8 %54, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pcie_bus_config to i32))
  store i32 4, ptr @pcie_bus_config, align 4
  %port = getelementptr inbounds %struct.cns3xxx_pcie, ptr %cnspci, i32 0, i32 6
  %55 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port, align 4
  %mul = shl i32 %56, 8
  %add15 = add i32 %mul, -83883656
  %57 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %57, i32 -16384) #8, !srcloc !50
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_assign_unassigned_resources() local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @cns3xxx_pci_map_bus(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.pci_sys_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i.i, align 4
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %number, align 4
  %linked = getelementptr inbounds %struct.cns3xxx_pcie, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %linked to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %linked, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp ne i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %if.else18 [
    i8 0, label %if.then4
    i8 1, label %if.then12
  ]

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %devfn)
  %cmp5 = icmp eq i32 %devfn, 0
  br i1 %cmp5, label %if.then7, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  br label %if.end21

if.then12:                                        ; preds = %if.end
  %11 = and i32 %devfn, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp13 = icmp eq i32 %11, 0
  br i1 %cmp13, label %if.then15, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %cfg0_regs = getelementptr inbounds %struct.cns3xxx_pcie, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %cfg0_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg0_regs, align 4
  br label %if.end21

if.else18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cfg1_regs = getelementptr inbounds %struct.cns3xxx_pcie, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %cfg1_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg1_regs, align 4
  %16 = and i8 %5, 15
  %and19 = zext i8 %16 to i32
  %shl = shl nuw nsw i32 %and19, 20
  %add.ptr = getelementptr i8, ptr %15, i32 %shl
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then15, %if.then7
  %base.0 = phi ptr [ %10, %if.then7 ], [ %13, %if.then15 ], [ %add.ptr, %if.else18 ]
  %add.ptr22 = getelementptr i8, ptr %base.0, i32 %where
  %shl23 = shl i32 %devfn, 12
  %add.ptr24 = getelementptr i8, ptr %add.ptr22, i32 %shl23
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then12.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr24, %if.end21 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.then4.cleanup_crit_edge ], [ null, %if.then12.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cns3xxx_pci_read_config(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %size, 3
  %sh_prom = zext i32 %mul to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %0 = trunc i64 %notmask to i32
  %conv = xor i32 %0, -1
  %rem = srem i32 %where, 4
  %mul1 = shl nsw i32 %rem, 3
  %call = tail call i32 @pci_generic_config_read(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %1 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %number, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %devfn)
  %tobool4.not = icmp eq i32 %devfn, 0
  %or.cond = and i1 %tobool4.not, %tobool.not
  %and = and i32 %where, 4092
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp6 = icmp eq i32 %and, 8
  %or.cond20 = and i1 %cmp6, %or.cond
  br i1 %or.cond20, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %shl8 = shl i32 %4, %mul1
  %and9 = and i32 %shl8, 255
  %or = or i32 %and9, 100925440
  %shr = lshr i32 %or, %mul1
  %and10 = and i32 %shr, %conv
  store i32 %and10, ptr %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_add_resource_offset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_common_init_dev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-cns3xxx/pcie.c", i32 278, i32 4}
!2 = !{ptr @cns3xxx_pcie_ops, !3, !"cns3xxx_pcie_ops", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-cns3xxx/pcie.c", i32 122, i32 23}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-cns3xxx/pcie.c", i32 133, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @cns3xxx_pcie_map_irq._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @cns3xxx_pcie_map_irq._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-cns3xxx/pcie.c", i32 195, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @cns3xxx_pcie_check_link._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @cns3xxx_pcie_check_link._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-cns3xxx/pcie.c", i32 196, i32 2}
!17 = !{ptr @cns3xxx_pcie_check_link._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @cns3xxx_pcie_check_link._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-cns3xxx/pcie.c", i32 202, i32 4}
!21 = !{ptr @cns3xxx_pcie_check_link._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @cns3xxx_pcie_check_link._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-cns3xxx/pcie.c", i32 206, i32 4}
!25 = !{ptr @cns3xxx_pcie_check_link._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @cns3xxx_pcie_check_link._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-cns3xxx/pcie.c", i32 146, i32 12}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../arch/arm/mach-cns3xxx/pcie.c", i32 152, i32 12}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-cns3xxx/pcie.c", i32 165, i32 12}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-cns3xxx/pcie.c", i32 171, i32 12}
!35 = !{ptr @cns3xxx_pcie, !36, !"cns3xxx_pcie", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-cns3xxx/pcie.c", i32 140, i32 28}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"auto-init"}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 2154496537, i64 2154501091, i64 2154496574, i64 2154496630, i64 2154496664, i64 2154496688, i64 2154496729, i64 2154496750, i64 2154496778, i64 2154496812}
!49 = !{i64 4986386}
!50 = !{i64 4985968}
!51 = !{i8 0, i8 2}
