; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtl818x/rtl8180/sa2400.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtl818x/rtl8180/sa2400.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rtl818x_rf_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
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

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Philips\00", [24 x i8] zeroinitializer }, align 32
@sa2400_rf_ops = dso_local constant { %struct.rtl818x_rf_ops, [44 x i8] } { %struct.rtl818x_rf_ops { ptr @.str, ptr @sa2400_rf_init, ptr @sa2400_rf_stop, ptr @sa2400_rf_set_channel, ptr @sa2400_rf_calc_rssi }, [44 x i8] zeroinitializer }, align 32
@sa2400_chan = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 2412, i32 526704, i32 1050996, i32 1575288, i32 2432, i32 526724, i32 1051016, i32 1575308, i32 2452, i32 526744, i32 1051036, i32 1575328, i32 2472, i32 2484], [40 x i8] zeroinitializer }, align 32
@sa2400_rf_rssi_map = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"ddcba`_^]\\[ZWTRPNLJHFDA?<:766\1C\1C\1B\1B\1A\1A\19\19\18\18\17\17\16\16\15\15\14\14\13\13\12\12\11\11\10\10\0F\0F\0E\0E\0D\0D\0C\0C\0B\0B\0A\0A\09\09\08\08\07\07\06\06\05\04\03\02", [49 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 220, i32 11 }
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"sa2400_rf_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 219, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [12 x i8] c"sa2400_chan\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 26, i32 18 }
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"sa2400_rf_rssi_map\00", align 1
@___asan_gen_.11 = private constant [57 x i8] c"../drivers/net/wireless/realtek/rtl818x/rtl8180/sa2400.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 75, i32 11 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @sa2400_rf_ops, ptr @sa2400_chan, ptr @sa2400_rf_rssi_map], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa2400_rf_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa2400_chan to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa2400_rf_rssi_map to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sa2400_rf_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %rfparam = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %rfparam to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rfparam, align 4
  %4 = and i16 %3, 1
  %anaparam2 = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %anaparam2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %anaparam2, align 4
  %and5 = and i32 %6, -2146435073
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  %anaparam.0.v = select i1 %tobool.not, i32 813694976, i32 41943040
  %anaparam.0 = or i32 %anaparam.0.v, %and5
  %7 = shl nuw nsw i16 %4, 7
  %8 = xor i16 %7, 128
  %9 = zext i16 %8 to i32
  tail call void @rtl8180_set_anaparam(ptr noundef %1, i32 noundef %anaparam.0) #4
  %10 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv1, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %RFPinsOutput.i = getelementptr inbounds %struct.rtl818x_csr, ptr %13, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i, i32 1812529328) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %14 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv1, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %RFPinsOutput.i102 = getelementptr inbounds %struct.rtl818x_csr, ptr %17, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i102, i32 1354432689) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %18 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv1, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %RFPinsOutput.i104 = getelementptr inbounds %struct.rtl818x_csr, ptr %21, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i104, i32 -2147483470) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %22 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv1, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %RFPinsOutput.i106 = getelementptr inbounds %struct.rtl818x_csr, ptr %25, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i106, i32 179) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %26 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv1, align 8
  %or3.i = or i32 %9, -1274965184
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %RFPinsOutput.i108 = getelementptr inbounds %struct.rtl818x_csr, ptr %29, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %30 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i108, i32 %30) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %31 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv1, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %RFPinsOutput.i110 = getelementptr inbounds %struct.rtl818x_csr, ptr %34, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i110, i32 -73592907) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %35 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv1, align 8
  %or3.i113 = or i32 %9, -1274965176
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %RFPinsOutput.i114 = getelementptr inbounds %struct.rtl818x_csr, ptr %38, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %39 = tail call i32 @llvm.bswap.i32(i32 %or3.i113) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i114, i32 %39) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %40 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv1, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %RFPinsOutput.i116 = getelementptr inbounds %struct.rtl818x_csr, ptr %43, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not, label %if.then13, label %if.then20.critedge

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i116, i32 -1936522828) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %44 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv1, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %RFPinsOutput.i120 = getelementptr inbounds %struct.rtl818x_csr, ptr %47, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i120, i32 %30) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %48 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv1, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %RFPinsOutput.i122 = getelementptr inbounds %struct.rtl818x_csr, ptr %51, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i122, i32 1812529328) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %52 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv1, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %RFPinsOutput.i124 = getelementptr inbounds %struct.rtl818x_csr, ptr %55, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i124, i32 1354432689) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %56 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv1, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %RFPinsOutput.i126 = getelementptr inbounds %struct.rtl818x_csr, ptr %59, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i126, i32 -2147483470) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %60 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv1, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %RFPinsOutput.i128 = getelementptr inbounds %struct.rtl818x_csr, ptr %63, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i128, i32 179) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %64 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv1, align 8
  %or3.i131 = or i32 %9, -1274965180
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %RFPinsOutput.i132 = getelementptr inbounds %struct.rtl818x_csr, ptr %67, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %68 = tail call i32 @llvm.bswap.i32(i32 %or3.i131) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i132, i32 %68) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %69 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv1, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %RFPinsOutput.i134 = getelementptr inbounds %struct.rtl818x_csr, ptr %72, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i134, i32 -15499082) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %73 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv1, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %RFPinsOutput.i136 = getelementptr inbounds %struct.rtl818x_csr, ptr %76, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i136, i32 184) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  br label %if.end27

if.then20.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i116, i32 %30) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %77 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %priv1, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %RFPinsOutput.i142 = getelementptr inbounds %struct.rtl818x_csr, ptr %80, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i142, i32 1812529328) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %81 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %priv1, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %RFPinsOutput.i144 = getelementptr inbounds %struct.rtl818x_csr, ptr %84, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i144, i32 1354432689) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %85 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %priv1, align 8
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %RFPinsOutput.i146 = getelementptr inbounds %struct.rtl818x_csr, ptr %88, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i146, i32 -2147483470) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %89 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %priv1, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %RFPinsOutput.i148 = getelementptr inbounds %struct.rtl818x_csr, ptr %92, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i148, i32 179) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %93 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %priv1, align 8
  %or3.i151 = or i32 %9, -1274965180
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %RFPinsOutput.i152 = getelementptr inbounds %struct.rtl818x_csr, ptr %96, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %97 = tail call i32 @llvm.bswap.i32(i32 %or3.i151) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i152, i32 %97) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %98 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %priv1, align 8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %RFPinsOutput.i154 = getelementptr inbounds %struct.rtl818x_csr, ptr %101, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i154, i32 -15499082) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %102 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %priv1, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %RFPinsOutput.i156 = getelementptr inbounds %struct.rtl818x_csr, ptr %105, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i156, i32 184) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %or21 = or i32 %anaparam.0, 134217728
  tail call void @rtl8180_set_anaparam(ptr noundef %1, i32 noundef %or21) #4
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 4
  %TX_CONF = getelementptr inbounds %struct.rtl818x_csr, ptr %107, i32 0, i32 16
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %TX_CONF) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %1, align 4
  %TX_CONF23 = getelementptr inbounds %struct.rtl818x_csr, ptr %110, i32 0, i32 16
  %111 = or i32 %108, 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TX_CONF23, i32 %111) #4, !srcloc !18
  %112 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %priv1, align 8
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  %RFPinsOutput.i158 = getelementptr inbounds %struct.rtl818x_csr, ptr %115, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i158, i32 1100153268) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %116 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %priv1, align 8
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %RFPinsOutput.i160 = getelementptr inbounds %struct.rtl818x_csr, ptr %119, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i160, i32 1167262132) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 4
  %TX_CONF26 = getelementptr inbounds %struct.rtl818x_csr, ptr %121, i32 0, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TX_CONF26, i32 %108) #4, !srcloc !18
  tail call void @rtl8180_set_anaparam(ptr noundef %1, i32 noundef %anaparam.0) #4
  br label %if.end27

if.end27:                                         ; preds = %if.then20.critedge, %if.then13
  %122 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %priv1, align 8
  %or3.i163 = or i32 %9, -1274965183
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %RFPinsOutput.i164 = getelementptr inbounds %struct.rtl818x_csr, ptr %125, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %126 = tail call i32 @llvm.bswap.i32(i32 %or3.i163) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i164, i32 %126) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 152) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 3, i32 noundef 56) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 4, i32 noundef 224) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 5, i32 noundef 144) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 6, i32 noundef 26) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 7, i32 noundef 100) #4
  %127 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %priv1, align 8
  %rfparam.i = getelementptr inbounds %struct.rtl8180_priv, ptr %128, i32 0, i32 21
  %129 = ptrtoint ptr %rfparam.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %rfparam.i, align 4
  %131 = and i16 %130, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %tobool.not.i = icmp eq i16 %131, 0
  %conv11.i = select i1 %tobool.not.i, i32 145, i32 209
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef %conv11.i) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 17, i32 noundef 128) #4
  %132 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %1, align 4
  %CONFIG2 = getelementptr inbounds %struct.rtl818x_csr, ptr %133, i32 0, i32 23
  %134 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CONFIG2) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %135 = and i8 %134, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool34.not = icmp eq i8 %135, 0
  %. = select i1 %tobool34.not, i32 71, i32 199
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 18, i32 noundef %.) #4
  %csthreshold = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 22
  %136 = ptrtoint ptr %csthreshold to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %csthreshold, align 2
  %138 = or i8 %137, -112
  %or39 = zext i8 %138 to i32
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 19, i32 noundef %or39) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 25, i32 noundef 0) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 26, i32 noundef 160) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sa2400_rf_stop(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1.i = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %RFPinsOutput.i = getelementptr inbounds %struct.rtl818x_csr, ptr %3, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i, i32 180) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sa2400_rf_set_channel(ptr noundef %dev, ptr nocapture noundef readonly %conf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
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
  %sub = add i32 %call.i, -1
  %hw_value = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 11, i32 %sub, i32 3
  %6 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hw_value, align 2
  %8 = and i16 %7, 255
  %and = zext i16 %8 to i32
  %arrayidx4 = getelementptr [14 x i32], ptr @sa2400_chan, i32 0, i32 %sub
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4, align 4
  %11 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv1, align 8
  %or3.i = or i32 %and, -1224736768
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %RFPinsOutput.i = getelementptr inbounds %struct.rtl818x_csr, ptr %14, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %15 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i, i32 %15) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %conv5 = trunc i32 %call.i to i16
  %16 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv1, align 8
  %rfparam.i = getelementptr inbounds %struct.rtl8180_priv, ptr %17, i32 0, i32 21
  %18 = ptrtoint ptr %rfparam.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rfparam.i, align 4
  %20 = and i16 %19, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i = icmp eq i16 %20, 0
  %spec.select.i = select i1 %tobool.not.i, i8 -111, i8 -47
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %conv5)
  %cmp.i = icmp eq i16 %conv5, 14
  %21 = or i8 %spec.select.i, 12
  %ant.1.i = select i1 %cmp.i, i8 %21, i8 %spec.select.i
  %conv11.i = zext i8 %ant.1.i to i32
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef %conv11.i) #4
  %22 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv1, align 8
  %and2.i16 = and i32 %10, 16777215
  %or3.i17 = or i32 %and2.i16, -1342177280
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %RFPinsOutput.i18 = getelementptr inbounds %struct.rtl818x_csr, ptr %25, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %26 = tail call i32 @llvm.bswap.i32(i32 %or3.i17) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i18, i32 %26) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %27 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv1, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %RFPinsOutput.i20 = getelementptr inbounds %struct.rtl818x_csr, ptr %30, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i20, i32 1354432689) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %31 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv1, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %RFPinsOutput.i22 = getelementptr inbounds %struct.rtl818x_csr, ptr %34, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i22, i32 -2147483470) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  %35 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv1, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %RFPinsOutput.i24 = getelementptr inbounds %struct.rtl818x_csr, ptr %38, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i24, i32 179) #4, !srcloc !18
  tail call void @msleep(i32 noundef 3) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @sa2400_rf_calc_rssi(i8 noundef zeroext %agc, i8 noundef zeroext %sq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %sq to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %sq)
  %cmp = icmp eq i8 %sq, -128
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 78, i8 %sq)
  %cmp3 = icmp ugt i8 %sq, 78
  br i1 %cmp3, label %if.end.return_crit_edge, label %if.end6

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr [79 x i8], ptr @sa2400_rf_rssi_map, i32 0, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %1 to i16
  %mul = mul nuw nsw i16 %conv7, 65
  %div = udiv i16 %mul, 100
  %conv8 = trunc i16 %div to i8
  br label %return

return:                                           ; preds = %if.end6, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i8 [ %conv8, %if.end6 ], [ 1, %entry.return_crit_edge ], [ 32, %if.end.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8180_set_anaparam(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8180_write_phy(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/sa2400.c", i32 220, i32 11}
!2 = !{ptr @sa2400_rf_ops, !3, !"sa2400_rf_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/sa2400.c", i32 219, i32 29}
!4 = !{ptr @sa2400_chan, !5, !"sa2400_chan", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/sa2400.c", i32 26, i32 18}
!6 = !{ptr @sa2400_rf_rssi_map, !7, !"sa2400_rf_rssi_map", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/sa2400.c", i32 75, i32 11}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 2152525852}
!18 = !{i64 4983730}
!19 = !{i64 4984148}
!20 = !{i64 2152524497}
!21 = !{i64 4983928}
!22 = !{i64 2152523273}
