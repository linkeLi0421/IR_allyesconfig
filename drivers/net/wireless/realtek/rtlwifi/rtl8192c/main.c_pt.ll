; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192c/main.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192c/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@__UNIQUE_ID_author354 = internal constant [63 x i8] c"rtl8192c_common.author=lizhaoming\09<chaoming_li@realsil.com.cn>\00", section ".modinfo", align 1
@__UNIQUE_ID_author355 = internal constant [61 x i8] c"rtl8192c_common.author=Realtek WlanFAE\09<wlanfae@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author356 = internal constant [54 x i8] c"rtl8192c_common.author=Georgia\09\09<georgia@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author357 = internal constant [57 x i8] c"rtl8192c_common.author=Ziv Huang\09<ziv_huang@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author358 = internal constant [64 x i8] c"rtl8192c_common.author=Larry Finger\09<Larry.Finger@lwfinger.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file359 = internal constant [83 x i8] c"rtl8192c_common.file=drivers/net/wireless/realtek/rtlwifi/rtl8192c/rtl8192c-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license360 = internal constant [28 x i8] c"rtl8192c_common.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description361 = internal constant [69 x i8] c"rtl8192c_common.description=Realtek 8192C/8188C 802.11n PCI wireless\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author354, ptr @__UNIQUE_ID_author355, ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_author357, ptr @__UNIQUE_ID_author358, ptr @__UNIQUE_ID_description361, ptr @__UNIQUE_ID_file359, ptr @__UNIQUE_ID_license360], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__UNIQUE_ID_author354, !1, !"__UNIQUE_ID_author354", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192c/main.c", i32 7, i32 1}
!2 = !{ptr @__UNIQUE_ID_author355, !3, !"__UNIQUE_ID_author355", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192c/main.c", i32 8, i32 1}
!4 = !{ptr @__UNIQUE_ID_author356, !5, !"__UNIQUE_ID_author356", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192c/main.c", i32 9, i32 1}
!6 = !{ptr @__UNIQUE_ID_author357, !7, !"__UNIQUE_ID_author357", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192c/main.c", i32 10, i32 1}
!8 = !{ptr @__UNIQUE_ID_author358, !9, !"__UNIQUE_ID_author358", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192c/main.c", i32 11, i32 1}
!10 = !{ptr @__UNIQUE_ID_file359, !11, !"__UNIQUE_ID_file359", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192c/main.c", i32 12, i32 1}
!12 = !{ptr @__UNIQUE_ID_license360, !11, !"__UNIQUE_ID_license360", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description361, !14, !"__UNIQUE_ID_description361", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192c/main.c", i32 13, i32 1}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
