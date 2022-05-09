; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8723com/main.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8723com/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@__UNIQUE_ID_author354 = internal constant [60 x i8] c"rtl8723_common.author=Realtek WlanFAE\09<wlanfae@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author355 = internal constant [63 x i8] c"rtl8723_common.author=Larry Finger\09<Larry.Finger@lwfinger.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file356 = internal constant [83 x i8] c"rtl8723_common.file=drivers/net/wireless/realtek/rtlwifi/rtl8723com/rtl8723-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license357 = internal constant [27 x i8] c"rtl8723_common.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description358 = internal constant [92 x i8] c"rtl8723_common.description=Realtek RTL8723AE/RTL8723BE 802.11n PCI wireless common routines\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author354, ptr @__UNIQUE_ID_author355, ptr @__UNIQUE_ID_description358, ptr @__UNIQUE_ID_file356, ptr @__UNIQUE_ID_license357], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__UNIQUE_ID_author354, !1, !"__UNIQUE_ID_author354", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723com/main.c", i32 8, i32 1}
!2 = !{ptr @__UNIQUE_ID_author355, !3, !"__UNIQUE_ID_author355", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723com/main.c", i32 9, i32 1}
!4 = !{ptr @__UNIQUE_ID_file356, !5, !"__UNIQUE_ID_file356", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723com/main.c", i32 10, i32 1}
!6 = !{ptr @__UNIQUE_ID_license357, !5, !"__UNIQUE_ID_license357", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description358, !8, !"__UNIQUE_ID_description358", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723com/main.c", i32 11, i32 1}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
