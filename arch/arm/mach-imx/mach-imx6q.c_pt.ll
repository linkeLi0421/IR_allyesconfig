; ModuleID = '/llk/IR_all_yes/arch/arm/mach-imx/mach-imx6q.c_pt.bc'
source_filename = "../arch/arm/mach-imx/mach-imx6q.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_fixup = type { i16, i16, i32, i32, ptr }
%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.70, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.70 = type { ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }

@__pci_fixup_ventana_pciesw_early_fixup67 = internal constant %struct.pci_fixup { i16 4277, i16 -31223, i32 -1, i32 0, ptr @ventana_pciesw_early_fixup }, section ".pci_fixup_early", align 4
@__pci_fixup_ventana_pciesw_early_fixup68 = internal constant %struct.pci_fixup { i16 4277, i16 -31226, i32 -1, i32 0, ptr @ventana_pciesw_early_fixup }, section ".pci_fixup_early", align 4
@__pci_fixup_ventana_pciesw_early_fixup69 = internal constant %struct.pci_fixup { i16 4277, i16 -31228, i32 -1, i32 0, ptr @ventana_pciesw_early_fixup }, section ".pci_fixup_early", align 4
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Freescale i.MX6 Quad/DualLite (Device Tree)\00", [52 x i8] zeroinitializer }, align 32
@imx6q_dt_compat = internal constant [4 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr null], section ".init.rodata", align 4
@imx_smp_ops = external dso_local constant %struct.smp_operations, align 4
@__mach_desc_IMX6Q = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @imx6q_dt_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 -1, ptr null, ptr @imx_smp_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx6q_map_io, ptr null, ptr @imx6q_init_irq, ptr null, ptr @imx6q_init_machine, ptr @imx6q_init_late, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gw,ventana\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,imx6dl\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsl,imx6q\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,imx6qp\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,imx6q-ccm\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i.MX6QP\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i.MX6DL\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i.MX6Q\00", [25 x i8] zeroinitializer }, align 32
@__mxc_cpu_type = external dso_local local_unnamed_addr global i32, align 4
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,imx6q-fec\00", [18 x i8] zeroinitializer }, align 32
@imx6q_1588_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: failed to find fec node\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx6q_1588_init\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"arch/arm/mach-imx/mach-imx6q.c\00", [33 x i8] zeroinitializer }, align 32
@imx6q_1588_init._entry_ptr = internal global ptr @imx6q_1588_init._entry, section ".printk_index", align 4
@imx6q_1588_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.12, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: failed to get ptp clock\0A\00", [33 x i8] zeroinitializer }, align 32
@imx6q_1588_init._entry_ptr.15 = internal global ptr @imx6q_1588_init._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_ref\00", [23 x i8] zeroinitializer }, align 32
@imx6q_1588_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.12, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s: failed to get enet clock\0A\00", [32 x i8] zeroinitializer }, align 32
@imx6q_1588_init._entry_ptr.19 = internal global ptr @imx6q_1588_init._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,imx6q-iomuxc-gpr\00", [43 x i8] zeroinitializer }, align 32
@imx6q_1588_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.12, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013failed to find fsl,imx6q-iomuxc-gpr regmap\0A\00", [50 x i8] zeroinitializer }, align 32
@imx6q_1588_init._entry_ptr.23 = internal global ptr @imx6q_1588_init._entry.21, section ".printk_index", align 4
@imx6q_axi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.12, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014failed to find fsl,imx6q-iomuxc-gpr regmap\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx6q_axi_init\00", [17 x i8] zeroinitializer }, align 32
@imx6q_axi_init._entry_ptr = internal global ptr @imx6q_axi_init._entry, section ".printk_index", align 4
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imx6q-cpufreq\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 223, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 51, i32 32 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 217, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 218, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 219, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 213, i32 19 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 169, i32 25 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 171, i32 43 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 171, i32 55 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 87, i32 43 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 89, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 95, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 99, i32 31 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 101, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 113, i32 43 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 119, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 157, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [34 x i8] c"../arch/arm/mach-imx/mach-imx6q.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 197, i32 35 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__mach_desc_IMX6Q, ptr @__pci_fixup_ventana_pciesw_early_fixup67, ptr @__pci_fixup_ventana_pciesw_early_fixup68, ptr @__pci_fixup_ventana_pciesw_early_fixup69, ptr @imx6q_1588_init._entry, ptr @imx6q_1588_init._entry.13, ptr @imx6q_1588_init._entry.17, ptr @imx6q_1588_init._entry.21, ptr @imx6q_1588_init._entry_ptr, ptr @imx6q_1588_init._entry_ptr.15, ptr @imx6q_1588_init._entry_ptr.19, ptr @imx6q_1588_init._entry_ptr.23, ptr @imx6q_axi_init._entry, ptr @imx6q_axi_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_1588_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_1588_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_1588_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_1588_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_axi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ventana_pciesw_early_fixup(ptr noundef %dev) #0 align 64 {
entry:
  %dw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dw) #5
  %0 = ptrtoint ptr %dw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dw, align 4, !annotation !67
  %call = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  %1 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %devfn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 1580, ptr noundef nonnull %dw) #5
  %3 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dw, align 4
  %or = or i32 %4, 43688
  store i32 %or, ptr %dw, align 4
  %call4 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 1580, i32 noundef %or) #5
  %call5 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 1604, ptr noundef nonnull %dw) #5
  %5 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dw, align 4
  %or6 = or i32 %6, 254
  store i32 %or6, ptr %dw, align 4
  %call7 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 1604, i32 noundef %or6) #5
  call void @msleep(i32 noundef 100) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dw) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx6q_map_io() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debug_ll_io_init() #5
  tail call void @imx_scu_map_io() #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx6q_init_irq() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @imx_gpc_check_dt() #5
  tail call void @imx_init_revision_from_anatop() #5
  tail call void @imx_init_l2cache() #5
  tail call void @imx_src_init() #5
  tail call void @irqchip_init() #5
  tail call void @imx6_pm_ccm_init(ptr noundef nonnull @.str.5) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx6q_init_machine() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__mxc_cpu_type to i32))
  %0 = load i32, ptr @__mxc_cpu_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %0)
  %cmp.i = icmp eq i32 %0, 99
  br i1 %cmp.i, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @imx_get_soc_revision() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call1)
  %cmp = icmp ugt i32 %call1, 31
  br i1 %cmp, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @imx_get_soc_revision() #5
  %sub = add i32 %call2, -16
  tail call void @imx_print_silicon_rev(ptr noundef nonnull @.str.6, i32 noundef %sub) #5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__mxc_cpu_type to i32))
  %1 = load i32, ptr @__mxc_cpu_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 97, i32 %1)
  %cmp.i7 = icmp eq i32 %1, 97
  %cond = select i1 %cmp.i7, ptr @.str.7, ptr @.str.8
  %call4 = tail call i32 @imx_get_soc_revision() #5
  tail call void @imx_print_silicon_rev(ptr noundef nonnull %cond, i32 noundef %call4) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call.i = tail call i32 @phy_register_fixup_for_uid(i32 noundef 2233872, i32 noundef 16777200, ptr noundef nonnull @ksz9021rn_phy_fixup) #5
  %call5 = tail call i32 @of_platform_default_populate(ptr noundef null, ptr noundef null, ptr noundef null) #5
  tail call void @imx_anatop_init() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__mxc_cpu_type to i32))
  %2 = load i32, ptr @__mxc_cpu_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %2)
  %cmp.i8 = icmp eq i32 %2, 99
  br i1 %cmp.i8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @imx6q_pm_init() #5
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @imx6dl_pm_init() #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  tail call fastcc void @imx6q_1588_init() #8
  tail call fastcc void @imx6q_axi_init() #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx6q_init_late() #1 section ".init.text" align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__mxc_cpu_type to i32))
  %0 = load i32, ptr @__mxc_cpu_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %0)
  %cmp.i = icmp eq i32 %0, 99
  br i1 %cmp.i, label %land.lhs.true, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @imx_get_soc_revision() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call1)
  %cmp = icmp ugt i32 %call1, 17
  br i1 %cmp, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.falsethread-pre-split

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.falsethread-pre-split:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__mxc_cpu_type to i32))
  %.pr = load i32, ptr @__mxc_cpu_type, align 4
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.lhs.falsethread-pre-split, %entry.lor.lhs.false_crit_edge
  %1 = phi i32 [ %.pr, %lor.lhs.falsethread-pre-split ], [ %0, %entry.lor.lhs.false_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 97, i32 %1)
  %cmp.i8 = icmp eq i32 %1, 97
  br i1 %cmp.i8, label %land.lhs.true3, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @imx_get_soc_revision() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call4)
  %cmp5 = icmp ugt i32 %call4, 16
  br i1 %cmp5, label %land.lhs.true3.if.then_crit_edge, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true3.if.then_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %land.lhs.true3.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %call6 = tail call i32 @imx6q_cpuidle_init() #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  %2 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 48)
  %4 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %fwnode.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %2, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.26, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %8 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %properties.i.i, align 8
  %10 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_ll_io_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_scu_map_io() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_gpc_check_dt() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_init_revision_from_anatop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_init_l2cache() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_src_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irqchip_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx6_pm_ccm_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_get_soc_revision() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_print_silicon_rev(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_default_populate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_anatop_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx6q_pm_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx6dl_pm_init() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx6q_1588_init() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_clk_get(ptr noundef nonnull %call, i32 noundef 2) #5
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11) #9
  br label %put_node

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.16) #5
  %cmp.i42 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.11) #9
  br label %put_ptp_clk

if.end19:                                         ; preds = %if.end10
  %call20 = tail call zeroext i1 @clk_is_match(ptr noundef %call2, ptr noundef %call11) #5
  %call21 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.20) #5
  %cmp.i43 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i43, label %do.end27, label %if.then23

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %cond = select i1 %call20, i32 2097152, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call21, i32 noundef 4, i32 noundef 2097152, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end30

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #9
  br label %if.end30

if.end30:                                         ; preds = %do.end27, %if.then23
  tail call void @clk_put(ptr noundef %call11) #5
  br label %put_ptp_clk

put_ptp_clk:                                      ; preds = %if.end30, %do.end16
  tail call void @clk_put(ptr noundef %call2) #5
  br label %put_node

put_node:                                         ; preds = %put_ptp_clk, %do.end7
  tail call void @of_node_put(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %put_node, %do.end
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx6q_axi_init() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.20) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef 16, i32 noundef 207, i32 noundef 207, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef 24, i32 noundef 16711680, i32 noundef 8323072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i11 = tail call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef 28, i32 noundef 16711680, i32 noundef 8323072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_register_fixup_for_uid(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9021rn_phy_fixup(ptr nocapture noundef readonly %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 11, i16 noundef zeroext -32507) #5
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i11 = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 12, i16 noundef zeroext 0) #5
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i14 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 11, i16 noundef zeroext -32508) #5
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 8
  %call.i17 = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 12, i16 noundef zeroext -3856) #5
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 8
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i, align 8
  %call.i20 = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 11, i16 noundef zeroext 260) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_sys(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clk_is_match(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx6q_cpuidle_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__pci_fixup_ventana_pciesw_early_fixup67, !1, !"__pci_fixup_ventana_pciesw_early_fixup67", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-imx/mach-imx6q.c", i32 67, i32 1}
!2 = !{ptr @__pci_fixup_ventana_pciesw_early_fixup68, !3, !"__pci_fixup_ventana_pciesw_early_fixup68", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-imx/mach-imx6q.c", i32 68, i32 1}
!4 = !{ptr @__pci_fixup_ventana_pciesw_early_fixup69, !5, !"__pci_fixup_ventana_pciesw_early_fixup69", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-imx/mach-imx6q.c", i32 69, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-imx/mach-imx6q.c", i32 223, i32 1}
!8 = !{ptr @__mach_desc_IMX6Q, !7, !"__mach_desc_IMX6Q", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../arch/arm/mach-imx/mach-imx6q.c", i32 51, i32 32}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-imx/mach-imx6q.c", i32 217, i32 2}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-imx/mach-imx6q.c", i32 218, i32 2}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-imx/mach-imx6q.c", i32 219, i32 2}
!17 = !{ptr @imx6q_dt_compat, !18, !"imx6q_dt_compat", i1 false, i1 false}
!18 = !{!"../arch/arm/mach-imx/mach-imx6q.c", i32 216, i32 27}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-imx/mach-imx6q.c", i32 213, i32 19}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../arch/arm/mach-imx/mach-imx6q.c", i32 169, i32 25}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-imx/mach-imx6q.c", i32 171, i32 43}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-imx/mach-imx6q.c", i32 171, i32 55}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-imx/mach-imx6q.c", i32 87, i32 43}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../arch/arm/mach-imx/mach-imx6q.c", i32 89, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @imx6q_1588_init._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @imx6q_1588_init._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-imx/mach-imx6q.c", i32 95, i32 3}
!37 = !{ptr @imx6q_1588_init._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @imx6q_1588_init._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../arch/arm/mach-imx/mach-imx6q.c", i32 99, i32 31}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../arch/arm/mach-imx/mach-imx6q.c", i32 101, i32 3}
!43 = !{ptr @imx6q_1588_init._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @imx6q_1588_init._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../arch/arm/mach-imx/mach-imx6q.c", i32 113, i32 43}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../arch/arm/mach-imx/mach-imx6q.c", i32 119, i32 3}
!49 = !{ptr @imx6q_1588_init._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @imx6q_1588_init._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../arch/arm/mach-imx/mach-imx6q.c", i32 157, i32 3}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @imx6q_axi_init._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @imx6q_axi_init._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../arch/arm/mach-imx/mach-imx6q.c", i32 197, i32 35}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"auto-init"}
