; ModuleID = '/llk/IR_all_yes/sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c_pt.bc'
source_filename = "../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_soc_acpi_adr_device = type { i64, i8, ptr, ptr }
%struct.snd_soc_acpi_link_adr = type { i32, i32, ptr }
%struct.snd_soc_acpi_endpoint = type { i8, i8, i8, i8 }

@sdw_mockup_headset_0_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 4390016256, i8 1, ptr @sdw_mockup_single_endpoint, ptr @.str }], [40 x i8] zeroinitializer }, align 32
@sdw_mockup_amp_1_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 281479361178112, i8 1, ptr @sdw_mockup_single_endpoint, ptr @.str.1 }], [40 x i8] zeroinitializer }, align 32
@sdw_mockup_mic_3_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 844429314577664, i8 1, ptr @sdw_mockup_single_endpoint, ptr @.str.2 }], [40 x i8] zeroinitializer }, align 32
@sdw_mockup_headset_1amp_mic = dso_local constant { [4 x %struct.snd_soc_acpi_link_adr], [48 x i8] } { [4 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @sdw_mockup_headset_0_adr }, %struct.snd_soc_acpi_link_adr { i32 2, i32 1, ptr @sdw_mockup_amp_1_adr }, %struct.snd_soc_acpi_link_adr { i32 8, i32 1, ptr @sdw_mockup_mic_3_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sdw_mockup_amp_1_group1_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 281479361178112, i8 1, ptr @sdw_mockup_l_endpoint, ptr @.str.3 }], [40 x i8] zeroinitializer }, align 32
@sdw_mockup_amp_2_group1_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 562954337888768, i8 1, ptr @sdw_mockup_r_endpoint, ptr @.str.4 }], [40 x i8] zeroinitializer }, align 32
@sdw_mockup_headset_2amps_mic = dso_local constant { [5 x %struct.snd_soc_acpi_link_adr], [36 x i8] } { [5 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @sdw_mockup_headset_0_adr }, %struct.snd_soc_acpi_link_adr { i32 2, i32 1, ptr @sdw_mockup_amp_1_group1_adr }, %struct.snd_soc_acpi_link_adr { i32 4, i32 1, ptr @sdw_mockup_amp_2_group1_adr }, %struct.snd_soc_acpi_link_adr { i32 8, i32 1, ptr @sdw_mockup_mic_3_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [36 x i8] zeroinitializer }, align 32
@sdw_mockup_headset_1_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 281479366726912, i8 1, ptr @sdw_mockup_single_endpoint, ptr @.str.5 }], [40 x i8] zeroinitializer }, align 32
@sdw_mockup_amp_2_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 562954337888768, i8 1, ptr @sdw_mockup_single_endpoint, ptr @.str.6 }], [40 x i8] zeroinitializer }, align 32
@sdw_mockup_mic_0_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 4384445696, i8 1, ptr @sdw_mockup_single_endpoint, ptr @.str.7 }], [40 x i8] zeroinitializer }, align 32
@sdw_mockup_mic_headset_1amp = dso_local constant { [4 x %struct.snd_soc_acpi_link_adr], [48 x i8] } { [4 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 2, i32 1, ptr @sdw_mockup_headset_1_adr }, %struct.snd_soc_acpi_link_adr { i32 4, i32 1, ptr @sdw_mockup_amp_2_adr }, %struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @sdw_mockup_mic_0_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sdw_mockup_single_endpoint = internal constant { %struct.snd_soc_acpi_endpoint, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sdw_mockup_headset0\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdw_mockup_amp1\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdw_mockup_mic3\00", [16 x i8] zeroinitializer }, align 32
@sdw_mockup_l_endpoint = internal constant { %struct.snd_soc_acpi_endpoint, [28 x i8] } { %struct.snd_soc_acpi_endpoint { i8 0, i8 1, i8 0, i8 1 }, [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sdw_mockup_amp1_l\00", [46 x i8] zeroinitializer }, align 32
@sdw_mockup_r_endpoint = internal constant { %struct.snd_soc_acpi_endpoint, [28 x i8] } { %struct.snd_soc_acpi_endpoint { i8 0, i8 1, i8 1, i8 1 }, [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sdw_mockup_amp2_r\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sdw_mockup_headset1\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdw_mockup_amp2\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdw_mockup_mic0\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [25 x i8] c"sdw_mockup_headset_0_adr\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 34, i32 45 }
@___asan_gen_.11 = private unnamed_addr constant [21 x i8] c"sdw_mockup_amp_1_adr\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 52, i32 45 }
@___asan_gen_.14 = private unnamed_addr constant [21 x i8] c"sdw_mockup_mic_3_adr\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 79, i32 45 }
@___asan_gen_.17 = private unnamed_addr constant [28 x i8] c"sdw_mockup_headset_1amp_mic\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 106, i32 36 }
@___asan_gen_.20 = private unnamed_addr constant [28 x i8] c"sdw_mockup_amp_1_group1_adr\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 88, i32 45 }
@___asan_gen_.23 = private unnamed_addr constant [28 x i8] c"sdw_mockup_amp_2_group1_adr\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 97, i32 45 }
@___asan_gen_.26 = private unnamed_addr constant [29 x i8] c"sdw_mockup_headset_2amps_mic\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 125, i32 36 }
@___asan_gen_.29 = private unnamed_addr constant [25 x i8] c"sdw_mockup_headset_1_adr\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 43, i32 45 }
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"sdw_mockup_amp_2_adr\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 61, i32 45 }
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"sdw_mockup_mic_0_adr\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 70, i32 45 }
@___asan_gen_.38 = private unnamed_addr constant [28 x i8] c"sdw_mockup_mic_headset_1amp\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 149, i32 36 }
@___asan_gen_.41 = private unnamed_addr constant [27 x i8] c"sdw_mockup_single_endpoint\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 13, i32 43 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 39, i32 18 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 57, i32 18 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 84, i32 18 }
@___asan_gen_.53 = private unnamed_addr constant [22 x i8] c"sdw_mockup_l_endpoint\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 20, i32 43 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 93, i32 18 }
@___asan_gen_.59 = private unnamed_addr constant [22 x i8] c"sdw_mockup_r_endpoint\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 27, i32 43 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 102, i32 18 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 48, i32 18 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 66, i32 18 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [60 x i8] c"../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 75, i32 18 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @sdw_mockup_headset_0_adr, ptr @sdw_mockup_amp_1_adr, ptr @sdw_mockup_mic_3_adr, ptr @sdw_mockup_headset_1amp_mic, ptr @sdw_mockup_amp_1_group1_adr, ptr @sdw_mockup_amp_2_group1_adr, ptr @sdw_mockup_headset_2amps_mic, ptr @sdw_mockup_headset_1_adr, ptr @sdw_mockup_amp_2_adr, ptr @sdw_mockup_mic_0_adr, ptr @sdw_mockup_mic_headset_1amp, ptr @sdw_mockup_single_endpoint, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @sdw_mockup_l_endpoint, ptr @.str.3, ptr @sdw_mockup_r_endpoint, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_mockup_headset_0_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_mockup_amp_1_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_mockup_mic_3_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_mockup_headset_1amp_mic to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_mockup_amp_1_group1_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_mockup_amp_2_group1_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_mockup_headset_2amps_mic to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_mockup_headset_1_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_mockup_amp_2_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_mockup_mic_0_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_mockup_mic_headset_1amp to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_mockup_single_endpoint to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_mockup_l_endpoint to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_mockup_r_endpoint to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @sdw_mockup_headset_1amp_mic, !1, !"sdw_mockup_headset_1amp_mic", i1 false, i1 false}
!1 = !{!"../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c", i32 106, i32 36}
!2 = !{ptr @sdw_mockup_headset_2amps_mic, !3, !"sdw_mockup_headset_2amps_mic", i1 false, i1 false}
!3 = !{!"../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c", i32 125, i32 36}
!4 = !{ptr @sdw_mockup_mic_headset_1amp, !5, !"sdw_mockup_mic_headset_1amp", i1 false, i1 false}
!5 = !{!"../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c", i32 149, i32 36}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c", i32 39, i32 18}
!8 = !{ptr @sdw_mockup_headset_0_adr, !9, !"sdw_mockup_headset_0_adr", i1 false, i1 false}
!9 = !{!"../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c", i32 34, i32 45}
!10 = !{ptr @sdw_mockup_single_endpoint, !11, !"sdw_mockup_single_endpoint", i1 false, i1 false}
!11 = !{!"../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c", i32 13, i32 43}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c", i32 57, i32 18}
!14 = !{ptr @sdw_mockup_amp_1_adr, !15, !"sdw_mockup_amp_1_adr", i1 false, i1 false}
!15 = !{!"../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c", i32 52, i32 45}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c", i32 84, i32 18}
!18 = !{ptr @sdw_mockup_mic_3_adr, !19, !"sdw_mockup_mic_3_adr", i1 false, i1 false}
!19 = !{!"../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c", i32 79, i32 45}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c", i32 93, i32 18}
!22 = !{ptr @sdw_mockup_amp_1_group1_adr, !23, !"sdw_mockup_amp_1_group1_adr", i1 false, i1 false}
!23 = !{!"../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c", i32 88, i32 45}
!24 = !{ptr @sdw_mockup_l_endpoint, !25, !"sdw_mockup_l_endpoint", i1 false, i1 false}
!25 = !{!"../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c", i32 20, i32 43}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c", i32 102, i32 18}
!28 = !{ptr @sdw_mockup_amp_2_group1_adr, !29, !"sdw_mockup_amp_2_group1_adr", i1 false, i1 false}
!29 = !{!"../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c", i32 97, i32 45}
!30 = !{ptr @sdw_mockup_r_endpoint, !31, !"sdw_mockup_r_endpoint", i1 false, i1 false}
!31 = !{!"../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c", i32 27, i32 43}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c", i32 48, i32 18}
!34 = !{ptr @sdw_mockup_headset_1_adr, !35, !"sdw_mockup_headset_1_adr", i1 false, i1 false}
!35 = !{!"../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c", i32 43, i32 45}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c", i32 66, i32 18}
!38 = !{ptr @sdw_mockup_amp_2_adr, !39, !"sdw_mockup_amp_2_adr", i1 false, i1 false}
!39 = !{!"../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c", i32 61, i32 45}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c", i32 75, i32 18}
!42 = !{ptr @sdw_mockup_mic_0_adr, !43, !"sdw_mockup_mic_0_adr", i1 false, i1 false}
!43 = !{!"../sound/soc/intel/common/soc-acpi-intel-sdw-mockup-match.c", i32 70, i32 45}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
