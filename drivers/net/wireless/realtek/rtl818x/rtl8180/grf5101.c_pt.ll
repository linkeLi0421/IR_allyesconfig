; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtl818x/rtl8180/grf5101.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtl818x/rtl8180/grf5101.c"
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

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GCT\00", [28 x i8] zeroinitializer }, align 32
@grf5101_rf_ops = dso_local constant { %struct.rtl818x_rf_ops, [44 x i8] } { %struct.rtl818x_rf_ops { ptr @.str, ptr @grf5101_rf_init, ptr @grf5101_rf_stop, ptr @grf5101_rf_set_channel, ptr @grf5101_rf_calc_rssi }, [44 x i8] zeroinitializer }, align 32
@grf5101_encode = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 8, i32 4, i32 12, i32 2, i32 10, i32 6, i32 14, i32 1, i32 9, i32 5, i32 13, i32 3, i32 11, i32 7, i32 15], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 182, i32 11 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"grf5101_rf_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 181, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"grf5101_encode\00", align 1
@___asan_gen_.8 = private constant [58 x i8] c"../drivers/net/wireless/realtek/rtl818x/rtl8180/grf5101.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 26, i32 18 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @grf5101_rf_ops, ptr @grf5101_encode], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grf5101_rf_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grf5101_encode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @grf5101_rf_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %anaparam = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %anaparam to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %anaparam, align 4
  tail call void @rtl8180_set_anaparam(ptr noundef %1, i32 noundef %3) #4
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %RFPinsOutput.i = getelementptr inbounds %struct.rtl818x_csr, ptr %7, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i, i32 15729040) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %8 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %RFPinsOutput.i53 = getelementptr inbounds %struct.rtl818x_csr, ptr %11, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i53, i32 15729040) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %12 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv1, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %RFPinsOutput.i55 = getelementptr inbounds %struct.rtl818x_csr, ptr %15, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i55, i32 552599952) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %16 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv1, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %RFPinsOutput.i57 = getelementptr inbounds %struct.rtl818x_csr, ptr %19, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i57, i32 1626341776) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %20 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv1, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %RFPinsOutput.i59 = getelementptr inbounds %struct.rtl818x_csr, ptr %23, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i59, i32 1626866064) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %24 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv1, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %RFPinsOutput.i61 = getelementptr inbounds %struct.rtl818x_csr, ptr %27, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i61, i32 1626866064) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %28 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv1, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %RFPinsOutput.i63 = getelementptr inbounds %struct.rtl818x_csr, ptr %31, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i63, i32 1963065488) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %32 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv1, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %RFPinsOutput.i65 = getelementptr inbounds %struct.rtl818x_csr, ptr %35, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i65, i32 16253328) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %36 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv1, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %RFPinsOutput.i67 = getelementptr inbounds %struct.rtl818x_csr, ptr %39, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i67, i32 553124240) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %40 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv1, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %RFPinsOutput.i69 = getelementptr inbounds %struct.rtl818x_csr, ptr %43, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i69, i32 1626866064) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %44 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv1, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %RFPinsOutput.i71 = getelementptr inbounds %struct.rtl818x_csr, ptr %47, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i71, i32 1158414744) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %48 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv1, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %RFPinsOutput.i73 = getelementptr inbounds %struct.rtl818x_csr, ptr %51, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i73, i32 -376962926) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %52 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv1, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %RFPinsOutput.i75 = getelementptr inbounds %struct.rtl818x_csr, ptr %55, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i75, i32 -1199111790) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %56 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv1, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %RFPinsOutput.i77 = getelementptr inbounds %struct.rtl818x_csr, ptr %59, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i77, i32 457179284) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %60 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv1, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %RFPinsOutput.i79 = getelementptr inbounds %struct.rtl818x_csr, ptr %63, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i79, i32 -246480490) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %64 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv1, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %RFPinsOutput.i81 = getelementptr inbounds %struct.rtl818x_csr, ptr %67, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i81, i32 12583056) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %68 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv1, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %RFPinsOutput.i83 = getelementptr inbounds %struct.rtl818x_csr, ptr %71, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i83, i32 12583312) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %72 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv1, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %RFPinsOutput.i85 = getelementptr inbounds %struct.rtl818x_csr, ptr %75, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i85, i32 -903085922) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %76 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv1, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %RFPinsOutput.i87 = getelementptr inbounds %struct.rtl818x_csr, ptr %79, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i87, i32 36176275) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %80 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %priv1, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %RFPinsOutput.i89 = getelementptr inbounds %struct.rtl818x_csr, ptr %83, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i89, i32 10485904) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %84 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %priv1, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %RFPinsOutput.i91 = getelementptr inbounds %struct.rtl818x_csr, ptr %87, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i91, i32 946733200) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %88 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %priv1, align 8
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %RFPinsOutput.i93 = getelementptr inbounds %struct.rtl818x_csr, ptr %91, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i93, i32 -1184104044) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %92 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %priv1, align 8
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %RFPinsOutput.i95 = getelementptr inbounds %struct.rtl818x_csr, ptr %95, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i95, i32 1960902800) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %96 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %priv1, align 8
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %RFPinsOutput.i97 = getelementptr inbounds %struct.rtl818x_csr, ptr %99, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i97, i32 -1743519600) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %100 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %priv1, align 8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %RFPinsOutput.i99 = getelementptr inbounds %struct.rtl818x_csr, ptr %103, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i99, i32 605094288) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %104 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %priv1, align 8
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %RFPinsOutput.i101 = getelementptr inbounds %struct.rtl818x_csr, ptr %107, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i101, i32 9437328) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %108 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %priv1, align 8
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %RFPinsOutput.i103 = getelementptr inbounds %struct.rtl818x_csr, ptr %111, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i103, i32 814875028) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %112 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %priv1, align 8
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  %RFPinsOutput.i105 = getelementptr inbounds %struct.rtl818x_csr, ptr %115, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i105, i32 -229441377) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %116 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %priv1, align 8
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %RFPinsOutput.i107 = getelementptr inbounds %struct.rtl818x_csr, ptr %119, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i107, i32 5243280) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %120 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %priv1, align 8
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %RFPinsOutput.i109 = getelementptr inbounds %struct.rtl818x_csr, ptr %123, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i109, i32 181403800) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %124 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %priv1, align 8
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %RFPinsOutput.i111 = getelementptr inbounds %struct.rtl818x_csr, ptr %127, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i111, i32 12583320) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 168) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 3, i32 noundef 0) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 4, i32 noundef 192) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 5, i32 noundef 144) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 6, i32 noundef 30) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 7, i32 noundef 100) #4
  %128 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %priv1, align 8
  %rfparam.i = getelementptr inbounds %struct.rtl8180_priv, ptr %129, i32 0, i32 21
  %130 = ptrtoint ptr %rfparam.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %rfparam.i, align 4
  %132 = and i16 %131, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %tobool.not.i = icmp eq i16 %132, 0
  %conv11.i = select i1 %tobool.not.i, i32 163, i32 227
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef %conv11.i) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 17, i32 noundef 136) #4
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %1, align 4
  %CONFIG2 = getelementptr inbounds %struct.rtl818x_csr, ptr %134, i32 0, i32 23
  %135 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CONFIG2) #4, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  %136 = and i8 %135, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool.not = icmp eq i8 %136, 0
  %. = select i1 %tobool.not, i32 64, i32 192
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 18, i32 noundef %.) #4
  %csthreshold = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 22
  %137 = ptrtoint ptr %csthreshold to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %csthreshold, align 2
  %139 = or i8 %138, -112
  %or = zext i8 %139 to i32
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 19, i32 noundef %or) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 25, i32 noundef 0) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 26, i32 noundef 160) #4
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 27, i32 noundef 68) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @grf5101_rf_stop(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %anaparam2 = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %anaparam2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %anaparam2, align 4
  %and = and i32 %3, 1048575
  %or = or i32 %and, 1066401792
  tail call void @rtl8180_set_anaparam(ptr noundef %1, i32 noundef %or) #4
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %RFPinsOutput.i = getelementptr inbounds %struct.rtl818x_csr, ptr %7, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i, i32 12583312) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %8 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %RFPinsOutput.i11 = getelementptr inbounds %struct.rtl818x_csr, ptr %11, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i11, i32 553255312) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %12 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv1, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %RFPinsOutput.i13 = getelementptr inbounds %struct.rtl818x_csr, ptr %15, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i13, i32 16384400) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %16 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv1, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %RFPinsOutput.i15 = getelementptr inbounds %struct.rtl818x_csr, ptr %19, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i15, i32 1895956624) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @grf5101_rf_set_channel(ptr noundef %dev, ptr nocapture noundef readonly %conf) #0 align 64 {
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
  %9 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv1, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %RFPinsOutput.i = getelementptr inbounds %struct.rtl818x_csr, ptr %12, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i, i32 5243280) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %13 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv1, align 8
  %shr2.i = lshr i32 %and, 4
  %arrayidx4.i = getelementptr [16 x i32], ptr @grf5101_encode, i32 0, i32 %shr2.i
  %15 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %16, 4
  %and5.i = and i32 %and, 15
  %arrayidx6.i = getelementptr [16 x i32], ptr @grf5101_encode, i32 0, i32 %and5.i
  %17 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx6.i, align 4
  %shl7.i = shl i32 %18, 8
  %or13.i = or i32 %shl.i, %shl7.i
  %or23.i = or i32 %or13.i, -1878999040
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %14, align 4
  %RFPinsOutput.i16 = getelementptr inbounds %struct.rtl818x_csr, ptr %20, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %21 = tail call i32 @llvm.bswap.i32(i32 %or23.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i16, i32 %21) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %22 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv1, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %RFPinsOutput.i18 = getelementptr inbounds %struct.rtl818x_csr, ptr %25, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i18, i32 -2142240368) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %26 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv1, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %RFPinsOutput.i20 = getelementptr inbounds %struct.rtl818x_csr, ptr %29, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i20, i32 5243280) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %30 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv1, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %RFPinsOutput.i22 = getelementptr inbounds %struct.rtl818x_csr, ptr %33, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i22, i32 12583312) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %34 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv1, align 8
  %shr.i24 = lshr i32 %sub, 8
  %and.i25 = and i32 %shr.i24, 15
  %arrayidx.i26 = getelementptr [16 x i32], ptr @grf5101_encode, i32 0, i32 %and.i25
  %36 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i26, align 4
  %shr2.i27 = lshr i32 %sub, 4
  %and3.i28 = and i32 %shr2.i27, 15
  %arrayidx4.i29 = getelementptr [16 x i32], ptr @grf5101_encode, i32 0, i32 %and3.i28
  %38 = ptrtoint ptr %arrayidx4.i29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx4.i29, align 4
  %shl.i30 = shl i32 %39, 4
  %and5.i31 = and i32 %sub, 15
  %arrayidx6.i32 = getelementptr [16 x i32], ptr @grf5101_encode, i32 0, i32 %and5.i31
  %40 = ptrtoint ptr %arrayidx6.i32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx6.i32, align 4
  %shl7.i33 = shl i32 %41, 8
  %and18.i34 = lshr i32 %sub, 12
  %shr19.i35 = and i32 %and18.i34, 15
  %arrayidx20.i36 = getelementptr [16 x i32], ptr @grf5101_encode, i32 0, i32 %shr19.i35
  %42 = ptrtoint ptr %arrayidx20.i36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx20.i36, align 4
  %shl21.i37 = shl i32 %43, 24
  %or.i = or i32 %37, %shl.i30
  %or8.i38 = or i32 %or.i, %shl7.i33
  %or17.i40 = or i32 %or8.i38, %shl21.i37
  %or23.i42 = or i32 %or17.i40, -1878941696
  %44 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %35, align 4
  %RFPinsOutput.i43 = getelementptr inbounds %struct.rtl818x_csr, ptr %45, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %46 = tail call i32 @llvm.bswap.i32(i32 %or23.i42) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i43, i32 %46) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %47 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv1, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %RFPinsOutput.i45 = getelementptr inbounds %struct.rtl818x_csr, ptr %50, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RFPinsOutput.i45, i32 12583320) #4, !srcloc !16
  tail call void @msleep(i32 noundef 3) #4
  %conv4 = trunc i32 %call.i to i16
  %51 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv1, align 8
  %rfparam.i = getelementptr inbounds %struct.rtl8180_priv, ptr %52, i32 0, i32 21
  %53 = ptrtoint ptr %rfparam.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %rfparam.i, align 4
  %55 = and i16 %54, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool.not.i = icmp eq i16 %55, 0
  %spec.select.i = select i1 %tobool.not.i, i8 -93, i8 -29
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %conv4)
  %cmp.i = icmp eq i16 %conv4, 14
  %56 = or i8 %spec.select.i, 12
  %ant.1.i = select i1 %cmp.i, i8 %56, i8 %spec.select.i
  %conv11.i = zext i8 %ant.1.i to i32
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef %conv11.i) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @grf5101_rf_calc_rssi(i8 noundef zeroext %agc, i8 noundef zeroext %sq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %agc)
  %cmp = icmp ugt i8 %agc, 60
  %conv = zext i8 %agc to i16
  %mul = mul nuw nsw i16 %conv, 65
  %div = udiv i16 %mul, 60
  %conv3 = trunc i16 %div to i8
  %retval.0 = select i1 %cmp, i8 65, i8 %conv3
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8180_set_anaparam(ptr noundef, i32 noundef) local_unnamed_addr #2

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

declare void @__asan_load1_noabort(i32)

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
!1 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/grf5101.c", i32 182, i32 11}
!2 = !{ptr @grf5101_rf_ops, !3, !"grf5101_rf_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/grf5101.c", i32 181, i32 29}
!4 = !{ptr @grf5101_encode, !5, !"grf5101_encode", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/grf5101.c", i32 26, i32 18}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 2152524964}
!16 = !{i64 4982842}
!17 = !{i64 4983040}
!18 = !{i64 2152522385}
