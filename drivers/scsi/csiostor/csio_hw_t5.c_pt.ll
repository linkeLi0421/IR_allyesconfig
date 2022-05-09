; ModuleID = '/llk/IR_all_yes/drivers/scsi/csiostor/csio_hw_t5.c_pt.bc'
source_filename = "../drivers/scsi/csiostor/csio_hw_t5.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.csio_hw_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.intr_info = type { i32, ptr, i16, i16 }
%struct.csio_hw = type { %struct.csio_sm, %struct.spinlock, %struct.csio_scsim, %struct.csio_wrm, ptr, ptr, i32, i32, [4 x [128 x %struct.csio_scsi_qset]], [4 x %struct.csio_scsi_cpu_info], i32, i32, %struct.csio_mgmtm, %struct.csio_mbm, i32, ptr, %struct.list_head, i32, i32, %struct.work_struct, %struct.list_head, %struct.list_head, [32 x i8], [16 x i8], [32 x i8], [32 x i8], [32 x i8], i32, i32, i32, i8, i16, i32, %struct.csio_vpd, i8, i32, i8, i8, i8, i8, i32, [4 x %struct.csio_pport], %struct.csio_hw_params, ptr, ptr, ptr, i32, i32, i32, i8, i8, %struct.csio_fcoe_res_info, ptr, [514 x %struct.csio_msix_entries], ptr, %struct.csio_hw_stats }
%struct.csio_sm = type { %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.csio_scsim = type { ptr, i8, i8, i16, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.csio_scsi_stats }
%struct.csio_scsi_stats = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_wrm = type { i32, ptr, i32, i32, [128 x ptr], i32, %struct.csio_sge }
%struct.csio_sge = type { i32, i32, i32, [16 x i32], [6 x i16], [4 x i8] }
%struct.csio_scsi_qset = type { i32, i32, i32 }
%struct.csio_scsi_cpu_info = type { i16 }
%struct.csio_mgmtm = type { ptr, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.csio_mgmtm_stats }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.csio_mgmtm_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_mbm = type { i32, i32, %struct.timer_list, ptr, %struct.list_head, %struct.list_head, ptr, i32, %struct.csio_mbm_stats }
%struct.csio_mbm_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.csio_vpd = type { i32, [17 x i8], [17 x i8], [17 x i8] }
%struct.csio_pport = type { i16, i16, i8, i8, i16, [6 x i8], i8, i8, i8, i8, %struct.link_config }
%struct.link_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.csio_hw_params = type { i32, i32, %struct.pci_params, i32 }
%struct.pci_params = type { i16, i16, i32, i16, i8 }
%struct.csio_fcoe_res_info = type { i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_msix_entries = type { ptr, [24 x i8] }
%struct.csio_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], i64, i32 }

@t5_ops = dso_local global { %struct.csio_hw_chip_ops, [36 x i8] } { %struct.csio_hw_chip_ops { ptr @csio_t5_set_mem_win, ptr @csio_t5_pcie_intr_handler, ptr @csio_t5_flash_cfg_addr, ptr @csio_t5_mc_read, ptr @csio_t5_edc_read, ptr @csio_t5_memory_rw, ptr @csio_t5_dfs_create_ext_mem }, [36 x i8] zeroinitializer }, align 32
@csio_t5_pcie_intr_handler.pcie_intr_info = internal global { [31 x %struct.intr_info], [76 x i8] } { [31 x %struct.intr_info] [%struct.intr_info { i32 1, ptr @.str, i16 -1, i16 1 }, %struct.intr_info { i32 2, ptr @.str.1, i16 -1, i16 1 }, %struct.intr_info { i32 4, ptr @.str.2, i16 -1, i16 1 }, %struct.intr_info { i32 8, ptr @.str.3, i16 -1, i16 1 }, %struct.intr_info { i32 16, ptr @.str.4, i16 -1, i16 1 }, %struct.intr_info { i32 32, ptr @.str.5, i16 -1, i16 1 }, %struct.intr_info { i32 64, ptr @.str.6, i16 -1, i16 1 }, %struct.intr_info { i32 128, ptr @.str.7, i16 -1, i16 1 }, %struct.intr_info { i32 256, ptr @.str.8, i16 -1, i16 1 }, %struct.intr_info { i32 512, ptr @.str.9, i16 -1, i16 1 }, %struct.intr_info { i32 1024, ptr @.str.10, i16 -1, i16 1 }, %struct.intr_info { i32 2048, ptr @.str.11, i16 -1, i16 1 }, %struct.intr_info { i32 4096, ptr @.str.12, i16 -1, i16 1 }, %struct.intr_info { i32 8192, ptr @.str.13, i16 -1, i16 1 }, %struct.intr_info { i32 16384, ptr @.str.14, i16 -1, i16 1 }, %struct.intr_info { i32 32768, ptr @.str.15, i16 -1, i16 1 }, %struct.intr_info { i32 65536, ptr @.str.16, i16 -1, i16 1 }, %struct.intr_info { i32 131072, ptr @.str.17, i16 -1, i16 1 }, %struct.intr_info { i32 262144, ptr @.str.18, i16 -1, i16 1 }, %struct.intr_info { i32 524288, ptr @.str.19, i16 -1, i16 1 }, %struct.intr_info { i32 1048576, ptr @.str.20, i16 -1, i16 1 }, %struct.intr_info { i32 2097152, ptr @.str.21, i16 -1, i16 1 }, %struct.intr_info { i32 4194304, ptr @.str.22, i16 -1, i16 1 }, %struct.intr_info { i32 8388608, ptr @.str.23, i16 -1, i16 1 }, %struct.intr_info { i32 16777216, ptr @.str.24, i16 -1, i16 1 }, %struct.intr_info { i32 33554432, ptr @.str.25, i16 -1, i16 1 }, %struct.intr_info { i32 67108864, ptr @.str.26, i16 -1, i16 1 }, %struct.intr_info { i32 134217728, ptr @.str.27, i16 -1, i16 1 }, %struct.intr_info { i32 268435456, ptr @.str.28, i16 -1, i16 1 }, %struct.intr_info { i32 536870912, ptr @.str.29, i16 -1, i16 0 }, %struct.intr_info zeroinitializer], [76 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Master Response Read Queue parity error\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Master Timeout FIFO parity error\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MSI-X STI SRAM parity error\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MSI-X AddrL parity error\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MSI-X AddrH parity error\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MSI-X data parity error\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MSI-X DI parity error\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"PCI PIO completion Group FIFO parity error\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"PCI PIO request Group FIFO parity error\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PCI PCI target tag FIFO parity error\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"PCI master tag queue parity error\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PCI CMD channel request parity error\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PCI CMD channel response parity error\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"PCI DMA channel write request parity error\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PCI DMA channel request parity error\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PCI DMA channel response parity error\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PCI HMA channel count parity error\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PCI HMA channel request parity error\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PCI HMA channel response parity error\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PCI config snoop FIFO parity error\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PCI FID parity error\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PCI INTx clear parity error\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PCI MA group FIFO parity error\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PCI PIO tag parity error\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PCI IP Rx header group parity error\00", [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"PCI IP Rx data group parity error\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"PCI IP replay buffer parity error\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PCI IP SOT buffer parity error\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PCI TRGT1 group FIFOs parity error\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Outbound read error\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mc0\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mc1\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"t5_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 361, i32 25 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"pcie_intr_info\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 74, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 75, i32 19 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 77, i32 23 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 78, i32 20 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 79, i32 22 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 80, i32 22 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 81, i32 21 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 82, i32 19 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 83, i32 22 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 85, i32 22 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 87, i32 19 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 88, i32 20 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 89, i32 17 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 90, i32 17 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 91, i32 19 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 93, i32 17 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 94, i32 17 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 95, i32 19 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 96, i32 17 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 97, i32 17 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 98, i32 19 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 99, i32 16 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 100, i32 17 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 101, i32 18 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 102, i32 19 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 103, i32 23 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 105, i32 24 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 107, i32 16 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 108, i32 18 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 109, i32 21 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 110, i32 19 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 350, i32 28 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [38 x i8] c"../drivers/scsi/csiostor/csio_hw_t5.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 355, i32 28 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @t5_ops, ptr @csio_t5_pcie_intr_handler.pcie_intr_info, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t5_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_t5_pcie_intr_handler.pcie_intr_info to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_t5_set_mem_win(ptr nocapture noundef readonly %hw, i32 noundef %win) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  tail call void @arm_heavy_mb() #4
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regstart, align 4
  %mul = shl i32 %win, 3
  %add = add i32 %mul, 12392
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 28836096) #4, !srcloc !78
  %2 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regstart, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #4, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !80
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_t5_pcie_intr_handler(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @csio_handle_intr_status(ptr noundef %hw, i32 noundef 12292, ptr noundef nonnull @csio_t5_pcie_intr_handler.pcie_intr_info) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @csio_hw_fatal_err(ptr noundef %hw) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @csio_t5_flash_cfg_addr(ptr nocapture noundef readnone %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2031616
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_t5_mc_read(ptr noundef %hw, i32 noundef %idx, i32 noundef %addr, ptr nocapture noundef writeonly %data, ptr noundef writeonly %ecc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %idx, 15
  %add = add i32 %mul, 267264
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !81
  %.mask = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  %add6 = add i32 %mul, 267276
  %add4 = add i32 %mul, 267272
  %add2 = add i32 %mul, 267268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  tail call void @arm_heavy_mb() #4
  %and8 = and i32 %addr, -64
  %3 = tail call i32 @llvm.bswap.i32(i32 %and8)
  %4 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regstart, align 4
  %add.ptr10 = getelementptr i8, ptr %5, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %3) #4, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !83
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regstart, align 4
  %add.ptr15 = getelementptr i8, ptr %7, i32 %add4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 1073741824) #4, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !84
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regstart, align 4
  %add.ptr20 = getelementptr i8, ptr %9, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 201326592) #4, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regstart, align 4
  %add.ptr25 = getelementptr i8, ptr %11, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 16842880) #4, !srcloc !78
  %call26 = tail call i32 @csio_hw_wait_op_done_val(ptr noundef %hw, i32 noundef %add, i32 noundef -2147483648, i32 noundef 0, i32 noundef 10, i32 noundef 1, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %for.body.preheader, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader:                               ; preds = %do.body
  %12 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regstart, align 4
  %add.ptr35 = getelementptr i8, ptr %13, i32 30404
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #4, !srcloc !79
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  %incdec.ptr = getelementptr i32, ptr %data, i32 1
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %data, align 4
  %17 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regstart, align 4
  %add.ptr35.1 = getelementptr i8, ptr %18, i32 30400
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.1) #4, !srcloc !79
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  %incdec.ptr.1 = getelementptr i32, ptr %data, i32 2
  %21 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %incdec.ptr, align 4
  %22 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regstart, align 4
  %add.ptr35.2 = getelementptr i8, ptr %23, i32 30396
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.2) #4, !srcloc !79
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  %incdec.ptr.2 = getelementptr i32, ptr %data, i32 3
  %26 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %incdec.ptr.1, align 4
  %27 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regstart, align 4
  %add.ptr35.3 = getelementptr i8, ptr %28, i32 30392
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.3) #4, !srcloc !79
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  %incdec.ptr.3 = getelementptr i32, ptr %data, i32 4
  %31 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %incdec.ptr.2, align 4
  %32 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regstart, align 4
  %add.ptr35.4 = getelementptr i8, ptr %33, i32 30388
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.4) #4, !srcloc !79
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  %incdec.ptr.4 = getelementptr i32, ptr %data, i32 5
  %36 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %incdec.ptr.3, align 4
  %37 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regstart, align 4
  %add.ptr35.5 = getelementptr i8, ptr %38, i32 30384
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.5) #4, !srcloc !79
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  %incdec.ptr.5 = getelementptr i32, ptr %data, i32 6
  %41 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %incdec.ptr.4, align 4
  %42 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regstart, align 4
  %add.ptr35.6 = getelementptr i8, ptr %43, i32 30380
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.6) #4, !srcloc !79
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  %incdec.ptr.6 = getelementptr i32, ptr %data, i32 7
  %46 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %incdec.ptr.5, align 4
  %47 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regstart, align 4
  %add.ptr35.7 = getelementptr i8, ptr %48, i32 30376
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.7) #4, !srcloc !79
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  %incdec.ptr.7 = getelementptr i32, ptr %data, i32 8
  %51 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %incdec.ptr.6, align 4
  %52 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regstart, align 4
  %add.ptr35.8 = getelementptr i8, ptr %53, i32 30372
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.8) #4, !srcloc !79
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  %incdec.ptr.8 = getelementptr i32, ptr %data, i32 9
  %56 = ptrtoint ptr %incdec.ptr.7 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %incdec.ptr.7, align 4
  %57 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regstart, align 4
  %add.ptr35.9 = getelementptr i8, ptr %58, i32 30368
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.9) #4, !srcloc !79
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  %incdec.ptr.9 = getelementptr i32, ptr %data, i32 10
  %61 = ptrtoint ptr %incdec.ptr.8 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %incdec.ptr.8, align 4
  %62 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regstart, align 4
  %add.ptr35.10 = getelementptr i8, ptr %63, i32 30364
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.10) #4, !srcloc !79
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  %incdec.ptr.10 = getelementptr i32, ptr %data, i32 11
  %66 = ptrtoint ptr %incdec.ptr.9 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %incdec.ptr.9, align 4
  %67 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regstart, align 4
  %add.ptr35.11 = getelementptr i8, ptr %68, i32 30360
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.11) #4, !srcloc !79
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  %incdec.ptr.11 = getelementptr i32, ptr %data, i32 12
  %71 = ptrtoint ptr %incdec.ptr.10 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %incdec.ptr.10, align 4
  %72 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regstart, align 4
  %add.ptr35.12 = getelementptr i8, ptr %73, i32 30356
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.12) #4, !srcloc !79
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  %incdec.ptr.12 = getelementptr i32, ptr %data, i32 13
  %76 = ptrtoint ptr %incdec.ptr.11 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %incdec.ptr.11, align 4
  %77 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regstart, align 4
  %add.ptr35.13 = getelementptr i8, ptr %78, i32 30352
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.13) #4, !srcloc !79
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  %incdec.ptr.13 = getelementptr i32, ptr %data, i32 14
  %81 = ptrtoint ptr %incdec.ptr.12 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %incdec.ptr.12, align 4
  %82 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regstart, align 4
  %add.ptr35.14 = getelementptr i8, ptr %83, i32 30348
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.14) #4, !srcloc !79
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  %incdec.ptr.14 = getelementptr i32, ptr %data, i32 15
  %86 = ptrtoint ptr %incdec.ptr.13 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %incdec.ptr.13, align 4
  %87 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regstart, align 4
  %add.ptr35.15 = getelementptr i8, ptr %88, i32 30344
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.15) #4, !srcloc !79
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  %91 = ptrtoint ptr %incdec.ptr.14 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %incdec.ptr.14, align 4
  %tobool39.not = icmp eq ptr %ecc, null
  br i1 %tobool39.not, label %for.body.preheader.cleanup_crit_edge, label %if.then40

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then40:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %92 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regstart, align 4
  %add.ptr42 = getelementptr i8, ptr %93, i32 30408
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #4, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
  %add.ptr.i = getelementptr i8, ptr %93, i32 30412
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !88
  %96 = zext i32 %95 to i64
  %97 = zext i32 %94 to i64
  %98 = shl nuw i64 %97, 32
  %99 = or i64 %98, %96
  %100 = tail call i64 @llvm.bswap.i64(i64 %99) #4
  %101 = ptrtoint ptr %ecc to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %ecc, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %for.body.preheader.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ %call26, %do.body.cleanup_crit_edge ], [ 0, %if.then40 ], [ 0, %for.body.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_t5_edc_read(ptr noundef %hw, i32 noundef %idx, i32 noundef %addr, ptr nocapture noundef writeonly %data, ptr noundef writeonly %ecc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %idx, 11
  %add = add i32 %mul, 327684
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !89
  %.mask = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  %add6 = add i32 %mul, 327696
  %add4 = add i32 %mul, 327692
  %add2 = add i32 %mul, 327688
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !90
  tail call void @arm_heavy_mb() #4
  %and8 = and i32 %addr, -64
  %3 = tail call i32 @llvm.bswap.i32(i32 %and8)
  %4 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regstart, align 4
  %add.ptr10 = getelementptr i8, ptr %5, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %3) #4, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !91
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regstart, align 4
  %add.ptr15 = getelementptr i8, ptr %7, i32 %add4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 1073741824) #4, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !92
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regstart, align 4
  %add.ptr20 = getelementptr i8, ptr %9, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 201326592) #4, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regstart, align 4
  %add.ptr25 = getelementptr i8, ptr %11, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 16842880) #4, !srcloc !78
  %call26 = tail call i32 @csio_hw_wait_op_done_val(ptr noundef %hw, i32 noundef %add, i32 noundef -2147483648, i32 noundef 0, i32 noundef 10, i32 noundef 1, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %for.cond.preheader, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %do.body
  %add34 = add i32 %idx, 31016
  %12 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regstart, align 4
  %add35 = add i32 %idx, 31076
  %add.ptr36 = getelementptr i8, ptr %13, i32 %add35
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #4, !srcloc !79
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  %incdec.ptr = getelementptr i32, ptr %data, i32 1
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %data, align 4
  %17 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regstart, align 4
  %add35.1 = add i32 %idx, 31072
  %add.ptr36.1 = getelementptr i8, ptr %18, i32 %add35.1
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.1) #4, !srcloc !79
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  %incdec.ptr.1 = getelementptr i32, ptr %data, i32 2
  %21 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %incdec.ptr, align 4
  %22 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regstart, align 4
  %add35.2 = add i32 %idx, 31068
  %add.ptr36.2 = getelementptr i8, ptr %23, i32 %add35.2
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.2) #4, !srcloc !79
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  %incdec.ptr.2 = getelementptr i32, ptr %data, i32 3
  %26 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %incdec.ptr.1, align 4
  %27 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regstart, align 4
  %add35.3 = add i32 %idx, 31064
  %add.ptr36.3 = getelementptr i8, ptr %28, i32 %add35.3
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.3) #4, !srcloc !79
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  %incdec.ptr.3 = getelementptr i32, ptr %data, i32 4
  %31 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %incdec.ptr.2, align 4
  %32 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regstart, align 4
  %add35.4 = add i32 %idx, 31060
  %add.ptr36.4 = getelementptr i8, ptr %33, i32 %add35.4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.4) #4, !srcloc !79
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  %incdec.ptr.4 = getelementptr i32, ptr %data, i32 5
  %36 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %incdec.ptr.3, align 4
  %37 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regstart, align 4
  %add35.5 = add i32 %idx, 31056
  %add.ptr36.5 = getelementptr i8, ptr %38, i32 %add35.5
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.5) #4, !srcloc !79
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  %incdec.ptr.5 = getelementptr i32, ptr %data, i32 6
  %41 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %incdec.ptr.4, align 4
  %42 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regstart, align 4
  %add35.6 = add i32 %idx, 31052
  %add.ptr36.6 = getelementptr i8, ptr %43, i32 %add35.6
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.6) #4, !srcloc !79
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  %incdec.ptr.6 = getelementptr i32, ptr %data, i32 7
  %46 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %incdec.ptr.5, align 4
  %47 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regstart, align 4
  %add35.7 = add i32 %idx, 31048
  %add.ptr36.7 = getelementptr i8, ptr %48, i32 %add35.7
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.7) #4, !srcloc !79
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  %incdec.ptr.7 = getelementptr i32, ptr %data, i32 8
  %51 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %incdec.ptr.6, align 4
  %52 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regstart, align 4
  %add35.8 = add i32 %idx, 31044
  %add.ptr36.8 = getelementptr i8, ptr %53, i32 %add35.8
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.8) #4, !srcloc !79
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  %incdec.ptr.8 = getelementptr i32, ptr %data, i32 9
  %56 = ptrtoint ptr %incdec.ptr.7 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %incdec.ptr.7, align 4
  %57 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regstart, align 4
  %add35.9 = add i32 %idx, 31040
  %add.ptr36.9 = getelementptr i8, ptr %58, i32 %add35.9
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.9) #4, !srcloc !79
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  %incdec.ptr.9 = getelementptr i32, ptr %data, i32 10
  %61 = ptrtoint ptr %incdec.ptr.8 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %incdec.ptr.8, align 4
  %62 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regstart, align 4
  %add35.10 = add i32 %idx, 31036
  %add.ptr36.10 = getelementptr i8, ptr %63, i32 %add35.10
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.10) #4, !srcloc !79
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  %incdec.ptr.10 = getelementptr i32, ptr %data, i32 11
  %66 = ptrtoint ptr %incdec.ptr.9 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %incdec.ptr.9, align 4
  %67 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regstart, align 4
  %add35.11 = add i32 %idx, 31032
  %add.ptr36.11 = getelementptr i8, ptr %68, i32 %add35.11
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.11) #4, !srcloc !79
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  %incdec.ptr.11 = getelementptr i32, ptr %data, i32 12
  %71 = ptrtoint ptr %incdec.ptr.10 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %incdec.ptr.10, align 4
  %72 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regstart, align 4
  %add35.12 = add i32 %idx, 31028
  %add.ptr36.12 = getelementptr i8, ptr %73, i32 %add35.12
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.12) #4, !srcloc !79
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  %incdec.ptr.12 = getelementptr i32, ptr %data, i32 13
  %76 = ptrtoint ptr %incdec.ptr.11 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %incdec.ptr.11, align 4
  %77 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regstart, align 4
  %add35.13 = add i32 %idx, 31024
  %add.ptr36.13 = getelementptr i8, ptr %78, i32 %add35.13
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.13) #4, !srcloc !79
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  %incdec.ptr.13 = getelementptr i32, ptr %data, i32 14
  %81 = ptrtoint ptr %incdec.ptr.12 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %incdec.ptr.12, align 4
  %82 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regstart, align 4
  %add35.14 = add i32 %idx, 31020
  %add.ptr36.14 = getelementptr i8, ptr %83, i32 %add35.14
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.14) #4, !srcloc !79
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  %incdec.ptr.14 = getelementptr i32, ptr %data, i32 15
  %86 = ptrtoint ptr %incdec.ptr.13 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %incdec.ptr.13, align 4
  %87 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regstart, align 4
  %add.ptr36.15 = getelementptr i8, ptr %88, i32 %add34
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.15) #4, !srcloc !79
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  %91 = ptrtoint ptr %incdec.ptr.14 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %incdec.ptr.14, align 4
  %tobool40.not = icmp eq ptr %ecc, null
  br i1 %tobool40.not, label %for.cond.preheader.cleanup_crit_edge, label %if.then41

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then41:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %92 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regstart, align 4
  %add43 = add i32 %idx, 31080
  %add.ptr44 = getelementptr i8, ptr %93, i32 %add43
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #4, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
  %add.ptr.i = getelementptr i8, ptr %add.ptr44, i32 4
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !88
  %96 = zext i32 %95 to i64
  %97 = zext i32 %94 to i64
  %98 = shl nuw i64 %97, 32
  %99 = or i64 %98, %96
  %100 = tail call i64 @llvm.bswap.i64(i64 %99) #4
  %101 = ptrtoint ptr %ecc to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %ecc, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %for.cond.preheader.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ %call26, %do.body.cleanup_crit_edge ], [ 0, %if.then41 ], [ 0, %for.cond.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_t5_memory_rw(ptr nocapture noundef readonly %hw, i32 noundef %win, i32 noundef %mtype, i32 noundef %addr, i32 noundef %len, ptr nocapture noundef %buf, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i32 %len, %addr
  %1 = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %3 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 30656
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !95
  %6 = and i32 %5, -15794176
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mtype)
  %cmp.not = icmp eq i32 %mtype, 3
  br i1 %cmp.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %mul6 = shl i32 %mtype, 20
  %mul7 = mul i32 %mul6, %7
  br label %if.end20

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regstart, align 4
  %add.ptr11 = getelementptr i8, ptr %9, i32 30664
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #4, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !96
  %11 = and i32 %10, -15794176
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %mul17 = shl nuw nsw i32 %7, 1
  %add = add nuw nsw i32 %12, %mul17
  %mul19 = shl i32 %add, 20
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then5
  %memoffset.0 = phi i32 [ %mul7, %if.then5 ], [ %mul19, %if.else ]
  %13 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regstart, align 4
  %mul25 = shl i32 %win, 3
  %add26 = add i32 %mul25, 12392
  %add.ptr27 = getelementptr i8, ptr %14, i32 %add26
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #4, !srcloc !79
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !97
  %add31 = add i32 %16, 10
  %shl32 = shl nuw i32 1, %add31
  %shr33 = and i32 %16, -1024
  %pfn = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 34
  %17 = ptrtoint ptr %pfn to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pfn, align 8
  %conv = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp39.not125 = icmp eq i32 %len, 0
  br i1 %cmp39.not125, label %if.end20.cleanup_crit_edge, label %do.body.lr.ph

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body.lr.ph:                                    ; preds = %if.end20
  %add21 = add i32 %memoffset.0, %addr
  %neg = sub i32 0, %shl32
  %and36 = and i32 %add21, %neg
  %sub37 = sub i32 %add21, %and36
  %add43 = add i32 %mul25, 12396
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool58.not = icmp eq i32 %dir, 0
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %do.body.lr.ph
  %len.addr.0129 = phi i32 [ %len, %do.body.lr.ph ], [ %len.addr.1.lcssa, %for.inc.do.body_crit_edge ]
  %buf.addr.0128 = phi ptr [ %buf, %do.body.lr.ph ], [ %buf.addr.1.lcssa, %for.inc.do.body_crit_edge ]
  %pos.0127 = phi i32 [ %and36, %do.body.lr.ph ], [ %add79, %for.inc.do.body_crit_edge ]
  %offset.0126 = phi i32 [ %sub37, %do.body.lr.ph ], [ 0, %for.inc.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !98
  tail call void @arm_heavy_mb() #4
  %or = or i32 %pos.0127, %conv
  %19 = tail call i32 @llvm.bswap.i32(i32 %or)
  %20 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regstart, align 4
  %add.ptr44 = getelementptr i8, ptr %21, i32 %add43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %19) #4, !srcloc !78
  %22 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regstart, align 4
  %add.ptr50 = getelementptr i8, ptr %23, i32 %add43
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #4, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !99
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0126, i32 %shl32)
  %cmp54117.not = icmp ult i32 %offset.0126, %shl32
  br i1 %cmp54117.not, label %do.body.while.body_crit_edge, label %do.body.for.inc_crit_edge

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.body.while.body_crit_edge:                     ; preds = %do.body
  br label %while.body

while.body:                                       ; preds = %if.end76.while.body_crit_edge, %do.body.while.body_crit_edge
  %len.addr.1123 = phi i32 [ %sub78, %if.end76.while.body_crit_edge ], [ %len.addr.0129, %do.body.while.body_crit_edge ]
  %buf.addr.1122 = phi ptr [ %buf.addr.2, %if.end76.while.body_crit_edge ], [ %buf.addr.0128, %do.body.while.body_crit_edge ]
  %offset.1120 = phi i32 [ %add77, %if.end76.while.body_crit_edge ], [ %offset.0126, %do.body.while.body_crit_edge ]
  br i1 %tobool58.not, label %do.body69, label %if.then59

if.then59:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regstart, align 4
  %add63 = add i32 %offset.1120, %shr33
  %add.ptr64 = getelementptr i8, ptr %26, i32 %add63
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #4, !srcloc !79
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !100
  %29 = ptrtoint ptr %buf.addr.1122 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %buf.addr.1122, align 4
  br label %if.end76

do.body69:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !101
  tail call void @arm_heavy_mb() #4
  %30 = ptrtoint ptr %buf.addr.1122 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buf.addr.1122, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regstart, align 4
  %add74 = add i32 %offset.1120, %shr33
  %add.ptr75 = getelementptr i8, ptr %34, i32 %add74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %32) #4, !srcloc !78
  br label %if.end76

if.end76:                                         ; preds = %do.body69, %if.then59
  %buf.addr.2 = getelementptr i32, ptr %buf.addr.1122, i32 1
  %add77 = add i32 %offset.1120, 4
  %sub78 = add i32 %len.addr.1123, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %add77, i32 %shl32)
  %cmp54 = icmp uge i32 %add77, %shl32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub78)
  %cmp56.not = icmp eq i32 %sub78, 0
  %or.cond116 = select i1 %cmp54, i1 true, i1 %cmp56.not
  br i1 %or.cond116, label %if.end76.for.inc_crit_edge, label %if.end76.while.body_crit_edge

if.end76.while.body_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end76.for.inc_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %if.end76.for.inc_crit_edge, %do.body.for.inc_crit_edge
  %buf.addr.1.lcssa = phi ptr [ %buf.addr.0128, %do.body.for.inc_crit_edge ], [ %buf.addr.2, %if.end76.for.inc_crit_edge ]
  %len.addr.1.lcssa = phi i32 [ %len.addr.0129, %do.body.for.inc_crit_edge ], [ %sub78, %if.end76.for.inc_crit_edge ]
  %add79 = add i32 %pos.0127, %shl32
  %cmp39.not = icmp eq i32 %len.addr.1.lcssa, 0
  br i1 %cmp39.not, label %for.inc.cleanup_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_t5_dfs_create_ext_mem(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 30680
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !79
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !102
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regstart, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 30664
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #4, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !103
  %7 = and i32 %6, -15794176
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void @csio_add_debugfs_mem(ptr noundef %hw, ptr noundef nonnull @.str.30, i32 noundef 2, i32 noundef %8) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and10 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end.if.end22_crit_edge, label %if.then12

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regstart, align 4
  %add.ptr16 = getelementptr i8, ptr %10, i32 30728
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #4, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !104
  %12 = and i32 %11, -15794176
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void @csio_add_debugfs_mem(ptr noundef %hw, ptr noundef nonnull @.str.31, i32 noundef 3, i32 noundef %13) #4
  br label %if.end22

if.end22:                                         ; preds = %if.then12, %if.end.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_handle_intr_status(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_hw_fatal_err(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_hw_wait_op_done_val(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_add_debugfs_mem(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @t5_ops, !1, !"t5_ops", i1 false, i1 false}
!1 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 361, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 75, i32 19}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 77, i32 23}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 78, i32 20}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 79, i32 22}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 80, i32 22}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 81, i32 21}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 82, i32 19}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 83, i32 22}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 85, i32 22}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 87, i32 19}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 88, i32 20}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 89, i32 17}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 90, i32 17}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 91, i32 19}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 93, i32 17}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 94, i32 17}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 95, i32 19}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 96, i32 17}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 97, i32 17}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 98, i32 19}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 99, i32 16}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 100, i32 17}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 101, i32 18}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 102, i32 19}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 103, i32 23}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 105, i32 24}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 107, i32 16}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 108, i32 18}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 109, i32 21}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 110, i32 19}
!62 = !{ptr @csio_t5_pcie_intr_handler.pcie_intr_info, !63, !"pcie_intr_info", i1 false, i1 false}
!63 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 74, i32 26}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 350, i32 28}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/csiostor/csio_hw_t5.c", i32 355, i32 28}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i64 2156139470}
!78 = !{i64 5011717}
!79 = !{i64 5012135}
!80 = !{i64 2156141405}
!81 = !{i64 2156143876}
!82 = !{i64 2156144335}
!83 = !{i64 2156144974}
!84 = !{i64 2156145596}
!85 = !{i64 2156146387}
!86 = !{i64 2156148567}
!87 = !{i64 2155684642}
!88 = !{i64 2155685092}
!89 = !{i64 2156149936}
!90 = !{i64 2156150398}
!91 = !{i64 2156151041}
!92 = !{i64 2156151667}
!93 = !{i64 2156152462}
!94 = !{i64 2156154734}
!95 = !{i64 2156155966}
!96 = !{i64 2156156959}
!97 = !{i64 2156157805}
!98 = !{i64 2156158386}
!99 = !{i64 2156159469}
!100 = !{i64 2156160199}
!101 = !{i64 2156160587}
!102 = !{i64 2156161487}
!103 = !{i64 2156162210}
!104 = !{i64 2156162992}
