; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/rsi/rsi_91x_sdio_ops.c_pt.bc'
source_filename = "../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.rsi_hw = type { ptr, i32, ptr, [3 x ptr], [4 x %struct.ieee80211_tx_queue_params], [6 x %struct.ieee80211_supported_band], ptr, i8, i32, i16, i32, %struct.rsi_ps_info, %struct.spinlock, i32, ptr, i8, ptr, %struct.timer_list, i8, i32, %struct.eepromrw_info, i32, i8, [2 x i8], ptr, ptr, ptr, ptr }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.rsi_ps_info = type <{ i8, i8, i8, i8, i8, i8, i16, i32, i16, i32, i16, i32 }>
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.eepromrw_info = type { i32, i32, i8, i16, [480 x i8] }
%struct.rsi_91x_sdiodev = type { ptr, ptr, %struct.receive_info, i32, i32, i8, i32, [16 x i8], i16, i8, i8, %struct.rsi_thread, [8192 x i8] }
%struct.receive_info = type { i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.rsi_thread = type { ptr, %struct.completion, ptr, %struct.rsi_event, %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rsi_event = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.rsi_common = type <{ ptr, [3 x %struct.vif_priv], ptr, i8, %struct.version_info, i8, %struct.rsi_thread, [6 x %struct.sk_buff_head], %struct.completion, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i8, i16, [2 x i8], [2 x i32], [2 x %struct.rsi_rate_config], i8, [3 x i8], %struct.transmit_q_stats, %struct.security_info, [4 x %struct.wmm_qinfo], [4 x %struct.ieee80211_tx_queue_params], [6 x i8], [2 x i8], i32, i8, i8, i8, i8, ptr, i8, i8, [20 x i16], i8, i8, i32, i8, [3 x i8], %struct.cqm_info, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.mutex, i8, i8, i8, i8, i16, i8, i8, i16, [2 x i8], [33 x %struct.rsi_sta], i32, i32, ptr, i8, [3 x i8], %struct.timer_list, ptr, i8, i8, [2 x i8], ptr, ptr, %struct.rsi_bgscan_params, %struct.rsi_9116_features, i8, i8, [2 x i8] }>
%struct.vif_priv = type { i8, i8, i16, i32 }
%struct.version_info = type { i16, i16, i8, i8, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { [8 x i8] }
%struct.sk_buff_head = type { %union.anon.105, i32, %struct.spinlock }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type { ptr, ptr }
%struct.rsi_rate_config = type { i32, i16, i8 }
%struct.transmit_q_stats = type { [6 x i32], [6 x i32] }
%struct.security_info = type { i32, i32 }
%struct.wmm_qinfo = type { i32, i32, i32, i32 }
%struct.cqm_info = type { i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rsi_sta = type { ptr, i16, [16 x i16], [16 x i8] }
%struct.rsi_bgscan_params = type { i16, i16, i16, i8, i8, i16, i16 }
%struct.rsi_9116_features = type { i8, i8, i8, i8, i8, i8, i32, i32 }

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: MASTER_ACCESS_MSBYTE:0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.rsi_sdio_master_access_msword = private unnamed_addr constant [30 x i8] c"rsi_sdio_master_access_msword\00", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: fail to access MASTER_ACCESS_MSBYTE\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:MASTER_ACCESS_LSBYTE:0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Terminated SDIO RX thread\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.rsi_sdio_rx_thread = private unnamed_addr constant [19 x i8] c"rsi_sdio_rx_thread\00", align 1
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Failed to write SDIO_NXT_RD_DELAY2\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.rsi_init_sdio_slave_regs = private unnamed_addr constant [25 x i8] c"rsi_init_sdio_slave_regs\00", align 1
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Enabling SDIO High speed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Failed to enable SDIO high speed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Initializing SDIO read start level\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Failed to write SDIO_READ_START_LVL\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Initializing FIFO ctrl registers\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Failed to write SDIO_READ_FIFO_CTL\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Failed to write SDIO_WRITE_FIFO_CTL\0A\00", [55 x i8] zeroinitializer }, align 32
@rsi_sdio_check_buffer_status.counter = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Failed to read status register\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.rsi_sdio_check_buffer_status = private unnamed_addr constant [29 x i8] c"rsi_sdio_check_buffer_status\00", align 1
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/rsi/rsi_common.h\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Failed to Read Intr Status Register\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.rsi_rx_handler = private unnamed_addr constant [15 x i8] c"rsi_rx_handler\00", align 1
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Intr_status = %x %d %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Failed to check buffer status\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: ==> BUFFER_AVAILABLE <==\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: ==> FIRMWARE Assert <==\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Failed to read f/w reg\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Firmware Status is 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Pkt pending interrupt\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Failed to read pkt\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown Interrupt %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Failed to read pkt length from the card:\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.rsi_process_pkt = private unnamed_addr constant [16 x i8] c"rsi_process_pkt\00", align 1
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Failed to read packet from card\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to read the packet\0A\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 40, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 48, i32 4 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 55, i32 21 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 76, i32 21 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 164, i32 5 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 171, i32 22 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 180, i32 5 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 187, i32 21 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 196, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 200, i32 21 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 209, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 220, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant [8 x i8] c"counter\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 346, i32 13 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 360, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant [41 x i8] c"../drivers/net/wireless/rsi/rsi_common.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 39, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 251, i32 5 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 265, i32 21 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 273, i32 6 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 279, i32 22 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 287, i32 22 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 294, i32 6 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 298, i32 6 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 310, i32 22 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 315, i32 23 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 328, i32 22 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 107, i32 5 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 127, i32 21 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [47 x i8] c"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 134, i32 21 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @rsi_sdio_check_buffer_status.counter, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_sdio_check_buffer_status.counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_sdio_master_access_msword(ptr noundef %adapter, i16 noundef zeroext %ms_word) local_unnamed_addr #0 align 64 {
entry:
  %byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte) #7
  %conv1 = trunc i16 %ms_word to i8
  %0 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv1, ptr %byte, align 1
  %conv1.mask = and i16 %ms_word, 255
  %conv2 = zext i16 %conv1.mask to i32
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rsi_sdio_master_access_msword, i32 noundef %conv2) #7
  %call = call i32 @rsi_sdio_write_register(ptr noundef %adapter, i8 noundef zeroext 0, i32 noundef 250, ptr noundef nonnull %byte) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rsi_sdio_master_access_msword) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = lshr i16 %ms_word, 8
  %conv4 = trunc i16 %1 to i8
  %2 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv4, ptr %byte, align 1
  %conv5 = zext i16 %1 to i32
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.rsi_sdio_master_access_msword, i32 noundef %conv5) #7
  %call6 = call i32 @rsi_sdio_write_register(ptr noundef %adapter, i8 noundef zeroext 0, i32 noundef 251, ptr noundef nonnull %byte) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %call6, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_sdio_write_register(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsi_sdio_rx_thread(ptr nocapture noundef readonly %common) local_unnamed_addr #3 align 64 {
entry:
  %value.i.i = alloca i8, align 1
  %isr_status.i = alloca i8, align 1
  %fw_status.i = alloca i8, align 1
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %rsi_dev = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsi_dev, align 4
  %event = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %3, i32 0, i32 11, i32 3
  %event_queue.i = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %3, i32 0, i32 11, i32 3, i32 1
  %interrupt_status.i = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 21
  %thread_done = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %3, i32 0, i32 11, i32 4
  br label %do.body

do.body:                                          ; preds = %rsi_rx_handler.exit.do.body_crit_edge, %entry
  call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 40) #7
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %event, i32 noundef 4) #7
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %do.body.rsi_wait_event.exit_crit_edge, label %if.then4.i

do.body.rsi_wait_event.exit_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_wait_event.exit

if.then4.i:                                       ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  %6 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #7
  %call68.i = call i32 @prepare_to_wait_event(ptr noundef %event_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #7
  %call.i.i19.i = call zeroext i1 @__kasan_check_read(ptr noundef %event, i32 noundef 4) #7
  %7 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp910.i = icmp eq i32 %8, 0
  br i1 %cmp910.i, label %if.then4.i.for.end.i_crit_edge, label %if.then4.i.if.end.i_crit_edge

if.then4.i.if.end.i_crit_edge:                    ; preds = %if.then4.i
  br label %if.end.i

if.then4.i.for.end.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.then4.i.if.end.i_crit_edge
  %call611.i = phi i32 [ %call6.i, %cleanup.i.if.end.i_crit_edge ], [ %call68.i, %if.then4.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call611.i)
  %tobool11.not.i = icmp eq i32 %call611.i, 0
  br i1 %tobool11.not.i, label %cleanup.i, label %if.end.i.__out.i_crit_edge

if.end.i.__out.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out.i

cleanup.i:                                        ; preds = %if.end.i
  call void @schedule() #7
  %call6.i = call i32 @prepare_to_wait_event(ptr noundef %event_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #7
  %call.i.i1.i = call zeroext i1 @__kasan_check_read(ptr noundef %event, i32 noundef 4) #7
  %9 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %event, align 4
  %cmp9.i = icmp eq i32 %10, 0
  br i1 %cmp9.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end.i_crit_edge

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then4.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %event_queue.i, ptr noundef nonnull %__wq_entry.i) #7
  br label %__out.i

__out.i:                                          ; preds = %for.end.i, %if.end.i.__out.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br label %rsi_wait_event.exit

rsi_wait_event.exit:                              ; preds = %__out.i, %do.body.rsi_wait_event.exit_crit_edge
  %call.i.i.i14 = call zeroext i1 @__kasan_check_write(ptr noundef %event, i32 noundef 4) #7
  %11 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 1, ptr %event, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rsi_dev, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %isr_status.i) #7
  %16 = ptrtoint ptr %isr_status.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %isr_status.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_status.i) #7
  %17 = ptrtoint ptr %fw_status.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %fw_status.i, align 1
  %sdio_int_counter.i = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %15, i32 0, i32 2, i32 7
  %18 = ptrtoint ptr %sdio_int_counter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sdio_int_counter.i, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %sdio_int_counter.i, align 4
  %rx_lock.i = getelementptr inbounds %struct.rsi_common, ptr %13, i32 0, i32 11
  call void @mutex_lock_nested(ptr noundef %rx_lock.i, i32 noundef 0) #7
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %13, align 4
  %call103.i = call i32 @rsi_sdio_read_register(ptr noundef %21, i32 noundef 249, ptr noundef nonnull %isr_status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103.i)
  %tobool.not104.i = icmp eq i32 %call103.i, 0
  br i1 %tobool.not104.i, label %if.end.lr.ph.i, label %rsi_wait_event.exit.if.then.i_crit_edge

rsi_wait_event.exit.if.then.i_crit_edge:          ; preds = %rsi_wait_event.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end.lr.ph.i:                                   ; preds = %rsi_wait_event.exit
  %event21.i = getelementptr inbounds %struct.rsi_common, ptr %13, i32 0, i32 6, i32 3
  %event_queue.i92.i = getelementptr inbounds %struct.rsi_common, ptr %13, i32 0, i32 6, i32 3, i32 1
  %buff_status_updated.i = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %15, i32 0, i32 10
  %fsm_state.i = getelementptr inbounds %struct.rsi_common, ptr %13, i32 0, i32 28
  %total_sdio_msdu_pending_intr.i = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %15, i32 0, i32 2, i32 8
  %total_sdio_unknown_intr.i = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %15, i32 0, i32 2, i32 9
  br label %if.end.i16

if.then.i:                                        ; preds = %if.end62.i.if.then.i_crit_edge, %rsi_wait_event.exit.if.then.i_crit_edge
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.rsi_rx_handler) #7
  br label %rsi_rx_handler.exit

if.end.i16:                                       ; preds = %if.end62.i.if.end.i16_crit_edge, %if.end.lr.ph.i
  %22 = ptrtoint ptr %isr_status.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %isr_status.i, align 1
  %conv.i = zext i8 %23 to i32
  %24 = ptrtoint ptr %interrupt_status.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv.i, ptr %interrupt_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp.i15 = icmp eq i8 %23, 0
  br i1 %cmp.i15, label %if.then5.i, label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %event21.i, i32 noundef 4) #7
  %25 = ptrtoint ptr %event21.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %event21.i, align 4
  call void @__wake_up(ptr noundef %event_queue.i92.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  %sdio_intr_status_zero.i = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %15, i32 0, i32 2, i32 6
  %26 = ptrtoint ptr %sdio_intr_status_zero.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sdio_intr_status_zero.i, align 4
  %inc7.i = add i32 %27, 1
  store i32 %inc7.i, ptr %sdio_intr_status_zero.i, align 4
  br label %rsi_rx_handler.exit

if.end9.i:                                        ; preds = %if.end.i16
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 256, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.rsi_rx_handler, i32 noundef %conv.i, i32 noundef 8, i32 noundef 4) #7
  %28 = ptrtoint ptr %isr_status.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %isr_status.i, align 1
  %30 = and i8 %29, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool12.not.i = icmp eq i8 %30, 0
  br i1 %tobool12.not.i, label %if.end9.i.if.end25.i_crit_edge, label %if.then13.i

if.end9.i.if.end25.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.then13.i:                                      ; preds = %if.end9.i
  %call14.i = call i32 @rsi_sdio_check_buffer_status(ptr noundef %1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.then17.i, label %if.then13.i.if.end18.i_crit_edge

if.then13.i.if.end18.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.rsi_rx_handler) #7
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %if.then13.i.if.end18.i_crit_edge
  %31 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %13, align 4
  call void @rsi_sdio_ack_intr(ptr noundef %32, i8 noundef zeroext 2) #7
  %call.i.i.i91.i = call zeroext i1 @__kasan_check_write(ptr noundef %event21.i, i32 noundef 4) #7
  %33 = ptrtoint ptr %event21.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 0, ptr %event21.i, align 4
  call void @__wake_up(ptr noundef %event_queue.i92.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 256, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.rsi_rx_handler) #7
  %34 = ptrtoint ptr %buff_status_updated.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %buff_status_updated.i, align 1
  %35 = ptrtoint ptr %isr_status.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %isr_status.i, align 1
  %37 = and i8 %36, -3
  store i8 %37, ptr %isr_status.i, align 1
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.end18.i, %if.end9.i.if.end25.i_crit_edge
  %38 = ptrtoint ptr %isr_status.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %isr_status.i, align 1
  %40 = and i8 %39, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool28.not.i = icmp eq i8 %40, 0
  br i1 %tobool28.not.i, label %if.end25.i.if.end40.i_crit_edge, label %if.then29.i

if.end25.i.if.end40.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

if.then29.i:                                      ; preds = %if.end25.i
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.rsi_rx_handler) #7
  %41 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %13, align 4
  %call31.i = call i32 @rsi_sdio_read_register(ptr noundef %42, i32 noundef 242, ptr noundef nonnull %fw_status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.else.i, label %if.then33.i

if.then33.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.rsi_rx_handler) #7
  br label %if.end36.i

if.else.i:                                        ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %fw_status.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %fw_status.i, align 1
  %conv34.i = zext i8 %44 to i32
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.rsi_rx_handler, i32 noundef %conv34.i) #7
  %45 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %13, align 4
  call void @rsi_sdio_ack_intr(ptr noundef %46, i8 noundef zeroext 4) #7
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else.i, %if.then33.i
  %47 = ptrtoint ptr %fsm_state.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %fsm_state.i, align 4
  %48 = ptrtoint ptr %isr_status.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %isr_status.i, align 1
  %50 = and i8 %49, -5
  store i8 %50, ptr %isr_status.i, align 1
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end36.i, %if.end25.i.if.end40.i_crit_edge
  %51 = ptrtoint ptr %isr_status.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %isr_status.i, align 1
  %53 = and i8 %52, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool43.not.i = icmp eq i8 %53, 0
  br i1 %tobool43.not.i, label %if.end40.i.if.end55.i_crit_edge, label %if.then44.i

if.end40.i.if.end55.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

if.then44.i:                                      ; preds = %if.end40.i
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 256, ptr noundef nonnull @.str.21) #7
  %54 = ptrtoint ptr %total_sdio_msdu_pending_intr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %total_sdio_msdu_pending_intr.i, align 4
  %inc46.i = add i32 %55, 1
  store i32 %inc46.i, ptr %total_sdio_msdu_pending_intr.i, align 4
  %56 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %13, align 4
  %rsi_dev.i.i = getelementptr inbounds %struct.rsi_hw, ptr %57, i32 0, i32 24
  %58 = ptrtoint ptr %rsi_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rsi_dev.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #7
  %60 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %value.i.i, align 1
  %interrupt_status.i.i = getelementptr inbounds %struct.rsi_hw, ptr %57, i32 0, i32 21
  %61 = ptrtoint ptr %interrupt_status.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %interrupt_status.i.i, align 4
  %and.i.i = and i32 %62, 1
  %63 = lshr i32 %62, 3
  %shl.i.i = and i32 %63, 254
  %or.i.i = or i32 %shl.i.i, %and.i.i
  %conv.i.i = trunc i32 %or.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i)
  %tobool.not.i.i = icmp eq i8 %conv.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then44.i.if.end7.i.i_crit_edge

if.then44.i.if.end7.i.i_crit_edge:                ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i

if.then.i.i:                                      ; preds = %if.then44.i
  %call.i.i17 = call i32 @rsi_sdio_read_register(ptr noundef %57, i32 noundef 241, ptr noundef nonnull %value.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17)
  %tobool2.not.i.i = icmp eq i32 %call.i.i17, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.rsi_process_pkt) #7
  br label %if.then49.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %value.i.i, align 1
  %66 = and i8 %65, 31
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i, %if.then44.i.if.end7.i.i_crit_edge
  %num_blks.0.i.i = phi i8 [ %conv.i.i, %if.then44.i.if.end7.i.i_crit_edge ], [ %66, %if.end.i.i ]
  %write_fail.i.i = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %59, i32 0, i32 9
  %67 = ptrtoint ptr %write_fail.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %write_fail.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %68)
  %cmp.i.i = icmp eq i8 %68, 2
  br i1 %cmp.i.i, label %if.then10.i.i, label %if.end7.i.i.if.end12.i.i_crit_edge

if.end7.i.i.if.end12.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i.i

if.then10.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %13, align 4
  call void @rsi_sdio_ack_intr(ptr noundef %70, i8 noundef zeroext 8) #7
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then10.i.i, %if.end7.i.i.if.end12.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_blks.0.i.i)
  %tobool13.not.i.i = icmp eq i8 %num_blks.0.i.i, 0
  br i1 %tobool13.not.i.i, label %if.then17.i.i, label %if.end19.i.i, !prof !77

if.then17.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %write_fail.i.i.le = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %59, i32 0, i32 9
  %71 = ptrtoint ptr %write_fail.i.i.le to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 2, ptr %write_fail.i.i.le, align 2
  br label %if.then49.i

if.end19.i.i:                                     ; preds = %if.end12.i.i
  %conv20.i.i = zext i8 %num_blks.0.i.i to i32
  %mul.i.i = shl nuw nsw i32 %conv20.i.i, 8
  %pktbuffer.i.i = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %59, i32 0, i32 12
  %call21.i.i = call i32 @rsi_sdio_host_intf_read_pkt(ptr noundef %57, ptr noundef %pktbuffer.i.i, i32 noundef %mul.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool22.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end24.i.i, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.rsi_process_pkt) #7
  br label %if.then49.i

if.end24.i.i:                                     ; preds = %if.end19.i.i
  %call27.i.i = call i32 @rsi_read_pkt(ptr noundef %13, ptr noundef %pktbuffer.i.i, i32 noundef %mul.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end51.i, label %if.then29.i.i

if.then29.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.26) #7
  br label %if.then49.i

if.then49.i:                                      ; preds = %if.then29.i.i, %if.then23.i.i, %if.then17.i.i, %if.then3.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #7
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.rsi_rx_handler) #7
  br label %rsi_rx_handler.exit

if.end51.i:                                       ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #7
  %72 = ptrtoint ptr %isr_status.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %isr_status.i, align 1
  %74 = and i8 %73, -9
  store i8 %74, ptr %isr_status.i, align 1
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.end51.i, %if.end40.i.if.end55.i_crit_edge
  %75 = phi i8 [ %74, %if.end51.i ], [ %52, %if.end40.i.if.end55.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool56.not.i = icmp eq i8 %75, 0
  br i1 %tobool56.not.i, label %if.end55.i.if.end62.i_crit_edge, label %if.then57.i

if.end55.i.if.end62.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.i

if.then57.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %13, align 4
  call void @rsi_sdio_ack_intr(ptr noundef %77, i8 noundef zeroext %75) #7
  %78 = ptrtoint ptr %total_sdio_unknown_intr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %total_sdio_unknown_intr.i, align 4
  %inc60.i = add i32 %79, 1
  store i32 %inc60.i, ptr %total_sdio_unknown_intr.i, align 4
  %80 = ptrtoint ptr %isr_status.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %isr_status.i, align 1
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 256, ptr noundef nonnull @.str.23, i32 noundef 0) #7
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then57.i, %if.end55.i.if.end62.i_crit_edge
  call void @mutex_unlock(ptr noundef %rx_lock.i) #7
  call void @mutex_lock_nested(ptr noundef %rx_lock.i, i32 noundef 0) #7
  %81 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %13, align 4
  %call.i = call i32 @rsi_sdio_read_register(ptr noundef %82, i32 noundef 249, ptr noundef nonnull %isr_status.i) #7
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end62.i.if.end.i16_crit_edge, label %if.end62.i.if.then.i_crit_edge

if.end62.i.if.then.i_crit_edge:                   ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end62.i.if.end.i16_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i16

rsi_rx_handler.exit:                              ; preds = %if.then49.i, %if.then5.i, %if.then.i
  call void @mutex_unlock(ptr noundef %rx_lock.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_status.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %isr_status.i) #7
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %thread_done, i32 noundef 4) #7
  %83 = ptrtoint ptr %thread_done to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %thread_done, align 4
  %tobool.not = icmp eq i32 %84, 0
  br i1 %tobool.not, label %rsi_rx_handler.exit.do.body_crit_edge, label %do.end

rsi_rx_handler.exit.do.body_crit_edge:            ; preds = %rsi_rx_handler.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %rsi_rx_handler.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.rsi_sdio_rx_thread) #7
  %call.i.i13 = call zeroext i1 @__kasan_check_write(ptr noundef %thread_done, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %thread_done, i32 1, i32 3, i32 1) #7
  %85 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %thread_done, ptr %thread_done, i32 1, ptr elementtype(i32) %thread_done) #7, !srcloc !78
  %completion = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %3, i32 0, i32 11, i32 1
  call void @__asan_handle_no_return()
  call void @kthread_complete_and_exit(ptr noundef %completion, i32 noundef 0) #10
  unreachable
}

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @kthread_complete_and_exit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_init_sdio_slave_regs(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rsi_dev = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 24
  %0 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsi_dev, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte) #7
  %2 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %byte, align 1, !annotation !79
  %next_read_delay = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %next_read_delay to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %next_read_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %conv = trunc i32 %4 to i8
  %5 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %byte, align 1
  %call = call i32 @rsi_sdio_write_register(ptr noundef %adapter, i8 noundef zeroext 0, i32 noundef 245, ptr noundef nonnull %byte) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %sdio_high_speed_enable = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %sdio_high_speed_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sdio_high_speed_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.end4.if.end11_crit_edge, label %if.then6

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then6:                                         ; preds = %if.end4
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.rsi_init_sdio_slave_regs) #7
  %8 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %byte, align 1
  %call7 = call i32 @rsi_sdio_write_register(ptr noundef %adapter, i8 noundef zeroext 0, i32 noundef 19, ptr noundef nonnull %byte) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.if.end11_crit_edge, label %if.then6.cleanup.sink.split_crit_edge

if.then6.cleanup.sink.split_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %if.end4.if.end11_crit_edge
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rsi_init_sdio_slave_regs) #7
  %9 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 36, ptr %byte, align 1
  %call12 = call i32 @rsi_sdio_write_register(ptr noundef %adapter, i8 noundef zeroext 0, i32 noundef 252, ptr noundef nonnull %byte) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup.sink.split_crit_edge

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end11
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.rsi_init_sdio_slave_regs) #7
  %10 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 96, ptr %byte, align 1
  %call16 = call i32 @rsi_sdio_write_register(ptr noundef %adapter, i8 noundef zeroext 0, i32 noundef 253, ptr noundef nonnull %byte) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup.sink.split_crit_edge

if.end15.cleanup.sink.split_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end19:                                         ; preds = %if.end15
  %11 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 32, ptr %byte, align 1
  %call20 = call i32 @rsi_sdio_write_register(ptr noundef %adapter, i8 noundef zeroext 0, i32 noundef 254, ptr noundef nonnull %byte) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.end19.cleanup.sink.split_crit_edge

if.end19.cleanup.sink.split_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end19.cleanup.sink.split_crit_edge, %if.end15.cleanup.sink.split_crit_edge, %if.end11.cleanup.sink.split_crit_edge, %if.then6.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.11.sink = phi ptr [ @.str.4, %if.then.cleanup.sink.split_crit_edge ], [ @.str.6, %if.then6.cleanup.sink.split_crit_edge ], [ @.str.8, %if.end11.cleanup.sink.split_crit_edge ], [ @.str.10, %if.end15.cleanup.sink.split_crit_edge ], [ @.str.11, %if.end19.cleanup.sink.split_crit_edge ]
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull %.str.11.sink, ptr noundef nonnull @__func__.rsi_init_sdio_slave_regs) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end19.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19.cleanup_crit_edge ], [ -1, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_sdio_check_buffer_status(ptr nocapture noundef readonly %adapter, i8 noundef zeroext %q_num) local_unnamed_addr #0 align 64 {
entry:
  %buf_status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %rsi_dev = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 24
  %2 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsi_dev, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf_status) #7
  %4 = ptrtoint ptr %buf_status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %buf_status, align 1
  %buff_status_updated = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %buff_status_updated to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buff_status_updated, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, ptr @rsi_sdio_check_buffer_status.counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %dec = add i32 %7, -1
  br label %out

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %buff_status_updated to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %buff_status_updated, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call = call i32 @rsi_sdio_read_register(ptr noundef %10, i32 noundef 243, ptr noundef nonnull %buf_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.rsi_sdio_check_buffer_status) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %11 = ptrtoint ptr %buf_status to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf_status, align 1
  %13 = and i8 %12, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  %mgmt_buffer_full16 = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %3, i32 0, i32 2, i32 2
  br i1 %tobool7.not, label %if.end6.if.end17_crit_edge, label %if.then8

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then8:                                         ; preds = %if.end6
  %14 = ptrtoint ptr %mgmt_buffer_full16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mgmt_buffer_full16, align 2, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool9.not = icmp eq i8 %15, 0
  br i1 %tobool9.not, label %if.then10, label %if.then8.if.end17_crit_edge

if.then8.if.end17_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %mgmt_buf_full_counter = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %3, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %mgmt_buf_full_counter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mgmt_buf_full_counter, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %mgmt_buf_full_counter, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %if.then8.if.end17_crit_edge, %if.end6.if.end17_crit_edge
  %.sink = phi i8 [ 1, %if.then10 ], [ 1, %if.then8.if.end17_crit_edge ], [ 0, %if.end6.if.end17_crit_edge ]
  %18 = ptrtoint ptr %mgmt_buffer_full16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink, ptr %mgmt_buffer_full16, align 2
  %19 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool20.not = icmp eq i8 %19, 0
  %rx_info31 = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %3, i32 0, i32 2
  br i1 %tobool20.not, label %if.end17.if.end33_crit_edge, label %if.then21

if.end17.if.end33_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then21:                                        ; preds = %if.end17
  %20 = ptrtoint ptr %rx_info31 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rx_info31, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool23.not = icmp eq i8 %21, 0
  br i1 %tobool23.not, label %if.then24, label %if.then21.if.end33_crit_edge

if.then21.if.end33_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %buf_full_counter = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %3, i32 0, i32 2, i32 10
  %22 = ptrtoint ptr %buf_full_counter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf_full_counter, align 4
  %inc26 = add i32 %23, 1
  store i32 %inc26, ptr %buf_full_counter, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then24, %if.then21.if.end33_crit_edge, %if.end17.if.end33_crit_edge
  %.sink104 = phi i8 [ 1, %if.then24 ], [ 1, %if.then21.if.end33_crit_edge ], [ 0, %if.end17.if.end33_crit_edge ]
  %24 = ptrtoint ptr %rx_info31 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink104, ptr %rx_info31, align 4
  %25 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool36.not = icmp eq i8 %25, 0
  %semi_buffer_full48 = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %3, i32 0, i32 2, i32 1
  br i1 %tobool36.not, label %if.end33.if.end49_crit_edge, label %if.then37

if.end33.if.end49_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then37:                                        ; preds = %if.end33
  %26 = ptrtoint ptr %semi_buffer_full48 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %semi_buffer_full48, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool39.not = icmp eq i8 %27, 0
  br i1 %tobool39.not, label %if.then40, label %if.then37.if.end49_crit_edge

if.then37.if.end49_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %buf_semi_full_counter = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %3, i32 0, i32 2, i32 4
  %28 = ptrtoint ptr %buf_semi_full_counter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buf_semi_full_counter, align 4
  %inc42 = add i32 %29, 1
  store i32 %inc42, ptr %buf_semi_full_counter, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then40, %if.then37.if.end49_crit_edge, %if.end33.if.end49_crit_edge
  %.sink102 = phi i8 [ 1, %if.then40 ], [ 1, %if.then37.if.end49_crit_edge ], [ 0, %if.end33.if.end49_crit_edge ]
  %30 = ptrtoint ptr %semi_buffer_full48 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %.sink102, ptr %semi_buffer_full48, align 1
  %mgmt_buffer_full51 = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %3, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %mgmt_buffer_full51 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mgmt_buffer_full51, align 2, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool52.not = icmp eq i8 %32, 0
  br i1 %tobool52.not, label %lor.lhs.false, label %if.end49.out_crit_edge

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false:                                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %buf_full_counter55 = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %3, i32 0, i32 2, i32 10
  %33 = ptrtoint ptr %buf_full_counter55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf_full_counter55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool56.not = icmp eq i32 %34, 0
  %spec.select = select i1 %tobool56.not, i32 4, i32 1
  br label %out

out:                                              ; preds = %lor.lhs.false, %if.end49.out_crit_edge, %if.then
  %.sink103 = phi i32 [ %dec, %if.then ], [ 1, %if.end49.out_crit_edge ], [ %spec.select, %lor.lhs.false ]
  store i32 %.sink103, ptr @rsi_sdio_check_buffer_status.counter, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %q_num)
  %cmp = icmp eq i8 %q_num, 4
  br i1 %cmp, label %land.lhs.true62, label %if.end68

land.lhs.true62:                                  ; preds = %out
  %mgmt_buffer_full64 = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %3, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %mgmt_buffer_full64 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %mgmt_buffer_full64, align 2, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool65.not = icmp eq i8 %36, 0
  br i1 %tobool65.not, label %land.lhs.true62.if.end78_crit_edge, label %land.lhs.true62.cleanup_crit_edge

land.lhs.true62.cleanup_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true62.if.end78_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.end68:                                         ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %q_num)
  %cmp70 = icmp ult i8 %q_num, 4
  br i1 %cmp70, label %land.lhs.true72, label %if.end68.if.end78_crit_edge

if.end68.if.end78_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

land.lhs.true72:                                  ; preds = %if.end68
  %rx_info73 = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %3, i32 0, i32 2
  %37 = ptrtoint ptr %rx_info73 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rx_info73, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool75.not = icmp eq i8 %38, 0
  br i1 %tobool75.not, label %land.lhs.true72.if.end78_crit_edge, label %land.lhs.true72.cleanup_crit_edge

land.lhs.true72.cleanup_crit_edge:                ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true72.if.end78_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.end78:                                         ; preds = %land.lhs.true72.if.end78_crit_edge, %if.end68.if.end78_crit_edge, %land.lhs.true62.if.end78_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %land.lhs.true72.cleanup_crit_edge, %land.lhs.true62.cleanup_crit_edge, %if.then5
  %retval.0 = phi i32 [ -1, %if.then5 ], [ 1, %if.end78 ], [ 0, %land.lhs.true62.cleanup_crit_edge ], [ 0, %land.lhs.true72.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf_status) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_sdio_read_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rsi_sdio_determine_event_timeout(ptr nocapture noundef readonly %adapter) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rsi_dev = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 24
  %0 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsi_dev, align 4
  %rx_info = getelementptr inbounds %struct.rsi_91x_sdiodev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rx_info to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_info, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %. = select i1 %tobool.not, i32 0, i32 2
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_sdio_ack_intr(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_sdio_host_intf_read_pkt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_read_pkt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 40, i32 3}
!2 = !{ptr @__func__.rsi_sdio_master_access_msword, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 40, i32 38}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 48, i32 4}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 55, i32 21}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 76, i32 21}
!10 = !{ptr @__func__.rsi_sdio_rx_thread, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 76, i32 56}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 164, i32 5}
!14 = !{ptr @__func__.rsi_init_sdio_slave_regs, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 165, i32 5}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 171, i32 22}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 180, i32 5}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 187, i32 21}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 196, i32 4}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 200, i32 21}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 209, i32 4}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 220, i32 4}
!30 = !{ptr @rsi_sdio_check_buffer_status.counter, !31, !"counter", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 346, i32 13}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 360, i32 4}
!34 = !{ptr @__func__.rsi_sdio_check_buffer_status, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 360, i32 44}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/rsi/rsi_common.h", i32 39, i32 12}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 251, i32 5}
!40 = !{ptr @__func__.rsi_rx_handler, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 252, i32 5}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 265, i32 21}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 273, i32 6}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 279, i32 22}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 287, i32 22}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 294, i32 6}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 298, i32 6}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 310, i32 22}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 315, i32 23}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 328, i32 22}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 107, i32 5}
!62 = !{ptr @__func__.rsi_process_pkt, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 108, i32 5}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 127, i32 21}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/rsi/rsi_91x_sdio_ops.c", i32 134, i32 21}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{i64 2148568129, i64 2148568155, i64 2148568184, i64 2148568218, i64 2148568249, i64 2148568272}
!79 = !{!"auto-init"}
!80 = !{i8 0, i8 2}
