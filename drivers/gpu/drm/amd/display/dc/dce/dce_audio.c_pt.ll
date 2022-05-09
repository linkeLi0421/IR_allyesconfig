; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce/dce_audio.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_audio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.audio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.audio = type { ptr, ptr, i32, i8 }
%struct.dce_audio = type { %struct.audio, ptr, ptr, ptr }
%struct.dce_audio_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_audio_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32 }
%struct.dce_audio_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.audio_sample_rates = type { %struct.sample_rates }
%struct.sample_rates = type { i8 }
%struct.audio_info = type { %struct.audio_info_flags, i32, i32, i32, [20 x i8], i32, i32, [2 x i32], i32, [16 x %struct.audio_mode] }
%struct.audio_info_flags = type { %union.anon }
%union.anon = type { %struct.audio_speaker_flags }
%struct.audio_speaker_flags = type { i8, [3 x i8] }
%struct.audio_mode = type { i32, i8, %union.audio_sample_rates, %union.anon.0 }
%union.anon.0 = type { i8 }
%struct.audio_crtc_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.audio_pll_info = type { i32, i32, i32, i8, i32, i32 }

@dce_aud_az_enable.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dce_aud_az_enable\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_audio.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"[HW_AUDIO]:\0A\09========= AUDIO:dce_aud_az_enable: index: %u  data: 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@dce_aud_az_disable.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dce_aud_az_disable\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"[HW_AUDIO]:\0A\09========= AUDIO:dce_aud_az_disable: index: %u  data: 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.dce_aud_az_configure = private unnamed_addr constant [21 x i8] c"dce_aud_az_configure\00", align 1
@dce_aud_az_configure.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.dce_aud_az_configure, ptr @.str.2, ptr @.str.7, i8 0, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"[HW_AUDIO]:\0A\09AUDIO:az_configure: index: %u data, 0x%x, displayName %s: \0A\00", [55 x i8] zeroinitializer }, align 32
@dce_aud_wall_dto_setup.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 -55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dce_aud_wall_dto_setup\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [132 x i8], [60 x i8] } { [132 x i8] c"[HW_AUDIO]:\0A%s:Input::requested_pixel_clock_100Hz = %dcalculated_pixel_clock_100Hz =%d\0Aaudio_dto_module = %d audio_dto_phase =%d \0A\0A\00", [60 x i8] zeroinitializer }, align 32
@funcs = internal constant { %struct.audio_funcs, [36 x i8] } { %struct.audio_funcs { ptr @dce_aud_endpoint_valid, ptr @dce_aud_hw_init, ptr @dce_aud_az_enable, ptr @dce_aud_az_disable, ptr @dce_aud_az_configure, ptr @dce_aud_wall_dto_setup, ptr @dce_aud_destroy }, [36 x i8] zeroinitializer }, align 32
@dce60_funcs = internal constant { %struct.audio_funcs, [36 x i8] } { %struct.audio_funcs { ptr @dce_aud_endpoint_valid, ptr @dce_aud_hw_init, ptr @dce_aud_az_enable, ptr @dce_aud_az_disable, ptr @dce_aud_az_configure, ptr @dce60_aud_wall_dto_setup, ptr @dce_aud_destroy }, [36 x i8] zeroinitializer }, align 32
@__func__.read_indirect_azalia_reg = private unnamed_addr constant [25 x i8] c"read_indirect_azalia_reg\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dce60_aud_wall_dto_setup.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.9, i8 0, i8 -32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dce60_aud_wall_dto_setup\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 12]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 366, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 391, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 483, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 614, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 799, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"funcs\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1008, i32 33 }
@___asan_gen_.49 = private unnamed_addr constant [12 x i8] c"dce60_funcs\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1019, i32 33 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [60 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_audio.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 891, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @funcs, ptr @dce60_funcs, ptr @.str.11], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce60_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce_aud_az_enable(ptr nocapture noundef readonly %audio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx.i = getelementptr inbounds %struct.audio, ptr %audio, i32 0, i32 1
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %regs.i = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %shifts.i = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 2
  %6 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shifts.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  %masks.i = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 3
  %10 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %masks.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %call.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %1, i32 noundef %5, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 84) #6
  %14 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx.i, align 4
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i = getelementptr inbounds %struct.dce_audio_registers, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i, align 4
  %call5.i = tail call i32 @dm_read_reg_func(ptr noundef %15, i32 noundef %19, ptr noundef nonnull @__func__.read_indirect_azalia_reg) #6
  %or.i16 = or i32 %call5.i, -2147483647
  %20 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx.i, align 4
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %26 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shifts.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 4
  %30 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %masks.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %call.i21 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %21, i32 noundef %25, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %29, i32 noundef %33, i32 noundef 84) #6
  %34 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctx.i, align 4
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i22 = getelementptr inbounds %struct.dce_audio_registers, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i22, align 4
  %40 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %shifts.i, align 4
  %AZALIA_ENDPOINT_REG_DATA.i = getelementptr inbounds %struct.dce_audio_shift, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %AZALIA_ENDPOINT_REG_DATA.i, align 1
  %44 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %masks.i, align 4
  %AZALIA_ENDPOINT_REG_DATA7.i = getelementptr inbounds %struct.dce_audio_mask, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA7.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %AZALIA_ENDPOINT_REG_DATA7.i, align 4
  %call8.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %35, i32 noundef %39, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %43, i32 noundef %47, i32 noundef %or.i16) #6
  %and.i23 = and i32 %or.i16, -2
  %48 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctx.i, align 4
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %54 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %shifts.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %55, align 4
  %58 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %masks.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %call.i28 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %49, i32 noundef %53, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %57, i32 noundef %61, i32 noundef 84) #6
  %62 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctx.i, align 4
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i29 = getelementptr inbounds %struct.dce_audio_registers, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i29 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i29, align 4
  %68 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %shifts.i, align 4
  %AZALIA_ENDPOINT_REG_DATA.i30 = getelementptr inbounds %struct.dce_audio_shift, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA.i30 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %AZALIA_ENDPOINT_REG_DATA.i30, align 1
  %72 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %masks.i, align 4
  %AZALIA_ENDPOINT_REG_DATA7.i31 = getelementptr inbounds %struct.dce_audio_mask, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA7.i31 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %AZALIA_ENDPOINT_REG_DATA7.i31, align 4
  %call8.i32 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %63, i32 noundef %67, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %71, i32 noundef %75, i32 noundef %and.i23) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dce_aud_az_enable.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dce_aud_az_enable, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !41

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %inst = getelementptr inbounds %struct.audio, ptr %audio, i32 0, i32 2
  %76 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %inst, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dce_aud_az_enable.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.3, i32 noundef %77, i32 noundef %and.i23) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce_aud_az_disable(ptr noundef readonly %audio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx.i = getelementptr inbounds %struct.audio, ptr %audio, i32 0, i32 1
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %regs.i = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %shifts.i = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 2
  %6 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shifts.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  %masks.i = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 3
  %10 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %masks.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %call.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %1, i32 noundef %5, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 84) #6
  %14 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx.i, align 4
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i = getelementptr inbounds %struct.dce_audio_registers, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i, align 4
  %call5.i = tail call i32 @dm_read_reg_func(ptr noundef %15, i32 noundef %19, ptr noundef nonnull @__func__.read_indirect_azalia_reg) #6
  %or.i = or i32 %call5.i, 1
  %20 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx.i, align 4
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %26 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shifts.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 4
  %30 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %masks.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %call.i23 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %21, i32 noundef %25, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %29, i32 noundef %33, i32 noundef 84) #6
  %34 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctx.i, align 4
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i24 = getelementptr inbounds %struct.dce_audio_registers, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i24, align 4
  %40 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %shifts.i, align 4
  %AZALIA_ENDPOINT_REG_DATA.i = getelementptr inbounds %struct.dce_audio_shift, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %AZALIA_ENDPOINT_REG_DATA.i, align 1
  %44 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %masks.i, align 4
  %AZALIA_ENDPOINT_REG_DATA7.i = getelementptr inbounds %struct.dce_audio_mask, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA7.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %AZALIA_ENDPOINT_REG_DATA7.i, align 4
  %call8.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %35, i32 noundef %39, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %43, i32 noundef %47, i32 noundef %or.i) #6
  %and.i25 = and i32 %or.i, 2147483647
  %48 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctx.i, align 4
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %54 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %shifts.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %55, align 4
  %58 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %masks.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %call.i30 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %49, i32 noundef %53, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %57, i32 noundef %61, i32 noundef 84) #6
  %62 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctx.i, align 4
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i31 = getelementptr inbounds %struct.dce_audio_registers, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i31 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i31, align 4
  %68 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %shifts.i, align 4
  %AZALIA_ENDPOINT_REG_DATA.i32 = getelementptr inbounds %struct.dce_audio_shift, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA.i32 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %AZALIA_ENDPOINT_REG_DATA.i32, align 1
  %72 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %masks.i, align 4
  %AZALIA_ENDPOINT_REG_DATA7.i33 = getelementptr inbounds %struct.dce_audio_mask, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA7.i33 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %AZALIA_ENDPOINT_REG_DATA7.i33, align 4
  %call8.i34 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %63, i32 noundef %67, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %71, i32 noundef %75, i32 noundef %and.i25) #6
  %and.i35 = and i32 %call5.i, 2147483646
  %76 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ctx.i, align 4
  %78 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %82 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %shifts.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %83, align 4
  %86 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %masks.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %call.i40 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %77, i32 noundef %81, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %85, i32 noundef %89, i32 noundef 84) #6
  %90 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ctx.i, align 4
  %92 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i41 = getelementptr inbounds %struct.dce_audio_registers, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i41 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i41, align 4
  %96 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %shifts.i, align 4
  %AZALIA_ENDPOINT_REG_DATA.i42 = getelementptr inbounds %struct.dce_audio_shift, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA.i42 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %AZALIA_ENDPOINT_REG_DATA.i42, align 1
  %100 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %masks.i, align 4
  %AZALIA_ENDPOINT_REG_DATA7.i43 = getelementptr inbounds %struct.dce_audio_mask, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA7.i43 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %AZALIA_ENDPOINT_REG_DATA7.i43, align 4
  %call8.i44 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %91, i32 noundef %95, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %99, i32 noundef %103, i32 noundef %and.i35) #6
  %104 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ctx.i, align 4
  %106 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs.i, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 4
  %110 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %shifts.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %111, align 4
  %114 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %masks.i, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 4
  %call.i49 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %105, i32 noundef %109, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %113, i32 noundef %117, i32 noundef 84) #6
  %118 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ctx.i, align 4
  %120 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i50 = getelementptr inbounds %struct.dce_audio_registers, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i50 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i50, align 4
  %call5.i51 = tail call i32 @dm_read_reg_func(ptr noundef %119, i32 noundef %123, ptr noundef nonnull @__func__.read_indirect_azalia_reg) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dce_aud_az_disable.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dce_aud_az_disable, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !41

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %inst = getelementptr inbounds %struct.audio, ptr %audio, i32 0, i32 2
  %124 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %inst, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dce_aud_az_disable.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.5, i32 noundef %125, i32 noundef %call5.i51) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce_aud_az_configure(ptr noundef readonly %audio, i32 noundef %signal, ptr noundef %crtc_info, ptr noundef %audio_info) #0 align 64 {
entry:
  %sample_rate = alloca %union.audio_sample_rates, align 1
  %sample_rates = alloca %union.audio_sample_rates, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %audio_info to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %audio_info, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.cast = zext i8 %bf.lshr to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sample_rate) #6
  %1 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %sample_rate, align 1, !annotation !42
  %ctx.i = getelementptr inbounds %struct.audio, ptr %audio, i32 0, i32 1
  %2 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx.i, align 4
  %regs.i = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %shifts.i = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 2
  %8 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shifts.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %masks.i = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 3
  %12 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %masks.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %call.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %3, i32 noundef %7, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %11, i32 noundef %15, i32 noundef 84) #6
  %16 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx.i, align 4
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i = getelementptr inbounds %struct.dce_audio_registers, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i, align 4
  %call5.i = tail call i32 @dm_read_reg_func(ptr noundef %17, i32 noundef %21, ptr noundef nonnull @__func__.read_indirect_azalia_reg) #6
  %or.i = or i32 %call5.i, 1
  %22 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx.i, align 4
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %shifts.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4
  %32 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %masks.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %call.i270 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %23, i32 noundef %27, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %31, i32 noundef %35, i32 noundef 84) #6
  %36 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx.i, align 4
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i271 = getelementptr inbounds %struct.dce_audio_registers, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i271 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i271, align 4
  %42 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %shifts.i, align 4
  %AZALIA_ENDPOINT_REG_DATA.i = getelementptr inbounds %struct.dce_audio_shift, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %AZALIA_ENDPOINT_REG_DATA.i, align 1
  %46 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %masks.i, align 4
  %AZALIA_ENDPOINT_REG_DATA7.i = getelementptr inbounds %struct.dce_audio_mask, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA7.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %AZALIA_ENDPOINT_REG_DATA7.i, align 4
  %call8.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %37, i32 noundef %41, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %45, i32 noundef %49, i32 noundef %or.i) #6
  %50 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctx.i, align 4
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %56 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %shifts.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 4
  %60 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %masks.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %call.i276 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %51, i32 noundef %55, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %59, i32 noundef %63, i32 noundef 37) #6
  %64 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctx.i, align 4
  %66 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i277 = getelementptr inbounds %struct.dce_audio_registers, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i277 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i277, align 4
  %call5.i278 = tail call i32 @dm_read_reg_func(ptr noundef %65, i32 noundef %69, ptr noundef nonnull @__func__.read_indirect_azalia_reg) #6
  %and.i279 = and i32 %call5.i278, -67043456
  %or.i280 = or i32 %and.i279, %bf.cast
  %and = and i32 %call5.i278, 16252928
  %or.i287 = or i32 %or.i280, %and
  %70 = zext i32 %signal to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values)
  switch i32 %signal, label %do.body [
    i32 4, label %sw.bb
    i32 128, label %entry.sw.bb10_crit_edge
    i32 32, label %entry.sw.bb10_crit_edge496
    i32 64, label %entry.sw.bb10_crit_edge497
  ]

entry.sw.bb10_crit_edge497:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

entry.sw.bb10_crit_edge496:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or.i289 = or i32 %or.i287, 65536
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry.sw.bb10_crit_edge, %entry.sw.bb10_crit_edge496, %entry.sw.bb10_crit_edge497
  %or.i290 = or i32 %or.i287, 131072
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dce_aud_az_configure, i32 noundef 483) #6
  tail call void @kgdb_breakpoint() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb10, %sw.bb
  %value.0 = phi i32 [ %or.i287, %do.body ], [ %or.i290, %sw.bb10 ], [ %or.i289, %sw.bb ]
  %71 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ctx.i, align 4
  %73 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %77 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %shifts.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %78, align 4
  %81 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %masks.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %call.i295 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %72, i32 noundef %76, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %80, i32 noundef %84, i32 noundef 37) #6
  %85 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ctx.i, align 4
  %87 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i296 = getelementptr inbounds %struct.dce_audio_registers, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i296 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i296, align 4
  %91 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %shifts.i, align 4
  %AZALIA_ENDPOINT_REG_DATA.i297 = getelementptr inbounds %struct.dce_audio_shift, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA.i297 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %AZALIA_ENDPOINT_REG_DATA.i297, align 1
  %95 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %masks.i, align 4
  %AZALIA_ENDPOINT_REG_DATA7.i298 = getelementptr inbounds %struct.dce_audio_mask, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA7.i298 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %AZALIA_ENDPOINT_REG_DATA7.i298, align 4
  %call8.i299 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %86, i32 noundef %90, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %94, i32 noundef %98, i32 noundef %value.0) #6
  %cmp.i = icmp eq ptr %audio_info, null
  %mode_count.i = getelementptr inbounds %struct.audio_info, ptr %audio_info, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog
  %is_ac3_supported.0.off0495 = phi i1 [ false, %sw.epilog ], [ %is_ac3_supported.3.off0, %for.inc.for.body_crit_edge ]
  %format_index.0493 = phi i32 [ 0, %sw.epilog ], [ %add, %for.inc.for.body_crit_edge ]
  %add = add nuw nsw i32 %format_index.0493, 1
  %99 = zext i32 %format_index.0493 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %format_index.0493, label %if.end [
    i32 8, label %for.body.for.inc_crit_edge
    i32 12, label %for.body.for.inc_crit_edge498
  ]

for.body.for.inc_crit_edge498:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  br i1 %cmp.i, label %if.end.if.end31_crit_edge, label %for.cond.preheader.i

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

for.cond.preheader.i:                             ; preds = %if.end
  %100 = ptrtoint ptr %mode_count.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mode_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp145.not.i = icmp eq i32 %101, 0
  br i1 %cmp145.not.i, label %for.cond.preheader.i.if.end31_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end31_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %found.0.off049.i = phi i1 [ %found.1.off0.i, %for.inc.i.for.body.i_crit_edge ], [ false, %for.cond.preheader.i.for.body.i_crit_edge ]
  %max_channe_index.048.i = phi i32 [ %max_channe_index.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %index.046.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 9, i32 %index.046.i
  %102 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %add)
  %cmp2.i = icmp ne i32 %103, %add
  %found.0.off0.not44.i = xor i1 %found.0.off049.i, true
  %brmerge.i = select i1 %cmp2.i, i1 true, i1 %found.0.off0.not44.i
  %max_channe_index.0.mux.i = select i1 %cmp2.i, i32 %max_channe_index.048.i, i32 %index.046.i
  %not.cmp2.i = xor i1 %cmp2.i, true
  %found.0.off0.mux.i = select i1 %not.cmp2.i, i1 true, i1 %found.0.off049.i
  br i1 %brmerge.i, label %for.body.i.for.inc.i_crit_edge, label %if.then5.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %channel_count.i = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 9, i32 %index.046.i, i32 1
  %104 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %channel_count.i, align 4
  %channel_count10.i = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 9, i32 %max_channe_index.048.i, i32 1
  %106 = ptrtoint ptr %channel_count10.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %channel_count10.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %105, i8 %107)
  %cmp12.i = icmp ugt i8 %105, %107
  %spec.select.i = select i1 %cmp12.i, i32 %index.046.i, i32 %max_channe_index.048.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %for.body.i.for.inc.i_crit_edge
  %max_channe_index.1.i = phi i32 [ %max_channe_index.0.mux.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.then5.i ]
  %found.1.off0.i = phi i1 [ %found.0.off0.mux.i, %for.body.i.for.inc.i_crit_edge ], [ %found.0.off049.i, %if.then5.i ]
  %inc.i = add nuw i32 %index.046.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %101
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  br i1 %found.1.off0.i, label %if.then15, label %for.end.i.if.end31_crit_edge

for.end.i.if.end31_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then15:                                        ; preds = %for.end.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sample_rates) #6
  %sample_rates16 = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 9, i32 %max_channe_index.1.i, i32 2
  %108 = ptrtoint ptr %sample_rates16 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %sample_rates16, align 1
  %110 = ptrtoint ptr %sample_rates to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %sample_rates, align 1
  %111 = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 9, i32 %max_channe_index.1.i, i32 3
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %111, align 2
  %channel_count17 = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 9, i32 %max_channe_index.1.i, i32 1
  %114 = ptrtoint ptr %channel_count17 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %channel_count17, align 4
  %116 = zext i32 %format_index.0493 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %format_index.0493, label %if.then15.sw.epilog24_crit_edge [
    i32 0, label %sw.bb18
    i32 1, label %sw.bb21
  ]

if.then15.sw.epilog24_crit_edge:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog24

sw.bb18:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %115 to i32
  call fastcc void @check_audio_bandwidth(ptr noundef %crtc_info, i32 noundef %conv, i32 noundef %signal, ptr noundef nonnull %sample_rates)
  %117 = ptrtoint ptr %sample_rates to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %sample_rates, align 1
  %conv19 = zext i8 %118 to i32
  %shl.i301 = shl nuw i32 %conv19, 24
  br label %sw.epilog24

sw.bb21:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog24

sw.epilog24:                                      ; preds = %sw.bb21, %sw.bb18, %if.then15.sw.epilog24_crit_edge
  %is_ac3_supported.1.off0 = phi i1 [ true, %sw.bb21 ], [ %is_ac3_supported.0.off0495, %sw.bb18 ], [ %is_ac3_supported.0.off0495, %if.then15.sw.epilog24_crit_edge ]
  %value.1 = phi i32 [ 0, %sw.bb21 ], [ %shl.i301, %sw.bb18 ], [ 0, %if.then15.sw.epilog24_crit_edge ]
  %119 = add i8 %115, 7
  %120 = and i8 %119, 7
  %and42.i303 = zext i8 %120 to i32
  %or.i304 = or i32 %value.1, %and42.i303
  %121 = ptrtoint ptr %sample_rates to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %sample_rates, align 1
  %conv27 = zext i8 %122 to i32
  %shl.i306 = shl nuw nsw i32 %conv27, 8
  %or.i308 = or i32 %shl.i306, %or.i304
  %conv29 = zext i8 %113 to i32
  %shl.i310 = shl nuw nsw i32 %conv29, 16
  %or.i312 = or i32 %or.i308, %shl.i310
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sample_rates) #6
  br label %if.end31

if.end31:                                         ; preds = %sw.epilog24, %for.end.i.if.end31_crit_edge, %for.cond.preheader.i.if.end31_crit_edge, %if.end.if.end31_crit_edge
  %is_ac3_supported.2.off0 = phi i1 [ %is_ac3_supported.1.off0, %sw.epilog24 ], [ %is_ac3_supported.0.off0495, %if.end.if.end31_crit_edge ], [ %is_ac3_supported.0.off0495, %for.end.i.if.end31_crit_edge ], [ %is_ac3_supported.0.off0495, %for.cond.preheader.i.if.end31_crit_edge ]
  %value.2 = phi i32 [ %or.i312, %sw.epilog24 ], [ 0, %if.end.if.end31_crit_edge ], [ 0, %for.end.i.if.end31_crit_edge ], [ 0, %for.cond.preheader.i.if.end31_crit_edge ]
  %add32 = add nuw nsw i32 %format_index.0493, 40
  %123 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ctx.i, align 4
  %125 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regs.i, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %126, align 4
  %129 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %shifts.i, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %130, align 4
  %133 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %masks.i, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %134, align 4
  %call.i317 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %124, i32 noundef %128, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %132, i32 noundef %136, i32 noundef %add32) #6
  %137 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ctx.i, align 4
  %139 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i318 = getelementptr inbounds %struct.dce_audio_registers, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i318 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i318, align 4
  %143 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %shifts.i, align 4
  %AZALIA_ENDPOINT_REG_DATA.i319 = getelementptr inbounds %struct.dce_audio_shift, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA.i319 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %AZALIA_ENDPOINT_REG_DATA.i319, align 1
  %147 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %masks.i, align 4
  %AZALIA_ENDPOINT_REG_DATA7.i320 = getelementptr inbounds %struct.dce_audio_mask, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA7.i320 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %AZALIA_ENDPOINT_REG_DATA7.i320, align 4
  %call8.i321 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %138, i32 noundef %142, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %146, i32 noundef %150, i32 noundef %value.2) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end31, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge498
  %is_ac3_supported.3.off0 = phi i1 [ %is_ac3_supported.2.off0, %if.end31 ], [ %is_ac3_supported.0.off0495, %for.body.for.inc_crit_edge ], [ %is_ac3_supported.0.off0495, %for.body.for.inc_crit_edge498 ]
  %exitcond.not = icmp eq i32 %add, 14
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %is_ac3_supported.3.off0, label %if.then33, label %for.end.if.end34_crit_edge

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then33:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %151 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ctx.i, align 4
  %153 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_FUNCTION_PARAMETER_STREAM_FORMATS = getelementptr inbounds %struct.dce_audio_registers, ptr %154, i32 0, i32 2
  %155 = ptrtoint ptr %AZALIA_F0_CODEC_FUNCTION_PARAMETER_STREAM_FORMATS to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %AZALIA_F0_CODEC_FUNCTION_PARAMETER_STREAM_FORMATS, align 4
  call void @dm_write_reg_func(ptr noundef %152, i32 noundef %156, i32 noundef 5, ptr noundef nonnull @__func__.dce_aud_az_configure) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %for.end.if.end34_crit_edge
  %157 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 2, ptr %sample_rate, align 1
  call fastcc void @check_audio_bandwidth(ptr noundef %crtc_info, i32 noundef 8, i32 noundef %signal, ptr noundef nonnull %sample_rate)
  %158 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load1_noabort(i32 %158)
  %bf.load36 = load i8, ptr %sample_rate, align 1
  %159 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ctx.i, align 4
  %161 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regs.i, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %162, align 4
  %165 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %shifts.i, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %166, align 4
  %169 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %masks.i, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %170, align 4
  %call.i.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %160, i32 noundef %164, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %168, i32 noundef %172, i32 noundef 56) #6
  %173 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ctx.i, align 4
  %175 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i.i = getelementptr inbounds %struct.dce_audio_registers, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i.i, align 4
  %call5.i.i = call i32 @dm_read_reg_func(ptr noundef %174, i32 noundef %178, ptr noundef nonnull @__func__.read_indirect_azalia_reg) #6
  %179 = lshr i8 %bf.load36, 1
  %.lobit = and i8 %179, 1
  %180 = zext i8 %.lobit to i32
  %and.i.i = and i32 %call5.i.i, -2
  %or.i.i = or i32 %and.i.i, %180
  %181 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ctx.i, align 4
  %183 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regs.i, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %184, align 4
  %187 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %shifts.i, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %188, align 4
  %191 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %masks.i, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %192, align 4
  %call.i8.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %182, i32 noundef %186, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %190, i32 noundef %194, i32 noundef 56) #6
  %195 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %ctx.i, align 4
  %197 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i9.i = getelementptr inbounds %struct.dce_audio_registers, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i9.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i9.i, align 4
  %201 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %shifts.i, align 4
  %AZALIA_ENDPOINT_REG_DATA.i.i = getelementptr inbounds %struct.dce_audio_shift, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA.i.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %AZALIA_ENDPOINT_REG_DATA.i.i, align 1
  %205 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %masks.i, align 4
  %AZALIA_ENDPOINT_REG_DATA7.i.i = getelementptr inbounds %struct.dce_audio_mask, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA7.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %AZALIA_ENDPOINT_REG_DATA7.i.i, align 4
  %call8.i.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %196, i32 noundef %200, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %204, i32 noundef %208, i32 noundef %or.i.i) #6
  %video_latency = getelementptr inbounds %struct.audio_info, ptr %audio_info, i32 0, i32 1
  %209 = ptrtoint ptr %video_latency to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %video_latency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %210)
  %211 = icmp ugt i32 %210, 255
  br i1 %211, label %if.end34.set_video_latency.exit_crit_edge, label %if.end.i

if.end34.set_video_latency.exit_crit_edge:        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_video_latency.exit

if.end.i:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %212 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %ctx.i, align 4
  %214 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %regs.i, align 4
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %215, align 4
  %218 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %shifts.i, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %219, align 4
  %222 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %masks.i, align 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %223, align 4
  %call.i.i326 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %213, i32 noundef %217, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %221, i32 noundef %225, i32 noundef 55) #6
  %226 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ctx.i, align 4
  %228 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i.i327 = getelementptr inbounds %struct.dce_audio_registers, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i.i327 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i.i327, align 4
  %call5.i.i328 = call i32 @dm_read_reg_func(ptr noundef %227, i32 noundef %231, ptr noundef nonnull @__func__.read_indirect_azalia_reg) #6
  %and.i.i329 = and i32 %call5.i.i328, -256
  %or.i.i330 = or i32 %and.i.i329, %210
  %232 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %ctx.i, align 4
  %234 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %regs.i, align 4
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %235, align 4
  %238 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %shifts.i, align 4
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %239, align 4
  %242 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %masks.i, align 4
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %243, align 4
  %call.i11.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %233, i32 noundef %237, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %241, i32 noundef %245, i32 noundef 55) #6
  %246 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %ctx.i, align 4
  %248 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i12.i = getelementptr inbounds %struct.dce_audio_registers, ptr %249, i32 0, i32 1
  %250 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i12.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i12.i, align 4
  %252 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %shifts.i, align 4
  %AZALIA_ENDPOINT_REG_DATA.i.i331 = getelementptr inbounds %struct.dce_audio_shift, ptr %253, i32 0, i32 1
  %254 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA.i.i331 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %AZALIA_ENDPOINT_REG_DATA.i.i331, align 1
  %256 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %masks.i, align 4
  %AZALIA_ENDPOINT_REG_DATA7.i.i332 = getelementptr inbounds %struct.dce_audio_mask, ptr %257, i32 0, i32 1
  %258 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA7.i.i332 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %AZALIA_ENDPOINT_REG_DATA7.i.i332, align 4
  %call8.i.i333 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %247, i32 noundef %251, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %255, i32 noundef %259, i32 noundef %or.i.i330) #6
  br label %set_video_latency.exit

set_video_latency.exit:                           ; preds = %if.end.i, %if.end34.set_video_latency.exit_crit_edge
  %audio_latency = getelementptr inbounds %struct.audio_info, ptr %audio_info, i32 0, i32 2
  %260 = ptrtoint ptr %audio_latency to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %audio_latency, align 4
  %262 = call i32 @llvm.smax.i32(i32 %261, i32 0) #6
  %263 = call i32 @llvm.umin.i32(i32 %262, i32 255) #6
  %264 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %ctx.i, align 4
  %266 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %regs.i, align 4
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %267, align 4
  %270 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %shifts.i, align 4
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %271, align 4
  %274 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %masks.i, align 4
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %275, align 4
  %call.i.i338 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %265, i32 noundef %269, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %273, i32 noundef %277, i32 noundef 55) #6
  %278 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %ctx.i, align 4
  %280 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i.i339 = getelementptr inbounds %struct.dce_audio_registers, ptr %281, i32 0, i32 1
  %282 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i.i339 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i.i339, align 4
  %call5.i.i340 = call i32 @dm_read_reg_func(ptr noundef %279, i32 noundef %283, ptr noundef nonnull @__func__.read_indirect_azalia_reg) #6
  %and.i.i341 = and i32 %call5.i.i340, -65281
  %shl.i.i = shl nuw nsw i32 %263, 8
  %or.i.i342 = or i32 %and.i.i341, %shl.i.i
  %284 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %ctx.i, align 4
  %286 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %regs.i, align 4
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %287, align 4
  %290 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %shifts.i, align 4
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %291, align 4
  %294 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %masks.i, align 4
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %295, align 4
  %call.i14.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %285, i32 noundef %289, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %293, i32 noundef %297, i32 noundef 55) #6
  %298 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %ctx.i, align 4
  %300 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i15.i = getelementptr inbounds %struct.dce_audio_registers, ptr %301, i32 0, i32 1
  %302 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i15.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i15.i, align 4
  %304 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %shifts.i, align 4
  %AZALIA_ENDPOINT_REG_DATA.i.i343 = getelementptr inbounds %struct.dce_audio_shift, ptr %305, i32 0, i32 1
  %306 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA.i.i343 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %AZALIA_ENDPOINT_REG_DATA.i.i343, align 1
  %308 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %masks.i, align 4
  %AZALIA_ENDPOINT_REG_DATA7.i.i344 = getelementptr inbounds %struct.dce_audio_mask, ptr %309, i32 0, i32 1
  %310 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA7.i.i344 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %AZALIA_ENDPOINT_REG_DATA7.i.i344, align 4
  %call8.i.i345 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %299, i32 noundef %303, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %307, i32 noundef %311, i32 noundef %or.i.i342) #6
  %manufacture_id = getelementptr inbounds %struct.audio_info, ptr %audio_info, i32 0, i32 5
  %312 = ptrtoint ptr %manufacture_id to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %manufacture_id, align 4
  %and42.i346 = and i32 %313, 65535
  %product_id = getelementptr inbounds %struct.audio_info, ptr %audio_info, i32 0, i32 6
  %314 = ptrtoint ptr %product_id to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %product_id, align 4
  %shl.i347 = shl i32 %315, 16
  %or.i348 = or i32 %shl.i347, %and42.i346
  %316 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %ctx.i, align 4
  %318 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %regs.i, align 4
  %320 = ptrtoint ptr %319 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %319, align 4
  %322 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %shifts.i, align 4
  %324 = ptrtoint ptr %323 to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %323, align 4
  %326 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %masks.i, align 4
  %328 = ptrtoint ptr %327 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %327, align 4
  %call.i353 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %317, i32 noundef %321, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %325, i32 noundef %329, i32 noundef 58) #6
  %330 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %ctx.i, align 4
  %332 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i354 = getelementptr inbounds %struct.dce_audio_registers, ptr %333, i32 0, i32 1
  %334 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i354 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i354, align 4
  %336 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %shifts.i, align 4
  %AZALIA_ENDPOINT_REG_DATA.i355 = getelementptr inbounds %struct.dce_audio_shift, ptr %337, i32 0, i32 1
  %338 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA.i355 to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %AZALIA_ENDPOINT_REG_DATA.i355, align 1
  %340 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %masks.i, align 4
  %AZALIA_ENDPOINT_REG_DATA7.i356 = getelementptr inbounds %struct.dce_audio_mask, ptr %341, i32 0, i32 1
  %342 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA7.i356 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %AZALIA_ENDPOINT_REG_DATA7.i356, align 4
  %call8.i357 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %331, i32 noundef %335, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %339, i32 noundef %343, i32 noundef %or.i348) #6
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %set_video_latency.exit
  %strlen.0 = phi i32 [ 0, %set_video_latency.exit ], [ %inc42, %while.cond.while.cond_crit_edge ]
  %inc42 = add nuw nsw i32 %strlen.0, 1
  %arrayidx43 = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 4, i32 %strlen.0
  %344 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %arrayidx43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %345)
  %cmp45.not = icmp eq i8 %345, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %strlen.0)
  %cmp47 = icmp ugt i32 %strlen.0, 16
  %or.cond = select i1 %cmp45.not, i1 true, i1 %cmp47
  br i1 %or.cond, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %display_name.le = getelementptr inbounds %struct.audio_info, ptr %audio_info, i32 0, i32 4
  %346 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %ctx.i, align 4
  %348 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %regs.i, align 4
  %350 = ptrtoint ptr %349 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %349, align 4
  %352 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %shifts.i, align 4
  %354 = ptrtoint ptr %353 to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %353, align 4
  %356 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %masks.i, align 4
  %358 = ptrtoint ptr %357 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %357, align 4
  %call.i363 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %347, i32 noundef %351, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %355, i32 noundef %359, i32 noundef 59) #6
  %360 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %ctx.i, align 4
  %362 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i364 = getelementptr inbounds %struct.dce_audio_registers, ptr %363, i32 0, i32 1
  %364 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i364 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i364, align 4
  %366 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %shifts.i, align 4
  %AZALIA_ENDPOINT_REG_DATA.i365 = getelementptr inbounds %struct.dce_audio_shift, ptr %367, i32 0, i32 1
  %368 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA.i365 to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %AZALIA_ENDPOINT_REG_DATA.i365, align 1
  %370 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %masks.i, align 4
  %AZALIA_ENDPOINT_REG_DATA7.i366 = getelementptr inbounds %struct.dce_audio_mask, ptr %371, i32 0, i32 1
  %372 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA7.i366 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %AZALIA_ENDPOINT_REG_DATA7.i366, align 4
  %call8.i367 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %361, i32 noundef %365, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %369, i32 noundef %373, i32 noundef %inc42) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dce_aud_az_configure.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dce_aud_az_configure, %if.then58)) #6
          to label %do.end62 [label %if.then58], !srcloc !41

if.then58:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %inst = getelementptr inbounds %struct.audio, ptr %audio, i32 0, i32 2
  %374 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %inst, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dce_aud_az_configure.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.7, i32 noundef %375, i32 noundef %inc42, ptr noundef %display_name.le) #6
  br label %do.end62

do.end62:                                         ; preds = %if.then58, %while.end
  %port_id = getelementptr inbounds %struct.audio_info, ptr %audio_info, i32 0, i32 7
  %376 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %port_id, align 4
  %378 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %ctx.i, align 4
  %380 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %regs.i, align 4
  %382 = ptrtoint ptr %381 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %381, align 4
  %384 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %shifts.i, align 4
  %386 = ptrtoint ptr %385 to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %385, align 4
  %388 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %masks.i, align 4
  %390 = ptrtoint ptr %389 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %389, align 4
  %call.i372 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %379, i32 noundef %383, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %387, i32 noundef %391, i32 noundef 60) #6
  %392 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %ctx.i, align 4
  %394 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i373 = getelementptr inbounds %struct.dce_audio_registers, ptr %395, i32 0, i32 1
  %396 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i373 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i373, align 4
  %398 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %shifts.i, align 4
  %AZALIA_ENDPOINT_REG_DATA.i374 = getelementptr inbounds %struct.dce_audio_shift, ptr %399, i32 0, i32 1
  %400 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA.i374 to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %AZALIA_ENDPOINT_REG_DATA.i374, align 1
  %402 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %masks.i, align 4
  %AZALIA_ENDPOINT_REG_DATA7.i375 = getelementptr inbounds %struct.dce_audio_mask, ptr %403, i32 0, i32 1
  %404 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA7.i375 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %AZALIA_ENDPOINT_REG_DATA7.i375, align 4
  %call8.i376 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %393, i32 noundef %397, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %401, i32 noundef %405, i32 noundef %377) #6
  %arrayidx66 = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 7, i32 1
  %406 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %arrayidx66, align 4
  %408 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %ctx.i, align 4
  %410 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %regs.i, align 4
  %412 = ptrtoint ptr %411 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %411, align 4
  %414 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %shifts.i, align 4
  %416 = ptrtoint ptr %415 to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %415, align 4
  %418 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %masks.i, align 4
  %420 = ptrtoint ptr %419 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %419, align 4
  %call.i381 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %409, i32 noundef %413, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %417, i32 noundef %421, i32 noundef 61) #6
  %422 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %ctx.i, align 4
  %424 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i382 = getelementptr inbounds %struct.dce_audio_registers, ptr %425, i32 0, i32 1
  %426 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i382 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i382, align 4
  %428 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %shifts.i, align 4
  %AZALIA_ENDPOINT_REG_DATA.i383 = getelementptr inbounds %struct.dce_audio_shift, ptr %429, i32 0, i32 1
  %430 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA.i383 to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %AZALIA_ENDPOINT_REG_DATA.i383, align 1
  %432 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %masks.i, align 4
  %AZALIA_ENDPOINT_REG_DATA7.i384 = getelementptr inbounds %struct.dce_audio_mask, ptr %433, i32 0, i32 1
  %434 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA7.i384 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %AZALIA_ENDPOINT_REG_DATA7.i384, align 4
  %call8.i385 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %423, i32 noundef %427, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %431, i32 noundef %435, i32 noundef %407) #6
  %436 = ptrtoint ptr %display_name.le to i32
  call void @__asan_load1_noabort(i32 %436)
  %437 = load i8, ptr %display_name.le, align 4
  %conv70 = zext i8 %437 to i32
  %arrayidx73 = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 4, i32 1
  %438 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %439 to i32
  %shl.i387 = shl nuw nsw i32 %conv74, 8
  %or.i389 = or i32 %shl.i387, %conv70
  %arrayidx77 = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 4, i32 2
  %440 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %arrayidx77, align 2
  %conv78 = zext i8 %441 to i32
  %shl.i390 = shl nuw nsw i32 %conv78, 16
  %or.i392 = or i32 %or.i389, %shl.i390
  %arrayidx81 = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 4, i32 3
  %442 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %443 to i32
  %shl.i393 = shl nuw i32 %conv82, 24
  %or.i394 = or i32 %or.i392, %shl.i393
  %444 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %ctx.i, align 4
  %446 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %regs.i, align 4
  %448 = ptrtoint ptr %447 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %447, align 4
  %450 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %shifts.i, align 4
  %452 = ptrtoint ptr %451 to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %451, align 4
  %454 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %masks.i, align 4
  %456 = ptrtoint ptr %455 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %455, align 4
  %call.i399 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %445, i32 noundef %449, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %453, i32 noundef %457, i32 noundef 62) #6
  %458 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %ctx.i, align 4
  %460 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i400 = getelementptr inbounds %struct.dce_audio_registers, ptr %461, i32 0, i32 1
  %462 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i400 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i400, align 4
  %464 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %shifts.i, align 4
  %AZALIA_ENDPOINT_REG_DATA.i401 = getelementptr inbounds %struct.dce_audio_shift, ptr %465, i32 0, i32 1
  %466 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA.i401 to i32
  call void @__asan_load1_noabort(i32 %466)
  %467 = load i8, ptr %AZALIA_ENDPOINT_REG_DATA.i401, align 1
  %468 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %masks.i, align 4
  %AZALIA_ENDPOINT_REG_DATA7.i402 = getelementptr inbounds %struct.dce_audio_mask, ptr %469, i32 0, i32 1
  %470 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA7.i402 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %AZALIA_ENDPOINT_REG_DATA7.i402, align 4
  %call8.i403 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %459, i32 noundef %463, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %467, i32 noundef %471, i32 noundef %or.i394) #6
  %arrayidx85 = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 4, i32 4
  %472 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %472)
  %473 = load i8, ptr %arrayidx85, align 4
  %conv86 = zext i8 %473 to i32
  %arrayidx89 = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 4, i32 5
  %474 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %474)
  %475 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %475 to i32
  %shl.i405 = shl nuw nsw i32 %conv90, 8
  %or.i407 = or i32 %shl.i405, %conv86
  %arrayidx93 = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 4, i32 6
  %476 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %arrayidx93, align 2
  %conv94 = zext i8 %477 to i32
  %shl.i408 = shl nuw nsw i32 %conv94, 16
  %or.i410 = or i32 %or.i407, %shl.i408
  %arrayidx97 = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 4, i32 7
  %478 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %478)
  %479 = load i8, ptr %arrayidx97, align 1
  %conv98 = zext i8 %479 to i32
  %shl.i411 = shl nuw i32 %conv98, 24
  %or.i412 = or i32 %or.i410, %shl.i411
  %480 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %ctx.i, align 4
  %482 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %regs.i, align 4
  %484 = ptrtoint ptr %483 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %483, align 4
  %486 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %shifts.i, align 4
  %488 = ptrtoint ptr %487 to i32
  call void @__asan_load1_noabort(i32 %488)
  %489 = load i8, ptr %487, align 4
  %490 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %masks.i, align 4
  %492 = ptrtoint ptr %491 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %491, align 4
  %call.i417 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %481, i32 noundef %485, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %489, i32 noundef %493, i32 noundef 63) #6
  %494 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %ctx.i, align 4
  %496 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i418 = getelementptr inbounds %struct.dce_audio_registers, ptr %497, i32 0, i32 1
  %498 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i418 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i418, align 4
  %500 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %shifts.i, align 4
  %AZALIA_ENDPOINT_REG_DATA.i419 = getelementptr inbounds %struct.dce_audio_shift, ptr %501, i32 0, i32 1
  %502 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA.i419 to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %AZALIA_ENDPOINT_REG_DATA.i419, align 1
  %504 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %masks.i, align 4
  %AZALIA_ENDPOINT_REG_DATA7.i420 = getelementptr inbounds %struct.dce_audio_mask, ptr %505, i32 0, i32 1
  %506 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA7.i420 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %AZALIA_ENDPOINT_REG_DATA7.i420, align 4
  %call8.i421 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %495, i32 noundef %499, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %503, i32 noundef %507, i32 noundef %or.i412) #6
  %arrayidx101 = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 4, i32 8
  %508 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %508)
  %509 = load i8, ptr %arrayidx101, align 4
  %conv102 = zext i8 %509 to i32
  %arrayidx105 = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 4, i32 9
  %510 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %511 to i32
  %shl.i423 = shl nuw nsw i32 %conv106, 8
  %or.i425 = or i32 %shl.i423, %conv102
  %arrayidx109 = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 4, i32 10
  %512 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load1_noabort(i32 %512)
  %513 = load i8, ptr %arrayidx109, align 2
  %conv110 = zext i8 %513 to i32
  %shl.i426 = shl nuw nsw i32 %conv110, 16
  %or.i428 = or i32 %or.i425, %shl.i426
  %arrayidx113 = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 4, i32 11
  %514 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %514)
  %515 = load i8, ptr %arrayidx113, align 1
  %conv114 = zext i8 %515 to i32
  %shl.i429 = shl nuw i32 %conv114, 24
  %or.i430 = or i32 %or.i428, %shl.i429
  %516 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %ctx.i, align 4
  %518 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %regs.i, align 4
  %520 = ptrtoint ptr %519 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %519, align 4
  %522 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %shifts.i, align 4
  %524 = ptrtoint ptr %523 to i32
  call void @__asan_load1_noabort(i32 %524)
  %525 = load i8, ptr %523, align 4
  %526 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %masks.i, align 4
  %528 = ptrtoint ptr %527 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %527, align 4
  %call.i435 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %517, i32 noundef %521, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %525, i32 noundef %529, i32 noundef 64) #6
  %530 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %ctx.i, align 4
  %532 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i436 = getelementptr inbounds %struct.dce_audio_registers, ptr %533, i32 0, i32 1
  %534 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i436 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i436, align 4
  %536 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %shifts.i, align 4
  %AZALIA_ENDPOINT_REG_DATA.i437 = getelementptr inbounds %struct.dce_audio_shift, ptr %537, i32 0, i32 1
  %538 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA.i437 to i32
  call void @__asan_load1_noabort(i32 %538)
  %539 = load i8, ptr %AZALIA_ENDPOINT_REG_DATA.i437, align 1
  %540 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %masks.i, align 4
  %AZALIA_ENDPOINT_REG_DATA7.i438 = getelementptr inbounds %struct.dce_audio_mask, ptr %541, i32 0, i32 1
  %542 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA7.i438 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %AZALIA_ENDPOINT_REG_DATA7.i438, align 4
  %call8.i439 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %531, i32 noundef %535, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %539, i32 noundef %543, i32 noundef %or.i430) #6
  %arrayidx117 = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 4, i32 12
  %544 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %544)
  %545 = load i8, ptr %arrayidx117, align 4
  %conv118 = zext i8 %545 to i32
  %arrayidx121 = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 4, i32 13
  %546 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %546)
  %547 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %547 to i32
  %shl.i441 = shl nuw nsw i32 %conv122, 8
  %or.i443 = or i32 %shl.i441, %conv118
  %arrayidx125 = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 4, i32 14
  %548 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %548)
  %549 = load i8, ptr %arrayidx125, align 2
  %conv126 = zext i8 %549 to i32
  %shl.i444 = shl nuw nsw i32 %conv126, 16
  %or.i446 = or i32 %or.i443, %shl.i444
  %arrayidx129 = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 4, i32 15
  %550 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %550)
  %551 = load i8, ptr %arrayidx129, align 1
  %conv130 = zext i8 %551 to i32
  %shl.i447 = shl nuw i32 %conv130, 24
  %or.i448 = or i32 %or.i446, %shl.i447
  %552 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %ctx.i, align 4
  %554 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %regs.i, align 4
  %556 = ptrtoint ptr %555 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %555, align 4
  %558 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %shifts.i, align 4
  %560 = ptrtoint ptr %559 to i32
  call void @__asan_load1_noabort(i32 %560)
  %561 = load i8, ptr %559, align 4
  %562 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %masks.i, align 4
  %564 = ptrtoint ptr %563 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %563, align 4
  %call.i453 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %553, i32 noundef %557, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %561, i32 noundef %565, i32 noundef 65) #6
  %566 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %ctx.i, align 4
  %568 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i454 = getelementptr inbounds %struct.dce_audio_registers, ptr %569, i32 0, i32 1
  %570 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i454 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i454, align 4
  %572 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %shifts.i, align 4
  %AZALIA_ENDPOINT_REG_DATA.i455 = getelementptr inbounds %struct.dce_audio_shift, ptr %573, i32 0, i32 1
  %574 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA.i455 to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %AZALIA_ENDPOINT_REG_DATA.i455, align 1
  %576 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %masks.i, align 4
  %AZALIA_ENDPOINT_REG_DATA7.i456 = getelementptr inbounds %struct.dce_audio_mask, ptr %577, i32 0, i32 1
  %578 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA7.i456 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load i32, ptr %AZALIA_ENDPOINT_REG_DATA7.i456, align 4
  %call8.i457 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %567, i32 noundef %571, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %575, i32 noundef %579, i32 noundef %or.i448) #6
  %arrayidx133 = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 4, i32 16
  %580 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %580)
  %581 = load i8, ptr %arrayidx133, align 4
  %conv134 = zext i8 %581 to i32
  %arrayidx137 = getelementptr %struct.audio_info, ptr %audio_info, i32 0, i32 4, i32 17
  %582 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %582)
  %583 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %583 to i32
  %shl.i459 = shl nuw nsw i32 %conv138, 8
  %or.i461 = or i32 %shl.i459, %conv134
  %584 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %ctx.i, align 4
  %586 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %regs.i, align 4
  %588 = ptrtoint ptr %587 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load i32, ptr %587, align 4
  %590 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %shifts.i, align 4
  %592 = ptrtoint ptr %591 to i32
  call void @__asan_load1_noabort(i32 %592)
  %593 = load i8, ptr %591, align 4
  %594 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %masks.i, align 4
  %596 = ptrtoint ptr %595 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load i32, ptr %595, align 4
  %call.i466 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %585, i32 noundef %589, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %593, i32 noundef %597, i32 noundef 66) #6
  %598 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %ctx.i, align 4
  %600 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i467 = getelementptr inbounds %struct.dce_audio_registers, ptr %601, i32 0, i32 1
  %602 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i467 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i467, align 4
  %604 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %shifts.i, align 4
  %AZALIA_ENDPOINT_REG_DATA.i468 = getelementptr inbounds %struct.dce_audio_shift, ptr %605, i32 0, i32 1
  %606 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA.i468 to i32
  call void @__asan_load1_noabort(i32 %606)
  %607 = load i8, ptr %AZALIA_ENDPOINT_REG_DATA.i468, align 1
  %608 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %masks.i, align 4
  %AZALIA_ENDPOINT_REG_DATA7.i469 = getelementptr inbounds %struct.dce_audio_mask, ptr %609, i32 0, i32 1
  %610 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA7.i469 to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load i32, ptr %AZALIA_ENDPOINT_REG_DATA7.i469, align 4
  %call8.i470 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %599, i32 noundef %603, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %607, i32 noundef %611, i32 noundef %or.i461) #6
  %612 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %ctx.i, align 4
  %614 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %regs.i, align 4
  %616 = ptrtoint ptr %615 to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load i32, ptr %615, align 4
  %618 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %shifts.i, align 4
  %620 = ptrtoint ptr %619 to i32
  call void @__asan_load1_noabort(i32 %620)
  %621 = load i8, ptr %619, align 4
  %622 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %masks.i, align 4
  %624 = ptrtoint ptr %623 to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load i32, ptr %623, align 4
  %call.i475 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %613, i32 noundef %617, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %621, i32 noundef %625, i32 noundef 84) #6
  %626 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %ctx.i, align 4
  %628 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i476 = getelementptr inbounds %struct.dce_audio_registers, ptr %629, i32 0, i32 1
  %630 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i476 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i476, align 4
  %call5.i477 = call i32 @dm_read_reg_func(ptr noundef %627, i32 noundef %631, ptr noundef nonnull @__func__.read_indirect_azalia_reg) #6
  %and.i478 = and i32 %call5.i477, -2
  %632 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %ctx.i, align 4
  %634 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %regs.i, align 4
  %636 = ptrtoint ptr %635 to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load i32, ptr %635, align 4
  %638 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %shifts.i, align 4
  %640 = ptrtoint ptr %639 to i32
  call void @__asan_load1_noabort(i32 %640)
  %641 = load i8, ptr %639, align 4
  %642 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %masks.i, align 4
  %644 = ptrtoint ptr %643 to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load i32, ptr %643, align 4
  %call.i483 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %633, i32 noundef %637, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %641, i32 noundef %645, i32 noundef 84) #6
  %646 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %ctx.i, align 4
  %648 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i484 = getelementptr inbounds %struct.dce_audio_registers, ptr %649, i32 0, i32 1
  %650 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i484 to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i484, align 4
  %652 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %shifts.i, align 4
  %AZALIA_ENDPOINT_REG_DATA.i485 = getelementptr inbounds %struct.dce_audio_shift, ptr %653, i32 0, i32 1
  %654 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA.i485 to i32
  call void @__asan_load1_noabort(i32 %654)
  %655 = load i8, ptr %AZALIA_ENDPOINT_REG_DATA.i485, align 1
  %656 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %masks.i, align 4
  %AZALIA_ENDPOINT_REG_DATA7.i486 = getelementptr inbounds %struct.dce_audio_mask, ptr %657, i32 0, i32 1
  %658 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA7.i486 to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %AZALIA_ENDPOINT_REG_DATA7.i486, align 4
  %call8.i487 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %647, i32 noundef %651, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %655, i32 noundef %659, i32 noundef %and.i478) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sample_rate) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @check_audio_bandwidth(ptr noundef readonly %crtc_info, i32 noundef %channel_count, i32 noundef %signal, ptr noundef %sample_rates) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %signal)
  %cond = icmp ne i32 %signal, 4
  %tobool.not.i = icmp eq ptr %crtc_info, null
  %or.cond = or i1 %tobool.not.i, %cond
  br i1 %or.cond, label %entry.sw.epilog_crit_edge, label %if.end.i

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %channel_count)
  %cmp.i = icmp ugt i32 %channel_count, 2
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end36.i_crit_edge

if.end.i.if.end36.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

if.then1.i:                                       ; preds = %if.end.i
  %requested_pixel_clock_100Hz.i = getelementptr inbounds %struct.audio_crtc_info, ptr %crtc_info, i32 0, i32 4
  %0 = ptrtoint ptr %requested_pixel_clock_100Hz.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %requested_pixel_clock_100Hz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 270001, i32 %1)
  %cmp2.i = icmp ult i32 %1, 270001
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.else23.i

land.lhs.true.i:                                  ; preds = %if.then1.i
  %v_active.i = getelementptr inbounds %struct.audio_crtc_info, ptr %crtc_info, i32 0, i32 2
  %2 = ptrtoint ptr %v_active.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 577, i32 %3)
  %cmp3.i = icmp ult i32 %3, 577
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true.i.land.lhs.true26.i_crit_edge

land.lhs.true.i.land.lhs.true26.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true26.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %interlaced.i = getelementptr inbounds %struct.audio_crtc_info, ptr %crtc_info, i32 0, i32 8
  %4 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %interlaced.i, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not.i = icmp eq i8 %5, 0
  %pixel_repetition.i = getelementptr inbounds %struct.audio_crtc_info, ptr %crtc_info, i32 0, i32 3
  %6 = ptrtoint ptr %pixel_repetition.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixel_repetition.i, align 4
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %land.lhs.true19.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true4.i
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %7, label %land.lhs.true6.i.if.end36.i_crit_edge [
    i32 2, label %land.lhs.true6.i.land.lhs.true26.i_crit_edge
    i32 4, label %land.lhs.true6.i.land.lhs.true26.i_crit_edge9
  ]

land.lhs.true6.i.land.lhs.true26.i_crit_edge9:    ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true26.i

land.lhs.true6.i.land.lhs.true26.i_crit_edge:     ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true26.i

land.lhs.true6.i.if.end36.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

land.lhs.true19.i:                                ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp21.i = icmp eq i32 %7, 2
  br i1 %cmp21.i, label %land.lhs.true19.i.if.end36.i_crit_edge, label %land.lhs.true19.i.land.lhs.true26.i_crit_edge

land.lhs.true19.i.land.lhs.true26.i_crit_edge:    ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true26.i

land.lhs.true19.i.if.end36.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

if.else23.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 540001, i32 %1)
  %cmp25.i = icmp ult i32 %1, 540001
  br i1 %cmp25.i, label %if.else23.i.land.lhs.true26.i_crit_edge, label %if.else23.i.if.end36.i_crit_edge

if.else23.i.if.end36.i_crit_edge:                 ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

if.else23.i.land.lhs.true26.i_crit_edge:          ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true26.i

land.lhs.true26.i:                                ; preds = %if.else23.i.land.lhs.true26.i_crit_edge, %land.lhs.true19.i.land.lhs.true26.i_crit_edge, %land.lhs.true6.i.land.lhs.true26.i_crit_edge, %land.lhs.true6.i.land.lhs.true26.i_crit_edge9, %land.lhs.true.i.land.lhs.true26.i_crit_edge
  %v_active27.i = getelementptr inbounds %struct.audio_crtc_info, ptr %crtc_info, i32 0, i32 2
  %9 = ptrtoint ptr %v_active27.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %v_active27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 577, i32 %10)
  %cmp28.i = icmp ult i32 %10, 577
  br i1 %cmp28.i, label %land.lhs.true29.i, label %land.lhs.true26.i.if.end36.i_crit_edge

land.lhs.true26.i.if.end36.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

land.lhs.true29.i:                                ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #8
  %interlaced30.i = getelementptr inbounds %struct.audio_crtc_info, ptr %crtc_info, i32 0, i32 8
  %11 = ptrtoint ptr %interlaced30.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %interlaced30.i, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool31.not.i = icmp eq i8 %12, 0
  br label %if.end36.i

if.end36.i:                                       ; preds = %land.lhs.true29.i, %land.lhs.true26.i.if.end36.i_crit_edge, %if.else23.i.if.end36.i_crit_edge, %land.lhs.true19.i.if.end36.i_crit_edge, %land.lhs.true6.i.if.end36.i_crit_edge, %if.end.i.if.end36.i_crit_edge
  %limit_freq_to_48_khz.0.off0.i = phi i1 [ false, %land.lhs.true26.i.if.end36.i_crit_edge ], [ false, %if.else23.i.if.end36.i_crit_edge ], [ false, %if.end.i.if.end36.i_crit_edge ], [ true, %land.lhs.true6.i.if.end36.i_crit_edge ], [ false, %land.lhs.true19.i.if.end36.i_crit_edge ], [ false, %land.lhs.true29.i ]
  %limit_freq_to_88_2_khz.0.off0.i = phi i1 [ false, %land.lhs.true26.i.if.end36.i_crit_edge ], [ false, %if.else23.i.if.end36.i_crit_edge ], [ false, %if.end.i.if.end36.i_crit_edge ], [ false, %land.lhs.true6.i.if.end36.i_crit_edge ], [ true, %land.lhs.true19.i.if.end36.i_crit_edge ], [ false, %land.lhs.true29.i ]
  %limit_freq_to_174_4_khz.0.off0.i = phi i1 [ false, %land.lhs.true26.i.if.end36.i_crit_edge ], [ false, %if.else23.i.if.end36.i_crit_edge ], [ false, %if.end.i.if.end36.i_crit_edge ], [ false, %land.lhs.true6.i.if.end36.i_crit_edge ], [ false, %land.lhs.true19.i.if.end36.i_crit_edge ], [ %tobool31.not.i, %land.lhs.true29.i ]
  %13 = ptrtoint ptr %crtc_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %crtc_info, align 4
  %h_active.i = getelementptr inbounds %struct.audio_crtc_info, ptr %crtc_info, i32 0, i32 1
  %15 = ptrtoint ptr %h_active.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %h_active.i, align 4
  %sub.i = sub i32 %14, %16
  %pixel_repetition37.i = getelementptr inbounds %struct.audio_crtc_info, ptr %crtc_info, i32 0, i32 3
  %17 = ptrtoint ptr %pixel_repetition37.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pixel_repetition37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool38.not.i = icmp eq i32 %18, 0
  %mul.i = select i1 %tobool38.not.i, i32 1, i32 %18
  %spec.select174.i = mul i32 %sub.i, 10
  %19 = mul i32 %spec.select174.i, %mul.i
  %mul44.i = add i32 %19, -740
  %div172.i = lshr i32 %mul44.i, 5
  %v_active45.i = getelementptr inbounds %struct.audio_crtc_info, ptr %crtc_info, i32 0, i32 2
  %20 = ptrtoint ptr %v_active45.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %v_active45.i, align 4
  %refresh_rate.i = getelementptr inbounds %struct.audio_crtc_info, ptr %crtc_info, i32 0, i32 6
  %22 = ptrtoint ptr %refresh_rate.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %refresh_rate.i, align 4
  %mul46.i = mul i32 %23, %21
  %mul47.i = mul i32 %mul46.i, %div172.i
  %div48.i = udiv i32 %mul47.i, 10
  %color_depth.i = getelementptr inbounds %struct.audio_crtc_info, ptr %crtc_info, i32 0, i32 7
  %24 = ptrtoint ptr %color_depth.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %color_depth.i, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %25, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 3, label %sw.bb50.i
    i32 4, label %sw.bb52.i
  ]

sw.bb.i:                                          ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul49.i = shl nuw nsw i32 %div48.i, 2
  br label %sw.epilog.i

sw.bb50.i:                                        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul51.i = mul nuw nsw i32 %div48.i, 5
  br label %sw.epilog.i

sw.bb52.i:                                        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul53.i = mul nuw i32 %div48.i, 6
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul54.i = shl nuw nsw i32 %div48.i, 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb52.i, %sw.bb50.i, %sw.bb.i
  %samples.0.i = phi i32 [ %mul54.i, %sw.default.i ], [ %mul53.i, %sw.bb52.i ], [ %mul51.i, %sw.bb50.i ], [ %mul49.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 352800, i32 %samples.0.i)
  %cmp56.i = icmp ult i32 %samples.0.i, 352800
  br i1 %cmp56.i, label %sw.epilog.i.if.end70.i_crit_edge, label %if.else58.i

sw.epilog.i.if.end70.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70.i

if.else58.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 384000, i32 %samples.0.i)
  %cmp59.i = icmp ult i32 %samples.0.i, 384000
  br i1 %cmp59.i, label %if.else58.i.if.end70.i_crit_edge, label %if.else61.i

if.else58.i.if.end70.i_crit_edge:                 ; preds = %if.else58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70.i

if.else61.i:                                      ; preds = %if.else58.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 705600, i32 %samples.0.i)
  %cmp62.i = icmp ult i32 %samples.0.i, 705600
  br i1 %cmp62.i, label %if.else61.i.if.end70.i_crit_edge, label %if.else64.i

if.else61.i.if.end70.i_crit_edge:                 ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70.i

if.else64.i:                                      ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 768000, i32 %samples.0.i)
  %cmp65.i = icmp ult i32 %samples.0.i, 768000
  %spec.select175.i = select i1 %cmp65.i, i1 true, i1 %limit_freq_to_174_4_khz.0.off0.i
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.else64.i, %if.else61.i.if.end70.i_crit_edge, %if.else58.i.if.end70.i_crit_edge, %sw.epilog.i.if.end70.i_crit_edge
  %limit_freq_to_48_khz.1.off0.i = phi i1 [ true, %sw.epilog.i.if.end70.i_crit_edge ], [ %limit_freq_to_48_khz.0.off0.i, %if.else58.i.if.end70.i_crit_edge ], [ %limit_freq_to_48_khz.0.off0.i, %if.else61.i.if.end70.i_crit_edge ], [ %limit_freq_to_48_khz.0.off0.i, %if.else64.i ]
  %limit_freq_to_88_2_khz.1.off0.i = phi i1 [ %limit_freq_to_88_2_khz.0.off0.i, %sw.epilog.i.if.end70.i_crit_edge ], [ true, %if.else58.i.if.end70.i_crit_edge ], [ %limit_freq_to_88_2_khz.0.off0.i, %if.else61.i.if.end70.i_crit_edge ], [ %limit_freq_to_88_2_khz.0.off0.i, %if.else64.i ]
  %limit_freq_to_96_khz.0.off0.i = phi i1 [ false, %sw.epilog.i.if.end70.i_crit_edge ], [ false, %if.else58.i.if.end70.i_crit_edge ], [ true, %if.else61.i.if.end70.i_crit_edge ], [ false, %if.else64.i ]
  %limit_freq_to_174_4_khz.1.off0.i = phi i1 [ %limit_freq_to_174_4_khz.0.off0.i, %sw.epilog.i.if.end70.i_crit_edge ], [ %limit_freq_to_174_4_khz.0.off0.i, %if.else58.i.if.end70.i_crit_edge ], [ %limit_freq_to_174_4_khz.0.off0.i, %if.else61.i.if.end70.i_crit_edge ], [ %spec.select175.i, %if.else64.i ]
  %cmp71.not.i = icmp eq ptr %sample_rates, null
  br i1 %cmp71.not.i, label %if.end70.i.sw.epilog_crit_edge, label %if.then72.i

if.end70.i.sw.epilog_crit_edge:                   ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then72.i:                                      ; preds = %if.end70.i
  br i1 %limit_freq_to_174_4_khz.1.off0.i, label %if.then74.i, label %if.then72.i.if.end75.i_crit_edge

if.then72.i.if.end75.i_crit_edge:                 ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75.i

if.then74.i:                                      ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %sample_rates to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i = load i8, ptr %sample_rates, align 1
  %bf.clear.i = and i8 %bf.load.i, -3
  store i8 %bf.clear.i, ptr %sample_rates, align 1
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then74.i, %if.then72.i.if.end75.i_crit_edge
  br i1 %limit_freq_to_96_khz.0.off0.i, label %if.then77.i, label %if.end75.i.if.end84.i_crit_edge

if.end75.i.if.end84.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84.i

if.then77.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %sample_rates to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load78.i = load i8, ptr %sample_rates, align 1
  %bf.clear82.i = and i8 %bf.load78.i, -7
  store i8 %bf.clear82.i, ptr %sample_rates, align 1
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.then77.i, %if.end75.i.if.end84.i_crit_edge
  br i1 %limit_freq_to_88_2_khz.1.off0.i, label %if.then86.i, label %if.end84.i.if.end96.i_crit_edge

if.end84.i.if.end96.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i

if.then86.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %sample_rates to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load87.i = load i8, ptr %sample_rates, align 1
  %bf.clear94.i = and i8 %bf.load87.i, -15
  store i8 %bf.clear94.i, ptr %sample_rates, align 1
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.then86.i, %if.end84.i.if.end96.i_crit_edge
  br i1 %limit_freq_to_48_khz.1.off0.i, label %if.then98.i, label %if.end96.i.sw.epilog_crit_edge

if.end96.i.sw.epilog_crit_edge:                   ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then98.i:                                      ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %sample_rates to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load99.i = load i8, ptr %sample_rates, align 1
  %bf.clear109.i = and i8 %bf.load99.i, -31
  store i8 %bf.clear109.i, ptr %sample_rates, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then98.i, %if.end96.i.sw.epilog_crit_edge, %if.end70.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce_aud_wall_dto_setup(ptr nocapture noundef readonly %audio, i32 noundef %signal, ptr nocapture noundef readonly %crtc_info, ptr nocapture noundef readonly %pll_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %signal)
  %cmp.i = icmp eq i32 %signal, 4
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %calculated_pixel_clock_100Hz = getelementptr inbounds %struct.audio_crtc_info, ptr %crtc_info, i32 0, i32 5
  %0 = ptrtoint ptr %calculated_pixel_clock_100Hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %calculated_pixel_clock_100Hz, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dce_aud_wall_dto_setup.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dce_aud_wall_dto_setup, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !41

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %requested_pixel_clock_100Hz = getelementptr inbounds %struct.audio_crtc_info, ptr %crtc_info, i32 0, i32 4
  %2 = ptrtoint ptr %requested_pixel_clock_100Hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requested_pixel_clock_100Hz, align 4
  %4 = ptrtoint ptr %calculated_pixel_clock_100Hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %calculated_pixel_clock_100Hz, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dce_aud_wall_dto_setup.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef %3, i32 noundef %5, i32 noundef %1, i32 noundef 240000) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.then
  %dto_source = getelementptr inbounds %struct.audio_pll_info, ptr %pll_info, i32 0, i32 2
  %6 = ptrtoint ptr %dto_source to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dto_source, align 4
  %sub = add i32 %7, -1
  %ctx = getelementptr inbounds %struct.audio, ptr %audio, i32 0, i32 1
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 1
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %DCCG_AUDIO_DTO_SOURCE = getelementptr inbounds %struct.dce_audio_registers, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %DCCG_AUDIO_DTO_SOURCE to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %DCCG_AUDIO_DTO_SOURCE, align 4
  %shifts = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 2
  %14 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shifts, align 4
  %DCCG_AUDIO_DTO0_SOURCE_SEL = getelementptr inbounds %struct.dce_audio_shift, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %DCCG_AUDIO_DTO0_SOURCE_SEL to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %DCCG_AUDIO_DTO0_SOURCE_SEL, align 1
  %masks = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 3
  %18 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %masks, align 4
  %DCCG_AUDIO_DTO0_SOURCE_SEL8 = getelementptr inbounds %struct.dce_audio_mask, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %DCCG_AUDIO_DTO0_SOURCE_SEL8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %DCCG_AUDIO_DTO0_SOURCE_SEL8, align 4
  %DCCG_AUDIO_DTO_SEL = getelementptr inbounds %struct.dce_audio_shift, ptr %15, i32 0, i32 6
  %22 = ptrtoint ptr %DCCG_AUDIO_DTO_SEL to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %DCCG_AUDIO_DTO_SEL, align 2
  %conv = zext i8 %23 to i32
  %DCCG_AUDIO_DTO_SEL11 = getelementptr inbounds %struct.dce_audio_mask, ptr %19, i32 0, i32 6
  %24 = ptrtoint ptr %DCCG_AUDIO_DTO_SEL11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %DCCG_AUDIO_DTO_SEL11, align 4
  %call12 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %9, i32 noundef %13, i32 noundef 2, i8 noundef zeroext %17, i32 noundef %21, i32 noundef %sub, i32 noundef %conv, i32 noundef %25, i32 noundef 0) #6
  %26 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx, align 4
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %DCCG_AUDIO_DTO0_MODULE = getelementptr inbounds %struct.dce_audio_registers, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %DCCG_AUDIO_DTO0_MODULE to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %DCCG_AUDIO_DTO0_MODULE, align 4
  %32 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %shifts, align 4
  %DCCG_AUDIO_DTO0_MODULE17 = getelementptr inbounds %struct.dce_audio_shift, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %DCCG_AUDIO_DTO0_MODULE17 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %DCCG_AUDIO_DTO0_MODULE17, align 1
  %36 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %masks, align 4
  %DCCG_AUDIO_DTO0_MODULE19 = getelementptr inbounds %struct.dce_audio_mask, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %DCCG_AUDIO_DTO0_MODULE19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %DCCG_AUDIO_DTO0_MODULE19, align 4
  %call21 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %27, i32 noundef %31, i32 noundef 1, i8 noundef zeroext %35, i32 noundef %39, i32 noundef %1) #6
  %40 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctx, align 4
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %DCCG_AUDIO_DTO0_PHASE = getelementptr inbounds %struct.dce_audio_registers, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %DCCG_AUDIO_DTO0_PHASE to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %DCCG_AUDIO_DTO0_PHASE, align 4
  %46 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %shifts, align 4
  %DCCG_AUDIO_DTO0_PHASE26 = getelementptr inbounds %struct.dce_audio_shift, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %DCCG_AUDIO_DTO0_PHASE26 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %DCCG_AUDIO_DTO0_PHASE26, align 4
  %50 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %masks, align 4
  %DCCG_AUDIO_DTO0_PHASE28 = getelementptr inbounds %struct.dce_audio_mask, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %DCCG_AUDIO_DTO0_PHASE28 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %DCCG_AUDIO_DTO0_PHASE28, align 4
  %call30 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %41, i32 noundef %45, i32 noundef 1, i8 noundef zeroext %49, i32 noundef %53, i32 noundef 240000) #6
  br label %if.end67

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %pll_info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pll_info, align 4
  %mul.i = mul i32 %55, 10
  %ctx33 = getelementptr inbounds %struct.audio, ptr %audio, i32 0, i32 1
  %56 = ptrtoint ptr %ctx33 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctx33, align 4
  %regs34 = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 1
  %58 = ptrtoint ptr %regs34 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs34, align 4
  %DCCG_AUDIO_DTO_SOURCE35 = getelementptr inbounds %struct.dce_audio_registers, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %DCCG_AUDIO_DTO_SOURCE35 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %DCCG_AUDIO_DTO_SOURCE35, align 4
  %shifts36 = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 2
  %62 = ptrtoint ptr %shifts36 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %shifts36, align 4
  %DCCG_AUDIO_DTO_SEL37 = getelementptr inbounds %struct.dce_audio_shift, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %DCCG_AUDIO_DTO_SEL37 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %DCCG_AUDIO_DTO_SEL37, align 2
  %masks38 = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 3
  %66 = ptrtoint ptr %masks38 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %masks38, align 4
  %DCCG_AUDIO_DTO_SEL39 = getelementptr inbounds %struct.dce_audio_mask, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %DCCG_AUDIO_DTO_SEL39 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %DCCG_AUDIO_DTO_SEL39, align 4
  %call40 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %57, i32 noundef %61, i32 noundef 1, i8 noundef zeroext %65, i32 noundef %69, i32 noundef 1) #6
  %70 = ptrtoint ptr %ctx33 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctx33, align 4
  %72 = ptrtoint ptr %regs34 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs34, align 4
  %DCCG_AUDIO_DTO1_MODULE = getelementptr inbounds %struct.dce_audio_registers, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %DCCG_AUDIO_DTO1_MODULE to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %DCCG_AUDIO_DTO1_MODULE, align 4
  %76 = ptrtoint ptr %shifts36 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %shifts36, align 4
  %DCCG_AUDIO_DTO1_MODULE45 = getelementptr inbounds %struct.dce_audio_shift, ptr %77, i32 0, i32 9
  %78 = ptrtoint ptr %DCCG_AUDIO_DTO1_MODULE45 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %DCCG_AUDIO_DTO1_MODULE45, align 1
  %80 = ptrtoint ptr %masks38 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %masks38, align 4
  %DCCG_AUDIO_DTO1_MODULE47 = getelementptr inbounds %struct.dce_audio_mask, ptr %81, i32 0, i32 9
  %82 = ptrtoint ptr %DCCG_AUDIO_DTO1_MODULE47 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %DCCG_AUDIO_DTO1_MODULE47, align 4
  %call49 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %71, i32 noundef %75, i32 noundef 1, i8 noundef zeroext %79, i32 noundef %83, i32 noundef %mul.i) #6
  %84 = ptrtoint ptr %ctx33 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ctx33, align 4
  %86 = ptrtoint ptr %regs34 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs34, align 4
  %DCCG_AUDIO_DTO1_PHASE = getelementptr inbounds %struct.dce_audio_registers, ptr %87, i32 0, i32 9
  %88 = ptrtoint ptr %DCCG_AUDIO_DTO1_PHASE to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %DCCG_AUDIO_DTO1_PHASE, align 4
  %90 = ptrtoint ptr %shifts36 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %shifts36, align 4
  %DCCG_AUDIO_DTO1_PHASE54 = getelementptr inbounds %struct.dce_audio_shift, ptr %91, i32 0, i32 10
  %92 = ptrtoint ptr %DCCG_AUDIO_DTO1_PHASE54 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %DCCG_AUDIO_DTO1_PHASE54, align 2
  %94 = ptrtoint ptr %masks38 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %masks38, align 4
  %DCCG_AUDIO_DTO1_PHASE56 = getelementptr inbounds %struct.dce_audio_mask, ptr %95, i32 0, i32 10
  %96 = ptrtoint ptr %DCCG_AUDIO_DTO1_PHASE56 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %DCCG_AUDIO_DTO1_PHASE56, align 4
  %call58 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %85, i32 noundef %89, i32 noundef 1, i8 noundef zeroext %93, i32 noundef %97, i32 noundef 240000) #6
  %98 = ptrtoint ptr %ctx33 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ctx33, align 4
  %100 = ptrtoint ptr %regs34 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs34, align 4
  %DCCG_AUDIO_DTO_SOURCE62 = getelementptr inbounds %struct.dce_audio_registers, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %DCCG_AUDIO_DTO_SOURCE62 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %DCCG_AUDIO_DTO_SOURCE62, align 4
  %104 = ptrtoint ptr %shifts36 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %shifts36, align 4
  %DCCG_AUDIO_DTO2_USE_512FBR_DTO = getelementptr inbounds %struct.dce_audio_shift, ptr %105, i32 0, i32 11
  %106 = ptrtoint ptr %DCCG_AUDIO_DTO2_USE_512FBR_DTO to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %DCCG_AUDIO_DTO2_USE_512FBR_DTO, align 1
  %108 = ptrtoint ptr %masks38 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %masks38, align 4
  %DCCG_AUDIO_DTO2_USE_512FBR_DTO65 = getelementptr inbounds %struct.dce_audio_mask, ptr %109, i32 0, i32 11
  %110 = ptrtoint ptr %DCCG_AUDIO_DTO2_USE_512FBR_DTO65 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %DCCG_AUDIO_DTO2_USE_512FBR_DTO65, align 4
  %call66 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %99, i32 noundef %103, i32 noundef 1, i8 noundef zeroext %107, i32 noundef %111, i32 noundef 1) #6
  br label %if.end67

if.end67:                                         ; preds = %if.else, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_update_ex(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce_aud_hw_init(ptr nocapture noundef readonly %audio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %inst = getelementptr inbounds %struct.audio, ptr %audio, i32 0, i32 2
  %0 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctx.i = getelementptr inbounds %struct.audio, ptr %audio, i32 0, i32 1
  %2 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx.i, align 4
  %regs.i = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %shifts.i = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 2
  %8 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shifts.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %masks.i = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 3
  %12 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %masks.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %call.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %3, i32 noundef %7, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %11, i32 noundef %15, i32 noundef 84) #6
  %16 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx.i, align 4
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i = getelementptr inbounds %struct.dce_audio_registers, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i, align 4
  %call5.i = tail call i32 @dm_read_reg_func(ptr noundef %17, i32 noundef %21, ptr noundef nonnull @__func__.read_indirect_azalia_reg) #6
  %and.i = and i32 %call5.i, -2
  %or.i = or i32 %call5.i, 1
  %22 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx.i, align 4
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %shifts.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4
  %32 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %masks.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %call.i36 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %23, i32 noundef %27, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %31, i32 noundef %35, i32 noundef 84) #6
  %36 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx.i, align 4
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i37 = getelementptr inbounds %struct.dce_audio_registers, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i37, align 4
  %42 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %shifts.i, align 4
  %AZALIA_ENDPOINT_REG_DATA.i = getelementptr inbounds %struct.dce_audio_shift, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %AZALIA_ENDPOINT_REG_DATA.i, align 1
  %46 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %masks.i, align 4
  %AZALIA_ENDPOINT_REG_DATA7.i = getelementptr inbounds %struct.dce_audio_mask, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA7.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %AZALIA_ENDPOINT_REG_DATA7.i, align 4
  %call8.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %37, i32 noundef %41, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %45, i32 noundef %49, i32 noundef %or.i) #6
  %50 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctx.i, align 4
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_FUNCTION_PARAMETER_SUPPORTED_SIZE_RATES = getelementptr inbounds %struct.dce_audio_registers, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %AZALIA_F0_CODEC_FUNCTION_PARAMETER_SUPPORTED_SIZE_RATES to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %AZALIA_F0_CODEC_FUNCTION_PARAMETER_SUPPORTED_SIZE_RATES, align 4
  %56 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %shifts.i, align 4
  %AUDIO_RATE_CAPABILITIES = getelementptr inbounds %struct.dce_audio_shift, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %AUDIO_RATE_CAPABILITIES to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %AUDIO_RATE_CAPABILITIES, align 2
  %60 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %masks.i, align 4
  %AUDIO_RATE_CAPABILITIES2 = getelementptr inbounds %struct.dce_audio_mask, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %AUDIO_RATE_CAPABILITIES2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %AUDIO_RATE_CAPABILITIES2, align 4
  %call3 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %51, i32 noundef %55, i32 noundef 1, i8 noundef zeroext %59, i32 noundef %63, i32 noundef 112) #6
  %64 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctx.i, align 4
  %66 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_FUNCTION_PARAMETER_POWER_STATES = getelementptr inbounds %struct.dce_audio_registers, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %AZALIA_F0_CODEC_FUNCTION_PARAMETER_POWER_STATES to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %AZALIA_F0_CODEC_FUNCTION_PARAMETER_POWER_STATES, align 4
  %70 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %shifts.i, align 4
  %CLKSTOP = getelementptr inbounds %struct.dce_audio_shift, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %CLKSTOP to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %CLKSTOP, align 1
  %74 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %masks.i, align 4
  %CLKSTOP9 = getelementptr inbounds %struct.dce_audio_mask, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %CLKSTOP9 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %CLKSTOP9, align 4
  %EPSS = getelementptr inbounds %struct.dce_audio_shift, ptr %71, i32 0, i32 4
  %78 = ptrtoint ptr %EPSS to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %EPSS, align 4
  %conv = zext i8 %79 to i32
  %EPSS12 = getelementptr inbounds %struct.dce_audio_mask, ptr %75, i32 0, i32 4
  %80 = ptrtoint ptr %EPSS12 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %EPSS12, align 4
  %call13 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %65, i32 noundef %69, i32 noundef 2, i8 noundef zeroext %73, i32 noundef %77, i32 noundef 1, i32 noundef %conv, i32 noundef %81, i32 noundef 1) #6
  %82 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ctx.i, align 4
  %84 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %88 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %shifts.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %89, align 4
  %92 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %masks.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 4
  %call.i42 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %83, i32 noundef %87, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %91, i32 noundef %95, i32 noundef 84) #6
  %96 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ctx.i, align 4
  %98 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i43 = getelementptr inbounds %struct.dce_audio_registers, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i43 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i43, align 4
  %102 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %shifts.i, align 4
  %AZALIA_ENDPOINT_REG_DATA.i44 = getelementptr inbounds %struct.dce_audio_shift, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA.i44 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %AZALIA_ENDPOINT_REG_DATA.i44, align 1
  %106 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %masks.i, align 4
  %AZALIA_ENDPOINT_REG_DATA7.i45 = getelementptr inbounds %struct.dce_audio_mask, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %AZALIA_ENDPOINT_REG_DATA7.i45 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %AZALIA_ENDPOINT_REG_DATA7.i45, align 4
  %call8.i46 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %97, i32 noundef %101, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %105, i32 noundef %109, i32 noundef %and.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce_aud_destroy(ptr nocapture noundef %audio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %audio, align 4
  tail call void @kfree(ptr noundef %1) #6
  %2 = ptrtoint ptr %audio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %audio, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @dce_audio_create(ptr noundef %ctx, i32 noundef %inst, ptr noundef %reg, ptr noundef %shifts, ptr noundef %masks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end, label %if.end28

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1049, i32 noundef 9, ptr noundef null) #6
  tail call void @kgdb_breakpoint() #6
  br label %cleanup

if.end28:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctx29 = getelementptr inbounds %struct.audio, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %ctx29 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctx, ptr %ctx29, align 4
  %inst31 = getelementptr inbounds %struct.audio, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %inst31 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inst, ptr %inst31, align 8
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @funcs, ptr %call7.i.i, align 8
  %regs = getelementptr inbounds %struct.dce_audio, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %reg, ptr %regs, align 8
  %shifts33 = getelementptr inbounds %struct.dce_audio, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %shifts33 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %shifts, ptr %shifts33, align 4
  %masks34 = getelementptr inbounds %struct.dce_audio, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %masks34 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %masks, ptr %masks34, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @dce60_audio_create(ptr noundef %ctx, i32 noundef %inst, ptr noundef %reg, ptr noundef %shifts, ptr noundef %masks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end, label %if.end28

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1075, i32 noundef 9, ptr noundef null) #6
  tail call void @kgdb_breakpoint() #6
  br label %cleanup

if.end28:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctx29 = getelementptr inbounds %struct.audio, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %ctx29 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctx, ptr %ctx29, align 4
  %inst31 = getelementptr inbounds %struct.audio, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %inst31 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inst, ptr %inst31, align 8
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dce60_funcs, ptr %call7.i.i, align 8
  %regs = getelementptr inbounds %struct.dce_audio, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %reg, ptr %regs, align 8
  %shifts33 = getelementptr inbounds %struct.dce_audio, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %shifts33 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %shifts, ptr %shifts33, align 4
  %masks34 = getelementptr inbounds %struct.dce_audio, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %masks34 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %masks, ptr %masks34, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_set_ex(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce_aud_endpoint_valid(ptr nocapture noundef readonly %audio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx.i = getelementptr inbounds %struct.audio, ptr %audio, i32 0, i32 1
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %regs.i = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %shifts.i = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 2
  %6 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shifts.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  %masks.i = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 3
  %10 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %masks.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %call.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %1, i32 noundef %5, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 86) #6
  %14 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx.i, align 4
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %AZALIA_F0_CODEC_ENDPOINT_DATA.i = getelementptr inbounds %struct.dce_audio_registers, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %AZALIA_F0_CODEC_ENDPOINT_DATA.i, align 4
  %call5.i = tail call i32 @dm_read_reg_func(ptr noundef %15, i32 noundef %19, ptr noundef nonnull @__func__.read_indirect_azalia_reg) #6
  %shr.i.mask = and i32 %call5.i, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr.i.mask)
  %cmp = icmp ne i32 %shr.i.mask, 1073741824
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce60_aud_wall_dto_setup(ptr nocapture noundef readonly %audio, i32 noundef %signal, ptr nocapture noundef readonly %crtc_info, ptr nocapture noundef readonly %pll_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %signal)
  %cmp.i = icmp eq i32 %signal, 4
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %calculated_pixel_clock_100Hz = getelementptr inbounds %struct.audio_crtc_info, ptr %crtc_info, i32 0, i32 5
  %0 = ptrtoint ptr %calculated_pixel_clock_100Hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %calculated_pixel_clock_100Hz, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dce60_aud_wall_dto_setup.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dce60_aud_wall_dto_setup, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !41

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %requested_pixel_clock_100Hz = getelementptr inbounds %struct.audio_crtc_info, ptr %crtc_info, i32 0, i32 4
  %2 = ptrtoint ptr %requested_pixel_clock_100Hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requested_pixel_clock_100Hz, align 4
  %4 = ptrtoint ptr %calculated_pixel_clock_100Hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %calculated_pixel_clock_100Hz, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dce60_aud_wall_dto_setup.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %3, i32 noundef %5, i32 noundef %1, i32 noundef 240000) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.then
  %dto_source = getelementptr inbounds %struct.audio_pll_info, ptr %pll_info, i32 0, i32 2
  %6 = ptrtoint ptr %dto_source to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dto_source, align 4
  %sub = add i32 %7, -1
  %ctx = getelementptr inbounds %struct.audio, ptr %audio, i32 0, i32 1
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 1
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %DCCG_AUDIO_DTO_SOURCE = getelementptr inbounds %struct.dce_audio_registers, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %DCCG_AUDIO_DTO_SOURCE to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %DCCG_AUDIO_DTO_SOURCE, align 4
  %shifts = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 2
  %14 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shifts, align 4
  %DCCG_AUDIO_DTO0_SOURCE_SEL = getelementptr inbounds %struct.dce_audio_shift, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %DCCG_AUDIO_DTO0_SOURCE_SEL to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %DCCG_AUDIO_DTO0_SOURCE_SEL, align 1
  %masks = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 3
  %18 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %masks, align 4
  %DCCG_AUDIO_DTO0_SOURCE_SEL8 = getelementptr inbounds %struct.dce_audio_mask, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %DCCG_AUDIO_DTO0_SOURCE_SEL8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %DCCG_AUDIO_DTO0_SOURCE_SEL8, align 4
  %DCCG_AUDIO_DTO_SEL = getelementptr inbounds %struct.dce_audio_shift, ptr %15, i32 0, i32 6
  %22 = ptrtoint ptr %DCCG_AUDIO_DTO_SEL to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %DCCG_AUDIO_DTO_SEL, align 2
  %conv = zext i8 %23 to i32
  %DCCG_AUDIO_DTO_SEL11 = getelementptr inbounds %struct.dce_audio_mask, ptr %19, i32 0, i32 6
  %24 = ptrtoint ptr %DCCG_AUDIO_DTO_SEL11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %DCCG_AUDIO_DTO_SEL11, align 4
  %call12 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %9, i32 noundef %13, i32 noundef 2, i8 noundef zeroext %17, i32 noundef %21, i32 noundef %sub, i32 noundef %conv, i32 noundef %25, i32 noundef 0) #6
  %26 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx, align 4
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %DCCG_AUDIO_DTO0_MODULE = getelementptr inbounds %struct.dce_audio_registers, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %DCCG_AUDIO_DTO0_MODULE to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %DCCG_AUDIO_DTO0_MODULE, align 4
  %32 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %shifts, align 4
  %DCCG_AUDIO_DTO0_MODULE17 = getelementptr inbounds %struct.dce_audio_shift, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %DCCG_AUDIO_DTO0_MODULE17 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %DCCG_AUDIO_DTO0_MODULE17, align 1
  %36 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %masks, align 4
  %DCCG_AUDIO_DTO0_MODULE19 = getelementptr inbounds %struct.dce_audio_mask, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %DCCG_AUDIO_DTO0_MODULE19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %DCCG_AUDIO_DTO0_MODULE19, align 4
  %call21 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %27, i32 noundef %31, i32 noundef 1, i8 noundef zeroext %35, i32 noundef %39, i32 noundef %1) #6
  %40 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctx, align 4
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %DCCG_AUDIO_DTO0_PHASE = getelementptr inbounds %struct.dce_audio_registers, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %DCCG_AUDIO_DTO0_PHASE to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %DCCG_AUDIO_DTO0_PHASE, align 4
  %46 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %shifts, align 4
  %DCCG_AUDIO_DTO0_PHASE26 = getelementptr inbounds %struct.dce_audio_shift, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %DCCG_AUDIO_DTO0_PHASE26 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %DCCG_AUDIO_DTO0_PHASE26, align 4
  %50 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %masks, align 4
  %DCCG_AUDIO_DTO0_PHASE28 = getelementptr inbounds %struct.dce_audio_mask, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %DCCG_AUDIO_DTO0_PHASE28 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %DCCG_AUDIO_DTO0_PHASE28, align 4
  %call30 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %41, i32 noundef %45, i32 noundef 1, i8 noundef zeroext %49, i32 noundef %53, i32 noundef 240000) #6
  br label %if.end59

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %pll_info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pll_info, align 4
  %mul.i = mul i32 %55, 10
  %ctx33 = getelementptr inbounds %struct.audio, ptr %audio, i32 0, i32 1
  %56 = ptrtoint ptr %ctx33 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctx33, align 4
  %regs34 = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 1
  %58 = ptrtoint ptr %regs34 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs34, align 4
  %DCCG_AUDIO_DTO_SOURCE35 = getelementptr inbounds %struct.dce_audio_registers, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %DCCG_AUDIO_DTO_SOURCE35 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %DCCG_AUDIO_DTO_SOURCE35, align 4
  %shifts36 = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 2
  %62 = ptrtoint ptr %shifts36 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %shifts36, align 4
  %DCCG_AUDIO_DTO_SEL37 = getelementptr inbounds %struct.dce_audio_shift, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %DCCG_AUDIO_DTO_SEL37 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %DCCG_AUDIO_DTO_SEL37, align 2
  %masks38 = getelementptr inbounds %struct.dce_audio, ptr %audio, i32 0, i32 3
  %66 = ptrtoint ptr %masks38 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %masks38, align 4
  %DCCG_AUDIO_DTO_SEL39 = getelementptr inbounds %struct.dce_audio_mask, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %DCCG_AUDIO_DTO_SEL39 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %DCCG_AUDIO_DTO_SEL39, align 4
  %call40 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %57, i32 noundef %61, i32 noundef 1, i8 noundef zeroext %65, i32 noundef %69, i32 noundef 1) #6
  %70 = ptrtoint ptr %ctx33 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctx33, align 4
  %72 = ptrtoint ptr %regs34 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs34, align 4
  %DCCG_AUDIO_DTO1_MODULE = getelementptr inbounds %struct.dce_audio_registers, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %DCCG_AUDIO_DTO1_MODULE to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %DCCG_AUDIO_DTO1_MODULE, align 4
  %76 = ptrtoint ptr %shifts36 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %shifts36, align 4
  %DCCG_AUDIO_DTO1_MODULE45 = getelementptr inbounds %struct.dce_audio_shift, ptr %77, i32 0, i32 9
  %78 = ptrtoint ptr %DCCG_AUDIO_DTO1_MODULE45 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %DCCG_AUDIO_DTO1_MODULE45, align 1
  %80 = ptrtoint ptr %masks38 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %masks38, align 4
  %DCCG_AUDIO_DTO1_MODULE47 = getelementptr inbounds %struct.dce_audio_mask, ptr %81, i32 0, i32 9
  %82 = ptrtoint ptr %DCCG_AUDIO_DTO1_MODULE47 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %DCCG_AUDIO_DTO1_MODULE47, align 4
  %call49 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %71, i32 noundef %75, i32 noundef 1, i8 noundef zeroext %79, i32 noundef %83, i32 noundef %mul.i) #6
  %84 = ptrtoint ptr %ctx33 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ctx33, align 4
  %86 = ptrtoint ptr %regs34 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs34, align 4
  %DCCG_AUDIO_DTO1_PHASE = getelementptr inbounds %struct.dce_audio_registers, ptr %87, i32 0, i32 9
  %88 = ptrtoint ptr %DCCG_AUDIO_DTO1_PHASE to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %DCCG_AUDIO_DTO1_PHASE, align 4
  %90 = ptrtoint ptr %shifts36 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %shifts36, align 4
  %DCCG_AUDIO_DTO1_PHASE54 = getelementptr inbounds %struct.dce_audio_shift, ptr %91, i32 0, i32 10
  %92 = ptrtoint ptr %DCCG_AUDIO_DTO1_PHASE54 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %DCCG_AUDIO_DTO1_PHASE54, align 2
  %94 = ptrtoint ptr %masks38 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %masks38, align 4
  %DCCG_AUDIO_DTO1_PHASE56 = getelementptr inbounds %struct.dce_audio_mask, ptr %95, i32 0, i32 10
  %96 = ptrtoint ptr %DCCG_AUDIO_DTO1_PHASE56 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %DCCG_AUDIO_DTO1_PHASE56, align 4
  %call58 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %85, i32 noundef %89, i32 noundef 1, i8 noundef zeroext %93, i32 noundef %97, i32 noundef 240000) #6
  br label %if.end59

if.end59:                                         ; preds = %if.else, %do.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !19, !20, !22, !24, !25, !27, !29, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_audio.c", i32 366, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @dce_aud_az_enable.__UNIQUE_ID_ddebug302, !1, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_audio.c", i32 391, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dce_aud_az_disable.__UNIQUE_ID_ddebug303, !7, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_audio.c", i32 483, i32 3}
!12 = !{ptr @__func__.dce_aud_az_configure, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_audio.c", i32 614, i32 2}
!15 = !{ptr @dce_aud_az_configure.__UNIQUE_ID_ddebug304, !14, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_audio.c", i32 799, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @dce_aud_wall_dto_setup.__UNIQUE_ID_ddebug305, !17, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!20 = !{ptr @__func__.read_indirect_azalia_reg, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_audio.c", i32 83, i32 10}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dm_services.h", i32 107, i32 2}
!24 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @funcs, !26, !"funcs", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_audio.c", i32 1008, i32 33}
!27 = !{ptr @dce60_funcs, !28, !"dce60_funcs", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_audio.c", i32 1019, i32 33}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_audio.c", i32 891, i32 3}
!31 = !{ptr @dce60_aud_wall_dto_setup.__UNIQUE_ID_ddebug306, !30, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 2148228834, i64 2148228839, i64 2148228852, i64 2148228896, i64 2148228930, i64 2148228951}
!42 = !{!"auto-init"}
!43 = !{i8 0, i8 2}
