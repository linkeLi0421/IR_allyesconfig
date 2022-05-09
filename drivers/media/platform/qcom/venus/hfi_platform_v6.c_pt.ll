; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/venus/hfi_platform_v6.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/venus/hfi_platform_v6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hfi_platform = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hfi_platform_codec_freq_data = type { i32, i32, i32, i32, i32 }
%struct.hfi_capability = type { i32, i32, i32, i32 }
%struct.hfi_profile_level = type { i32, i32 }
%struct.raw_formats = type { i32, i32 }

@hfi_plat_v6 = dso_local constant { %struct.hfi_platform, [40 x i8] } { %struct.hfi_platform { ptr @codec_vpp_freq, ptr @codec_vsp_freq, ptr @codec_lp_freq, ptr @get_codecs, ptr @get_capabilities, ptr @hfi_plat_bufreq_v6 }, [40 x i8] zeroinitializer }, align 32
@codec_freq_data = internal constant { [8 x %struct.hfi_platform_codec_freq_data], [32 x i8] } { [8 x %struct.hfi_platform_codec_freq_data] [%struct.hfi_platform_codec_freq_data { i32 875967048, i32 1, i32 675, i32 25, i32 320 }, %struct.hfi_platform_codec_freq_data { i32 1129727304, i32 1, i32 675, i32 25, i32 320 }, %struct.hfi_platform_codec_freq_data { i32 808996950, i32 1, i32 675, i32 60, i32 320 }, %struct.hfi_platform_codec_freq_data { i32 843534413, i32 2, i32 200, i32 25, i32 200 }, %struct.hfi_platform_codec_freq_data { i32 875967048, i32 2, i32 200, i32 25, i32 200 }, %struct.hfi_platform_codec_freq_data { i32 1129727304, i32 2, i32 200, i32 25, i32 200 }, %struct.hfi_platform_codec_freq_data { i32 808996950, i32 2, i32 200, i32 60, i32 200 }, %struct.hfi_platform_codec_freq_data { i32 809062486, i32 2, i32 200, i32 60, i32 200 }], [32 x i8] zeroinitializer }, align 32
@caps = internal constant { <{ { i32, i32, i8, i32, <{ [9 x %struct.hfi_capability], [23 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, [11 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }>, i8 }, { i32, i32, i8, i32, <{ [10 x %struct.hfi_capability], [22 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, [14 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [25 x %struct.raw_formats] }>, i8 }, { i32, i32, i8, i32, <{ [10 x %struct.hfi_capability], [22 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, [12 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }>, i8 }, { i32, i32, i8, i32, <{ [10 x %struct.hfi_capability], [22 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, [14 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [25 x %struct.raw_formats] }>, i8 }, { i32, i32, i8, i32, <{ [10 x %struct.hfi_capability], [22 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, [14 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }>, i8 }, { i32, i32, i8, i32, <{ [21 x %struct.hfi_capability], [11 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, [11 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }>, i8 }, { i32, i32, i8, i32, <{ [24 x %struct.hfi_capability], [8 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, [14 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }>, i8 }, { i32, i32, i8, i32, <{ [23 x %struct.hfi_capability], [9 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, [12 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }>, i8 } }>, [1824 x i8] } { <{ { i32, i32, i8, i32, <{ [9 x %struct.hfi_capability], [23 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, [11 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }>, i8 }, { i32, i32, i8, i32, <{ [10 x %struct.hfi_capability], [22 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, [14 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [25 x %struct.raw_formats] }>, i8 }, { i32, i32, i8, i32, <{ [10 x %struct.hfi_capability], [22 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, [12 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }>, i8 }, { i32, i32, i8, i32, <{ [10 x %struct.hfi_capability], [22 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, [14 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [25 x %struct.raw_formats] }>, i8 }, { i32, i32, i8, i32, <{ [10 x %struct.hfi_capability], [22 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, [14 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }>, i8 }, { i32, i32, i8, i32, <{ [21 x %struct.hfi_capability], [11 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, [11 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }>, i8 }, { i32, i32, i8, i32, <{ [24 x %struct.hfi_capability], [8 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, [14 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }>, i8 }, { i32, i32, i8, i32, <{ [23 x %struct.hfi_capability], [9 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, [12 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }>, i8 } }> <{ { i32, i32, i8, i32, <{ [9 x %struct.hfi_capability], [23 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, [11 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }>, i8 } { i32 2, i32 2, i8 1, i32 9, <{ [9 x %struct.hfi_capability], [23 x %struct.hfi_capability] }> <{ [9 x %struct.hfi_capability] [%struct.hfi_capability { i32 1, i32 128, i32 8192, i32 1 }, %struct.hfi_capability { i32 2, i32 128, i32 8192, i32 1 }, %struct.hfi_capability { i32 3, i32 64, i32 138240, i32 1 }, %struct.hfi_capability { i32 8, i32 1, i32 220000000, i32 1 }, %struct.hfi_capability { i32 6, i32 65536, i32 65536, i32 1 }, %struct.hfi_capability { i32 7, i32 65536, i32 65536, i32 1 }, %struct.hfi_capability { i32 4, i32 64, i32 7833600, i32 1 }, %struct.hfi_capability { i32 5, i32 1, i32 960, i32 1 }, %struct.hfi_capability { i32 43, i32 0, i32 1, i32 1 }], [23 x %struct.hfi_capability] zeroinitializer }>, i32 5, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, [11 x %struct.hfi_profile_level] }> <{ %struct.hfi_profile_level { i32 1, i32 65536 }, %struct.hfi_profile_level { i32 2, i32 65536 }, %struct.hfi_profile_level { i32 4, i32 65536 }, %struct.hfi_profile_level { i32 32, i32 65536 }, %struct.hfi_profile_level { i32 64, i32 65536 }, [11 x %struct.hfi_profile_level] zeroinitializer }>, i32 4, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }> <{ %struct.raw_formats { i32 2, i32 32770 }, %struct.raw_formats { i32 3, i32 32770 }, %struct.raw_formats { i32 3, i32 2 }, %struct.raw_formats { i32 3, i32 3 }, [28 x %struct.raw_formats] zeroinitializer }>, i8 0 }, { i32, i32, i8, i32, <{ [10 x %struct.hfi_capability], [22 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, [14 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [25 x %struct.raw_formats] }>, i8 } { i32 8192, i32 2, i8 1, i32 10, <{ [10 x %struct.hfi_capability], [22 x %struct.hfi_capability] }> <{ [10 x %struct.hfi_capability] [%struct.hfi_capability { i32 1, i32 128, i32 8192, i32 1 }, %struct.hfi_capability { i32 2, i32 128, i32 8192, i32 1 }, %struct.hfi_capability { i32 3, i32 64, i32 138240, i32 1 }, %struct.hfi_capability { i32 8, i32 1, i32 220000000, i32 1 }, %struct.hfi_capability { i32 6, i32 65536, i32 65536, i32 1 }, %struct.hfi_capability { i32 7, i32 65536, i32 65536, i32 1 }, %struct.hfi_capability { i32 4, i32 64, i32 7833600, i32 1 }, %struct.hfi_capability { i32 5, i32 1, i32 960, i32 1 }, %struct.hfi_capability { i32 43, i32 0, i32 1, i32 1 }, %struct.hfi_capability { i32 44, i32 1, i32 3, i32 1 }], [22 x %struct.hfi_capability] zeroinitializer }>, i32 2, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, [14 x %struct.hfi_profile_level] }> <{ %struct.hfi_profile_level { i32 1, i32 1026 }, %struct.hfi_profile_level { i32 2, i32 1026 }, [14 x %struct.hfi_profile_level] zeroinitializer }>, i32 7, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [25 x %struct.raw_formats] }> <{ %struct.raw_formats { i32 2, i32 32770 }, %struct.raw_formats { i32 2, i32 49154 }, %struct.raw_formats { i32 3, i32 32770 }, %struct.raw_formats { i32 3, i32 2 }, %struct.raw_formats { i32 3, i32 3 }, %struct.raw_formats { i32 3, i32 16387 }, %struct.raw_formats { i32 3, i32 16386 }, [25 x %struct.raw_formats] zeroinitializer }>, i8 0 }, { i32, i32, i8, i32, <{ [10 x %struct.hfi_capability], [22 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, [12 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }>, i8 } { i32 4096, i32 2, i8 1, i32 10, <{ [10 x %struct.hfi_capability], [22 x %struct.hfi_capability] }> <{ [10 x %struct.hfi_capability] [%struct.hfi_capability { i32 1, i32 128, i32 4096, i32 1 }, %struct.hfi_capability { i32 2, i32 128, i32 4096, i32 1 }, %struct.hfi_capability { i32 3, i32 64, i32 36864, i32 1 }, %struct.hfi_capability { i32 8, i32 1, i32 100000000, i32 1 }, %struct.hfi_capability { i32 6, i32 65536, i32 65536, i32 1 }, %struct.hfi_capability { i32 7, i32 65536, i32 65536, i32 1 }, %struct.hfi_capability { i32 4, i32 64, i32 4423680, i32 1 }, %struct.hfi_capability { i32 5, i32 1, i32 120, i32 1 }, %struct.hfi_capability { i32 43, i32 0, i32 1, i32 1 }, %struct.hfi_capability { i32 44, i32 1, i32 3, i32 1 }], [22 x %struct.hfi_capability] zeroinitializer }>, i32 4, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, [12 x %struct.hfi_profile_level] }> <{ %struct.hfi_profile_level { i32 1, i32 1 }, %struct.hfi_profile_level { i32 1, i32 2 }, %struct.hfi_profile_level { i32 1, i32 4 }, %struct.hfi_profile_level { i32 1, i32 8 }, [12 x %struct.hfi_profile_level] zeroinitializer }>, i32 4, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }> <{ %struct.raw_formats { i32 2, i32 32770 }, %struct.raw_formats { i32 3, i32 32770 }, %struct.raw_formats { i32 3, i32 2 }, %struct.raw_formats { i32 3, i32 3 }, [28 x %struct.raw_formats] zeroinitializer }>, i8 0 }, { i32, i32, i8, i32, <{ [10 x %struct.hfi_capability], [22 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, [14 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [25 x %struct.raw_formats] }>, i8 } { i32 16384, i32 2, i8 1, i32 10, <{ [10 x %struct.hfi_capability], [22 x %struct.hfi_capability] }> <{ [10 x %struct.hfi_capability] [%struct.hfi_capability { i32 1, i32 128, i32 8192, i32 1 }, %struct.hfi_capability { i32 2, i32 128, i32 8192, i32 1 }, %struct.hfi_capability { i32 3, i32 64, i32 138240, i32 1 }, %struct.hfi_capability { i32 8, i32 1, i32 220000000, i32 1 }, %struct.hfi_capability { i32 6, i32 65536, i32 65536, i32 1 }, %struct.hfi_capability { i32 7, i32 65536, i32 65536, i32 1 }, %struct.hfi_capability { i32 4, i32 64, i32 7833600, i32 1 }, %struct.hfi_capability { i32 5, i32 1, i32 960, i32 1 }, %struct.hfi_capability { i32 43, i32 0, i32 1, i32 1 }, %struct.hfi_capability { i32 44, i32 1, i32 3, i32 1 }], [22 x %struct.hfi_capability] zeroinitializer }>, i32 2, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, [14 x %struct.hfi_profile_level] }> <{ %struct.hfi_profile_level { i32 1, i32 200 }, %struct.hfi_profile_level { i32 4, i32 200 }, [14 x %struct.hfi_profile_level] zeroinitializer }>, i32 7, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [25 x %struct.raw_formats] }> <{ %struct.raw_formats { i32 2, i32 32770 }, %struct.raw_formats { i32 2, i32 49154 }, %struct.raw_formats { i32 3, i32 32770 }, %struct.raw_formats { i32 3, i32 2 }, %struct.raw_formats { i32 3, i32 3 }, %struct.raw_formats { i32 3, i32 16387 }, %struct.raw_formats { i32 3, i32 16386 }, [25 x %struct.raw_formats] zeroinitializer }>, i8 0 }, { i32, i32, i8, i32, <{ [10 x %struct.hfi_capability], [22 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, [14 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }>, i8 } { i32 16, i32 2, i8 1, i32 10, <{ [10 x %struct.hfi_capability], [22 x %struct.hfi_capability] }> <{ [10 x %struct.hfi_capability] [%struct.hfi_capability { i32 1, i32 128, i32 1920, i32 1 }, %struct.hfi_capability { i32 2, i32 128, i32 1920, i32 1 }, %struct.hfi_capability { i32 3, i32 64, i32 8160, i32 1 }, %struct.hfi_capability { i32 8, i32 1, i32 40000000, i32 1 }, %struct.hfi_capability { i32 6, i32 65536, i32 65536, i32 1 }, %struct.hfi_capability { i32 7, i32 65536, i32 65536, i32 1 }, %struct.hfi_capability { i32 4, i32 64, i32 7833600, i32 1 }, %struct.hfi_capability { i32 5, i32 1, i32 30, i32 1 }, %struct.hfi_capability { i32 43, i32 0, i32 1, i32 1 }, %struct.hfi_capability { i32 44, i32 1, i32 1, i32 1 }], [22 x %struct.hfi_capability] zeroinitializer }>, i32 2, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, [14 x %struct.hfi_profile_level] }> <{ %struct.hfi_profile_level { i32 1, i32 4 }, %struct.hfi_profile_level { i32 2, i32 4 }, [14 x %struct.hfi_profile_level] zeroinitializer }>, i32 4, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }> <{ %struct.raw_formats { i32 2, i32 32770 }, %struct.raw_formats { i32 3, i32 32770 }, %struct.raw_formats { i32 3, i32 2 }, %struct.raw_formats { i32 3, i32 3 }, [28 x %struct.raw_formats] zeroinitializer }>, i8 0 }, { i32, i32, i8, i32, <{ [21 x %struct.hfi_capability], [11 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, [11 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }>, i8 } { i32 2, i32 1, i8 1, i32 21, <{ [21 x %struct.hfi_capability], [11 x %struct.hfi_capability] }> <{ [21 x %struct.hfi_capability] [%struct.hfi_capability { i32 1, i32 128, i32 8192, i32 1 }, %struct.hfi_capability { i32 2, i32 128, i32 8192, i32 1 }, %struct.hfi_capability { i32 3, i32 64, i32 138240, i32 1 }, %struct.hfi_capability { i32 8, i32 1, i32 220000000, i32 1 }, %struct.hfi_capability { i32 6, i32 8192, i32 65536, i32 1 }, %struct.hfi_capability { i32 7, i32 8192, i32 65536, i32 1 }, %struct.hfi_capability { i32 4, i32 64, i32 7833600, i32 1 }, %struct.hfi_capability { i32 5, i32 1, i32 960, i32 1 }, %struct.hfi_capability { i32 43, i32 0, i32 1, i32 1 }, %struct.hfi_capability { i32 10, i32 32000, i32 160000000, i32 1 }, %struct.hfi_capability { i32 16, i32 0, i32 6, i32 1 }, %struct.hfi_capability { i32 17, i32 0, i32 2, i32 1 }, %struct.hfi_capability { i32 20, i32 16, i32 16, i32 1 }, %struct.hfi_capability { i32 9, i32 0, i32 1, i32 1 }, %struct.hfi_capability { i32 21, i32 0, i32 6, i32 1 }, %struct.hfi_capability { i32 32, i32 0, i32 51, i32 1 }, %struct.hfi_capability { i32 33, i32 0, i32 51, i32 1 }, %struct.hfi_capability { i32 34, i32 0, i32 51, i32 1 }, %struct.hfi_capability { i32 44, i32 1, i32 2, i32 1 }, %struct.hfi_capability { i32 35, i32 16777217, i32 16777221, i32 1 }, %struct.hfi_capability { i32 48, i32 0, i32 2, i32 1 }], [11 x %struct.hfi_capability] zeroinitializer }>, i32 5, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, [11 x %struct.hfi_profile_level] }> <{ %struct.hfi_profile_level { i32 1, i32 65536 }, %struct.hfi_profile_level { i32 2, i32 65536 }, %struct.hfi_profile_level { i32 4, i32 65536 }, %struct.hfi_profile_level { i32 32, i32 65536 }, %struct.hfi_profile_level { i32 64, i32 65536 }, [11 x %struct.hfi_profile_level] zeroinitializer }>, i32 4, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }> <{ %struct.raw_formats { i32 1, i32 2 }, %struct.raw_formats { i32 1, i32 32770 }, %struct.raw_formats { i32 1, i32 49154 }, %struct.raw_formats { i32 1, i32 16387 }, [28 x %struct.raw_formats] zeroinitializer }>, i8 0 }, { i32, i32, i8, i32, <{ [24 x %struct.hfi_capability], [8 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, [14 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }>, i8 } { i32 8192, i32 1, i8 1, i32 24, <{ [24 x %struct.hfi_capability], [8 x %struct.hfi_capability] }> <{ [24 x %struct.hfi_capability] [%struct.hfi_capability { i32 1, i32 128, i32 8192, i32 16 }, %struct.hfi_capability { i32 2, i32 128, i32 8192, i32 16 }, %struct.hfi_capability { i32 3, i32 64, i32 138240, i32 1 }, %struct.hfi_capability { i32 8, i32 1, i32 160000000, i32 1 }, %struct.hfi_capability { i32 6, i32 8192, i32 65536, i32 1 }, %struct.hfi_capability { i32 7, i32 8192, i32 65536, i32 1 }, %struct.hfi_capability { i32 4, i32 64, i32 7833600, i32 1 }, %struct.hfi_capability { i32 5, i32 1, i32 960, i32 1 }, %struct.hfi_capability { i32 43, i32 0, i32 1, i32 1 }, %struct.hfi_capability { i32 10, i32 32000, i32 160000000, i32 1 }, %struct.hfi_capability { i32 16, i32 0, i32 5, i32 1 }, %struct.hfi_capability { i32 17, i32 0, i32 2, i32 1 }, %struct.hfi_capability { i32 20, i32 32, i32 32, i32 1 }, %struct.hfi_capability { i32 9, i32 0, i32 1, i32 1 }, %struct.hfi_capability { i32 21, i32 0, i32 5, i32 1 }, %struct.hfi_capability { i32 32, i32 0, i32 51, i32 1 }, %struct.hfi_capability { i32 33, i32 0, i32 51, i32 1 }, %struct.hfi_capability { i32 34, i32 0, i32 51, i32 1 }, %struct.hfi_capability { i32 44, i32 1, i32 2, i32 1 }, %struct.hfi_capability { i32 35, i32 16777217, i32 16777221, i32 1 }, %struct.hfi_capability { i32 48, i32 0, i32 2, i32 1 }, %struct.hfi_capability { i32 47, i32 1, i32 4, i32 90 }, %struct.hfi_capability { i32 36, i32 96, i32 4096, i32 16 }, %struct.hfi_capability { i32 37, i32 96, i32 4096, i32 16 }], [8 x %struct.hfi_capability] zeroinitializer }>, i32 2, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, [14 x %struct.hfi_profile_level] }> <{ %struct.hfi_profile_level { i32 1, i32 1026 }, %struct.hfi_profile_level { i32 2, i32 1026 }, [14 x %struct.hfi_profile_level] zeroinitializer }>, i32 4, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }> <{ %struct.raw_formats { i32 1, i32 2 }, %struct.raw_formats { i32 1, i32 32770 }, %struct.raw_formats { i32 1, i32 49154 }, %struct.raw_formats { i32 1, i32 16387 }, [28 x %struct.raw_formats] zeroinitializer }>, i8 0 }, { i32, i32, i8, i32, <{ [23 x %struct.hfi_capability], [9 x %struct.hfi_capability] }>, i32, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, [12 x %struct.hfi_profile_level] }>, i32, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }>, i8 } { i32 4096, i32 1, i8 1, i32 23, <{ [23 x %struct.hfi_capability], [9 x %struct.hfi_capability] }> <{ [23 x %struct.hfi_capability] [%struct.hfi_capability { i32 1, i32 128, i32 4096, i32 16 }, %struct.hfi_capability { i32 2, i32 128, i32 4096, i32 16 }, %struct.hfi_capability { i32 3, i32 64, i32 36864, i32 1 }, %struct.hfi_capability { i32 8, i32 1, i32 74000000, i32 1 }, %struct.hfi_capability { i32 6, i32 8192, i32 65536, i32 1 }, %struct.hfi_capability { i32 7, i32 8192, i32 65536, i32 1 }, %struct.hfi_capability { i32 4, i32 64, i32 4423680, i32 1 }, %struct.hfi_capability { i32 5, i32 1, i32 120, i32 1 }, %struct.hfi_capability { i32 43, i32 0, i32 1, i32 1 }, %struct.hfi_capability { i32 10, i32 32000, i32 160000000, i32 1 }, %struct.hfi_capability { i32 16, i32 0, i32 3, i32 1 }, %struct.hfi_capability { i32 17, i32 0, i32 2, i32 1 }, %struct.hfi_capability { i32 20, i32 16, i32 16, i32 1 }, %struct.hfi_capability { i32 9, i32 0, i32 0, i32 1 }, %struct.hfi_capability { i32 21, i32 0, i32 5, i32 1 }, %struct.hfi_capability { i32 32, i32 0, i32 127, i32 1 }, %struct.hfi_capability { i32 33, i32 0, i32 127, i32 1 }, %struct.hfi_capability { i32 44, i32 1, i32 2, i32 1 }, %struct.hfi_capability { i32 35, i32 16777217, i32 16777221, i32 1 }, %struct.hfi_capability { i32 36, i32 96, i32 4096, i32 16 }, %struct.hfi_capability { i32 37, i32 96, i32 4096, i32 16 }, %struct.hfi_capability { i32 48, i32 0, i32 2, i32 1 }, %struct.hfi_capability { i32 47, i32 1, i32 4, i32 90 }], [9 x %struct.hfi_capability] zeroinitializer }>, i32 4, <{ %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, %struct.hfi_profile_level, [12 x %struct.hfi_profile_level] }> <{ %struct.hfi_profile_level { i32 1, i32 1 }, %struct.hfi_profile_level { i32 1, i32 2 }, %struct.hfi_profile_level { i32 1, i32 4 }, %struct.hfi_profile_level { i32 1, i32 8 }, [12 x %struct.hfi_profile_level] zeroinitializer }>, i32 4, <{ %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, %struct.raw_formats, [28 x %struct.raw_formats] }> <{ %struct.raw_formats { i32 1, i32 2 }, %struct.raw_formats { i32 1, i32 32770 }, %struct.raw_formats { i32 1, i32 49154 }, %struct.raw_formats { i32 1, i32 16387 }, [28 x %struct.raw_formats] zeroinitializer }>, i8 0 } }>, [1824 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 808996950, i64 809062486, i64 843534413, i64 875967048, i64 1129727304]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [7 x i64] [i64 5, i64 32, i64 808996950, i64 809062486, i64 843534413, i64 875967048, i64 1129727304]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [7 x i64] [i64 5, i64 32, i64 808996950, i64 809062486, i64 843534413, i64 875967048, i64 1129727304]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.7 = private unnamed_addr constant [12 x i8] c"hfi_plat_v6\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 325, i32 27 }
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"codec_freq_data\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 264, i32 50 }
@___asan_gen_.13 = private unnamed_addr constant [5 x i8] c"caps\00", align 1
@___asan_gen_.14 = private constant [55 x i8] c"../drivers/media/platform/qcom/venus/hfi_platform_v6.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 7, i32 35 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @hfi_plat_v6, ptr @codec_freq_data, ptr @caps], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfi_plat_v6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_freq_data to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caps to i32), i32 7392, i32 9216, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @codec_vpp_freq(i32 noundef %session_type, i32 noundef %codec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %codec to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %codec, label %entry.cleanup_crit_edge [
    i32 875967048, label %land.lhs.true.i
    i32 1129727304, label %land.lhs.true.1.i
    i32 808996950, label %land.lhs.true.2.i
    i32 843534413, label %land.lhs.true.3.i
    i32 809062486, label %land.lhs.true.7.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %session_type)
  %switch.selectcmp.i = icmp eq i32 %session_type, 2
  %switch.select.i = select i1 %switch.selectcmp.i, ptr getelementptr inbounds ([8 x %struct.hfi_platform_codec_freq_data], ptr @codec_freq_data, i32 0, i32 4), ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %session_type)
  %switch.selectcmp54.i = icmp eq i32 %session_type, 1
  br i1 %switch.selectcmp54.i, label %land.lhs.true.i.if.then_crit_edge, label %land.lhs.true.i.get_codec_freq_data.exit_crit_edge

land.lhs.true.i.get_codec_freq_data.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_codec_freq_data.exit

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

land.lhs.true.1.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %session_type)
  %switch.selectcmp56.i = icmp eq i32 %session_type, 2
  %switch.select57.i = select i1 %switch.selectcmp56.i, ptr getelementptr inbounds ([8 x %struct.hfi_platform_codec_freq_data], ptr @codec_freq_data, i32 0, i32 5), ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %session_type)
  %switch.selectcmp58.i = icmp eq i32 %session_type, 1
  br i1 %switch.selectcmp58.i, label %land.lhs.true.1.i.if.then_crit_edge, label %land.lhs.true.1.i.get_codec_freq_data.exit_crit_edge

land.lhs.true.1.i.get_codec_freq_data.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_codec_freq_data.exit

land.lhs.true.1.i.if.then_crit_edge:              ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

land.lhs.true.2.i:                                ; preds = %entry
  %1 = zext i32 %session_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %session_type, label %land.lhs.true.2.i.cleanup_crit_edge [
    i32 1, label %land.lhs.true.2.i.if.then_crit_edge
    i32 2, label %for.end.fold.split53.i
  ]

land.lhs.true.2.i.if.then_crit_edge:              ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

land.lhs.true.2.i.cleanup_crit_edge:              ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.3.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %session_type)
  %cmp5.3.i = icmp eq i32 %session_type, 2
  br i1 %cmp5.3.i, label %land.lhs.true.3.i.if.then_crit_edge, label %land.lhs.true.3.i.cleanup_crit_edge

land.lhs.true.3.i.cleanup_crit_edge:              ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.3.i.if.then_crit_edge:              ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

land.lhs.true.7.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %session_type)
  %cmp5.7.old.i = icmp eq i32 %session_type, 2
  br i1 %cmp5.7.old.i, label %land.lhs.true.7.i.if.then_crit_edge, label %land.lhs.true.7.i.cleanup_crit_edge

land.lhs.true.7.i.cleanup_crit_edge:              ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.7.i.if.then_crit_edge:              ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

for.end.fold.split53.i:                           ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

get_codec_freq_data.exit:                         ; preds = %land.lhs.true.1.i.get_codec_freq_data.exit_crit_edge, %land.lhs.true.i.get_codec_freq_data.exit_crit_edge
  %found.0.i = phi ptr [ %switch.select.i, %land.lhs.true.i.get_codec_freq_data.exit_crit_edge ], [ %switch.select57.i, %land.lhs.true.1.i.get_codec_freq_data.exit_crit_edge ]
  %tobool.not = icmp eq ptr %found.0.i, null
  br i1 %tobool.not, label %get_codec_freq_data.exit.cleanup_crit_edge, label %get_codec_freq_data.exit.if.then_crit_edge

get_codec_freq_data.exit.if.then_crit_edge:       ; preds = %get_codec_freq_data.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

get_codec_freq_data.exit.cleanup_crit_edge:       ; preds = %get_codec_freq_data.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %get_codec_freq_data.exit.if.then_crit_edge, %for.end.fold.split53.i, %land.lhs.true.7.i.if.then_crit_edge, %land.lhs.true.3.i.if.then_crit_edge, %land.lhs.true.2.i.if.then_crit_edge, %land.lhs.true.1.i.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge
  %found.0.i5 = phi ptr [ %found.0.i, %get_codec_freq_data.exit.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.hfi_platform_codec_freq_data], ptr @codec_freq_data, i32 0, i32 6), %for.end.fold.split53.i ], [ getelementptr inbounds ([8 x %struct.hfi_platform_codec_freq_data], ptr @codec_freq_data, i32 0, i32 7), %land.lhs.true.7.i.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.hfi_platform_codec_freq_data], ptr @codec_freq_data, i32 0, i32 3), %land.lhs.true.3.i.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.hfi_platform_codec_freq_data], ptr @codec_freq_data, i32 0, i32 2), %land.lhs.true.2.i.if.then_crit_edge ], [ @codec_freq_data, %land.lhs.true.i.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.hfi_platform_codec_freq_data], ptr @codec_freq_data, i32 0, i32 1), %land.lhs.true.1.i.if.then_crit_edge ]
  %vpp_freq = getelementptr inbounds %struct.hfi_platform_codec_freq_data, ptr %found.0.i5, i32 0, i32 2
  %2 = ptrtoint ptr %vpp_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vpp_freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %get_codec_freq_data.exit.cleanup_crit_edge, %land.lhs.true.7.i.cleanup_crit_edge, %land.lhs.true.3.i.cleanup_crit_edge, %land.lhs.true.2.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %get_codec_freq_data.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.3.i.cleanup_crit_edge ], [ 0, %land.lhs.true.7.i.cleanup_crit_edge ], [ 0, %land.lhs.true.2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @codec_vsp_freq(i32 noundef %session_type, i32 noundef %codec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %codec to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %codec, label %entry.cleanup_crit_edge [
    i32 875967048, label %land.lhs.true.i
    i32 1129727304, label %land.lhs.true.1.i
    i32 808996950, label %land.lhs.true.2.i
    i32 843534413, label %land.lhs.true.3.i
    i32 809062486, label %land.lhs.true.7.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %session_type)
  %switch.selectcmp.i = icmp eq i32 %session_type, 2
  %switch.select.i = select i1 %switch.selectcmp.i, ptr getelementptr inbounds ([8 x %struct.hfi_platform_codec_freq_data], ptr @codec_freq_data, i32 0, i32 4), ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %session_type)
  %switch.selectcmp54.i = icmp eq i32 %session_type, 1
  br i1 %switch.selectcmp54.i, label %land.lhs.true.i.if.then_crit_edge, label %land.lhs.true.i.get_codec_freq_data.exit_crit_edge

land.lhs.true.i.get_codec_freq_data.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_codec_freq_data.exit

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

land.lhs.true.1.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %session_type)
  %switch.selectcmp56.i = icmp eq i32 %session_type, 2
  %switch.select57.i = select i1 %switch.selectcmp56.i, ptr getelementptr inbounds ([8 x %struct.hfi_platform_codec_freq_data], ptr @codec_freq_data, i32 0, i32 5), ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %session_type)
  %switch.selectcmp58.i = icmp eq i32 %session_type, 1
  br i1 %switch.selectcmp58.i, label %land.lhs.true.1.i.if.then_crit_edge, label %land.lhs.true.1.i.get_codec_freq_data.exit_crit_edge

land.lhs.true.1.i.get_codec_freq_data.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_codec_freq_data.exit

land.lhs.true.1.i.if.then_crit_edge:              ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

land.lhs.true.2.i:                                ; preds = %entry
  %1 = zext i32 %session_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %session_type, label %land.lhs.true.2.i.cleanup_crit_edge [
    i32 1, label %land.lhs.true.2.i.if.then_crit_edge
    i32 2, label %for.end.fold.split53.i
  ]

land.lhs.true.2.i.if.then_crit_edge:              ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

land.lhs.true.2.i.cleanup_crit_edge:              ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.3.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %session_type)
  %cmp5.3.i = icmp eq i32 %session_type, 2
  br i1 %cmp5.3.i, label %land.lhs.true.3.i.if.then_crit_edge, label %land.lhs.true.3.i.cleanup_crit_edge

land.lhs.true.3.i.cleanup_crit_edge:              ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.3.i.if.then_crit_edge:              ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

land.lhs.true.7.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %session_type)
  %cmp5.7.old.i = icmp eq i32 %session_type, 2
  br i1 %cmp5.7.old.i, label %land.lhs.true.7.i.if.then_crit_edge, label %land.lhs.true.7.i.cleanup_crit_edge

land.lhs.true.7.i.cleanup_crit_edge:              ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.7.i.if.then_crit_edge:              ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

for.end.fold.split53.i:                           ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

get_codec_freq_data.exit:                         ; preds = %land.lhs.true.1.i.get_codec_freq_data.exit_crit_edge, %land.lhs.true.i.get_codec_freq_data.exit_crit_edge
  %found.0.i = phi ptr [ %switch.select.i, %land.lhs.true.i.get_codec_freq_data.exit_crit_edge ], [ %switch.select57.i, %land.lhs.true.1.i.get_codec_freq_data.exit_crit_edge ]
  %tobool.not = icmp eq ptr %found.0.i, null
  br i1 %tobool.not, label %get_codec_freq_data.exit.cleanup_crit_edge, label %get_codec_freq_data.exit.if.then_crit_edge

get_codec_freq_data.exit.if.then_crit_edge:       ; preds = %get_codec_freq_data.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

get_codec_freq_data.exit.cleanup_crit_edge:       ; preds = %get_codec_freq_data.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %get_codec_freq_data.exit.if.then_crit_edge, %for.end.fold.split53.i, %land.lhs.true.7.i.if.then_crit_edge, %land.lhs.true.3.i.if.then_crit_edge, %land.lhs.true.2.i.if.then_crit_edge, %land.lhs.true.1.i.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge
  %found.0.i5 = phi ptr [ %found.0.i, %get_codec_freq_data.exit.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.hfi_platform_codec_freq_data], ptr @codec_freq_data, i32 0, i32 6), %for.end.fold.split53.i ], [ getelementptr inbounds ([8 x %struct.hfi_platform_codec_freq_data], ptr @codec_freq_data, i32 0, i32 7), %land.lhs.true.7.i.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.hfi_platform_codec_freq_data], ptr @codec_freq_data, i32 0, i32 3), %land.lhs.true.3.i.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.hfi_platform_codec_freq_data], ptr @codec_freq_data, i32 0, i32 2), %land.lhs.true.2.i.if.then_crit_edge ], [ @codec_freq_data, %land.lhs.true.i.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.hfi_platform_codec_freq_data], ptr @codec_freq_data, i32 0, i32 1), %land.lhs.true.1.i.if.then_crit_edge ]
  %vsp_freq = getelementptr inbounds %struct.hfi_platform_codec_freq_data, ptr %found.0.i5, i32 0, i32 3
  %2 = ptrtoint ptr %vsp_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vsp_freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %get_codec_freq_data.exit.cleanup_crit_edge, %land.lhs.true.7.i.cleanup_crit_edge, %land.lhs.true.3.i.cleanup_crit_edge, %land.lhs.true.2.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %get_codec_freq_data.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.3.i.cleanup_crit_edge ], [ 0, %land.lhs.true.7.i.cleanup_crit_edge ], [ 0, %land.lhs.true.2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @codec_lp_freq(i32 noundef %session_type, i32 noundef %codec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %codec to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %codec, label %entry.cleanup_crit_edge [
    i32 875967048, label %land.lhs.true.i
    i32 1129727304, label %land.lhs.true.1.i
    i32 808996950, label %land.lhs.true.2.i
    i32 843534413, label %land.lhs.true.3.i
    i32 809062486, label %land.lhs.true.7.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %session_type)
  %switch.selectcmp.i = icmp eq i32 %session_type, 2
  %switch.select.i = select i1 %switch.selectcmp.i, ptr getelementptr inbounds ([8 x %struct.hfi_platform_codec_freq_data], ptr @codec_freq_data, i32 0, i32 4), ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %session_type)
  %switch.selectcmp54.i = icmp eq i32 %session_type, 1
  br i1 %switch.selectcmp54.i, label %land.lhs.true.i.if.then_crit_edge, label %land.lhs.true.i.get_codec_freq_data.exit_crit_edge

land.lhs.true.i.get_codec_freq_data.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_codec_freq_data.exit

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

land.lhs.true.1.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %session_type)
  %switch.selectcmp56.i = icmp eq i32 %session_type, 2
  %switch.select57.i = select i1 %switch.selectcmp56.i, ptr getelementptr inbounds ([8 x %struct.hfi_platform_codec_freq_data], ptr @codec_freq_data, i32 0, i32 5), ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %session_type)
  %switch.selectcmp58.i = icmp eq i32 %session_type, 1
  br i1 %switch.selectcmp58.i, label %land.lhs.true.1.i.if.then_crit_edge, label %land.lhs.true.1.i.get_codec_freq_data.exit_crit_edge

land.lhs.true.1.i.get_codec_freq_data.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_codec_freq_data.exit

land.lhs.true.1.i.if.then_crit_edge:              ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

land.lhs.true.2.i:                                ; preds = %entry
  %1 = zext i32 %session_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %session_type, label %land.lhs.true.2.i.cleanup_crit_edge [
    i32 1, label %land.lhs.true.2.i.if.then_crit_edge
    i32 2, label %for.end.fold.split53.i
  ]

land.lhs.true.2.i.if.then_crit_edge:              ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

land.lhs.true.2.i.cleanup_crit_edge:              ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.3.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %session_type)
  %cmp5.3.i = icmp eq i32 %session_type, 2
  br i1 %cmp5.3.i, label %land.lhs.true.3.i.if.then_crit_edge, label %land.lhs.true.3.i.cleanup_crit_edge

land.lhs.true.3.i.cleanup_crit_edge:              ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.3.i.if.then_crit_edge:              ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

land.lhs.true.7.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %session_type)
  %cmp5.7.old.i = icmp eq i32 %session_type, 2
  br i1 %cmp5.7.old.i, label %land.lhs.true.7.i.if.then_crit_edge, label %land.lhs.true.7.i.cleanup_crit_edge

land.lhs.true.7.i.cleanup_crit_edge:              ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.7.i.if.then_crit_edge:              ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

for.end.fold.split53.i:                           ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

get_codec_freq_data.exit:                         ; preds = %land.lhs.true.1.i.get_codec_freq_data.exit_crit_edge, %land.lhs.true.i.get_codec_freq_data.exit_crit_edge
  %found.0.i = phi ptr [ %switch.select.i, %land.lhs.true.i.get_codec_freq_data.exit_crit_edge ], [ %switch.select57.i, %land.lhs.true.1.i.get_codec_freq_data.exit_crit_edge ]
  %tobool.not = icmp eq ptr %found.0.i, null
  br i1 %tobool.not, label %get_codec_freq_data.exit.cleanup_crit_edge, label %get_codec_freq_data.exit.if.then_crit_edge

get_codec_freq_data.exit.if.then_crit_edge:       ; preds = %get_codec_freq_data.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

get_codec_freq_data.exit.cleanup_crit_edge:       ; preds = %get_codec_freq_data.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %get_codec_freq_data.exit.if.then_crit_edge, %for.end.fold.split53.i, %land.lhs.true.7.i.if.then_crit_edge, %land.lhs.true.3.i.if.then_crit_edge, %land.lhs.true.2.i.if.then_crit_edge, %land.lhs.true.1.i.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge
  %found.0.i5 = phi ptr [ %found.0.i, %get_codec_freq_data.exit.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.hfi_platform_codec_freq_data], ptr @codec_freq_data, i32 0, i32 6), %for.end.fold.split53.i ], [ getelementptr inbounds ([8 x %struct.hfi_platform_codec_freq_data], ptr @codec_freq_data, i32 0, i32 7), %land.lhs.true.7.i.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.hfi_platform_codec_freq_data], ptr @codec_freq_data, i32 0, i32 3), %land.lhs.true.3.i.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.hfi_platform_codec_freq_data], ptr @codec_freq_data, i32 0, i32 2), %land.lhs.true.2.i.if.then_crit_edge ], [ @codec_freq_data, %land.lhs.true.i.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.hfi_platform_codec_freq_data], ptr @codec_freq_data, i32 0, i32 1), %land.lhs.true.1.i.if.then_crit_edge ]
  %low_power_freq = getelementptr inbounds %struct.hfi_platform_codec_freq_data, ptr %found.0.i5, i32 0, i32 4
  %2 = ptrtoint ptr %low_power_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %low_power_freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %get_codec_freq_data.exit.cleanup_crit_edge, %land.lhs.true.7.i.cleanup_crit_edge, %land.lhs.true.3.i.cleanup_crit_edge, %land.lhs.true.2.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %get_codec_freq_data.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.3.i.cleanup_crit_edge ], [ 0, %land.lhs.true.7.i.cleanup_crit_edge ], [ 0, %land.lhs.true.2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @get_codecs(ptr nocapture noundef writeonly %enc_codecs, ptr nocapture noundef writeonly %dec_codecs, ptr nocapture noundef writeonly %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %enc_codecs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 12290, ptr %enc_codecs, align 4
  %1 = ptrtoint ptr %dec_codecs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 28690, ptr %dec_codecs, align 4
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %count, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal nonnull ptr @get_capabilities(ptr nocapture noundef writeonly %entries) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8, ptr %entries, align 4
  ret ptr @caps
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_plat_bufreq_v6(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @hfi_plat_v6, !1, !"hfi_plat_v6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/venus/hfi_platform_v6.c", i32 325, i32 27}
!2 = !{ptr @codec_freq_data, !3, !"codec_freq_data", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/qcom/venus/hfi_platform_v6.c", i32 264, i32 50}
!4 = !{ptr @caps, !5, !"caps", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/qcom/venus/hfi_platform_v6.c", i32 7, i32 35}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
