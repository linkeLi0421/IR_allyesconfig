; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmsmac/rate.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmsmac/rate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.brcms_mcs_info = type { i32, i32, i32, i32, i8, i8 }
%struct.brcms_c_rateset = type { i32, [16 x i8], i8, [16 x i8] }
%struct.legacy_phycfg = type { i32, i8 }
%struct.d11rxhdr = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }

@rate_info = dso_local constant { [109 x i8], [51 x i8] } { [109 x i8] c"\00\00\0A\00\14\00\00\00\00\00\007\8B\00\00\00\00\00\8F\00\00\00n\00\8A\00\00\00\00\00\00\00\00\00\00\00\8E\00\00\00\00\00\00\00\00\00\00\00\89\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\8D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\88\00\00\00\00\00\00\00\00\00\00\00\8C", [51 x i8] zeroinitializer }, align 32
@mcs_table = dso_local constant { [33 x %struct.brcms_mcs_info], [172 x i8] } { [33 x %struct.brcms_mcs_info] [%struct.brcms_mcs_info { i32 6500, i32 13500, i32 7223, i32 15000, i8 0, i8 12 }, %struct.brcms_mcs_info { i32 13000, i32 27000, i32 14445, i32 30000, i8 8, i8 24 }, %struct.brcms_mcs_info { i32 19500, i32 40500, i32 21667, i32 45000, i8 10, i8 36 }, %struct.brcms_mcs_info { i32 26000, i32 54000, i32 28889, i32 60000, i8 16, i8 48 }, %struct.brcms_mcs_info { i32 39000, i32 81000, i32 43334, i32 90000, i8 18, i8 72 }, %struct.brcms_mcs_info { i32 52000, i32 108000, i32 57778, i32 120000, i8 25, i8 96 }, %struct.brcms_mcs_info { i32 58500, i32 121500, i32 65000, i32 135000, i8 26, i8 108 }, %struct.brcms_mcs_info { i32 65000, i32 135000, i32 72223, i32 150000, i8 28, i8 108 }, %struct.brcms_mcs_info { i32 13000, i32 27000, i32 14445, i32 30000, i8 64, i8 12 }, %struct.brcms_mcs_info { i32 26000, i32 54000, i32 28889, i32 60000, i8 72, i8 24 }, %struct.brcms_mcs_info { i32 39000, i32 81000, i32 43334, i32 90000, i8 74, i8 36 }, %struct.brcms_mcs_info { i32 52000, i32 108000, i32 57778, i32 120000, i8 80, i8 48 }, %struct.brcms_mcs_info { i32 78000, i32 162000, i32 86667, i32 180000, i8 82, i8 72 }, %struct.brcms_mcs_info { i32 104000, i32 216000, i32 115556, i32 240000, i8 89, i8 96 }, %struct.brcms_mcs_info { i32 117000, i32 243000, i32 130000, i32 270000, i8 90, i8 108 }, %struct.brcms_mcs_info { i32 130000, i32 270000, i32 144445, i32 300000, i8 92, i8 108 }, %struct.brcms_mcs_info { i32 19500, i32 40500, i32 21667, i32 45000, i8 -128, i8 12 }, %struct.brcms_mcs_info { i32 39000, i32 81000, i32 43334, i32 90000, i8 -120, i8 24 }, %struct.brcms_mcs_info { i32 58500, i32 121500, i32 65000, i32 135000, i8 -118, i8 36 }, %struct.brcms_mcs_info { i32 78000, i32 162000, i32 86667, i32 180000, i8 -112, i8 48 }, %struct.brcms_mcs_info { i32 117000, i32 243000, i32 130000, i32 270000, i8 -110, i8 72 }, %struct.brcms_mcs_info { i32 156000, i32 324000, i32 173334, i32 360000, i8 -103, i8 96 }, %struct.brcms_mcs_info { i32 175500, i32 364500, i32 195000, i32 405000, i8 -102, i8 108 }, %struct.brcms_mcs_info { i32 195000, i32 405000, i32 216667, i32 450000, i8 -101, i8 108 }, %struct.brcms_mcs_info { i32 26000, i32 54000, i32 28889, i32 60000, i8 -64, i8 12 }, %struct.brcms_mcs_info { i32 52000, i32 108000, i32 57778, i32 120000, i8 -56, i8 24 }, %struct.brcms_mcs_info { i32 78000, i32 162000, i32 86667, i32 180000, i8 -54, i8 36 }, %struct.brcms_mcs_info { i32 104000, i32 216000, i32 115556, i32 240000, i8 -48, i8 48 }, %struct.brcms_mcs_info { i32 156000, i32 324000, i32 173334, i32 360000, i8 -46, i8 72 }, %struct.brcms_mcs_info { i32 208000, i32 432000, i32 231112, i32 480000, i8 -39, i8 96 }, %struct.brcms_mcs_info { i32 234000, i32 486000, i32 260000, i32 540000, i8 -38, i8 108 }, %struct.brcms_mcs_info { i32 260000, i32 540000, i32 288889, i32 600000, i8 -37, i8 108 }, %struct.brcms_mcs_info { i32 0, i32 6000, i32 0, i32 6667, i8 0, i8 12 }], [172 x i8] zeroinitializer }, align 32
@cck_ofdm_mimo_rates = dso_local constant { { i32, [16 x i8], i8, <{ i8, i8, i8, i8, [12 x i8] }> }, [56 x i8] } { { i32, [16 x i8], i8, <{ i8, i8, i8, i8, [12 x i8] }> } { i32 12, [16 x i8] c"\82\84\8B\0C\12\96\18$0H`l\00\00\00\00", i8 0, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 -1, i8 -1, i8 -1, i8 -1, [12 x i8] zeroinitializer }> }, [56 x i8] zeroinitializer }, align 32
@ofdm_mimo_rates = dso_local constant { { i32, <{ [8 x i8], [8 x i8] }>, i8, <{ i8, i8, i8, i8, [12 x i8] }> }, [56 x i8] } { { i32, <{ [8 x i8], [8 x i8] }>, i8, <{ i8, i8, i8, i8, [12 x i8] }> } { i32 8, <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\8C\12\98$\B0H`l", [8 x i8] zeroinitializer }>, i8 0, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 -1, i8 -1, i8 -1, i8 -1, [12 x i8] zeroinitializer }> }, [56 x i8] zeroinitializer }, align 32
@cck_ofdm_rates = dso_local constant { %struct.brcms_c_rateset, [56 x i8] } { %struct.brcms_c_rateset { i32 12, [16 x i8] c"\82\84\8B\0C\12\96\18$0H`l\00\00\00\00", i8 0, [16 x i8] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@gphy_legacy_rates = dso_local constant { { i32, <{ i8, i8, i8, i8, [12 x i8] }>, i8, [16 x i8] }, [56 x i8] } { { i32, <{ i8, i8, i8, i8, [12 x i8] }>, i8, [16 x i8] } { i32 4, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 -126, i8 -124, i8 -117, i8 -106, [12 x i8] zeroinitializer }>, i8 0, [16 x i8] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@ofdm_rates = dso_local constant { { i32, <{ [8 x i8], [8 x i8] }>, i8, [16 x i8] }, [56 x i8] } { { i32, <{ [8 x i8], [8 x i8] }>, i8, [16 x i8] } { i32 8, <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\8C\12\98$\B0H`l", [8 x i8] zeroinitializer }>, i8 0, [16 x i8] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@cck_rates = dso_local constant { { i32, <{ i8, i8, i8, i8, [12 x i8] }>, i8, [16 x i8] }, [56 x i8] } { { i32, <{ i8, i8, i8, i8, [12 x i8] }>, i8, [16 x i8] } { i32 4, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 -126, i8 -124, i8 11, i8 22, [12 x i8] zeroinitializer }>, i8 0, [16 x i8] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@legacy_phycfg_table = internal constant { [12 x %struct.legacy_phycfg], [32 x i8] } { [12 x %struct.legacy_phycfg] [%struct.legacy_phycfg { i32 2, i8 0 }, %struct.legacy_phycfg { i32 4, i8 8 }, %struct.legacy_phycfg { i32 11, i8 16 }, %struct.legacy_phycfg { i32 22, i8 24 }, %struct.legacy_phycfg { i32 12, i8 0 }, %struct.legacy_phycfg { i32 18, i8 2 }, %struct.legacy_phycfg { i32 24, i8 8 }, %struct.legacy_phycfg { i32 36, i8 10 }, %struct.legacy_phycfg { i32 48, i8 16 }, %struct.legacy_phycfg { i32 72, i8 18 }, %struct.legacy_phycfg { i32 96, i8 25 }, %struct.legacy_phycfg { i32 108, i8 26 }], [32 x i8] zeroinitializer }, align 32
@ofdm_40bw_mimo_rates = internal constant { { i32, <{ [8 x i8], [8 x i8] }>, i8, <{ i8, i8, i8, i8, i8, [11 x i8] }> }, [56 x i8] } { { i32, <{ [8 x i8], [8 x i8] }>, i8, <{ i8, i8, i8, i8, i8, [11 x i8] }> } { i32 8, <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\8C\12\98$\B0H`l", [8 x i8] zeroinitializer }>, i8 0, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 -1, i8 -1, i8 -1, i8 -1, i8 1, [11 x i8] zeroinitializer }> }, [56 x i8] zeroinitializer }, align 32
@cck_ofdm_40bw_mimo_rates = internal constant { { i32, [16 x i8], i8, <{ i8, i8, i8, i8, i8, [11 x i8] }> }, [56 x i8] } { { i32, [16 x i8], i8, <{ i8, i8, i8, i8, i8, [11 x i8] }> } { i32 12, [16 x i8] c"\82\84\8B\0C\12\96\18$0H`l\00\00\00\00", i8 0, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 -1, i8 -1, i8 -1, i8 -1, i8 1, [11 x i8] zeroinitializer }> }, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 3, i64 0, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.7 = internal global [14 x i64] [i64 12, i64 32, i64 2, i64 4, i64 11, i64 12, i64 18, i64 22, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@___asan_gen_.8 = private unnamed_addr constant [10 x i8] c"rate_info\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 28, i32 10 }
@___asan_gen_.11 = private unnamed_addr constant [10 x i8] c"mcs_table\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 44, i32 29 }
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"cck_ofdm_mimo_rates\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 190, i32 30 }
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"ofdm_mimo_rates\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 201, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"cck_ofdm_rates\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 231, i32 30 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"gphy_legacy_rates\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 242, i32 30 }
@___asan_gen_.26 = private unnamed_addr constant [11 x i8] c"ofdm_rates\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 251, i32 30 }
@___asan_gen_.29 = private unnamed_addr constant [10 x i8] c"cck_rates\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 260, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant [20 x i8] c"legacy_phycfg_table\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 165, i32 15 }
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"ofdm_40bw_mimo_rates\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 222, i32 37 }
@___asan_gen_.38 = private unnamed_addr constant [25 x i8] c"cck_ofdm_40bw_mimo_rates\00", align 1
@___asan_gen_.39 = private constant [59 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/rate.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 211, i32 37 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @rate_info, ptr @mcs_table, ptr @cck_ofdm_mimo_rates, ptr @ofdm_mimo_rates, ptr @cck_ofdm_rates, ptr @gphy_legacy_rates, ptr @ofdm_rates, ptr @cck_rates, ptr @legacy_phycfg_table, ptr @ofdm_40bw_mimo_rates, ptr @cck_ofdm_40bw_mimo_rates], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rate_info to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs_table to i32), i32 660, i32 832, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cck_ofdm_mimo_rates to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ofdm_mimo_rates to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cck_ofdm_rates to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gphy_legacy_rates to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ofdm_rates to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cck_rates to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_phycfg_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ofdm_40bw_mimo_rates to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cck_ofdm_40bw_mimo_rates to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @brcms_c_rateset_mcs_upd(ptr nocapture noundef writeonly %rs, i8 noundef zeroext %txstreams) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %txstreams)
  %cmp4 = icmp ult i8 %txstreams, 4
  br i1 %cmp4, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %txstreams to i32
  %0 = add nuw nsw i32 %conv, 21
  %uglygep = getelementptr i8, ptr %rs, i32 %0
  %1 = sub nuw nsw i32 4, %conv
  %2 = call ptr @memset(ptr %uglygep, i32 0, i32 %1)
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @brcms_c_rate_hwrs_filter_sort_validate(ptr nocapture noundef %rs, ptr nocapture noundef readonly %hw_rs, i1 noundef zeroext %check_brate, i8 zeroext %txstreams) local_unnamed_addr #2 align 64 {
entry:
  %rateset = alloca [109 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 109, ptr nonnull %rateset) #9
  %0 = call ptr @memset(ptr %rateset, i32 0, i32 109)
  %1 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp85.not = icmp eq i32 %2, 0
  br i1 %cmp85.not, label %entry.for.cond14.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond14.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.inc.for.cond14.preheader_crit_edge, %entry.for.cond14.preheader_crit_edge
  %3 = ptrtoint ptr %hw_rs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_rs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1687.not = icmp eq i32 %4, 0
  br i1 %cmp1687.not, label %for.cond14.preheader.for.end35_crit_edge, label %for.cond14.preheader.for.body18_crit_edge

for.cond14.preheader.for.body18_crit_edge:        ; preds = %for.cond14.preheader
  br label %for.body18

for.cond14.preheader.for.end35_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end35

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.086 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.brcms_c_rateset, ptr %rs, i32 0, i32 1, i32 %i.086
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = and i8 %6, 127
  %conv3 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %7)
  %cmp4 = icmp ugt i8 %7, 108
  br i1 %cmp4, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx6 = getelementptr [109 x i8], ptr @rate_info, i32 0, i32 %conv3
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp8 = icmp eq i8 %9, 0
  br i1 %cmp8, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx13 = getelementptr [109 x i8], ptr %rateset, i32 0, i32 %conv3
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %6, ptr %arrayidx13, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.inc.for.cond14.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.cond14.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond14.preheader

for.body18:                                       ; preds = %for.inc33.for.body18_crit_edge, %for.cond14.preheader.for.body18_crit_edge
  %i.189 = phi i32 [ %inc34, %for.inc33.for.body18_crit_edge ], [ 0, %for.cond14.preheader.for.body18_crit_edge ]
  %count.088 = phi i32 [ %count.1, %for.inc33.for.body18_crit_edge ], [ 0, %for.cond14.preheader.for.body18_crit_edge ]
  %arrayidx20 = getelementptr %struct.brcms_c_rateset, ptr %hw_rs, i32 0, i32 1, i32 %i.189
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx20, align 1
  %13 = and i8 %12, 127
  %idxprom24 = zext i8 %13 to i32
  %arrayidx25 = getelementptr [109 x i8], ptr %rateset, i32 0, i32 %idxprom24
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %for.body18.for.inc33_crit_edge, label %if.then26

for.body18.for.inc33_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc33

if.then26:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  %inc30 = add i32 %count.088, 1
  %arrayidx31 = getelementptr %struct.brcms_c_rateset, ptr %rs, i32 0, i32 1, i32 %count.088
  %16 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx31, align 1
  br label %for.inc33

for.inc33:                                        ; preds = %if.then26, %for.body18.for.inc33_crit_edge
  %count.1 = phi i32 [ %inc30, %if.then26 ], [ %count.088, %for.body18.for.inc33_crit_edge ]
  %inc34 = add nuw i32 %i.189, 1
  %17 = ptrtoint ptr %hw_rs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw_rs, align 4
  %cmp16 = icmp ult i32 %inc34, %18
  br i1 %cmp16, label %for.inc33.for.body18_crit_edge, label %for.inc33.for.end35_crit_edge

for.inc33.for.end35_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end35

for.inc33.for.body18_crit_edge:                   ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body18

for.end35:                                        ; preds = %for.inc33.for.end35_crit_edge, %for.cond14.preheader.for.end35_crit_edge
  %count.0.lcssa = phi i32 [ 0, %for.cond14.preheader.for.end35_crit_edge ], [ %count.1, %for.inc33.for.end35_crit_edge ]
  %19 = ptrtoint ptr %rs to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %count.0.lcssa, ptr %rs, align 4
  %arrayidx41 = getelementptr %struct.brcms_c_rateset, ptr %rs, i32 0, i32 3, i32 0
  %20 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx41, align 1
  %arrayidx44 = getelementptr %struct.brcms_c_rateset, ptr %hw_rs, i32 0, i32 3, i32 0
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx44, align 1
  %and4684 = and i8 %23, %21
  store i8 %and4684, ptr %arrayidx41, align 1
  %arrayidx41.1 = getelementptr %struct.brcms_c_rateset, ptr %rs, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx41.1, align 1
  %arrayidx44.1 = getelementptr %struct.brcms_c_rateset, ptr %hw_rs, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx44.1, align 1
  %and4684.1 = and i8 %27, %25
  store i8 %and4684.1, ptr %arrayidx41.1, align 1
  %arrayidx41.2 = getelementptr %struct.brcms_c_rateset, ptr %rs, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %arrayidx41.2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx41.2, align 1
  %arrayidx44.2 = getelementptr %struct.brcms_c_rateset, ptr %hw_rs, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %arrayidx44.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx44.2, align 1
  %and4684.2 = and i8 %31, %29
  store i8 %and4684.2, ptr %arrayidx41.2, align 1
  %arrayidx41.3 = getelementptr %struct.brcms_c_rateset, ptr %rs, i32 0, i32 3, i32 3
  %32 = ptrtoint ptr %arrayidx41.3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx41.3, align 1
  %arrayidx44.3 = getelementptr %struct.brcms_c_rateset, ptr %hw_rs, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %arrayidx44.3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx44.3, align 1
  %and4684.3 = and i8 %35, %33
  store i8 %and4684.3, ptr %arrayidx41.3, align 1
  %arrayidx41.4 = getelementptr %struct.brcms_c_rateset, ptr %rs, i32 0, i32 3, i32 4
  %36 = ptrtoint ptr %arrayidx41.4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx41.4, align 1
  %arrayidx44.4 = getelementptr %struct.brcms_c_rateset, ptr %hw_rs, i32 0, i32 3, i32 4
  %38 = ptrtoint ptr %arrayidx44.4 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx44.4, align 1
  %and4684.4 = and i8 %39, %37
  store i8 %and4684.4, ptr %arrayidx41.4, align 1
  %arrayidx41.5 = getelementptr %struct.brcms_c_rateset, ptr %rs, i32 0, i32 3, i32 5
  %40 = ptrtoint ptr %arrayidx41.5 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx41.5, align 1
  %arrayidx44.5 = getelementptr %struct.brcms_c_rateset, ptr %hw_rs, i32 0, i32 3, i32 5
  %42 = ptrtoint ptr %arrayidx44.5 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx44.5, align 1
  %and4684.5 = and i8 %43, %41
  store i8 %and4684.5, ptr %arrayidx41.5, align 1
  %arrayidx41.6 = getelementptr %struct.brcms_c_rateset, ptr %rs, i32 0, i32 3, i32 6
  %44 = ptrtoint ptr %arrayidx41.6 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx41.6, align 1
  %arrayidx44.6 = getelementptr %struct.brcms_c_rateset, ptr %hw_rs, i32 0, i32 3, i32 6
  %46 = ptrtoint ptr %arrayidx44.6 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx44.6, align 1
  %and4684.6 = and i8 %47, %45
  store i8 %and4684.6, ptr %arrayidx41.6, align 1
  %arrayidx41.7 = getelementptr %struct.brcms_c_rateset, ptr %rs, i32 0, i32 3, i32 7
  %48 = ptrtoint ptr %arrayidx41.7 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx41.7, align 1
  %arrayidx44.7 = getelementptr %struct.brcms_c_rateset, ptr %hw_rs, i32 0, i32 3, i32 7
  %50 = ptrtoint ptr %arrayidx44.7 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx44.7, align 1
  %and4684.7 = and i8 %51, %49
  store i8 %and4684.7, ptr %arrayidx41.7, align 1
  %arrayidx41.8 = getelementptr %struct.brcms_c_rateset, ptr %rs, i32 0, i32 3, i32 8
  %52 = ptrtoint ptr %arrayidx41.8 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx41.8, align 1
  %arrayidx44.8 = getelementptr %struct.brcms_c_rateset, ptr %hw_rs, i32 0, i32 3, i32 8
  %54 = ptrtoint ptr %arrayidx44.8 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx44.8, align 1
  %and4684.8 = and i8 %55, %53
  store i8 %and4684.8, ptr %arrayidx41.8, align 1
  %arrayidx41.9 = getelementptr %struct.brcms_c_rateset, ptr %rs, i32 0, i32 3, i32 9
  %56 = ptrtoint ptr %arrayidx41.9 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx41.9, align 1
  %arrayidx44.9 = getelementptr %struct.brcms_c_rateset, ptr %hw_rs, i32 0, i32 3, i32 9
  %58 = ptrtoint ptr %arrayidx44.9 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx44.9, align 1
  %and4684.9 = and i8 %59, %57
  store i8 %and4684.9, ptr %arrayidx41.9, align 1
  %arrayidx41.10 = getelementptr %struct.brcms_c_rateset, ptr %rs, i32 0, i32 3, i32 10
  %60 = ptrtoint ptr %arrayidx41.10 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx41.10, align 1
  %arrayidx44.10 = getelementptr %struct.brcms_c_rateset, ptr %hw_rs, i32 0, i32 3, i32 10
  %62 = ptrtoint ptr %arrayidx44.10 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx44.10, align 1
  %and4684.10 = and i8 %63, %61
  store i8 %and4684.10, ptr %arrayidx41.10, align 1
  %arrayidx41.11 = getelementptr %struct.brcms_c_rateset, ptr %rs, i32 0, i32 3, i32 11
  %64 = ptrtoint ptr %arrayidx41.11 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx41.11, align 1
  %arrayidx44.11 = getelementptr %struct.brcms_c_rateset, ptr %hw_rs, i32 0, i32 3, i32 11
  %66 = ptrtoint ptr %arrayidx44.11 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx44.11, align 1
  %and4684.11 = and i8 %67, %65
  store i8 %and4684.11, ptr %arrayidx41.11, align 1
  %arrayidx41.12 = getelementptr %struct.brcms_c_rateset, ptr %rs, i32 0, i32 3, i32 12
  %68 = ptrtoint ptr %arrayidx41.12 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx41.12, align 1
  %arrayidx44.12 = getelementptr %struct.brcms_c_rateset, ptr %hw_rs, i32 0, i32 3, i32 12
  %70 = ptrtoint ptr %arrayidx44.12 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx44.12, align 1
  %and4684.12 = and i8 %71, %69
  store i8 %and4684.12, ptr %arrayidx41.12, align 1
  %arrayidx41.13 = getelementptr %struct.brcms_c_rateset, ptr %rs, i32 0, i32 3, i32 13
  %72 = ptrtoint ptr %arrayidx41.13 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx41.13, align 1
  %arrayidx44.13 = getelementptr %struct.brcms_c_rateset, ptr %hw_rs, i32 0, i32 3, i32 13
  %74 = ptrtoint ptr %arrayidx44.13 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx44.13, align 1
  %and4684.13 = and i8 %75, %73
  store i8 %and4684.13, ptr %arrayidx41.13, align 1
  %arrayidx41.14 = getelementptr %struct.brcms_c_rateset, ptr %rs, i32 0, i32 3, i32 14
  %76 = ptrtoint ptr %arrayidx41.14 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx41.14, align 1
  %arrayidx44.14 = getelementptr %struct.brcms_c_rateset, ptr %hw_rs, i32 0, i32 3, i32 14
  %78 = ptrtoint ptr %arrayidx44.14 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx44.14, align 1
  %and4684.14 = and i8 %79, %77
  store i8 %and4684.14, ptr %arrayidx41.14, align 1
  %arrayidx41.15 = getelementptr %struct.brcms_c_rateset, ptr %rs, i32 0, i32 3, i32 15
  %80 = ptrtoint ptr %arrayidx41.15 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx41.15, align 1
  %arrayidx44.15 = getelementptr %struct.brcms_c_rateset, ptr %hw_rs, i32 0, i32 3, i32 15
  %82 = ptrtoint ptr %arrayidx44.15 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx44.15, align 1
  %and4684.15 = and i8 %83, %81
  store i8 %and4684.15, ptr %arrayidx41.15, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.lcssa)
  %tobool.not.i = icmp eq i32 %count.0.lcssa, 0
  %check_brate.not.i = xor i1 %check_brate, true
  %brmerge.i = or i1 %tobool.not.i, %check_brate.not.i
  br i1 %brmerge.i, label %for.end35.brcms_c_rateset_valid.exit_crit_edge, label %for.end35.for.body.i_crit_edge

for.end35.for.body.i_crit_edge:                   ; preds = %for.end35
  br label %for.body.i

for.end35.brcms_c_rateset_valid.exit_crit_edge:   ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = xor i1 %tobool.not.i, true
  br label %brcms_c_rateset_valid.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end35.for.body.i_crit_edge
  %idx.013.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.end35.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.brcms_c_rateset, ptr %rs, i32 0, i32 1, i32 %idx.013.i
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool5.not.i = icmp slt i8 %85, 0
  %inc.i = add nuw i32 %idx.013.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %count.0.lcssa)
  %exitcond.not.i = icmp eq i32 %inc.i, %count.0.lcssa
  %or.cond.i = select i1 %tobool5.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %for.body.i.brcms_c_rateset_valid.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.brcms_c_rateset_valid.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcms_c_rateset_valid.exit

brcms_c_rateset_valid.exit:                       ; preds = %for.body.i.brcms_c_rateset_valid.exit_crit_edge, %for.end35.brcms_c_rateset_valid.exit_crit_edge
  %retval.0.i.pre-phi = phi i1 [ %.pre, %for.end35.brcms_c_rateset_valid.exit_crit_edge ], [ %tobool5.not.i, %for.body.i.brcms_c_rateset_valid.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 109, ptr nonnull %rateset) #9
  ret i1 %retval.0.i.pre-phi
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcms_c_compute_rspec(ptr nocapture noundef readonly %rxh, ptr nocapture noundef readonly %plcp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %RxChan = getelementptr inbounds %struct.d11rxhdr, ptr %rxh, i32 0, i32 11
  %0 = ptrtoint ptr %RxChan to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %RxChan, align 1
  %trunc = trunc i16 %1 to i3
  %2 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i3 %trunc, label %lor.lhs.false34 [
    i3 -4, label %entry.if.then_crit_edge
    i3 -2, label %entry.if.then_crit_edge69
    i3 -1, label %entry.if.then_crit_edge70
    i3 0, label %entry.if.then39_crit_edge
  ]

entry.if.then39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

entry.if.then_crit_edge70:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge69:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge69, %entry.if.then_crit_edge70
  %PhyRxStatus_0 = getelementptr inbounds %struct.d11rxhdr, ptr %rxh, i32 0, i32 2
  %3 = ptrtoint ptr %PhyRxStatus_0 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %PhyRxStatus_0, align 1
  %5 = and i16 %4, 3
  %and11 = zext i16 %5 to i32
  %6 = zext i32 %and11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %and11, label %if.then.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
    i32 2, label %sw.bb16
    i32 3, label %if.then.sw.epilog_crit_edge
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %plcp to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %plcp, align 1
  %9 = udiv i8 %8, 5
  %conv12 = zext i8 %9 to i32
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %plcp to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %plcp, align 1
  %call.i = tail call ptr @wlc_phy_get_ofdm_rate_lookup() #9
  %12 = and i8 %11, 7
  %and.i = zext i8 %12 to i32
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %and.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %conv15 = zext i8 %14 to i32
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %plcp to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %plcp, align 1
  %conv18 = zext i8 %16 to i32
  %and19 = and i32 %conv18, 127
  %and22 = and i32 %conv18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not = icmp eq i32 %and22, 0
  %spec.select.v = select i1 %tobool.not, i32 134217728, i32 134218752
  %spec.select = or i32 %spec.select.v, %and19
  br label %sw.epilog

if.then.unreachabledefault:                       ; preds = %if.then
  unreachable

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb13, %sw.bb, %if.then.sw.epilog_crit_edge
  %rspec.0 = phi i32 [ 512, %if.then.sw.epilog_crit_edge ], [ %conv15, %sw.bb13 ], [ %conv12, %sw.bb ], [ %spec.select, %sw.bb16 ]
  %arrayidx27 = getelementptr i8, ptr %plcp, i32 3
  %17 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.i = icmp slt i8 %18, 0
  %or30 = or i32 %rspec.0, 8388608
  %spec.select65 = select i1 %cmp.i, i32 %or30, i32 %rspec.0
  br label %if.end49

lor.lhs.false34:                                  ; preds = %entry
  %PhyRxStatus_035 = getelementptr inbounds %struct.d11rxhdr, ptr %rxh, i32 0, i32 2
  %19 = ptrtoint ptr %PhyRxStatus_035 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %PhyRxStatus_035, align 1
  %21 = and i16 %20, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool38.not = icmp eq i16 %21, 0
  br i1 %tobool38.not, label %if.else44, label %lor.lhs.false34.if.then39_crit_edge

lor.lhs.false34.if.then39_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

if.then39:                                        ; preds = %lor.lhs.false34.if.then39_crit_edge, %entry.if.then39_crit_edge
  %22 = ptrtoint ptr %plcp to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %plcp, align 1
  %call.i66 = tail call ptr @wlc_phy_get_ofdm_rate_lookup() #9
  %24 = and i8 %23, 7
  %and.i67 = zext i8 %24 to i32
  %arrayidx.i68 = getelementptr i8, ptr %call.i66, i32 %and.i67
  %25 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i68, align 1
  %conv43 = zext i8 %26 to i32
  br label %if.end49

if.else44:                                        ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %plcp to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %plcp, align 1
  %29 = udiv i8 %28, 5
  %conv47 = zext i8 %29 to i32
  br label %if.end49

if.end49:                                         ; preds = %if.else44, %if.then39, %sw.epilog
  %rspec.1 = phi i32 [ %conv43, %if.then39 ], [ %conv47, %if.else44 ], [ %spec.select65, %sw.epilog ]
  ret i32 %rspec.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @brcms_c_rateset_copy(ptr nocapture noundef readonly %src, ptr nocapture noundef writeonly %dst) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %dst, ptr %src, i32 40)
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_c_rateset_filter(ptr nocapture noundef readonly %src, ptr nocapture noundef writeonly %dst, i1 noundef zeroext %basic_only, i8 noundef zeroext %rates, i32 noundef %xmask, i1 noundef zeroext %mcsallow) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp57.not = icmp eq i32 %1, 0
  br i1 %cmp57.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = trunc i32 %xmask to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %count.059 = phi i32 [ 0, %for.body.lr.ph ], [ %count.1, %for.inc.for.body_crit_edge ]
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc27, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.brcms_c_rateset, ptr %src, i32 0, i32 1, i32 %i.058
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %or.cond = select i1 %basic_only, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = zext i8 %rates to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %rates, label %if.end.if.end22_crit_edge [
    i8 1, label %land.lhs.true9
    i8 2, label %land.lhs.true17
  ]

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true9:                                   ; preds = %if.end
  %and10 = and i32 %conv, 127
  %arrayidx.i = getelementptr [0 x i8], ptr @rate_info, i32 0, i32 %and10
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i = icmp slt i8 %7, 0
  br i1 %tobool.i, label %land.lhs.true9.for.inc_crit_edge, label %land.lhs.true9.if.end22_crit_edge

land.lhs.true9.if.end22_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true9.for.inc_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true17:                                  ; preds = %if.end
  %and18 = and i32 %conv, 127
  %8 = zext i32 %and18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %and18, label %land.lhs.true17.if.end22_crit_edge [
    i32 2, label %land.lhs.true17.for.inc_crit_edge
    i32 4, label %land.lhs.true17.for.inc_crit_edge61
    i32 11, label %land.lhs.true17.for.inc_crit_edge62
    i32 22, label %land.lhs.true17.for.inc_crit_edge63
  ]

land.lhs.true17.for.inc_crit_edge63:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true17.for.inc_crit_edge62:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true17.for.inc_crit_edge61:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true17.if.end22_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true17.if.end22_crit_edge, %land.lhs.true9.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %conv24 = and i8 %4, %2
  %inc = add i32 %count.059, 1
  %arrayidx26 = getelementptr %struct.brcms_c_rateset, ptr %dst, i32 0, i32 1, i32 %count.059
  %9 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv24, ptr %arrayidx26, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end22, %land.lhs.true17.for.inc_crit_edge, %land.lhs.true17.for.inc_crit_edge61, %land.lhs.true17.for.inc_crit_edge62, %land.lhs.true17.for.inc_crit_edge63, %land.lhs.true9.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %count.1 = phi i32 [ %count.059, %land.lhs.true9.for.inc_crit_edge ], [ %inc, %if.end22 ], [ %count.059, %for.body.for.inc_crit_edge ], [ %count.059, %land.lhs.true17.for.inc_crit_edge ], [ %count.059, %land.lhs.true17.for.inc_crit_edge61 ], [ %count.059, %land.lhs.true17.for.inc_crit_edge62 ], [ %count.059, %land.lhs.true17.for.inc_crit_edge63 ]
  %inc27 = add nuw i32 %i.058, 1
  %10 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %src, align 4
  %cmp = icmp ult i32 %inc27, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %count.1, %for.inc.for.end_crit_edge ]
  %12 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %count.0.lcssa, ptr %dst, align 4
  %htphy_membership = getelementptr inbounds %struct.brcms_c_rateset, ptr %src, i32 0, i32 2
  %13 = ptrtoint ptr %htphy_membership to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %htphy_membership, align 4
  %htphy_membership29 = getelementptr inbounds %struct.brcms_c_rateset, ptr %dst, i32 0, i32 2
  %15 = ptrtoint ptr %htphy_membership29 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %htphy_membership29, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rates)
  %cmp34.not = icmp ne i8 %rates, 1
  %16 = and i1 %cmp34.not, %mcsallow
  br i1 %16, label %if.then36, label %if.else

if.then36:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %mcs = getelementptr inbounds %struct.brcms_c_rateset, ptr %dst, i32 0, i32 3
  %mcs38 = getelementptr inbounds %struct.brcms_c_rateset, ptr %src, i32 0, i32 3
  %17 = call ptr @memcpy(ptr %mcs, ptr %mcs38, i32 16)
  br label %if.end40

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %uglygep.i = getelementptr i8, ptr %dst, i32 21
  %18 = call ptr @memset(ptr %uglygep.i, i32 0, i32 16)
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then36
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @brcms_c_rateset_mcs_clear(ptr nocapture noundef writeonly %rateset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %uglygep = getelementptr i8, ptr %rateset, i32 21
  %0 = call ptr @memset(ptr %uglygep, i32 0, i32 16)
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_c_rateset_default(ptr nocapture noundef %rs_tgt, ptr noundef readonly %rs_hw, i32 noundef %phy_type, i32 noundef %bandtype, i1 noundef zeroext %cck_only, i32 noundef %rate_mask, i1 noundef zeroext %mcsallow, i8 noundef zeroext %bw, i8 noundef zeroext %txstreams) local_unnamed_addr #5 align 64 {
entry:
  %rs_sel = alloca %struct.brcms_c_rateset, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %rs_sel) #9
  %0 = zext i32 %phy_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %phy_type, label %entry.if.end14_crit_edge [
    i32 4, label %entry.if.then_crit_edge
    i32 8, label %entry.if.then_crit_edge37
    i32 6, label %entry.if.then_crit_edge38
  ]

entry.if.then_crit_edge38:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge37:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge37, %entry.if.then_crit_edge38
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bandtype)
  %cmp5 = icmp eq i32 %bandtype, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %bw)
  %cmp7 = icmp eq i8 %bw, 20
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %cond = select i1 %cmp7, ptr @ofdm_mimo_rates, ptr @ofdm_40bw_mimo_rates
  br label %if.end14

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %cond12 = select i1 %cmp7, ptr @cck_ofdm_mimo_rates, ptr @cck_ofdm_40bw_mimo_rates
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then6, %entry.if.end14_crit_edge
  %rs_dflt.0 = phi ptr [ %cond, %if.then6 ], [ %cond12, %if.else ], [ @cck_rates, %entry.if.end14_crit_edge ]
  %1 = call ptr @memcpy(ptr %rs_sel, ptr %rs_dflt.0, i32 40)
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %txstreams)
  %cmp4.i = icmp ult i8 %txstreams, 4
  br i1 %cmp4.i, label %for.body.preheader.i, label %if.end14.brcms_c_rateset_mcs_upd.exit_crit_edge

if.end14.brcms_c_rateset_mcs_upd.exit_crit_edge:  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcms_c_rateset_mcs_upd.exit

for.body.preheader.i:                             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %txstreams to i32
  %2 = add nuw nsw i32 %conv.i, 21
  %uglygep.i = getelementptr i8, ptr %rs_sel, i32 %2
  %3 = sub nuw nsw i32 4, %conv.i
  %4 = call ptr @memset(ptr %uglygep.i, i32 0, i32 %3)
  br label %brcms_c_rateset_mcs_upd.exit

brcms_c_rateset_mcs_upd.exit:                     ; preds = %for.body.preheader.i, %if.end14.brcms_c_rateset_mcs_upd.exit_crit_edge
  %5 = ptrtoint ptr %rs_sel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rs_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp57.not.i = icmp eq i32 %6, 0
  br i1 %cmp57.not.i, label %brcms_c_rateset_mcs_upd.exit.for.end.i_crit_edge, label %for.body.lr.ph.i

brcms_c_rateset_mcs_upd.exit.for.end.i_crit_edge: ; preds = %brcms_c_rateset_mcs_upd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %brcms_c_rateset_mcs_upd.exit
  %7 = trunc i32 %rate_mask to i8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count.059.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %count.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.058.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc27.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.brcms_c_rateset, ptr %rs_sel, i32 0, i32 1, i32 %i.058.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  br i1 %cck_only, label %land.lhs.true9.i, label %for.body.i.if.end22.i_crit_edge

for.body.i.if.end22.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

land.lhs.true9.i:                                 ; preds = %for.body.i
  %10 = and i8 %9, 127
  %and10.i = zext i8 %10 to i32
  %arrayidx.i.i = getelementptr [0 x i8], ptr @rate_info, i32 0, i32 %and10.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.i.i = icmp slt i8 %12, 0
  br i1 %tobool.i.i, label %land.lhs.true9.i.for.inc.i_crit_edge, label %land.lhs.true9.i.if.end22.i_crit_edge

land.lhs.true9.i.if.end22.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

land.lhs.true9.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end22.i:                                       ; preds = %land.lhs.true9.i.if.end22.i_crit_edge, %for.body.i.if.end22.i_crit_edge
  %conv24.i = and i8 %9, %7
  %inc.i = add i32 %count.059.i, 1
  %arrayidx26.i = getelementptr %struct.brcms_c_rateset, ptr %rs_tgt, i32 0, i32 1, i32 %count.059.i
  %13 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv24.i, ptr %arrayidx26.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end22.i, %land.lhs.true9.i.for.inc.i_crit_edge
  %count.1.i = phi i32 [ %count.059.i, %land.lhs.true9.i.for.inc.i_crit_edge ], [ %inc.i, %if.end22.i ]
  %inc27.i = add nuw i32 %i.058.i, 1
  %exitcond.not = icmp eq i32 %inc27.i, %6
  br i1 %exitcond.not, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %brcms_c_rateset_mcs_upd.exit.for.end.i_crit_edge
  %count.0.lcssa.i = phi i32 [ 0, %brcms_c_rateset_mcs_upd.exit.for.end.i_crit_edge ], [ %count.1.i, %for.inc.i.for.end.i_crit_edge ]
  %14 = ptrtoint ptr %rs_tgt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %count.0.lcssa.i, ptr %rs_tgt, align 4
  %htphy_membership.i = getelementptr inbounds %struct.brcms_c_rateset, ptr %rs_sel, i32 0, i32 2
  %15 = ptrtoint ptr %htphy_membership.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %htphy_membership.i, align 4
  %htphy_membership29.i = getelementptr inbounds %struct.brcms_c_rateset, ptr %rs_tgt, i32 0, i32 2
  %17 = ptrtoint ptr %htphy_membership29.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %htphy_membership29.i, align 4
  %cmp34.not.i = xor i1 %cck_only, true
  %18 = and i1 %cmp34.not.i, %mcsallow
  br i1 %18, label %if.then36.i, label %if.else.i

if.then36.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %mcs.i = getelementptr inbounds %struct.brcms_c_rateset, ptr %rs_tgt, i32 0, i32 3
  %mcs38.i = getelementptr inbounds %struct.brcms_c_rateset, ptr %rs_sel, i32 0, i32 3
  %19 = call ptr @memcpy(ptr %mcs.i, ptr %mcs38.i, i32 16)
  br label %brcms_c_rateset_filter.exit

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %uglygep.i.i = getelementptr i8, ptr %rs_tgt, i32 21
  %20 = call ptr @memset(ptr %uglygep.i.i, i32 0, i32 16)
  br label %brcms_c_rateset_filter.exit

brcms_c_rateset_filter.exit:                      ; preds = %if.else.i, %if.then36.i
  %tobool.not = icmp eq ptr %rs_hw, null
  %spec.select = select i1 %tobool.not, ptr %rs_dflt.0, ptr %rs_hw
  %call = tail call zeroext i1 @brcms_c_rate_hwrs_filter_sort_validate(ptr noundef %rs_tgt, ptr noundef %spec.select, i1 noundef zeroext false, i8 zeroext undef)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %rs_sel) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local signext i16 @brcms_c_rate_legacy_phyctl(i32 noundef %rate) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %rate, label %entry.cleanup_crit_edge [
    i32 2, label %entry.if.then_crit_edge
    i32 4, label %if.then.fold.split
    i32 11, label %if.then.fold.split9
    i32 22, label %if.then.fold.split10
    i32 12, label %if.then.fold.split11
    i32 18, label %if.then.fold.split12
    i32 24, label %if.then.fold.split13
    i32 36, label %if.then.fold.split14
    i32 48, label %if.then.fold.split15
    i32 72, label %if.then.fold.split16
    i32 96, label %if.then.fold.split17
    i32 108, label %if.then.fold.split18
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then.fold.split9:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then.fold.split10:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split18, %if.then.fold.split17, %if.then.fold.split16, %if.then.fold.split15, %if.then.fold.split14, %if.then.fold.split13, %if.then.fold.split12, %if.then.fold.split11, %if.then.fold.split10, %if.then.fold.split9, %if.then.fold.split, %entry.if.then_crit_edge
  %i.07.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split9 ], [ 3, %if.then.fold.split10 ], [ 4, %if.then.fold.split11 ], [ 5, %if.then.fold.split12 ], [ 6, %if.then.fold.split13 ], [ 7, %if.then.fold.split14 ], [ 8, %if.then.fold.split15 ], [ 9, %if.then.fold.split16 ], [ 10, %if.then.fold.split17 ], [ 11, %if.then.fold.split18 ]
  %tx_phy_ctl3 = getelementptr [12 x %struct.legacy_phycfg], ptr @legacy_phycfg_table, i32 0, i32 %i.07.lcssa, i32 1
  %1 = ptrtoint ptr %tx_phy_ctl3 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tx_phy_ctl3, align 4
  %conv = zext i8 %2 to i16
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %conv, %if.then ], [ -1, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @brcms_c_rateset_mcs_build(ptr nocapture noundef writeonly %rateset, i8 noundef zeroext %txstreams) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mcs = getelementptr inbounds %struct.brcms_c_rateset, ptr %rateset, i32 0, i32 3
  %0 = call ptr @memcpy(ptr %mcs, ptr getelementptr inbounds ({ i32, [16 x i8], i8, <{ i8, i8, i8, i8, [12 x i8] }> }, ptr @cck_ofdm_mimo_rates, i32 0, i32 3, i32 0), i32 16)
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %txstreams)
  %cmp4.i = icmp ult i8 %txstreams, 4
  br i1 %cmp4.i, label %for.body.preheader.i, label %entry.brcms_c_rateset_mcs_upd.exit_crit_edge

entry.brcms_c_rateset_mcs_upd.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcms_c_rateset_mcs_upd.exit

for.body.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %txstreams to i32
  %1 = add nuw nsw i32 %conv.i, 21
  %uglygep.i = getelementptr i8, ptr %rateset, i32 %1
  %2 = sub nuw nsw i32 4, %conv.i
  %3 = call ptr @memset(ptr %uglygep.i, i32 0, i32 %2)
  br label %brcms_c_rateset_mcs_upd.exit

brcms_c_rateset_mcs_upd.exit:                     ; preds = %for.body.preheader.i, %entry.brcms_c_rateset_mcs_upd.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @brcms_c_rateset_bw_mcs_filter(ptr nocapture noundef %rateset, i8 noundef zeroext %bw) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %bw)
  %cmp = icmp eq i8 %bw, 40
  %arrayidx = getelementptr %struct.brcms_c_rateset, ptr %rateset, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = and i8 %1, -2
  %masksel = zext i1 %cmp to i8
  %.sink = or i8 %2, %masksel
  store i8 %.sink, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wlc_phy_get_ofdm_rate_lookup() local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @rate_info, !1, !"rate_info", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/rate.c", i32 28, i32 10}
!2 = !{ptr @mcs_table, !3, !"mcs_table", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/rate.c", i32 44, i32 29}
!4 = !{ptr @cck_ofdm_mimo_rates, !5, !"cck_ofdm_mimo_rates", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/rate.c", i32 190, i32 30}
!6 = !{ptr @ofdm_mimo_rates, !7, !"ofdm_mimo_rates", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/rate.c", i32 201, i32 30}
!8 = !{ptr @cck_ofdm_rates, !9, !"cck_ofdm_rates", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/rate.c", i32 231, i32 30}
!10 = !{ptr @gphy_legacy_rates, !11, !"gphy_legacy_rates", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/rate.c", i32 242, i32 30}
!12 = !{ptr @ofdm_rates, !13, !"ofdm_rates", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/rate.c", i32 251, i32 30}
!14 = !{ptr @cck_rates, !15, !"cck_rates", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/rate.c", i32 260, i32 30}
!16 = !{ptr @ofdm_40bw_mimo_rates, !17, !"ofdm_40bw_mimo_rates", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/rate.c", i32 222, i32 37}
!18 = !{ptr @cck_ofdm_40bw_mimo_rates, !19, !"cck_ofdm_40bw_mimo_rates", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/rate.c", i32 211, i32 37}
!20 = !{ptr @legacy_phycfg_table, !21, !"legacy_phycfg_table", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/rate.c", i32 165, i32 15}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
