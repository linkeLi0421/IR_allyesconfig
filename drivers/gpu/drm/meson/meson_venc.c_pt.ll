; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/meson/meson_venc.c_pt.bc'
source_filename = "../drivers/gpu/drm/meson/meson_venc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+meson_venc_hdmi_supported_mode\22, \22a\22\09"
module asm "\09.weak\09__crc_meson_venc_hdmi_supported_mode\09\09\09\09"
module asm "\09.long\09__crc_meson_venc_hdmi_supported_mode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_venc_hdmi_supported_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_venc_hdmi_supported_mode\22\09\09\09\09\09"
module asm "__kstrtabns_meson_venc_hdmi_supported_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+meson_venc_hdmi_supported_vic\22, \22a\22\09"
module asm "\09.weak\09__crc_meson_venc_hdmi_supported_vic\09\09\09\09"
module asm "\09.long\09__crc_meson_venc_hdmi_supported_vic\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_venc_hdmi_supported_vic:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_venc_hdmi_supported_vic\22\09\09\09\09\09"
module asm "__kstrtabns_meson_venc_hdmi_supported_vic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+meson_venc_hdmi_venc_repeat\22, \22a\22\09"
module asm "\09.weak\09__crc_meson_venc_hdmi_venc_repeat\09\09\09\09"
module asm "\09.long\09__crc_meson_venc_hdmi_venc_repeat\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_venc_hdmi_venc_repeat:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_venc_hdmi_venc_repeat\22\09\09\09\09\09"
module asm "__kstrtabns_meson_venc_hdmi_venc_repeat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+meson_venc_hdmi_mode_set\22, \22a\22\09"
module asm "\09.weak\09__crc_meson_venc_hdmi_mode_set\09\09\09\09"
module asm "\09.long\09__crc_meson_venc_hdmi_mode_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_venc_hdmi_mode_set:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_venc_hdmi_mode_set\22\09\09\09\09\09"
module asm "__kstrtabns_meson_venc_hdmi_mode_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.meson_cvbs_enci_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.meson_hdmi_venc_mode = type { %struct.anon.0 }
%struct.anon.0 = type { i32, i32, i32, i32, i8, i32, i8, i32, i8, i32, i8, i32, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i32, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i32, i8, i32 }
%struct.meson_hdmi_venc_vic_mode = type { i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.meson_drm = type { ptr, i32, ptr, ptr, i32, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, %struct.anon.69, %struct.anon.70, %struct.anon.71, %struct.anon.72 }
%struct.anon.69 = type { i8, i8, i8, i8, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.70 = type { i32, i8, i8, i8 }
%struct.anon.71 = type { i32, ptr, i32 }
%struct.anon.72 = type { ptr, i64, i32 }

@meson_cvbs_enci_pal = dso_local global { %struct.meson_cvbs_enci_mode, [44 x i8] } { %struct.meson_cvbs_enci_mode { i32 1, i32 3, i32 129, i32 3, i32 260, i32 7, i32 255, i32 19, i32 40, i32 835, i32 251, i32 1691, i32 22, i32 310, i32 23, i32 311, i32 9, i32 0, i32 0, i32 0, i32 32896 }, [44 x i8] zeroinitializer }, align 32
@meson_cvbs_enci_ntsc = dso_local global { %struct.meson_cvbs_enci_mode, [44 x i8] } { %struct.meson_cvbs_enci_mode { i32 2, i32 5, i32 129, i32 3, i32 260, i32 11, i32 240, i32 8, i32 32, i32 819, i32 227, i32 1667, i32 18, i32 258, i32 19, i32 259, i32 18, i32 3, i32 0, i32 0, i32 39936 }, [44 x i8] zeroinitializer }, align 32
@meson_hdmi_enci_mode_480i = dso_local global { { %struct.anon, [132 x i8] }, [60 x i8] } { { %struct.anon, [132 x i8] } { %struct.anon { i32 0, i32 5, i32 129, i32 3, i32 260, i32 11, i32 240, i32 8, i32 32, i32 0, i32 227, i32 1667, i32 18, i32 258, i32 19, i32 259 }, [132 x i8] undef }, [60 x i8] zeroinitializer }, align 32
@meson_hdmi_enci_mode_576i = dso_local global { { %struct.anon, [132 x i8] }, [60 x i8] } { { %struct.anon, [132 x i8] } { %struct.anon { i32 0, i32 3, i32 129, i32 3, i32 260, i32 7, i32 255, i32 19, i32 40, i32 819, i32 251, i32 1691, i32 22, i32 310, i32 23, i32 311 }, [132 x i8] undef }, [60 x i8] zeroinitializer }, align 32
@meson_hdmi_encp_mode_480p = dso_local global { %union.meson_hdmi_venc_mode, [60 x i8] } { %union.meson_hdmi_venc_mode { %struct.anon.0 { i32 33, i32 16384, i32 9, i32 0, i8 1, i32 7, i8 1, i32 0, i8 0, i32 0, i8 0, i32 8274, i8 1, i32 0, i8 0, i32 244, i32 1630, i32 1715, i32 34, i32 160, i32 88, i32 0, i32 1589, i32 0, i32 5, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 249, i32 1689, i32 42, i32 521, i32 3, i32 5, i32 3, i32 5, i32 0, i32 0, i8 0, i32 8, i8 1, i32 472, i8 1, i32 524 } }, [60 x i8] zeroinitializer }, align 32
@meson_hdmi_encp_mode_576p = dso_local global { %union.meson_hdmi_venc_mode, [60 x i8] } { %union.meson_hdmi_venc_mode { %struct.anon.0 { i32 33, i32 16384, i32 9, i32 0, i8 1, i32 7, i8 1, i32 0, i8 0, i32 0, i8 0, i32 82, i8 1, i32 0, i8 0, i32 235, i32 1674, i32 1727, i32 0, i32 128, i32 88, i32 0, i32 1599, i32 0, i32 4, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 235, i32 1674, i32 44, i32 619, i32 128, i32 0, i32 0, i32 5, i32 0, i32 0, i8 0, i32 8, i8 1, i32 472, i8 1, i32 624 } }, [60 x i8] zeroinitializer }, align 32
@meson_hdmi_encp_mode_720p60 = dso_local global { %union.meson_hdmi_venc_mode, [60 x i8] } { %union.meson_hdmi_venc_mode { %struct.anon.0 { i32 8233, i32 16448, i32 25, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 648, i32 3207, i32 3299, i32 80, i32 240, i32 80, i32 688, i32 3248, i32 4, i32 8, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 648, i32 3207, i32 29, i32 748, i32 256, i32 168, i32 168, i32 256, i32 0, i32 5, i8 1, i32 0, i8 0, i32 0, i8 0, i32 749 } }, [60 x i8] zeroinitializer }, align 32
@meson_hdmi_encp_mode_720p50 = dso_local global { %union.meson_hdmi_venc_mode, [60 x i8] } { %union.meson_hdmi_venc_mode { %struct.anon.0 { i32 8237, i32 16448, i32 25, i32 256, i8 1, i32 1031, i8 1, i32 0, i8 1, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 648, i32 3207, i32 3959, i32 80, i32 240, i32 80, i32 688, i32 3248, i32 4, i32 8, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 648, i32 3207, i32 29, i32 748, i32 128, i32 208, i32 128, i32 128, i32 0, i32 5, i8 1, i32 0, i8 0, i32 0, i8 0, i32 749 } }, [60 x i8] zeroinitializer }, align 32
@meson_hdmi_encp_mode_1080i60 = dso_local global { %union.meson_hdmi_venc_mode, [60 x i8] } { %union.meson_hdmi_venc_mode { %struct.anon.0 { i32 8233, i32 24572, i32 25, i32 256, i8 1, i32 519, i8 1, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 17, i8 1, i32 516, i32 4355, i32 4399, i32 88, i32 264, i32 88, i32 440, i32 2200, i32 0, i32 4, i32 2288, i8 1, i32 2464, i8 1, i32 0, i8 1, i32 4, i8 1, i32 516, i32 4355, i32 20, i32 559, i32 264, i32 176, i32 88, i32 88, i32 0, i32 5, i8 1, i32 0, i8 0, i32 0, i8 0, i32 1124 } }, [60 x i8] zeroinitializer }, align 32
@meson_hdmi_encp_mode_1080i50 = dso_local global { %union.meson_hdmi_venc_mode, [60 x i8] } { %union.meson_hdmi_venc_mode { %struct.anon.0 { i32 8237, i32 24572, i32 25, i32 256, i8 1, i32 7, i8 1, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 17, i8 1, i32 526, i32 4365, i32 5279, i32 88, i32 264, i32 88, i32 440, i32 2200, i32 0, i32 4, i32 2288, i8 1, i32 2464, i8 1, i32 0, i8 1, i32 4, i8 1, i32 526, i32 4365, i32 20, i32 559, i32 142, i32 230, i32 142, i32 142, i32 0, i32 5, i8 1, i32 0, i8 0, i32 0, i8 0, i32 1124 } }, [60 x i8] zeroinitializer }, align 32
@meson_hdmi_encp_mode_1080p24 = dso_local global { %union.meson_hdmi_venc_mode, [60 x i8] } { %union.meson_hdmi_venc_mode { %struct.anon.0 { i32 13, i32 16448, i32 24, i32 256, i8 1, i32 7, i8 1, i32 0, i8 1, i32 2, i8 1, i32 4178, i8 1, i32 0, i8 0, i32 271, i32 2190, i32 2749, i32 44, i32 132, i32 44, i32 220, i32 2140, i32 0, i32 4, i32 0, i8 0, i32 0, i8 0, i32 0, i8 1, i32 4, i8 1, i32 271, i32 2190, i32 41, i32 1120, i32 79, i32 123, i32 79, i32 79, i32 0, i32 5, i8 1, i32 0, i8 0, i32 0, i8 0, i32 1124 } }, [60 x i8] zeroinitializer }, align 32
@meson_hdmi_encp_mode_1080p30 = dso_local global { %union.meson_hdmi_venc_mode, [60 x i8] } { %union.meson_hdmi_venc_mode { %struct.anon.0 { i32 1, i32 16448, i32 24, i32 256, i8 1, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 4178, i8 1, i32 0, i8 0, i32 140, i32 2060, i32 2199, i32 2156, i32 44, i32 44, i32 140, i32 2059, i32 0, i32 4, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 148, i32 2067, i32 41, i32 1120, i32 44, i32 2156, i32 2100, i32 2164, i32 0, i32 5, i8 1, i32 0, i8 0, i32 0, i8 0, i32 1124 } }, [60 x i8] zeroinitializer }, align 32
@meson_hdmi_encp_mode_1080p50 = dso_local global { %union.meson_hdmi_venc_mode, [60 x i8] } { %union.meson_hdmi_venc_mode { %struct.anon.0 { i32 13, i32 16448, i32 24, i32 256, i8 1, i32 7, i8 1, i32 0, i8 1, i32 2, i8 1, i32 0, i8 0, i32 0, i8 0, i32 271, i32 2190, i32 2639, i32 44, i32 132, i32 44, i32 220, i32 2140, i32 0, i32 4, i32 0, i8 0, i32 0, i8 0, i32 0, i8 1, i32 4, i8 1, i32 271, i32 2190, i32 41, i32 1120, i32 79, i32 123, i32 79, i32 79, i32 0, i32 5, i8 1, i32 0, i8 0, i32 0, i8 0, i32 1124 } }, [60 x i8] zeroinitializer }, align 32
@meson_hdmi_encp_mode_1080p60 = dso_local global { %union.meson_hdmi_venc_mode, [60 x i8] } { %union.meson_hdmi_venc_mode { %struct.anon.0 { i32 1, i32 16448, i32 24, i32 256, i8 1, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 4178, i8 1, i32 0, i8 0, i32 140, i32 2060, i32 2199, i32 2156, i32 44, i32 44, i32 140, i32 2059, i32 0, i32 4, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 148, i32 2067, i32 41, i32 1120, i32 44, i32 2156, i32 2100, i32 2164, i32 0, i32 5, i8 1, i32 0, i8 0, i32 0, i8 0, i32 1124 } }, [60 x i8] zeroinitializer }, align 32
@meson_hdmi_encp_mode_2160p24 = dso_local global { %union.meson_hdmi_venc_mode, [60 x i8] } { %union.meson_hdmi_venc_mode { %struct.anon.0 { i32 1, i32 16448, i32 8, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 4096, i8 1, i32 0, i8 0, i32 140, i32 3980, i32 5499, i32 4076, i32 44, i32 44, i32 140, i32 3979, i32 0, i32 4, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 148, i32 3987, i32 89, i32 2248, i32 44, i32 4076, i32 4020, i32 4084, i32 51, i32 53, i8 1, i32 0, i8 0, i32 0, i8 0, i32 2249 } }, [60 x i8] zeroinitializer }, align 32
@meson_hdmi_encp_mode_2160p25 = dso_local global { %union.meson_hdmi_venc_mode, [60 x i8] } { %union.meson_hdmi_venc_mode { %struct.anon.0 { i32 1, i32 16448, i32 8, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 4096, i8 1, i32 0, i8 0, i32 140, i32 3980, i32 5279, i32 4076, i32 44, i32 44, i32 140, i32 3979, i32 0, i32 4, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 148, i32 3987, i32 89, i32 2248, i32 44, i32 4076, i32 4020, i32 4084, i32 51, i32 53, i8 1, i32 0, i8 0, i32 0, i8 0, i32 2249 } }, [60 x i8] zeroinitializer }, align 32
@meson_hdmi_encp_mode_2160p30 = dso_local global { %union.meson_hdmi_venc_mode, [60 x i8] } { %union.meson_hdmi_venc_mode { %struct.anon.0 { i32 1, i32 16448, i32 8, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 4096, i8 1, i32 0, i8 0, i32 140, i32 3980, i32 4399, i32 4076, i32 44, i32 44, i32 140, i32 3979, i32 0, i32 4, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 0, i8 0, i32 148, i32 3987, i32 89, i32 2248, i32 44, i32 4076, i32 4020, i32 4084, i32 51, i32 53, i8 1, i32 0, i8 0, i32 0, i8 0, i32 2249 } }, [60 x i8] zeroinitializer }, align 32
@meson_hdmi_venc_vic_modes = dso_local global { [23 x %struct.meson_hdmi_venc_vic_mode], [40 x i8] } { [23 x %struct.meson_hdmi_venc_vic_mode] [%struct.meson_hdmi_venc_vic_mode { i32 6, ptr @meson_hdmi_enci_mode_480i }, %struct.meson_hdmi_venc_vic_mode { i32 7, ptr @meson_hdmi_enci_mode_480i }, %struct.meson_hdmi_venc_vic_mode { i32 21, ptr @meson_hdmi_enci_mode_576i }, %struct.meson_hdmi_venc_vic_mode { i32 22, ptr @meson_hdmi_enci_mode_576i }, %struct.meson_hdmi_venc_vic_mode { i32 2, ptr @meson_hdmi_encp_mode_480p }, %struct.meson_hdmi_venc_vic_mode { i32 3, ptr @meson_hdmi_encp_mode_480p }, %struct.meson_hdmi_venc_vic_mode { i32 17, ptr @meson_hdmi_encp_mode_576p }, %struct.meson_hdmi_venc_vic_mode { i32 18, ptr @meson_hdmi_encp_mode_576p }, %struct.meson_hdmi_venc_vic_mode { i32 4, ptr @meson_hdmi_encp_mode_720p60 }, %struct.meson_hdmi_venc_vic_mode { i32 19, ptr @meson_hdmi_encp_mode_720p50 }, %struct.meson_hdmi_venc_vic_mode { i32 5, ptr @meson_hdmi_encp_mode_1080i60 }, %struct.meson_hdmi_venc_vic_mode { i32 20, ptr @meson_hdmi_encp_mode_1080i50 }, %struct.meson_hdmi_venc_vic_mode { i32 32, ptr @meson_hdmi_encp_mode_1080p24 }, %struct.meson_hdmi_venc_vic_mode { i32 33, ptr @meson_hdmi_encp_mode_1080p50 }, %struct.meson_hdmi_venc_vic_mode { i32 34, ptr @meson_hdmi_encp_mode_1080p30 }, %struct.meson_hdmi_venc_vic_mode { i32 31, ptr @meson_hdmi_encp_mode_1080p50 }, %struct.meson_hdmi_venc_vic_mode { i32 16, ptr @meson_hdmi_encp_mode_1080p60 }, %struct.meson_hdmi_venc_vic_mode { i32 93, ptr @meson_hdmi_encp_mode_2160p24 }, %struct.meson_hdmi_venc_vic_mode { i32 94, ptr @meson_hdmi_encp_mode_2160p25 }, %struct.meson_hdmi_venc_vic_mode { i32 95, ptr @meson_hdmi_encp_mode_2160p30 }, %struct.meson_hdmi_venc_vic_mode { i32 96, ptr @meson_hdmi_encp_mode_2160p25 }, %struct.meson_hdmi_venc_vic_mode { i32 97, ptr @meson_hdmi_encp_mode_2160p30 }, %struct.meson_hdmi_venc_vic_mode zeroinitializer], [40 x i8] zeroinitializer }, align 32
@__kstrtab_meson_venc_hdmi_supported_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_venc_hdmi_supported_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_venc_hdmi_supported_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_venc_hdmi_supported_mode to i32), ptr @__kstrtab_meson_venc_hdmi_supported_mode, ptr @__kstrtabns_meson_venc_hdmi_supported_mode }, section "___ksymtab_gpl+meson_venc_hdmi_supported_mode", align 4
@__kstrtab_meson_venc_hdmi_supported_vic = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_venc_hdmi_supported_vic = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_venc_hdmi_supported_vic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_venc_hdmi_supported_vic to i32), ptr @__kstrtab_meson_venc_hdmi_supported_vic, ptr @__kstrtabns_meson_venc_hdmi_supported_vic }, section "___ksymtab_gpl+meson_venc_hdmi_supported_vic", align 4
@__kstrtab_meson_venc_hdmi_venc_repeat = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_venc_hdmi_venc_repeat = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_venc_hdmi_venc_repeat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_venc_hdmi_venc_repeat to i32), ptr @__kstrtab_meson_venc_hdmi_venc_repeat, ptr @__kstrtabns_meson_venc_hdmi_venc_repeat }, section "___ksymtab_gpl+meson_venc_hdmi_venc_repeat", align 4
@meson_venc_hdmi_mode_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 995, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%s: Fatal Error, unsupported mode \22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"meson_venc_hdmi_mode_set\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/meson/meson_venc.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_venc_hdmi_mode_set._entry_ptr = internal global ptr @meson_venc_hdmi_mode_set._entry, section ".printk_index", align 4
@__kstrtab_meson_venc_hdmi_mode_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_venc_hdmi_mode_set = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_venc_hdmi_mode_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_venc_hdmi_mode_set to i32), ptr @__kstrtab_meson_venc_hdmi_mode_set, ptr @__kstrtabns_meson_venc_hdmi_mode_set }, section "___ksymtab_gpl+meson_venc_hdmi_mode_set", align 4
@___asan_gen_.5 = private unnamed_addr constant [20 x i8] c"meson_cvbs_enci_pal\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 69, i32 29 }
@___asan_gen_.8 = private unnamed_addr constant [21 x i8] c"meson_cvbs_enci_ntsc\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 93, i32 29 }
@___asan_gen_.11 = private unnamed_addr constant [26 x i8] c"meson_hdmi_enci_mode_480i\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 189, i32 28 }
@___asan_gen_.14 = private unnamed_addr constant [26 x i8] c"meson_hdmi_enci_mode_576i\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 209, i32 28 }
@___asan_gen_.17 = private unnamed_addr constant [26 x i8] c"meson_hdmi_encp_mode_480p\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 229, i32 28 }
@___asan_gen_.20 = private unnamed_addr constant [26 x i8] c"meson_hdmi_encp_mode_576p\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 275, i32 28 }
@___asan_gen_.23 = private unnamed_addr constant [28 x i8] c"meson_hdmi_encp_mode_720p60\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 321, i32 28 }
@___asan_gen_.26 = private unnamed_addr constant [28 x i8] c"meson_hdmi_encp_mode_720p50\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 363, i32 28 }
@___asan_gen_.29 = private unnamed_addr constant [29 x i8] c"meson_hdmi_encp_mode_1080i60\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 408, i32 28 }
@___asan_gen_.32 = private unnamed_addr constant [29 x i8] c"meson_hdmi_encp_mode_1080i50\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 457, i32 28 }
@___asan_gen_.35 = private unnamed_addr constant [29 x i8] c"meson_hdmi_encp_mode_1080p24\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 506, i32 28 }
@___asan_gen_.38 = private unnamed_addr constant [29 x i8] c"meson_hdmi_encp_mode_1080p30\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 555, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant [29 x i8] c"meson_hdmi_encp_mode_1080p50\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 599, i32 28 }
@___asan_gen_.44 = private unnamed_addr constant [29 x i8] c"meson_hdmi_encp_mode_1080p60\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 647, i32 28 }
@___asan_gen_.47 = private unnamed_addr constant [29 x i8] c"meson_hdmi_encp_mode_2160p24\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 691, i32 28 }
@___asan_gen_.50 = private unnamed_addr constant [29 x i8] c"meson_hdmi_encp_mode_2160p25\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 733, i32 28 }
@___asan_gen_.53 = private unnamed_addr constant [29 x i8] c"meson_hdmi_encp_mode_2160p30\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 775, i32 28 }
@___asan_gen_.56 = private unnamed_addr constant [26 x i8] c"meson_hdmi_venc_vic_modes\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 820, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [38 x i8] c"../drivers/gpu/drm/meson/meson_venc.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 993, i32 4 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__ksymtab_meson_venc_hdmi_mode_set, ptr @__ksymtab_meson_venc_hdmi_supported_mode, ptr @__ksymtab_meson_venc_hdmi_supported_vic, ptr @__ksymtab_meson_venc_hdmi_venc_repeat, ptr @meson_venc_hdmi_mode_set._entry, ptr @meson_venc_hdmi_mode_set._entry_ptr, ptr @meson_cvbs_enci_pal, ptr @meson_cvbs_enci_ntsc, ptr @meson_hdmi_enci_mode_480i, ptr @meson_hdmi_enci_mode_576i, ptr @meson_hdmi_encp_mode_480p, ptr @meson_hdmi_encp_mode_576p, ptr @meson_hdmi_encp_mode_720p60, ptr @meson_hdmi_encp_mode_720p50, ptr @meson_hdmi_encp_mode_1080i60, ptr @meson_hdmi_encp_mode_1080i50, ptr @meson_hdmi_encp_mode_1080p24, ptr @meson_hdmi_encp_mode_1080p30, ptr @meson_hdmi_encp_mode_1080p50, ptr @meson_hdmi_encp_mode_1080p60, ptr @meson_hdmi_encp_mode_2160p24, ptr @meson_hdmi_encp_mode_2160p25, ptr @meson_hdmi_encp_mode_2160p30, ptr @meson_hdmi_venc_vic_modes, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_cvbs_enci_pal to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_cvbs_enci_ntsc to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_hdmi_enci_mode_480i to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_hdmi_enci_mode_576i to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_hdmi_encp_mode_480p to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_hdmi_encp_mode_576p to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_hdmi_encp_mode_720p60 to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_hdmi_encp_mode_720p50 to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_hdmi_encp_mode_1080i60 to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_hdmi_encp_mode_1080i50 to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_hdmi_encp_mode_1080p24 to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_hdmi_encp_mode_1080p30 to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_hdmi_encp_mode_1080p50 to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_hdmi_encp_mode_1080p60 to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_hdmi_encp_mode_2160p24 to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_hdmi_encp_mode_2160p25 to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_hdmi_encp_mode_2160p30 to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_hdmi_venc_vic_modes to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_venc_hdmi_mode_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @meson_venc_hdmi_supported_mode(ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %tobool.not = icmp ult i32 %1, 16
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %2 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdisplay, align 4
  %4 = add i16 %3, -1921
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1281, i16 %4)
  %5 = icmp ult i16 %4, -1281
  br i1 %5, label %if.end.return_crit_edge, label %if.end7

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %6 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vdisplay, align 2
  %8 = add i16 %7, -1201
  call void @__sanitizer_cov_trace_const_cmp2(i16 -721, i16 %8)
  %9 = icmp ult i16 %8, -721
  %spec.select = select i1 %9, i32 19, i32 0
  br label %return

return:                                           ; preds = %if.end7, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -2, %entry.return_crit_edge ], [ 18, %if.end.return_crit_edge ], [ %spec.select, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @meson_venc_hdmi_supported_vic(i32 noundef %vic) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @meson_hdmi_venc_vic_modes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not7 = icmp eq i32 %0, 0
  br i1 %tobool.not7, label %entry.cleanup_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond:                                       ; preds = %while.body
  %incdec.ptr = getelementptr %struct.meson_hdmi_venc_vic_mode, ptr %vmode.08, i32 1
  %1 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %while.cond.land.rhs_crit_edge

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %while.cond.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %3 = phi i32 [ %2, %while.cond.land.rhs_crit_edge ], [ %0, %entry.land.rhs_crit_edge ]
  %vmode.08 = phi ptr [ %incdec.ptr, %while.cond.land.rhs_crit_edge ], [ @meson_hdmi_venc_vic_modes, %entry.land.rhs_crit_edge ]
  %mode = getelementptr inbounds %struct.meson_hdmi_venc_vic_mode, ptr %vmode.08, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.rhs.cleanup_crit_edge, label %while.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %vic)
  %cmp = icmp eq i32 %3, %vic
  br i1 %cmp, label %while.body.cleanup_crit_edge, label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %land.rhs.cleanup_crit_edge ], [ false, %while.cond.cleanup_crit_edge ], [ true, %while.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @meson_venc_hdmi_venc_repeat(i32 noundef %vic) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %vic, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 21
  %switch.cast = trunc i32 %switch.tableidx to i21
  %switch.downshift = lshr i21 -32705, %switch.cast
  %1 = and i21 %switch.downshift, 1
  %switch.masked = icmp ne i21 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @meson_venc_hdmi_mode_set(ptr noundef %priv, i32 noundef %vic, i32 noundef %ycrcb_map, i1 noundef zeroext %yuv420_mode, ptr noundef %mode) #4 align 64 {
entry:
  %vmode_dmt = alloca %union.meson_hdmi_venc_mode, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 196, ptr nonnull %vmode_dmt) #8
  %0 = call ptr @memset(ptr %vmode_dmt, i32 255, i32 196)
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 2, i32 1
  %3 = xor i1 %tobool.not, true
  %4 = load i32, ptr @meson_hdmi_venc_vic_modes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not7.i = icmp eq i32 %4, 0
  br i1 %tobool.not7.i, label %entry.if.else_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

while.cond.i:                                     ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.meson_hdmi_venc_vic_mode, ptr %vmode.08.i, i32 1
  %5 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %while.cond.i.if.else_crit_edge, label %while.cond.i.land.rhs.i_crit_edge

while.cond.i.land.rhs.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.cond.i.if.else_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.rhs.i:                                       ; preds = %while.cond.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %7 = phi i32 [ %6, %while.cond.i.land.rhs.i_crit_edge ], [ %4, %entry.land.rhs.i_crit_edge ]
  %vmode.08.i = phi ptr [ %incdec.ptr.i, %while.cond.i.land.rhs.i_crit_edge ], [ @meson_hdmi_venc_vic_modes, %entry.land.rhs.i_crit_edge ]
  %mode.i = getelementptr inbounds %struct.meson_hdmi_venc_vic_mode, ptr %vmode.08.i, i32 0, i32 1
  %8 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mode.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.rhs.i.if.else_crit_edge, label %while.body.i

land.rhs.i.if.else_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

while.body.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %vic)
  %cmp.i = icmp eq i32 %7, %vic
  br i1 %cmp.i, label %while.body.i.land.rhs.i1043_crit_edge, label %while.cond.i

while.body.i.land.rhs.i1043_crit_edge:            ; preds = %while.body.i
  br label %land.rhs.i1043

while.cond.i1040:                                 ; preds = %while.body.i1045
  %incdec.ptr.i1038 = getelementptr %struct.meson_hdmi_venc_vic_mode, ptr %vmode.011.i, i32 1
  %10 = ptrtoint ptr %incdec.ptr.i1038 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %incdec.ptr.i1038, align 4
  %tobool.not.i1039 = icmp eq i32 %11, 0
  br i1 %tobool.not.i1039, label %while.cond.i1040.do.end_crit_edge, label %while.cond.i1040.land.rhs.i1043_crit_edge

while.cond.i1040.land.rhs.i1043_crit_edge:        ; preds = %while.cond.i1040
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i1043

while.cond.i1040.do.end_crit_edge:                ; preds = %while.cond.i1040
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.rhs.i1043:                                   ; preds = %while.cond.i1040.land.rhs.i1043_crit_edge, %while.body.i.land.rhs.i1043_crit_edge
  %12 = phi i32 [ %11, %while.cond.i1040.land.rhs.i1043_crit_edge ], [ %4, %while.body.i.land.rhs.i1043_crit_edge ]
  %vmode.011.i = phi ptr [ %incdec.ptr.i1038, %while.cond.i1040.land.rhs.i1043_crit_edge ], [ @meson_hdmi_venc_vic_modes, %while.body.i.land.rhs.i1043_crit_edge ]
  %mode.i1041 = getelementptr inbounds %struct.meson_hdmi_venc_vic_mode, ptr %vmode.011.i, i32 0, i32 1
  %13 = ptrtoint ptr %mode.i1041 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mode.i1041, align 4
  %tobool2.not.i1042 = icmp eq ptr %14, null
  br i1 %tobool2.not.i1042, label %land.rhs.i1043.do.end_crit_edge, label %while.body.i1045

land.rhs.i1043.do.end_crit_edge:                  ; preds = %land.rhs.i1043
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

while.body.i1045:                                 ; preds = %land.rhs.i1043
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %vic)
  %cmp.i1044 = icmp eq i32 %12, %vic
  br i1 %cmp.i1044, label %while.body.i1045.if.end16_crit_edge, label %while.cond.i1040

while.body.i1045.if.end16_crit_edge:              ; preds = %while.body.i1045
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.end:                                           ; preds = %land.rhs.i1043.do.end_crit_edge, %while.cond.i1040.do.end_crit_edge
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  %name = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 31
  %call5 = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #8
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode, align 4
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %19 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %20 to i32
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %21 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hsync_start, align 2
  %conv6 = zext i16 %22 to i32
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %23 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hsync_end, align 4
  %conv7 = zext i16 %24 to i32
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %25 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %htotal, align 2
  %conv8 = zext i16 %26 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %27 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vdisplay, align 2
  %conv9 = zext i16 %28 to i32
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %29 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vsync_start, align 4
  %conv10 = zext i16 %30 to i32
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %31 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vsync_end, align 2
  %conv11 = zext i16 %32 to i32
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %33 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vtotal, align 4
  %conv12 = zext i16 %34 to i32
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 28
  %35 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %type, align 2
  %conv13 = zext i8 %36 to i32
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %name, i32 noundef %call5, i32 noundef %18, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %conv10, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %38) #11
  br label %cleanup

if.else:                                          ; preds = %land.rhs.i.if.else_crit_edge, %while.cond.i.if.else_crit_edge, %entry.if.else_crit_edge
  %39 = getelementptr inbounds i8, ptr %vmode_dmt, i32 12
  %40 = call ptr @memset(ptr %39, i32 0, i32 180)
  %41 = ptrtoint ptr %vmode_dmt to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 33, ptr %vmode_dmt, align 4
  %video_mode.i = getelementptr inbounds %struct.anon.0, ptr %vmode_dmt, i32 0, i32 1
  %42 = ptrtoint ptr %video_mode.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 16448, ptr %video_mode.i, align 4
  %video_mode_adv.i = getelementptr inbounds %struct.anon.0, ptr %vmode_dmt, i32 0, i32 2
  %43 = ptrtoint ptr %video_mode_adv.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 24, ptr %video_mode_adv.i, align 4
  %htotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %44 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %htotal.i, align 2
  %conv.i = zext i16 %45 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %max_pxcnt.i = getelementptr inbounds %struct.anon.0, ptr %vmode_dmt, i32 0, i32 17
  %46 = ptrtoint ptr %max_pxcnt.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.i, ptr %max_pxcnt.i, align 4
  %hsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %47 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %hsync_start.i, align 2
  %conv3.i = zext i16 %48 to i32
  %sub4.i = sub nsw i32 %conv.i, %conv3.i
  %havon_begin.i = getelementptr inbounds %struct.anon.0, ptr %vmode_dmt, i32 0, i32 33
  %49 = ptrtoint ptr %havon_begin.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub4.i, ptr %havon_begin.i, align 4
  %hdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %50 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %hdisplay.i, align 4
  %conv6.i = zext i16 %51 to i32
  %add.i = add nsw i32 %sub4.i, -1
  %sub7.i = add nsw i32 %add.i, %conv6.i
  %havon_end.i = getelementptr inbounds %struct.anon.0, ptr %vmode_dmt, i32 0, i32 34
  %52 = ptrtoint ptr %havon_end.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub7.i, ptr %havon_end.i, align 4
  %vtotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %53 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %vtotal.i, align 4
  %conv8.i = zext i16 %54 to i32
  %vsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %55 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %vsync_start.i, align 4
  %conv9.i = zext i16 %56 to i32
  %sub10.i = sub nsw i32 %conv8.i, %conv9.i
  %vavon_bline.i = getelementptr inbounds %struct.anon.0, ptr %vmode_dmt, i32 0, i32 35
  %57 = ptrtoint ptr %vavon_bline.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub10.i, ptr %vavon_bline.i, align 4
  %vdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %58 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %vdisplay.i, align 2
  %conv12.i = zext i16 %59 to i32
  %add13.i = add nsw i32 %sub10.i, -1
  %sub14.i = add nsw i32 %add13.i, %conv12.i
  %vavon_eline.i = getelementptr inbounds %struct.anon.0, ptr %vmode_dmt, i32 0, i32 36
  %60 = ptrtoint ptr %vavon_eline.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub14.i, ptr %vavon_eline.i, align 4
  %hsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %61 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %hsync_end.i, align 4
  %conv15.i = zext i16 %62 to i32
  %sub18.i = sub nsw i32 %conv15.i, %conv3.i
  %hso_end.i = getelementptr inbounds %struct.anon.0, ptr %vmode_dmt, i32 0, i32 38
  %63 = ptrtoint ptr %hso_end.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub18.i, ptr %hso_end.i, align 4
  %vso_begin.i = getelementptr inbounds %struct.anon.0, ptr %vmode_dmt, i32 0, i32 39
  %64 = ptrtoint ptr %vso_begin.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 30, ptr %vso_begin.i, align 4
  %vso_end.i = getelementptr inbounds %struct.anon.0, ptr %vmode_dmt, i32 0, i32 40
  %65 = ptrtoint ptr %vso_end.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 50, ptr %vso_end.i, align 4
  %vsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %66 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %vsync_end.i, align 2
  %conv19.i = zext i16 %67 to i32
  %sub22.i = sub nsw i32 %conv19.i, %conv9.i
  %vso_eline.i = getelementptr inbounds %struct.anon.0, ptr %vmode_dmt, i32 0, i32 42
  %68 = ptrtoint ptr %vso_eline.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %sub22.i, ptr %vso_eline.i, align 4
  %vso_eline_present.i = getelementptr inbounds %struct.anon.0, ptr %vmode_dmt, i32 0, i32 43
  %69 = ptrtoint ptr %vso_eline_present.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %vso_eline_present.i, align 4
  %sub25.i = add nsw i32 %conv8.i, -1
  %max_lncnt.i = getelementptr inbounds %struct.anon.0, ptr %vmode_dmt, i32 0, i32 48
  %70 = ptrtoint ptr %max_lncnt.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sub25.i, ptr %max_lncnt.i, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %while.body.i1045.if.end16_crit_edge
  %use_enci.1.off0 = phi i1 [ false, %if.else ], [ %3, %while.body.i1045.if.end16_crit_edge ]
  %vmode.0 = phi ptr [ %vmode_dmt, %if.else ], [ %14, %while.body.i1045.if.end16_crit_edge ]
  %switch.tableidx = add i32 %vic, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %switch.tableidx)
  %71 = icmp ult i32 %switch.tableidx, 21
  %switch.cast = trunc i32 %switch.tableidx to i21
  %switch.downshift = lshr i21 -32705, %switch.cast
  %72 = and i21 %switch.downshift, 1
  %switch.masked = icmp ne i21 %72, 0
  %retval.0.i1047 = select i1 %71, i1 %switch.masked, i1 false
  %vsync_start20 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %73 = ptrtoint ptr %vsync_start20 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %vsync_start20, align 4
  %conv21 = zext i16 %74 to i32
  %vdisplay22 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %75 = ptrtoint ptr %vdisplay22 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %vdisplay22, align 2
  %conv23 = zext i16 %76 to i32
  %sub = sub nsw i32 %conv21, %conv23
  %and25 = lshr i32 %2, 4
  %and25.lobit = and i32 %and25, 1
  %eof_lines.0 = lshr i32 %sub, %and25.lobit
  %vtotal29 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %77 = ptrtoint ptr %vtotal29 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %vtotal29, align 4
  %conv30 = zext i16 %78 to i32
  %vsync_end31 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %79 = ptrtoint ptr %vsync_end31 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %vsync_end31, align 2
  %conv32 = zext i16 %80 to i32
  %sub33 = sub nsw i32 %conv30, %conv32
  %sof_lines.0 = lshr i32 %sub33, %and25.lobit
  %sub44 = sub nsw i32 %conv32, %conv21
  %vsync_lines.0 = lshr i32 %sub44, %and25.lobit
  %htotal51 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %81 = ptrtoint ptr %htotal51 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %htotal51, align 2
  %conv52 = zext i16 %82 to i32
  %div551034 = zext i1 %3 to i32
  %total_pixels_venc.0 = lshr i32 %conv52, %div551034
  %mul = zext i1 %retval.0.i1047 to i32
  %spec.select1083 = shl nuw nsw i32 %total_pixels_venc.0, %mul
  %hdisplay60 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %83 = ptrtoint ptr %hdisplay60 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %hdisplay60, align 4
  %conv61 = zext i16 %84 to i32
  %active_pixels_venc.0 = lshr i32 %conv61, %div551034
  %active_pixels_venc.1 = shl nuw nsw i32 %active_pixels_venc.0, %mul
  %hsync_start70 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %85 = ptrtoint ptr %hsync_start70 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %hsync_start70, align 2
  %conv71 = zext i16 %86 to i32
  %sub74 = sub nsw i32 %conv71, %conv61
  %front_porch_venc.0 = lshr i32 %sub74, %div551034
  %front_porch_venc.1 = shl i32 %front_porch_venc.0, %mul
  %hsync_end83 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %87 = ptrtoint ptr %hsync_end83 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %hsync_end83, align 4
  %conv84 = zext i16 %88 to i32
  %sub87 = sub nsw i32 %conv84, %conv71
  %hsync_pixels_venc.0 = lshr i32 %sub87, %div551034
  %hsync_pixels_venc.1 = shl i32 %hsync_pixels_venc.0, %mul
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %89 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %90, i32 28152
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !61
  %92 = or i32 %91, -16777216
  %93 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %io_base, align 8
  %add.ptr99 = getelementptr i8, ptr %94, i32 28152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 %92) #8, !srcloc !62
  %95 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %io_base, align 8
  %add.ptr101 = getelementptr i8, ptr %96, i32 27996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 0) #8, !srcloc !62
  %97 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %io_base, align 8
  %add.ptr103 = getelementptr i8, ptr %98, i32 28160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 0) #8, !srcloc !62
  br i1 %use_enci.1.off0, label %if.then105, label %if.else314

if.then105:                                       ; preds = %if.end16
  %99 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %io_base, align 8
  %add.ptr107 = getelementptr i8, ptr %100, i32 27984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 301989888) #8, !srcloc !62
  %101 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %io_base, align 8
  %add.ptr109 = getelementptr i8, ptr %102, i32 28712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 301989888) #8, !srcloc !62
  %103 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %io_base, align 8
  %add.ptr111 = getelementptr i8, ptr %104, i32 28040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 0) #8, !srcloc !62
  %105 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %io_base, align 8
  %add.ptr113 = getelementptr i8, ptr %106, i32 27648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 0) #8, !srcloc !62
  %107 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %io_base, align 8
  %add.ptr115 = getelementptr i8, ptr %108, i32 27652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 0) #8, !srcloc !62
  %hso_begin = getelementptr inbounds %struct.anon, ptr %vmode.0, i32 0, i32 1
  %109 = ptrtoint ptr %hso_begin to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %hso_begin, align 4
  %111 = tail call i32 @llvm.bswap.i32(i32 %110)
  %112 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %io_base, align 8
  %add.ptr117 = getelementptr i8, ptr %113, i32 27688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 %111) #8, !srcloc !62
  %hso_end = getelementptr inbounds %struct.anon, ptr %vmode.0, i32 0, i32 2
  %114 = ptrtoint ptr %hso_end to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %hso_end, align 4
  %116 = tail call i32 @llvm.bswap.i32(i32 %115)
  %117 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %io_base, align 8
  %add.ptr119 = getelementptr i8, ptr %118, i32 27692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119, i32 %116) #8, !srcloc !62
  %vso_even = getelementptr inbounds %struct.anon, ptr %vmode.0, i32 0, i32 3
  %119 = ptrtoint ptr %vso_even to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %vso_even, align 4
  %121 = tail call i32 @llvm.bswap.i32(i32 %120)
  %122 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %io_base, align 8
  %add.ptr121 = getelementptr i8, ptr %123, i32 27704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 %121) #8, !srcloc !62
  %vso_odd = getelementptr inbounds %struct.anon, ptr %vmode.0, i32 0, i32 4
  %124 = ptrtoint ptr %vso_odd to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %vso_odd, align 4
  %126 = tail call i32 @llvm.bswap.i32(i32 %125)
  %127 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %io_base, align 8
  %add.ptr123 = getelementptr i8, ptr %128, i32 27708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 %126) #8, !srcloc !62
  %macv_max_amp = getelementptr inbounds %struct.anon, ptr %vmode.0, i32 0, i32 5
  %129 = ptrtoint ptr %macv_max_amp to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %macv_max_amp, align 4
  %and124 = and i32 %130, 1023
  %or125 = or i32 %and124, 32768
  %131 = tail call i32 @llvm.bswap.i32(i32 %or125)
  %132 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %io_base, align 8
  %add.ptr127 = getelementptr i8, ptr %133, i32 27968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127, i32 %131) #8, !srcloc !62
  %video_prog_mode = getelementptr inbounds %struct.anon, ptr %vmode.0, i32 0, i32 6
  %134 = ptrtoint ptr %video_prog_mode to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %video_prog_mode, align 4
  %136 = tail call i32 @llvm.bswap.i32(i32 %135)
  %137 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %io_base, align 8
  %add.ptr129 = getelementptr i8, ptr %138, i32 28064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 %136) #8, !srcloc !62
  %video_mode = getelementptr inbounds %struct.anon, ptr %vmode.0, i32 0, i32 7
  %139 = ptrtoint ptr %video_mode to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %video_mode, align 4
  %141 = tail call i32 @llvm.bswap.i32(i32 %140)
  %142 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %io_base, align 8
  %add.ptr131 = getelementptr i8, ptr %143, i32 27648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 %141) #8, !srcloc !62
  %144 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %io_base, align 8
  %add.ptr133 = getelementptr i8, ptr %145, i32 27652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133, i32 637534208) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void @arm_heavy_mb() #8
  %sch_adjust = getelementptr inbounds %struct.anon, ptr %vmode.0, i32 0, i32 8
  %146 = ptrtoint ptr %sch_adjust to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %sch_adjust, align 4
  %148 = tail call i32 @llvm.bswap.i32(i32 %147)
  %149 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %io_base, align 8
  %add.ptr138 = getelementptr i8, ptr %150, i32 27676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138, i32 %148) #8, !srcloc !62
  %151 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %io_base, align 8
  %add.ptr140 = getelementptr i8, ptr %152, i32 27680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140, i32 117440512) #8, !srcloc !62
  %yc_delay = getelementptr inbounds %struct.anon, ptr %vmode.0, i32 0, i32 9
  %153 = ptrtoint ptr %yc_delay to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %yc_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool141.not = icmp eq i32 %154, 0
  br i1 %tobool141.not, label %if.then105.if.end146_crit_edge, label %if.then142

if.then105.if.end146_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146

if.then142:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #10
  %155 = tail call i32 @llvm.bswap.i32(i32 %154)
  %156 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %io_base, align 8
  %add.ptr145 = getelementptr i8, ptr %157, i32 27992
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145, i32 %155) #8, !srcloc !62
  br label %if.end146

if.end146:                                        ; preds = %if.then142, %if.then105.if.end146_crit_edge
  %158 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %io_base, align 8
  %add.ptr148 = getelementptr i8, ptr %159, i32 27936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 0) #8, !srcloc !62
  %160 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %io_base, align 8
  %add.ptr150 = getelementptr i8, ptr %161, i32 28768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr150, i32 21889024) #8, !srcloc !62
  %pixel_start = getelementptr inbounds %struct.anon, ptr %vmode.0, i32 0, i32 10
  %162 = ptrtoint ptr %pixel_start to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %pixel_start, align 4
  %164 = tail call i32 @llvm.bswap.i32(i32 %163)
  %165 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %io_base, align 8
  %add.ptr152 = getelementptr i8, ptr %166, i32 28772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152, i32 %164) #8, !srcloc !62
  %pixel_end = getelementptr inbounds %struct.anon, ptr %vmode.0, i32 0, i32 11
  %167 = ptrtoint ptr %pixel_end to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %pixel_end, align 4
  %169 = tail call i32 @llvm.bswap.i32(i32 %168)
  %170 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %io_base, align 8
  %add.ptr154 = getelementptr i8, ptr %171, i32 28776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154, i32 %169) #8, !srcloc !62
  %top_field_line_start = getelementptr inbounds %struct.anon, ptr %vmode.0, i32 0, i32 12
  %172 = ptrtoint ptr %top_field_line_start to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %top_field_line_start, align 4
  %174 = tail call i32 @llvm.bswap.i32(i32 %173)
  %175 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %io_base, align 8
  %add.ptr156 = getelementptr i8, ptr %176, i32 28780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr156, i32 %174) #8, !srcloc !62
  %top_field_line_end = getelementptr inbounds %struct.anon, ptr %vmode.0, i32 0, i32 13
  %177 = ptrtoint ptr %top_field_line_end to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %top_field_line_end, align 4
  %179 = tail call i32 @llvm.bswap.i32(i32 %178)
  %180 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %io_base, align 8
  %add.ptr158 = getelementptr i8, ptr %181, i32 28784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158, i32 %179) #8, !srcloc !62
  %bottom_field_line_start = getelementptr inbounds %struct.anon, ptr %vmode.0, i32 0, i32 14
  %182 = ptrtoint ptr %bottom_field_line_start to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %bottom_field_line_start, align 4
  %184 = tail call i32 @llvm.bswap.i32(i32 %183)
  %185 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %io_base, align 8
  %add.ptr160 = getelementptr i8, ptr %186, i32 28788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr160, i32 %184) #8, !srcloc !62
  %bottom_field_line_end = getelementptr inbounds %struct.anon, ptr %vmode.0, i32 0, i32 15
  %187 = ptrtoint ptr %bottom_field_line_end to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %bottom_field_line_end, align 4
  %189 = tail call i32 @llvm.bswap.i32(i32 %188)
  %190 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %io_base, align 8
  %add.ptr162 = getelementptr i8, ptr %191, i32 28792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr162, i32 %189) #8, !srcloc !62
  tail call void @meson_vpp_setup_mux(ptr noundef %priv, i32 noundef 5) #8
  %192 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %io_base, align 8
  %add.ptr164 = getelementptr i8, ptr %193, i32 27996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr164, i32 16777216) #8, !srcloc !62
  %194 = ptrtoint ptr %vtotal29 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %vtotal29, align 4
  %196 = lshr i16 %195, 1
  %197 = zext i16 %196 to i32
  %add = add nuw nsw i32 %197, 1
  %198 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %io_base, align 8
  %add.ptr169 = getelementptr i8, ptr %199, i32 28772
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr169) #8, !srcloc !61
  %201 = tail call i32 @llvm.bswap.i32(i32 %200)
  %add172 = add i32 %201, %spec.select
  call void @__sanitizer_cov_trace_cmp4(i32 %add172, i32 %spec.select1083)
  %cmp.not.i = icmp ult i32 %add172, %spec.select1083
  %sub.i1048 = select i1 %cmp.not.i, i32 0, i32 %spec.select1083
  %retval.0.i1049 = sub i32 %add172, %sub.i1048
  %add174 = add i32 %retval.0.i1049, %active_pixels_venc.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add174, i32 %spec.select1083)
  %cmp.not.i1050 = icmp ult i32 %add174, %spec.select1083
  %sub.i1051 = select i1 %cmp.not.i1050, i32 0, i32 %spec.select1083
  %retval.0.i1052 = sub i32 %add174, %sub.i1051
  %202 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i1049)
  %203 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %io_base, align 8
  %add.ptr177 = getelementptr i8, ptr %204, i32 27736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr177, i32 %202) #8, !srcloc !62
  %205 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i1052)
  %206 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %io_base, align 8
  %add.ptr179 = getelementptr i8, ptr %207, i32 27740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr179, i32 %205) #8, !srcloc !62
  %208 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %io_base, align 8
  %add.ptr182 = getelementptr i8, ptr %209, i32 28780
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr182) #8, !srcloc !61
  %211 = tail call i32 @llvm.bswap.i32(i32 %210)
  %212 = ptrtoint ptr %vdisplay22 to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %vdisplay22, align 2
  %conv186 = zext i16 %213 to i32
  %add187 = add i32 %211, %conv186
  %214 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %io_base, align 8
  %add.ptr190 = getelementptr i8, ptr %215, i32 28788
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr190) #8, !srcloc !61
  %217 = tail call i32 @llvm.bswap.i32(i32 %216)
  %218 = ptrtoint ptr %vdisplay22 to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %vdisplay22, align 2
  %conv194 = zext i16 %219 to i32
  %add195 = add i32 %217, %conv194
  %220 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %io_base, align 8
  %add.ptr197 = getelementptr i8, ptr %221, i32 27744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr197, i32 %210) #8, !srcloc !62
  %222 = tail call i32 @llvm.bswap.i32(i32 %add187)
  %223 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %io_base, align 8
  %add.ptr199 = getelementptr i8, ptr %224, i32 27748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr199, i32 %222) #8, !srcloc !62
  %225 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %io_base, align 8
  %add.ptr201 = getelementptr i8, ptr %226, i32 27752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr201, i32 %216) #8, !srcloc !62
  %227 = tail call i32 @llvm.bswap.i32(i32 %add195)
  %228 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %io_base, align 8
  %add.ptr203 = getelementptr i8, ptr %229, i32 27756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr203, i32 %227) #8, !srcloc !62
  %add204 = add i32 %retval.0.i1052, %front_porch_venc.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add204, i32 %spec.select1083)
  %cmp.not = icmp ult i32 %add204, %spec.select1083
  %not.cmp.not = xor i1 %cmp.not, true
  %vs_adjust.0 = zext i1 %not.cmp.not to i32
  %sub208 = select i1 %cmp.not, i32 0, i32 %spec.select1083
  %hs_begin.0 = sub i32 %add204, %sub208
  %add212 = add i32 %hs_begin.0, %hsync_pixels_venc.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add212, i32 %spec.select1083)
  %cmp.not.i1053 = icmp ult i32 %add212, %spec.select1083
  %sub.i1054 = select i1 %cmp.not.i1053, i32 0, i32 %spec.select1083
  %retval.0.i1055 = sub i32 %add212, %sub.i1054
  %230 = tail call i32 @llvm.bswap.i32(i32 %hs_begin.0)
  %231 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %io_base, align 8
  %add.ptr215 = getelementptr i8, ptr %232, i32 28672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr215, i32 %230) #8, !srcloc !62
  %233 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i1055)
  %234 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %io_base, align 8
  %add.ptr217 = getelementptr i8, ptr %235, i32 28676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr217, i32 %233) #8, !srcloc !62
  %sub218 = add i32 %eof_lines.0, -1
  %add219 = add i32 %sub218, %add195
  %add220 = add i32 %add219, %vs_adjust.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add220, i32 %197)
  %cmp221.not.not = icmp ugt i32 %add220, %197
  br i1 %cmp221.not.not, label %if.then223, label %if.else237

if.then223:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  %sub227 = sub i32 %add220, %add
  %add228 = add i32 %sub227, %vsync_lines.0
  %236 = tail call i32 @llvm.bswap.i32(i32 %sub227)
  %237 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %io_base, align 8
  %add.ptr230 = getelementptr i8, ptr %238, i32 28680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr230, i32 %236) #8, !srcloc !62
  %239 = tail call i32 @llvm.bswap.i32(i32 %add228)
  %240 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %io_base, align 8
  %add.ptr232 = getelementptr i8, ptr %241, i32 28688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr232, i32 %239) #8, !srcloc !62
  %242 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %io_base, align 8
  %add.ptr234 = getelementptr i8, ptr %243, i32 28696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr234, i32 %230) #8, !srcloc !62
  %244 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %io_base, align 8
  %add.ptr236 = getelementptr i8, ptr %245, i32 28704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr236, i32 %230) #8, !srcloc !62
  br label %if.end262

if.else237:                                       ; preds = %if.end146
  %246 = tail call i32 @llvm.bswap.i32(i32 %add220)
  %247 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %io_base, align 8
  %add.ptr242 = getelementptr i8, ptr %248, i32 28684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr242, i32 %246) #8, !srcloc !62
  %249 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %io_base, align 8
  %add.ptr244 = getelementptr i8, ptr %250, i32 28700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr244, i32 %230) #8, !srcloc !62
  %add245 = add i32 %add220, %vsync_lines.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add245, i32 %197)
  %cmp246.not.not = icmp ugt i32 %add245, %197
  br i1 %cmp246.not.not, label %if.then248, label %if.else255

if.then248:                                       ; preds = %if.else237
  call void @__sanitizer_cov_trace_pc() #10
  %sub250 = sub i32 %add245, %add
  %251 = tail call i32 @llvm.bswap.i32(i32 %sub250)
  %252 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %io_base, align 8
  %add.ptr252 = getelementptr i8, ptr %253, i32 28688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr252, i32 %251) #8, !srcloc !62
  %254 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %io_base, align 8
  %add.ptr254 = getelementptr i8, ptr %255, i32 28704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr254, i32 %230) #8, !srcloc !62
  br label %if.end262

if.else255:                                       ; preds = %if.else237
  call void @__sanitizer_cov_trace_pc() #10
  %256 = tail call i32 @llvm.bswap.i32(i32 %add245)
  %257 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %io_base, align 8
  %add.ptr258 = getelementptr i8, ptr %258, i32 28692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr258, i32 %256) #8, !srcloc !62
  %259 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %io_base, align 8
  %add.ptr260 = getelementptr i8, ptr %260, i32 28708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr260, i32 %230) #8, !srcloc !62
  br label %if.end262

if.end262:                                        ; preds = %if.else255, %if.then248, %if.then223
  %add265 = add i32 %add187, %eof_lines.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add265, i32 %197)
  %cmp266.not = icmp ult i32 %add265, %197
  br i1 %cmp266.not, label %if.else285, label %if.then268

if.then268:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #10
  %sub272 = sub i32 %add265, %197
  %add273 = add i32 %sub272, %vsync_lines.0
  %261 = tail call i32 @llvm.bswap.i32(i32 %sub272)
  %262 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %io_base, align 8
  %add.ptr275 = getelementptr i8, ptr %263, i32 28684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr275, i32 %261) #8, !srcloc !62
  %264 = tail call i32 @llvm.bswap.i32(i32 %add273)
  %265 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %io_base, align 8
  %add.ptr277 = getelementptr i8, ptr %266, i32 28692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr277, i32 %264) #8, !srcloc !62
  %shr278 = lshr i32 %spec.select1083, 1
  %add279 = add i32 %hs_begin.0, %shr278
  call void @__sanitizer_cov_trace_cmp4(i32 %add279, i32 %spec.select1083)
  %cmp.not.i1056 = icmp ult i32 %add279, %spec.select1083
  %sub.i1057 = select i1 %cmp.not.i1056, i32 0, i32 %spec.select1083
  %retval.0.i1058 = sub i32 %add279, %sub.i1057
  %267 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i1058)
  %268 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %io_base, align 8
  %add.ptr282 = getelementptr i8, ptr %269, i32 28700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr282, i32 %267) #8, !srcloc !62
  %270 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %io_base, align 8
  %add.ptr284 = getelementptr i8, ptr %271, i32 28708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr284, i32 %267) #8, !srcloc !62
  br label %if.end570

if.else285:                                       ; preds = %if.end262
  %272 = tail call i32 @llvm.bswap.i32(i32 %add265)
  %273 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %io_base, align 8
  %add.ptr290 = getelementptr i8, ptr %274, i32 28680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr290, i32 %272) #8, !srcloc !62
  %shr291 = lshr i32 %spec.select1083, 1
  %add292 = add i32 %hs_begin.0, %shr291
  call void @__sanitizer_cov_trace_cmp4(i32 %add292, i32 %spec.select1083)
  %cmp.not.i1059 = icmp ult i32 %add292, %spec.select1083
  %sub.i1060 = select i1 %cmp.not.i1059, i32 0, i32 %spec.select1083
  %retval.0.i1061 = sub i32 %add292, %sub.i1060
  %275 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i1061)
  %276 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %io_base, align 8
  %add.ptr295 = getelementptr i8, ptr %277, i32 28696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr295, i32 %275) #8, !srcloc !62
  %add296 = add i32 %add265, %vsync_lines.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add296, i32 %197)
  %cmp297.not = icmp ult i32 %add296, %197
  br i1 %cmp297.not, label %if.else306, label %if.then299

if.then299:                                       ; preds = %if.else285
  call void @__sanitizer_cov_trace_pc() #10
  %sub301 = sub i32 %add296, %197
  %278 = tail call i32 @llvm.bswap.i32(i32 %sub301)
  %279 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %io_base, align 8
  %add.ptr303 = getelementptr i8, ptr %280, i32 28692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr303, i32 %278) #8, !srcloc !62
  %281 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %io_base, align 8
  %add.ptr305 = getelementptr i8, ptr %282, i32 28708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr305, i32 %275) #8, !srcloc !62
  br label %if.end570

if.else306:                                       ; preds = %if.else285
  call void @__sanitizer_cov_trace_pc() #10
  %283 = tail call i32 @llvm.bswap.i32(i32 %add296)
  %284 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %io_base, align 8
  %add.ptr309 = getelementptr i8, ptr %285, i32 28688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr309, i32 %283) #8, !srcloc !62
  %286 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %io_base, align 8
  %add.ptr311 = getelementptr i8, ptr %287, i32 28704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr311, i32 %275) #8, !srcloc !62
  br label %if.end570

if.else314:                                       ; preds = %if.end16
  %288 = ptrtoint ptr %vmode.0 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %vmode.0, align 4
  %290 = tail call i32 @llvm.bswap.i32(i32 %289)
  %291 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %io_base, align 8
  %add.ptr316 = getelementptr i8, ptr %292, i32 28040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr316, i32 %290) #8, !srcloc !62
  %video_mode317 = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 1
  %293 = ptrtoint ptr %video_mode317 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %video_mode317, align 4
  %295 = tail call i32 @llvm.bswap.i32(i32 %294)
  %296 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %io_base, align 8
  %add.ptr319 = getelementptr i8, ptr %297, i32 28212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr319, i32 %295) #8, !srcloc !62
  %video_mode_adv = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 2
  %298 = ptrtoint ptr %video_mode_adv to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %video_mode_adv, align 4
  %300 = tail call i32 @llvm.bswap.i32(i32 %299)
  %301 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %io_base, align 8
  %add.ptr321 = getelementptr i8, ptr %302, i32 28216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr321, i32 %300) #8, !srcloc !62
  %video_prog_mode_present = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 4
  %303 = ptrtoint ptr %video_prog_mode_present to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %video_prog_mode_present, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %304)
  %tobool322.not = icmp eq i8 %304, 0
  br i1 %tobool322.not, label %if.else314.if.end327_crit_edge, label %if.then323

if.else314.if.end327_crit_edge:                   ; preds = %if.else314
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end327

if.then323:                                       ; preds = %if.else314
  call void @__sanitizer_cov_trace_pc() #10
  %video_prog_mode324 = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 3
  %305 = ptrtoint ptr %video_prog_mode324 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %video_prog_mode324, align 4
  %307 = tail call i32 @llvm.bswap.i32(i32 %306)
  %308 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %io_base, align 8
  %add.ptr326 = getelementptr i8, ptr %309, i32 28064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr326, i32 %307) #8, !srcloc !62
  br label %if.end327

if.end327:                                        ; preds = %if.then323, %if.else314.if.end327_crit_edge
  %video_sync_mode_present = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 6
  %310 = ptrtoint ptr %video_sync_mode_present to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %video_sync_mode_present, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %311)
  %tobool328.not = icmp eq i8 %311, 0
  br i1 %tobool328.not, label %if.end327.if.end332_crit_edge, label %if.then329

if.end327.if.end332_crit_edge:                    ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end332

if.then329:                                       ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #10
  %video_sync_mode = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 5
  %312 = ptrtoint ptr %video_sync_mode to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %video_sync_mode, align 4
  %314 = tail call i32 @llvm.bswap.i32(i32 %313)
  %315 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %io_base, align 8
  %add.ptr331 = getelementptr i8, ptr %316, i32 28164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr331, i32 %314) #8, !srcloc !62
  br label %if.end332

if.end332:                                        ; preds = %if.then329, %if.end327.if.end332_crit_edge
  %video_yc_dly_present = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 8
  %317 = ptrtoint ptr %video_yc_dly_present to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %video_yc_dly_present, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %318)
  %tobool333.not = icmp eq i8 %318, 0
  br i1 %tobool333.not, label %if.end332.if.end337_crit_edge, label %if.then334

if.end332.if.end337_crit_edge:                    ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end337

if.then334:                                       ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #10
  %video_yc_dly = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 7
  %319 = ptrtoint ptr %video_yc_dly to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %video_yc_dly, align 4
  %321 = tail call i32 @llvm.bswap.i32(i32 %320)
  %322 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %io_base, align 8
  %add.ptr336 = getelementptr i8, ptr %323, i32 28248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr336, i32 %321) #8, !srcloc !62
  br label %if.end337

if.end337:                                        ; preds = %if.then334, %if.end332.if.end337_crit_edge
  %video_rgb_ctrl_present = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 10
  %324 = ptrtoint ptr %video_rgb_ctrl_present to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %video_rgb_ctrl_present, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %325)
  %tobool338.not = icmp eq i8 %325, 0
  br i1 %tobool338.not, label %if.end337.if.end342_crit_edge, label %if.then339

if.end337.if.end342_crit_edge:                    ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end342

if.then339:                                       ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #10
  %video_rgb_ctrl = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 9
  %326 = ptrtoint ptr %video_rgb_ctrl to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %video_rgb_ctrl, align 4
  %328 = tail call i32 @llvm.bswap.i32(i32 %327)
  %329 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %io_base, align 8
  %add.ptr341 = getelementptr i8, ptr %330, i32 28380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr341, i32 %328) #8, !srcloc !62
  br label %if.end342

if.end342:                                        ; preds = %if.then339, %if.end337.if.end342_crit_edge
  %video_filt_ctrl_present = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 12
  %331 = ptrtoint ptr %video_filt_ctrl_present to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %video_filt_ctrl_present, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %332)
  %tobool343.not = icmp eq i8 %332, 0
  br i1 %tobool343.not, label %if.end342.if.end347_crit_edge, label %if.then344

if.end342.if.end347_crit_edge:                    ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end347

if.then344:                                       ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #10
  %video_filt_ctrl = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 11
  %333 = ptrtoint ptr %video_filt_ctrl to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %video_filt_ctrl, align 4
  %335 = tail call i32 @llvm.bswap.i32(i32 %334)
  %336 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %io_base, align 8
  %add.ptr346 = getelementptr i8, ptr %337, i32 28384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr346, i32 %335) #8, !srcloc !62
  br label %if.end347

if.end347:                                        ; preds = %if.then344, %if.end342.if.end347_crit_edge
  %video_ofld_voav_ofst_present = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 14
  %338 = ptrtoint ptr %video_ofld_voav_ofst_present to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %video_ofld_voav_ofst_present, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %339)
  %tobool348.not = icmp eq i8 %339, 0
  br i1 %tobool348.not, label %if.end347.if.end352_crit_edge, label %if.then349

if.end347.if.end352_crit_edge:                    ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end352

if.then349:                                       ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #10
  %video_ofld_voav_ofst = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 13
  %340 = ptrtoint ptr %video_ofld_voav_ofst to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %video_ofld_voav_ofst, align 4
  %342 = tail call i32 @llvm.bswap.i32(i32 %341)
  %343 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %io_base, align 8
  %add.ptr351 = getelementptr i8, ptr %344, i32 28392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr351, i32 %342) #8, !srcloc !62
  br label %if.end352

if.end352:                                        ; preds = %if.then349, %if.end347.if.end352_crit_edge
  %yfp1_htime = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 15
  %345 = ptrtoint ptr %yfp1_htime to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %yfp1_htime, align 4
  %347 = tail call i32 @llvm.bswap.i32(i32 %346)
  %348 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %io_base, align 8
  %add.ptr354 = getelementptr i8, ptr %349, i32 28240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr354, i32 %347) #8, !srcloc !62
  %yfp2_htime = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 16
  %350 = ptrtoint ptr %yfp2_htime to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %yfp2_htime, align 4
  %352 = tail call i32 @llvm.bswap.i32(i32 %351)
  %353 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %io_base, align 8
  %add.ptr356 = getelementptr i8, ptr %354, i32 28244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr356, i32 %352) #8, !srcloc !62
  %max_pxcnt = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 17
  %355 = ptrtoint ptr %max_pxcnt to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %max_pxcnt, align 4
  %357 = tail call i32 @llvm.bswap.i32(i32 %356)
  %358 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %io_base, align 8
  %add.ptr358 = getelementptr i8, ptr %359, i32 28252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr358, i32 %357) #8, !srcloc !62
  %hspuls_begin = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 18
  %360 = ptrtoint ptr %hspuls_begin to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %hspuls_begin, align 4
  %362 = tail call i32 @llvm.bswap.i32(i32 %361)
  %363 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %io_base, align 8
  %add.ptr360 = getelementptr i8, ptr %364, i32 28256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr360, i32 %362) #8, !srcloc !62
  %hspuls_end = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 19
  %365 = ptrtoint ptr %hspuls_end to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %hspuls_end, align 4
  %367 = tail call i32 @llvm.bswap.i32(i32 %366)
  %368 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %io_base, align 8
  %add.ptr362 = getelementptr i8, ptr %369, i32 28260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr362, i32 %367) #8, !srcloc !62
  %hspuls_switch = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 20
  %370 = ptrtoint ptr %hspuls_switch to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %hspuls_switch, align 4
  %372 = tail call i32 @llvm.bswap.i32(i32 %371)
  %373 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %io_base, align 8
  %add.ptr364 = getelementptr i8, ptr %374, i32 28264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr364, i32 %372) #8, !srcloc !62
  %vspuls_begin = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 21
  %375 = ptrtoint ptr %vspuls_begin to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %vspuls_begin, align 4
  %377 = tail call i32 @llvm.bswap.i32(i32 %376)
  %378 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %io_base, align 8
  %add.ptr366 = getelementptr i8, ptr %379, i32 28268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr366, i32 %377) #8, !srcloc !62
  %vspuls_end = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 22
  %380 = ptrtoint ptr %vspuls_end to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %vspuls_end, align 4
  %382 = tail call i32 @llvm.bswap.i32(i32 %381)
  %383 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %io_base, align 8
  %add.ptr368 = getelementptr i8, ptr %384, i32 28272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr368, i32 %382) #8, !srcloc !62
  %vspuls_bline = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 23
  %385 = ptrtoint ptr %vspuls_bline to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %vspuls_bline, align 4
  %387 = tail call i32 @llvm.bswap.i32(i32 %386)
  %388 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %io_base, align 8
  %add.ptr370 = getelementptr i8, ptr %389, i32 28276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr370, i32 %387) #8, !srcloc !62
  %vspuls_eline = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 24
  %390 = ptrtoint ptr %vspuls_eline to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %vspuls_eline, align 4
  %392 = tail call i32 @llvm.bswap.i32(i32 %391)
  %393 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %io_base, align 8
  %add.ptr372 = getelementptr i8, ptr %394, i32 28280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr372, i32 %392) #8, !srcloc !62
  %eqpuls_begin_present = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 26
  %395 = ptrtoint ptr %eqpuls_begin_present to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %eqpuls_begin_present, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %396)
  %tobool373.not = icmp eq i8 %396, 0
  br i1 %tobool373.not, label %if.end352.if.end377_crit_edge, label %if.then374

if.end352.if.end377_crit_edge:                    ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end377

if.then374:                                       ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #10
  %eqpuls_begin = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 25
  %397 = ptrtoint ptr %eqpuls_begin to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %eqpuls_begin, align 4
  %399 = tail call i32 @llvm.bswap.i32(i32 %398)
  %400 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %io_base, align 8
  %add.ptr376 = getelementptr i8, ptr %401, i32 28284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr376, i32 %399) #8, !srcloc !62
  br label %if.end377

if.end377:                                        ; preds = %if.then374, %if.end352.if.end377_crit_edge
  %eqpuls_end_present = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 28
  %402 = ptrtoint ptr %eqpuls_end_present to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %eqpuls_end_present, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %403)
  %tobool378.not = icmp eq i8 %403, 0
  br i1 %tobool378.not, label %if.end377.if.end382_crit_edge, label %if.then379

if.end377.if.end382_crit_edge:                    ; preds = %if.end377
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end382

if.then379:                                       ; preds = %if.end377
  call void @__sanitizer_cov_trace_pc() #10
  %eqpuls_end = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 27
  %404 = ptrtoint ptr %eqpuls_end to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %eqpuls_end, align 4
  %406 = tail call i32 @llvm.bswap.i32(i32 %405)
  %407 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %io_base, align 8
  %add.ptr381 = getelementptr i8, ptr %408, i32 28288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr381, i32 %406) #8, !srcloc !62
  br label %if.end382

if.end382:                                        ; preds = %if.then379, %if.end377.if.end382_crit_edge
  %eqpuls_bline_present = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 30
  %409 = ptrtoint ptr %eqpuls_bline_present to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %eqpuls_bline_present, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %410)
  %tobool383.not = icmp eq i8 %410, 0
  br i1 %tobool383.not, label %if.end382.if.end387_crit_edge, label %if.then384

if.end382.if.end387_crit_edge:                    ; preds = %if.end382
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end387

if.then384:                                       ; preds = %if.end382
  call void @__sanitizer_cov_trace_pc() #10
  %eqpuls_bline = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 29
  %411 = ptrtoint ptr %eqpuls_bline to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %eqpuls_bline, align 4
  %413 = tail call i32 @llvm.bswap.i32(i32 %412)
  %414 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %io_base, align 8
  %add.ptr386 = getelementptr i8, ptr %415, i32 28292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr386, i32 %413) #8, !srcloc !62
  br label %if.end387

if.end387:                                        ; preds = %if.then384, %if.end382.if.end387_crit_edge
  %eqpuls_eline_present = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 32
  %416 = ptrtoint ptr %eqpuls_eline_present to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %eqpuls_eline_present, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %417)
  %tobool388.not = icmp eq i8 %417, 0
  br i1 %tobool388.not, label %if.end387.if.end392_crit_edge, label %if.then389

if.end387.if.end392_crit_edge:                    ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end392

if.then389:                                       ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #10
  %eqpuls_eline = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 31
  %418 = ptrtoint ptr %eqpuls_eline to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %eqpuls_eline, align 4
  %420 = tail call i32 @llvm.bswap.i32(i32 %419)
  %421 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %io_base, align 8
  %add.ptr391 = getelementptr i8, ptr %422, i32 28296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr391, i32 %420) #8, !srcloc !62
  br label %if.end392

if.end392:                                        ; preds = %if.then389, %if.end387.if.end392_crit_edge
  %havon_begin = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 33
  %423 = ptrtoint ptr %havon_begin to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %havon_begin, align 4
  %425 = tail call i32 @llvm.bswap.i32(i32 %424)
  %426 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %io_base, align 8
  %add.ptr394 = getelementptr i8, ptr %427, i32 28304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr394, i32 %425) #8, !srcloc !62
  %havon_end = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 34
  %428 = ptrtoint ptr %havon_end to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %havon_end, align 4
  %430 = tail call i32 @llvm.bswap.i32(i32 %429)
  %431 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %io_base, align 8
  %add.ptr396 = getelementptr i8, ptr %432, i32 28300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr396, i32 %430) #8, !srcloc !62
  %vavon_bline = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 35
  %433 = ptrtoint ptr %vavon_bline to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %vavon_bline, align 4
  %435 = tail call i32 @llvm.bswap.i32(i32 %434)
  %436 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %io_base, align 8
  %add.ptr398 = getelementptr i8, ptr %437, i32 28312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr398, i32 %435) #8, !srcloc !62
  %vavon_eline = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 36
  %438 = ptrtoint ptr %vavon_eline to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %vavon_eline, align 4
  %440 = tail call i32 @llvm.bswap.i32(i32 %439)
  %441 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %io_base, align 8
  %add.ptr400 = getelementptr i8, ptr %442, i32 28348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr400, i32 %440) #8, !srcloc !62
  %hso_begin401 = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 37
  %443 = ptrtoint ptr %hso_begin401 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %hso_begin401, align 4
  %445 = tail call i32 @llvm.bswap.i32(i32 %444)
  %446 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %io_base, align 8
  %add.ptr403 = getelementptr i8, ptr %447, i32 28316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr403, i32 %445) #8, !srcloc !62
  %hso_end404 = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 38
  %448 = ptrtoint ptr %hso_end404 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %hso_end404, align 4
  %450 = tail call i32 @llvm.bswap.i32(i32 %449)
  %451 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %io_base, align 8
  %add.ptr406 = getelementptr i8, ptr %452, i32 28320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr406, i32 %450) #8, !srcloc !62
  %vso_begin = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 39
  %453 = ptrtoint ptr %vso_begin to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %vso_begin, align 4
  %455 = tail call i32 @llvm.bswap.i32(i32 %454)
  %456 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %io_base, align 8
  %add.ptr408 = getelementptr i8, ptr %457, i32 28324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr408, i32 %455) #8, !srcloc !62
  %vso_end = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 40
  %458 = ptrtoint ptr %vso_end to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %vso_end, align 4
  %460 = tail call i32 @llvm.bswap.i32(i32 %459)
  %461 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %io_base, align 8
  %add.ptr410 = getelementptr i8, ptr %462, i32 28328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr410, i32 %460) #8, !srcloc !62
  %vso_bline = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 41
  %463 = ptrtoint ptr %vso_bline to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %vso_bline, align 4
  %465 = tail call i32 @llvm.bswap.i32(i32 %464)
  %466 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %io_base, align 8
  %add.ptr412 = getelementptr i8, ptr %467, i32 28332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr412, i32 %465) #8, !srcloc !62
  %vso_eline_present = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 43
  %468 = ptrtoint ptr %vso_eline_present to i32
  call void @__asan_load1_noabort(i32 %468)
  %469 = load i8, ptr %vso_eline_present, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %469)
  %tobool413.not = icmp eq i8 %469, 0
  br i1 %tobool413.not, label %if.end392.if.end417_crit_edge, label %if.then414

if.end392.if.end417_crit_edge:                    ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end417

if.then414:                                       ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #10
  %vso_eline = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 42
  %470 = ptrtoint ptr %vso_eline to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %vso_eline, align 4
  %472 = tail call i32 @llvm.bswap.i32(i32 %471)
  %473 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %io_base, align 8
  %add.ptr416 = getelementptr i8, ptr %474, i32 28336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr416, i32 %472) #8, !srcloc !62
  br label %if.end417

if.end417:                                        ; preds = %if.then414, %if.end392.if.end417_crit_edge
  %sy_val_present = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 45
  %475 = ptrtoint ptr %sy_val_present to i32
  call void @__asan_load1_noabort(i32 %475)
  %476 = load i8, ptr %sy_val_present, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %476)
  %tobool418.not = icmp eq i8 %476, 0
  br i1 %tobool418.not, label %if.end417.if.end422_crit_edge, label %if.then419

if.end417.if.end422_crit_edge:                    ; preds = %if.end417
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end422

if.then419:                                       ; preds = %if.end417
  call void @__sanitizer_cov_trace_pc() #10
  %sy_val = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 44
  %477 = ptrtoint ptr %sy_val to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %sy_val, align 4
  %479 = tail call i32 @llvm.bswap.i32(i32 %478)
  %480 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %io_base, align 8
  %add.ptr421 = getelementptr i8, ptr %481, i32 28352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr421, i32 %479) #8, !srcloc !62
  br label %if.end422

if.end422:                                        ; preds = %if.then419, %if.end417.if.end422_crit_edge
  %sy2_val_present = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 47
  %482 = ptrtoint ptr %sy2_val_present to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %sy2_val_present, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %483)
  %tobool423.not = icmp eq i8 %483, 0
  br i1 %tobool423.not, label %if.end422.if.end427_crit_edge, label %if.then424

if.end422.if.end427_crit_edge:                    ; preds = %if.end422
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end427

if.then424:                                       ; preds = %if.end422
  call void @__sanitizer_cov_trace_pc() #10
  %sy2_val = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 46
  %484 = ptrtoint ptr %sy2_val to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %sy2_val, align 4
  %486 = tail call i32 @llvm.bswap.i32(i32 %485)
  %487 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %io_base, align 8
  %add.ptr426 = getelementptr i8, ptr %488, i32 28356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr426, i32 %486) #8, !srcloc !62
  br label %if.end427

if.end427:                                        ; preds = %if.then424, %if.end422.if.end427_crit_edge
  %max_lncnt = getelementptr inbounds %struct.anon.0, ptr %vmode.0, i32 0, i32 48
  %489 = ptrtoint ptr %max_lncnt to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %max_lncnt, align 4
  %491 = tail call i32 @llvm.bswap.i32(i32 %490)
  %492 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %io_base, align 8
  %add.ptr429 = getelementptr i8, ptr %493, i32 28344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr429, i32 %491) #8, !srcloc !62
  %494 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %io_base, align 8
  %add.ptr431 = getelementptr i8, ptr %495, i32 28160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr431, i32 16777216) #8, !srcloc !62
  %496 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %io_base, align 8
  %add.ptr434 = getelementptr i8, ptr %497, i32 28212
  %498 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr434) #8, !srcloc !61
  %499 = or i32 %498, 4194304
  %500 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %io_base, align 8
  %add.ptr440 = getelementptr i8, ptr %501, i32 28212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr440, i32 %499) #8, !srcloc !62
  %502 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %io_base, align 8
  %add.ptr443 = getelementptr i8, ptr %503, i32 28304
  %504 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr443) #8, !srcloc !61
  %505 = tail call i32 @llvm.bswap.i32(i32 %504)
  %add446 = add i32 %505, %spec.select
  call void @__sanitizer_cov_trace_cmp4(i32 %add446, i32 %spec.select1083)
  %cmp.not.i1062 = icmp ult i32 %add446, %spec.select1083
  %sub.i1063 = select i1 %cmp.not.i1062, i32 0, i32 %spec.select1083
  %retval.0.i1064 = sub i32 %add446, %sub.i1063
  %add448 = add i32 %retval.0.i1064, %active_pixels_venc.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add448, i32 %spec.select1083)
  %cmp.not.i1065 = icmp ult i32 %add448, %spec.select1083
  %sub.i1066 = select i1 %cmp.not.i1065, i32 0, i32 %spec.select1083
  %retval.0.i1067 = sub i32 %add448, %sub.i1066
  %506 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i1064)
  %507 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %io_base, align 8
  %add.ptr451 = getelementptr i8, ptr %508, i32 28904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr451, i32 %506) #8, !srcloc !62
  %509 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i1067)
  %510 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %io_base, align 8
  %add.ptr453 = getelementptr i8, ptr %511, i32 28908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr453, i32 %509) #8, !srcloc !62
  %512 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %io_base, align 8
  %add.ptr456 = getelementptr i8, ptr %513, i32 28312
  %514 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr456) #8, !srcloc !61
  %515 = tail call i32 @llvm.bswap.i32(i32 %514)
  %516 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %flags, align 4
  %518 = ptrtoint ptr %vdisplay22 to i32
  call void @__asan_load2_noabort(i32 %518)
  %519 = load i16, ptr %vdisplay22, align 2
  %520 = trunc i32 %517 to i16
  %521 = lshr i16 %520, 4
  %522 = and i16 %521, 1
  %div465.pn.in = lshr i16 %519, %522
  %div465.pn = zext i16 %div465.pn.in to i32
  %de_v_end_even.0 = add i32 %515, %div465.pn
  %523 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %io_base, align 8
  %add.ptr473 = getelementptr i8, ptr %524, i32 28912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr473, i32 %514) #8, !srcloc !62
  %525 = tail call i32 @llvm.bswap.i32(i32 %de_v_end_even.0)
  %526 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %io_base, align 8
  %add.ptr475 = getelementptr i8, ptr %527, i32 28916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr475, i32 %525) #8, !srcloc !62
  %528 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %flags, align 4
  %and477 = and i32 %529, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and477)
  %tobool478.not = icmp eq i32 %and477, 0
  br i1 %tobool478.not, label %if.end427.if.end502_crit_edge, label %if.then479

if.end427.if.end502_crit_edge:                    ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end502

if.then479:                                       ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #10
  %530 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %io_base, align 8
  %add.ptr482 = getelementptr i8, ptr %531, i32 28392
  %532 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr482) #8, !srcloc !61
  %533 = lshr i32 %532, 28
  %sub.i1069 = or i32 %533, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %532)
  %cmp.i10681089 = icmp slt i32 %532, 0
  %retval.0.i1070 = select i1 %cmp.i10681089, i32 %sub.i1069, i32 %533
  %add488 = add i32 %retval.0.i1070, %515
  %534 = ptrtoint ptr %vtotal29 to i32
  call void @__asan_load2_noabort(i32 %534)
  %535 = load i16, ptr %vtotal29, align 4
  %conv490 = zext i16 %535 to i32
  %sub491 = add nsw i32 %conv490, -1
  %div492 = sdiv i32 %sub491, 2
  %add493 = add i32 %add488, %div492
  %536 = ptrtoint ptr %vdisplay22 to i32
  call void @__asan_load2_noabort(i32 %536)
  %537 = load i16, ptr %vdisplay22, align 2
  %538 = lshr i16 %537, 1
  %div496 = zext i16 %538 to i32
  %add497 = add i32 %add493, %div496
  %539 = tail call i32 @llvm.bswap.i32(i32 %add493)
  %540 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %io_base, align 8
  %add.ptr499 = getelementptr i8, ptr %541, i32 28920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr499, i32 %539) #8, !srcloc !62
  %542 = tail call i32 @llvm.bswap.i32(i32 %add497)
  %543 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %io_base, align 8
  %add.ptr501 = getelementptr i8, ptr %544, i32 28924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr501, i32 %542) #8, !srcloc !62
  %phi.bo = add i32 %add493, -1
  br label %if.end502

if.end502:                                        ; preds = %if.then479, %if.end427.if.end502_crit_edge
  %de_v_begin_odd.0 = phi i32 [ %phi.bo, %if.then479 ], [ -1, %if.end427.if.end502_crit_edge ]
  %add503 = add i32 %retval.0.i1067, %front_porch_venc.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add503, i32 %spec.select1083)
  %cmp504.not = icmp ult i32 %add503, %spec.select1083
  %vs_adjust.1.neg = zext i1 %cmp504.not to i32
  %sub508 = select i1 %cmp504.not, i32 0, i32 %spec.select1083
  %hs_begin.1 = sub i32 %add503, %sub508
  %add512 = add i32 %hs_begin.1, %hsync_pixels_venc.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add512, i32 %spec.select1083)
  %cmp.not.i1071 = icmp ult i32 %add512, %spec.select1083
  %sub.i1072 = select i1 %cmp.not.i1071, i32 0, i32 %spec.select1083
  %retval.0.i1073 = sub i32 %add512, %sub.i1072
  %545 = tail call i32 @llvm.bswap.i32(i32 %hs_begin.1)
  %546 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %io_base, align 8
  %add.ptr515 = getelementptr i8, ptr %547, i32 28864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr515, i32 %545) #8, !srcloc !62
  %548 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i1073)
  %549 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %io_base, align 8
  %add.ptr517 = getelementptr i8, ptr %550, i32 28868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr517, i32 %548) #8, !srcloc !62
  %add518 = add i32 %sof_lines.0, %vsync_lines.0
  %add520 = add i32 %add518, %vs_adjust.1.neg
  call void @__sanitizer_cov_trace_cmp4(i32 %515, i32 %add520)
  %cmp521.not = icmp ult i32 %515, %add520
  br i1 %cmp521.not, label %if.else528, label %if.end502.if.end536_crit_edge

if.end502.if.end536_crit_edge:                    ; preds = %if.end502
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end536

if.else528:                                       ; preds = %if.end502
  call void @__sanitizer_cov_trace_pc() #10
  %551 = ptrtoint ptr %vtotal29 to i32
  call void @__asan_load2_noabort(i32 %551)
  %552 = load i16, ptr %vtotal29, align 4
  %conv530 = zext i16 %552 to i32
  %add531 = add i32 %515, %conv530
  br label %if.end536

if.end536:                                        ; preds = %if.else528, %if.end502.if.end536_crit_edge
  %.pn = phi i32 [ %add531, %if.else528 ], [ %515, %if.end502.if.end536_crit_edge ]
  %vs_bline_evn.0 = sub i32 %.pn, %add520
  %add537 = add i32 %vs_bline_evn.0, %vsync_lines.0
  %553 = ptrtoint ptr %vtotal29 to i32
  call void @__asan_load2_noabort(i32 %553)
  %554 = load i16, ptr %vtotal29, align 4
  %conv539 = zext i16 %554 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add537, i32 %conv539)
  %cmp.not.i1074 = icmp ult i32 %add537, %conv539
  %sub.i1075 = select i1 %cmp.not.i1074, i32 0, i32 %conv539
  %retval.0.i1076 = sub i32 %add537, %sub.i1075
  %555 = tail call i32 @llvm.bswap.i32(i32 %vs_bline_evn.0)
  %556 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %io_base, align 8
  %add.ptr542 = getelementptr i8, ptr %557, i32 28872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr542, i32 %555) #8, !srcloc !62
  %558 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i1076)
  %559 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %io_base, align 8
  %add.ptr544 = getelementptr i8, ptr %560, i32 28880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr544, i32 %558) #8, !srcloc !62
  %561 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %io_base, align 8
  %add.ptr546 = getelementptr i8, ptr %562, i32 28888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr546, i32 %545) #8, !srcloc !62
  %563 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %io_base, align 8
  %add.ptr548 = getelementptr i8, ptr %564, i32 28896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr548, i32 %545) #8, !srcloc !62
  %565 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %flags, align 4
  %and550 = and i32 %566, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and550)
  %tobool551.not = icmp eq i32 %and550, 0
  br i1 %tobool551.not, label %if.end536.if.end569_crit_edge, label %if.then552

if.end536.if.end569_crit_edge:                    ; preds = %if.end536
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end569

if.then552:                                       ; preds = %if.end536
  call void @__sanitizer_cov_trace_pc() #10
  %sub555 = sub i32 %de_v_begin_odd.0, %add518
  %sub557 = sub i32 %de_v_begin_odd.0, %vsync_lines.0
  %shr558 = lshr i32 %spec.select1083, 1
  %add559 = add i32 %hs_begin.1, %shr558
  call void @__sanitizer_cov_trace_cmp4(i32 %add559, i32 %spec.select1083)
  %cmp.not.i1077 = icmp ult i32 %add559, %spec.select1083
  %sub.i1078 = select i1 %cmp.not.i1077, i32 0, i32 %spec.select1083
  %retval.0.i1079 = sub i32 %add559, %sub.i1078
  %567 = tail call i32 @llvm.bswap.i32(i32 %sub555)
  %568 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %io_base, align 8
  %add.ptr562 = getelementptr i8, ptr %569, i32 28876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr562, i32 %567) #8, !srcloc !62
  %570 = tail call i32 @llvm.bswap.i32(i32 %sub557)
  %571 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %io_base, align 8
  %add.ptr564 = getelementptr i8, ptr %572, i32 28884
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr564, i32 %570) #8, !srcloc !62
  %573 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i1079)
  %574 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %io_base, align 8
  %add.ptr566 = getelementptr i8, ptr %575, i32 28892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr566, i32 %573) #8, !srcloc !62
  %576 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %io_base, align 8
  %add.ptr568 = getelementptr i8, ptr %577, i32 28900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr568, i32 %573) #8, !srcloc !62
  br label %if.end569

if.end569:                                        ; preds = %if.then552, %if.end536.if.end569_crit_edge
  tail call void @meson_vpp_setup_mux(ptr noundef %priv, i32 noundef 10) #8
  br label %if.end570

if.end570:                                        ; preds = %if.end569, %if.else306, %if.then299, %if.then268
  %. = phi i32 [ 1, %if.then268 ], [ 1, %if.else306 ], [ 1, %if.then299 ], [ 2, %if.end569 ]
  %578 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load i32, ptr %flags, align 4
  %and576 = shl i32 %579, 2
  %580 = and i32 %and576, 4
  %and582 = shl i32 %579, 1
  %581 = and i32 %and582, 8
  %582 = or i32 %., %ycrcb_map
  %583 = or i32 %582, %580
  %or587 = or i32 %583, %581
  %brmerge = or i1 %retval.0.i1047, %yuv420_mode
  %or593 = or i32 %or587, 256
  %reg.3 = select i1 %brmerge, i32 %or593, i32 %or587
  %584 = or i32 %reg.3, %and
  %585 = tail call i32 @llvm.bswap.i32(i32 %584)
  %586 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %io_base, align 8
  %add.ptr600 = getelementptr i8, ptr %587, i32 40044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr600, i32 %585) #8, !srcloc !62
  %venc = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 16
  %hdmi_repeat602 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 16, i32 1
  %frombool603 = zext i1 %3 to i8
  %588 = ptrtoint ptr %hdmi_repeat602 to i32
  call void @__asan_store1_noabort(i32 %588)
  store i8 %frombool603, ptr %hdmi_repeat602, align 4
  %venc_repeat606 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 16, i32 2
  %frombool607 = zext i1 %retval.0.i1047 to i8
  %589 = ptrtoint ptr %venc_repeat606 to i32
  call void @__asan_store1_noabort(i32 %589)
  store i8 %frombool607, ptr %venc_repeat606, align 1
  %hdmi_use_enci = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 16, i32 3
  %frombool610 = zext i1 %use_enci.1.off0 to i8
  %590 = ptrtoint ptr %hdmi_use_enci to i32
  call void @__asan_store1_noabort(i32 %590)
  store i8 %frombool610, ptr %hdmi_use_enci, align 2
  %591 = ptrtoint ptr %venc to i32
  call void @__asan_store4_noabort(i32 %591)
  store i32 3, ptr %venc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end570, %do.end
  call void @llvm.lifetime.end.p0(i64 196, ptr nonnull %vmode_dmt) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @meson_vpp_setup_mux(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @meson_venci_cvbs_mode_set(ptr noundef %priv, ptr noundef readonly %mode) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %venc = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 16
  %2 = ptrtoint ptr %venc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %venc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 27984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 301989888) #8, !srcloc !62
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 8
  %add.ptr2 = getelementptr i8, ptr %7, i32 28712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 301989888) #8, !srcloc !62
  %8 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base, align 8
  %add.ptr4 = getelementptr i8, ptr %9, i32 28040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #8, !srcloc !62
  %10 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base, align 8
  %add.ptr6 = getelementptr i8, ptr %11, i32 27648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #8, !srcloc !62
  %12 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base, align 8
  %add.ptr8 = getelementptr i8, ptr %13, i32 27652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #8, !srcloc !62
  %hso_begin = getelementptr inbounds %struct.meson_cvbs_enci_mode, ptr %mode, i32 0, i32 1
  %14 = ptrtoint ptr %hso_begin to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hso_begin, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base, align 8
  %add.ptr10 = getelementptr i8, ptr %18, i32 27688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %16) #8, !srcloc !62
  %hso_end = getelementptr inbounds %struct.meson_cvbs_enci_mode, ptr %mode, i32 0, i32 2
  %19 = ptrtoint ptr %hso_end to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hso_end, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base, align 8
  %add.ptr12 = getelementptr i8, ptr %23, i32 27692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %21) #8, !srcloc !62
  %vso_even = getelementptr inbounds %struct.meson_cvbs_enci_mode, ptr %mode, i32 0, i32 3
  %24 = ptrtoint ptr %vso_even to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vso_even, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_base, align 8
  %add.ptr14 = getelementptr i8, ptr %28, i32 27704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %26) #8, !srcloc !62
  %vso_odd = getelementptr inbounds %struct.meson_cvbs_enci_mode, ptr %mode, i32 0, i32 4
  %29 = ptrtoint ptr %vso_odd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vso_odd, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_base, align 8
  %add.ptr16 = getelementptr i8, ptr %33, i32 27708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %31) #8, !srcloc !62
  %macv_max_amp = getelementptr inbounds %struct.meson_cvbs_enci_mode, ptr %mode, i32 0, i32 5
  %34 = ptrtoint ptr %macv_max_amp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %macv_max_amp, align 4
  %and = and i32 %35, 1023
  %or = or i32 %and, 32768
  %36 = tail call i32 @llvm.bswap.i32(i32 %or)
  %37 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_base, align 8
  %add.ptr18 = getelementptr i8, ptr %38, i32 27968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %36) #8, !srcloc !62
  %video_prog_mode = getelementptr inbounds %struct.meson_cvbs_enci_mode, ptr %mode, i32 0, i32 6
  %39 = ptrtoint ptr %video_prog_mode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %video_prog_mode, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_base, align 8
  %add.ptr20 = getelementptr i8, ptr %43, i32 28064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %41) #8, !srcloc !62
  %video_mode = getelementptr inbounds %struct.meson_cvbs_enci_mode, ptr %mode, i32 0, i32 7
  %44 = ptrtoint ptr %video_mode to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %video_mode, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io_base, align 8
  %add.ptr22 = getelementptr i8, ptr %48, i32 27648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %46) #8, !srcloc !62
  %49 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io_base, align 8
  %add.ptr24 = getelementptr i8, ptr %50, i32 27652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 637534208) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %sch_adjust = getelementptr inbounds %struct.meson_cvbs_enci_mode, ptr %mode, i32 0, i32 8
  %51 = ptrtoint ptr %sch_adjust to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sch_adjust, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %54 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %io_base, align 8
  %add.ptr26 = getelementptr i8, ptr %55, i32 27676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %53) #8, !srcloc !62
  %56 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %io_base, align 8
  %add.ptr28 = getelementptr i8, ptr %57, i32 27680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 117440512) #8, !srcloc !62
  %yc_delay = getelementptr inbounds %struct.meson_cvbs_enci_mode, ptr %mode, i32 0, i32 9
  %58 = ptrtoint ptr %yc_delay to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %yc_delay, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %61 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %io_base, align 8
  %add.ptr30 = getelementptr i8, ptr %62, i32 27992
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %60) #8, !srcloc !62
  %pixel_start = getelementptr inbounds %struct.meson_cvbs_enci_mode, ptr %mode, i32 0, i32 10
  %63 = ptrtoint ptr %pixel_start to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pixel_start, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %66 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %io_base, align 8
  %add.ptr32 = getelementptr i8, ptr %67, i32 28772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %65) #8, !srcloc !62
  %pixel_end = getelementptr inbounds %struct.meson_cvbs_enci_mode, ptr %mode, i32 0, i32 11
  %68 = ptrtoint ptr %pixel_end to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pixel_end, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %71 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %io_base, align 8
  %add.ptr34 = getelementptr i8, ptr %72, i32 28776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %70) #8, !srcloc !62
  %top_field_line_start = getelementptr inbounds %struct.meson_cvbs_enci_mode, ptr %mode, i32 0, i32 12
  %73 = ptrtoint ptr %top_field_line_start to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %top_field_line_start, align 4
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  %76 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %io_base, align 8
  %add.ptr36 = getelementptr i8, ptr %77, i32 28780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %75) #8, !srcloc !62
  %top_field_line_end = getelementptr inbounds %struct.meson_cvbs_enci_mode, ptr %mode, i32 0, i32 13
  %78 = ptrtoint ptr %top_field_line_end to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %top_field_line_end, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  %81 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %io_base, align 8
  %add.ptr38 = getelementptr i8, ptr %82, i32 28784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %80) #8, !srcloc !62
  %bottom_field_line_start = getelementptr inbounds %struct.meson_cvbs_enci_mode, ptr %mode, i32 0, i32 14
  %83 = ptrtoint ptr %bottom_field_line_start to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bottom_field_line_start, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  %86 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %io_base, align 8
  %add.ptr40 = getelementptr i8, ptr %87, i32 28788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %85) #8, !srcloc !62
  %bottom_field_line_end = getelementptr inbounds %struct.meson_cvbs_enci_mode, ptr %mode, i32 0, i32 15
  %88 = ptrtoint ptr %bottom_field_line_end to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bottom_field_line_end, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  %91 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %io_base, align 8
  %add.ptr42 = getelementptr i8, ptr %92, i32 28792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %90) #8, !srcloc !62
  %93 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %io_base, align 8
  %add.ptr44 = getelementptr i8, ptr %94, i32 28032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 0) #8, !srcloc !62
  %95 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %io_base, align 8
  %add.ptr46 = getelementptr i8, ptr %96, i32 27936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 0) #8, !srcloc !62
  %97 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %io_base, align 8
  %add.ptr48 = getelementptr i8, ptr %98, i32 28768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 21889024) #8, !srcloc !62
  %99 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %io_base, align 8
  %add.ptr50 = getelementptr i8, ptr %100, i32 28152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 0) #8, !srcloc !62
  %101 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %io_base, align 8
  %add.ptr53 = getelementptr i8, ptr %102, i32 28048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 1627389952) #8, !srcloc !62
  %103 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %io_base, align 8
  %add.ptr56 = getelementptr i8, ptr %104, i32 28052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 1631584256) #8, !srcloc !62
  %105 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %io_base, align 8
  %add.ptr59 = getelementptr i8, ptr %106, i32 28056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 1632632832) #8, !srcloc !62
  %107 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %io_base, align 8
  %add.ptr61 = getelementptr i8, ptr %108, i32 28128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 0) #8, !srcloc !62
  %109 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %io_base, align 8
  %add.ptr63 = getelementptr i8, ptr %110, i32 28132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 0) #8, !srcloc !62
  %111 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %io_base, align 8
  %add.ptr65 = getelementptr i8, ptr %112, i32 28136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 0) #8, !srcloc !62
  %113 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %io_base, align 8
  %add.ptr67 = getelementptr i8, ptr %114, i32 28140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 0) #8, !srcloc !62
  %115 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %io_base, align 8
  %add.ptr69 = getelementptr i8, ptr %116, i32 28144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 0) #8, !srcloc !62
  %117 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %io_base, align 8
  %add.ptr71 = getelementptr i8, ptr %118, i32 28148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 0) #8, !srcloc !62
  tail call void @meson_vpp_setup_mux(ptr noundef %priv, i32 noundef 5) #8
  %119 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %io_base, align 8
  %add.ptr73 = getelementptr i8, ptr %120, i32 28656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 2097152) #8, !srcloc !62
  %121 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %io_base, align 8
  %add.ptr75 = getelementptr i8, ptr %122, i32 28716
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 285212672) #8, !srcloc !62
  %123 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %io_base, align 8
  %add.ptr77 = getelementptr i8, ptr %124, i32 28720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 285212672) #8, !srcloc !62
  %125 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %io_base, align 8
  %add.ptr79 = getelementptr i8, ptr %126, i32 27996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 16777216) #8, !srcloc !62
  %video_saturation = getelementptr inbounds %struct.meson_cvbs_enci_mode, ptr %mode, i32 0, i32 16
  %127 = ptrtoint ptr %video_saturation to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %video_saturation, align 4
  %129 = tail call i32 @llvm.bswap.i32(i32 %128)
  %130 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %io_base, align 8
  %add.ptr81 = getelementptr i8, ptr %131, i32 27668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %129) #8, !srcloc !62
  %video_contrast = getelementptr inbounds %struct.meson_cvbs_enci_mode, ptr %mode, i32 0, i32 17
  %132 = ptrtoint ptr %video_contrast to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %video_contrast, align 4
  %134 = tail call i32 @llvm.bswap.i32(i32 %133)
  %135 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %io_base, align 8
  %add.ptr83 = getelementptr i8, ptr %136, i32 27664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %134) #8, !srcloc !62
  %video_brightness = getelementptr inbounds %struct.meson_cvbs_enci_mode, ptr %mode, i32 0, i32 18
  %137 = ptrtoint ptr %video_brightness to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %video_brightness, align 4
  %139 = tail call i32 @llvm.bswap.i32(i32 %138)
  %140 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %io_base, align 8
  %add.ptr85 = getelementptr i8, ptr %141, i32 27660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 %139) #8, !srcloc !62
  %video_hue = getelementptr inbounds %struct.meson_cvbs_enci_mode, ptr %mode, i32 0, i32 19
  %142 = ptrtoint ptr %video_hue to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %video_hue, align 4
  %144 = tail call i32 @llvm.bswap.i32(i32 %143)
  %145 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %io_base, align 8
  %add.ptr87 = getelementptr i8, ptr %146, i32 27672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %144) #8, !srcloc !62
  %147 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %io_base, align 8
  %add.ptr89 = getelementptr i8, ptr %148, i32 29024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 16777216) #8, !srcloc !62
  %149 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %io_base, align 8
  %add.ptr91 = getelementptr i8, ptr %150, i32 29028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 1224474624) #8, !srcloc !62
  %151 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %io_base, align 8
  %add.ptr93 = getelementptr i8, ptr %152, i32 27840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 0) #8, !srcloc !62
  %analog_sync_adj = getelementptr inbounds %struct.meson_cvbs_enci_mode, ptr %mode, i32 0, i32 20
  %153 = ptrtoint ptr %analog_sync_adj to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %analog_sync_adj, align 4
  %155 = tail call i32 @llvm.bswap.i32(i32 %154)
  %156 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %io_base, align 8
  %add.ptr95 = getelementptr i8, ptr %157, i32 27720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 %155) #8, !srcloc !62
  %158 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %mode, align 4
  %160 = ptrtoint ptr %venc to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %venc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @meson_venci_get_field(ptr nocapture noundef readonly %priv) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 40048
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !61
  %3 = shl i32 %2, 24
  %and = and i32 %3, 536870912
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @meson_venc_enable_vsync(ptr nocapture noundef readonly %priv) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 28088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #8, !srcloc !62
  %hhi = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hhi, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 328, i32 noundef 33554432, i32 noundef 33554432, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @meson_venc_disable_vsync(ptr nocapture noundef readonly %priv) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hhi = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hhi, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 328, i32 noundef 33554432, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 28088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !62
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @meson_venc_init(ptr nocapture noundef %priv) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %compat.i = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %compat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 3
  %hhi = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hhi, align 4
  %. = select i1 %cmp.i.not, i32 748, i32 756
  %.35 = select i1 %cmp.i.not, i32 752, i32 760
  %call5 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %., i32 noundef 0) #8
  %4 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hhi, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %.35, i32 noundef 8) #8
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 28152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -16777216) #8, !srcloc !62
  %hhi8 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 3
  %8 = ptrtoint ptr %hhi8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hhi8, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 928, i32 noundef 0) #8
  %10 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base, align 8
  %add.ptr11 = getelementptr i8, ptr %11, i32 40044
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #8, !srcloc !61
  %13 = and i32 %12, -50331649
  %14 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base, align 8
  %add.ptr14 = getelementptr i8, ptr %15, i32 40044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %13) #8, !srcloc !62
  %16 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base, align 8
  %add.ptr16 = getelementptr i8, ptr %17, i32 27996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #8, !srcloc !62
  %18 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base, align 8
  %add.ptr18 = getelementptr i8, ptr %19, i32 28160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #8, !srcloc !62
  %20 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base, align 8
  %add.ptr20 = getelementptr i8, ptr %21, i32 29312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #8, !srcloc !62
  %22 = ptrtoint ptr %hhi8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hhi8, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 328, i32 noundef 33554432, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %24 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_base, align 8
  %add.ptr.i = getelementptr i8, ptr %25, i32 28088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !62
  %venc = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 16
  %26 = ptrtoint ptr %venc to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %venc, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !48, !49, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @meson_cvbs_enci_pal, !1, !"meson_cvbs_enci_pal", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/meson/meson_venc.c", i32 69, i32 29}
!2 = !{ptr @meson_cvbs_enci_ntsc, !3, !"meson_cvbs_enci_ntsc", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/meson/meson_venc.c", i32 93, i32 29}
!4 = !{ptr @meson_hdmi_enci_mode_480i, !5, !"meson_hdmi_enci_mode_480i", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/meson/meson_venc.c", i32 189, i32 28}
!6 = !{ptr @meson_hdmi_enci_mode_576i, !7, !"meson_hdmi_enci_mode_576i", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/meson/meson_venc.c", i32 209, i32 28}
!8 = !{ptr @meson_hdmi_encp_mode_480p, !9, !"meson_hdmi_encp_mode_480p", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/meson/meson_venc.c", i32 229, i32 28}
!10 = !{ptr @meson_hdmi_encp_mode_576p, !11, !"meson_hdmi_encp_mode_576p", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/meson/meson_venc.c", i32 275, i32 28}
!12 = !{ptr @meson_hdmi_encp_mode_720p60, !13, !"meson_hdmi_encp_mode_720p60", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/meson/meson_venc.c", i32 321, i32 28}
!14 = !{ptr @meson_hdmi_encp_mode_720p50, !15, !"meson_hdmi_encp_mode_720p50", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/meson/meson_venc.c", i32 363, i32 28}
!16 = !{ptr @meson_hdmi_encp_mode_1080i60, !17, !"meson_hdmi_encp_mode_1080i60", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/meson/meson_venc.c", i32 408, i32 28}
!18 = !{ptr @meson_hdmi_encp_mode_1080i50, !19, !"meson_hdmi_encp_mode_1080i50", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/meson/meson_venc.c", i32 457, i32 28}
!20 = !{ptr @meson_hdmi_encp_mode_1080p24, !21, !"meson_hdmi_encp_mode_1080p24", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/meson/meson_venc.c", i32 506, i32 28}
!22 = !{ptr @meson_hdmi_encp_mode_1080p30, !23, !"meson_hdmi_encp_mode_1080p30", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/meson/meson_venc.c", i32 555, i32 28}
!24 = !{ptr @meson_hdmi_encp_mode_1080p50, !25, !"meson_hdmi_encp_mode_1080p50", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/meson/meson_venc.c", i32 599, i32 28}
!26 = !{ptr @meson_hdmi_encp_mode_1080p60, !27, !"meson_hdmi_encp_mode_1080p60", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/meson/meson_venc.c", i32 647, i32 28}
!28 = !{ptr @meson_hdmi_encp_mode_2160p24, !29, !"meson_hdmi_encp_mode_2160p24", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/meson/meson_venc.c", i32 691, i32 28}
!30 = !{ptr @meson_hdmi_encp_mode_2160p25, !31, !"meson_hdmi_encp_mode_2160p25", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/meson/meson_venc.c", i32 733, i32 28}
!32 = !{ptr @meson_hdmi_encp_mode_2160p30, !33, !"meson_hdmi_encp_mode_2160p30", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/meson/meson_venc.c", i32 775, i32 28}
!34 = !{ptr @meson_hdmi_venc_vic_modes, !35, !"meson_hdmi_venc_vic_modes", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/meson/meson_venc.c", i32 820, i32 3}
!36 = !{ptr @__ksymtab_meson_venc_hdmi_supported_mode, !37, !"__ksymtab_meson_venc_hdmi_supported_mode", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/meson/meson_venc.c", i32 877, i32 1}
!38 = !{ptr @__ksymtab_meson_venc_hdmi_supported_vic, !39, !"__ksymtab_meson_venc_hdmi_supported_vic", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/meson/meson_venc.c", i32 891, i32 1}
!40 = !{ptr @__ksymtab_meson_venc_hdmi_venc_repeat, !41, !"__ksymtab_meson_venc_hdmi_venc_repeat", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/meson/meson_venc.c", i32 946, i32 1}
!42 = !{ptr @.str, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/meson/meson_venc.c", i32 993, i32 4}
!44 = !{ptr @.str.1, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.2, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.3, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.4, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @meson_venc_hdmi_mode_set._entry, !43, !"_entry", i1 false, i1 false}
!49 = !{ptr @meson_venc_hdmi_mode_set._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @__ksymtab_meson_venc_hdmi_mode_set, !51, !"__ksymtab_meson_venc_hdmi_mode_set", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/meson/meson_venc.c", i32 1558, i32 1}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i64 5009634}
!62 = !{i64 5009216}
!63 = !{i64 2154846017}
!64 = !{i8 0, i8 2}
!65 = !{i64 2154881181}
