; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.brcmf_chip_priv = type { %struct.brcmf_chip, ptr, ptr, %struct.list_head, i16, ptr, ptr, ptr }
%struct.brcmf_chip = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.brcmf_buscore_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_core = type { i16, i16, i32 }
%struct.brcmf_core_priv = type { %struct.brcmf_core, i32, %struct.list_head, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BCM%d/%u\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BCM%x/%u\00", [23 x i8] zeroinitializer }, align 32
@__func__.brcmf_chip_get_raminfo = private unnamed_addr constant [23 x i8] c"brcmf_chip_get_raminfo\00", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RAM base not provided with ARM CR4 core\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RAM base not provided with ARM CA7 core\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No memory cores found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"RAM: base=0x%x size=%d (0x%x) sr=%d (0x%x)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RAM size is undetermined\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RAM size is incorrect\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c\00", [40 x i8] zeroinitializer }, align 32
@__func__.brcmf_chip_set_passive = private unnamed_addr constant [23 x i8] c"brcmf_chip_set_passive\00", align 1
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enter\0A\00", [25 x i8] zeroinitializer }, align 32
@__func__.brcmf_chip_set_active = private unnamed_addr constant [22 x i8] c"brcmf_chip_set_active\00", align 1
@__func__.brcmf_chip_sr_capable = private unnamed_addr constant [22 x i8] c"brcmf_chip_sr_capable\00", align 1
@__func__.brcmf_chip_tcm_rambase = private unnamed_addr constant [23 x i8] c"brcmf_chip_tcm_rambase\00", align 1
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unknown chip: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.brcmf_chip_recognition = private unnamed_addr constant [23 x i8] c"brcmf_chip_recognition\00", align 1
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"found %s chip: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SB\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AXI\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SB chip is not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"chip backplane type %u is not supported\0A\00", [55 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__func__.brcmf_chip_sb_coredisable = private unnamed_addr constant [26 x i8] c"brcmf_chip_sb_coredisable\00", align 1
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"core state still busy\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.brcmf_chip_ai_resetcore = private unnamed_addr constant [24 x i8] c"brcmf_chip_ai_resetcore\00", align 1
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"found two d11 cores, reset both\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.brcmf_chip_cores_check = private unnamed_addr constant [23 x i8] c"brcmf_chip_cores_check\00", align 1
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c" [%-2d] core 0x%x:%-3d base 0x%08x wrap 0x%08x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CPU core not detected\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RAM core not provided with ARM CM3 core\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.brcmf_chip_setup = private unnamed_addr constant [17 x i8] c"brcmf_chip_setup\00", align 1
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ccrev=%d, pmurev=%d, pmucaps=0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.brcmf_chip_cm3_set_active = private unnamed_addr constant [26 x i8] c"brcmf_chip_cm3_set_active\00", align 1
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SOCRAM core is down after reset?\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 12]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 17204, i64 43430]
@__sancov_gen_cov_switch_values.25 = internal global [24 x i64] [i64 22, i64 32, i64 17205, i64 17209, i64 17221, i64 17232, i64 17236, i64 17238, i64 17240, i64 17241, i64 17252, i64 17253, i64 17254, i64 17265, i64 17267, i64 43465, i64 43525, i64 43567, i64 43569, i64 43570, i64 43602, i64 43664, i64 43666, i64 43752]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 12, i64 2087, i64 2112]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 4, i64 3, i64 5]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 4, i64 1, i64 5, i64 15]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 16, i64 2062, i64 2090, i64 2110, i64 2119]
@__sancov_gen_cov_switch_values.31 = internal global [13 x i64] [i64 11, i64 32, i64 17188, i64 17205, i64 17209, i64 17221, i64 17236, i64 17238, i64 17241, i64 17267, i64 43012, i64 43430, i64 43752]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 498, i32 43 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 498, i32 56 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 754, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 765, i32 5 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 772, i32 5 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 781, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 786, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 791, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1108, i32 6 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1344, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 735, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 975, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 980, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1009, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 308, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 447, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 532, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 556, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 561, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1092, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [59 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1273, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @brcmf_chip_name(i32 noundef %id, i32 noundef %rev, ptr noundef returned writeonly %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %id, -40961
  call void @__sanitizer_cov_trace_const_cmp4(i32 -24577, i32 %0)
  %1 = icmp ult i32 %0, -24577
  %2 = select i1 %1, ptr @.str, ptr @.str.1
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull %2, i32 noundef %id, i32 noundef %rev)
  ret ptr %buf
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_chip_get_raminfo(ptr noundef %pub) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cores.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %cores.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %cores.i
  br i1 %cmp.not.i, label %for.cond.i.for.cond.i112.preheader_crit_edge, label %for.body.i

for.cond.i.for.cond.i112.preheader_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i112.preheader

for.body.i:                                       ; preds = %for.cond.i
  %core.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %1 = ptrtoint ptr %core.0.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %core.0.i, align 4
  %cmp7.i = icmp eq i16 %2, 2110
  br i1 %cmp7.i, label %brcmf_chip_get_core.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

brcmf_chip_get_core.exit:                         ; preds = %for.body.i
  %core.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool.not = icmp eq ptr %core.0.i.le, null
  br i1 %tobool.not, label %brcmf_chip_get_core.exit.for.cond.i112.preheader_crit_edge, label %if.then

brcmf_chip_get_core.exit.for.cond.i112.preheader_crit_edge: ; preds = %brcmf_chip_get_core.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i112.preheader

for.cond.i112.preheader:                          ; preds = %brcmf_chip_get_core.exit.for.cond.i112.preheader_crit_edge, %for.cond.i.for.cond.i112.preheader_crit_edge
  br label %for.cond.i112

if.then:                                          ; preds = %brcmf_chip_get_core.exit
  %chip.i.i = getelementptr i8, ptr %.pn.i, i32 8
  %3 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %ctx.i.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx.i.i, align 4
  %base.i.i = getelementptr i8, ptr %.pn.i, i32 -8
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base.i.i, align 4
  %add.i.i = add i32 %12, 4
  %call.i.i = tail call i32 %8(ptr noundef %10, i32 noundef %add.i.i) #7
  %and.i = and i32 %call.i.i, 15
  %and1.i = lshr i32 %call.i.i, 4
  %shr2.i = and i32 %and1.i, 15
  %add.i = add nuw nsw i32 %shr2.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp24.not.i = icmp eq i32 %add.i, 0
  br i1 %cmp24.not.i, label %if.then.brcmf_chip_tcm_ramsize.exit_crit_edge, label %if.then.for.body.i107_crit_edge

if.then.for.body.i107_crit_edge:                  ; preds = %if.then
  br label %for.body.i107

if.then.brcmf_chip_tcm_ramsize.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_tcm_ramsize.exit

for.body.i107:                                    ; preds = %for.body.i107.for.body.i107_crit_edge, %if.then.for.body.i107_crit_edge
  %idx.026.i = phi i32 [ %inc.i, %for.body.i107.for.body.i107_crit_edge ], [ 0, %if.then.for.body.i107_crit_edge ]
  %memsize.025.i = phi i32 [ %add6.i, %for.body.i107.for.body.i107_crit_edge ], [ 0, %if.then.for.body.i107_crit_edge ]
  %13 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip.i.i, align 4
  %ops.i14.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %ops.i14.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i14.i, align 4
  %write32.i.i = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write32.i.i, align 4
  %ctx.i15.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %14, i32 0, i32 2
  %19 = ptrtoint ptr %ctx.i15.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx.i15.i, align 4
  %21 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base.i.i, align 4
  %add.i17.i = add i32 %22, 64
  tail call void %18(ptr noundef %20, i32 noundef %add.i17.i, i32 noundef %idx.026.i) #7
  %23 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chip.i.i, align 4
  %ops.i19.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %ops.i19.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i19.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %ctx.i20.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %24, i32 0, i32 2
  %29 = ptrtoint ptr %ctx.i20.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctx.i20.i, align 4
  %31 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base.i.i, align 4
  %add.i22.i = add i32 %32, 68
  %call.i23.i = tail call i32 %28(ptr noundef %30, i32 noundef %add.i22.i) #7
  %and4.i = shl i32 %call.i23.i, 13
  %add5.i = and i32 %and4.i, 516096
  %mul.i = add i32 %memsize.025.i, 8192
  %add6.i = add i32 %mul.i, %add5.i
  %inc.i = add nuw nsw i32 %idx.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add.i
  br i1 %exitcond.not.i, label %for.body.i107.brcmf_chip_tcm_ramsize.exit_crit_edge, label %for.body.i107.for.body.i107_crit_edge

for.body.i107.for.body.i107_crit_edge:            ; preds = %for.body.i107
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i107

for.body.i107.brcmf_chip_tcm_ramsize.exit_crit_edge: ; preds = %for.body.i107
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_tcm_ramsize.exit

brcmf_chip_tcm_ramsize.exit:                      ; preds = %for.body.i107.brcmf_chip_tcm_ramsize.exit_crit_edge, %if.then.brcmf_chip_tcm_ramsize.exit_crit_edge
  %memsize.0.lcssa.i = phi i32 [ 0, %if.then.brcmf_chip_tcm_ramsize.exit_crit_edge ], [ %add6.i, %for.body.i107.brcmf_chip_tcm_ramsize.exit_crit_edge ]
  %ramsize = getelementptr inbounds %struct.brcmf_chip, ptr %pub, i32 0, i32 8
  %33 = ptrtoint ptr %ramsize to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %memsize.0.lcssa.i, ptr %ramsize, align 4
  %call7 = tail call fastcc i32 @brcmf_chip_tcm_rambase(ptr noundef %pub)
  %rambase = getelementptr inbounds %struct.brcmf_chip, ptr %pub, i32 0, i32 7
  %34 = ptrtoint ptr %rambase to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call7, ptr %rambase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7)
  %cmp = icmp eq i32 %call7, -1
  br i1 %cmp, label %brcmf_chip_tcm_ramsize.exit.cleanup.sink.split_crit_edge, label %brcmf_chip_tcm_ramsize.exit.do.body50_crit_edge

brcmf_chip_tcm_ramsize.exit.do.body50_crit_edge:  ; preds = %brcmf_chip_tcm_ramsize.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body50

brcmf_chip_tcm_ramsize.exit.cleanup.sink.split_crit_edge: ; preds = %brcmf_chip_tcm_ramsize.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.cond.i112:                                    ; preds = %for.body.i115.for.cond.i112_crit_edge, %for.cond.i112.preheader
  %.pn.in.i109 = phi ptr [ %.pn.i110, %for.body.i115.for.cond.i112_crit_edge ], [ %cores.i, %for.cond.i112.preheader ]
  %35 = ptrtoint ptr %.pn.in.i109 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn.i110 = load ptr, ptr %.pn.in.i109, align 4
  %cmp.not.i111 = icmp eq ptr %.pn.i110, %cores.i
  br i1 %cmp.not.i111, label %for.cond.i112.for.cond.i136.preheader_crit_edge, label %for.body.i115

for.cond.i112.for.cond.i136.preheader_crit_edge:  ; preds = %for.cond.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i136.preheader

for.body.i115:                                    ; preds = %for.cond.i112
  %core.0.i113 = getelementptr i8, ptr %.pn.i110, i32 -12
  %36 = ptrtoint ptr %core.0.i113 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %core.0.i113, align 4
  %cmp7.i114 = icmp eq i16 %37, 2121
  br i1 %cmp7.i114, label %brcmf_chip_get_core.exit119, label %for.body.i115.for.cond.i112_crit_edge

for.body.i115.for.cond.i112_crit_edge:            ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i112

brcmf_chip_get_core.exit119:                      ; preds = %for.body.i115
  %core.0.i113.le = getelementptr i8, ptr %.pn.i110, i32 -12
  %tobool14.not = icmp eq ptr %core.0.i113.le, null
  br i1 %tobool14.not, label %brcmf_chip_get_core.exit119.for.cond.i136.preheader_crit_edge, label %if.then15

brcmf_chip_get_core.exit119.for.cond.i136.preheader_crit_edge: ; preds = %brcmf_chip_get_core.exit119
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i136.preheader

for.cond.i136.preheader:                          ; preds = %brcmf_chip_get_core.exit119.for.cond.i136.preheader_crit_edge, %for.cond.i112.for.cond.i136.preheader_crit_edge
  br label %for.cond.i136

if.then15:                                        ; preds = %brcmf_chip_get_core.exit119
  %chip.i.i120 = getelementptr i8, ptr %.pn.i110, i32 8
  %38 = ptrtoint ptr %chip.i.i120 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chip.i.i120, align 4
  %iscoreup.i.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %iscoreup.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iscoreup.i.i, align 4
  %call.i.i121 = tail call zeroext i1 %41(ptr noundef nonnull %core.0.i113.le) #7
  br i1 %call.i.i121, label %if.then15.if.end.i_crit_edge, label %if.then.i

if.then15.if.end.i_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %chip.i.i120 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chip.i.i120, align 4
  %resetcore.i.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %resetcore.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %resetcore.i.i, align 4
  tail call void %45(ptr noundef nonnull %core.0.i113.le, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then15.if.end.i_crit_edge
  %46 = ptrtoint ptr %chip.i.i120 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chip.i.i120, align 4
  %ops.i.i122 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %ops.i.i122 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i.i122, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %ctx.i.i123 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %47, i32 0, i32 2
  %52 = ptrtoint ptr %ctx.i.i123 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx.i.i123, align 4
  %base.i.i124 = getelementptr i8, ptr %.pn.i110, i32 -8
  %54 = ptrtoint ptr %base.i.i124 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %base.i.i124, align 4
  %call.i12.i = tail call i32 %51(ptr noundef %53, i32 noundef %55) #7
  %and.i125 = lshr i32 %call.i12.i, 4
  %shr.i = and i32 %and.i125, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp13.not.i = icmp eq i32 %shr.i, 0
  br i1 %cmp13.not.i, label %if.end.i.brcmf_chip_sysmem_ramsize.exit_crit_edge, label %if.end.i.for.body.i130_crit_edge

if.end.i.for.body.i130_crit_edge:                 ; preds = %if.end.i
  br label %for.body.i130

if.end.i.brcmf_chip_sysmem_ramsize.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_sysmem_ramsize.exit

for.body.i130:                                    ; preds = %for.body.i130.for.body.i130_crit_edge, %if.end.i.for.body.i130_crit_edge
  %idx.015.i = phi i32 [ %inc.i128, %for.body.i130.for.body.i130_crit_edge ], [ 0, %if.end.i.for.body.i130_crit_edge ]
  %memsize.014.i = phi i32 [ %add.i127, %for.body.i130.for.body.i130_crit_edge ], [ 0, %if.end.i.for.body.i130_crit_edge ]
  %56 = ptrtoint ptr %chip.i.i120 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chip.i.i120, align 4
  %ops.i.i.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i.i.i, align 4
  %write32.i.i.i = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write32.i.i.i, align 4
  %ctx.i.i.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %57, i32 0, i32 2
  %62 = ptrtoint ptr %ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctx.i.i.i, align 4
  %64 = ptrtoint ptr %base.i.i124 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %base.i.i124, align 4
  %add.i.i.i = add i32 %65, 16
  tail call void %61(ptr noundef %63, i32 noundef %add.i.i.i, i32 noundef %idx.015.i) #7
  %66 = ptrtoint ptr %chip.i.i120 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %chip.i.i120, align 4
  %ops.i8.i.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %ops.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops.i8.i.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %ctx.i9.i.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %67, i32 0, i32 2
  %72 = ptrtoint ptr %ctx.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ctx.i9.i.i, align 4
  %74 = ptrtoint ptr %base.i.i124 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %base.i.i124, align 4
  %add.i11.i.i = add i32 %75, 64
  %call.i.i.i = tail call i32 %71(ptr noundef %73, i32 noundef %add.i11.i.i) #7
  %and.i.i = shl i32 %call.i.i.i, 13
  %add.i.i126 = and i32 %and.i.i, 1040384
  %mul.i.i = add i32 %memsize.014.i, 8192
  %add.i127 = add i32 %mul.i.i, %add.i.i126
  %inc.i128 = add nuw nsw i32 %idx.015.i, 1
  %exitcond.not.i129 = icmp eq i32 %inc.i128, %shr.i
  br i1 %exitcond.not.i129, label %for.body.i130.brcmf_chip_sysmem_ramsize.exit_crit_edge, label %for.body.i130.for.body.i130_crit_edge

for.body.i130.for.body.i130_crit_edge:            ; preds = %for.body.i130
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i130

for.body.i130.brcmf_chip_sysmem_ramsize.exit_crit_edge: ; preds = %for.body.i130
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_sysmem_ramsize.exit

brcmf_chip_sysmem_ramsize.exit:                   ; preds = %for.body.i130.brcmf_chip_sysmem_ramsize.exit_crit_edge, %if.end.i.brcmf_chip_sysmem_ramsize.exit_crit_edge
  %memsize.0.lcssa.i131 = phi i32 [ 0, %if.end.i.brcmf_chip_sysmem_ramsize.exit_crit_edge ], [ %add.i127, %for.body.i130.brcmf_chip_sysmem_ramsize.exit_crit_edge ]
  %ramsize21 = getelementptr inbounds %struct.brcmf_chip, ptr %pub, i32 0, i32 8
  %76 = ptrtoint ptr %ramsize21 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %memsize.0.lcssa.i131, ptr %ramsize21, align 4
  %call22 = tail call fastcc i32 @brcmf_chip_tcm_rambase(ptr noundef %pub)
  %rambase24 = getelementptr inbounds %struct.brcmf_chip, ptr %pub, i32 0, i32 7
  %77 = ptrtoint ptr %rambase24 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call22, ptr %rambase24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call22)
  %cmp27 = icmp eq i32 %call22, -1
  br i1 %cmp27, label %brcmf_chip_sysmem_ramsize.exit.cleanup.sink.split_crit_edge, label %brcmf_chip_sysmem_ramsize.exit.do.body50_crit_edge

brcmf_chip_sysmem_ramsize.exit.do.body50_crit_edge: ; preds = %brcmf_chip_sysmem_ramsize.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body50

brcmf_chip_sysmem_ramsize.exit.cleanup.sink.split_crit_edge: ; preds = %brcmf_chip_sysmem_ramsize.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.cond.i136:                                    ; preds = %for.body.i139.for.cond.i136_crit_edge, %for.cond.i136.preheader
  %.pn.in.i133 = phi ptr [ %.pn.i134, %for.body.i139.for.cond.i136_crit_edge ], [ %cores.i, %for.cond.i136.preheader ]
  %78 = ptrtoint ptr %.pn.in.i133 to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pn.i134 = load ptr, ptr %.pn.in.i133, align 4
  %cmp.not.i135 = icmp eq ptr %.pn.i134, %cores.i
  br i1 %cmp.not.i135, label %for.cond.i136.cleanup.sink.split_crit_edge, label %for.body.i139

for.cond.i136.cleanup.sink.split_crit_edge:       ; preds = %for.cond.i136
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.body.i139:                                    ; preds = %for.cond.i136
  %core.0.i137 = getelementptr i8, ptr %.pn.i134, i32 -12
  %79 = ptrtoint ptr %core.0.i137 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %core.0.i137, align 4
  %cmp7.i138 = icmp eq i16 %80, 2062
  br i1 %cmp7.i138, label %brcmf_chip_get_core.exit143, label %for.body.i139.for.cond.i136_crit_edge

for.body.i139.for.cond.i136_crit_edge:            ; preds = %for.body.i139
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i136

brcmf_chip_get_core.exit143:                      ; preds = %for.body.i139
  %core.0.i137.le = getelementptr i8, ptr %.pn.i134, i32 -12
  %tobool36.not = icmp eq ptr %core.0.i137.le, null
  br i1 %tobool36.not, label %brcmf_chip_get_core.exit143.cleanup.sink.split_crit_edge, label %if.end41

brcmf_chip_get_core.exit143.cleanup.sink.split_crit_edge: ; preds = %brcmf_chip_get_core.exit143
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end41:                                         ; preds = %brcmf_chip_get_core.exit143
  %ramsize46 = getelementptr inbounds %struct.brcmf_chip, ptr %pub, i32 0, i32 8
  %srsize = getelementptr inbounds %struct.brcmf_chip, ptr %pub, i32 0, i32 9
  %81 = ptrtoint ptr %ramsize46 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %ramsize46, align 4
  %82 = ptrtoint ptr %srsize to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %srsize, align 4
  %rev.i = getelementptr i8, ptr %.pn.i134, i32 -10
  %83 = ptrtoint ptr %rev.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %84)
  %cmp.i = icmp ult i16 %84, 4
  br i1 %cmp.i, label %do.end.i, label %if.end22.i, !prof !69

do.end.i:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 603, i32 noundef 9, ptr noundef null) #7
  br label %do.body50

if.end22.i:                                       ; preds = %if.end41
  %chip.i.i144 = getelementptr i8, ptr %.pn.i134, i32 8
  %85 = ptrtoint ptr %chip.i.i144 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %chip.i.i144, align 4
  %iscoreup.i.i145 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %iscoreup.i.i145 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %iscoreup.i.i145, align 4
  %call.i.i146 = tail call zeroext i1 %88(ptr noundef nonnull %core.0.i137.le) #7
  br i1 %call.i.i146, label %if.end22.i.if.end26.i_crit_edge, label %if.then24.i

if.end22.i.if.end26.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then24.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %chip.i.i144 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %chip.i.i144, align 4
  %resetcore.i.i147 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %90, i32 0, i32 7
  %91 = ptrtoint ptr %resetcore.i.i147 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %resetcore.i.i147, align 4
  tail call void %92(ptr noundef nonnull %core.0.i137.le, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end22.i.if.end26.i_crit_edge
  %93 = ptrtoint ptr %chip.i.i144 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %chip.i.i144, align 4
  %ops.i.i148 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %ops.i.i148 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops.i.i148, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %ctx.i.i149 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %94, i32 0, i32 2
  %99 = ptrtoint ptr %ctx.i.i149 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ctx.i.i149, align 4
  %base.i.i150 = getelementptr i8, ptr %.pn.i134, i32 -8
  %101 = ptrtoint ptr %base.i.i150 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %base.i.i150, align 4
  %call.i117.i = tail call i32 %98(ptr noundef %100, i32 noundef %102) #7
  %and.i151 = lshr i32 %call.i117.i, 4
  %shr.i152 = and i32 %and.i151, 15
  %103 = ptrtoint ptr %rev.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %rev.i, align 2
  %105 = zext i16 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values)
  switch i16 %104, label %if.else.i [
    i16 12, label %if.end26.i.if.then38.i_crit_edge
    i16 7, label %if.end26.i.if.then38.i_crit_edge195
    i16 6, label %if.end26.i.if.then38.i_crit_edge196
    i16 5, label %if.end26.i.if.then38.i_crit_edge197
    i16 4, label %if.end26.i.if.then38.i_crit_edge198
    i16 3, label %if.end26.i.if.then38.i_crit_edge199
    i16 2, label %if.end26.i.if.then38.i_crit_edge200
    i16 1, label %if.end26.i.if.then38.i_crit_edge201
    i16 0, label %if.end26.i.if.then38.i_crit_edge202
  ]

if.end26.i.if.then38.i_crit_edge202:              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

if.end26.i.if.then38.i_crit_edge201:              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

if.end26.i.if.then38.i_crit_edge200:              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

if.end26.i.if.then38.i_crit_edge199:              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

if.end26.i.if.then38.i_crit_edge198:              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

if.end26.i.if.then38.i_crit_edge197:              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

if.end26.i.if.then38.i_crit_edge196:              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

if.end26.i.if.then38.i_crit_edge195:              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

if.end26.i.if.then38.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.end26.i.if.then38.i_crit_edge, %if.end26.i.if.then38.i_crit_edge195, %if.end26.i.if.then38.i_crit_edge196, %if.end26.i.if.then38.i_crit_edge197, %if.end26.i.if.then38.i_crit_edge198, %if.end26.i.if.then38.i_crit_edge199, %if.end26.i.if.then38.i_crit_edge200, %if.end26.i.if.then38.i_crit_edge201, %if.end26.i.if.then38.i_crit_edge202
  %and39.i = and i32 %call.i117.i, 15
  %and40.i = lshr i32 %call.i117.i, 20
  %shr41.i = and i32 %and40.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr41.i)
  %cmp42.not.i = icmp eq i32 %shr41.i, 0
  %not.cmp42.not.i = xor i1 %cmp42.not.i, true
  %dec.i = sext i1 %not.cmp42.not.i to i32
  %spec.select.i = add nsw i32 %shr.i152, %dec.i
  %add.i153 = add nuw nsw i32 %and39.i, 14
  %mul.i154 = shl i32 %spec.select.i, %add.i153
  %106 = ptrtoint ptr %ramsize46 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %mul.i154, ptr %ramsize46, align 4
  br i1 %cmp42.not.i, label %if.then38.i.if.end74.i_crit_edge, label %if.then48.i

if.then38.i.if.end74.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.then48.i:                                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl50.i = shl nuw nsw i32 8192, %shr41.i
  %add51.i = add i32 %mul.i154, %shl50.i
  %107 = ptrtoint ptr %ramsize46 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %add51.i, ptr %ramsize46, align 4
  br label %if.end74.i

if.else.i:                                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 22, i16 %104)
  %cmp56.i = icmp ugt i16 %104, 22
  %shr60.i = and i32 %and.i151, 31
  %nb.1.i = select i1 %cmp56.i, i32 %shr60.i, i32 %shr.i152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nb.1.i)
  %cmp65120.not.i = icmp eq i32 %nb.1.i, 0
  br i1 %cmp65120.not.i, label %if.else.i.if.end74.i_crit_edge, label %if.else.i.for.body.i166_crit_edge

if.else.i.for.body.i166_crit_edge:                ; preds = %if.else.i
  br label %for.body.i166

if.else.i.if.end74.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

for.body.i166:                                    ; preds = %for.inc.i.for.body.i166_crit_edge, %if.else.i.for.body.i166_crit_edge
  %i.0121.i = phi i32 [ %inc.i167, %for.inc.i.for.body.i166_crit_edge ], [ 0, %if.else.i.for.body.i166_crit_edge ]
  %108 = ptrtoint ptr %chip.i.i144 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %chip.i.i144, align 4
  %ops.i.i.i155 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %ops.i.i.i155 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ops.i.i.i155, align 4
  %write32.i.i.i156 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %write32.i.i.i156 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write32.i.i.i156, align 4
  %ctx.i.i.i157 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %109, i32 0, i32 2
  %114 = ptrtoint ptr %ctx.i.i.i157 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ctx.i.i.i157, align 4
  %116 = ptrtoint ptr %base.i.i150 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %base.i.i150, align 4
  %add.i.i.i158 = add i32 %117, 16
  tail call void %113(ptr noundef %115, i32 noundef %add.i.i.i158, i32 noundef %i.0121.i) #7
  %118 = ptrtoint ptr %chip.i.i144 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %chip.i.i144, align 4
  %ops.i8.i.i159 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %ops.i8.i.i159 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ops.i8.i.i159, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %ctx.i9.i.i160 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %119, i32 0, i32 2
  %124 = ptrtoint ptr %ctx.i9.i.i160 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ctx.i9.i.i160, align 4
  %126 = ptrtoint ptr %base.i.i150 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %base.i.i150, align 4
  %add.i11.i.i161 = add i32 %127, 64
  %call.i.i.i162 = tail call i32 %123(ptr noundef %125, i32 noundef %add.i11.i.i161) #7
  %and.i.i163 = shl i32 %call.i.i.i162, 13
  %add.i.i164 = and i32 %and.i.i163, 1040384
  %mul.i.i165 = add nuw nsw i32 %add.i.i164, 8192
  %and1.i.i = and i32 %call.i.i.i162, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i, 0
  %128 = ptrtoint ptr %ramsize46 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %ramsize46, align 4
  %add69.i = add i32 %mul.i.i165, %129
  store i32 %add69.i, ptr %ramsize46, align 4
  br i1 %tobool.i.not.i, label %for.body.i166.for.inc.i_crit_edge, label %if.then71.i

for.body.i166.for.inc.i_crit_edge:                ; preds = %for.body.i166
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then71.i:                                      ; preds = %for.body.i166
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %srsize to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %srsize, align 4
  %add72.i = add i32 %131, %mul.i.i165
  store i32 %add72.i, ptr %srsize, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then71.i, %for.body.i166.for.inc.i_crit_edge
  %inc.i167 = add nuw nsw i32 %i.0121.i, 1
  %exitcond.not.i168 = icmp eq i32 %inc.i167, %nb.1.i
  br i1 %exitcond.not.i168, label %for.inc.i.if.end74.i_crit_edge, label %for.inc.i.for.body.i166_crit_edge

for.inc.i.for.body.i166_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i166

for.inc.i.if.end74.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.end74.i:                                       ; preds = %for.inc.i.if.end74.i_crit_edge, %if.else.i.if.end74.i_crit_edge, %if.then48.i, %if.then38.i.if.end74.i_crit_edge
  %132 = ptrtoint ptr %chip.i.i144 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %chip.i.i144, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %133, align 4
  %136 = zext i32 %135 to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %135, label %if.end74.i.do.body50_crit_edge [
    i32 17204, label %sw.bb.i
    i32 43430, label %sw.bb83.i
  ]

if.end74.i.do.body50_crit_edge:                   ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body50

sw.bb.i:                                          ; preds = %if.end74.i
  %chiprev.i = getelementptr inbounds %struct.brcmf_chip, ptr %133, i32 0, i32 1
  %137 = ptrtoint ptr %chiprev.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %chiprev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %138)
  %cmp79.i = icmp ult i32 %138, 2
  br i1 %cmp79.i, label %if.then81.i, label %sw.bb.i.do.body50_crit_edge

sw.bb.i.do.body50_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body50

if.then81.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %139 = ptrtoint ptr %srsize to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 32768, ptr %srsize, align 4
  br label %do.body50

sw.bb83.i:                                        ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  %140 = ptrtoint ptr %srsize to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 65536, ptr %srsize, align 4
  br label %do.body50

do.body50:                                        ; preds = %sw.bb83.i, %if.then81.i, %sw.bb.i.do.body50_crit_edge, %if.end74.i.do.body50_crit_edge, %do.end.i, %brcmf_chip_sysmem_ramsize.exit.do.body50_crit_edge, %brcmf_chip_tcm_ramsize.exit.do.body50_crit_edge
  %rambase52 = getelementptr inbounds %struct.brcmf_chip, ptr %pub, i32 0, i32 7
  %141 = ptrtoint ptr %rambase52 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %rambase52, align 4
  %ramsize54 = getelementptr inbounds %struct.brcmf_chip, ptr %pub, i32 0, i32 8
  %143 = ptrtoint ptr %ramsize54 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %ramsize54, align 4
  %srsize58 = getelementptr inbounds %struct.brcmf_chip, ptr %pub, i32 0, i32 9
  %145 = ptrtoint ptr %srsize58 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %srsize58, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_chip_get_raminfo, ptr noundef nonnull @.str.5, i32 noundef %142, i32 noundef %144, i32 noundef %144, i32 noundef %146, i32 noundef %146) #7
  %147 = ptrtoint ptr %ramsize54 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %ramsize54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool65.not = icmp eq i32 %148, 0
  br i1 %tobool65.not, label %do.body50.cleanup.sink.split_crit_edge, label %if.end70

do.body50.cleanup.sink.split_crit_edge:           ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end70:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %148)
  %cmp73 = icmp ugt i32 %148, 4194304
  br i1 %cmp73, label %if.end70.cleanup.sink.split_crit_edge, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end70.cleanup.sink.split_crit_edge:            ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end70.cleanup.sink.split_crit_edge, %do.body50.cleanup.sink.split_crit_edge, %brcmf_chip_get_core.exit143.cleanup.sink.split_crit_edge, %for.cond.i136.cleanup.sink.split_crit_edge, %brcmf_chip_sysmem_ramsize.exit.cleanup.sink.split_crit_edge, %brcmf_chip_tcm_ramsize.exit.cleanup.sink.split_crit_edge
  %.str.7.sink = phi ptr [ @.str.2, %brcmf_chip_tcm_ramsize.exit.cleanup.sink.split_crit_edge ], [ @.str.3, %brcmf_chip_sysmem_ramsize.exit.cleanup.sink.split_crit_edge ], [ @.str.4, %brcmf_chip_get_core.exit143.cleanup.sink.split_crit_edge ], [ @.str.6, %do.body50.cleanup.sink.split_crit_edge ], [ @.str.7, %if.end70.cleanup.sink.split_crit_edge ], [ @.str.4, %for.cond.i136.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %brcmf_chip_tcm_ramsize.exit.cleanup.sink.split_crit_edge ], [ -22, %brcmf_chip_sysmem_ramsize.exit.cleanup.sink.split_crit_edge ], [ -12, %brcmf_chip_get_core.exit143.cleanup.sink.split_crit_edge ], [ -12, %do.body50.cleanup.sink.split_crit_edge ], [ -12, %if.end70.cleanup.sink.split_crit_edge ], [ -12, %for.cond.i136.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_chip_get_raminfo, ptr noundef nonnull %.str.7.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end70.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end70.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @brcmf_chip_get_core(ptr noundef readonly %pub, i16 noundef zeroext %coreid) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cores = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %cores, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %cores
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %core.0 = getelementptr i8, ptr %.pn, i32 -12
  %1 = ptrtoint ptr %core.0 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %core.0, align 4
  %cmp7 = icmp eq i16 %2, %coreid
  br i1 %cmp7, label %cleanup.split.loop.exit23, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

cleanup.split.loop.exit23:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %core.0.le = getelementptr i8, ptr %.pn, i32 -12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit23, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %core.0.le, %cleanup.split.loop.exit23 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_chip_tcm_rambase(ptr noundef %ci) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ci, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %1, label %do.body [
    i32 17221, label %entry.return_crit_edge
    i32 17205, label %entry.sw.bb1_crit_edge
    i32 17209, label %entry.sw.bb1_crit_edge10
    i32 17232, label %entry.sw.bb1_crit_edge11
    i32 17236, label %entry.sw.bb1_crit_edge12
    i32 17238, label %entry.sw.bb1_crit_edge13
    i32 43567, label %entry.sw.bb1_crit_edge14
    i32 43569, label %entry.sw.bb1_crit_edge15
    i32 43570, label %entry.sw.bb1_crit_edge16
    i32 17240, label %entry.sw.bb1_crit_edge17
    i32 43602, label %entry.sw.bb1_crit_edge18
    i32 17265, label %entry.sw.bb1_crit_edge19
    i32 43465, label %entry.sw.bb2_crit_edge
    i32 43525, label %entry.sw.bb2_crit_edge20
    i32 17253, label %entry.sw.bb2_crit_edge21
    i32 17254, label %entry.sw.bb2_crit_edge22
    i32 43664, label %entry.sw.bb2_crit_edge23
    i32 43666, label %entry.sw.bb2_crit_edge24
    i32 17241, label %sw.bb3
    i32 17252, label %entry.sw.bb5_crit_edge
    i32 17267, label %entry.sw.bb5_crit_edge25
    i32 43752, label %sw.bb6
  ]

entry.sw.bb5_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb2_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb1_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge10, %entry.sw.bb1_crit_edge11, %entry.sw.bb1_crit_edge12, %entry.sw.bb1_crit_edge13, %entry.sw.bb1_crit_edge14, %entry.sw.bb1_crit_edge15, %entry.sw.bb1_crit_edge16, %entry.sw.bb1_crit_edge17, %entry.sw.bb1_crit_edge18, %entry.sw.bb1_crit_edge19
  br label %return

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge20, %entry.sw.bb2_crit_edge21, %entry.sw.bb2_crit_edge22, %entry.sw.bb2_crit_edge23, %entry.sw.bb2_crit_edge24
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %chiprev = getelementptr inbounds %struct.brcmf_chip, ptr %ci, i32 0, i32 1
  %3 = ptrtoint ptr %chiprev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chiprev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %4)
  %cmp = icmp ult i32 %4, 9
  %cond = select i1 %cmp, i32 1572864, i32 1441792
  br label %return

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge25
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.brcmf_chip, ptr %ci, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_chip_tcm_rambase, ptr noundef nonnull @.str.10, ptr noundef %name) #7
  br label %return

return:                                           ; preds = %do.body, %sw.bb6, %sw.bb5, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %do.body ], [ 1507328, %sw.bb6 ], [ 1441792, %sw.bb5 ], [ %cond, %sw.bb3 ], [ 2097152, %sw.bb2 ], [ 1572864, %sw.bb1 ], [ 1671168, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @brcmf_chip_enum_base(i16 zeroext %devid) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 402653184
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @brcmf_chip_attach(ptr noundef %ctx, i16 noundef zeroext %devid, ptr noundef %ops) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !69

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1108, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %spec.select = phi i32 [ -22, %do.end ], [ 0, %entry.if.end_crit_edge ]
  %write32 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %ops, i32 0, i32 1
  %2 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write32, align 4
  %tobool25.not = icmp eq ptr %3, null
  br i1 %tobool25.not, label %do.end43, label %if.end.if.end49_crit_edge, !prof !69

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

do.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1110, i32 noundef 9, ptr noundef null) #7
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %if.end.if.end49_crit_edge
  %spec.select182 = phi i32 [ -22, %do.end43 ], [ %spec.select, %if.end.if.end49_crit_edge ]
  %prepare = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %ops, i32 0, i32 2
  %4 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prepare, align 4
  %tobool61.not = icmp eq ptr %5, null
  br i1 %tobool61.not, label %do.end79, label %if.end49.if.end85_crit_edge, !prof !69

if.end49.if.end85_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

do.end79:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1112, i32 noundef 9, ptr noundef null) #7
  br label %if.end85

if.end85:                                         ; preds = %do.end79, %if.end49.if.end85_crit_edge
  %activate = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %ops, i32 0, i32 5
  %6 = ptrtoint ptr %activate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %activate, align 4
  %tobool97.not = icmp eq ptr %7, null
  br i1 %tobool97.not, label %if.end121.thread, label %if.end121, !prof !69

if.end121.thread:                                 ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1114, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end121:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select182)
  %cmp205 = icmp slt i32 %spec.select182, 0
  %cmp = or i1 %cmp205, %tobool61.not
  br i1 %cmp, label %if.end121.cleanup_crit_edge, label %if.end133

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end133:                                        ; preds = %if.end121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 84) #10
  %tobool135.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool135.not, label %if.end133.cleanup_crit_edge, label %if.end138

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end138:                                        ; preds = %if.end133
  %cores = getelementptr inbounds %struct.brcmf_chip_priv, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %cores to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %cores, ptr %cores, align 4
  %prev.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %call7.i.i, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cores, ptr %prev.i, align 8
  %num_cores = getelementptr inbounds %struct.brcmf_chip_priv, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %num_cores to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %num_cores, align 4
  %ops139 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %ops139 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ops, ptr %ops139, align 4
  %ctx140 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %ctx140 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ctx, ptr %ctx140, align 8
  %enum_base = getelementptr inbounds %struct.brcmf_chip, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %enum_base to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 402653184, ptr %enum_base, align 8
  %15 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prepare, align 4
  %call143 = tail call i32 %16(ptr noundef %ctx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %cmp144 = icmp slt i32 %call143, 0
  br i1 %cmp144, label %if.end138.fail_crit_edge, label %if.end146

if.end138.fail_crit_edge:                         ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end146:                                        ; preds = %if.end138
  %17 = ptrtoint ptr %ops139 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops139, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %21 = ptrtoint ptr %ctx140 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx140, align 8
  %23 = ptrtoint ptr %enum_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %enum_base, align 8
  %call.i = tail call i32 %20(ptr noundef %22, i32 noundef %24) #7
  %and.i = and i32 %call.i, 65535
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and.i, ptr %call7.i.i, align 8
  %and2.i = lshr i32 %call.i, 16
  %shr.i = and i32 %and2.i, 15
  %chiprev.i = getelementptr inbounds %struct.brcmf_chip, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %chiprev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shr.i, ptr %chiprev.i, align 4
  %shr5.i = lshr i32 %call.i, 28
  %name.i = getelementptr inbounds %struct.brcmf_chip, ptr %call7.i.i, i32 0, i32 10
  %27 = add nsw i32 %and.i, -40961
  call void @__sanitizer_cov_trace_const_cmp4(i32 -24577, i32 %27)
  %28 = icmp ult i32 %27, -24577
  %29 = select i1 %28, ptr @.str, ptr @.str.1
  %call.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 12, ptr noundef nonnull %29, i32 noundef %and.i, i32 noundef %shr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 268435456
  %cond.i = select i1 %cmp.i, ptr @.str.12, ptr @.str.13
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_chip_recognition, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond.i, ptr noundef %name.i) #7
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end146
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17193, i32 %31)
  %cmp18.not.i = icmp eq i32 %31, 17193
  br i1 %cmp18.not.i, label %if.end.i, label %do.body20.i

do.body20.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_chip_recognition, ptr noundef nonnull @.str.14) #7
  br label %fail

if.end.i:                                         ; preds = %if.then.i
  %iscoreup.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %call7.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %iscoreup.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @brcmf_chip_sb_iscoreup, ptr %iscoreup.i, align 8
  %coredisable.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %call7.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %coredisable.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @brcmf_chip_sb_coredisable, ptr %coredisable.i, align 4
  %resetcore.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %call7.i.i, i32 0, i32 7
  %34 = ptrtoint ptr %resetcore.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @brcmf_chip_sb_resetcore, ptr %resetcore.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 24) #10
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.brcmf_chip_add_core.exit.i_crit_edge, label %if.end.i.i

if.end.i.brcmf_chip_add_core.exit.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_add_core.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %36 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 2048, ptr %call7.i.i.i.i, align 8
  %base3.i.i = getelementptr inbounds %struct.brcmf_core, ptr %call7.i.i.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %base3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 402653184, ptr %base3.i.i, align 4
  %chip.i.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %chip.i.i, align 4
  %wrapbase4.i.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %wrapbase4.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %wrapbase4.i.i, align 8
  %list.i.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %41, ptr noundef %cores) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.brcmf_chip_add_core.exit.i_crit_edge

if.end.i.i.brcmf_chip_add_core.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_add_core.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %list.i.i, ptr %prev.i, align 8
  %43 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %cores, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i.i.i, align 8
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %list.i.i, ptr %41, align 4
  br label %brcmf_chip_add_core.exit.i

brcmf_chip_add_core.exit.i:                       ; preds = %if.end.i.i.i.i, %if.end.i.i.brcmf_chip_add_core.exit.i_crit_edge, %if.end.i.brcmf_chip_add_core.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ inttoptr (i32 -12 to ptr), %if.end.i.brcmf_chip_add_core.exit.i_crit_edge ], [ %call7.i.i.i.i, %if.end.i.i.brcmf_chip_add_core.exit.i_crit_edge ], [ %call7.i.i.i.i, %if.end.i.i.i.i ]
  %46 = ptrtoint ptr %ops139 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops139, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %50 = ptrtoint ptr %ctx140 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctx140, align 8
  %base.i.i = getelementptr inbounds %struct.brcmf_core, ptr %retval.0.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %base.i.i, align 4
  %add1.i.i = add i32 %53, 4092
  %call.i103.i = tail call i32 %49(ptr noundef %51, i32 noundef %add1.i.i) #7
  %and.i.i = lshr i32 %call.i103.i, 8
  %shr.i.i = and i32 %and.i.i, 112
  %and2.i.i = and i32 %call.i103.i, 15
  %or.i.i = or i32 %shr.i.i, %and2.i.i
  %conv.i.i = trunc i32 %or.i.i to i16
  %rev.i.i = getelementptr inbounds %struct.brcmf_core, ptr %retval.0.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i.i, ptr %rev.i.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %55 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i104.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3520, i32 noundef 24) #10
  %tobool.not.i105.i = icmp eq ptr %call7.i.i.i104.i, null
  br i1 %tobool.not.i105.i, label %brcmf_chip_add_core.exit.i.brcmf_chip_add_core.exit117.i_crit_edge, label %if.end.i113.i

brcmf_chip_add_core.exit.i.brcmf_chip_add_core.exit117.i_crit_edge: ; preds = %brcmf_chip_add_core.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_add_core.exit117.i

if.end.i113.i:                                    ; preds = %brcmf_chip_add_core.exit.i
  %56 = ptrtoint ptr %call7.i.i.i104.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 2089, ptr %call7.i.i.i104.i, align 8
  %base3.i106.i = getelementptr inbounds %struct.brcmf_core, ptr %call7.i.i.i104.i, i32 0, i32 2
  %57 = ptrtoint ptr %base3.i106.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 402722816, ptr %base3.i106.i, align 4
  %chip.i107.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i104.i, i32 0, i32 3
  %58 = ptrtoint ptr %chip.i107.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call7.i.i, ptr %chip.i107.i, align 4
  %wrapbase4.i108.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i104.i, i32 0, i32 1
  %59 = ptrtoint ptr %wrapbase4.i108.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %wrapbase4.i108.i, align 8
  %list.i109.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i104.i, i32 0, i32 2
  %60 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i, align 8
  %call.i.i.i112.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i109.i, ptr noundef %61, ptr noundef %cores) #7
  br i1 %call.i.i.i112.i, label %if.end.i.i.i115.i, label %if.end.i113.i.brcmf_chip_add_core.exit117.i_crit_edge

if.end.i113.i.brcmf_chip_add_core.exit117.i_crit_edge: ; preds = %if.end.i113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_add_core.exit117.i

if.end.i.i.i115.i:                                ; preds = %if.end.i113.i
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %list.i109.i, ptr %prev.i, align 8
  %63 = ptrtoint ptr %list.i109.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %cores, ptr %list.i109.i, align 4
  %prev3.i.i.i114.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i104.i, i32 0, i32 2, i32 1
  %64 = ptrtoint ptr %prev3.i.i.i114.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev3.i.i.i114.i, align 8
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %list.i109.i, ptr %61, align 4
  br label %brcmf_chip_add_core.exit117.i

brcmf_chip_add_core.exit117.i:                    ; preds = %if.end.i.i.i115.i, %if.end.i113.i.brcmf_chip_add_core.exit117.i_crit_edge, %brcmf_chip_add_core.exit.i.brcmf_chip_add_core.exit117.i_crit_edge
  %retval.0.i116.i = phi ptr [ inttoptr (i32 -12 to ptr), %brcmf_chip_add_core.exit.i.brcmf_chip_add_core.exit117.i_crit_edge ], [ %call7.i.i.i104.i, %if.end.i113.i.brcmf_chip_add_core.exit117.i_crit_edge ], [ %call7.i.i.i104.i, %if.end.i.i.i115.i ]
  %66 = ptrtoint ptr %ops139 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops139, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %70 = ptrtoint ptr %ctx140 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctx140, align 8
  %base.i120.i = getelementptr inbounds %struct.brcmf_core, ptr %retval.0.i116.i, i32 0, i32 2
  %72 = ptrtoint ptr %base.i120.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %base.i120.i, align 4
  %add1.i121.i = add i32 %73, 4092
  %call.i122.i = tail call i32 %69(ptr noundef %71, i32 noundef %add1.i121.i) #7
  %and.i123.i = lshr i32 %call.i122.i, 8
  %shr.i124.i = and i32 %and.i123.i, 112
  %and2.i125.i = and i32 %call.i122.i, 15
  %or.i126.i = or i32 %shr.i124.i, %and2.i125.i
  %conv.i127.i = trunc i32 %or.i126.i to i16
  %rev.i128.i = getelementptr inbounds %struct.brcmf_core, ptr %retval.0.i116.i, i32 0, i32 1
  %74 = ptrtoint ptr %rev.i128.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv.i127.i, ptr %rev.i128.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %75 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i129.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3520, i32 noundef 24) #10
  %tobool.not.i130.i = icmp eq ptr %call7.i.i.i129.i, null
  br i1 %tobool.not.i130.i, label %brcmf_chip_add_core.exit117.i.brcmf_chip_add_core.exit142.i_crit_edge, label %if.end.i138.i

brcmf_chip_add_core.exit117.i.brcmf_chip_add_core.exit142.i_crit_edge: ; preds = %brcmf_chip_add_core.exit117.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_add_core.exit142.i

if.end.i138.i:                                    ; preds = %brcmf_chip_add_core.exit117.i
  %76 = ptrtoint ptr %call7.i.i.i129.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 2062, ptr %call7.i.i.i129.i, align 8
  %base3.i131.i = getelementptr inbounds %struct.brcmf_core, ptr %call7.i.i.i129.i, i32 0, i32 2
  %77 = ptrtoint ptr %base3.i131.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 402665472, ptr %base3.i131.i, align 4
  %chip.i132.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i129.i, i32 0, i32 3
  %78 = ptrtoint ptr %chip.i132.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call7.i.i, ptr %chip.i132.i, align 4
  %wrapbase4.i133.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i129.i, i32 0, i32 1
  %79 = ptrtoint ptr %wrapbase4.i133.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %wrapbase4.i133.i, align 8
  %list.i134.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i129.i, i32 0, i32 2
  %80 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prev.i, align 8
  %call.i.i.i137.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i134.i, ptr noundef %81, ptr noundef %cores) #7
  br i1 %call.i.i.i137.i, label %if.end.i.i.i140.i, label %if.end.i138.i.brcmf_chip_add_core.exit142.i_crit_edge

if.end.i138.i.brcmf_chip_add_core.exit142.i_crit_edge: ; preds = %if.end.i138.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_add_core.exit142.i

if.end.i.i.i140.i:                                ; preds = %if.end.i138.i
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %list.i134.i, ptr %prev.i, align 8
  %83 = ptrtoint ptr %list.i134.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %cores, ptr %list.i134.i, align 4
  %prev3.i.i.i139.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i129.i, i32 0, i32 2, i32 1
  %84 = ptrtoint ptr %prev3.i.i.i139.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %81, ptr %prev3.i.i.i139.i, align 8
  %85 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %list.i134.i, ptr %81, align 4
  br label %brcmf_chip_add_core.exit142.i

brcmf_chip_add_core.exit142.i:                    ; preds = %if.end.i.i.i140.i, %if.end.i138.i.brcmf_chip_add_core.exit142.i_crit_edge, %brcmf_chip_add_core.exit117.i.brcmf_chip_add_core.exit142.i_crit_edge
  %retval.0.i141.i = phi ptr [ inttoptr (i32 -12 to ptr), %brcmf_chip_add_core.exit117.i.brcmf_chip_add_core.exit142.i_crit_edge ], [ %call7.i.i.i129.i, %if.end.i138.i.brcmf_chip_add_core.exit142.i_crit_edge ], [ %call7.i.i.i129.i, %if.end.i.i.i140.i ]
  %86 = ptrtoint ptr %ops139 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ops139, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %90 = ptrtoint ptr %ctx140 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ctx140, align 8
  %base.i145.i = getelementptr inbounds %struct.brcmf_core, ptr %retval.0.i141.i, i32 0, i32 2
  %92 = ptrtoint ptr %base.i145.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %base.i145.i, align 4
  %add1.i146.i = add i32 %93, 4092
  %call.i147.i = tail call i32 %89(ptr noundef %91, i32 noundef %add1.i146.i) #7
  %and.i148.i = lshr i32 %call.i147.i, 8
  %shr.i149.i = and i32 %and.i148.i, 112
  %and2.i150.i = and i32 %call.i147.i, 15
  %or.i151.i = or i32 %shr.i149.i, %and2.i150.i
  %conv.i152.i = trunc i32 %or.i151.i to i16
  %rev.i153.i = getelementptr inbounds %struct.brcmf_core, ptr %retval.0.i141.i, i32 0, i32 1
  %94 = ptrtoint ptr %rev.i153.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv.i152.i, ptr %rev.i153.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %95 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i154.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %95, i32 noundef 3520, i32 noundef 24) #10
  %tobool.not.i155.i = icmp eq ptr %call7.i.i.i154.i, null
  br i1 %tobool.not.i155.i, label %brcmf_chip_add_core.exit142.i.brcmf_chip_add_core.exit167.i_crit_edge, label %if.end.i163.i

brcmf_chip_add_core.exit142.i.brcmf_chip_add_core.exit167.i_crit_edge: ; preds = %brcmf_chip_add_core.exit142.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_add_core.exit167.i

if.end.i163.i:                                    ; preds = %brcmf_chip_add_core.exit142.i
  %96 = ptrtoint ptr %call7.i.i.i154.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 2090, ptr %call7.i.i.i154.i, align 8
  %base3.i156.i = getelementptr inbounds %struct.brcmf_core, ptr %call7.i.i.i154.i, i32 0, i32 2
  %97 = ptrtoint ptr %base3.i156.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 402661376, ptr %base3.i156.i, align 4
  %chip.i157.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i154.i, i32 0, i32 3
  %98 = ptrtoint ptr %chip.i157.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call7.i.i, ptr %chip.i157.i, align 4
  %wrapbase4.i158.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i154.i, i32 0, i32 1
  %99 = ptrtoint ptr %wrapbase4.i158.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %wrapbase4.i158.i, align 8
  %list.i159.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i154.i, i32 0, i32 2
  %100 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i, align 8
  %call.i.i.i162.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i159.i, ptr noundef %101, ptr noundef %cores) #7
  br i1 %call.i.i.i162.i, label %if.end.i.i.i165.i, label %if.end.i163.i.brcmf_chip_add_core.exit167.i_crit_edge

if.end.i163.i.brcmf_chip_add_core.exit167.i_crit_edge: ; preds = %if.end.i163.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_add_core.exit167.i

if.end.i.i.i165.i:                                ; preds = %if.end.i163.i
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %list.i159.i, ptr %prev.i, align 8
  %103 = ptrtoint ptr %list.i159.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %cores, ptr %list.i159.i, align 4
  %prev3.i.i.i164.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i154.i, i32 0, i32 2, i32 1
  %104 = ptrtoint ptr %prev3.i.i.i164.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev3.i.i.i164.i, align 8
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %list.i159.i, ptr %101, align 4
  br label %brcmf_chip_add_core.exit167.i

brcmf_chip_add_core.exit167.i:                    ; preds = %if.end.i.i.i165.i, %if.end.i163.i.brcmf_chip_add_core.exit167.i_crit_edge, %brcmf_chip_add_core.exit142.i.brcmf_chip_add_core.exit167.i_crit_edge
  %retval.0.i166.i = phi ptr [ inttoptr (i32 -12 to ptr), %brcmf_chip_add_core.exit142.i.brcmf_chip_add_core.exit167.i_crit_edge ], [ %call7.i.i.i154.i, %if.end.i163.i.brcmf_chip_add_core.exit167.i_crit_edge ], [ %call7.i.i.i154.i, %if.end.i.i.i165.i ]
  %106 = ptrtoint ptr %ops139 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ops139, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %110 = ptrtoint ptr %ctx140 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ctx140, align 8
  %base.i170.i = getelementptr inbounds %struct.brcmf_core, ptr %retval.0.i166.i, i32 0, i32 2
  %112 = ptrtoint ptr %base.i170.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %base.i170.i, align 4
  %add1.i171.i = add i32 %113, 4092
  %call.i172.i = tail call i32 %109(ptr noundef %111, i32 noundef %add1.i171.i) #7
  %and.i173.i = lshr i32 %call.i172.i, 8
  %shr.i174.i = and i32 %and.i173.i, 112
  %and2.i175.i = and i32 %call.i172.i, 15
  %or.i176.i = or i32 %shr.i174.i, %and2.i175.i
  %conv.i177.i = trunc i32 %or.i176.i to i16
  %rev.i178.i = getelementptr inbounds %struct.brcmf_core, ptr %retval.0.i166.i, i32 0, i32 1
  %114 = ptrtoint ptr %rev.i178.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv.i177.i, ptr %rev.i178.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %115 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i179.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %115, i32 noundef 3520, i32 noundef 24) #10
  %tobool.not.i180.i = icmp eq ptr %call7.i.i.i179.i, null
  br i1 %tobool.not.i180.i, label %brcmf_chip_add_core.exit167.i.brcmf_chip_add_core.exit192.i_crit_edge, label %if.end.i188.i

brcmf_chip_add_core.exit167.i.brcmf_chip_add_core.exit192.i_crit_edge: ; preds = %brcmf_chip_add_core.exit167.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_add_core.exit192.i

if.end.i188.i:                                    ; preds = %brcmf_chip_add_core.exit167.i
  %116 = ptrtoint ptr %call7.i.i.i179.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 2066, ptr %call7.i.i.i179.i, align 8
  %base3.i181.i = getelementptr inbounds %struct.brcmf_core, ptr %call7.i.i.i179.i, i32 0, i32 2
  %117 = ptrtoint ptr %base3.i181.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 402657280, ptr %base3.i181.i, align 4
  %chip.i182.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i179.i, i32 0, i32 3
  %118 = ptrtoint ptr %chip.i182.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call7.i.i, ptr %chip.i182.i, align 4
  %wrapbase4.i183.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i179.i, i32 0, i32 1
  %119 = ptrtoint ptr %wrapbase4.i183.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %wrapbase4.i183.i, align 8
  %list.i184.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i179.i, i32 0, i32 2
  %120 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev.i, align 8
  %call.i.i.i187.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i184.i, ptr noundef %121, ptr noundef %cores) #7
  br i1 %call.i.i.i187.i, label %if.end.i.i.i190.i, label %if.end.i188.i.brcmf_chip_add_core.exit192.i_crit_edge

if.end.i188.i.brcmf_chip_add_core.exit192.i_crit_edge: ; preds = %if.end.i188.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_add_core.exit192.i

if.end.i.i.i190.i:                                ; preds = %if.end.i188.i
  call void @__sanitizer_cov_trace_pc() #9
  %122 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %list.i184.i, ptr %prev.i, align 8
  %123 = ptrtoint ptr %list.i184.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %cores, ptr %list.i184.i, align 4
  %prev3.i.i.i189.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i179.i, i32 0, i32 2, i32 1
  %124 = ptrtoint ptr %prev3.i.i.i189.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %prev3.i.i.i189.i, align 8
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %list.i184.i, ptr %121, align 4
  br label %brcmf_chip_add_core.exit192.i

brcmf_chip_add_core.exit192.i:                    ; preds = %if.end.i.i.i190.i, %if.end.i188.i.brcmf_chip_add_core.exit192.i_crit_edge, %brcmf_chip_add_core.exit167.i.brcmf_chip_add_core.exit192.i_crit_edge
  %retval.0.i191.i = phi ptr [ inttoptr (i32 -12 to ptr), %brcmf_chip_add_core.exit167.i.brcmf_chip_add_core.exit192.i_crit_edge ], [ %call7.i.i.i179.i, %if.end.i188.i.brcmf_chip_add_core.exit192.i_crit_edge ], [ %call7.i.i.i179.i, %if.end.i.i.i190.i ]
  %126 = ptrtoint ptr %ops139 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ops139, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %130 = ptrtoint ptr %ctx140 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ctx140, align 8
  %base.i195.i = getelementptr inbounds %struct.brcmf_core, ptr %retval.0.i191.i, i32 0, i32 2
  %132 = ptrtoint ptr %base.i195.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %base.i195.i, align 4
  %add1.i196.i = add i32 %133, 4092
  %call.i197.i = tail call i32 %129(ptr noundef %131, i32 noundef %add1.i196.i) #7
  %and.i198.i = lshr i32 %call.i197.i, 8
  %shr.i199.i = and i32 %and.i198.i, 112
  %and2.i200.i = and i32 %call.i197.i, 15
  %or.i201.i = or i32 %shr.i199.i, %and2.i200.i
  %conv.i202.i = trunc i32 %or.i201.i to i16
  %rev.i203.i = getelementptr inbounds %struct.brcmf_core, ptr %retval.0.i191.i, i32 0, i32 1
  %134 = ptrtoint ptr %rev.i203.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %conv.i202.i, ptr %rev.i203.i, align 2
  br label %if.end39.i

if.else.i:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr5.i)
  %cmp28.i = icmp eq i32 %shr5.i, 1
  br i1 %cmp28.i, label %if.then29.i, label %do.body35.i

if.then29.i:                                      ; preds = %if.else.i
  %iscoreup30.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %call7.i.i, i32 0, i32 5
  %135 = ptrtoint ptr %iscoreup30.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @brcmf_chip_ai_iscoreup, ptr %iscoreup30.i, align 8
  %coredisable31.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %call7.i.i, i32 0, i32 6
  %136 = ptrtoint ptr %coredisable31.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @brcmf_chip_ai_coredisable, ptr %coredisable31.i, align 4
  %resetcore32.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %call7.i.i, i32 0, i32 7
  %137 = ptrtoint ptr %resetcore32.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @brcmf_chip_ai_resetcore, ptr %resetcore32.i, align 8
  %138 = ptrtoint ptr %ops139 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ops139, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %142 = ptrtoint ptr %ctx140 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ctx140, align 8
  %144 = ptrtoint ptr %enum_base to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %enum_base, align 8
  %add.i.i = add i32 %145, 252
  %call.i206.i = tail call i32 %141(ptr noundef %143, i32 noundef %add.i.i) #7
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.backedge.i.i.while.body.i.i_crit_edge, %if.then29.i
  %eromaddr.052.i.i = phi i32 [ %call.i206.i, %if.then29.i ], [ %eromaddr.0.be.i.i, %while.cond.backedge.i.i.while.body.i.i_crit_edge ]
  %146 = ptrtoint ptr %ops139 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ops139, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 4
  %150 = ptrtoint ptr %ctx140 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ctx140, align 8
  %call.i.i.i = tail call i32 %149(ptr noundef %151, i32 noundef %eromaddr.052.i.i) #7
  %add.i.i.i = add i32 %eromaddr.052.i.i, 4
  %152 = trunc i32 %call.i.i.i to i8
  %conv.i.i.i = and i8 %152, 15
  %and2.i.i.i = and i32 %call.i.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and2.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and2.i.i.i, 5
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i8 5, i8 %conv.i.i.i
  %and.i207.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i207.i)
  %tobool.not.i208.i = icmp ne i32 %and.i207.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %spec.select.i.i.i)
  %cond.i.i = icmp eq i8 %spec.select.i.i.i, 1
  %or.cond.i.i = select i1 %tobool.not.i208.i, i1 %cond.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end12.i.i, label %while.body.i.i.while.cond.backedge.i.i_crit_edge

while.body.i.i.while.cond.backedge.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge.i.i

if.end12.i.i:                                     ; preds = %while.body.i.i
  %and13.i.i = lshr i32 %call.i.i.i, 8
  %153 = trunc i32 %and13.i.i to i16
  %conv14.i.i = and i16 %153, 4095
  %154 = ptrtoint ptr %ops139 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ops139, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %155, align 4
  %158 = ptrtoint ptr %ctx140 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ctx140, align 8
  %call.i4.i.i = tail call i32 %157(ptr noundef %159, i32 noundef %add.i.i.i) #7
  %add.i5.i.i = add i32 %eromaddr.052.i.i, 8
  %160 = trunc i32 %call.i4.i.i to i8
  %conv.i6.i.i = and i8 %160, 15
  %and2.i7.i.i = and i32 %call.i4.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and2.i7.i.i)
  %cmp.i8.i.i = icmp eq i32 %and2.i7.i.i, 5
  %spec.select.i9.i.i = select i1 %cmp.i8.i.i, i8 5, i8 %conv.i6.i.i
  %and16.i.i = and i32 %call.i4.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and16.i.i)
  %cmp17.not.i.i = icmp eq i32 %and16.i.i, 1
  br i1 %cmp17.not.i.i, label %if.end42.i.i, label %do.end.i.i, !prof !70

do.end.i.i:                                       ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 920, i32 noundef 9, ptr noundef null) #7
  br label %if.end39.i

if.end42.i.i:                                     ; preds = %if.end12.i.i
  %and43.i.i = lshr i32 %call.i4.i.i, 14
  %conv45.i.i = and i32 %and43.i.i, 31
  %and46.i.i = lshr i32 %call.i4.i.i, 19
  %conv48.i.i = and i32 %and46.i.i, 31
  %shr50.i.i = lshr i32 %call.i4.i.i, 24
  %add54.i.i = sub nsw i32 0, %conv48.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv45.i.i, i32 %add54.i.i)
  %cmp55.i.i = icmp ne i32 %conv45.i.i, %add54.i.i
  %161 = freeze i1 %cmp55.i.i
  br i1 %161, label %if.end42.i.i.if.end65.i.i_crit_edge, label %switch.early.test.i.i

if.end42.i.i.if.end65.i.i_crit_edge:              ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i.i

switch.early.test.i.i:                            ; preds = %if.end42.i.i
  %trunc.i.i = trunc i32 %and13.i.i to i12
  %162 = zext i12 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.26)
  switch i12 %trunc.i.i, label %switch.early.test.i.i.while.cond.backedge.i.i_crit_edge [
    i12 -1984, label %switch.early.test.i.i.if.end65.i.i_crit_edge
    i12 -2009, label %switch.early.test.i.i.if.end65.i.i_crit_edge283
  ]

switch.early.test.i.i.if.end65.i.i_crit_edge283:  ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i.i

switch.early.test.i.i.if.end65.i.i_crit_edge:     ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i.i

switch.early.test.i.i.while.cond.backedge.i.i_crit_edge: ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge.i.i

if.end65.i.i:                                     ; preds = %switch.early.test.i.i.if.end65.i.i_crit_edge, %switch.early.test.i.i.if.end65.i.i_crit_edge283, %if.end42.i.i.if.end65.i.i_crit_edge
  %163 = ptrtoint ptr %ops139 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ops139, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 4
  %167 = ptrtoint ptr %ctx140 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ctx140, align 8
  %call.i.i.i209.i = tail call i32 %166(ptr noundef %168, i32 noundef %add.i5.i.i) #7
  %add.i.i.i.i = add i32 %eromaddr.052.i.i, 12
  %169 = trunc i32 %call.i.i.i209.i to i4
  %and2.i.i.i.i = and i32 %call.i.i.i209.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and2.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 5
  %trunc.i.i.i = select i1 %cmp.i.i.i.i, i4 5, i4 %169
  %170 = zext i4 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %170, ptr @__sancov_gen_cov_switch_values.27)
  switch i4 %trunc.i.i.i, label %if.end65.i.i.while.cond.backedge.i.i_crit_edge [
    i4 3, label %if.end65.i.i.if.end8.i.i.i_crit_edge
    i4 5, label %if.then5.i.i.i
  ]

if.end65.i.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i.i

if.end65.i.i.while.cond.backedge.i.i_crit_edge:   ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge.i.i

if.then5.i.i.i:                                   ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then5.i.i.i, %if.end65.i.i.if.end8.i.i.i_crit_edge
  %eromaddr.1.i.i = phi i32 [ %add.i5.i.i, %if.then5.i.i.i ], [ %add.i.i.i.i, %if.end65.i.i.if.end8.i.i.i_crit_edge ]
  %wraptype.0.i.i.i = phi i32 [ 2, %if.then5.i.i.i ], [ 3, %if.end65.i.i.if.end8.i.i.i_crit_edge ]
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.cond75.i.i.i.do.body.i.i.i_crit_edge, %if.end8.i.i.i
  %eromaddr.2.i.i = phi i32 [ %eromaddr.1.i.i, %if.end8.i.i.i ], [ %eromaddr.5.i.i, %do.cond75.i.i.i.do.body.i.i.i_crit_edge ]
  %base.0.i.i = phi i32 [ 0, %if.end8.i.i.i ], [ %base.2.i.i, %do.cond75.i.i.i.do.body.i.i.i_crit_edge ]
  %wrap.0.i.i = phi i32 [ 0, %if.end8.i.i.i ], [ %wrap.1.i.i, %do.cond75.i.i.i.do.body.i.i.i_crit_edge ]
  br label %do.body9.i.i.i

do.body9.i.i.i:                                   ; preds = %do.body9.i.i.i.do.body9.i.i.i_crit_edge, %do.body.i.i.i
  %eromaddr.3.i.i = phi i32 [ %eromaddr.2.i.i, %do.body.i.i.i ], [ %add.i115.i.i.i, %do.body9.i.i.i.do.body9.i.i.i_crit_edge ]
  %171 = ptrtoint ptr %ops139 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ops139, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 4
  %175 = ptrtoint ptr %ctx140 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ctx140, align 8
  %call.i114.i.i.i = tail call i32 %174(ptr noundef %176, i32 noundef %eromaddr.3.i.i) #7
  %add.i115.i.i.i = add i32 %eromaddr.3.i.i, 4
  %177 = trunc i32 %call.i114.i.i.i to i4
  %and2.i117.i.i.i = and i32 %call.i114.i.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and2.i117.i.i.i)
  %cmp.i118.i.i.i = icmp eq i32 %and2.i117.i.i.i, 5
  %trunc134.i.i.i = select i1 %cmp.i118.i.i.i, i4 5, i4 %177
  %178 = zext i4 %trunc134.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values.28)
  switch i4 %trunc134.i.i.i, label %do.body9.i.i.i.do.body9.i.i.i_crit_edge [
    i4 -1, label %do.body9.i.i.i.while.cond.backedge.i.i_crit_edge
    i4 1, label %do.body9.i.i.i.if.end69.i.i_crit_edge
    i4 5, label %if.end28.i.i.i
  ]

do.body9.i.i.i.if.end69.i.i_crit_edge:            ; preds = %do.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69.i.i

do.body9.i.i.i.while.cond.backedge.i.i_crit_edge: ; preds = %do.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge.i.i

do.body9.i.i.i.do.body9.i.i.i_crit_edge:          ; preds = %do.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9.i.i.i

if.end28.i.i.i:                                   ; preds = %do.body9.i.i.i
  %and.i.i.i = and i32 %call.i114.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end28.i.i.i.if.end31.i.i.i_crit_edge, label %if.then29.i.i.i

if.end28.i.i.i.if.end31.i.i.i_crit_edge:          ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i.i.i

if.then29.i.i.i:                                  ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %179 = ptrtoint ptr %ops139 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %ops139, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %180, align 4
  %183 = ptrtoint ptr %ctx140 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ctx140, align 8
  %call.i122.i.i.i = tail call i32 %182(ptr noundef %184, i32 noundef %add.i115.i.i.i) #7
  %add.i123.i.i.i = add i32 %eromaddr.3.i.i, 8
  br label %if.end31.i.i.i

if.end31.i.i.i:                                   ; preds = %if.then29.i.i.i, %if.end28.i.i.i.if.end31.i.i.i_crit_edge
  %eromaddr.4.i.i = phi i32 [ %add.i115.i.i.i, %if.end28.i.i.i.if.end31.i.i.i_crit_edge ], [ %add.i123.i.i.i, %if.then29.i.i.i ]
  %185 = lshr i32 %call.i114.i.i.i, 4
  %conv33.i.i.i = and i32 %185, 3
  %186 = zext i32 %conv33.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %186, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %conv33.i.i.i, label %if.end31.i.i.i.do.cond75.i.i.i_crit_edge [
    i32 3, label %if.then37.i.i.i
    i32 0, label %if.end31.i.i.i.if.end52.i.i.i_crit_edge
    i32 1, label %if.end31.i.i.i.if.end52.i.i.i_crit_edge284
  ]

if.end31.i.i.i.if.end52.i.i.i_crit_edge284:       ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i.i.i

if.end31.i.i.i.if.end52.i.i.i_crit_edge:          ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i.i.i

if.end31.i.i.i.do.cond75.i.i.i_crit_edge:         ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond75.i.i.i

if.then37.i.i.i:                                  ; preds = %if.end31.i.i.i
  %187 = ptrtoint ptr %ops139 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %ops139, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 4
  %191 = ptrtoint ptr %ctx140 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %ctx140, align 8
  %call.i126.i.i.i = tail call i32 %190(ptr noundef %192, i32 noundef %eromaddr.4.i.i) #7
  %add.i127.i.i.i = add i32 %eromaddr.4.i.i, 4
  %and39.i.i.i = and i32 %call.i126.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i.i.i)
  %tobool40.not.i.i.i = icmp eq i32 %and39.i.i.i, 0
  br i1 %tobool40.not.i.i.i, label %if.then37.i.i.i.do.cond75.i.i.i_crit_edge, label %if.then41.i.i.i

if.then37.i.i.i.do.cond75.i.i.i_crit_edge:        ; preds = %if.then37.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond75.i.i.i

if.then41.i.i.i:                                  ; preds = %if.then37.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %193 = ptrtoint ptr %ops139 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %ops139, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %194, align 4
  %197 = ptrtoint ptr %ctx140 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %ctx140, align 8
  %call.i130.i.i.i = tail call i32 %196(ptr noundef %198, i32 noundef %add.i127.i.i.i) #7
  %add.i131.i.i.i = add i32 %eromaddr.4.i.i, 8
  br label %do.cond75.i.i.i

if.end52.i.i.i:                                   ; preds = %if.end31.i.i.i.if.end52.i.i.i_crit_edge, %if.end31.i.i.i.if.end52.i.i.i_crit_edge284
  %199 = lshr i32 %call.i114.i.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %base.0.i.i)
  %cmp56.i.i.i = icmp eq i32 %base.0.i.i, 0
  %200 = and i32 %call.i114.i.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %cmp60.i.i.i = icmp eq i32 %200, 0
  %or.cond.i.i.i = select i1 %cmp56.i.i.i, i1 %cmp60.i.i.i, i1 false
  %and63.i.i.i = and i32 %call.i114.i.i.i, -4096
  %spec.select.i.i = select i1 %or.cond.i.i.i, i32 %and63.i.i.i, i32 %base.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wrap.0.i.i)
  %cmp65.i.i.i = icmp eq i32 %wrap.0.i.i, 0
  %conv68.i.i.i = and i32 %199, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %wraptype.0.i.i.i, i32 %conv68.i.i.i)
  %cmp70.i.i.i = icmp eq i32 %wraptype.0.i.i.i, %conv68.i.i.i
  %or.cond111.i.i.i = select i1 %cmp65.i.i.i, i1 %cmp70.i.i.i, i1 false
  %spec.select40.i.i = select i1 %or.cond111.i.i.i, i32 %and63.i.i.i, i32 %wrap.0.i.i
  br label %do.cond75.i.i.i

do.cond75.i.i.i:                                  ; preds = %if.end52.i.i.i, %if.then41.i.i.i, %if.then37.i.i.i.do.cond75.i.i.i_crit_edge, %if.end31.i.i.i.do.cond75.i.i.i_crit_edge
  %eromaddr.5.i.i = phi i32 [ %eromaddr.4.i.i, %if.end31.i.i.i.do.cond75.i.i.i_crit_edge ], [ %add.i127.i.i.i, %if.then37.i.i.i.do.cond75.i.i.i_crit_edge ], [ %add.i131.i.i.i, %if.then41.i.i.i ], [ %eromaddr.4.i.i, %if.end52.i.i.i ]
  %base.2.i.i = phi i32 [ %base.0.i.i, %if.end31.i.i.i.do.cond75.i.i.i_crit_edge ], [ %base.0.i.i, %if.then37.i.i.i.do.cond75.i.i.i_crit_edge ], [ %base.0.i.i, %if.then41.i.i.i ], [ %spec.select.i.i, %if.end52.i.i.i ]
  %wrap.1.i.i = phi i32 [ %wrap.0.i.i, %if.end31.i.i.i.do.cond75.i.i.i_crit_edge ], [ %wrap.0.i.i, %if.then37.i.i.i.do.cond75.i.i.i_crit_edge ], [ %wrap.0.i.i, %if.then41.i.i.i ], [ %spec.select40.i.i, %if.end52.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %base.2.i.i)
  %cmp76.i.i.i = icmp eq i32 %base.2.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wrap.1.i.i)
  %cmp78.i.i.i = icmp eq i32 %wrap.1.i.i, 0
  %or.cond39.i.i = select i1 %cmp76.i.i.i, i1 true, i1 %cmp78.i.i.i
  br i1 %or.cond39.i.i, label %do.cond75.i.i.i.do.body.i.i.i_crit_edge, label %do.cond75.i.i.i.if.end69.i.i_crit_edge

do.cond75.i.i.i.if.end69.i.i_crit_edge:           ; preds = %do.cond75.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69.i.i

do.cond75.i.i.i.do.body.i.i.i_crit_edge:          ; preds = %do.cond75.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i

if.end69.i.i:                                     ; preds = %do.cond75.i.i.i.if.end69.i.i_crit_edge, %do.body9.i.i.i.if.end69.i.i_crit_edge
  %eromaddr.6.ph.i.i = phi i32 [ %eromaddr.3.i.i, %do.body9.i.i.i.if.end69.i.i_crit_edge ], [ %eromaddr.5.i.i, %do.cond75.i.i.i.if.end69.i.i_crit_edge ]
  %base.4.ph.i.i = phi i32 [ %base.0.i.i, %do.body9.i.i.i.if.end69.i.i_crit_edge ], [ %base.2.i.i, %do.cond75.i.i.i.if.end69.i.i_crit_edge ]
  %wrap.3.ph.i.i = phi i32 [ %wrap.0.i.i, %do.body9.i.i.i.if.end69.i.i_crit_edge ], [ %wrap.1.i.i, %do.cond75.i.i.i.if.end69.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %201 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %201, i32 noundef 3520, i32 noundef 24) #10
  %tobool.not.i10.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i10.i.i, label %if.end69.i.i.if.end39.i_crit_edge, label %if.end.i.i.i

if.end69.i.i.if.end39.i_crit_edge:                ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

if.end.i.i.i:                                     ; preds = %if.end69.i.i
  %202 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %conv14.i.i, ptr %call7.i.i.i.i.i, align 8
  %base3.i.i.i = getelementptr inbounds %struct.brcmf_core, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %203 = ptrtoint ptr %base3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %base.4.ph.i.i, ptr %base3.i.i.i, align 4
  %chip.i.i.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %204 = ptrtoint ptr %chip.i.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %call7.i.i, ptr %chip.i.i.i, align 4
  %wrapbase4.i.i.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %205 = ptrtoint ptr %wrapbase4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %wrap.3.ph.i.i, ptr %wrapbase4.i.i.i, align 8
  %list.i.i.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %206 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %prev.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i.i, ptr noundef %207, ptr noundef %cores) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.i.brcmf_chip_add_core.exit.i.i_crit_edge

if.end.i.i.i.brcmf_chip_add_core.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_add_core.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %208 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %list.i.i.i, ptr %prev.i, align 8
  %209 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %cores, ptr %list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %call7.i.i.i.i.i, i32 0, i32 2, i32 1
  %210 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %207, ptr %prev3.i.i.i.i.i, align 8
  %211 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %211)
  store volatile ptr %list.i.i.i, ptr %207, align 4
  br label %brcmf_chip_add_core.exit.i.i

brcmf_chip_add_core.exit.i.i:                     ; preds = %if.end.i.i.i.i.i, %if.end.i.i.i.brcmf_chip_add_core.exit.i.i_crit_edge
  %cmp.i12.i.i = icmp ugt ptr %call7.i.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i12.i.i, label %brcmf_chip_add_core.exit.i.i.if.end39.i_crit_edge, label %if.end74.i.i

brcmf_chip_add_core.exit.i.i.if.end39.i_crit_edge: ; preds = %brcmf_chip_add_core.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

if.end74.i.i:                                     ; preds = %brcmf_chip_add_core.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %212 = trunc i32 %shr50.i.i to i16
  %rev76.i.i = getelementptr inbounds %struct.brcmf_core, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %213 = ptrtoint ptr %rev76.i.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %212, ptr %rev76.i.i, align 2
  br label %while.cond.backedge.i.i

while.cond.backedge.i.i:                          ; preds = %if.end74.i.i, %do.body9.i.i.i.while.cond.backedge.i.i_crit_edge, %if.end65.i.i.while.cond.backedge.i.i_crit_edge, %switch.early.test.i.i.while.cond.backedge.i.i_crit_edge, %while.body.i.i.while.cond.backedge.i.i_crit_edge
  %eromaddr.0.be.i.i = phi i32 [ %add.i.i.i, %while.body.i.i.while.cond.backedge.i.i_crit_edge ], [ %eromaddr.6.ph.i.i, %if.end74.i.i ], [ %add.i5.i.i, %switch.early.test.i.i.while.cond.backedge.i.i_crit_edge ], [ %add.i5.i.i, %if.end65.i.i.while.cond.backedge.i.i_crit_edge ], [ %eromaddr.3.i.i, %do.body9.i.i.i.while.cond.backedge.i.i_crit_edge ]
  %desc_type.0.be.i.i = phi i8 [ %spec.select.i.i.i, %while.body.i.i.while.cond.backedge.i.i_crit_edge ], [ %spec.select.i9.i.i, %if.end74.i.i ], [ %spec.select.i9.i.i, %switch.early.test.i.i.while.cond.backedge.i.i_crit_edge ], [ %spec.select.i9.i.i, %if.end65.i.i.while.cond.backedge.i.i_crit_edge ], [ %spec.select.i9.i.i, %do.body9.i.i.i.while.cond.backedge.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq i8 %desc_type.0.be.i.i, 15
  br i1 %cmp.not.i.i, label %while.cond.backedge.i.i.if.end39.i_crit_edge, label %while.cond.backedge.i.i.while.body.i.i_crit_edge

while.cond.backedge.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.cond.backedge.i.i.if.end39.i_crit_edge:     ; preds = %while.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

do.body35.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_chip_recognition, ptr noundef nonnull @.str.15, i32 noundef %shr5.i) #7
  br label %fail

if.end39.i:                                       ; preds = %while.cond.backedge.i.i.if.end39.i_crit_edge, %brcmf_chip_add_core.exit.i.i.if.end39.i_crit_edge, %if.end69.i.i.if.end39.i_crit_edge, %do.end.i.i, %brcmf_chip_add_core.exit192.i
  %214 = ptrtoint ptr %cores to i32
  call void @__asan_load4_noabort(i32 %214)
  %.pn48.i.i = load ptr, ptr %cores, align 4
  %cmp.not49.i.i = icmp eq ptr %.pn48.i.i, %cores
  br i1 %cmp.not49.i.i, label %if.end39.i.brcmf_chip_cores_check.exit.i_crit_edge, label %if.end39.i.do.body.i.i_crit_edge

if.end39.i.do.body.i.i_crit_edge:                 ; preds = %if.end39.i
  br label %do.body.i.i

if.end39.i.brcmf_chip_cores_check.exit.i_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_cores_check.exit.i

do.body.i.i:                                      ; preds = %for.inc.i.i.do.body.i.i_crit_edge, %if.end39.i.do.body.i.i_crit_edge
  %.pn54.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.do.body.i.i_crit_edge ], [ %.pn48.i.i, %if.end39.i.do.body.i.i_crit_edge ]
  %need_socram.0.off053.i.i = phi i1 [ %need_socram.1.off0.i.i, %for.inc.i.i.do.body.i.i_crit_edge ], [ false, %if.end39.i.do.body.i.i_crit_edge ]
  %has_socram.0.off052.i.i = phi i1 [ %has_socram.1.off0.i.i, %for.inc.i.i.do.body.i.i_crit_edge ], [ false, %if.end39.i.do.body.i.i_crit_edge ]
  %idx.051.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.do.body.i.i_crit_edge ], [ 1, %if.end39.i.do.body.i.i_crit_edge ]
  %cpu_found.0.off050.i.i = phi i1 [ %cpu_found.1.off0.i.i, %for.inc.i.i.do.body.i.i_crit_edge ], [ false, %if.end39.i.do.body.i.i_crit_edge ]
  %core.0.i.i = getelementptr i8, ptr %.pn54.i.i, i32 -12
  %inc.i.i = add i32 %idx.051.i.i, 1
  %215 = ptrtoint ptr %core.0.i.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %core.0.i.i, align 4
  %conv.i211.i = zext i16 %216 to i32
  %rev.i212.i = getelementptr i8, ptr %.pn54.i.i, i32 -10
  %217 = ptrtoint ptr %rev.i212.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %rev.i212.i, align 2
  %conv3.i.i = zext i16 %218 to i32
  %base.i213.i = getelementptr i8, ptr %.pn54.i.i, i32 -8
  %219 = ptrtoint ptr %base.i213.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %base.i213.i, align 4
  %wrapbase.i.i = getelementptr i8, ptr %.pn54.i.i, i32 -4
  %221 = ptrtoint ptr %wrapbase.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %wrapbase.i.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_chip_cores_check, ptr noundef nonnull @.str.18, i32 noundef %idx.051.i.i, i32 noundef %conv.i211.i, i32 noundef %conv3.i.i, i32 noundef %220, i32 noundef %222) #7
  %223 = ptrtoint ptr %core.0.i.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %core.0.i.i, align 4
  %225 = zext i16 %224 to i64
  call void @__sanitizer_cov_trace_switch(i64 %225, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %224, label %do.body.i.i.for.inc.i.i_crit_edge [
    i16 2090, label %sw.bb.i.i
    i16 2062, label %sw.bb8.i.i
    i16 2110, label %sw.bb9.i.i
    i16 2119, label %sw.bb10.i.i
  ]

do.body.i.i.for.inc.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

sw.bb.i.i:                                        ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

sw.bb8.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

sw.bb9.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

sw.bb10.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %sw.bb10.i.i, %sw.bb9.i.i, %sw.bb8.i.i, %sw.bb.i.i, %do.body.i.i.for.inc.i.i_crit_edge
  %cpu_found.1.off0.i.i = phi i1 [ %cpu_found.0.off050.i.i, %do.body.i.i.for.inc.i.i_crit_edge ], [ true, %sw.bb10.i.i ], [ true, %sw.bb9.i.i ], [ %cpu_found.0.off050.i.i, %sw.bb8.i.i ], [ true, %sw.bb.i.i ]
  %has_socram.1.off0.i.i = phi i1 [ %has_socram.0.off052.i.i, %do.body.i.i.for.inc.i.i_crit_edge ], [ %has_socram.0.off052.i.i, %sw.bb10.i.i ], [ %has_socram.0.off052.i.i, %sw.bb9.i.i ], [ true, %sw.bb8.i.i ], [ %has_socram.0.off052.i.i, %sw.bb.i.i ]
  %need_socram.1.off0.i.i = phi i1 [ %need_socram.0.off053.i.i, %do.body.i.i.for.inc.i.i_crit_edge ], [ %need_socram.0.off053.i.i, %sw.bb10.i.i ], [ %need_socram.0.off053.i.i, %sw.bb9.i.i ], [ %need_socram.0.off053.i.i, %sw.bb8.i.i ], [ true, %sw.bb.i.i ]
  %226 = ptrtoint ptr %.pn54.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %.pn.i.i = load ptr, ptr %.pn54.i.i, align 4
  %cmp.not.i214.i = icmp eq ptr %.pn.i.i, %cores
  br i1 %cmp.not.i214.i, label %for.end.i.i, label %for.inc.i.i.do.body.i.i_crit_edge

for.inc.i.i.do.body.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  br i1 %cpu_found.1.off0.i.i, label %if.end.i215.i, label %for.end.i.i.brcmf_chip_cores_check.exit.i_crit_edge

for.end.i.i.brcmf_chip_cores_check.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_cores_check.exit.i

if.end.i215.i:                                    ; preds = %for.end.i.i
  %need_socram.0.off0.not.i.i = xor i1 %need_socram.1.off0.i.i, true
  %brmerge.i.i = select i1 %need_socram.0.off0.not.i.i, i1 true, i1 %has_socram.1.off0.i.i
  br i1 %brmerge.i.i, label %if.end42.i, label %if.end.i215.i.brcmf_chip_cores_check.exit.i_crit_edge

if.end.i215.i.brcmf_chip_cores_check.exit.i_crit_edge: ; preds = %if.end.i215.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_cores_check.exit.i

brcmf_chip_cores_check.exit.i:                    ; preds = %if.end.i215.i.brcmf_chip_cores_check.exit.i_crit_edge, %for.end.i.i.brcmf_chip_cores_check.exit.i_crit_edge, %if.end39.i.brcmf_chip_cores_check.exit.i_crit_edge
  %.str.20.sink.i.i = phi ptr [ @.str.19, %if.end39.i.brcmf_chip_cores_check.exit.i_crit_edge ], [ @.str.19, %for.end.i.i.brcmf_chip_cores_check.exit.i_crit_edge ], [ @.str.20, %if.end.i215.i.brcmf_chip_cores_check.exit.i_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ -6, %if.end39.i.brcmf_chip_cores_check.exit.i_crit_edge ], [ -6, %for.end.i.i.brcmf_chip_cores_check.exit.i_crit_edge ], [ -19, %if.end.i215.i.brcmf_chip_cores_check.exit.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_chip_cores_check, ptr noundef nonnull %.str.20.sink.i.i) #7
  br label %fail

if.end42.i:                                       ; preds = %if.end.i215.i
  tail call void @brcmf_chip_set_passive(ptr noundef %call7.i.i) #7
  %227 = ptrtoint ptr %ops139 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %ops139, align 4
  %reset.i = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %228, i32 0, i32 3
  %229 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %reset.i, align 4
  %tobool45.not.i = icmp eq ptr %230, null
  br i1 %tobool45.not.i, label %if.end42.i.brcmf_chip_recognition.exit_crit_edge, label %if.then46.i

if.end42.i.brcmf_chip_recognition.exit_crit_edge: ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_recognition.exit

if.then46.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  %231 = ptrtoint ptr %ctx140 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %ctx140, align 8
  %call51.i = tail call i32 %230(ptr noundef %232, ptr noundef %call7.i.i) #7
  tail call void @brcmf_chip_set_passive(ptr noundef %call7.i.i) #7
  br label %brcmf_chip_recognition.exit

brcmf_chip_recognition.exit:                      ; preds = %if.then46.i, %if.end42.i.brcmf_chip_recognition.exit_crit_edge
  %call55.i = tail call i32 @brcmf_chip_get_raminfo(ptr noundef %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %cmp148 = icmp slt i32 %call55.i, 0
  br i1 %cmp148, label %brcmf_chip_recognition.exit.fail_crit_edge, label %if.end150

brcmf_chip_recognition.exit.fail_crit_edge:       ; preds = %brcmf_chip_recognition.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end150:                                        ; preds = %brcmf_chip_recognition.exit
  %233 = ptrtoint ptr %cores to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %cores, align 4
  %base3.i = getelementptr i8, ptr %234, i32 -8
  %235 = ptrtoint ptr %base3.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %base3.i, align 4
  %237 = ptrtoint ptr %ops139 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %ops139, align 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %238, align 4
  %241 = ptrtoint ptr %ctx140 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %ctx140, align 8
  %add.i = add i32 %236, 4
  %call.i187 = tail call i32 %240(ptr noundef %242, i32 noundef %add.i) #7
  %cc_caps.i = getelementptr inbounds %struct.brcmf_chip, ptr %call7.i.i, i32 0, i32 3
  %243 = ptrtoint ptr %cc_caps.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %call.i187, ptr %cc_caps.i, align 4
  %244 = ptrtoint ptr %ops139 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %ops139, align 4
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %245, align 4
  %248 = ptrtoint ptr %ctx140 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %ctx140, align 8
  %add7.i = add i32 %236, 172
  %call8.i = tail call i32 %247(ptr noundef %249, i32 noundef %add7.i) #7
  %cc_caps_ext.i = getelementptr inbounds %struct.brcmf_chip, ptr %call7.i.i, i32 0, i32 4
  %250 = ptrtoint ptr %cc_caps_ext.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %call8.i, ptr %cc_caps_ext.i, align 8
  %251 = ptrtoint ptr %cores to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %cores, align 4
  %add.ptr3.i.i.i = getelementptr i8, ptr %252, i32 -12
  %tobool.not.i.i.i188 = icmp eq ptr %add.ptr3.i.i.i, null
  br i1 %tobool.not.i.i.i188, label %if.end150.do.end.i.i.i_crit_edge, label %lor.rhs.i.i.i

if.end150.do.end.i.i.i_crit_edge:                 ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i.i

lor.rhs.i.i.i:                                    ; preds = %if.end150
  %253 = ptrtoint ptr %add.ptr3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %add.ptr3.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %254)
  %cmp.not.i.i.i = icmp eq i16 %254, 2048
  br i1 %cmp.not.i.i.i, label %lor.rhs.i.i.i.brcmf_chip_get_chipcommon.exit.i.i_crit_edge, label %lor.rhs.i.i.i.do.end.i.i.i_crit_edge, !prof !70

lor.rhs.i.i.i.do.end.i.i.i_crit_edge:             ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i.i

lor.rhs.i.i.i.brcmf_chip_get_chipcommon.exit.i.i_crit_edge: ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_get_chipcommon.exit.i.i

do.end.i.i.i:                                     ; preds = %lor.rhs.i.i.i.do.end.i.i.i_crit_edge, %if.end150.do.end.i.i.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1197, i32 noundef 9, ptr noundef null) #7
  br label %for.cond.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge, %do.end.i.i.i
  %.pn.in.i.i.i.i = phi ptr [ %cores, %do.end.i.i.i ], [ %.pn.i.i.i.i, %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge ]
  %255 = ptrtoint ptr %.pn.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %.pn.i.i.i.i = load ptr, ptr %.pn.in.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %cores
  br i1 %cmp.not.i.i.i.i, label %for.cond.i.i.i.i.brcmf_chip_get_chipcommon.exit.i.i_crit_edge, label %for.body.i.i.i.i

for.cond.i.i.i.i.brcmf_chip_get_chipcommon.exit.i.i_crit_edge: ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_get_chipcommon.exit.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i
  %core.0.i.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i, i32 -12
  %256 = ptrtoint ptr %core.0.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %core.0.i.i.i.i, align 4
  %cmp7.i.i.i.i = icmp eq i16 %257, 2048
  br i1 %cmp7.i.i.i.i, label %brcmf_chip_get_chipcommon.exit.i.i.loopexit.split.loop.exit, label %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge

for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.i.i

brcmf_chip_get_chipcommon.exit.i.i.loopexit.split.loop.exit: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %core.0.i.i.i.i.le = getelementptr i8, ptr %.pn.i.i.i.i, i32 -12
  br label %brcmf_chip_get_chipcommon.exit.i.i

brcmf_chip_get_chipcommon.exit.i.i:               ; preds = %brcmf_chip_get_chipcommon.exit.i.i.loopexit.split.loop.exit, %for.cond.i.i.i.i.brcmf_chip_get_chipcommon.exit.i.i_crit_edge, %lor.rhs.i.i.i.brcmf_chip_get_chipcommon.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %add.ptr3.i.i.i, %lor.rhs.i.i.i.brcmf_chip_get_chipcommon.exit.i.i_crit_edge ], [ %core.0.i.i.i.i.le, %brcmf_chip_get_chipcommon.exit.i.i.loopexit.split.loop.exit ], [ null, %for.cond.i.i.i.i.brcmf_chip_get_chipcommon.exit.i.i_crit_edge ]
  %rev.i.i189 = getelementptr inbounds %struct.brcmf_core, ptr %retval.0.i.i.i, i32 0, i32 1
  %258 = ptrtoint ptr %rev.i.i189 to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %rev.i.i189, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %259)
  %cmp.i.i = icmp ugt i16 %259, 34
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %brcmf_chip_get_chipcommon.exit.i.i.if.end5.i.i_crit_edge

brcmf_chip_get_chipcommon.exit.i.i.if.end5.i.i_crit_edge: ; preds = %brcmf_chip_get_chipcommon.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i

land.lhs.true.i.i:                                ; preds = %brcmf_chip_get_chipcommon.exit.i.i
  %260 = ptrtoint ptr %cc_caps_ext.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %cc_caps_ext.i, align 8
  %and.i.i190 = and i32 %261, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i190)
  %tobool.not.i.i191 = icmp eq i32 %and.i.i190, 0
  br i1 %tobool.not.i.i191, label %land.lhs.true.i.i.if.end5.i.i_crit_edge, label %land.lhs.true.i.i.for.cond.i.i.i_crit_edge

land.lhs.true.i.i.for.cond.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  br label %for.cond.i.i.i

land.lhs.true.i.i.if.end5.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %land.lhs.true.i.i.for.cond.i.i.i_crit_edge
  %.pn.in.i.i.i = phi ptr [ %.pn.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ %cores, %land.lhs.true.i.i.for.cond.i.i.i_crit_edge ]
  %262 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 4
  %cmp.not.i12.i.i = icmp eq ptr %.pn.i.i.i, %cores
  br i1 %cmp.not.i12.i.i, label %for.cond.i.i.i.if.end5.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.if.end5.i.i_crit_edge:             ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %core.0.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -12
  %263 = ptrtoint ptr %core.0.i.i.i to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %core.0.i.i.i, align 4
  %cmp7.i.i.i = icmp eq i16 %264, 2087
  br i1 %cmp7.i.i.i, label %brcmf_chip_get_core.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.i

brcmf_chip_get_core.exit.i.i:                     ; preds = %for.body.i.i.i
  %core.0.i.i.i.le = getelementptr i8, ptr %.pn.i.i.i, i32 -12
  %tobool3.not.i.i = icmp eq ptr %core.0.i.i.i.le, null
  br i1 %tobool3.not.i.i, label %brcmf_chip_get_core.exit.i.i.if.end5.i.i_crit_edge, label %brcmf_chip_get_core.exit.i.i.brcmf_chip_get_pmu.exit.i_crit_edge

brcmf_chip_get_core.exit.i.i.brcmf_chip_get_pmu.exit.i_crit_edge: ; preds = %brcmf_chip_get_core.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_get_pmu.exit.i

brcmf_chip_get_core.exit.i.i.if.end5.i.i_crit_edge: ; preds = %brcmf_chip_get_core.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %brcmf_chip_get_core.exit.i.i.if.end5.i.i_crit_edge, %for.cond.i.i.i.if.end5.i.i_crit_edge, %land.lhs.true.i.i.if.end5.i.i_crit_edge, %brcmf_chip_get_chipcommon.exit.i.i.if.end5.i.i_crit_edge
  br label %brcmf_chip_get_pmu.exit.i

brcmf_chip_get_pmu.exit.i:                        ; preds = %if.end5.i.i, %brcmf_chip_get_core.exit.i.i.brcmf_chip_get_pmu.exit.i_crit_edge
  %retval.0.i.i192 = phi ptr [ %retval.0.i.i.i, %if.end5.i.i ], [ %core.0.i.i.i.le, %brcmf_chip_get_core.exit.i.i.brcmf_chip_get_pmu.exit.i_crit_edge ]
  %265 = ptrtoint ptr %cc_caps.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %cc_caps.i, align 4
  %and.i193 = and i32 %266, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i193)
  %tobool.not.i = icmp eq i32 %and.i193, 0
  br i1 %tobool.not.i, label %brcmf_chip_get_pmu.exit.i.do.body.i_crit_edge, label %if.then.i194

brcmf_chip_get_pmu.exit.i.do.body.i_crit_edge:    ; preds = %brcmf_chip_get_pmu.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then.i194:                                     ; preds = %brcmf_chip_get_pmu.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %267 = ptrtoint ptr %ops139 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %ops139, align 4
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %268, align 4
  %271 = ptrtoint ptr %ctx140 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %ctx140, align 8
  %base14.i = getelementptr inbounds %struct.brcmf_core, ptr %retval.0.i.i192, i32 0, i32 2
  %273 = ptrtoint ptr %base14.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %base14.i, align 4
  %add15.i = add i32 %274, 1540
  %call16.i = tail call i32 %270(ptr noundef %272, i32 noundef %add15.i) #7
  %and17.i = and i32 %call16.i, 255
  %pmurev.i = getelementptr inbounds %struct.brcmf_chip, ptr %call7.i.i, i32 0, i32 6
  %275 = ptrtoint ptr %pmurev.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %and17.i, ptr %pmurev.i, align 8
  %pmucaps.i = getelementptr inbounds %struct.brcmf_chip, ptr %call7.i.i, i32 0, i32 5
  %276 = ptrtoint ptr %pmucaps.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %call16.i, ptr %pmucaps.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i194, %brcmf_chip_get_pmu.exit.i.do.body.i_crit_edge
  %rev.i = getelementptr i8, ptr %234, i32 -10
  %277 = ptrtoint ptr %rev.i to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %rev.i, align 2
  %conv.i = zext i16 %278 to i32
  %pmurev19.i = getelementptr inbounds %struct.brcmf_chip, ptr %call7.i.i, i32 0, i32 6
  %279 = ptrtoint ptr %pmurev19.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %pmurev19.i, align 8
  %pmucaps20.i = getelementptr inbounds %struct.brcmf_chip, ptr %call7.i.i, i32 0, i32 5
  %281 = ptrtoint ptr %pmucaps20.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %pmucaps20.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_chip_setup, ptr noundef nonnull @.str.21, i32 noundef %conv.i, i32 noundef %280, i32 noundef %282) #7
  %283 = ptrtoint ptr %ops139 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %ops139, align 4
  %setup.i = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %284, i32 0, i32 4
  %285 = ptrtoint ptr %setup.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %setup.i, align 4
  %tobool22.not.i = icmp eq ptr %286, null
  br i1 %tobool22.not.i, label %do.body.i.cleanup_crit_edge, label %brcmf_chip_setup.exit

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

brcmf_chip_setup.exit:                            ; preds = %do.body.i
  %287 = ptrtoint ptr %ctx140 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %ctx140, align 8
  %call27.i = tail call i32 %286(ptr noundef %288, ptr noundef %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp152 = icmp slt i32 %call27.i, 0
  br i1 %cmp152, label %brcmf_chip_setup.exit.fail_crit_edge, label %brcmf_chip_setup.exit.cleanup_crit_edge

brcmf_chip_setup.exit.cleanup_crit_edge:          ; preds = %brcmf_chip_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

brcmf_chip_setup.exit.fail_crit_edge:             ; preds = %brcmf_chip_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

fail:                                             ; preds = %brcmf_chip_setup.exit.fail_crit_edge, %brcmf_chip_recognition.exit.fail_crit_edge, %brcmf_chip_cores_check.exit.i, %do.body35.i, %do.body20.i, %if.end138.fail_crit_edge
  %err.4 = phi i32 [ %call143, %if.end138.fail_crit_edge ], [ %call55.i, %brcmf_chip_recognition.exit.fail_crit_edge ], [ %call27.i, %brcmf_chip_setup.exit.fail_crit_edge ], [ %retval.0.ph.i.i, %brcmf_chip_cores_check.exit.i ], [ -19, %do.body35.i ], [ -19, %do.body20.i ]
  %289 = ptrtoint ptr %cores to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %cores, align 4
  %cmp.not24.i = icmp eq ptr %290, %cores
  br i1 %cmp.not24.i, label %fail.brcmf_chip_detach.exit_crit_edge, label %fail.for.body.i_crit_edge

fail.for.body.i_crit_edge:                        ; preds = %fail
  br label %for.body.i

fail.brcmf_chip_detach.exit_crit_edge:            ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_detach.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %fail.for.body.i_crit_edge
  %.pn.in25.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %290, %fail.for.body.i_crit_edge ]
  %core.0.i = getelementptr i8, ptr %.pn.in25.i, i32 -12
  %291 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %.pn.i = load ptr, ptr %.pn.in25.i, align 4
  %call.i.i.i196 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25.i) #7
  br i1 %call.i.i.i196, label %if.end.i.i.i198, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i198:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i197 = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %292 = ptrtoint ptr %prev.i.i.i197 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %prev.i.i.i197, align 4
  %294 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %.pn.in25.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %295, i32 0, i32 1
  %296 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %293, ptr %prev1.i.i.i.i, align 4
  %297 = ptrtoint ptr %293 to i32
  call void @__asan_store4_noabort(i32 %297)
  store volatile ptr %295, ptr %293, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i198, %for.body.i.list_del.exit.i_crit_edge
  %298 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %299 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %core.0.i) #7
  %cmp.not.i = icmp eq ptr %.pn.i, %cores
  br i1 %cmp.not.i, label %list_del.exit.i.brcmf_chip_detach.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

list_del.exit.i.brcmf_chip_detach.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_detach.exit

brcmf_chip_detach.exit:                           ; preds = %list_del.exit.i.brcmf_chip_detach.exit_crit_edge, %fail.brcmf_chip_detach.exit_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i) #7
  %300 = inttoptr i32 %err.4 to ptr
  br label %cleanup

cleanup:                                          ; preds = %brcmf_chip_detach.exit, %brcmf_chip_setup.exit.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %if.end133.cleanup_crit_edge, %if.end121.cleanup_crit_edge, %if.end121.thread
  %retval.0 = phi ptr [ %300, %brcmf_chip_detach.exit ], [ %call7.i.i, %brcmf_chip_setup.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end121.thread ], [ inttoptr (i32 -22 to ptr), %if.end121.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end133.cleanup_crit_edge ], [ %call7.i.i, %do.body.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_chip_detach(ptr noundef %pub) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cores = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 3
  %0 = ptrtoint ptr %cores to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cores, align 4
  %cmp.not24 = icmp eq ptr %1, %cores
  br i1 %cmp.not24, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in25 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %core.0 = getelementptr i8, ptr %.pn.in25, i32 -12
  %2 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in25, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in25, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %core.0) #7
  %cmp.not = icmp eq ptr %.pn, %cores
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %pub) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @brcmf_chip_get_d11core(ptr noundef readonly %pub, i8 noundef zeroext %unit) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cores = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 3
  %0 = ptrtoint ptr %cores to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn24 = load ptr, ptr %cores, align 4
  %cmp.not26 = icmp eq ptr %.pn24, %cores
  br i1 %cmp.not26, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn28 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn24, %entry.for.body_crit_edge ]
  %unit.addr.027 = phi i8 [ %unit.addr.1, %for.inc.for.body_crit_edge ], [ %unit, %entry.for.body_crit_edge ]
  %core.029 = getelementptr i8, ptr %.pn28, i32 -12
  %1 = ptrtoint ptr %core.029 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %core.029, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2066, i16 %2)
  %cmp6 = icmp eq i16 %2, 2066
  br i1 %cmp6, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  %dec = add i8 %unit.addr.027, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %unit.addr.027)
  %cmp9 = icmp eq i8 %unit.addr.027, 0
  br i1 %cmp9, label %cleanup.loopexit.split.loop.exit31, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %unit.addr.1 = phi i8 [ %dec, %if.then.for.inc_crit_edge ], [ %unit.addr.027, %for.body.for.inc_crit_edge ]
  %3 = ptrtoint ptr %.pn28 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn28, align 4
  %cmp.not = icmp eq ptr %.pn, %cores
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.loopexit.split.loop.exit31:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %core.029.le = getelementptr i8, ptr %.pn28, i32 -12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit31, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %core.029.le, %cleanup.loopexit.split.loop.exit31 ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @brcmf_chip_get_chipcommon(ptr noundef readonly %pub) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cores = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 3
  %0 = ptrtoint ptr %cores to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cores, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 -12
  %tobool.not = icmp eq ptr %add.ptr3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %2 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %3)
  %cmp.not = icmp eq i16 %3, 2048
  br i1 %cmp.not, label %lor.rhs.cleanup_crit_edge, label %lor.rhs.do.end_crit_edge, !prof !70

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1197, i32 noundef 9, ptr noundef null) #7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end
  %.pn.in.i = phi ptr [ %cores, %do.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %cores
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %core.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %5 = ptrtoint ptr %core.0.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %core.0.i, align 4
  %cmp7.i = icmp eq i16 %6, 2048
  br i1 %cmp7.i, label %cleanup.loopexit.split.loop.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

cleanup.loopexit.split.loop.exit:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %core.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %for.cond.i.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr3, %lor.rhs.cleanup_crit_edge ], [ %core.0.i.le, %cleanup.loopexit.split.loop.exit ], [ null, %for.cond.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @brcmf_chip_get_pmu(ptr noundef readonly %pub) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cores.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 3
  %0 = ptrtoint ptr %cores.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cores.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %1, i32 -12
  %tobool.not.i = icmp eq ptr %add.ptr3.i, null
  br i1 %tobool.not.i, label %entry.do.end.i_crit_edge, label %lor.rhs.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.rhs.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %3)
  %cmp.not.i = icmp eq i16 %3, 2048
  br i1 %cmp.not.i, label %lor.rhs.i.brcmf_chip_get_chipcommon.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !70

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.rhs.i.brcmf_chip_get_chipcommon.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_get_chipcommon.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1197, i32 noundef 9, ptr noundef null) #7
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %do.end.i
  %.pn.in.i.i = phi ptr [ %cores.i, %do.end.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %cores.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.brcmf_chip_get_chipcommon.exit_crit_edge, label %for.body.i.i

for.cond.i.i.brcmf_chip_get_chipcommon.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_get_chipcommon.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %core.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -12
  %5 = ptrtoint ptr %core.0.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %core.0.i.i, align 4
  %cmp7.i.i = icmp eq i16 %6, 2048
  br i1 %cmp7.i.i, label %brcmf_chip_get_chipcommon.exit.loopexit.split.loop.exit, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

brcmf_chip_get_chipcommon.exit.loopexit.split.loop.exit: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %core.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -12
  br label %brcmf_chip_get_chipcommon.exit

brcmf_chip_get_chipcommon.exit:                   ; preds = %brcmf_chip_get_chipcommon.exit.loopexit.split.loop.exit, %for.cond.i.i.brcmf_chip_get_chipcommon.exit_crit_edge, %lor.rhs.i.brcmf_chip_get_chipcommon.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr3.i, %lor.rhs.i.brcmf_chip_get_chipcommon.exit_crit_edge ], [ %core.0.i.i.le, %brcmf_chip_get_chipcommon.exit.loopexit.split.loop.exit ], [ null, %for.cond.i.i.brcmf_chip_get_chipcommon.exit_crit_edge ]
  %rev = getelementptr inbounds %struct.brcmf_core, ptr %retval.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %rev to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %8)
  %cmp = icmp ugt i16 %8, 34
  br i1 %cmp, label %land.lhs.true, label %brcmf_chip_get_chipcommon.exit.if.end5_crit_edge

brcmf_chip_get_chipcommon.exit.if.end5_crit_edge: ; preds = %brcmf_chip_get_chipcommon.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

land.lhs.true:                                    ; preds = %brcmf_chip_get_chipcommon.exit
  %cc_caps_ext = getelementptr inbounds %struct.brcmf_chip, ptr %pub, i32 0, i32 4
  %9 = ptrtoint ptr %cc_caps_ext to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cc_caps_ext, align 4
  %and = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.for.cond.i_crit_edge

land.lhs.true.for.cond.i_crit_edge:               ; preds = %land.lhs.true
  br label %for.cond.i

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %land.lhs.true.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ %cores.i, %land.lhs.true.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i12 = icmp eq ptr %.pn.i, %cores.i
  br i1 %cmp.not.i12, label %for.cond.i.if.end5_crit_edge, label %for.body.i

for.cond.i.if.end5_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.body.i:                                       ; preds = %for.cond.i
  %core.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %12 = ptrtoint ptr %core.0.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %core.0.i, align 4
  %cmp7.i = icmp eq i16 %13, 2087
  br i1 %cmp7.i, label %brcmf_chip_get_core.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

brcmf_chip_get_core.exit:                         ; preds = %for.body.i
  %core.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool3.not = icmp eq ptr %core.0.i.le, null
  br i1 %tobool3.not, label %brcmf_chip_get_core.exit.if.end5_crit_edge, label %brcmf_chip_get_core.exit.cleanup_crit_edge

brcmf_chip_get_core.exit.cleanup_crit_edge:       ; preds = %brcmf_chip_get_core.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

brcmf_chip_get_core.exit.if.end5_crit_edge:       ; preds = %brcmf_chip_get_core.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %brcmf_chip_get_core.exit.if.end5_crit_edge, %for.cond.i.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %brcmf_chip_get_chipcommon.exit.if.end5_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %brcmf_chip_get_core.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %if.end5 ], [ %core.0.i.le, %brcmf_chip_get_core.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @brcmf_chip_iscoreup(ptr noundef %pub) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.brcmf_core_priv, ptr %pub, i32 0, i32 3
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %iscoreup = getelementptr inbounds %struct.brcmf_chip_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %iscoreup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iscoreup, align 4
  %call = tail call zeroext i1 %3(ptr noundef %pub) #7
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_chip_coredisable(ptr noundef %pub, i32 noundef %prereset, i32 noundef %reset) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.brcmf_core_priv, ptr %pub, i32 0, i32 3
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %coredisable = getelementptr inbounds %struct.brcmf_chip_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %coredisable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %coredisable, align 4
  tail call void %3(ptr noundef %pub, i32 noundef %prereset, i32 noundef %reset) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_chip_resetcore(ptr noundef %pub, i32 noundef %prereset, i32 noundef %reset, i32 noundef %postreset) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.brcmf_core_priv, ptr %pub, i32 0, i32 3
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %resetcore = getelementptr inbounds %struct.brcmf_chip_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %resetcore to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resetcore, align 4
  tail call void %3(ptr noundef %pub, i32 noundef %prereset, i32 noundef %reset, i32 noundef %postreset) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_chip_set_passive(ptr noundef readonly %pub) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_chip_set_passive, ptr noundef nonnull @.str.9) #7
  %cores.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %cores.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %cores.i
  br i1 %cmp.not.i, label %for.cond.i.for.cond.i21.preheader_crit_edge, label %for.body.i

for.cond.i.for.cond.i21.preheader_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i21.preheader

for.body.i:                                       ; preds = %for.cond.i
  %core.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %1 = ptrtoint ptr %core.0.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %core.0.i, align 4
  %cmp7.i = icmp eq i16 %2, 2110
  br i1 %cmp7.i, label %brcmf_chip_get_core.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

brcmf_chip_get_core.exit:                         ; preds = %for.body.i
  %core.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool.not = icmp eq ptr %core.0.i.le, null
  br i1 %tobool.not, label %brcmf_chip_get_core.exit.for.cond.i21.preheader_crit_edge, label %brcmf_chip_get_core.exit.for.cond.i.i.i_crit_edge

brcmf_chip_get_core.exit.for.cond.i.i.i_crit_edge: ; preds = %brcmf_chip_get_core.exit
  br label %for.cond.i.i.i

brcmf_chip_get_core.exit.for.cond.i21.preheader_crit_edge: ; preds = %brcmf_chip_get_core.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i21.preheader

for.cond.i21.preheader:                           ; preds = %brcmf_chip_get_core.exit.for.cond.i21.preheader_crit_edge, %for.cond.i.for.cond.i21.preheader_crit_edge
  br label %for.cond.i21

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %brcmf_chip_get_core.exit.for.cond.i.i.i_crit_edge
  %.pn.in.i.i.i = phi ptr [ %.pn.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ %cores.i, %brcmf_chip_get_core.exit.for.cond.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %cores.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.for.cond.i.i.preheader_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.for.cond.i.i.preheader_crit_edge:  ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.preheader

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %core.0.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -12
  %4 = ptrtoint ptr %core.0.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %core.0.i.i.i, align 4
  %cmp7.i.i.i = icmp eq i16 %5, 2110
  br i1 %cmp7.i.i.i, label %brcmf_chip_get_core.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.i

brcmf_chip_get_core.exit.i.i:                     ; preds = %for.body.i.i.i
  %core.0.i.i.i.le = getelementptr i8, ptr %.pn.i.i.i, i32 -12
  %tobool.not.i.i = icmp eq ptr %core.0.i.i.i.le, null
  br i1 %tobool.not.i.i, label %brcmf_chip_get_core.exit.i.i.for.cond.i.i.preheader_crit_edge, label %if.end.i.i

brcmf_chip_get_core.exit.i.i.for.cond.i.i.preheader_crit_edge: ; preds = %brcmf_chip_get_core.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.preheader

if.end.i.i:                                       ; preds = %brcmf_chip_get_core.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %ops.i.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 1
  %6 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %ctx.i.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 2
  %10 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx.i.i, align 4
  %wrapbase.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -4
  %12 = ptrtoint ptr %wrapbase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wrapbase.i.i, align 4
  %add.i.i = add i32 %13, 1032
  %call2.i.i = tail call i32 %9(ptr noundef %11, i32 noundef %add.i.i) #7
  %and.i.i = and i32 %call2.i.i, 32
  %chip.i14.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 8
  %14 = ptrtoint ptr %chip.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip.i14.i.i, align 4
  %resetcore.i.i.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %resetcore.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %resetcore.i.i.i, align 4
  tail call void %17(ptr noundef nonnull %core.0.i.i.i.le, i32 noundef %and.i.i, i32 noundef 32, i32 noundef 32) #7
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %if.end.i.i, %brcmf_chip_get_core.exit.i.i.for.cond.i.i.preheader_crit_edge, %for.cond.i.i.i.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %cores.i, %for.cond.i.i.preheader ]
  %18 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %cores.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.brcmf_chip_cr4_set_passive.exit_crit_edge, label %for.body.i.i

for.cond.i.i.brcmf_chip_cr4_set_passive.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_cr4_set_passive.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %core.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -12
  %19 = ptrtoint ptr %core.0.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %core.0.i.i, align 4
  %cmp7.i.i = icmp eq i16 %20, 2066
  br i1 %cmp7.i.i, label %brcmf_chip_cr4_set_passive.exit.split.loop.exit131, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

brcmf_chip_cr4_set_passive.exit.split.loop.exit131: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %core.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -12
  br label %brcmf_chip_cr4_set_passive.exit

brcmf_chip_cr4_set_passive.exit:                  ; preds = %brcmf_chip_cr4_set_passive.exit.split.loop.exit131, %for.cond.i.i.brcmf_chip_cr4_set_passive.exit_crit_edge
  %retval.0.i.i = phi ptr [ %core.0.i.i.le, %brcmf_chip_cr4_set_passive.exit.split.loop.exit131 ], [ null, %for.cond.i.i.brcmf_chip_cr4_set_passive.exit_crit_edge ]
  %chip.i.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %retval.0.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip.i.i, align 4
  %resetcore.i.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %resetcore.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resetcore.i.i, align 4
  tail call void %24(ptr noundef %retval.0.i.i, i32 noundef 12, i32 noundef 4, i32 noundef 4) #7
  br label %cleanup

for.cond.i21:                                     ; preds = %for.body.i24.for.cond.i21_crit_edge, %for.cond.i21.preheader
  %.pn.in.i18 = phi ptr [ %.pn.i19, %for.body.i24.for.cond.i21_crit_edge ], [ %cores.i, %for.cond.i21.preheader ]
  %25 = ptrtoint ptr %.pn.in.i18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i19 = load ptr, ptr %.pn.in.i18, align 4
  %cmp.not.i20 = icmp eq ptr %.pn.i19, %cores.i
  br i1 %cmp.not.i20, label %for.cond.i21.for.cond.i66.preheader_crit_edge, label %for.body.i24

for.cond.i21.for.cond.i66.preheader_crit_edge:    ; preds = %for.cond.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i66.preheader

for.body.i24:                                     ; preds = %for.cond.i21
  %core.0.i22 = getelementptr i8, ptr %.pn.i19, i32 -12
  %26 = ptrtoint ptr %core.0.i22 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %core.0.i22, align 4
  %cmp7.i23 = icmp eq i16 %27, 2119
  br i1 %cmp7.i23, label %brcmf_chip_get_core.exit28, label %for.body.i24.for.cond.i21_crit_edge

for.body.i24.for.cond.i21_crit_edge:              ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i21

brcmf_chip_get_core.exit28:                       ; preds = %for.body.i24
  %core.0.i22.le = getelementptr i8, ptr %.pn.i19, i32 -12
  %tobool2.not = icmp eq ptr %core.0.i22.le, null
  br i1 %tobool2.not, label %brcmf_chip_get_core.exit28.for.cond.i66.preheader_crit_edge, label %brcmf_chip_get_core.exit28.for.cond.i.i.i33_crit_edge

brcmf_chip_get_core.exit28.for.cond.i.i.i33_crit_edge: ; preds = %brcmf_chip_get_core.exit28
  br label %for.cond.i.i.i33

brcmf_chip_get_core.exit28.for.cond.i66.preheader_crit_edge: ; preds = %brcmf_chip_get_core.exit28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i66.preheader

for.cond.i66.preheader:                           ; preds = %brcmf_chip_get_core.exit28.for.cond.i66.preheader_crit_edge, %for.cond.i21.for.cond.i66.preheader_crit_edge
  br label %for.cond.i66

for.cond.i.i.i33:                                 ; preds = %for.body.i.i.i36.for.cond.i.i.i33_crit_edge, %brcmf_chip_get_core.exit28.for.cond.i.i.i33_crit_edge
  %.pn.in.i.i.i30 = phi ptr [ %.pn.i.i.i31, %for.body.i.i.i36.for.cond.i.i.i33_crit_edge ], [ %cores.i, %brcmf_chip_get_core.exit28.for.cond.i.i.i33_crit_edge ]
  %28 = ptrtoint ptr %.pn.in.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i.i.i31 = load ptr, ptr %.pn.in.i.i.i30, align 4
  %cmp.not.i.i.i32 = icmp eq ptr %.pn.i.i.i31, %cores.i
  br i1 %cmp.not.i.i.i32, label %for.cond.i.i.i33.for.cond.i.i53.preheader_crit_edge, label %for.body.i.i.i36

for.cond.i.i.i33.for.cond.i.i53.preheader_crit_edge: ; preds = %for.cond.i.i.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i53.preheader

for.body.i.i.i36:                                 ; preds = %for.cond.i.i.i33
  %core.0.i.i.i34 = getelementptr i8, ptr %.pn.i.i.i31, i32 -12
  %29 = ptrtoint ptr %core.0.i.i.i34 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %core.0.i.i.i34, align 4
  %cmp7.i.i.i35 = icmp eq i16 %30, 2119
  br i1 %cmp7.i.i.i35, label %brcmf_chip_get_core.exit.i.i39, label %for.body.i.i.i36.for.cond.i.i.i33_crit_edge

for.body.i.i.i36.for.cond.i.i.i33_crit_edge:      ; preds = %for.body.i.i.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.i33

brcmf_chip_get_core.exit.i.i39:                   ; preds = %for.body.i.i.i36
  %core.0.i.i.i34.le = getelementptr i8, ptr %.pn.i.i.i31, i32 -12
  %tobool.not.i.i38 = icmp eq ptr %core.0.i.i.i34.le, null
  br i1 %tobool.not.i.i38, label %brcmf_chip_get_core.exit.i.i39.for.cond.i.i53.preheader_crit_edge, label %if.end.i.i48

brcmf_chip_get_core.exit.i.i39.for.cond.i.i53.preheader_crit_edge: ; preds = %brcmf_chip_get_core.exit.i.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i53.preheader

if.end.i.i48:                                     ; preds = %brcmf_chip_get_core.exit.i.i39
  call void @__sanitizer_cov_trace_pc() #9
  %ops.i.i40 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 1
  %31 = ptrtoint ptr %ops.i.i40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i.i40, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %ctx.i.i41 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 2
  %35 = ptrtoint ptr %ctx.i.i41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctx.i.i41, align 4
  %wrapbase.i.i42 = getelementptr i8, ptr %.pn.i.i.i31, i32 -4
  %37 = ptrtoint ptr %wrapbase.i.i42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wrapbase.i.i42, align 4
  %add.i.i43 = add i32 %38, 1032
  %call2.i.i44 = tail call i32 %34(ptr noundef %36, i32 noundef %add.i.i43) #7
  %and.i.i45 = and i32 %call2.i.i44, 32
  %chip.i14.i.i46 = getelementptr i8, ptr %.pn.i.i.i31, i32 8
  %39 = ptrtoint ptr %chip.i14.i.i46 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip.i14.i.i46, align 4
  %resetcore.i.i.i47 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %resetcore.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %resetcore.i.i.i47, align 4
  tail call void %42(ptr noundef nonnull %core.0.i.i.i34.le, i32 noundef %and.i.i45, i32 noundef 32, i32 noundef 32) #7
  br label %for.cond.i.i53.preheader

for.cond.i.i53.preheader:                         ; preds = %if.end.i.i48, %brcmf_chip_get_core.exit.i.i39.for.cond.i.i53.preheader_crit_edge, %for.cond.i.i.i33.for.cond.i.i53.preheader_crit_edge
  br label %for.cond.i.i53

for.cond.i.i53:                                   ; preds = %for.body.i.i56.for.cond.i.i53_crit_edge, %for.cond.i.i53.preheader
  %.pn.in.i.i50 = phi ptr [ %.pn.i.i51, %for.body.i.i56.for.cond.i.i53_crit_edge ], [ %cores.i, %for.cond.i.i53.preheader ]
  %43 = ptrtoint ptr %.pn.in.i.i50 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn.i.i51 = load ptr, ptr %.pn.in.i.i50, align 4
  %cmp.not.i.i52 = icmp eq ptr %.pn.i.i51, %cores.i
  br i1 %cmp.not.i.i52, label %for.cond.i.i53.brcmf_chip_ca7_set_passive.exit_crit_edge, label %for.body.i.i56

for.cond.i.i53.brcmf_chip_ca7_set_passive.exit_crit_edge: ; preds = %for.cond.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_ca7_set_passive.exit

for.body.i.i56:                                   ; preds = %for.cond.i.i53
  %core.0.i.i54 = getelementptr i8, ptr %.pn.i.i51, i32 -12
  %44 = ptrtoint ptr %core.0.i.i54 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %core.0.i.i54, align 4
  %cmp7.i.i55 = icmp eq i16 %45, 2066
  br i1 %cmp7.i.i55, label %brcmf_chip_ca7_set_passive.exit.split.loop.exit133, label %for.body.i.i56.for.cond.i.i53_crit_edge

for.body.i.i56.for.cond.i.i53_crit_edge:          ; preds = %for.body.i.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i53

brcmf_chip_ca7_set_passive.exit.split.loop.exit133: ; preds = %for.body.i.i56
  call void @__sanitizer_cov_trace_pc() #9
  %core.0.i.i54.le = getelementptr i8, ptr %.pn.i.i51, i32 -12
  br label %brcmf_chip_ca7_set_passive.exit

brcmf_chip_ca7_set_passive.exit:                  ; preds = %brcmf_chip_ca7_set_passive.exit.split.loop.exit133, %for.cond.i.i53.brcmf_chip_ca7_set_passive.exit_crit_edge
  %retval.0.i.i59 = phi ptr [ %core.0.i.i54.le, %brcmf_chip_ca7_set_passive.exit.split.loop.exit133 ], [ null, %for.cond.i.i53.brcmf_chip_ca7_set_passive.exit_crit_edge ]
  %chip.i.i60 = getelementptr inbounds %struct.brcmf_core_priv, ptr %retval.0.i.i59, i32 0, i32 3
  %46 = ptrtoint ptr %chip.i.i60 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chip.i.i60, align 4
  %resetcore.i.i61 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %resetcore.i.i61 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %resetcore.i.i61, align 4
  tail call void %49(ptr noundef %retval.0.i.i59, i32 noundef 12, i32 noundef 4, i32 noundef 4) #7
  br label %cleanup

for.cond.i66:                                     ; preds = %for.body.i69.for.cond.i66_crit_edge, %for.cond.i66.preheader
  %.pn.in.i63 = phi ptr [ %.pn.i64, %for.body.i69.for.cond.i66_crit_edge ], [ %cores.i, %for.cond.i66.preheader ]
  %50 = ptrtoint ptr %.pn.in.i63 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn.i64 = load ptr, ptr %.pn.in.i63, align 4
  %cmp.not.i65 = icmp eq ptr %.pn.i64, %cores.i
  br i1 %cmp.not.i65, label %for.cond.i66.cleanup_crit_edge, label %for.body.i69

for.cond.i66.cleanup_crit_edge:                   ; preds = %for.cond.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i69:                                     ; preds = %for.cond.i66
  %core.0.i67 = getelementptr i8, ptr %.pn.i64, i32 -12
  %51 = ptrtoint ptr %core.0.i67 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %core.0.i67, align 4
  %cmp7.i68 = icmp eq i16 %52, 2090
  br i1 %cmp7.i68, label %brcmf_chip_get_core.exit73, label %for.body.i69.for.cond.i66_crit_edge

for.body.i69.for.cond.i66_crit_edge:              ; preds = %for.body.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i66

brcmf_chip_get_core.exit73:                       ; preds = %for.body.i69
  %core.0.i67.le = getelementptr i8, ptr %.pn.i64, i32 -12
  %tobool6.not = icmp eq ptr %core.0.i67.le, null
  br i1 %tobool6.not, label %brcmf_chip_get_core.exit73.cleanup_crit_edge, label %brcmf_chip_get_core.exit73.for.cond.i.i.i78_crit_edge

brcmf_chip_get_core.exit73.for.cond.i.i.i78_crit_edge: ; preds = %brcmf_chip_get_core.exit73
  br label %for.cond.i.i.i78

brcmf_chip_get_core.exit73.cleanup_crit_edge:     ; preds = %brcmf_chip_get_core.exit73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.i.i.i78:                                 ; preds = %for.body.i.i.i81.for.cond.i.i.i78_crit_edge, %brcmf_chip_get_core.exit73.for.cond.i.i.i78_crit_edge
  %.pn.in.i.i.i75 = phi ptr [ %.pn.i.i.i76, %for.body.i.i.i81.for.cond.i.i.i78_crit_edge ], [ %cores.i, %brcmf_chip_get_core.exit73.for.cond.i.i.i78_crit_edge ]
  %53 = ptrtoint ptr %.pn.in.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn.i.i.i76 = load ptr, ptr %.pn.in.i.i.i75, align 4
  %cmp.not.i.i.i77 = icmp eq ptr %.pn.i.i.i76, %cores.i
  br i1 %cmp.not.i.i.i77, label %for.cond.i.i.i78.for.cond.i.i90.preheader_crit_edge, label %for.body.i.i.i81

for.cond.i.i.i78.for.cond.i.i90.preheader_crit_edge: ; preds = %for.cond.i.i.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i90.preheader

for.body.i.i.i81:                                 ; preds = %for.cond.i.i.i78
  %core.0.i.i.i79 = getelementptr i8, ptr %.pn.i.i.i76, i32 -12
  %54 = ptrtoint ptr %core.0.i.i.i79 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %core.0.i.i.i79, align 4
  %cmp7.i.i.i80 = icmp eq i16 %55, 2090
  br i1 %cmp7.i.i.i80, label %brcmf_chip_get_core.exit.i.i84, label %for.body.i.i.i81.for.cond.i.i.i78_crit_edge

for.body.i.i.i81.for.cond.i.i.i78_crit_edge:      ; preds = %for.body.i.i.i81
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.i78

brcmf_chip_get_core.exit.i.i84:                   ; preds = %for.body.i.i.i81
  %core.0.i.i.i79.le = getelementptr i8, ptr %.pn.i.i.i76, i32 -12
  %tobool.not.i.i83 = icmp eq ptr %core.0.i.i.i79.le, null
  br i1 %tobool.not.i.i83, label %brcmf_chip_get_core.exit.i.i84.for.cond.i.i90.preheader_crit_edge, label %if.end.i.i85

brcmf_chip_get_core.exit.i.i84.for.cond.i.i90.preheader_crit_edge: ; preds = %brcmf_chip_get_core.exit.i.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i90.preheader

if.end.i.i85:                                     ; preds = %brcmf_chip_get_core.exit.i.i84
  call void @__sanitizer_cov_trace_pc() #9
  %chip.i.i.i = getelementptr i8, ptr %.pn.i.i.i76, i32 8
  %56 = ptrtoint ptr %chip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chip.i.i.i, align 4
  %coredisable.i.i.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %coredisable.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %coredisable.i.i.i, align 4
  tail call void %59(ptr noundef nonnull %core.0.i.i.i79.le, i32 noundef 0, i32 noundef 0) #7
  br label %for.cond.i.i90.preheader

for.cond.i.i90.preheader:                         ; preds = %if.end.i.i85, %brcmf_chip_get_core.exit.i.i84.for.cond.i.i90.preheader_crit_edge, %for.cond.i.i.i78.for.cond.i.i90.preheader_crit_edge
  br label %for.cond.i.i90

for.cond.i.i90:                                   ; preds = %for.body.i.i93.for.cond.i.i90_crit_edge, %for.cond.i.i90.preheader
  %.pn.in.i.i87 = phi ptr [ %.pn.i.i88, %for.body.i.i93.for.cond.i.i90_crit_edge ], [ %cores.i, %for.cond.i.i90.preheader ]
  %60 = ptrtoint ptr %.pn.in.i.i87 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn.i.i88 = load ptr, ptr %.pn.in.i.i87, align 4
  %cmp.not.i.i89 = icmp eq ptr %.pn.i.i88, %cores.i
  br i1 %cmp.not.i.i89, label %for.cond.i.i90.brcmf_chip_get_core.exit.i_crit_edge, label %for.body.i.i93

for.cond.i.i90.brcmf_chip_get_core.exit.i_crit_edge: ; preds = %for.cond.i.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_get_core.exit.i

for.body.i.i93:                                   ; preds = %for.cond.i.i90
  %core.0.i.i91 = getelementptr i8, ptr %.pn.i.i88, i32 -12
  %61 = ptrtoint ptr %core.0.i.i91 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %core.0.i.i91, align 4
  %cmp7.i.i92 = icmp eq i16 %62, 2066
  br i1 %cmp7.i.i92, label %brcmf_chip_get_core.exit.i.split.loop.exit135, label %for.body.i.i93.for.cond.i.i90_crit_edge

for.body.i.i93.for.cond.i.i90_crit_edge:          ; preds = %for.body.i.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i90

brcmf_chip_get_core.exit.i.split.loop.exit135:    ; preds = %for.body.i.i93
  call void @__sanitizer_cov_trace_pc() #9
  %core.0.i.i91.le = getelementptr i8, ptr %.pn.i.i88, i32 -12
  br label %brcmf_chip_get_core.exit.i

brcmf_chip_get_core.exit.i:                       ; preds = %brcmf_chip_get_core.exit.i.split.loop.exit135, %for.cond.i.i90.brcmf_chip_get_core.exit.i_crit_edge
  %retval.0.i.i95 = phi ptr [ %core.0.i.i91.le, %brcmf_chip_get_core.exit.i.split.loop.exit135 ], [ null, %for.cond.i.i90.brcmf_chip_get_core.exit.i_crit_edge ]
  %chip.i.i96 = getelementptr inbounds %struct.brcmf_core_priv, ptr %retval.0.i.i95, i32 0, i32 3
  %63 = ptrtoint ptr %chip.i.i96 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chip.i.i96, align 4
  %resetcore.i.i97 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %resetcore.i.i97 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %resetcore.i.i97, align 4
  tail call void %66(ptr noundef %retval.0.i.i95, i32 noundef 12, i32 noundef 4, i32 noundef 4) #7
  br label %for.cond.i15.i

for.cond.i15.i:                                   ; preds = %for.body.i18.i.for.cond.i15.i_crit_edge, %brcmf_chip_get_core.exit.i
  %.pn.in.i12.i = phi ptr [ %cores.i, %brcmf_chip_get_core.exit.i ], [ %.pn.i13.i, %for.body.i18.i.for.cond.i15.i_crit_edge ]
  %67 = ptrtoint ptr %.pn.in.i12.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn.i13.i = load ptr, ptr %.pn.in.i12.i, align 4
  %cmp.not.i14.i = icmp eq ptr %.pn.i13.i, %cores.i
  br i1 %cmp.not.i14.i, label %for.cond.i15.i.brcmf_chip_get_core.exit22.i_crit_edge, label %for.body.i18.i

for.cond.i15.i.brcmf_chip_get_core.exit22.i_crit_edge: ; preds = %for.cond.i15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_get_core.exit22.i

for.body.i18.i:                                   ; preds = %for.cond.i15.i
  %core.0.i16.i = getelementptr i8, ptr %.pn.i13.i, i32 -12
  %68 = ptrtoint ptr %core.0.i16.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %core.0.i16.i, align 4
  %cmp7.i17.i = icmp eq i16 %69, 2062
  br i1 %cmp7.i17.i, label %brcmf_chip_get_core.exit22.i.split.loop.exit137, label %for.body.i18.i.for.cond.i15.i_crit_edge

for.body.i18.i.for.cond.i15.i_crit_edge:          ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i15.i

brcmf_chip_get_core.exit22.i.split.loop.exit137:  ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_pc() #9
  %core.0.i16.i.le = getelementptr i8, ptr %.pn.i13.i, i32 -12
  br label %brcmf_chip_get_core.exit22.i

brcmf_chip_get_core.exit22.i:                     ; preds = %brcmf_chip_get_core.exit22.i.split.loop.exit137, %for.cond.i15.i.brcmf_chip_get_core.exit22.i_crit_edge
  %retval.0.i21.i = phi ptr [ %core.0.i16.i.le, %brcmf_chip_get_core.exit22.i.split.loop.exit137 ], [ null, %for.cond.i15.i.brcmf_chip_get_core.exit22.i_crit_edge ]
  %chip.i23.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %retval.0.i21.i, i32 0, i32 3
  %70 = ptrtoint ptr %chip.i23.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chip.i23.i, align 4
  %resetcore.i24.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %71, i32 0, i32 7
  %72 = ptrtoint ptr %resetcore.i24.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %resetcore.i24.i, align 4
  tail call void %73(ptr noundef %retval.0.i21.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %74 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43430, i32 %75)
  %cmp.i = icmp eq i32 %75, 43430
  br i1 %cmp.i, label %if.then.i, label %brcmf_chip_get_core.exit22.i.cleanup_crit_edge

brcmf_chip_get_core.exit22.i.cleanup_crit_edge:   ; preds = %brcmf_chip_get_core.exit22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %brcmf_chip_get_core.exit22.i
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %chip.i23.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %chip.i23.i, align 4
  %ops.i.i98 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %ops.i.i98 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ops.i.i98, align 4
  %write32.i.i = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write32.i.i, align 4
  %ctx.i.i99 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %77, i32 0, i32 2
  %82 = ptrtoint ptr %ctx.i.i99 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ctx.i.i99, align 4
  %base.i.i = getelementptr inbounds %struct.brcmf_core, ptr %retval.0.i21.i, i32 0, i32 2
  %84 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %base.i.i, align 4
  %add.i.i100 = add i32 %85, 16
  tail call void %81(ptr noundef %83, i32 noundef %add.i.i100, i32 noundef 3) #7
  %86 = ptrtoint ptr %chip.i23.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %chip.i23.i, align 4
  %ops.i27.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %ops.i27.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops.i27.i, align 4
  %write32.i28.i = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %write32.i28.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write32.i28.i, align 4
  %ctx.i29.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %87, i32 0, i32 2
  %92 = ptrtoint ptr %ctx.i29.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ctx.i29.i, align 4
  %94 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %base.i.i, align 4
  %add.i31.i = add i32 %95, 68
  tail call void %91(ptr noundef %93, i32 noundef %add.i31.i, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %brcmf_chip_get_core.exit22.i.cleanup_crit_edge, %brcmf_chip_get_core.exit73.cleanup_crit_edge, %for.cond.i66.cleanup_crit_edge, %brcmf_chip_ca7_set_passive.exit, %brcmf_chip_cr4_set_passive.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @brcmf_chip_set_active(ptr noundef %pub, i32 noundef %rstvec) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_chip_set_active, ptr noundef nonnull @.str.9) #7
  %cores.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %cores.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %cores.i
  br i1 %cmp.not.i, label %for.cond.i.for.cond.i25.preheader_crit_edge, label %for.body.i

for.cond.i.for.cond.i25.preheader_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i25.preheader

for.body.i:                                       ; preds = %for.cond.i
  %core.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %1 = ptrtoint ptr %core.0.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %core.0.i, align 4
  %cmp7.i = icmp eq i16 %2, 2110
  br i1 %cmp7.i, label %brcmf_chip_get_core.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

brcmf_chip_get_core.exit:                         ; preds = %for.body.i
  %core.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool.not = icmp eq ptr %core.0.i.le, null
  br i1 %tobool.not, label %brcmf_chip_get_core.exit.for.cond.i25.preheader_crit_edge, label %if.then

brcmf_chip_get_core.exit.for.cond.i25.preheader_crit_edge: ; preds = %brcmf_chip_get_core.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i25.preheader

for.cond.i25.preheader:                           ; preds = %brcmf_chip_get_core.exit.for.cond.i25.preheader_crit_edge, %for.cond.i.for.cond.i25.preheader_crit_edge
  br label %for.cond.i25

if.then:                                          ; preds = %brcmf_chip_get_core.exit
  %ops.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 1
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %activate.i = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %activate.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %activate.i, align 4
  %ctx.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 2
  %7 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx.i, align 4
  tail call void %6(ptr noundef %8, ptr noundef %pub, i32 noundef %rstvec) #7
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then
  %.pn.in.i.i = phi ptr [ %cores.i, %if.then ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %9 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %cores.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.brcmf_chip_cr4_set_active.exit_crit_edge, label %for.body.i.i

for.cond.i.i.brcmf_chip_cr4_set_active.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_cr4_set_active.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %core.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -12
  %10 = ptrtoint ptr %core.0.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %core.0.i.i, align 4
  %cmp7.i.i = icmp eq i16 %11, 2110
  br i1 %cmp7.i.i, label %brcmf_chip_cr4_set_active.exit.split.loop.exit97, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

brcmf_chip_cr4_set_active.exit.split.loop.exit97: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %core.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -12
  br label %brcmf_chip_cr4_set_active.exit

brcmf_chip_cr4_set_active.exit:                   ; preds = %brcmf_chip_cr4_set_active.exit.split.loop.exit97, %for.cond.i.i.brcmf_chip_cr4_set_active.exit_crit_edge
  %retval.0.i.i = phi ptr [ %core.0.i.i.le, %brcmf_chip_cr4_set_active.exit.split.loop.exit97 ], [ null, %for.cond.i.i.brcmf_chip_cr4_set_active.exit_crit_edge ]
  %chip.i.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %retval.0.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip.i.i, align 4
  %resetcore.i.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %resetcore.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resetcore.i.i, align 4
  tail call void %15(ptr noundef %retval.0.i.i, i32 noundef 32, i32 noundef 0, i32 noundef 0) #7
  br label %cleanup

for.cond.i25:                                     ; preds = %for.body.i28.for.cond.i25_crit_edge, %for.cond.i25.preheader
  %.pn.in.i22 = phi ptr [ %.pn.i23, %for.body.i28.for.cond.i25_crit_edge ], [ %cores.i, %for.cond.i25.preheader ]
  %16 = ptrtoint ptr %.pn.in.i22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i23 = load ptr, ptr %.pn.in.i22, align 4
  %cmp.not.i24 = icmp eq ptr %.pn.i23, %cores.i
  br i1 %cmp.not.i24, label %for.cond.i25.for.cond.i53.preheader_crit_edge, label %for.body.i28

for.cond.i25.for.cond.i53.preheader_crit_edge:    ; preds = %for.cond.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i53.preheader

for.body.i28:                                     ; preds = %for.cond.i25
  %core.0.i26 = getelementptr i8, ptr %.pn.i23, i32 -12
  %17 = ptrtoint ptr %core.0.i26 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %core.0.i26, align 4
  %cmp7.i27 = icmp eq i16 %18, 2119
  br i1 %cmp7.i27, label %brcmf_chip_get_core.exit32, label %for.body.i28.for.cond.i25_crit_edge

for.body.i28.for.cond.i25_crit_edge:              ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i25

brcmf_chip_get_core.exit32:                       ; preds = %for.body.i28
  %core.0.i26.le = getelementptr i8, ptr %.pn.i23, i32 -12
  %tobool3.not = icmp eq ptr %core.0.i26.le, null
  br i1 %tobool3.not, label %brcmf_chip_get_core.exit32.for.cond.i53.preheader_crit_edge, label %if.then4

brcmf_chip_get_core.exit32.for.cond.i53.preheader_crit_edge: ; preds = %brcmf_chip_get_core.exit32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i53.preheader

for.cond.i53.preheader:                           ; preds = %brcmf_chip_get_core.exit32.for.cond.i53.preheader_crit_edge, %for.cond.i25.for.cond.i53.preheader_crit_edge
  br label %for.cond.i53

if.then4:                                         ; preds = %brcmf_chip_get_core.exit32
  %ops.i33 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 1
  %19 = ptrtoint ptr %ops.i33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i33, align 4
  %activate.i34 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %activate.i34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %activate.i34, align 4
  %ctx.i35 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 2
  %23 = ptrtoint ptr %ctx.i35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx.i35, align 4
  tail call void %22(ptr noundef %24, ptr noundef %pub, i32 noundef %rstvec) #7
  br label %for.cond.i.i40

for.cond.i.i40:                                   ; preds = %for.body.i.i43.for.cond.i.i40_crit_edge, %if.then4
  %.pn.in.i.i37 = phi ptr [ %cores.i, %if.then4 ], [ %.pn.i.i38, %for.body.i.i43.for.cond.i.i40_crit_edge ]
  %25 = ptrtoint ptr %.pn.in.i.i37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i.i38 = load ptr, ptr %.pn.in.i.i37, align 4
  %cmp.not.i.i39 = icmp eq ptr %.pn.i.i38, %cores.i
  br i1 %cmp.not.i.i39, label %for.cond.i.i40.brcmf_chip_ca7_set_active.exit_crit_edge, label %for.body.i.i43

for.cond.i.i40.brcmf_chip_ca7_set_active.exit_crit_edge: ; preds = %for.cond.i.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_ca7_set_active.exit

for.body.i.i43:                                   ; preds = %for.cond.i.i40
  %core.0.i.i41 = getelementptr i8, ptr %.pn.i.i38, i32 -12
  %26 = ptrtoint ptr %core.0.i.i41 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %core.0.i.i41, align 4
  %cmp7.i.i42 = icmp eq i16 %27, 2119
  br i1 %cmp7.i.i42, label %brcmf_chip_ca7_set_active.exit.split.loop.exit99, label %for.body.i.i43.for.cond.i.i40_crit_edge

for.body.i.i43.for.cond.i.i40_crit_edge:          ; preds = %for.body.i.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i40

brcmf_chip_ca7_set_active.exit.split.loop.exit99: ; preds = %for.body.i.i43
  call void @__sanitizer_cov_trace_pc() #9
  %core.0.i.i41.le = getelementptr i8, ptr %.pn.i.i38, i32 -12
  br label %brcmf_chip_ca7_set_active.exit

brcmf_chip_ca7_set_active.exit:                   ; preds = %brcmf_chip_ca7_set_active.exit.split.loop.exit99, %for.cond.i.i40.brcmf_chip_ca7_set_active.exit_crit_edge
  %retval.0.i.i46 = phi ptr [ %core.0.i.i41.le, %brcmf_chip_ca7_set_active.exit.split.loop.exit99 ], [ null, %for.cond.i.i40.brcmf_chip_ca7_set_active.exit_crit_edge ]
  %chip.i.i47 = getelementptr inbounds %struct.brcmf_core_priv, ptr %retval.0.i.i46, i32 0, i32 3
  %28 = ptrtoint ptr %chip.i.i47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip.i.i47, align 4
  %resetcore.i.i48 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %resetcore.i.i48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %resetcore.i.i48, align 4
  tail call void %31(ptr noundef %retval.0.i.i46, i32 noundef 32, i32 noundef 0, i32 noundef 0) #7
  br label %cleanup

for.cond.i53:                                     ; preds = %for.body.i56.for.cond.i53_crit_edge, %for.cond.i53.preheader
  %.pn.in.i50 = phi ptr [ %.pn.i51, %for.body.i56.for.cond.i53_crit_edge ], [ %cores.i, %for.cond.i53.preheader ]
  %32 = ptrtoint ptr %.pn.in.i50 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn.i51 = load ptr, ptr %.pn.in.i50, align 4
  %cmp.not.i52 = icmp eq ptr %.pn.i51, %cores.i
  br i1 %cmp.not.i52, label %for.cond.i53.cleanup_crit_edge, label %for.body.i56

for.cond.i53.cleanup_crit_edge:                   ; preds = %for.cond.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i56:                                     ; preds = %for.cond.i53
  %core.0.i54 = getelementptr i8, ptr %.pn.i51, i32 -12
  %33 = ptrtoint ptr %core.0.i54 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %core.0.i54, align 4
  %cmp7.i55 = icmp eq i16 %34, 2090
  br i1 %cmp7.i55, label %brcmf_chip_get_core.exit60, label %for.body.i56.for.cond.i53_crit_edge

for.body.i56.for.cond.i53_crit_edge:              ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i53

brcmf_chip_get_core.exit60:                       ; preds = %for.body.i56
  %core.0.i54.le = getelementptr i8, ptr %.pn.i51, i32 -12
  %tobool8.not = icmp eq ptr %core.0.i54.le, null
  br i1 %tobool8.not, label %brcmf_chip_get_core.exit60.cleanup_crit_edge, label %brcmf_chip_get_core.exit60.for.cond.i.i65_crit_edge

brcmf_chip_get_core.exit60.for.cond.i.i65_crit_edge: ; preds = %brcmf_chip_get_core.exit60
  br label %for.cond.i.i65

brcmf_chip_get_core.exit60.cleanup_crit_edge:     ; preds = %brcmf_chip_get_core.exit60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.i.i65:                                   ; preds = %for.body.i.i68.for.cond.i.i65_crit_edge, %brcmf_chip_get_core.exit60.for.cond.i.i65_crit_edge
  %.pn.in.i.i62 = phi ptr [ %.pn.i.i63, %for.body.i.i68.for.cond.i.i65_crit_edge ], [ %cores.i, %brcmf_chip_get_core.exit60.for.cond.i.i65_crit_edge ]
  %35 = ptrtoint ptr %.pn.in.i.i62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn.i.i63 = load ptr, ptr %.pn.in.i.i62, align 4
  %cmp.not.i.i64 = icmp eq ptr %.pn.i.i63, %cores.i
  br i1 %cmp.not.i.i64, label %for.cond.i.i65.brcmf_chip_get_core.exit.i_crit_edge, label %for.body.i.i68

for.cond.i.i65.brcmf_chip_get_core.exit.i_crit_edge: ; preds = %for.cond.i.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_get_core.exit.i

for.body.i.i68:                                   ; preds = %for.cond.i.i65
  %core.0.i.i66 = getelementptr i8, ptr %.pn.i.i63, i32 -12
  %36 = ptrtoint ptr %core.0.i.i66 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %core.0.i.i66, align 4
  %cmp7.i.i67 = icmp eq i16 %37, 2062
  br i1 %cmp7.i.i67, label %brcmf_chip_get_core.exit.i.split.loop.exit101, label %for.body.i.i68.for.cond.i.i65_crit_edge

for.body.i.i68.for.cond.i.i65_crit_edge:          ; preds = %for.body.i.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i65

brcmf_chip_get_core.exit.i.split.loop.exit101:    ; preds = %for.body.i.i68
  call void @__sanitizer_cov_trace_pc() #9
  %core.0.i.i66.le = getelementptr i8, ptr %.pn.i.i63, i32 -12
  br label %brcmf_chip_get_core.exit.i

brcmf_chip_get_core.exit.i:                       ; preds = %brcmf_chip_get_core.exit.i.split.loop.exit101, %for.cond.i.i65.brcmf_chip_get_core.exit.i_crit_edge
  %retval.0.i.i70 = phi ptr [ %core.0.i.i66.le, %brcmf_chip_get_core.exit.i.split.loop.exit101 ], [ null, %for.cond.i.i65.brcmf_chip_get_core.exit.i_crit_edge ]
  %chip.i.i71 = getelementptr inbounds %struct.brcmf_core_priv, ptr %retval.0.i.i70, i32 0, i32 3
  %38 = ptrtoint ptr %chip.i.i71 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chip.i.i71, align 4
  %iscoreup.i.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %iscoreup.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iscoreup.i.i, align 4
  %call.i.i = tail call zeroext i1 %41(ptr noundef %retval.0.i.i70) #7
  br i1 %call.i.i, label %if.end.i, label %do.body.i

do.body.i:                                        ; preds = %brcmf_chip_get_core.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_chip_cm3_set_active, ptr noundef nonnull @.str.23) #7
  br label %cleanup

if.end.i:                                         ; preds = %brcmf_chip_get_core.exit.i
  %ops.i72 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 1
  %42 = ptrtoint ptr %ops.i72 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i72, align 4
  %activate.i73 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %activate.i73 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %activate.i73, align 4
  %ctx.i74 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 2
  %46 = ptrtoint ptr %ctx.i74 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctx.i74, align 4
  tail call void %45(ptr noundef %47, ptr noundef %pub, i32 noundef 0) #7
  br label %for.cond.i14.i

for.cond.i14.i:                                   ; preds = %for.body.i17.i.for.cond.i14.i_crit_edge, %if.end.i
  %.pn.in.i11.i = phi ptr [ %cores.i, %if.end.i ], [ %.pn.i12.i, %for.body.i17.i.for.cond.i14.i_crit_edge ]
  %48 = ptrtoint ptr %.pn.in.i11.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn.i12.i = load ptr, ptr %.pn.in.i11.i, align 4
  %cmp.not.i13.i = icmp eq ptr %.pn.i12.i, %cores.i
  br i1 %cmp.not.i13.i, label %for.cond.i14.i.brcmf_chip_get_core.exit21.i_crit_edge, label %for.body.i17.i

for.cond.i14.i.brcmf_chip_get_core.exit21.i_crit_edge: ; preds = %for.cond.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_get_core.exit21.i

for.body.i17.i:                                   ; preds = %for.cond.i14.i
  %core.0.i15.i = getelementptr i8, ptr %.pn.i12.i, i32 -12
  %49 = ptrtoint ptr %core.0.i15.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %core.0.i15.i, align 4
  %cmp7.i16.i = icmp eq i16 %50, 2090
  br i1 %cmp7.i16.i, label %brcmf_chip_get_core.exit21.i.split.loop.exit103, label %for.body.i17.i.for.cond.i14.i_crit_edge

for.body.i17.i.for.cond.i14.i_crit_edge:          ; preds = %for.body.i17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i14.i

brcmf_chip_get_core.exit21.i.split.loop.exit103:  ; preds = %for.body.i17.i
  call void @__sanitizer_cov_trace_pc() #9
  %core.0.i15.i.le = getelementptr i8, ptr %.pn.i12.i, i32 -12
  br label %brcmf_chip_get_core.exit21.i

brcmf_chip_get_core.exit21.i:                     ; preds = %brcmf_chip_get_core.exit21.i.split.loop.exit103, %for.cond.i14.i.brcmf_chip_get_core.exit21.i_crit_edge
  %retval.0.i20.i = phi ptr [ %core.0.i15.i.le, %brcmf_chip_get_core.exit21.i.split.loop.exit103 ], [ null, %for.cond.i14.i.brcmf_chip_get_core.exit21.i_crit_edge ]
  %chip.i22.i = getelementptr inbounds %struct.brcmf_core_priv, ptr %retval.0.i20.i, i32 0, i32 3
  %51 = ptrtoint ptr %chip.i22.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chip.i22.i, align 4
  %resetcore.i.i75 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %resetcore.i.i75 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %resetcore.i.i75, align 4
  tail call void %54(ptr noundef %retval.0.i20.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %brcmf_chip_get_core.exit21.i, %do.body.i, %brcmf_chip_get_core.exit60.cleanup_crit_edge, %for.cond.i53.cleanup_crit_edge, %brcmf_chip_ca7_set_active.exit, %brcmf_chip_cr4_set_active.exit
  %retval.0 = phi i1 [ true, %brcmf_chip_cr4_set_active.exit ], [ true, %brcmf_chip_ca7_set_active.exit ], [ false, %brcmf_chip_get_core.exit60.cleanup_crit_edge ], [ false, %do.body.i ], [ true, %brcmf_chip_get_core.exit21.i ], [ false, %for.cond.i53.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @brcmf_chip_sr_capable(ptr noundef readonly %pub) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cores.i.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 3
  %0 = ptrtoint ptr %cores.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cores.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %1, i32 -12
  %tobool.not.i.i = icmp eq ptr %add.ptr3.i.i, null
  br i1 %tobool.not.i.i, label %entry.do.end.i.i_crit_edge, label %lor.rhs.i.i

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

lor.rhs.i.i:                                      ; preds = %entry
  %2 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %3)
  %cmp.not.i.i = icmp eq i16 %3, 2048
  br i1 %cmp.not.i.i, label %lor.rhs.i.i.brcmf_chip_get_chipcommon.exit.i_crit_edge, label %lor.rhs.i.i.do.end.i.i_crit_edge, !prof !70

lor.rhs.i.i.do.end.i.i_crit_edge:                 ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

lor.rhs.i.i.brcmf_chip_get_chipcommon.exit.i_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_get_chipcommon.exit.i

do.end.i.i:                                       ; preds = %lor.rhs.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1197, i32 noundef 9, ptr noundef null) #7
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %do.end.i.i
  %.pn.in.i.i.i = phi ptr [ %cores.i.i, %do.end.i.i ], [ %.pn.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %cores.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.brcmf_chip_get_chipcommon.exit.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.brcmf_chip_get_chipcommon.exit.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_get_chipcommon.exit.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %core.0.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -12
  %5 = ptrtoint ptr %core.0.i.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %core.0.i.i.i, align 4
  %cmp7.i.i.i = icmp eq i16 %6, 2048
  br i1 %cmp7.i.i.i, label %brcmf_chip_get_chipcommon.exit.i.loopexit.split.loop.exit, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.i

brcmf_chip_get_chipcommon.exit.i.loopexit.split.loop.exit: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %core.0.i.i.i.le = getelementptr i8, ptr %.pn.i.i.i, i32 -12
  br label %brcmf_chip_get_chipcommon.exit.i

brcmf_chip_get_chipcommon.exit.i:                 ; preds = %brcmf_chip_get_chipcommon.exit.i.loopexit.split.loop.exit, %for.cond.i.i.i.brcmf_chip_get_chipcommon.exit.i_crit_edge, %lor.rhs.i.i.brcmf_chip_get_chipcommon.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr3.i.i, %lor.rhs.i.i.brcmf_chip_get_chipcommon.exit.i_crit_edge ], [ %core.0.i.i.i.le, %brcmf_chip_get_chipcommon.exit.i.loopexit.split.loop.exit ], [ null, %for.cond.i.i.i.brcmf_chip_get_chipcommon.exit.i_crit_edge ]
  %rev.i = getelementptr inbounds %struct.brcmf_core, ptr %retval.0.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %rev.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %8)
  %cmp.i = icmp ugt i16 %8, 34
  br i1 %cmp.i, label %land.lhs.true.i, label %brcmf_chip_get_chipcommon.exit.i.if.end5.i_crit_edge

brcmf_chip_get_chipcommon.exit.i.if.end5.i_crit_edge: ; preds = %brcmf_chip_get_chipcommon.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %brcmf_chip_get_chipcommon.exit.i
  %cc_caps_ext.i = getelementptr inbounds %struct.brcmf_chip, ptr %pub, i32 0, i32 4
  %9 = ptrtoint ptr %cc_caps_ext.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cc_caps_ext.i, align 4
  %and.i = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end5.i_crit_edge, label %land.lhs.true.i.for.cond.i.i_crit_edge

land.lhs.true.i.for.cond.i.i_crit_edge:           ; preds = %land.lhs.true.i
  br label %for.cond.i.i

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %land.lhs.true.i.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %cores.i.i, %land.lhs.true.i.for.cond.i.i_crit_edge ]
  %11 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i12.i = icmp eq ptr %.pn.i.i, %cores.i.i
  br i1 %cmp.not.i12.i, label %for.cond.i.i.if.end5.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.end5.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %core.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -12
  %12 = ptrtoint ptr %core.0.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %core.0.i.i, align 4
  %cmp7.i.i = icmp eq i16 %13, 2087
  br i1 %cmp7.i.i, label %brcmf_chip_get_core.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

brcmf_chip_get_core.exit.i:                       ; preds = %for.body.i.i
  %core.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -12
  %tobool3.not.i = icmp eq ptr %core.0.i.i.le, null
  br i1 %tobool3.not.i, label %brcmf_chip_get_core.exit.i.if.end5.i_crit_edge, label %brcmf_chip_get_core.exit.i.brcmf_chip_get_pmu.exit_crit_edge

brcmf_chip_get_core.exit.i.brcmf_chip_get_pmu.exit_crit_edge: ; preds = %brcmf_chip_get_core.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_get_pmu.exit

brcmf_chip_get_core.exit.i.if.end5.i_crit_edge:   ; preds = %brcmf_chip_get_core.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %brcmf_chip_get_core.exit.i.if.end5.i_crit_edge, %for.cond.i.i.if.end5.i_crit_edge, %land.lhs.true.i.if.end5.i_crit_edge, %brcmf_chip_get_chipcommon.exit.i.if.end5.i_crit_edge
  br label %brcmf_chip_get_pmu.exit

brcmf_chip_get_pmu.exit:                          ; preds = %if.end5.i, %brcmf_chip_get_core.exit.i.brcmf_chip_get_pmu.exit_crit_edge
  %retval.0.i = phi ptr [ %retval.0.i.i, %if.end5.i ], [ %core.0.i.i.le, %brcmf_chip_get_core.exit.i.brcmf_chip_get_pmu.exit_crit_edge ]
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_chip_sr_capable, ptr noundef nonnull @.str.9) #7
  %pmurev = getelementptr inbounds %struct.brcmf_chip, ptr %pub, i32 0, i32 6
  %14 = ptrtoint ptr %pmurev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pmurev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %15)
  %cmp = icmp ult i32 %15, 17
  br i1 %cmp, label %brcmf_chip_get_pmu.exit.cleanup_crit_edge, label %if.end

brcmf_chip_get_pmu.exit.cleanup_crit_edge:        ; preds = %brcmf_chip_get_pmu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %brcmf_chip_get_pmu.exit
  %16 = ptrtoint ptr %cores.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cores.i.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %17, i32 -12
  %tobool.not.i92 = icmp eq ptr %add.ptr3.i, null
  br i1 %tobool.not.i92, label %if.end.do.end.i_crit_edge, label %lor.rhs.i

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.rhs.i:                                        ; preds = %if.end
  %18 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %19)
  %cmp.not.i = icmp eq i16 %19, 2048
  br i1 %cmp.not.i, label %lor.rhs.i.brcmf_chip_get_chipcommon.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !70

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.rhs.i.brcmf_chip_get_chipcommon.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_get_chipcommon.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1197, i32 noundef 9, ptr noundef null) #7
  br label %for.cond.i.i96

for.cond.i.i96:                                   ; preds = %for.body.i.i99.for.cond.i.i96_crit_edge, %do.end.i
  %.pn.in.i.i93 = phi ptr [ %cores.i.i, %do.end.i ], [ %.pn.i.i94, %for.body.i.i99.for.cond.i.i96_crit_edge ]
  %20 = ptrtoint ptr %.pn.in.i.i93 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i.i94 = load ptr, ptr %.pn.in.i.i93, align 4
  %cmp.not.i.i95 = icmp eq ptr %.pn.i.i94, %cores.i.i
  br i1 %cmp.not.i.i95, label %for.cond.i.i96.brcmf_chip_get_chipcommon.exit_crit_edge, label %for.body.i.i99

for.cond.i.i96.brcmf_chip_get_chipcommon.exit_crit_edge: ; preds = %for.cond.i.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_chip_get_chipcommon.exit

for.body.i.i99:                                   ; preds = %for.cond.i.i96
  %core.0.i.i97 = getelementptr i8, ptr %.pn.i.i94, i32 -12
  %21 = ptrtoint ptr %core.0.i.i97 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %core.0.i.i97, align 4
  %cmp7.i.i98 = icmp eq i16 %22, 2048
  br i1 %cmp7.i.i98, label %brcmf_chip_get_chipcommon.exit.loopexit.split.loop.exit, label %for.body.i.i99.for.cond.i.i96_crit_edge

for.body.i.i99.for.cond.i.i96_crit_edge:          ; preds = %for.body.i.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i96

brcmf_chip_get_chipcommon.exit.loopexit.split.loop.exit: ; preds = %for.body.i.i99
  call void @__sanitizer_cov_trace_pc() #9
  %core.0.i.i97.le = getelementptr i8, ptr %.pn.i.i94, i32 -12
  br label %brcmf_chip_get_chipcommon.exit

brcmf_chip_get_chipcommon.exit:                   ; preds = %brcmf_chip_get_chipcommon.exit.loopexit.split.loop.exit, %for.cond.i.i96.brcmf_chip_get_chipcommon.exit_crit_edge, %lor.rhs.i.brcmf_chip_get_chipcommon.exit_crit_edge
  %retval.0.i101 = phi ptr [ %add.ptr3.i, %lor.rhs.i.brcmf_chip_get_chipcommon.exit_crit_edge ], [ %core.0.i.i97.le, %brcmf_chip_get_chipcommon.exit.loopexit.split.loop.exit ], [ null, %for.cond.i.i96.brcmf_chip_get_chipcommon.exit_crit_edge ]
  %base2 = getelementptr inbounds %struct.brcmf_core, ptr %retval.0.i101, i32 0, i32 2
  %23 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base2, align 4
  %25 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pub, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %26, label %sw.default [
    i32 17236, label %brcmf_chip_get_chipcommon.exit.sw.bb_crit_edge
    i32 17238, label %brcmf_chip_get_chipcommon.exit.sw.bb_crit_edge122
    i32 17221, label %brcmf_chip_get_chipcommon.exit.sw.bb_crit_edge123
    i32 17188, label %brcmf_chip_get_chipcommon.exit.sw.bb4_crit_edge
    i32 17205, label %brcmf_chip_get_chipcommon.exit.sw.bb4_crit_edge124
    i32 17209, label %brcmf_chip_get_chipcommon.exit.sw.bb4_crit_edge125
    i32 43430, label %sw.bb12
    i32 17267, label %sw.bb19
    i32 17241, label %brcmf_chip_get_chipcommon.exit.sw.bb27_crit_edge
    i32 43752, label %brcmf_chip_get_chipcommon.exit.sw.bb27_crit_edge126
    i32 43012, label %brcmf_chip_get_chipcommon.exit.sw.bb27_crit_edge127
  ]

brcmf_chip_get_chipcommon.exit.sw.bb27_crit_edge127: ; preds = %brcmf_chip_get_chipcommon.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb27

brcmf_chip_get_chipcommon.exit.sw.bb27_crit_edge126: ; preds = %brcmf_chip_get_chipcommon.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb27

brcmf_chip_get_chipcommon.exit.sw.bb27_crit_edge: ; preds = %brcmf_chip_get_chipcommon.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb27

brcmf_chip_get_chipcommon.exit.sw.bb4_crit_edge125: ; preds = %brcmf_chip_get_chipcommon.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

brcmf_chip_get_chipcommon.exit.sw.bb4_crit_edge124: ; preds = %brcmf_chip_get_chipcommon.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

brcmf_chip_get_chipcommon.exit.sw.bb4_crit_edge:  ; preds = %brcmf_chip_get_chipcommon.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

brcmf_chip_get_chipcommon.exit.sw.bb_crit_edge123: ; preds = %brcmf_chip_get_chipcommon.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

brcmf_chip_get_chipcommon.exit.sw.bb_crit_edge122: ; preds = %brcmf_chip_get_chipcommon.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

brcmf_chip_get_chipcommon.exit.sw.bb_crit_edge:   ; preds = %brcmf_chip_get_chipcommon.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %brcmf_chip_get_chipcommon.exit.sw.bb_crit_edge, %brcmf_chip_get_chipcommon.exit.sw.bb_crit_edge122, %brcmf_chip_get_chipcommon.exit.sw.bb_crit_edge123
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb, %brcmf_chip_get_chipcommon.exit.sw.bb4_crit_edge, %brcmf_chip_get_chipcommon.exit.sw.bb4_crit_edge124, %brcmf_chip_get_chipcommon.exit.sw.bb4_crit_edge125
  %pmu_cc3_mask.0 = phi i32 [ -1, %brcmf_chip_get_chipcommon.exit.sw.bb4_crit_edge ], [ -1, %brcmf_chip_get_chipcommon.exit.sw.bb4_crit_edge124 ], [ -1, %brcmf_chip_get_chipcommon.exit.sw.bb4_crit_edge125 ], [ 4, %sw.bb ]
  %base5 = getelementptr inbounds %struct.brcmf_core, ptr %retval.0.i, i32 0, i32 2
  %28 = ptrtoint ptr %base5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base5, align 4
  %add = add i32 %29, 1616
  %ops = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 1
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops, align 4
  %write32 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write32, align 4
  %ctx = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 2
  %34 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctx, align 4
  tail call void %33(ptr noundef %35, i32 noundef %add, i32 noundef 3) #7
  %36 = ptrtoint ptr %base5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base5, align 4
  %add7 = add i32 %37, 1620
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %42 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctx, align 4
  %call10 = tail call i32 %41(ptr noundef %43, i32 noundef %add7) #7
  %and = and i32 %call10, %pmu_cc3_mask.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp11 = icmp ne i32 %and, 0
  br label %cleanup

sw.bb12:                                          ; preds = %brcmf_chip_get_chipcommon.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add13 = add i32 %24, 1288
  %ops14 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 1
  %44 = ptrtoint ptr %ops14 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops14, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %ctx16 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 2
  %48 = ptrtoint ptr %ctx16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctx16, align 4
  %call17 = tail call i32 %47(ptr noundef %49, i32 noundef %add13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp ne i32 %call17, 0
  br label %cleanup

sw.bb19:                                          ; preds = %brcmf_chip_get_chipcommon.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add20 = add i32 %24, 1284
  %ops21 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 1
  %50 = ptrtoint ptr %ops21 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops21, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %ctx23 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 2
  %54 = ptrtoint ptr %ctx23 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ctx23, align 4
  %call24 = tail call i32 %53(ptr noundef %55, i32 noundef %add20) #7
  %and25 = and i32 %call24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %cmp26 = icmp ne i32 %and25, 0
  br label %cleanup

sw.bb27:                                          ; preds = %brcmf_chip_get_chipcommon.exit.sw.bb27_crit_edge, %brcmf_chip_get_chipcommon.exit.sw.bb27_crit_edge126, %brcmf_chip_get_chipcommon.exit.sw.bb27_crit_edge127
  %base28 = getelementptr inbounds %struct.brcmf_core, ptr %retval.0.i, i32 0, i32 2
  %56 = ptrtoint ptr %base28 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %base28, align 4
  %add29 = add i32 %57, 1648
  %ops30 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 1
  %58 = ptrtoint ptr %ops30 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops30, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %ctx32 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 2
  %62 = ptrtoint ptr %ctx32 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctx32, align 4
  %call33 = tail call i32 %61(ptr noundef %63, i32 noundef %add29) #7
  %and34 = and i32 %call33, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %cmp35 = icmp eq i32 %and34, 0
  br label %cleanup

sw.default:                                       ; preds = %brcmf_chip_get_chipcommon.exit
  %base36 = getelementptr inbounds %struct.brcmf_core, ptr %retval.0.i, i32 0, i32 2
  %64 = ptrtoint ptr %base36 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %base36, align 4
  %add37 = add i32 %65, 1612
  %ops38 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 1
  %66 = ptrtoint ptr %ops38 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops38, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %ctx40 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %pub, i32 0, i32 2
  %70 = ptrtoint ptr %ctx40 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctx40, align 4
  %call41 = tail call i32 %69(ptr noundef %71, i32 noundef %add37) #7
  %and42 = and i32 %call41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %cmp43 = icmp eq i32 %and42, 0
  br i1 %cmp43, label %sw.default.cleanup_crit_edge, label %if.end45

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %base36 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %base36, align 4
  %add47 = add i32 %73, 1648
  %74 = ptrtoint ptr %ops38 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops38, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %78 = ptrtoint ptr %ctx40 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ctx40, align 4
  %call51 = tail call i32 %77(ptr noundef %79, i32 noundef %add47) #7
  %and52 = and i32 %call51, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %cmp53 = icmp eq i32 %and52, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %sw.default.cleanup_crit_edge, %sw.bb27, %sw.bb19, %sw.bb12, %sw.bb4, %brcmf_chip_get_pmu.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp53, %if.end45 ], [ %cmp35, %sw.bb27 ], [ %cmp26, %sw.bb19 ], [ %cmp18, %sw.bb12 ], [ %cmp11, %sw.bb4 ], [ false, %brcmf_chip_get_pmu.exit.cleanup_crit_edge ], [ false, %sw.default.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @brcmf_chip_sb_iscoreup(ptr nocapture noundef readonly %core) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.brcmf_core_priv, ptr %core, i32 0, i32 3
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %base = getelementptr inbounds %struct.brcmf_core, ptr %core, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %add1 = add i32 %3, 3992
  %ops = getelementptr inbounds %struct.brcmf_chip_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %ctx = getelementptr inbounds %struct.brcmf_chip_priv, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %call = tail call i32 %7(ptr noundef %9, i32 noundef %add1) #7
  %and = and i32 %call, 33619971
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %and)
  %cmp = icmp eq i32 %and, 65536
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_chip_sb_coredisable(ptr nocapture noundef readonly %core, i32 noundef %prereset, i32 noundef %reset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.brcmf_core_priv, ptr %core, i32 0, i32 3
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %base1 = getelementptr inbounds %struct.brcmf_core, ptr %core, i32 0, i32 2
  %2 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base1, align 4
  %ops = getelementptr inbounds %struct.brcmf_chip_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %ctx = getelementptr inbounds %struct.brcmf_chip_priv, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %add2 = add i32 %3, 3992
  %call = tail call i32 %7(ptr noundef %9, i32 noundef %add2) #7
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  %call8 = tail call i32 %13(ptr noundef %15, i32 noundef %add2) #7
  %and9 = and i32 %call8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp.not = icmp eq i32 %and9, 0
  br i1 %cmp.not, label %if.end.if.end123_crit_edge, label %if.then10

if.end.if.end123_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

if.then10:                                        ; preds = %if.end
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %call16 = tail call i32 %19(ptr noundef %21, i32 noundef %add2) #7
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 4
  %write32 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32, align 4
  %26 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx, align 4
  %or = or i32 %call16, 2
  tail call void %25(ptr noundef %27, i32 noundef %add2, i32 noundef %or) #7
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx, align 4
  %call26 = tail call i32 %31(ptr noundef %33, i32 noundef %add2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #7
  %add31 = add i32 %3, 3996
  %35 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %39 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx, align 4
  %call32197 = tail call i32 %38(ptr noundef %40, i32 noundef %add31) #7
  %and33198 = and i32 %call32197, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33198)
  %tobool34.not199.not = icmp eq i32 %and33198, 0
  br i1 %tobool34.not199.not, label %if.then10.while.end_crit_edge, label %if.then10.while.body_crit_edge

if.then10.while.body_crit_edge:                   ; preds = %if.then10
  br label %while.body

if.then10.while.end_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then10.while.body_crit_edge
  %countdown.0200 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ 100009, %if.then10.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 2147480) #7
  %sub = add nsw i32 %countdown.0200, -10
  %42 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %46 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctx, align 4
  %call32 = tail call i32 %45(ptr noundef %47, i32 noundef %add31) #7
  %and33 = and i32 %call32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp ne i32 %and33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub)
  %cmp35 = icmp ugt i32 %sub, 9
  %or.cond = select i1 %tobool34.not, i1 %cmp35, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then10.while.end_crit_edge
  %48 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %52 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx, align 4
  %call41 = tail call i32 %51(ptr noundef %53, i32 noundef %add31) #7
  %and42 = and i32 %call41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %while.end.if.end45_crit_edge, label %do.body

while.end.if.end45_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

do.body:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_chip_sb_coredisable, ptr noundef nonnull @.str.16) #7
  br label %if.end45

if.end45:                                         ; preds = %do.body, %while.end.if.end45_crit_edge
  %54 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %58 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctx, align 4
  %add50 = add i32 %3, 4088
  %call51 = tail call i32 %57(ptr noundef %59, i32 noundef %add50) #7
  %and52 = and i32 %call51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end45.if.end89_crit_edge, label %if.then54

if.end45.if.end89_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then54:                                        ; preds = %if.end45
  %60 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %64 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctx, align 4
  %add59 = add i32 %3, 3984
  %call60 = tail call i32 %63(ptr noundef %65, i32 noundef %add59) #7
  %or61 = or i32 %call60, 33554432
  %66 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops, align 4
  %write3263 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %write3263 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write3263, align 4
  %70 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctx, align 4
  tail call void %69(ptr noundef %71, i32 noundef %add59, i32 noundef %or61) #7
  %72 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %76 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ctx, align 4
  %call72 = tail call i32 %75(ptr noundef %77, i32 noundef %add59) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748) #7
  %79 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %83 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ctx, align 4
  %call80201 = tail call i32 %82(ptr noundef %84, i32 noundef %add59) #7
  %and81202 = and i32 %call80201, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81202)
  %tobool82.not203.not = icmp eq i32 %and81202, 0
  br i1 %tobool82.not203.not, label %if.then54.if.end89_crit_edge, label %if.then54.while.body86_crit_edge

if.then54.while.body86_crit_edge:                 ; preds = %if.then54
  br label %while.body86

if.then54.if.end89_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

while.body86:                                     ; preds = %while.body86.while.body86_crit_edge, %if.then54.while.body86_crit_edge
  %countdown73.0204 = phi i32 [ %sub87, %while.body86.while.body86_crit_edge ], [ 100009, %if.then54.while.body86_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 2147480) #7
  %sub87 = add nsw i32 %countdown73.0204, -10
  %86 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ops, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %90 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ctx, align 4
  %call80 = tail call i32 %89(ptr noundef %91, i32 noundef %add59) #7
  %and81 = and i32 %call80, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp ne i32 %and81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub87)
  %cmp84 = icmp ugt i32 %sub87, 9
  %or.cond196 = select i1 %tobool82.not, i1 %cmp84, i1 false
  br i1 %or.cond196, label %while.body86.while.body86_crit_edge, label %while.body86.if.end89_crit_edge

while.body86.if.end89_crit_edge:                  ; preds = %while.body86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

while.body86.while.body86_crit_edge:              ; preds = %while.body86
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body86

if.end89:                                         ; preds = %while.body86.if.end89_crit_edge, %if.then54.if.end89_crit_edge, %if.end45.if.end89_crit_edge
  %92 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ops, align 4
  %write3291 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %write3291 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write3291, align 4
  %96 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ctx, align 4
  tail call void %95(ptr noundef %97, i32 noundef %add2, i32 noundef 196611) #7
  %98 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ops, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %102 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ctx, align 4
  %call100 = tail call i32 %101(ptr noundef %103, i32 noundef %add2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 2147480) #7
  %105 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ops, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %109 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ctx, align 4
  %call106 = tail call i32 %108(ptr noundef %110, i32 noundef %add50) #7
  %and107 = and i32 %call106, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end89.if.end123_crit_edge, label %if.then109

if.end89.if.end123_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

if.then109:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ops, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %115 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ctx, align 4
  %add114 = add i32 %3, 3984
  %call115 = tail call i32 %114(ptr noundef %116, i32 noundef %add114) #7
  %and116 = and i32 %call115, -33554433
  %117 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ops, align 4
  %write32118 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %write32118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %write32118, align 4
  %121 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ctx, align 4
  tail call void %120(ptr noundef %122, i32 noundef %add114, i32 noundef %and116) #7
  br label %if.end123

if.end123:                                        ; preds = %if.then109, %if.end89.if.end123_crit_edge, %if.end.if.end123_crit_edge
  %123 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ops, align 4
  %write32125 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %write32125 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write32125, align 4
  %127 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ctx, align 4
  tail call void %126(ptr noundef %128, i32 noundef %add2, i32 noundef 3) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %129(i32 noundef 214748) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_chip_sb_resetcore(ptr nocapture noundef readonly %core, i32 noundef %prereset, i32 noundef %reset, i32 noundef %postreset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.brcmf_core_priv, ptr %core, i32 0, i32 3
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %base1 = getelementptr inbounds %struct.brcmf_core, ptr %core, i32 0, i32 2
  %2 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base1, align 4
  tail call void @brcmf_chip_sb_coredisable(ptr noundef %core, i32 noundef 0, i32 noundef 0)
  %ops = getelementptr inbounds %struct.brcmf_chip_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %write32 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32, align 4
  %ctx = getelementptr inbounds %struct.brcmf_chip_priv, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %add2 = add i32 %3, 3992
  tail call void %7(ptr noundef %9, i32 noundef %add2, i32 noundef 196609) #7
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  %call = tail call i32 %13(ptr noundef %15, i32 noundef %add2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #7
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx, align 4
  %add11 = add i32 %3, 3996
  %call12 = tail call i32 %20(ptr noundef %22, i32 noundef %add11) #7
  %and = and i32 %call12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %write3214 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %write3214 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write3214, align 4
  %27 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx, align 4
  tail call void %26(ptr noundef %28, i32 noundef %add11, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %33 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx, align 4
  %add22 = add i32 %3, 3984
  %call23 = tail call i32 %32(ptr noundef %34, i32 noundef %add22) #7
  %and24 = and i32 %call23, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end.if.end33_crit_edge, label %if.then26

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and27 = and i32 %call23, -393217
  %35 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops, align 4
  %write3229 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %write3229 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write3229, align 4
  %39 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx, align 4
  tail call void %38(ptr noundef %40, i32 noundef %add22, i32 noundef %and27) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then26, %if.end.if.end33_crit_edge
  %41 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops, align 4
  %write3235 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write3235 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write3235, align 4
  %45 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctx, align 4
  tail call void %44(ptr noundef %46, i32 noundef %add2, i32 noundef 196608) #7
  %47 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %51 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctx, align 4
  %call44 = tail call i32 %50(ptr noundef %52, i32 noundef %add2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748) #7
  %54 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops, align 4
  %write3246 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %write3246 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write3246, align 4
  %58 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctx, align 4
  tail call void %57(ptr noundef %59, i32 noundef %add2, i32 noundef 65536) #7
  %60 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %64 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctx, align 4
  %call55 = tail call i32 %63(ptr noundef %65, i32 noundef %add2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @brcmf_chip_ai_iscoreup(ptr nocapture noundef readonly %core) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.brcmf_core_priv, ptr %core, i32 0, i32 3
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %ops = getelementptr inbounds %struct.brcmf_chip_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %ctx = getelementptr inbounds %struct.brcmf_chip_priv, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %wrapbase = getelementptr inbounds %struct.brcmf_core_priv, ptr %core, i32 0, i32 1
  %8 = ptrtoint ptr %wrapbase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wrapbase, align 4
  %add = add i32 %9, 1032
  %call = tail call i32 %5(ptr noundef %7, i32 noundef %add) #7
  %and = and i32 %call, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  %16 = ptrtoint ptr %wrapbase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wrapbase, align 4
  %add5 = add i32 %17, 2048
  %call6 = tail call i32 %13(ptr noundef %15, i32 noundef %add5) #7
  %and7 = and i32 %call6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp8 = icmp eq i32 %and7, 0
  %18 = select i1 %cmp, i1 %cmp8, i1 false
  ret i1 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_chip_ai_coredisable(ptr nocapture noundef readonly %core, i32 noundef %prereset, i32 noundef %reset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.brcmf_core_priv, ptr %core, i32 0, i32 3
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %ops = getelementptr inbounds %struct.brcmf_chip_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %ctx = getelementptr inbounds %struct.brcmf_chip_priv, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %wrapbase = getelementptr inbounds %struct.brcmf_core_priv, ptr %core, i32 0, i32 1
  %8 = ptrtoint ptr %wrapbase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wrapbase, align 4
  %add = add i32 %9, 2048
  %call = tail call i32 %5(ptr noundef %7, i32 noundef %add) #7
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %entry.in_reset_configure_crit_edge

entry.in_reset_configure_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %in_reset_configure

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %write32 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32, align 4
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  %16 = ptrtoint ptr %wrapbase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wrapbase, align 4
  %add4 = add i32 %17, 1032
  %or5 = or i32 %prereset, 3
  tail call void %13(ptr noundef %15, i32 noundef %add4, i32 noundef %or5) #7
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 4
  %24 = ptrtoint ptr %wrapbase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wrapbase, align 4
  %add10 = add i32 %25, 1032
  %call11 = tail call i32 %21(ptr noundef %23, i32 noundef %add10) #7
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops, align 4
  %write3213 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %write3213 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write3213, align 4
  %30 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx, align 4
  %32 = ptrtoint ptr %wrapbase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wrapbase, align 4
  %add16 = add i32 %33, 2048
  tail call void %29(ptr noundef %31, i32 noundef %add16, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %38 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx, align 4
  %40 = ptrtoint ptr %wrapbase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %wrapbase, align 4
  %add2159 = add i32 %41, 2048
  %call2260 = tail call i32 %37(ptr noundef %39, i32 noundef %add2159) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2260)
  %cmp23.not61.not = icmp eq i32 %call2260, 1
  br i1 %cmp23.not61.not, label %if.end.in_reset_configure_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.in_reset_configure_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %in_reset_configure

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %countdown.062 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ 309, %if.end.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 2147480) #7
  %sub = add nsw i32 %countdown.062, -10
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %47 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx, align 4
  %49 = ptrtoint ptr %wrapbase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %wrapbase, align 4
  %add21 = add i32 %50, 2048
  %call22 = tail call i32 %46(ptr noundef %48, i32 noundef %add21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call22)
  %cmp23.not = icmp ne i32 %call22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub)
  %cmp24 = icmp ugt i32 %sub, 9
  %or.cond = select i1 %cmp23.not, i1 %cmp24, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.in_reset_configure_crit_edge

while.body.in_reset_configure_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %in_reset_configure

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

in_reset_configure:                               ; preds = %while.body.in_reset_configure_crit_edge, %if.end.in_reset_configure_crit_edge, %entry.in_reset_configure_crit_edge
  %51 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops, align 4
  %write3226 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %write3226 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write3226, align 4
  %55 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ctx, align 4
  %57 = ptrtoint ptr %wrapbase to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %wrapbase, align 4
  %add29 = add i32 %58, 1032
  %or31 = or i32 %reset, 3
  tail call void %54(ptr noundef %56, i32 noundef %add29, i32 noundef %or31) #7
  %59 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %63 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ctx, align 4
  %65 = ptrtoint ptr %wrapbase to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %wrapbase, align 4
  %add36 = add i32 %66, 1032
  %call37 = tail call i32 %62(ptr noundef %64, i32 noundef %add36) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_chip_ai_resetcore(ptr nocapture noundef readonly %core, i32 noundef %prereset, i32 noundef %reset, i32 noundef %postreset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.brcmf_core_priv, ptr %core, i32 0, i32 3
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %core, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2066, i16 %3)
  %cmp = icmp eq i16 %3, 2066
  br i1 %cmp, label %if.then, label %entry.if.end4.thread_crit_edge

entry.if.end4.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.thread

if.then:                                          ; preds = %entry
  %cores.i = getelementptr inbounds %struct.brcmf_chip_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cores.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn24.i = load ptr, ptr %cores.i, align 4
  %cmp.not26.i = icmp eq ptr %.pn24.i, %cores.i
  br i1 %cmp.not26.i, label %if.then.if.end4.thread_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.if.end4.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn28.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn24.i, %if.then.for.body.i_crit_edge ]
  %unit.addr.027.i = phi i8 [ %unit.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %if.then.for.body.i_crit_edge ]
  %core.029.i = getelementptr i8, ptr %.pn28.i, i32 -12
  %5 = ptrtoint ptr %core.029.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %core.029.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2066, i16 %6)
  %cmp6.i = icmp eq i16 %6, 2066
  br i1 %cmp6.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %dec.i = add i8 %unit.addr.027.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %unit.addr.027.i)
  %cmp9.i = icmp eq i8 %unit.addr.027.i, 0
  br i1 %cmp9.i, label %brcmf_chip_get_d11core.exit, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %unit.addr.1.i = phi i8 [ %dec.i, %if.then.i.for.inc.i_crit_edge ], [ %unit.addr.027.i, %for.body.i.for.inc.i_crit_edge ]
  %7 = ptrtoint ptr %.pn28.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn28.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %cores.i
  br i1 %cmp.not.i, label %for.inc.i.if.end4.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end4.thread_crit_edge:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.thread

brcmf_chip_get_d11core.exit:                      ; preds = %if.then.i
  %core.029.i.le = getelementptr i8, ptr %.pn28.i, i32 -12
  %tobool.not = icmp eq ptr %core.029.i.le, null
  br i1 %tobool.not, label %brcmf_chip_get_d11core.exit.if.end4.thread_crit_edge, label %if.then6

brcmf_chip_get_d11core.exit.if.end4.thread_crit_edge: ; preds = %brcmf_chip_get_d11core.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.thread

if.end4.thread:                                   ; preds = %brcmf_chip_get_d11core.exit.if.end4.thread_crit_edge, %for.inc.i.if.end4.thread_crit_edge, %if.then.if.end4.thread_crit_edge, %entry.if.end4.thread_crit_edge
  tail call void @brcmf_chip_ai_coredisable(ptr noundef %core, i32 noundef %prereset, i32 noundef %reset)
  br label %if.end7

if.then6:                                         ; preds = %brcmf_chip_get_d11core.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_chip_ai_resetcore, ptr noundef nonnull @.str.17) #7
  tail call void @brcmf_chip_ai_coredisable(ptr noundef %core, i32 noundef %prereset, i32 noundef %reset)
  tail call void @brcmf_chip_ai_coredisable(ptr noundef nonnull %core.029.i.le, i32 noundef %prereset, i32 noundef %reset)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.thread
  %tobool5.not110 = phi i1 [ true, %if.end4.thread ], [ false, %if.then6 ]
  %d11priv2.0108 = phi ptr [ null, %if.end4.thread ], [ %core.029.i.le, %if.then6 ]
  %ops = getelementptr inbounds %struct.brcmf_chip_priv, ptr %1, i32 0, i32 1
  %ctx = getelementptr inbounds %struct.brcmf_chip_priv, ptr %1, i32 0, i32 2
  %wrapbase = getelementptr inbounds %struct.brcmf_core_priv, ptr %core, i32 0, i32 1
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %14 = ptrtoint ptr %wrapbase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wrapbase, align 4
  %add112 = add i32 %15, 2048
  %call8113 = tail call i32 %11(ptr noundef %13, i32 noundef %add112) #7
  %and114 = and i32 %call8113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool9.not115 = icmp eq i32 %and114, 0
  br i1 %tobool9.not115, label %if.end7.while.end_crit_edge, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  br label %while.body

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %if.end7.while.body_crit_edge
  %count.0116 = phi i32 [ %inc, %if.end17.while.body_crit_edge ], [ 0, %if.end7.while.body_crit_edge ]
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %write32 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32, align 4
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %22 = ptrtoint ptr %wrapbase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wrapbase, align 4
  %add13 = add i32 %23, 2048
  tail call void %19(ptr noundef %21, i32 noundef %add13, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %count.0116)
  %exitcond = icmp eq i32 %count.0116, 50
  br i1 %exitcond, label %while.body.while.end_crit_edge, label %if.end17

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end17:                                         ; preds = %while.body
  %inc = add nuw nsw i32 %count.0116, 1
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 60, i32 noundef 2) #7
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %28 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx, align 4
  %30 = ptrtoint ptr %wrapbase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wrapbase, align 4
  %add = add i32 %31, 2048
  %call8 = tail call i32 %27(ptr noundef %29, i32 noundef %add) #7
  %and = and i32 %call8, 1
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end17.while.end_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end7.while.end_crit_edge
  br i1 %tobool5.not110, label %while.end.if.end41_crit_edge, label %while.cond20.preheader

while.end.if.end41_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

while.cond20.preheader:                           ; preds = %while.end
  %wrapbase24 = getelementptr inbounds %struct.brcmf_core_priv, ptr %d11priv2.0108, i32 0, i32 1
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %36 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx, align 4
  %38 = ptrtoint ptr %wrapbase24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %wrapbase24, align 4
  %add25122 = add i32 %39, 2048
  %call26123 = tail call i32 %35(ptr noundef %37, i32 noundef %add25122) #7
  %and27124 = and i32 %call26123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27124)
  %tobool28.not125 = icmp eq i32 %and27124, 0
  br i1 %tobool28.not125, label %while.cond20.preheader.if.end41_crit_edge, label %while.cond20.preheader.while.body29_crit_edge

while.cond20.preheader.while.body29_crit_edge:    ; preds = %while.cond20.preheader
  br label %while.body29

while.cond20.preheader.if.end41_crit_edge:        ; preds = %while.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

while.body29:                                     ; preds = %if.end39.while.body29_crit_edge, %while.cond20.preheader.while.body29_crit_edge
  %count.1126 = phi i32 [ %inc35, %if.end39.while.body29_crit_edge ], [ 0, %while.cond20.preheader.while.body29_crit_edge ]
  %40 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops, align 4
  %write3231 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %write3231 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write3231, align 4
  %44 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctx, align 4
  %46 = ptrtoint ptr %wrapbase24 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %wrapbase24, align 4
  %add34 = add i32 %47, 2048
  tail call void %43(ptr noundef %45, i32 noundef %add34, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %count.1126)
  %exitcond128 = icmp eq i32 %count.1126, 50
  br i1 %exitcond128, label %while.body29.if.end41_crit_edge, label %if.end39

while.body29.if.end41_crit_edge:                  ; preds = %while.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.end39:                                         ; preds = %while.body29
  %inc35 = add nuw nsw i32 %count.1126, 1
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 60, i32 noundef 2) #7
  %48 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %52 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx, align 4
  %54 = ptrtoint ptr %wrapbase24 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %wrapbase24, align 4
  %add25 = add i32 %55, 2048
  %call26 = tail call i32 %51(ptr noundef %53, i32 noundef %add25) #7
  %and27 = and i32 %call26, 1
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end39.if.end41_crit_edge, label %if.end39.while.body29_crit_edge

if.end39.while.body29_crit_edge:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body29

if.end39.if.end41_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.end41:                                         ; preds = %if.end39.if.end41_crit_edge, %while.body29.if.end41_crit_edge, %while.cond20.preheader.if.end41_crit_edge, %while.end.if.end41_crit_edge
  %56 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops, align 4
  %write3243 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %write3243 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write3243, align 4
  %60 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ctx, align 4
  %62 = ptrtoint ptr %wrapbase to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %wrapbase, align 4
  %add46 = add i32 %63, 1032
  %or = or i32 %postreset, 1
  tail call void %59(ptr noundef %61, i32 noundef %add46, i32 noundef %or) #7
  %64 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %68 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ctx, align 4
  %70 = ptrtoint ptr %wrapbase to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %wrapbase, align 4
  %add51 = add i32 %71, 1032
  %call52 = tail call i32 %67(ptr noundef %69, i32 noundef %add51) #7
  br i1 %tobool5.not110, label %if.end41.if.end67_crit_edge, label %if.then54

if.end41.if.end67_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then54:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops, align 4
  %write3256 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %write3256 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write3256, align 4
  %76 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ctx, align 4
  %wrapbase58 = getelementptr inbounds %struct.brcmf_core_priv, ptr %d11priv2.0108, i32 0, i32 1
  %78 = ptrtoint ptr %wrapbase58 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %wrapbase58, align 4
  %add59 = add i32 %79, 1032
  tail call void %75(ptr noundef %77, i32 noundef %add59, i32 noundef %or) #7
  %80 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %84 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ctx, align 4
  %86 = ptrtoint ptr %wrapbase58 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %wrapbase58, align 4
  %add65 = add i32 %87, 1032
  %call66 = tail call i32 %83(ptr noundef %85, i32 noundef %add65) #7
  br label %if.end67

if.end67:                                         ; preds = %if.then54, %if.end41.if.end67_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22, !24, !26, !28, !29, !31, !32, !33, !34, !36, !38, !40, !41, !43, !44, !46, !47, !49, !51, !53, !54, !56, !57, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 498, i32 43}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 498, i32 56}
!4 = !{ptr @__func__.brcmf_chip_get_raminfo, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 754, i32 4}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 765, i32 5}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 772, i32 5}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 781, i32 2}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 786, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 791, i32 3}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 1108, i32 6}
!19 = !{ptr @__func__.brcmf_chip_set_passive, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 1344, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__func__.brcmf_chip_set_active, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 1369, i32 2}
!24 = !{ptr @__func__.brcmf_chip_sr_capable, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 1391, i32 2}
!26 = !{ptr @__func__.brcmf_chip_tcm_rambase, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 735, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__func__.brcmf_chip_recognition, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 975, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 980, i32 4}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 1009, i32 3}
!38 = !{ptr @__func__.brcmf_chip_sb_coredisable, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 308, i32 4}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @__func__.brcmf_chip_ai_resetcore, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 447, i32 4}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @__func__.brcmf_chip_cores_check, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 532, i32 3}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 556, i32 3}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 561, i32 3}
!51 = !{ptr @__func__.brcmf_chip_setup, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 1092, i32 2}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 1058, i32 3}
!56 = distinct !{null, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @__func__.brcmf_chip_cm3_set_active, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c", i32 1273, i32 3}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{!"branch_weights", i32 2000, i32 1}
