; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac5.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac5.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dwmac5_error = type { ptr }
%struct.dwmac5_error_desc = type { i8, ptr, ptr }
%struct.stmmac_safety_feature_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_tc_entry = type { i8, i8, i8, i8, ptr, i32, i32, i32, %struct.anon.121 }
%struct.anon.121 = type { i32, i32, i8, i8, i8, i8, i32 }
%struct.stmmac_pps_cfg = type { i8, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.stmmac_est = type { %struct.mutex, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [1024 x i32], [1024 x i32], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }

@dwmac5_all_errors = internal constant { [3 x %struct.dwmac5_error], [20 x i8] } { [3 x %struct.dwmac5_error] [%struct.dwmac5_error { ptr @dwmac5_mac_errors }, %struct.dwmac5_error { ptr @dwmac5_mtl_errors }, %struct.dwmac5_error { ptr @dwmac5_dma_errors }], [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"EST: HLB(sched) Queue 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"EST: HLB(size) Queue %u Size %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"EST: BTR Error Loop Count %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EST: SWOL has been switched\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"FPE: Respond mPacket is transmitted\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"FPE: Verify mPacket is transmitted\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"FPE: Respond mPacket is received\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"FPE: Verify mPacket is received\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MAC\00", [28 x i8] zeroinitializer }, align 32
@dwmac5_mac_errors = internal constant { [32 x %struct.dwmac5_error_desc], [96 x i8] } { [32 x %struct.dwmac5_error_desc] [%struct.dwmac5_error_desc { i8 1, ptr @.str.12, ptr @.str.13 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.14, ptr @.str.15 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.16, ptr @.str.17 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.18, ptr @.str.19 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.20, ptr @.str.21 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.22, ptr @.str.23 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.24, ptr @.str.25 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.26, ptr @.str.27 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.28, ptr @.str.29 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.30, ptr @.str.31 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.32, ptr @.str.33 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.34, ptr @.str.35 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.36, ptr @.str.37 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.38, ptr @.str.39 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.40, ptr @.str.41 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.42, ptr @.str.43 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.44, ptr @.str.45 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.46, ptr @.str.47 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.48, ptr @.str.49 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.50, ptr @.str.51 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.54, ptr @.str.55 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }], [96 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Found %s error in %s: '%s: %s'\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"correctable\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uncorrectable\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ATPES\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Application Transmit Interface Parity Check Error\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TPES\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TSO Data Path Parity Check Error\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RDPES\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Read Descriptor Parity Check Error\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MPES\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MTL Data Path Parity Check Error\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MTSPES\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"MTL TX Status Data Path Parity Check Error\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ARPES\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Application Receive Interface Data Path Parity Check Error\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CWPES\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CSR Write Data Path Parity Check Error\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ASRPES\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"AXI Slave Read Data Path Parity Check Error\00", [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TTES\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TX FSM Timeout Error\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RTES\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RX FSM Timeout Error\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CTES\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CSR FSM Timeout Error\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ATES\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"APP FSM Timeout Error\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PTES\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PTP FSM Timeout Error\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"T125ES\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TX125 FSM Timeout Error\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"R125ES\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RX125 FSM Timeout Error\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RVCTES\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"REV MDC FSM Timeout Error\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MSTTES\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Master Read/Write Timeout Error\00", [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLVTES\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Slave Read/Write Timeout Error\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ATITES\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Application Timeout on ATI Interface Error\00", [53 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ARITES\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Application Timeout on ARI Interface Error\00", [53 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Unknown Error\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FSMPES\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FSM State Parity Error\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MTL\00", [28 x i8] zeroinitializer }, align 32
@dwmac5_mtl_errors = internal constant { [32 x %struct.dwmac5_error_desc], [96 x i8] } { [32 x %struct.dwmac5_error_desc] [%struct.dwmac5_error_desc { i8 1, ptr @.str.57, ptr @.str.58 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.59, ptr @.str.60 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.61, ptr @.str.58 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.62, ptr @.str.63 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.64, ptr @.str.65 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.66, ptr @.str.63 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.67, ptr @.str.68 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.69, ptr @.str.70 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.71, ptr @.str.68 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.72, ptr @.str.73 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.74, ptr @.str.75 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.76, ptr @.str.73 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }], [96 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TXCES\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MTL TX Memory Error\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TXAMS\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MTL TX Memory Address Mismatch Error\00", [59 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TXUES\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RXCES\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MTL RX Memory Error\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RXAMS\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MTL RX Memory Address Mismatch Error\00", [59 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RXUES\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ECES\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MTL EST Memory Error\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EAMS\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"MTL EST Memory Address Mismatch Error\00", [58 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EUES\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RPCES\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MTL RX Parser Memory Error\00", [37 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RPAMS\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MTL RX Parser Memory Address Mismatch Error\00", [52 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RPUES\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DMA\00", [28 x i8] zeroinitializer }, align 32
@dwmac5_dma_errors = internal constant { [32 x %struct.dwmac5_error_desc], [96 x i8] } { [32 x %struct.dwmac5_error_desc] [%struct.dwmac5_error_desc { i8 1, ptr @.str.78, ptr @.str.79 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.80, ptr @.str.81 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.82, ptr @.str.79 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }], [96 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TCES\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DMA TSO Memory Error\00", [43 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TAMS\00", [27 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DMA TSO Memory Address Mismatch Error\00", [58 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TUES\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac5.c\00", [51 x i8] zeroinitializer }, align 32
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"dwmac5_all_errors\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 293, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 656, i32 20 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 673, i32 20 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 686, i32 21 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 694, i32 20 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 733, i32 20 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 738, i32 20 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 743, i32 20 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 748, i32 20 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 86, i32 45 }
@___asan_gen_.114 = private unnamed_addr constant [18 x i8] c"dwmac5_mac_errors\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 42, i32 39 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 33, i32 20 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 34, i32 5 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 34, i32 21 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 43, i32 10 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 43, i32 19 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 44, i32 10 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 44, i32 18 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 45, i32 10 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 45, i32 19 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 46, i32 10 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 46, i32 18 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 47, i32 10 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 47, i32 20 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 48, i32 10 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 48, i32 19 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 49, i32 10 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 49, i32 19 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 50, i32 10 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 50, i32 20 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 51, i32 10 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 51, i32 18 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 52, i32 10 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 52, i32 18 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 53, i32 10 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 53, i32 18 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 54, i32 10 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 54, i32 18 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 55, i32 10 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 55, i32 18 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 56, i32 10 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 56, i32 20 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 57, i32 10 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 57, i32 20 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 58, i32 10 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 58, i32 20 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 59, i32 10 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 59, i32 20 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 60, i32 10 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 60, i32 20 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 61, i32 10 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 61, i32 20 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 62, i32 10 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 62, i32 20 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 63, i32 11 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 63, i32 22 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 67, i32 10 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 67, i32 20 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 134, i32 45 }
@___asan_gen_.261 = private unnamed_addr constant [18 x i8] c"dwmac5_mtl_errors\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 90, i32 39 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 91, i32 10 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 91, i32 19 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 92, i32 10 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 92, i32 19 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 93, i32 10 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 95, i32 10 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 95, i32 19 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 96, i32 10 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 96, i32 19 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 97, i32 10 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 99, i32 10 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 99, i32 18 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 100, i32 10 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 100, i32 18 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 101, i32 10 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 103, i32 10 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 103, i32 19 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 104, i32 10 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 104, i32 19 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 105, i32 10 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 182, i32 45 }
@___asan_gen_.327 = private unnamed_addr constant [18 x i8] c"dwmac5_dma_errors\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 138, i32 39 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 139, i32 10 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 139, i32 18 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 140, i32 10 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 140, i32 18 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 141, i32 10 }
@___asan_gen_.345 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.346 = private constant [48 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 324, i32 9 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @dwmac5_all_errors, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @dwmac5_mac_errors, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @dwmac5_mtl_errors, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @dwmac5_dma_errors, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac5_all_errors to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac5_mac_errors to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac5_mtl_errors to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac5_dma_errors to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwmac5_safety_feat_config(ptr noundef %ioaddr, i32 noundef %asp, ptr nocapture noundef readonly %safety_feat_cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asp)
  %tobool.not = icmp eq i32 %asp, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 3264
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !186
  %1 = or i32 %0, 65536
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %safety_feat_cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %safety_feat_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  %or4 = or i32 %2, 16
  %spec.select = select i1 %tobool2.not, i32 %2, i32 %or4
  %mrxpee = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %safety_feat_cfg, i32 0, i32 1
  %5 = ptrtoint ptr %mrxpee to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mrxpee, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  %or8 = or i32 %spec.select, 8
  %value.1 = select i1 %tobool6.not, i32 %spec.select, i32 %or8
  %mestee = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %safety_feat_cfg, i32 0, i32 2
  %7 = ptrtoint ptr %mestee to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mestee, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  %or12 = or i32 %value.1, 4
  %value.2 = select i1 %tobool10.not, i32 %value.1, i32 %or12
  %mrxee = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %safety_feat_cfg, i32 0, i32 3
  %9 = ptrtoint ptr %mrxee to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mrxee, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool14.not = icmp eq i32 %10, 0
  %or16 = or i32 %value.2, 2
  %value.3 = select i1 %tobool14.not, i32 %value.2, i32 %or16
  %mtxee = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %safety_feat_cfg, i32 0, i32 4
  %11 = ptrtoint ptr %mtxee to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mtxee, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool18.not = icmp ne i32 %12, 0
  %or20 = zext i1 %tobool18.not to i32
  %value.4 = or i32 %value.3, %or20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !187
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %value.4)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #6, !srcloc !188
  %add.ptr25 = getelementptr i8, ptr %ioaddr, i32 3272
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !189
  %15 = or i32 %14, 286326784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !190
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %15) #6, !srcloc !188
  %add.ptr39 = getelementptr i8, ptr %ioaddr, i32 4228
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !191
  %17 = or i32 %16, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !192
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %17) #6, !srcloc !188
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asp)
  %cmp = icmp eq i32 %asp, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end49

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end49:                                         ; preds = %if.end
  %add.ptr52 = getelementptr i8, ptr %ioaddr, i32 328
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #6, !srcloc !185
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !193
  %prtyen = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %safety_feat_cfg, i32 0, i32 7
  %20 = ptrtoint ptr %prtyen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prtyen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool56.not = icmp eq i32 %21, 0
  %or58 = or i32 %19, 2
  %spec.select133 = select i1 %tobool56.not, i32 %19, i32 %or58
  %tmouten = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %safety_feat_cfg, i32 0, i32 8
  %22 = ptrtoint ptr %tmouten to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tmouten, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool60.not = icmp ne i32 %23, 0
  %or62 = zext i1 %tobool60.not to i32
  %value.6 = or i32 %spec.select133, %or62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !194
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %value.6)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %24) #6, !srcloc !188
  %add.ptr70 = getelementptr i8, ptr %ioaddr, i32 3296
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #6, !srcloc !185
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  %edpp = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %safety_feat_cfg, i32 0, i32 6
  %27 = ptrtoint ptr %edpp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %edpp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool74.not = icmp ne i32 %28, 0
  %or76 = zext i1 %tobool74.not to i32
  %value.7 = or i32 %26, %or76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  tail call void @arm_heavy_mb() #6
  %29 = tail call i32 @llvm.bswap.i32(i32 %value.7)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %29) #6, !srcloc !188
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %asp)
  %cmp82 = icmp ult i32 %asp, 3
  br i1 %cmp82, label %if.end49.cleanup_crit_edge, label %if.end84

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end84:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %epsi = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %safety_feat_cfg, i32 0, i32 5
  %30 = ptrtoint ptr %epsi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %epsi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool85.not = icmp eq i32 %31, 0
  %or87 = or i32 %value.7, 4
  %spec.select134 = select i1 %tobool85.not, i32 %value.7, i32 %or87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !197
  tail call void @arm_heavy_mb() #6
  %32 = tail call i32 @llvm.bswap.i32(i32 %spec.select134)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %32) #6, !srcloc !188
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.end49.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end84 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwmac5_safety_feat_irq_status(ptr noundef %ndev, ptr noundef %ioaddr, i32 noundef %asp, ptr nocapture noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  %mask.i.i93 = alloca i32, align 4
  %mask.i.i80 = alloca i32, align 4
  %mask.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asp)
  %tobool.not = icmp eq i32 %asp, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 3268
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !185
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !198
  %add.ptr4 = getelementptr i8, ptr %ioaddr, i32 4224
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !185
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !199
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool8.not = icmp slt i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10 = icmp slt i32 %3, 0
  %spec.select = select i1 %tobool8.not, i1 true, i1 %tobool10
  br i1 %spec.select, label %if.then12, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then12:                                        ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %ioaddr, i32 320
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !185
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !201
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #6, !srcloc !188
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i.i) #6
  %6 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mask.i.i, align 4
  %call.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i.i, i32 noundef 32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i.i)
  %cmp10.i.i = icmp ult i32 %call.i.i, 32
  br i1 %cmp10.i.i, label %if.then12.for.body.i.i_crit_edge, label %if.then12.dwmac5_handle_mac_err.exit_crit_edge

if.then12.dwmac5_handle_mac_err.exit_crit_edge:   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %dwmac5_handle_mac_err.exit

if.then12.for.body.i.i_crit_edge:                 ; preds = %if.then12
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then12.for.body.i.i_crit_edge
  %loc.011.i.i = phi i32 [ %call4.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.then12.for.body.i.i_crit_edge ]
  %desc1.i.i = getelementptr %struct.dwmac5_error_desc, ptr @dwmac5_mac_errors, i32 %loc.011.i.i, i32 1
  %7 = ptrtoint ptr %desc1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %desc1.i.i, align 4
  %detailed_desc.i.i = getelementptr %struct.dwmac5_error_desc, ptr @dwmac5_mac_errors, i32 %loc.011.i.i, i32 2
  %9 = ptrtoint ptr %detailed_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %detailed_desc.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, ptr noundef %8, ptr noundef %10) #9
  %arrayidx3.i.i = getelementptr i32, ptr %stats, i32 %loc.011.i.i
  %11 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx3.i.i, align 4
  %inc.i.i = add i32 %12, 1
  store i32 %inc.i.i, ptr %arrayidx3.i.i, align 4
  %add.i.i = add nuw nsw i32 %loc.011.i.i, 1
  %call4.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i.i, i32 noundef 32, i32 noundef %add.i.i) #6
  %cmp.i.i = icmp ult i32 %call4.i.i, 32
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.dwmac5_handle_mac_err.exit_crit_edge

for.body.i.i.dwmac5_handle_mac_err.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dwmac5_handle_mac_err.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

dwmac5_handle_mac_err.exit:                       ; preds = %for.body.i.i.dwmac5_handle_mac_err.exit_crit_edge, %if.then12.dwmac5_handle_mac_err.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i.i) #6
  br label %if.end15

if.end15:                                         ; preds = %dwmac5_handle_mac_err.exit, %if.end.if.end15_crit_edge
  %ret.0 = phi i32 [ 1, %dwmac5_handle_mac_err.exit ], [ 0, %if.end.if.end15_crit_edge ]
  %and16 = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp ne i32 %and16, 0
  %and19 = and i32 %3, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20 = icmp ne i32 %and19, 0
  %13 = select i1 %tobool17.not, i1 true, i1 %tobool20
  %and23 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp ne i32 %and23, 0
  %and26 = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27 = icmp ne i32 %and26, 0
  %14 = select i1 %tobool24.not, i1 true, i1 %tobool27
  br i1 %13, label %if.then31, label %if.end15.if.end37_crit_edge

if.end15.if.end37_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then31:                                        ; preds = %if.end15
  %add.ptr.i81 = getelementptr i8, ptr %ioaddr, i32 3276
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81) #6, !srcloc !185
  %16 = call i32 @llvm.bswap.i32(i32 %15) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !203
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 %15) #6, !srcloc !188
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i.i80) #6
  %add.ptr.i.i = getelementptr i8, ptr %stats, i32 128
  %17 = ptrtoint ptr %mask.i.i80 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %mask.i.i80, align 4
  %call.i.i82 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i.i80, i32 noundef 32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i.i82)
  %cmp10.i.i83 = icmp ult i32 %call.i.i82, 32
  br i1 %cmp10.i.i83, label %for.body.lr.ph.i.i, label %if.then31.dwmac5_handle_mtl_err.exit_crit_edge

if.then31.dwmac5_handle_mtl_err.exit_crit_edge:   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %dwmac5_handle_mtl_err.exit

for.body.lr.ph.i.i:                               ; preds = %if.then31
  %cond.i.i = select i1 %14, ptr @.str.10, ptr @.str.11
  br label %for.body.i.i92

for.body.i.i92:                                   ; preds = %for.body.i.i92.for.body.i.i92_crit_edge, %for.body.lr.ph.i.i
  %loc.011.i.i84 = phi i32 [ %call.i.i82, %for.body.lr.ph.i.i ], [ %call4.i.i90, %for.body.i.i92.for.body.i.i92_crit_edge ]
  %desc1.i.i85 = getelementptr %struct.dwmac5_error_desc, ptr @dwmac5_mtl_errors, i32 %loc.011.i.i84, i32 1
  %18 = ptrtoint ptr %desc1.i.i85 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc1.i.i85, align 4
  %detailed_desc.i.i86 = getelementptr %struct.dwmac5_error_desc, ptr @dwmac5_mtl_errors, i32 %loc.011.i.i84, i32 2
  %20 = ptrtoint ptr %detailed_desc.i.i86 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %detailed_desc.i.i86, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond.i.i, ptr noundef nonnull @.str.56, ptr noundef %19, ptr noundef %21) #9
  %arrayidx3.i.i87 = getelementptr i32, ptr %add.ptr.i.i, i32 %loc.011.i.i84
  %22 = ptrtoint ptr %arrayidx3.i.i87 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx3.i.i87, align 4
  %inc.i.i88 = add i32 %23, 1
  store i32 %inc.i.i88, ptr %arrayidx3.i.i87, align 4
  %add.i.i89 = add nuw nsw i32 %loc.011.i.i84, 1
  %call4.i.i90 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i.i80, i32 noundef 32, i32 noundef %add.i.i89) #6
  %cmp.i.i91 = icmp ult i32 %call4.i.i90, 32
  br i1 %cmp.i.i91, label %for.body.i.i92.for.body.i.i92_crit_edge, label %for.body.i.i92.dwmac5_handle_mtl_err.exit_crit_edge

for.body.i.i92.dwmac5_handle_mtl_err.exit_crit_edge: ; preds = %for.body.i.i92
  call void @__sanitizer_cov_trace_pc() #8
  br label %dwmac5_handle_mtl_err.exit

for.body.i.i92.for.body.i.i92_crit_edge:          ; preds = %for.body.i.i92
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i92

dwmac5_handle_mtl_err.exit:                       ; preds = %for.body.i.i92.dwmac5_handle_mtl_err.exit_crit_edge, %if.then31.dwmac5_handle_mtl_err.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i.i80) #6
  %lnot34 = xor i1 %14, true
  %lnot.ext35 = zext i1 %lnot34 to i32
  %or36 = or i32 %ret.0, %lnot.ext35
  br label %if.end37

if.end37:                                         ; preds = %dwmac5_handle_mtl_err.exit, %if.end15.if.end37_crit_edge
  %ret.1 = phi i32 [ %or36, %dwmac5_handle_mtl_err.exit ], [ %ret.0, %if.end15.if.end37_crit_edge ]
  %and38 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %if.then45

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then45:                                        ; preds = %if.end37
  %and41 = and i32 %3, 1
  %add.ptr.i94 = getelementptr i8, ptr %ioaddr, i32 4232
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94) #6, !srcloc !185
  %25 = call i32 @llvm.bswap.i32(i32 %24) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %24) #6, !srcloc !188
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i.i93) #6
  %add.ptr.i.i95 = getelementptr i8, ptr %stats, i32 256
  %26 = ptrtoint ptr %mask.i.i93 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %mask.i.i93, align 4
  %call.i.i96 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i.i93, i32 noundef 32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i.i96)
  %cmp10.i.i97 = icmp ult i32 %call.i.i96, 32
  br i1 %cmp10.i.i97, label %for.body.lr.ph.i.i99, label %if.then45.dwmac5_handle_dma_err.exit_crit_edge

if.then45.dwmac5_handle_dma_err.exit_crit_edge:   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %dwmac5_handle_dma_err.exit

for.body.lr.ph.i.i99:                             ; preds = %if.then45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %cond.i.i98 = select i1 %tobool42.not, ptr @.str.11, ptr @.str.10
  br label %for.body.i.i108

for.body.i.i108:                                  ; preds = %for.body.i.i108.for.body.i.i108_crit_edge, %for.body.lr.ph.i.i99
  %loc.011.i.i100 = phi i32 [ %call.i.i96, %for.body.lr.ph.i.i99 ], [ %call4.i.i106, %for.body.i.i108.for.body.i.i108_crit_edge ]
  %desc1.i.i101 = getelementptr %struct.dwmac5_error_desc, ptr @dwmac5_dma_errors, i32 %loc.011.i.i100, i32 1
  %27 = ptrtoint ptr %desc1.i.i101 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc1.i.i101, align 4
  %detailed_desc.i.i102 = getelementptr %struct.dwmac5_error_desc, ptr @dwmac5_dma_errors, i32 %loc.011.i.i100, i32 2
  %29 = ptrtoint ptr %detailed_desc.i.i102 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %detailed_desc.i.i102, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond.i.i98, ptr noundef nonnull @.str.77, ptr noundef %28, ptr noundef %30) #9
  %arrayidx3.i.i103 = getelementptr i32, ptr %add.ptr.i.i95, i32 %loc.011.i.i100
  %31 = ptrtoint ptr %arrayidx3.i.i103 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx3.i.i103, align 4
  %inc.i.i104 = add i32 %32, 1
  store i32 %inc.i.i104, ptr %arrayidx3.i.i103, align 4
  %add.i.i105 = add nuw nsw i32 %loc.011.i.i100, 1
  %call4.i.i106 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i.i93, i32 noundef 32, i32 noundef %add.i.i105) #6
  %cmp.i.i107 = icmp ult i32 %call4.i.i106, 32
  br i1 %cmp.i.i107, label %for.body.i.i108.for.body.i.i108_crit_edge, label %for.body.i.i108.dwmac5_handle_dma_err.exit_crit_edge

for.body.i.i108.dwmac5_handle_dma_err.exit_crit_edge: ; preds = %for.body.i.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %dwmac5_handle_dma_err.exit

for.body.i.i108.for.body.i.i108_crit_edge:        ; preds = %for.body.i.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i108

dwmac5_handle_dma_err.exit:                       ; preds = %for.body.i.i108.dwmac5_handle_dma_err.exit_crit_edge, %if.then45.dwmac5_handle_dma_err.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i.i93) #6
  %33 = xor i32 %and41, 1
  %or50 = or i32 %ret.1, %33
  br label %cleanup

cleanup:                                          ; preds = %dwmac5_handle_dma_err.exit, %if.end37.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %or50, %dwmac5_handle_dma_err.exit ], [ %ret.1, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dwmac5_safety_feat_dump(ptr nocapture noundef readonly %stats, i32 noundef %index, ptr noundef writeonly %count, ptr noundef writeonly %desc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %index, 32
  %0 = mul i32 %div, 32
  %rem.decomposed = sub i32 %index, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div)
  %cmp = icmp ugt i32 %div, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [3 x %struct.dwmac5_error], ptr @dwmac5_all_errors, i32 0, i32 %div
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.dwmac5_error_desc, ptr %2, i32 %rem.decomposed
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 4, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %count, null
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i32, ptr %stats, i32 %index
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %count, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %tobool8.not = icmp eq ptr %desc, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %desc13 = getelementptr %struct.dwmac5_error_desc, ptr %2, i32 %rem.decomposed, i32 1
  %8 = ptrtoint ptr %desc13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc13, align 4
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %desc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwmac5_rxp_config(ptr noundef %ioaddr, ptr noundef %entries, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ioaddr) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !207
  %1 = and i32 %0, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ioaddr, i32 %1) #6, !srcloc !188
  %add.ptr.i = getelementptr i8, ptr %ioaddr, i32 3072
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  %3 = and i32 %2, -8388609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #6, !srcloc !188
  %call3.i = tail call i64 @ktime_get() #6
  %add.i.i = add i64 %call3.i, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.83, i32 noundef 325) #6
  %add.ptr16.i = getelementptr i8, ptr %ioaddr, i32 3232
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !211
  %.mask = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not53.i = icmp eq i32 %.mask, 0
  br i1 %tobool.not53.i, label %entry.land.lhs.true.i_crit_edge, label %entry.for.cond.preheader_crit_edge

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then36.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call24.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call24.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call24.i, %add.i.i
  br i1 %cmp3.i.i, label %dwmac5_rxp_disable.exit, label %if.then36.i

if.then36.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #6
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !211
  %.mask171 = and i32 %5, 128
  %tobool.not.i = icmp eq i32 %.mask171, 0
  br i1 %tobool.not.i, label %if.then36.i.land.lhs.true.i_crit_edge, label %if.then36.i.for.cond.preheader_crit_edge

if.then36.i.for.cond.preheader_crit_edge:         ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

if.then36.i.land.lhs.true.i_crit_edge:            ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

dwmac5_rxp_disable.exit:                          ; preds = %land.lhs.true.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  %.mask172 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask172)
  %tobool40.not.inv.i.not = icmp eq i32 %.mask172, 0
  br i1 %tobool40.not.inv.i.not, label %dwmac5_rxp_disable.exit.do.body66_crit_edge, label %dwmac5_rxp_disable.exit.for.cond.preheader_crit_edge

dwmac5_rxp_disable.exit.for.cond.preheader_crit_edge: ; preds = %dwmac5_rxp_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

dwmac5_rxp_disable.exit.do.body66_crit_edge:      ; preds = %dwmac5_rxp_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body66

for.cond.preheader:                               ; preds = %dwmac5_rxp_disable.exit.for.cond.preheader_crit_edge, %if.then36.i.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp142.not = icmp eq i32 %count, 0
  br i1 %cmp142.not, label %for.cond.preheader.do.body66_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.body66_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body66

while.cond.preheader:                             ; preds = %for.body
  %i.043.i = add i32 %count, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.043.i)
  %cmp44.i = icmp sgt i32 %i.043.i, -1
  br i1 %cmp44.i, label %while.cond.preheader.for.body.i.preheader_crit_edge, label %while.cond.preheader.do.body66_crit_edge

while.cond.preheader.do.body66_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body66

while.cond.preheader.for.body.i.preheader_crit_edge: ; preds = %while.cond.preheader
  br label %for.body.i.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0143 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %in_hw = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.0143, i32 1
  %7 = ptrtoint ptr %in_hw to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %in_hw, align 1
  %inc = add nuw i32 %i.0143, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %while.cond.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.i.preheader:                             ; preds = %for.body.i.preheader.backedge, %while.cond.preheader.for.body.i.preheader_crit_edge
  %curr_prio.0146 = phi i32 [ %19, %for.body.i.preheader.backedge ], [ 0, %while.cond.preheader.for.body.i.preheader_crit_edge ]
  %nve.0144 = phi i32 [ %nve.0144.be, %for.body.i.preheader.backedge ], [ 0, %while.cond.preheader.for.body.i.preheader_crit_edge ]
  br label %for.body.i.outer

for.body.i.outer:                                 ; preds = %for.inc.i.thread.for.body.i.outer_crit_edge, %for.body.i.preheader
  %i.048.i.ph = phi i32 [ %i.043.i, %for.body.i.preheader ], [ %i.0.i127, %for.inc.i.thread.for.body.i.outer_crit_edge ]
  %found.0.off047.i.ph = phi i1 [ false, %for.body.i.preheader ], [ true, %for.inc.i.thread.for.body.i.outer_crit_edge ]
  %min_prio_idx.046.i.ph = phi i32 [ -1, %for.body.i.preheader ], [ %i.048.i, %for.inc.i.thread.for.body.i.outer_crit_edge ]
  %min_prio.045.i.ph = phi i32 [ -1, %for.body.i.preheader ], [ %17, %for.inc.i.thread.for.body.i.outer_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.outer
  %i.048.i = phi i32 [ %i.0.i, %for.inc.i.for.body.i_crit_edge ], [ %i.048.i.ph, %for.body.i.outer ]
  %arrayidx.i = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 4, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i121 = icmp eq i8 %9, 0
  br i1 %tobool.not.i121, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %in_hw.i = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i, i32 1
  %10 = ptrtoint ptr %in_hw.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %in_hw.i, align 1, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not.i = icmp eq i8 %11, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end4.i:                                        ; preds = %if.end.i
  %is_last.i = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i, i32 2
  %12 = ptrtoint ptr %is_last.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_last.i, align 2, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not.i = icmp eq i8 %13, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end4.i.for.inc.i_crit_edge

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end7.i:                                        ; preds = %if.end4.i
  %is_frag.i = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i, i32 3
  %14 = ptrtoint ptr %is_frag.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_frag.i, align 1, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not.i = icmp eq i8 %15, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end7.i.for.inc.i_crit_edge

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end10.i:                                       ; preds = %if.end7.i
  %prio.i = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i, i32 7
  %16 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %prio.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %curr_prio.0146)
  %cmp11.i = icmp uge i32 %17, %curr_prio.0146
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %min_prio.045.i.ph)
  %cmp15.i = icmp ult i32 %17, %min_prio.045.i.ph
  %or.cond.i = and i1 %cmp11.i, %cmp15.i
  br i1 %or.cond.i, label %for.inc.i.thread, label %if.end10.i.for.inc.i_crit_edge

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i.for.inc.i_crit_edge, %if.end7.i.for.inc.i_crit_edge, %if.end4.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %i.0.i = add i32 %i.048.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.thread:                                 ; preds = %if.end10.i
  %i.0.i127 = add nsw i32 %i.048.i, -1
  %cmp.i128 = icmp sgt i32 %i.048.i, 0
  br i1 %cmp.i128, label %for.inc.i.thread.for.body.i.outer_crit_edge, label %for.inc.i.thread.dwmac5_rxp_get_next_entry.exit_crit_edge

for.inc.i.thread.dwmac5_rxp_get_next_entry.exit_crit_edge: ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %dwmac5_rxp_get_next_entry.exit

for.inc.i.thread.for.body.i.outer_crit_edge:      ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.outer

for.end.i:                                        ; preds = %for.inc.i
  br i1 %found.0.off047.i.ph, label %for.end.i.dwmac5_rxp_get_next_entry.exit_crit_edge, label %for.end.i.while.end_crit_edge

for.end.i.while.end_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

for.end.i.dwmac5_rxp_get_next_entry.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dwmac5_rxp_get_next_entry.exit

dwmac5_rxp_get_next_entry.exit:                   ; preds = %for.end.i.dwmac5_rxp_get_next_entry.exit_crit_edge, %for.inc.i.thread.dwmac5_rxp_get_next_entry.exit_crit_edge
  %i.048.i.pn = phi i32 [ %min_prio_idx.046.i.ph, %for.end.i.dwmac5_rxp_get_next_entry.exit_crit_edge ], [ %i.048.i, %for.inc.i.thread.dwmac5_rxp_get_next_entry.exit_crit_edge ]
  %arrayidx21.i134 = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i.pn
  %tobool6.not = icmp eq ptr %arrayidx21.i134, null
  br i1 %tobool6.not, label %dwmac5_rxp_get_next_entry.exit.while.end_crit_edge, label %if.end8

dwmac5_rxp_get_next_entry.exit.while.end_crit_edge: ; preds = %dwmac5_rxp_get_next_entry.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end8:                                          ; preds = %dwmac5_rxp_get_next_entry.exit
  %prio = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i.pn, i32 7
  %18 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prio, align 4
  %frag_ptr = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i.pn, i32 4
  %20 = ptrtoint ptr %frag_ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %frag_ptr, align 4
  %tobool9.not = icmp eq ptr %21, null
  br i1 %tobool9.not, label %if.end8.if.end21_crit_edge, label %if.then10

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %af = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i.pn, i32 8, i32 2
  %22 = ptrtoint ptr %af to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %af, align 4
  %bf.clear18 = and i8 %bf.load, 47
  %bf.set19 = or i8 %bf.clear18, 16
  store i8 %bf.set19, ptr %af, align 4
  %23 = trunc i32 %nve.0144 to i8
  %conv = add i8 %23, 2
  %ok_index = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i.pn, i32 8, i32 4
  %24 = ptrtoint ptr %ok_index to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %ok_index, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.then10, %if.end8.if.end21_crit_edge
  %call22 = tail call fastcc i32 @dwmac5_rxp_update_single_entry(ptr noundef %ioaddr, ptr noundef nonnull %arrayidx21.i134, i32 noundef %nve.0144)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.do.body66_crit_edge

if.end21.do.body66_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body66

if.end25:                                         ; preds = %if.end21
  %inc26 = add i32 %nve.0144, 1
  %table_pos = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i.pn, i32 5
  %25 = ptrtoint ptr %table_pos to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %nve.0144, ptr %table_pos, align 4
  %in_hw27 = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i.pn, i32 1
  %26 = ptrtoint ptr %in_hw27 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %in_hw27, align 1
  br i1 %tobool9.not, label %if.end25.for.body.i.preheader.backedge_crit_edge, label %land.lhs.true

if.end25.for.body.i.preheader.backedge_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader.backedge

land.lhs.true:                                    ; preds = %if.end25
  %in_hw29 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %21, i32 0, i32 1
  %27 = ptrtoint ptr %in_hw29 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %in_hw29, align 1, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool30.not = icmp eq i8 %28, 0
  br i1 %tobool30.not, label %if.then31, label %land.lhs.true.for.body.i.preheader.backedge_crit_edge

land.lhs.true.for.body.i.preheader.backedge_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader.backedge

if.then31:                                        ; preds = %land.lhs.true
  %call32 = tail call fastcc i32 @dwmac5_rxp_update_single_entry(ptr noundef %ioaddr, ptr noundef nonnull %21, i32 noundef %inc26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.then31.do.body66_crit_edge

if.then31.do.body66_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body66

if.end35:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %inc36 = add i32 %nve.0144, 2
  %table_pos37 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %21, i32 0, i32 5
  %29 = ptrtoint ptr %table_pos37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %inc26, ptr %table_pos37, align 4
  %30 = ptrtoint ptr %in_hw29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %in_hw29, align 1
  br label %for.body.i.preheader.backedge

for.body.i.preheader.backedge:                    ; preds = %if.end35, %land.lhs.true.for.body.i.preheader.backedge_crit_edge, %if.end25.for.body.i.preheader.backedge_crit_edge
  %nve.0144.be = phi i32 [ %inc36, %if.end35 ], [ %inc26, %land.lhs.true.for.body.i.preheader.backedge_crit_edge ], [ %inc26, %if.end25.for.body.i.preheader.backedge_crit_edge ]
  br label %for.body.i.preheader

while.end:                                        ; preds = %dwmac5_rxp_get_next_entry.exit.while.end_crit_edge, %for.end.i.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nve.0144)
  %tobool40.not = icmp eq i32 %nve.0144, 0
  br i1 %tobool40.not, label %while.end.do.body66_crit_edge, label %for.cond43.preheader

while.end.do.body66_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body66

for.cond43.preheader:                             ; preds = %while.end
  br i1 %cmp142.not, label %for.cond43.preheader.for.end59_crit_edge, label %for.cond43.preheader.for.body46_crit_edge

for.cond43.preheader.for.body46_crit_edge:        ; preds = %for.cond43.preheader
  br label %for.body46

for.cond43.preheader.for.end59_crit_edge:         ; preds = %for.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end59

for.body46:                                       ; preds = %for.inc57.for.body46_crit_edge, %for.cond43.preheader.for.body46_crit_edge
  %i.1151 = phi i32 [ %inc58, %for.inc57.for.body46_crit_edge ], [ 0, %for.cond43.preheader.for.body46_crit_edge ]
  %nve.2150 = phi i32 [ %nve.3, %for.inc57.for.body46_crit_edge ], [ %nve.0144, %for.cond43.preheader.for.body46_crit_edge ]
  %is_last = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.1151, i32 2
  %31 = ptrtoint ptr %is_last to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %is_last, align 2, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool48.not = icmp eq i8 %32, 0
  br i1 %tobool48.not, label %for.body46.for.inc57_crit_edge, label %if.end50

for.body46.for.inc57_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc57

if.end50:                                         ; preds = %for.body46
  %arrayidx47 = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.1151
  %call51 = tail call fastcc i32 @dwmac5_rxp_update_single_entry(ptr noundef %ioaddr, ptr noundef %arrayidx47, i32 noundef %nve.2150)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end50.do.body66_crit_edge

if.end50.do.body66_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body66

if.end54:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %inc55 = add i32 %nve.2150, 1
  %table_pos56 = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.1151, i32 5
  %33 = ptrtoint ptr %table_pos56 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %nve.2150, ptr %table_pos56, align 4
  br label %for.inc57

for.inc57:                                        ; preds = %if.end54, %for.body46.for.inc57_crit_edge
  %nve.3 = phi i32 [ %inc55, %if.end54 ], [ %nve.2150, %for.body46.for.inc57_crit_edge ]
  %inc58 = add nuw i32 %i.1151, 1
  %exitcond159.not = icmp eq i32 %inc58, %count
  br i1 %exitcond159.not, label %for.inc57.for.end59_crit_edge, label %for.inc57.for.body46_crit_edge

for.inc57.for.body46_crit_edge:                   ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body46

for.inc57.for.end59_crit_edge:                    ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end59

for.end59:                                        ; preds = %for.inc57.for.end59_crit_edge, %for.cond43.preheader.for.end59_crit_edge
  %nve.2.lcssa = phi i32 [ %nve.0144, %for.cond43.preheader.for.end59_crit_edge ], [ %nve.3, %for.inc57.for.end59_crit_edge ]
  %shl = shl i32 %nve.2.lcssa, 16
  %and60 = and i32 %shl, 16711680
  %and61 = and i32 %nve.2.lcssa, 255
  %or = or i32 %and60, %and61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  tail call void @arm_heavy_mb() #6
  %34 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %34) #6, !srcloc !188
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !214
  %36 = or i32 %35, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !215
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %36) #6, !srcloc !188
  br label %do.body66

do.body66:                                        ; preds = %for.end59, %if.end50.do.body66_crit_edge, %while.end.do.body66_crit_edge, %if.then31.do.body66_crit_edge, %if.end21.do.body66_crit_edge, %while.cond.preheader.do.body66_crit_edge, %for.cond.preheader.do.body66_crit_edge, %dwmac5_rxp_disable.exit.do.body66_crit_edge
  %ret.4 = phi i32 [ -110, %dwmac5_rxp_disable.exit.do.body66_crit_edge ], [ 0, %for.end59 ], [ 0, %while.end.do.body66_crit_edge ], [ 0, %while.cond.preheader.do.body66_crit_edge ], [ 0, %for.cond.preheader.do.body66_crit_edge ], [ %call51, %if.end50.do.body66_crit_edge ], [ %call32, %if.then31.do.body66_crit_edge ], [ %call22, %if.end21.do.body66_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ioaddr, i32 %0) #6, !srcloc !188
  ret i32 %ret.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwmac5_rxp_update_single_entry(ptr noundef %ioaddr, ptr nocapture noundef readonly %entry1, i32 noundef %pos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %pos, 2
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 3248
  %val37 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %entry1, i32 0, i32 8
  %add.ptr42 = getelementptr i8, ptr %ioaddr, i32 3252
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0170 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.0170, %mul
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.83, i32 noundef 349) #6
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !217
  %.mask166 = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask166)
  %tobool.not167 = icmp eq i32 %.mask166, 0
  br i1 %tobool.not167, label %for.body.if.end36_crit_edge, label %for.body.land.lhs.true_crit_edge

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  br label %land.lhs.true

for.body.if.end36_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

land.lhs.true:                                    ; preds = %if.then28.land.lhs.true_crit_edge, %for.body.land.lhs.true_crit_edge
  %call16 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call16, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call16, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then28

if.then28:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #6
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !217
  %.mask = and i32 %1, 128
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %if.then28.if.end36_crit_edge, label %if.then28.land.lhs.true_crit_edge

if.then28.land.lhs.true_crit_edge:                ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then28.if.end36_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

for.end:                                          ; preds = %land.lhs.true
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  %.mask161 = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask161)
  %tobool33.not = icmp eq i32 %.mask161, 0
  br i1 %tobool33.not, label %for.end.if.end36_crit_edge, label %for.end.cleanup114_crit_edge

for.end.cleanup114_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup114

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end36:                                         ; preds = %for.end.if.end36_crit_edge, %if.then28.if.end36_crit_edge, %for.body.if.end36_crit_edge
  %add.ptr38 = getelementptr i32, ptr %val37, i32 %i.0170
  %3 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr38, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !219
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %5) #6, !srcloc !188
  %and43 = and i32 %add, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !220
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %and43)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #6, !srcloc !188
  %or = or i32 %and43, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #6, !srcloc !188
  %or52 = or i32 %and43, -2147418112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %or52)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #6, !srcloc !188
  %call60 = tail call i64 @ktime_get() #6
  %add.i147 = add i64 %call60, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.83, i32 noundef 371) #6
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !223
  %.mask162168 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask162168)
  %tobool82.not169 = icmp eq i32 %.mask162168, 0
  br i1 %tobool82.not169, label %if.end36.for.inc_crit_edge, label %if.end36.land.lhs.true86_crit_edge

if.end36.land.lhs.true86_crit_edge:               ; preds = %if.end36
  br label %land.lhs.true86

if.end36.for.inc_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true86:                                  ; preds = %if.then99.land.lhs.true86_crit_edge, %if.end36.land.lhs.true86_crit_edge
  %call87 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call87, i64 %add.i147)
  %cmp3.i149 = icmp sgt i64 %call87, %add.i147
  br i1 %cmp3.i149, label %cleanup, label %if.then99

if.then99:                                        ; preds = %land.lhs.true86
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !223
  %.mask162 = and i32 %10, 128
  %tobool82.not = icmp eq i32 %.mask162, 0
  br i1 %tobool82.not, label %if.then99.for.inc_crit_edge, label %if.then99.land.lhs.true86_crit_edge

if.then99.land.lhs.true86_crit_edge:              ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true86

if.then99.for.inc_crit_edge:                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cleanup:                                          ; preds = %land.lhs.true86
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !224
  %.mask163 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask163)
  %tobool106.not = icmp eq i32 %.mask163, 0
  br i1 %tobool106.not, label %cleanup.for.inc_crit_edge, label %cleanup.cleanup114_crit_edge

cleanup.cleanup114_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup114

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %if.then99.for.inc_crit_edge, %if.end36.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0170, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.cleanup114_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup114_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup114

cleanup114:                                       ; preds = %for.inc.cleanup114_crit_edge, %cleanup.cleanup114_crit_edge, %for.end.cleanup114_crit_edge
  %retval.2 = phi i32 [ -110, %cleanup.cleanup114_crit_edge ], [ 0, %for.inc.cleanup114_crit_edge ], [ -110, %for.end.cleanup114_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwmac5_flex_pps_config(ptr noundef %ioaddr, i32 noundef %index, ptr nocapture noundef %cfg, i1 noundef zeroext %enable, i32 noundef %sub_second_inc, i32 noundef %systime_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %index, 4
  %add = add i32 %mul, 2948
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !225
  %add.ptr4 = getelementptr i8, ptr %ioaddr, i32 2928
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !185
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !226
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cfg, align 8, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %.mask = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool8.not = icmp eq i32 %.mask, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub_second_inc)
  %tobool11.not = icmp eq i32 %sub_second_inc, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %systime_flags)
  %tobool12.not = icmp eq i32 %systime_flags, 0
  %or.cond = or i1 %tobool11.not, %tobool12.not
  br i1 %or.cond, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %mul15 = shl i32 %index, 3
  %shl.neg = shl nsw i32 -1, %mul15
  %sub20 = sub i32 24, %mul15
  %shr = lshr i32 -1, %sub20
  %and21 = and i32 %shr, %shl.neg
  %neg = xor i32 %and21, -1
  %and23 = and i32 %2, %neg
  %sub48 = sub i32 28, %mul15
  %shr49 = lshr i32 -1, %sub48
  br i1 %enable, label %if.end41, label %if.then25

if.then25:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %and34 = shl i32 5, %mul15
  %and38 = and i32 %and34, %shr49
  %or = or i32 %and23, %and38
  %or39 = or i32 %or, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !227
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %or39)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #6, !srcloc !188
  br label %cleanup

if.end41:                                         ; preds = %if.end14
  %and50 = shl i32 2, %mul15
  %and54 = and i32 %and50, %shr49
  %sub59 = or i32 %mul15, 5
  %shl60.neg = shl nsw i32 -1, %sub59
  %sub67 = sub i32 25, %mul15
  %shr68 = lshr i32 -1, %sub67
  %and69 = and i32 %shl60.neg, %shr68
  %shl75 = shl i32 2, %sub59
  %and76 = and i32 %and69, %shl75
  %or55 = or i32 %and23, %and54
  %or77 = or i32 %or55, %and76
  %or78 = or i32 %or77, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %start = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %cfg, i32 0, i32 1
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start, align 8
  %conv = trunc i64 %7 to i32
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %add83 = add i32 %mul, 2944
  %add.ptr84 = getelementptr i8, ptr %ioaddr, i32 %add83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %8) #6, !srcloc !188
  %and85 = and i32 %systime_flags, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.then87, label %if.end41.do.body93_crit_edge

if.end41.do.body93_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body93

if.then87:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %tv_nsec = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %cfg, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tv_nsec, align 8
  %mul89 = mul i32 %10, 1000
  %div = sdiv i32 %mul89, 465
  store i32 %div, ptr %tv_nsec, align 8
  br label %do.body93

do.body93:                                        ; preds = %if.then87, %if.end41.do.body93_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %tv_nsec97 = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %cfg, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %tv_nsec97 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tv_nsec97, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #6, !srcloc !188
  %period101 = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %cfg, i32 0, i32 2
  %14 = ptrtoint ptr %period101 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %period101, align 8
  %mul103 = mul i64 %15, 1000000000
  %tv_nsec105 = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %cfg, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %tv_nsec105 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tv_nsec105, align 8
  %conv106 = sext i32 %17 to i64
  %add107 = add i64 %mul103, %conv106
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add107)
  %cmp287 = icmp ult i64 %add107, 4294967296
  br i1 %cmp287, label %if.then291, label %if.else297, !prof !230

if.then291:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #8
  %conv292 = trunc i64 %add107 to i32
  %div295 = udiv i32 %conv292, %sub_second_inc
  %conv296 = zext i32 %div295 to i64
  br label %if.end301

if.else297:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #8
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub_second_inc, i64 %add107) #10, !srcloc !231
  %asmresult1.i = extractvalue { i64, i64 } %18, 1
  br label %if.end301

if.end301:                                        ; preds = %if.else297, %if.then291
  %period.0 = phi i64 [ %conv296, %if.then291 ], [ %asmresult1.i, %if.else297 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %period.0)
  %cmp303 = icmp ult i64 %period.0, 2
  br i1 %cmp303, label %if.end301.cleanup_crit_edge, label %do.body307

if.end301.cleanup_crit_edge:                      ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body307:                                       ; preds = %if.end301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !232
  tail call void @arm_heavy_mb() #6
  %19 = trunc i64 %period.0 to i32
  %conv311 = add i32 %19, -1
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv311)
  %add313 = add i32 %mul, 2952
  %add.ptr314 = getelementptr i8, ptr %ioaddr, i32 %add313
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr314, i32 %20) #6, !srcloc !188
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %period.0)
  %cmp316 = icmp ult i64 %period.0, 4
  br i1 %cmp316, label %do.body307.cleanup_crit_edge, label %do.body320

do.body307.cleanup_crit_edge:                     ; preds = %do.body307
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body320:                                       ; preds = %do.body307
  call void @__sanitizer_cov_trace_pc() #8
  %shr315 = lshr i64 %period.0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !233
  tail call void @arm_heavy_mb() #6
  %21 = trunc i64 %shr315 to i32
  %conv324 = add i32 %21, -1
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv324)
  %add326 = add i32 %mul, 2956
  %add.ptr327 = getelementptr i8, ptr %ioaddr, i32 %add326
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr327, i32 %22) #6, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !234
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %or78)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %23) #6, !srcloc !188
  br label %cleanup

cleanup:                                          ; preds = %do.body320, %do.body307.cleanup_crit_edge, %if.end301.cleanup_crit_edge, %if.then25, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body320 ], [ 0, %if.then25 ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -22, %if.end301.cleanup_crit_edge ], [ -22, %do.body307.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwmac5_est_configure(ptr noundef %ioaddr, ptr nocapture noundef readonly %cfg, i32 noundef %ptp_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %btr = getelementptr inbounds %struct.stmmac_est, ptr %cfg, i32 0, i32 4
  %0 = ptrtoint ptr %btr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %btr, align 4
  %call = tail call fastcc i32 @dwmac5_est_write(ptr noundef %ioaddr, i32 noundef 0, i32 noundef %1, i1 noundef zeroext false)
  %arrayidx2 = getelementptr %struct.stmmac_est, ptr %cfg, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %call3 = tail call fastcc i32 @dwmac5_est_write(ptr noundef %ioaddr, i32 noundef 1, i32 noundef %3, i1 noundef zeroext false)
  %or4 = or i32 %call3, %call
  %ter = getelementptr inbounds %struct.stmmac_est, ptr %cfg, i32 0, i32 6
  %4 = ptrtoint ptr %ter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ter, align 4
  %call5 = tail call fastcc i32 @dwmac5_est_write(ptr noundef %ioaddr, i32 noundef 4, i32 noundef %5, i1 noundef zeroext false)
  %or6 = or i32 %or4, %call5
  %gcl_size = getelementptr inbounds %struct.stmmac_est, ptr %cfg, i32 0, i32 9
  %6 = ptrtoint ptr %gcl_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gcl_size, align 4
  %call7 = tail call fastcc i32 @dwmac5_est_write(ptr noundef %ioaddr, i32 noundef 5, i32 noundef %7, i1 noundef zeroext false)
  %or8 = or i32 %or6, %call7
  %ctr = getelementptr inbounds %struct.stmmac_est, ptr %cfg, i32 0, i32 5
  %8 = ptrtoint ptr %ctr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctr, align 4
  %call10 = tail call fastcc i32 @dwmac5_est_write(ptr noundef %ioaddr, i32 noundef 2, i32 noundef %9, i1 noundef zeroext false)
  %or11 = or i32 %or8, %call10
  %arrayidx13 = getelementptr %struct.stmmac_est, ptr %cfg, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx13, align 4
  %call14 = tail call fastcc i32 @dwmac5_est_write(ptr noundef %ioaddr, i32 noundef 3, i32 noundef %11, i1 noundef zeroext false)
  %or15 = or i32 %or11, %call14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or15)
  %tobool.not = icmp eq i32 %or15, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %12 = ptrtoint ptr %gcl_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gcl_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp77.not = icmp eq i32 %13, 0
  br i1 %cmp77.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.078, 1
  %14 = ptrtoint ptr %gcl_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gcl_size, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.078 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx17 = getelementptr %struct.stmmac_est, ptr %cfg, i32 0, i32 8, i32 %i.078
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx17, align 4
  %call18 = tail call fastcc i32 @dwmac5_est_write(ptr noundef %ioaddr, i32 noundef %i.078, i32 noundef %17, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 3152
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  %19 = and i32 %18, -256
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %div = udiv i32 1000000000, %ptp_rate
  %shl = mul i32 %div, 100663296
  %or24 = or i32 %shl, %20
  %enable = getelementptr inbounds %struct.stmmac_est, ptr %cfg, i32 0, i32 1
  %21 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool25.not = icmp eq i32 %22, 0
  %or27 = or i32 %or24, 3
  %and28 = and i32 %or24, -16777218
  %ctrl.0 = select i1 %tobool25.not, i32 %and28, i32 %or27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !236
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %23) #6, !srcloc !188
  %24 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool32.not = icmp eq i32 %25, 0
  %ctrl.1 = select i1 %tobool32.not, i32 0, i32 520093696
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !237
  tail call void @arm_heavy_mb() #6
  %add.ptr39 = getelementptr i8, ptr %ioaddr, i32 3184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %ctrl.1) #6, !srcloc !188
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %or15, %entry.cleanup_crit_edge ], [ %call18, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwmac5_est_write(ptr noundef %ioaddr, i32 noundef %reg, i32 noundef %val, i1 noundef zeroext %gcl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !238
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 3204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #6, !srcloc !188
  %shl = shl i32 %reg, 8
  %cond = select i1 %gcl, i32 0, i32 4
  %or = or i32 %cond, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !239
  tail call void @arm_heavy_mb() #6
  %1 = tail call i32 @llvm.bswap.i32(i32 %or)
  %add.ptr4 = getelementptr i8, ptr %ioaddr, i32 3200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %1) #6, !srcloc !188
  %or5 = or i32 %or, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !240
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %or5)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %2) #6, !srcloc !188
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 5000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.83, i32 noundef 576) #6
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !241
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool23.not60 = icmp eq i32 %4, 0
  br i1 %tobool23.not60, label %entry.for.end.thread_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

land.lhs.true:                                    ; preds = %if.then39.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call27 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call27, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call27, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then39

if.then39:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #6
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !241
  %6 = and i32 %5, 16777216
  %tobool23.not = icmp eq i32 %6, 0
  br i1 %tobool23.not, label %if.then39.for.end.thread_crit_edge, label %if.then39.land.lhs.true_crit_edge

if.then39.land.lhs.true_crit_edge:                ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then39.for.end.thread_crit_edge:               ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !242
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool43.not = icmp eq i32 %8, 0
  br i1 %tobool43.not, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %9

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.then39.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  br label %9

9:                                                ; preds = %for.end.thread, %for.end._crit_edge
  %10 = phi i32 [ 0, %for.end.thread ], [ -110, %for.end._crit_edge ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwmac5_est_irq_status(ptr noundef %ioaddr, ptr noundef %dev, ptr nocapture noundef %x, i32 noundef %txqcnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %notmask = shl nsw i32 -1, %txqcnt
  %sub = xor i32 %notmask, -1
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 3160
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !185
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !243
  %and = and i32 %1, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %do.body

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 268435456) #6, !srcloc !188
  %mtl_est_cgce = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 113
  %2 = ptrtoint ptr %mtl_est_cgce to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mtl_est_cgce, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %mtl_est_cgce, align 4
  br label %if.end6

if.end6:                                          ; preds = %do.body, %if.end.if.end6_crit_edge
  %and7 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end26_crit_edge, label %if.then9

if.end6.if.end26_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then9:                                         ; preds = %if.end6
  %add.ptr12 = getelementptr i8, ptr %ioaddr, i32 3168
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #6, !srcloc !185
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !245
  %and16 = and i32 %5, %sub
  %mtl_est_hlbs = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 114
  %6 = ptrtoint ptr %mtl_est_hlbs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mtl_est_hlbs, align 8
  %inc17 = add i32 %7, 1
  store i32 %inc17, ptr %mtl_est_hlbs, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !246
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %and16)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %8) #6, !srcloc !188
  %call22 = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then9.if.end26_crit_edge, label %if.then24

if.then9.if.end26_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then24:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %and16) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.then9.if.end26_crit_edge, %if.end6.if.end26_crit_edge
  %and27 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end57_crit_edge, label %if.then29

if.end26.if.end57_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then29:                                        ; preds = %if.end26
  %add.ptr32 = getelementptr i8, ptr %ioaddr, i32 3172
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #6, !srcloc !185
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !247
  %and36 = and i32 %10, %sub
  %add.ptr39 = getelementptr i8, ptr %ioaddr, i32 3176
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !248
  %mtl_est_hlbf = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 115
  %12 = ptrtoint ptr %mtl_est_hlbf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mtl_est_hlbf, align 4
  %inc48 = add i32 %13, 1
  store i32 %inc48, ptr %mtl_est_hlbf, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !249
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %and36)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %14) #6, !srcloc !188
  %call53 = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then29.if.end57_crit_edge, label %if.then55

if.then29.if.end57_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then55:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %txqcnt)
  %cmp = icmp ugt i32 %txqcnt, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %txqcnt)
  %cmp44 = icmp ugt i32 %txqcnt, 2
  %cond = select i1 %cmp44, i32 196608, i32 65536
  %cond45 = select i1 %cmp, i32 458752, i32 %cond
  %15 = tail call i32 @llvm.bswap.i32(i32 %11)
  %and47 = and i32 %15, 32767
  %and46 = and i32 %15, %cond45
  %shr = lshr exact i32 %and46, 16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %shr, i32 noundef %and47) #9
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.then29.if.end57_crit_edge, %if.end26.if.end57_crit_edge
  %and58 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.if.end77_crit_edge, label %if.then60

if.end57.if.end77_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then60:                                        ; preds = %if.end57
  %and61 = and i32 %1, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 3840, i32 %and61)
  %cmp62 = icmp eq i32 %and61, 3840
  br i1 %cmp62, label %if.then63, label %if.else

if.then63:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  %mtl_est_btrlm = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 117
  %16 = ptrtoint ptr %mtl_est_btrlm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mtl_est_btrlm, align 4
  %inc64 = add i32 %17, 1
  store i32 %inc64, ptr %mtl_est_btrlm, align 4
  br label %if.end66

if.else:                                          ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  %mtl_est_btre = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 116
  %18 = ptrtoint ptr %mtl_est_btre to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mtl_est_btre, align 16
  %inc65 = add i32 %19, 1
  store i32 %inc65, ptr %mtl_est_btre, align 16
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then63
  %call69 = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end66.do.body73_crit_edge, label %if.then71

if.end66.do.body73_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.then71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %shr68 = lshr exact i32 %and61, 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %shr68) #9
  br label %do.body73

do.body73:                                        ; preds = %if.then71, %if.end66.do.body73_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !250
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #6, !srcloc !188
  br label %if.end77

if.end77:                                         ; preds = %do.body73, %if.end57.if.end77_crit_edge
  %and78 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end77.cleanup_crit_edge, label %do.body81

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !251
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #6, !srcloc !188
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body81, %if.end77.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwmac5_fpe_configure(ptr noundef %ioaddr, i32 noundef %num_txq, i32 noundef %num_rxq, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 564
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !252
  %1 = and i32 %0, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !253
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #6, !srcloc !188
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr5 = getelementptr i8, ptr %ioaddr, i32 164
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !254
  %3 = and i32 %2, -8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %sub = shl i32 %num_rxq, 24
  %shl = add i32 %sub, -16777216
  %or = or i32 %4, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !255
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %5) #6, !srcloc !188
  %add.ptr16 = getelementptr i8, ptr %ioaddr, i32 564
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !256
  %7 = or i32 %6, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %7) #6, !srcloc !188
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwmac5_fpe_irq_status(ptr noundef %ioaddr, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 564
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !185
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !258
  %and = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %and2 = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %or5 = or i32 %status.0, 2
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.5) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %status.1 = phi i32 [ %or5, %if.then4 ], [ %status.0, %if.end.if.end6_crit_edge ]
  %and7 = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %or10 = or i32 %status.1, 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.6) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  %status.2 = phi i32 [ %or10, %if.then9 ], [ %status.1, %if.end6.if.end11_crit_edge ]
  %and12 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end16_crit_edge, label %if.then14

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %or15 = or i32 %status.2, 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11.if.end16_crit_edge
  %status.3 = phi i32 [ %or15, %if.then14 ], [ %status.2, %if.end11.if.end16_crit_edge ]
  ret i32 %status.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwmac5_fpe_send_mpacket(ptr noundef %ioaddr, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 564
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !259
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  %1 = and i32 %0, -100663297
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %value.0.v = select i1 %cmp, i32 2, i32 4
  %value.0 = or i32 %2, %value.0.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !260
  tail call void @arm_heavy_mb() #6
  %3 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #6, !srcloc !188
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174}
!llvm.module.flags = !{!176, !177, !178, !179, !180, !181, !182, !183}
!llvm.ident = !{!184}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 656, i32 20}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 673, i32 20}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 686, i32 21}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 694, i32 20}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 733, i32 20}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 738, i32 20}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 743, i32 20}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 748, i32 20}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 86, i32 45}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 33, i32 20}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 34, i32 5}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 34, i32 21}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 43, i32 10}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 43, i32 19}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 44, i32 10}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 44, i32 18}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 45, i32 10}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 45, i32 19}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 46, i32 10}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 46, i32 18}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 47, i32 10}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 47, i32 20}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 48, i32 10}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 48, i32 19}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 49, i32 10}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 49, i32 19}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 50, i32 10}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 50, i32 20}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 51, i32 10}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 51, i32 18}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 52, i32 10}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 52, i32 18}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 53, i32 10}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 53, i32 18}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 54, i32 10}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 54, i32 18}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 55, i32 10}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 55, i32 18}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 56, i32 10}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 56, i32 20}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 57, i32 10}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 57, i32 20}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 58, i32 10}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 58, i32 20}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 59, i32 10}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 59, i32 20}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 60, i32 10}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 60, i32 20}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 61, i32 10}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 61, i32 20}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 62, i32 10}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 62, i32 20}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 63, i32 11}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 63, i32 22}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 67, i32 10}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 67, i32 20}
!112 = !{ptr @dwmac5_mac_errors, !113, !"dwmac5_mac_errors", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 42, i32 39}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 134, i32 45}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 91, i32 10}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 91, i32 19}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 92, i32 10}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 92, i32 19}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 93, i32 10}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 95, i32 10}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 95, i32 19}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 96, i32 10}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 96, i32 19}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 97, i32 10}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 99, i32 10}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 99, i32 18}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 100, i32 10}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 100, i32 18}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 101, i32 10}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 103, i32 10}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 103, i32 19}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 104, i32 10}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 104, i32 19}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 105, i32 10}
!156 = !{ptr @dwmac5_mtl_errors, !157, !"dwmac5_mtl_errors", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 90, i32 39}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 182, i32 45}
!160 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 139, i32 10}
!162 = !{ptr @.str.79, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 139, i32 18}
!164 = !{ptr @.str.80, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 140, i32 10}
!166 = !{ptr @.str.81, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 140, i32 18}
!168 = !{ptr @.str.82, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 141, i32 10}
!170 = !{ptr @dwmac5_dma_errors, !171, !"dwmac5_dma_errors", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 138, i32 39}
!172 = !{ptr @dwmac5_all_errors, !173, !"dwmac5_all_errors", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 293, i32 3}
!174 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac5.c", i32 324, i32 9}
!176 = !{i32 1, !"wchar_size", i32 2}
!177 = !{i32 1, !"min_enum_size", i32 4}
!178 = !{i32 8, !"branch-target-enforcement", i32 0}
!179 = !{i32 8, !"sign-return-address", i32 0}
!180 = !{i32 8, !"sign-return-address-all", i32 0}
!181 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!182 = !{i32 7, !"uwtable", i32 1}
!183 = !{i32 7, !"frame-pointer", i32 2}
!184 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!185 = !{i64 3002785}
!186 = !{i64 2157356566}
!187 = !{i64 2157357287}
!188 = !{i64 3002367}
!189 = !{i64 2157357975}
!190 = !{i64 2157358534}
!191 = !{i64 2157359222}
!192 = !{i64 2157359533}
!193 = !{i64 2157360221}
!194 = !{i64 2157360614}
!195 = !{i64 2157361302}
!196 = !{i64 2157361613}
!197 = !{i64 2157362107}
!198 = !{i64 2157362798}
!199 = !{i64 2157363303}
!200 = !{i64 2157353242}
!201 = !{i64 2157353471}
!202 = !{i64 2157354349}
!203 = !{i64 2157354578}
!204 = !{i64 2157355456}
!205 = !{i64 2157355685}
!206 = !{i8 0, i8 2}
!207 = !{i64 2157376467}
!208 = !{i64 2157376776}
!209 = !{i64 2157365157}
!210 = !{i64 2157365468}
!211 = !{i64 2157367418}
!212 = !{i64 2157367912}
!213 = !{i64 2157378546}
!214 = !{i64 2157368421}
!215 = !{i64 2157368732}
!216 = !{i64 2157378954}
!217 = !{i64 2157370698}
!218 = !{i64 2157371192}
!219 = !{i64 2157371423}
!220 = !{i64 2157372510}
!221 = !{i64 2157372998}
!222 = !{i64 2157373486}
!223 = !{i64 2157375452}
!224 = !{i64 2157375946}
!225 = !{i64 2157379763}
!226 = !{i64 2157380268}
!227 = !{i64 2157382802}
!228 = !{i64 2157385734}
!229 = !{i64 2157386346}
!230 = !{!"branch_weights", i32 2000, i32 1}
!231 = !{i64 2148626696, i64 2148626976, i64 2148627310, i64 2148627644}
!232 = !{i64 2157391984}
!233 = !{i64 2157392488}
!234 = !{i64 2157392936}
!235 = !{i64 2157397320}
!236 = !{i64 2157398489}
!237 = !{i64 2157399332}
!238 = !{i64 2157393340}
!239 = !{i64 2157393829}
!240 = !{i64 2157394319}
!241 = !{i64 2157396293}
!242 = !{i64 2157396787}
!243 = !{i64 2157400017}
!244 = !{i64 2157400842}
!245 = !{i64 2157401678}
!246 = !{i64 2157401907}
!247 = !{i64 2157402677}
!248 = !{i64 2157403182}
!249 = !{i64 2157405667}
!250 = !{i64 2157407652}
!251 = !{i64 2157408316}
!252 = !{i64 2157409070}
!253 = !{i64 2157409381}
!254 = !{i64 2157410069}
!255 = !{i64 2157410993}
!256 = !{i64 2157411681}
!257 = !{i64 2157411992}
!258 = !{i64 2157412682}
!259 = !{i64 2157413851}
!260 = !{i64 2157414408}
