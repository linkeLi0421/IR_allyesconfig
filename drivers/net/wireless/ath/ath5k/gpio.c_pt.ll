; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath5k/gpio.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath5k/gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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

@switch.table.ath5k_hw_set_ledstate = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 32, i32 32, i32 64, i32 64], [44 x i8] zeroinitializer }, align 32
@switch.table.ath5k_hw_set_ledstate.1 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 32, i32 4128, i32 4128, i32 64, i32 64], [44 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [41 x i8] c"../drivers/net/wireless/ath/ath5k/gpio.c\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [35 x i8] c"switch.table.ath5k_hw_set_ledstate\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [37 x i8] c"switch.table.ath5k_hw_set_ledstate.1\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @switch.table.ath5k_hw_set_ledstate, ptr @switch.table.ath5k_hw_set_ledstate.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath5k_hw_set_ledstate to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath5k_hw_set_ledstate.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_hw_set_ledstate(ptr nocapture noundef readonly %ah, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_version = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 68
  %0 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %iobase.i24 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %2 = ptrtoint ptr %iobase.i24 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i24, align 4
  %add.ptr.i25 = getelementptr i8, ptr %3, i32 16400
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %5 = and i32 %4, -1610616321
  %6 = ptrtoint ptr %iobase.i24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase.i24, align 4
  %add.ptr.i23 = getelementptr i8, ptr %7, i32 16400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %5) #3, !srcloc !10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %8 = and i32 %4, -1610612737
  %9 = ptrtoint ptr %iobase.i24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase.i24, align 4
  %add.ptr.i27 = getelementptr i8, ptr %10, i32 16400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %8) #3, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %state)
  %11 = icmp ult i32 %state, 5
  br i1 %11, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.ath5k_hw_set_ledstate, i32 0, i32 %state
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep36 = getelementptr inbounds [5 x i32], ptr @switch.table.ath5k_hw_set_ledstate.1, i32 0, i32 %state
  %13 = ptrtoint ptr %switch.gep36 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load37 = load i32, ptr %switch.gep36, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %led.0 = phi i32 [ %switch.load, %switch.lookup ], [ 131072, %if.end.sw.epilog_crit_edge ]
  %led_5210.0 = phi i32 [ %switch.load37, %switch.lookup ], [ 32, %if.end.sw.epilog_crit_edge ]
  %14 = ptrtoint ptr %ah_version to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ah_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp6.not = icmp eq i32 %15, 0
  %iobase.i32 = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %16 = ptrtoint ptr %iobase.i32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobase.i32, align 4
  %add.ptr.i33 = getelementptr i8, ptr %17, i32 16400
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #3
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  br i1 %cmp6.not, label %if.else9, label %if.then7

if.then7:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %or = or i32 %19, %led.0
  %20 = ptrtoint ptr %iobase.i32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iobase.i32, align 4
  %add.ptr.i31 = getelementptr i8, ptr %21, i32 16400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %22 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %22) #3, !srcloc !10
  br label %if.end12

if.else9:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %or11 = or i32 %19, %led_5210.0
  %23 = ptrtoint ptr %iobase.i32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iobase.i32, align 4
  %add.ptr.i35 = getelementptr i8, ptr %24, i32 16400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %25 = tail call i32 @llvm.bswap.i32(i32 %or11) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %25) #3, !srcloc !10
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.then7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_set_gpio_input(ptr nocapture noundef readonly %ah, i32 noundef %gpio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %gpio)
  %cmp = icmp ugt i32 %gpio, 5
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16404
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !11
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %mul = shl nuw nsw i32 %gpio, 1
  %shl = shl nuw nsw i32 3, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %3, %neg
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %5, i32 16404
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %6 = tail call i32 @llvm.bswap.i32(i32 %and) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %6) #3, !srcloc !10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_set_gpio_output(ptr nocapture noundef readonly %ah, i32 noundef %gpio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %gpio)
  %cmp = icmp ugt i32 %gpio, 5
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16404
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !11
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %mul = shl nuw nsw i32 %gpio, 1
  %shl = shl nuw nsw i32 3, %mul
  %or = or i32 %3, %shl
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %5, i32 16404
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %6) #3, !srcloc !10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_get_gpio(ptr nocapture noundef readonly %ah, i32 noundef %gpio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %gpio)
  %cmp = icmp ugt i32 %gpio, 5
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16412
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !11
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %and = and i32 %3, 47
  %shr = lshr i32 %and, %gpio
  %and1 = and i32 %shr, 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %and1, %if.end ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath5k_hw_set_gpio(ptr nocapture noundef readonly %ah, i32 noundef %gpio, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %gpio)
  %cmp = icmp ugt i32 %gpio, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16408
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !11
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %shl = shl nuw nsw i32 1, %gpio
  %neg = xor i32 %shl, -1
  %and = and i32 %3, %neg
  %and1 = and i32 %val, 1
  %shl2 = shl nuw nsw i32 %and1, %gpio
  %or = or i32 %and, %shl2
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %5, i32 16408
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %6) #3, !srcloc !10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath5k_hw_set_gpio_intr(ptr nocapture noundef %ah, i32 noundef %gpio, i32 noundef %interrupt_level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %gpio)
  %cmp = icmp ugt i32 %gpio, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %iobase.i = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16404
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !11
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %shl = shl nuw nsw i32 %gpio, 12
  %mul = shl nuw nsw i32 %gpio, 1
  %shl2 = shl nuw nsw i32 3, %mul
  %or1 = or i32 %shl2, %shl
  %4 = and i32 %or1, -98305
  %neg = xor i32 %4, -98305
  %and = and i32 %3, %neg
  %or5 = or i32 %shl, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %interrupt_level)
  %tobool.not = icmp eq i32 %interrupt_level, 0
  %cond.v = select i1 %tobool.not, i32 98304, i32 32768
  %cond = or i32 %or5, %cond.v
  %5 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %6, i32 16404
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %7 = tail call i32 @llvm.bswap.i32(i32 %cond) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %7) #3, !srcloc !10
  %ah_imr = getelementptr inbounds %struct.ath5k_hw, ptr %ah, i32 0, i32 64
  %8 = ptrtoint ptr %ah_imr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ah_imr, align 8
  %or8 = or i32 %9, 16777216
  store i32 %or8, ptr %ah_imr, align 8
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %11, i32 160
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %13 = or i32 %12, 1
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %15, i32 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %13) #3, !srcloc !10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i64 2148930301}
!10 = !{i64 743355}
!11 = !{i64 743773}
!12 = !{i64 2148928946}
