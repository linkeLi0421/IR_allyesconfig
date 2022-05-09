; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath5k/dma.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath5k/dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ath5k_hw = type { %struct.ath_common, ptr, ptr, i32, i16, ptr, %struct.mutex, ptr, [6 x %struct.ieee80211_supported_band], [314 x %struct.ieee80211_channel], [6 x [32 x %struct.ieee80211_rate]], [6 x [32 x i8]], i32, %struct.ath5k_dbg_info, ptr, ptr, i32, i32, [1 x i32], i32, i32, ptr, i16, i32, %struct.spinlock, i8, i8, [6 x i8], i32, i32, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, ptr, %struct.tasklet_struct, %struct.ath5k_led, %struct.list_head, %struct.spinlock, i32, [10 x %struct.ath5k_txq], %struct.tasklet_struct, %struct.ath5k_led, %struct.ath5k_rfkill, %struct.spinlock, %struct.tasklet_struct, %struct.list_head, [4 x ptr], i16, i16, i16, i32, i32, i32, i32, i32, ptr, i8, i8, %struct.ath5k_statistics, %struct.ath5k_ani_state, %struct.tasklet_struct, %struct.delayed_work, %struct.survey_info, i32, ptr, i8, i8, i32, i32, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, [3 x [3 x i32]], i8, i8, i8, %struct.ath5k_capabilities, [10 x %struct.ath5k_txq_info], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.ath5k_gain, [8 x i8], %struct.anon.137, %struct.ath5k_nfcal_hist, %struct.ewma_beacon_rssi, i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ath5k_dbg_info = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath5k_txq = type { i32, ptr, %struct.list_head, %struct.spinlock, i8, i32, i32, i8, i32 }
%struct.ath5k_led = type { [32 x i8], ptr, %struct.led_classdev }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath5k_rfkill = type { i16, i8, %struct.tasklet_struct }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ath5k_statistics = type { [5 x i32], [5 x i32], i32, i32, i32, i32, i32, i32, [32 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath5k_ani_state = type { i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, %struct.ath_cycle_counters, i32, i32, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.130, i32 }
%union.anon.130 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.ath5k_capabilities = type { [1 x i32], %struct.anon.134, %struct.ath5k_eeprom_info, %struct.anon.136, i8, i8, i8 }
%struct.anon.134 = type { i16, i16, i16, i16 }
%struct.ath5k_eeprom_info = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x [11 x i16]], [3 x [4 x i16]], [3 x [4 x i16]], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i16], [3 x i8], [3 x [4 x i8]], [3 x i8], [10 x %struct.ath5k_chan_pcal_info], [4 x %struct.ath5k_chan_pcal_info], [4 x %struct.ath5k_chan_pcal_info], [3 x i8], [10 x %struct.ath5k_rate_pcal_info], [4 x %struct.ath5k_rate_pcal_info], [4 x %struct.ath5k_rate_pcal_info], i8, [32 x i8], [256 x %struct.ath5k_edge_power], [3 x i16], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, [5 x [2 x i16]], [3 x [3 x i32]] }
%struct.ath5k_chan_pcal_info = type { i16, i16, i16, %union.anon.135, ptr }
%union.anon.135 = type { %struct.ath5k_chan_pcal_info_rf2413 }
%struct.ath5k_chan_pcal_info_rf2413 = type { [4 x i8], [4 x i8], [4 x [5 x i8]], [4 x [5 x i8]] }
%struct.ath5k_rate_pcal_info = type { i16, i16, i16, i16, i16 }
%struct.ath5k_edge_power = type { i16, i16, i8 }
%struct.anon.136 = type { i8 }
%struct.ath5k_txq_info = type { i32, i32, i16, i8, i16, i16, i32, i32, i32, i32 }
%struct.ath5k_gain = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.137 = type { [4 x [64 x i8]], [4 x [64 x i8]], [128 x i8], [32 x i16], i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i32 }
%struct.ath5k_nfcal_hist = type { i16, [8 x i16] }
%struct.ewma_beacon_rssi = type { i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(%s:%d): tried to set RXDP while rx was active !\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.ath5k_hw_set_rxdp = private unnamed_addr constant [18 x i8] c"ath5k_hw_set_rxdp\00", align 1
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(%s:%d): beacon queue didn't stop !\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.ath5k_hw_stop_beacon_queue = private unnamed_addr constant [27 x i8] c"ath5k_hw_stop_beacon_queue\00", align 1
@ath5k_hw_get_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014ath5k: %s: ISR: 0x%08x IMR: 0x%08x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ath5k_hw_get_isr\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/wireless/ath/ath5k/dma.c\00", [59 x i8] zeroinitializer }, align 32
@ath5k_hw_get_isr._entry_ptr = internal global ptr @ath5k_hw_get_isr._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(%s:%d): queue %i didn't stop !\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.ath5k_hw_stop_tx_dma = private unnamed_addr constant [21 x i8] c"ath5k_hw_stop_tx_dma\00", align 1
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(%s:%d): quiet mechanism didn't work q:%i !\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(%s:%d): tx dma didn't stop (q:%i, frm:%i) !\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(%s:%d): failed to stop RX DMA !\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.ath5k_hw_stop_rx_dma = private unnamed_addr constant [21 x i8] c"ath5k_hw_stop_rx_dma\00", align 1
@switch.table.ath5k_hw_get_txdp = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 4, i32 4], [20 x i8] zeroinitializer }, align 32
@switch.table.ath5k_hw_set_txdp = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 4, i32 4], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 101, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 333, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 740, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 243, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 295, i32 5 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 309, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [40 x i8] c"../drivers/net/wireless/ath/ath5k/dma.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 74, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [31 x i8] c"switch.table.ath5k_hw_get_txdp\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [31 x i8] c"switch.table.ath5k_hw_set_txdp\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @ath5k_hw_get_isr._entry, ptr @ath5k_hw_get_isr._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @switch.table.ath5k_hw_get_txdp, ptr @switch.table.ath5k_hw_set_txdp], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath5k_hw_get_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath5k_hw_get_txdp to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath5k_hw_set_txdp to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_hw_start_rx_dma(ptr nocapture noundef readonly %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 67108864) #4, !srcloc !33
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_get_rxdp(ptr nocapture noundef readonly %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !34
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_set_rxdp(ptr noundef %ah, i32 noundef %phys_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %3 = and i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  %and1 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %do.body.return_crit_edge, label %land.rhs

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

land.rhs:                                         ; preds = %do.body
  %call3 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.rhs.return_crit_edge, label %if.then7, !prof !36

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then7:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ath5k_hw_set_rxdp, i32 noundef 102) #4
  br label %return

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %8 = tail call i32 @llvm.bswap.i32(i32 %phys_addr) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %8) #4, !srcloc !33
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %land.rhs.return_crit_edge, %do.body.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -5, %do.body.return_crit_edge ], [ -5, %land.rhs.return_crit_edge ], [ -5, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_ath5k_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_start_tx_dma(ptr nocapture noundef readonly %ah, i32 noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cap_queues = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 3
  %0 = ptrtoint ptr %cap_queues to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cap_queues, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %queue)
  %cmp.not = icmp ugt i32 %conv, %queue
  br i1 %cmp.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %4 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6 = icmp eq i32 %5, 0
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase.i, align 4
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !34
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.then8.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
    i32 3, label %sw.bb14
  ]

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %9, 1
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %or13 = or i32 %9, 2
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %14, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 167772160) #4, !srcloc !33
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %or15 = or i32 %9, 2
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %16, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 234881024) #4, !srcloc !33
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb12, %sw.bb
  %tx_queue.0 = phi i32 [ %or15, %sw.bb14 ], [ %or13, %sw.bb12 ], [ %or, %sw.bb ]
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %19 = tail call i32 @llvm.bswap.i32(i32 %tx_queue.0) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %19) #4, !srcloc !33
  %20 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  br label %cleanup

if.else:                                          ; preds = %if.end5
  %add.ptr.i48 = getelementptr i8, ptr %7, i32 2176
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #4, !srcloc !34
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %shl = shl nuw i32 1, %queue
  %and = and i32 %24, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end19, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %26, i32 2112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %27 = tail call i32 @llvm.bswap.i32(i32 %shl) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %27) #4, !srcloc !33
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.else.cleanup_crit_edge, %sw.epilog, %if.then8.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %if.then8.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ], [ 0, %if.end19 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_stop_beacon_queue(ptr noundef %ah, i32 noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ath5k_hw_stop_tx_dma(ptr noundef %ah, i32 noundef %queue)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %land.rhs

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.rhs:                                         ; preds = %do.body
  %call2 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.rhs.cleanup_crit_edge, label %if.then6, !prof !36

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then6:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ath5k_hw_stop_beacon_queue, i32 noundef 334) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %land.rhs.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.body.cleanup_crit_edge ], [ -5, %if.then6 ], [ -5, %land.rhs.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath5k_hw_stop_tx_dma(ptr noundef %ah, i32 noundef %queue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cap_queues = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 3
  %0 = ptrtoint ptr %cap_queues to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cap_queues, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %queue)
  %cmp.not = icmp ugt i32 %conv, %queue
  br i1 %cmp.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %4 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !34
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %11, label %if.then8.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.then8.sw.bb12_crit_edge
    i32 3, label %if.then8.sw.bb12_crit_edge251
  ]

if.then8.sw.bb12_crit_edge251:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb12

if.then8.sw.bb12_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb12

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %9, 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.then8.sw.bb12_crit_edge, %if.then8.sw.bb12_crit_edge251
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i202 = getelementptr i8, ptr %14, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i202, i32 0) #4, !srcloc !33
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb
  %tx_queue.0 = phi i32 [ %9, %sw.bb12 ], [ %or, %sw.bb ]
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i204 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %17 = tail call i32 @llvm.bswap.i32(i32 %tx_queue.0) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i204, i32 %17) #4, !srcloc !33
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i206 = getelementptr i8, ptr %19, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i206) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  br label %cleanup

if.else:                                          ; preds = %if.end5
  %queue.tr = trunc i32 %queue to i16
  %21 = shl i16 %queue.tr, 2
  %conv15 = add i16 %21, 2496
  %iobase.i207 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %22 = ptrtoint ptr %iobase.i207 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iobase.i207, align 4
  %conv.i = zext i16 %conv15 to i32
  %add.ptr.i208 = getelementptr i8, ptr %23, i32 %conv.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i208) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %25 = or i32 %24, 524288
  %26 = ptrtoint ptr %iobase.i207 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iobase.i207, align 4
  %add.ptr.i211 = getelementptr i8, ptr %27, i32 %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i211, i32 %25) #4, !srcloc !33
  %shl21 = shl nuw i32 1, %queue
  %28 = ptrtoint ptr %iobase.i207 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iobase.i207, align 4
  %add.ptr.i213 = getelementptr i8, ptr %29, i32 2176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %30 = tail call i32 @llvm.bswap.i32(i32 %shl21) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213, i32 %30) #4, !srcloc !33
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %if.else
  %i.0250 = phi i32 [ 1000, %if.else ], [ %dec, %for.body.land.rhs_crit_edge ]
  %31 = ptrtoint ptr %iobase.i207 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iobase.i207, align 4
  %add.ptr.i215 = getelementptr i8, ptr %32, i32 2112
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i215) #4, !srcloc !34
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %and = and i32 %34, %shl21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp26.not = icmp eq i32 %and, 0
  br i1 %cmp26.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 21474800) #4
  %dec = add nsw i32 %i.0250, -1
  %cmp22.not = icmp eq i32 %dec, 0
  br i1 %cmp22.not, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %36 = ptrtoint ptr %iobase.i207 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iobase.i207, align 4
  %add.ptr.i217 = getelementptr i8, ptr %37, i32 2112
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i217) #4, !srcloc !34
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %and30 = and i32 %39, %shl21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool.not = icmp eq i32 %and30, 0
  br i1 %tobool.not, label %for.end.if.end45_crit_edge, label %do.body32

for.end.if.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

do.body32:                                        ; preds = %for.end
  %debug = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %40 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %debug, align 4
  %and33 = and i32 %41, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body32.if.end45_crit_edge, label %land.rhs35

do.body32.if.end45_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

land.rhs35:                                       ; preds = %do.body32
  %call36 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.rhs35.if.end45_crit_edge, label %if.then41, !prof !36

land.rhs35.if.end45_crit_edge:                    ; preds = %land.rhs35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then41:                                        ; preds = %land.rhs35
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ath5k_hw_stop_tx_dma, i32 noundef 244, i32 noundef %queue) #4
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %land.rhs35.if.end45_crit_edge, %do.body32.if.end45_crit_edge, %for.end.if.end45_crit_edge
  %conv49 = add i16 %21, 2560
  %conv.i219 = zext i16 %conv49 to i32
  br label %do.body46

do.body46:                                        ; preds = %do.body46.do.body46_crit_edge, %if.end45
  %i.1 = phi i32 [ 1000, %if.end45 ], [ %dec53, %do.body46.do.body46_crit_edge ]
  %42 = ptrtoint ptr %iobase.i207 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iobase.i207, align 4
  %add.ptr.i220 = getelementptr i8, ptr %43, i32 %conv.i219
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i220) #4, !srcloc !34
  %45 = lshr i32 %44, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %and51 = and i32 %45, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 21474800) #4
  %dec53 = add nsw i32 %i.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec53)
  %tobool54.not = icmp eq i32 %dec53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool56.not = icmp eq i32 %and51, 0
  %or.cond = select i1 %tobool54.not, i1 true, i1 %tobool56.not
  br i1 %or.cond, label %do.end58, label %do.body46.do.body46_crit_edge

do.body46.do.body46_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body46

do.end58:                                         ; preds = %do.body46
  %ah_mac_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 71
  %47 = ptrtoint ptr %ah_mac_version to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %ah_mac_version, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %48)
  %cmp60 = icmp ult i16 %48, 7
  %brmerge = select i1 %cmp60, i1 true, i1 %tobool56.not
  %and51.mux = select i1 %cmp60, i32 %and51, i32 0
  br i1 %brmerge, label %do.end58.if.end109_crit_edge, label %if.then63

do.end58.if.end109_crit_edge:                     ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end109

if.then63:                                        ; preds = %do.end58
  %49 = ptrtoint ptr %iobase.i207 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iobase.i207, align 4
  %add.ptr.i222 = getelementptr i8, ptr %50, i32 33024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i222, i32 1677724160) #4, !srcloc !33
  %51 = ptrtoint ptr %iobase.i207 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %iobase.i207, align 4
  %add.ptr.i224 = getelementptr i8, ptr %52, i32 32844
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i224) #4, !srcloc !34
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %shr = lshr i32 %54, 10
  %and66 = and i32 %shr, 65535
  %or67 = or i32 %and66, 65536
  %55 = ptrtoint ptr %iobase.i207 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iobase.i207, align 4
  %add.ptr.i226 = getelementptr i8, ptr %56, i32 33020
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %57 = tail call i32 @llvm.bswap.i32(i32 %or67) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i226, i32 %57) #4, !srcloc !33
  %58 = ptrtoint ptr %iobase.i207 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %iobase.i207, align 4
  %add.ptr.i228 = getelementptr i8, ptr %59, i32 32840
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i228) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %61 = or i32 %60, 16384
  %62 = ptrtoint ptr %iobase.i207 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %iobase.i207, align 4
  %add.ptr.i230 = getelementptr i8, ptr %63, i32 32840
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i230, i32 %61) #4, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 85899200) #4
  %65 = ptrtoint ptr %iobase.i207 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %iobase.i207, align 4
  %add.ptr.i232 = getelementptr i8, ptr %66, i32 33020
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i232) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %68 = and i32 %67, -257
  %69 = ptrtoint ptr %iobase.i207 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %iobase.i207, align 4
  %add.ptr.i234 = getelementptr i8, ptr %70, i32 33020
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i234, i32 %68) #4, !srcloc !33
  br label %do.body72

do.body72:                                        ; preds = %do.body72.do.body72_crit_edge, %if.then63
  %i.2 = phi i32 [ 100, %if.then63 ], [ %dec79, %do.body72.do.body72_crit_edge ]
  %71 = ptrtoint ptr %iobase.i207 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %iobase.i207, align 4
  %add.ptr.i237 = getelementptr i8, ptr %72, i32 %conv.i219
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i237) #4, !srcloc !34
  %74 = lshr i32 %73, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %and77 = and i32 %74, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 21474800) #4
  %dec79 = add nsw i32 %i.2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec79)
  %tobool80.not = icmp eq i32 %dec79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool82.not = icmp eq i32 %and77, 0
  %or.cond200 = select i1 %tobool80.not, i1 true, i1 %tobool82.not
  br i1 %or.cond200, label %do.end84, label %do.body72.do.body72_crit_edge

do.body72.do.body72_crit_edge:                    ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body72

do.end84:                                         ; preds = %do.body72
  %76 = ptrtoint ptr %iobase.i207 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %iobase.i207, align 4
  %add.ptr.i239 = getelementptr i8, ptr %77, i32 32840
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i239) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %79 = and i32 %78, -16385
  %80 = ptrtoint ptr %iobase.i207 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %iobase.i207, align 4
  %add.ptr.i241 = getelementptr i8, ptr %81, i32 32840
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i241, i32 %79) #4, !srcloc !33
  br i1 %tobool82.not, label %do.end84.if.end109_crit_edge, label %do.body89

do.end84.if.end109_crit_edge:                     ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end109

do.body89:                                        ; preds = %do.end84
  %debug90 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %82 = ptrtoint ptr %debug90 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %debug90, align 4
  %and92 = and i32 %83, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %do.body89.if.end109_crit_edge, label %land.rhs94

do.body89.if.end109_crit_edge:                    ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end109

land.rhs94:                                       ; preds = %do.body89
  %call95 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %land.rhs94.if.end109_crit_edge, label %if.then104, !prof !36

land.rhs94.if.end109_crit_edge:                   ; preds = %land.rhs94
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end109

if.then104:                                       ; preds = %land.rhs94
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ath5k_hw_stop_tx_dma, i32 noundef 297, i32 noundef %queue) #4
  br label %if.end109

if.end109:                                        ; preds = %if.then104, %land.rhs94.if.end109_crit_edge, %do.body89.if.end109_crit_edge, %do.end84.if.end109_crit_edge, %do.end58.if.end109_crit_edge
  %pending.0 = phi i32 [ %and77, %if.then104 ], [ %and77, %land.rhs94.if.end109_crit_edge ], [ 0, %do.end84.if.end109_crit_edge ], [ %and51.mux, %do.end58.if.end109_crit_edge ], [ %and77, %do.body89.if.end109_crit_edge ]
  %84 = ptrtoint ptr %iobase.i207 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %iobase.i207, align 4
  %add.ptr.i244 = getelementptr i8, ptr %85, i32 %conv.i
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i244) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %87 = and i32 %86, -524289
  %88 = ptrtoint ptr %iobase.i207 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %iobase.i207, align 4
  %add.ptr.i247 = getelementptr i8, ptr %89, i32 %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i247, i32 %87) #4, !srcloc !33
  %90 = ptrtoint ptr %iobase.i207 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %iobase.i207, align 4
  %add.ptr.i249 = getelementptr i8, ptr %91, i32 2176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i249, i32 0) #4, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pending.0)
  %tobool118.not = icmp eq i32 %pending.0, 0
  br i1 %tobool118.not, label %if.end109.cleanup_crit_edge, label %do.body120

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body120:                                       ; preds = %if.end109
  %debug121 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %92 = ptrtoint ptr %debug121 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %debug121, align 4
  %and123 = and i32 %93, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %do.body120.cleanup_crit_edge, label %land.rhs125

do.body120.cleanup_crit_edge:                     ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.rhs125:                                      ; preds = %do.body120
  %call126 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %land.rhs125.cleanup_crit_edge, label %if.then135, !prof !36

land.rhs125.cleanup_crit_edge:                    ; preds = %land.rhs125
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then135:                                       ; preds = %land.rhs125
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ath5k_hw_stop_tx_dma, i32 noundef 311, i32 noundef %queue, i32 noundef %pending.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then135, %land.rhs125.cleanup_crit_edge, %do.body120.cleanup_crit_edge, %if.end109.cleanup_crit_edge, %sw.epilog, %if.then8.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %if.then8.cleanup_crit_edge ], [ -16, %do.body120.cleanup_crit_edge ], [ -16, %if.then135 ], [ -16, %land.rhs125.cleanup_crit_edge ], [ 0, %if.end109.cleanup_crit_edge ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_get_txdp(ptr nocapture noundef readonly %ah, i32 noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cap_queues = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 3
  %0 = ptrtoint ptr %cap_queues to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cap_queues, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %queue)
  %cmp.not = icmp ugt i32 %conv, %queue
  br i1 %cmp.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %2 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %do.end
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 8
  %switch.tableidx = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %7 = shl i32 %queue, 2
  %conv6 = add i32 %7, 2048
  %phi.cast = and i32 %conv6, 65532
  br label %if.end7

switch.lookup:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.ath5k_hw_get_txdp, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end7

if.end7:                                          ; preds = %switch.lookup, %if.else
  %tx_reg.0 = phi i32 [ %phi.cast, %if.else ], [ %switch.load, %switch.lookup ]
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %tx_reg.0
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !34
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ -1, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_set_txdp(ptr nocapture noundef readonly %ah, i32 noundef %queue, i32 noundef %phys_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cap_queues = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 86, i32 3
  %0 = ptrtoint ptr %cap_queues to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cap_queues, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %queue)
  %cmp.not = icmp ugt i32 %conv, %queue
  br i1 %cmp.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %2 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %do.end
  %arrayidx = getelementptr %struct.ath5k_hw, ptr %ah, i32 0, i32 87, i32 %queue
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 8
  %switch.tableidx = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %do.end
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 2112
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !34
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %shl = shl nuw i32 1, %queue
  %and = and i32 %10, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %11 = shl i32 %queue, 2
  %conv9 = add i32 %11, 2048
  %phi.cast = and i32 %conv9, 65532
  br label %if.end10

switch.lookup:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.ath5k_hw_set_txdp, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end10

if.end10:                                         ; preds = %switch.lookup, %if.end7
  %tx_reg.0 = phi i32 [ %phi.cast, %if.end7 ], [ %switch.load, %switch.lookup ]
  %iobase.i18 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %13 = ptrtoint ptr %iobase.i18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase.i18, align 4
  %add.ptr.i19 = getelementptr i8, ptr %14, i32 %tx_reg.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %15 = tail call i32 @llvm.bswap.i32(i32 %phys_addr) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %15) #4, !srcloc !33
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.else.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.then4.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_update_tx_triglevel(ptr nocapture noundef %ah, i1 noundef zeroext %increase) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_imr = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 64
  %0 = ptrtoint ptr %ah_imr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_imr, align 8
  %and = and i32 %1, 2147483647
  %call = tail call i32 @ath5k_hw_set_imr(ptr noundef %ah, i32 noundef %and)
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !34
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %and2 = lshr i32 %5, 4
  %shr = and i32 %and2, 63
  br i1 %increase, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %dec = add nsw i32 %shr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then.done_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then.done_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sub = sub nsw i32 37, %shr
  %div24 = lshr i32 %sub, 1
  %add = add nuw i32 %div24, %shr
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then.if.end4_crit_edge
  %trigger_level.0 = phi i32 [ %add, %if.else ], [ %dec, %if.then.if.end4_crit_edge ]
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %6 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5 = icmp eq i32 %7, 0
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 4
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i26 = getelementptr i8, ptr %9, i32 32868
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %10 = tail call i32 @llvm.bswap.i32(i32 %trigger_level.0) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %10) #4, !srcloc !33
  br label %done

if.else7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i28 = getelementptr i8, ptr %9, i32 48
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %12 = and i32 %11, 268238847
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %shl = shl i32 %trigger_level.0, 4
  %and10 = and i32 %shl, 1008
  %or = or i32 %13, %and10
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %15, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %16) #4, !srcloc !33
  br label %done

done:                                             ; preds = %if.else7, %if.then6, %if.then.done_crit_edge
  %ret.0 = phi i32 [ -5, %if.then.done_crit_edge ], [ 0, %if.else7 ], [ 0, %if.then6 ]
  %call12 = tail call i32 @ath5k_hw_set_imr(ptr noundef %ah, i32 noundef %call)
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_set_imr(ptr nocapture noundef %ah, i32 noundef %new_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_imr = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 64
  %0 = ptrtoint ptr %ah_imr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_imr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not = icmp sgt i32 %1, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #4, !srcloc !33
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i97 = getelementptr i8, ptr %5, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %7 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %iobase.i98 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %9 = ptrtoint ptr %iobase.i98 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase.i98, align 4
  %add.ptr.i99 = getelementptr i8, ptr %10, i32 172
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %12 = and i32 %11, -16580608
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %and5 = and i32 %new_mask, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or8 = or i32 %13, 458752
  %14 = and i32 %new_mask, -2129657857
  %simr2.0 = select i1 %tobool6.not, i32 %13, i32 %or8
  %and10 = and i32 %new_mask, 2097152
  %15 = shl nuw nsw i32 %and10, 2
  %16 = or i32 %15, %14
  %17 = shl nuw nsw i32 %and10, 3
  %18 = or i32 %simr2.0, %17
  %and20 = shl i32 %new_mask, 7
  %19 = and i32 %and20, 536870912
  %20 = or i32 %18, %19
  %and25 = shl i32 %new_mask, 3
  %21 = and i32 %and25, 67108864
  %22 = or i32 %20, %21
  %and30 = shl i32 %new_mask, 2
  %23 = and i32 %and30, 402653184
  %24 = or i32 %23, %22
  %and40 = and i32 %new_mask, 1048576
  %25 = or i32 %16, %and40
  %26 = ptrtoint ptr %iobase.i98 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iobase.i98, align 4
  %add.ptr.i101 = getelementptr i8, ptr %27, i32 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %28 = tail call i32 @llvm.bswap.i32(i32 %25) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 %28) #4, !srcloc !33
  %29 = ptrtoint ptr %iobase.i98 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iobase.i98, align 4
  %add.ptr.i103 = getelementptr i8, ptr %30, i32 172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %31 = tail call i32 @llvm.bswap.i32(i32 %24) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 %31) #4, !srcloc !33
  br label %if.end50

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %and1 = and i32 %new_mask, -2130182145
  %and45 = and i32 %new_mask, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %or48 = or i32 %and1, 7864320
  %spec.select = select i1 %tobool46.not, i32 %and1, i32 %or48
  %iobase.i104 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %32 = ptrtoint ptr %iobase.i104 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iobase.i104, align 4
  %add.ptr.i105 = getelementptr i8, ptr %33, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %34 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 %34) #4, !srcloc !33
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then2
  %and51 = and i32 %new_mask, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.then53, label %if.end50.if.end54_crit_edge

if.end50.if.end54_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  %iobase.i106 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %35 = ptrtoint ptr %iobase.i106 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iobase.i106, align 4
  %add.ptr.i107 = getelementptr i8, ptr %36, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 0) #4, !srcloc !33
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50.if.end54_crit_edge
  %37 = ptrtoint ptr %ah_imr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %new_mask, ptr %ah_imr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %new_mask)
  %tobool57.not = icmp sgt i32 %new_mask, -1
  br i1 %tobool57.not, label %if.end54.if.end60_crit_edge, label %if.then58

if.end54.if.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  %iobase.i108 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %38 = ptrtoint ptr %iobase.i108 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iobase.i108, align 4
  %add.ptr.i109 = getelementptr i8, ptr %39, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 16777216) #4, !srcloc !33
  %40 = ptrtoint ptr %iobase.i108 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iobase.i108, align 4
  %add.ptr.i111 = getelementptr i8, ptr %41, i32 36
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end54.if.end60_crit_edge
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ath5k_hw_is_intr_pending(ptr nocapture noundef readonly %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16392
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %2)
  %cmp = icmp eq i32 %2, 16777216
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_get_isr(ptr noundef %ah, ptr noundef %interrupt_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %0 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !34
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp1 = icmp eq i32 %4, -1
  br i1 %cmp1, label %cleanup, label %if.end, !prof !37

if.end:                                           ; preds = %if.then
  %and = and i32 %5, -2130182145
  %ah_imr = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 64
  %6 = ptrtoint ptr %ah_imr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ah_imr, align 8
  %and4 = and i32 %and, %7
  %and5 = and i32 %5, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.cleanup.thread_crit_edge, label %if.then13, !prof !36

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %and4, 524288
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then13, %if.end.cleanup.thread_crit_edge
  %storemerge273.ph = phi i32 [ %and4, %if.end.cleanup.thread_crit_edge ], [ %or, %if.then13 ]
  %8 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge273.ph, ptr %interrupt_mask, align 4
  br label %if.end181

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %interrupt_mask, align 4
  br label %cleanup195

if.else:                                          ; preds = %entry
  %add.ptr.i275 = getelementptr i8, ptr %3, i32 128
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i275) #4, !srcloc !34
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp16 = icmp eq i32 %10, -1
  br i1 %cmp16, label %cleanup172, label %if.end24, !prof !37

if.end24:                                         ; preds = %if.else
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i277 = getelementptr i8, ptr %13, i32 132
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i277) #4, !srcloc !34
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %16 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i279 = getelementptr i8, ptr %17, i32 136
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i279) #4, !srcloc !34
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %20 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i281 = getelementptr i8, ptr %21, i32 140
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i281) #4, !srcloc !34
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %24 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i283 = getelementptr i8, ptr %25, i32 144
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i283) #4, !srcloc !34
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %28 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i285 = getelementptr i8, ptr %29, i32 148
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i285) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %or32 = and i32 %11, -243793921
  %31 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i287 = getelementptr i8, ptr %32, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i287, i32 %14) #4, !srcloc !33
  %33 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i289 = getelementptr i8, ptr %34, i32 136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i289, i32 %18) #4, !srcloc !33
  %35 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i291 = getelementptr i8, ptr %36, i32 140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i291, i32 %22) #4, !srcloc !33
  %37 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i293 = getelementptr i8, ptr %38, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i293, i32 %26) #4, !srcloc !33
  %39 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i295 = getelementptr i8, ptr %40, i32 148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i295, i32 %30) #4, !srcloc !33
  %41 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i297 = getelementptr i8, ptr %42, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %43 = tail call i32 @llvm.bswap.i32(i32 %or32) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i297, i32 %43) #4, !srcloc !33
  %44 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i299 = getelementptr i8, ptr %45, i32 128
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i299) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %and34 = and i32 %11, -2130182145
  %ah_imr35 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 64
  %47 = ptrtoint ptr %ah_imr35 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ah_imr35, align 8
  %and36 = and i32 %and34, %48
  %49 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and36, ptr %interrupt_mask, align 4
  %and37 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end24.if.end42_crit_edge, label %if.then39

if.end24.if.end42_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.then39:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %and40 = and i32 %15, 1023
  %ah_txq_isr_txok_all = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 98
  %50 = ptrtoint ptr %ah_txq_isr_txok_all to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ah_txq_isr_txok_all, align 8
  %or41 = or i32 %51, %and40
  store i32 %or41, ptr %ah_txq_isr_txok_all, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end24.if.end42_crit_edge
  %and43 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.if.end50_crit_edge, label %if.then45

if.end42.if.end50_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  %and46 = lshr i32 %15, 16
  %shr47 = and i32 %and46, 1023
  %ah_txq_isr_txok_all48 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 98
  %52 = ptrtoint ptr %ah_txq_isr_txok_all48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ah_txq_isr_txok_all48, align 8
  %or49 = or i32 %53, %shr47
  store i32 %or49, ptr %ah_txq_isr_txok_all48, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.end42.if.end50_crit_edge
  %and51 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end50.if.end58_crit_edge, label %if.then53

if.end50.if.end58_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  %and54 = and i32 %19, 1023
  %ah_txq_isr_txok_all56 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 98
  %54 = ptrtoint ptr %ah_txq_isr_txok_all56 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ah_txq_isr_txok_all56, align 8
  %or57 = or i32 %55, %and54
  store i32 %or57, ptr %ah_txq_isr_txok_all56, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %if.end50.if.end58_crit_edge
  %and59 = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.if.end66_crit_edge, label %if.then61

if.end58.if.end66_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  %and62 = lshr i32 %19, 16
  %shr63 = and i32 %and62, 1023
  %ah_txq_isr_txok_all64 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 98
  %56 = ptrtoint ptr %ah_txq_isr_txok_all64 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ah_txq_isr_txok_all64, align 8
  %or65 = or i32 %57, %shr63
  store i32 %or65, ptr %ah_txq_isr_txok_all64, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %if.end58.if.end66_crit_edge
  %and67 = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end73_crit_edge, label %if.then69

if.end66.if.end73_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end73

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  %and70 = and i32 %23, 1023
  %ah_txq_isr_txurn = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 99
  %58 = ptrtoint ptr %ah_txq_isr_txurn to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ah_txq_isr_txurn, align 4
  %or72 = or i32 %59, %and70
  store i32 %or72, ptr %ah_txq_isr_txurn, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then69, %if.end66.if.end73_crit_edge
  %and74 = and i32 %11, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end73.if.end107_crit_edge, label %if.then76

if.end73.if.end107_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end107

if.then76:                                        ; preds = %if.end73
  %60 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %interrupt_mask, align 4
  %or77 = or i32 %61, 2097152
  store i32 %or77, ptr %interrupt_mask, align 4
  %and87 = and i32 %23, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.then76.if.end91_crit_edge, label %if.then89

if.then76.if.end91_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end91

if.then89:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #6
  %62 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %interrupt_mask, align 4
  %or90 = or i32 %63, 4194304
  store i32 %or90, ptr %interrupt_mask, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.then76.if.end91_crit_edge
  %and92 = and i32 %23, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end91.if.end96_crit_edge, label %if.then94

if.end91.if.end96_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #6
  %64 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %interrupt_mask, align 4
  %or95 = or i32 %65, 8388608
  store i32 %or95, ptr %interrupt_mask, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end91.if.end96_crit_edge
  %and97 = and i32 %23, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end96.if.end101_crit_edge, label %if.then99

if.end96.if.end101_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end101

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #6
  %66 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %interrupt_mask, align 4
  %or100 = or i32 %67, 33554432
  store i32 %or100, ptr %interrupt_mask, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %if.end96.if.end101_crit_edge
  %and102 = and i32 %23, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end101.if.end107_crit_edge, label %if.then104

if.end101.if.end107_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end107

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #6
  %68 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %interrupt_mask, align 4
  %or105 = or i32 %69, 67108864
  store i32 %or105, ptr %interrupt_mask, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %if.end101.if.end107_crit_edge, %if.end73.if.end107_crit_edge
  %and108 = and i32 %11, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end107.if.end118_crit_edge, label %if.then116, !prof !36

if.end107.if.end118_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end118

if.then116:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #6
  %70 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %interrupt_mask, align 4
  %or117 = or i32 %71, 524288
  store i32 %or117, ptr %interrupt_mask, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %if.end107.if.end118_crit_edge
  %and119 = and i32 %11, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end118.if.end129_crit_edge, label %if.then127, !prof !36

if.end118.if.end129_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end129

if.then127:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #6
  %72 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %interrupt_mask, align 4
  %or128 = or i32 %73, 1048576
  store i32 %or128, ptr %interrupt_mask, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then127, %if.end118.if.end129_crit_edge
  %and130 = and i32 %11, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.end129.if.end143_crit_edge, label %if.then138, !prof !36

if.end129.if.end143_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end143

if.then138:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #6
  %74 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %interrupt_mask, align 4
  %or139 = or i32 %75, 134217728
  store i32 %or139, ptr %interrupt_mask, align 4
  %and140 = and i32 %27, 1023
  %ah_txq_isr_qcborn = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 100
  %76 = ptrtoint ptr %ah_txq_isr_qcborn to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ah_txq_isr_qcborn, align 8
  %or142 = or i32 %77, %and140
  store i32 %or142, ptr %ah_txq_isr_qcborn, align 8
  br label %if.end143

if.end143:                                        ; preds = %if.then138, %if.end129.if.end143_crit_edge
  %and144 = and i32 %11, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %if.end143.if.end157_crit_edge, label %if.then152, !prof !36

if.end143.if.end157_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end157

if.then152:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #6
  %78 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %interrupt_mask, align 4
  %or153 = or i32 %79, 268435456
  store i32 %or153, ptr %interrupt_mask, align 4
  %and154 = lshr i32 %27, 16
  %shr155 = and i32 %and154, 1023
  %ah_txq_isr_qcburn = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 101
  %80 = ptrtoint ptr %ah_txq_isr_qcburn to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ah_txq_isr_qcburn, align 4
  %or156 = or i32 %81, %shr155
  store i32 %or156, ptr %ah_txq_isr_qcburn, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then152, %if.end143.if.end157_crit_edge
  %and158 = and i32 %11, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %if.end157.cleanup172.thread_crit_edge, label %if.then166, !prof !36

if.end157.cleanup172.thread_crit_edge:            ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup172.thread

if.then166:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #6
  %82 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %interrupt_mask, align 4
  %or167 = or i32 %83, 536870912
  store i32 %or167, ptr %interrupt_mask, align 4
  %84 = and i32 %30, -16580608
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  %ah_txq_isr_qtrig = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 102
  %86 = ptrtoint ptr %ah_txq_isr_qtrig to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ah_txq_isr_qtrig, align 8
  %or170 = or i32 %87, %85
  store i32 %or170, ptr %ah_txq_isr_qtrig, align 8
  br label %cleanup172.thread

cleanup172.thread:                                ; preds = %if.then166, %if.end157.cleanup172.thread_crit_edge
  %88 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pr = load i32, ptr %interrupt_mask, align 4
  br label %if.end181

cleanup172:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %89 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %interrupt_mask, align 4
  br label %cleanup195

if.end181:                                        ; preds = %cleanup172.thread, %cleanup.thread
  %90 = phi i32 [ %.pr, %cleanup172.thread ], [ %storemerge273.ph, %cleanup.thread ]
  %data.2 = phi i32 [ %11, %cleanup172.thread ], [ %5, %cleanup.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp182 = icmp eq i32 %90, 0
  br i1 %cmp182, label %land.rhs, label %if.end181.cleanup195_crit_edge

if.end181.cleanup195_crit_edge:                   ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup195

land.rhs:                                         ; preds = %if.end181
  %call183 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %land.rhs.cleanup195_crit_edge, label %do.end, !prof !36

land.rhs.cleanup195_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup195

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  %ah_imr192 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 64
  %91 = ptrtoint ptr %ah_imr192 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ah_imr192, align 8
  %call193 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %data.2, i32 noundef %92) #7
  br label %cleanup195

cleanup195:                                       ; preds = %do.end, %land.rhs.cleanup195_crit_edge, %if.end181.cleanup195_crit_edge, %cleanup172, %cleanup
  %retval.2 = phi i32 [ -19, %cleanup ], [ -19, %cleanup172 ], [ 0, %if.end181.cleanup195_crit_edge ], [ 0, %do.end ], [ 0, %land.rhs.cleanup195_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_hw_dma_init(ptr nocapture noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %0 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end8_crit_edge, label %if.end

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.end:                                           ; preds = %entry
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %5 = and i32 %4, -117440513
  %6 = or i32 %5, 83886080
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %8, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %6) #4, !srcloc !33
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %10, i32 52
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %12 = and i32 %11, -117440513
  %13 = or i32 %12, 83886080
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %15, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %13) #4, !srcloc !33
  %16 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp5.not = icmp eq i32 %.pr, 0
  br i1 %cmp5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %ah_imr = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 64
  %17 = ptrtoint ptr %ah_imr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ah_imr, align 8
  %call7 = tail call i32 @ath5k_hw_set_imr(ptr noundef %ah, i32 noundef %18)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_dma_stop(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ath5k_hw_set_imr(ptr noundef %ah, i32 noundef 0)
  %iobase.i.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 536870912) #4, !srcloc !33
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body.i.land.rhs.i_crit_edge, %entry
  %i.022.i = phi i32 [ 1000, %entry ], [ %dec.i, %for.body.i.land.rhs.i_crit_edge ]
  %2 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %5 = and i32 %4, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.not.i = icmp eq i32 %5, 0
  br i1 %cmp1.not.i, label %if.end, label %for.body.i

for.body.i:                                       ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 21474800) #4
  %dec.i = add nsw i32 %i.022.i, -1
  %cond19.i = icmp eq i32 %dec.i, 0
  br i1 %cond19.i, label %do.body.i, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i

do.body.i:                                        ; preds = %for.body.i
  %debug.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 13
  %7 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug.i, align 4
  %and2.i = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %do.body.i.cleanup_crit_edge, label %land.rhs4.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.rhs4.i:                                      ; preds = %do.body.i
  %call5.i = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.rhs4.i.cleanup_crit_edge, label %if.then10.i, !prof !36

land.rhs4.i.cleanup_crit_edge:                    ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then10.i:                                      ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_ath5k_printk(ptr noundef %ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.ath5k_hw_stop_rx_dma, i32 noundef 75) #4
  br label %cleanup

if.end:                                           ; preds = %land.rhs.i
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %9 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  %11 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase.i.i, align 4
  br i1 %cmp.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %12, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #4, !srcloc !33
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i25 = getelementptr i8, ptr %12, i32 28
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %qmax.0 = phi i32 [ 10, %if.then2 ], [ 2, %if.else ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4
  %i.028 = phi i32 [ 0, %if.end4 ], [ %inc, %for.inc.for.body_crit_edge ]
  %call6 = tail call fastcc i32 @ath5k_hw_stop_tx_dma(ptr noundef %ah, i32 noundef %i.028)
  %14 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %call6, label %for.body.cleanup_crit_edge [
    i32 0, label %for.body.for.inc_crit_edge
    i32 -22, label %for.body.for.inc_crit_edge29
  ]

for.body.for.inc_crit_edge29:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge29
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %qmax.0
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then10.i, %land.rhs4.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %land.rhs4.i.cleanup_crit_edge ], [ -16, %if.then10.i ], [ -16, %do.body.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call6, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath5k/dma.c", i32 101, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.ath5k_hw_set_rxdp, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath5k/dma.c", i32 333, i32 3}
!6 = !{ptr @__func__.ath5k_hw_stop_beacon_queue, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath5k/dma.c", i32 740, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ath5k_hw_get_isr._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @ath5k_hw_get_isr._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath5k/dma.c", i32 243, i32 4}
!15 = !{ptr @__func__.ath5k_hw_stop_tx_dma, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath5k/dma.c", i32 295, i32 5}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath5k/dma.c", i32 309, i32 4}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath5k/dma.c", i32 74, i32 3}
!22 = !{ptr @__func__.ath5k_hw_stop_rx_dma, !21, !"<string literal>", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 2148949499}
!33 = !{i64 762553}
!34 = !{i64 762971}
!35 = !{i64 2148948144}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{!"branch_weights", i32 1, i32 2000}
