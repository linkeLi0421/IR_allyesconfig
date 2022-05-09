; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtl818x/rtl8180/max2820.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtl818x/rtl8180/max2820.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rtl818x_rf_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.rtl818x_csr = type { [6 x i8], [2 x i8], %union.anon.129, %union.anon.131, i32, [2 x i32], %union.anon.133, %union.anon.134, i32, %union.anon.135, [6 x i8], %union.anon.137, [1 x i8], i8, [4 x i8], %union.anon.139, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, [2 x i8], i8, i8, i32, [8 x i8], i32, i16, i16, i16, i16, i8, i8, [2 x i8], [4 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i32, [4 x i8], i8, i8, i8, i8, [16 x i8], i8, [3 x i8], i8, i8, i8, [5 x i8], i8, i8, i8, i8, [24 x i8], i8, i8, i8, i8, i16, i8, [3 x i8], i16, i32, i16, [4 x i8], %union.anon.141, i32, %union.anon.142, %union.anon.143, %union.anon.145 }
%union.anon.129 = type { [2 x i32] }
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%union.anon.137 = type { i16 }
%union.anon.139 = type { i32 }
%union.anon.141 = type { i16 }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i32 }
%union.anon.145 = type { i32 }
%struct.rtl8180_priv = type { ptr, ptr, ptr, i8, %struct.spinlock, ptr, i8, i32, i32, [32 x ptr], [5 x %struct.rtl8180_tx_ring], [14 x %struct.ieee80211_channel], [12 x %struct.ieee80211_rate], %struct.ieee80211_supported_band, [4 x %struct.ieee80211_tx_queue_params], ptr, i32, i8, i16, i32, i32, i16, i8, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtl8180_tx_ring = type { ptr, i32, i32, i32, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Maxim\00", [26 x i8] zeroinitializer }, align 32
@max2820_rf_ops = dso_local constant { %struct.rtl818x_rf_ops, [44 x i8] } { %struct.rtl818x_rf_ops { ptr @.str, ptr @max2820_rf_init, ptr @max2820_rf_stop, ptr @max2820_rf_set_channel, ptr @max2820_rf_calc_rssi }, [44 x i8] zeroinitializer }, align 32
@max2820_chan = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 12, i32 17, i32 22, i32 27, i32 32, i32 37, i32 42, i32 47, i32 52, i32 57, i32 62, i32 67, i32 72, i32 84], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 160, i32 11 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"max2820_rf_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 159, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [13 x i8] c"max2820_chan\00", align 1
@___asan_gen_.8 = private constant [58 x i8] c"../drivers/net/wireless/realtek/rtl818x/rtl8180/max2820.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 25, i32 18 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @max2820_rf_ops, ptr @max2820_chan], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2820_rf_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2820_chan to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max2820_rf_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %RFPinsOutput.i = getelementptr inbounds %struct.rtl818x_csr, ptr %3, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i, i32 151) #4, !srcloc !16
  tail call void @msleep(i32 noundef 1) #4
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %RFPinsOutput.i24 = getelementptr inbounds %struct.rtl818x_csr, ptr %7, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i24, i32 16842910) #4, !srcloc !16
  tail call void @msleep(i32 noundef 1) #4
  %8 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %RFPinsOutput.i26 = getelementptr inbounds %struct.rtl818x_csr, ptr %11, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i26, i32 131217) #4, !srcloc !16
  tail call void @msleep(i32 noundef 1) #4
  %12 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv1, align 8
  %hw_value.i = getelementptr %struct.rtl8180_priv, ptr %13, i32 0, i32 11, i32 0, i32 3
  %14 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hw_value.i, align 2
  %16 = and i16 %15, 255
  %and.i = zext i16 %16 to i32
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 3, i32 noundef %and.i) #4
  %17 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv1, align 8
  %rfparam.i.i = getelementptr inbounds %struct.rtl8180_priv, ptr %18, i32 0, i32 21
  %19 = ptrtoint ptr %rfparam.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %rfparam.i.i, align 4
  %21 = and i16 %20, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i.i = icmp eq i16 %21, 0
  %conv11.i.i = select i1 %tobool.not.i.i, i32 179, i32 243
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef %conv11.i.i) #4
  %22 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv1, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %RFPinsOutput.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %25, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i.i, i32 196764) #4, !srcloc !16
  tail call void @msleep(i32 noundef 1) #4
  %26 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv1, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %RFPinsOutput.i29 = getelementptr inbounds %struct.rtl818x_csr, ptr %29, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i29, i32 822345875) #4, !srcloc !16
  tail call void @msleep(i32 noundef 1) #4
  %30 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv1, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %RFPinsOutput.i31 = getelementptr inbounds %struct.rtl818x_csr, ptr %33, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i31, i32 327839) #4, !srcloc !16
  tail call void @msleep(i32 noundef 1) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 136) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 3, i32 noundef 8) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 4, i32 noundef 248) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 5, i32 noundef 144) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 6, i32 noundef 26) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 7, i32 noundef 100) #4
  %34 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv1, align 8
  %rfparam.i = getelementptr inbounds %struct.rtl8180_priv, ptr %35, i32 0, i32 21
  %36 = ptrtoint ptr %rfparam.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %rfparam.i, align 4
  %38 = and i16 %37, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.not.i = icmp eq i16 %38, 0
  %conv11.i = select i1 %tobool.not.i, i32 179, i32 243
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef %conv11.i) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 17, i32 noundef 136) #4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %CONFIG2 = getelementptr inbounds %struct.rtl818x_csr, ptr %40, i32 0, i32 23
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CONFIG2) #4, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  %42 = and i8 %41, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not = icmp eq i8 %42, 0
  %. = select i1 %tobool.not, i32 71, i32 199
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 18, i32 noundef %.) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 19, i32 noundef 155) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 25, i32 noundef 0) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 26, i32 noundef 159) #4
  %43 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv1, align 8
  %hw_value.i34 = getelementptr %struct.rtl8180_priv, ptr %44, i32 0, i32 11, i32 0, i32 3
  %45 = ptrtoint ptr %hw_value.i34 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %hw_value.i34, align 2
  %47 = and i16 %46, 255
  %and.i35 = zext i16 %47 to i32
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 3, i32 noundef %and.i35) #4
  %48 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv1, align 8
  %rfparam.i.i36 = getelementptr inbounds %struct.rtl8180_priv, ptr %49, i32 0, i32 21
  %50 = ptrtoint ptr %rfparam.i.i36 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %rfparam.i.i36, align 4
  %52 = and i16 %51, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool.not.i.i37 = icmp eq i16 %52, 0
  %conv11.i.i39 = select i1 %tobool.not.i.i37, i32 179, i32 243
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef %conv11.i.i39) #4
  %53 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv1, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %RFPinsOutput.i.i40 = getelementptr inbounds %struct.rtl818x_csr, ptr %56, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i.i40, i32 196764) #4, !srcloc !16
  tail call void @msleep(i32 noundef 1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max2820_rf_stop(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 3, i32 noundef 8) #4
  %priv1.i = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %RFPinsOutput.i = getelementptr inbounds %struct.rtl818x_csr, ptr %3, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i, i32 65680) #4, !srcloc !16
  tail call void @msleep(i32 noundef 1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max2820_rf_set_channel(ptr noundef %dev, ptr noundef readonly %conf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %tobool.not = icmp eq ptr %conf, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %conf, i32 0, i32 7
  %2 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %center_freq, align 4
  %mul.i = mul i32 %5, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call.i, %cond.true ], [ 1, %entry.cond.end_crit_edge ]
  %sub = add i32 %cond, -1
  %hw_value = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 11, i32 %sub, i32 3
  %6 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hw_value, align 2
  %8 = and i16 %7, 255
  %and = zext i16 %8 to i32
  %arrayidx3 = getelementptr [14 x i32], ptr @max2820_chan, i32 0, i32 %sub
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx3, align 4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 3, i32 noundef %and) #4
  %conv4 = trunc i32 %cond to i16
  %11 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv1, align 8
  %rfparam.i = getelementptr inbounds %struct.rtl8180_priv, ptr %12, i32 0, i32 21
  %13 = ptrtoint ptr %rfparam.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rfparam.i, align 4
  %15 = and i16 %14, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i = icmp eq i16 %15, 0
  %spec.select.i = select i1 %tobool.not.i, i8 -77, i8 -13
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %conv4)
  %cmp.i = icmp eq i16 %conv4, 14
  %16 = or i8 %spec.select.i, 12
  %ant.1.i = select i1 %cmp.i, i8 %16, i8 %spec.select.i
  %conv11.i = zext i8 %ant.1.i to i32
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef %conv11.i) #4
  %17 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv1, align 8
  %and.i = shl i32 %10, 24
  %add.i = and i32 %and.i, 251658240
  %shr.i = lshr i32 %10, 4
  %and4.i = and i32 %shr.i, 255
  %shl.i = or i32 %and4.i, %add.i
  %add5.i = or i32 %shl.i, -1879047424
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %RFPinsOutput.i = getelementptr inbounds %struct.rtl818x_csr, ptr %20, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %21 = tail call i32 @llvm.bswap.i32(i32 %add5.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i, i32 %21) #4, !srcloc !16
  tail call void @msleep(i32 noundef 1) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @max2820_rf_calc_rssi(i8 noundef zeroext %agc, i8 noundef zeroext %sq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %agc, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %1 = lshr i8 %agc, 1
  %agc.addr.0.v = select i1 %tobool.not, i8 66, i8 76
  %agc.addr.0 = add nuw i8 %agc.addr.0.v, %1
  %conv10 = zext i8 %agc.addr.0 to i16
  %mul = mul nuw nsw i16 %conv10, 65
  %div = udiv i16 %mul, 100
  %conv11 = trunc i16 %div to i8
  ret i8 %conv11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8180_write_phy(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/max2820.c", i32 160, i32 11}
!2 = !{ptr @max2820_rf_ops, !3, !"max2820_rf_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/max2820.c", i32 159, i32 29}
!4 = !{ptr @max2820_chan, !5, !"max2820_chan", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/max2820.c", i32 25, i32 18}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 2152523963}
!16 = !{i64 4981841}
!17 = !{i64 4982039}
!18 = !{i64 2152521384}
