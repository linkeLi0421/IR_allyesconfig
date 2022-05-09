; ModuleID = '/llk/IR_all_yes/sound/drivers/opl3/opl3_drums.c_pt.bc'
source_filename = "../sound/drivers/opl3/opl3_drums.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_opl3_drum_voice = type { i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.snd_opl3 = type { i32, i32, ptr, ptr, i16, ptr, i16, i32, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, %struct.spinlock, ptr, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, [32 x ptr], [18 x %struct.snd_opl3_voice], i32, i16, i8, %struct.spinlock, %struct.timer_list, i32, %struct.spinlock }
%struct.snd_opl3_voice = type { i32, i32, i8, i32, i32, i8, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.snd_midi_channel = type { ptr, i32, i32, i32, i8, i8, i8, i8, i8, i16, [128 x i8], [128 x i8], i16, i16, i16 }

@bass_op1 = internal constant { %struct.snd_opl3_drum_voice, [16 x i8] } { %struct.snd_opl3_drum_voice { i32 6, i32 1, i8 0, i8 3, i8 -10, i8 87, i8 48, i8 0 }, [16 x i8] zeroinitializer }, align 32
@hihat = internal constant { %struct.snd_opl3_drum_voice, [16 x i8] } { %struct.snd_opl3_drum_voice { i32 7, i32 0, i8 0, i8 3, i8 -16, i8 6, i8 32, i8 0 }, [16 x i8] zeroinitializer }, align 32
@snare = internal constant { %struct.snd_opl3_drum_voice, [16 x i8] } { %struct.snd_opl3_drum_voice { i32 7, i32 1, i8 0, i8 3, i8 -16, i8 7, i8 32, i8 2 }, [16 x i8] zeroinitializer }, align 32
@tomtom = internal constant { %struct.snd_opl3_drum_voice, [16 x i8] } { %struct.snd_opl3_drum_voice { i32 8, i32 0, i8 2, i8 3, i8 -16, i8 6, i8 16, i8 0 }, [16 x i8] zeroinitializer }, align 32
@cymbal = internal constant { %struct.snd_opl3_drum_voice, [16 x i8] } { %struct.snd_opl3_drum_voice { i32 8, i32 1, i8 4, i8 3, i8 -16, i8 6, i8 16, i8 0 }, [16 x i8] zeroinitializer }, align 32
@snd_opl3_drum_table = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\10\10\01\08\01\08\10\01\10\01\04\01\04\04\02\04\02\02\02\02\02\01\02\04\02\04\04\01\04\04\04\04\04\04\01\01\01\01\04\04\04\04\04\04\04\02\02", [49 x i8] zeroinitializer }, align 32
@snd_opl3_regmap = external dso_local local_unnamed_addr global [9 x [4 x i8]], align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 4, i64 8, i64 16]
@___asan_gen_.1 = private unnamed_addr constant [9 x i8] c"bass_op1\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 51, i32 41 }
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"hihat\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 54, i32 41 }
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"snare\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 56, i32 41 }
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"tomtom\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 59, i32 41 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"cymbal\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 62, i32 41 }
@___asan_gen_.16 = private unnamed_addr constant [20 x i8] c"snd_opl3_drum_table\00", align 1
@___asan_gen_.17 = private constant [35 x i8] c"../sound/drivers/opl3/opl3_drums.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 10, i32 19 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @bass_op1, ptr @hihat, ptr @snare, ptr @tomtom, ptr @cymbal, ptr @snd_opl3_drum_table], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bass_op1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hihat to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snare to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomtom to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cymbal to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_opl3_drum_table to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_opl3_load_drums(ptr noundef %opl3) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x [4 x i8]], ptr @snd_opl3_regmap, i32 0, i32 6, i32 0) to i32))
  %0 = load i8, ptr getelementptr inbounds ([9 x [4 x i8]], ptr @snd_opl3_regmap, i32 0, i32 6, i32 0), align 1
  %conv3.i = zext i8 %0 to i16
  %conv4.i = add nuw nsw i16 %conv3.i, 32
  %command.i = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 5
  %1 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %command.i, align 4
  tail call void %2(ptr noundef %opl3, i16 noundef zeroext %conv4.i, i8 noundef zeroext 0) #3
  %conv8.i = add nuw nsw i16 %conv3.i, 64
  %3 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %command.i, align 4
  tail call void %4(ptr noundef %opl3, i16 noundef zeroext %conv8.i, i8 noundef zeroext 50) #3
  %conv13.i = add nuw nsw i16 %conv3.i, 96
  %5 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %command.i, align 4
  tail call void %6(ptr noundef %opl3, i16 noundef zeroext %conv13.i, i8 noundef zeroext -8) #3
  %conv18.i = add nuw nsw i16 %conv3.i, 128
  %7 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %command.i, align 4
  tail call void %8(ptr noundef %opl3, i16 noundef zeroext %conv18.i, i8 noundef zeroext 102) #3
  %9 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %command.i, align 4
  tail call void %10(ptr noundef %opl3, i16 noundef zeroext 198, i8 noundef zeroext 48) #3
  %add26.i = add nuw nsw i16 %conv3.i, 224
  %11 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %command.i, align 4
  tail call void %12(ptr noundef %opl3, i16 noundef zeroext %add26.i, i8 noundef zeroext 0) #3
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x [4 x i8]], ptr @snd_opl3_regmap, i32 0, i32 6, i32 1) to i32))
  %13 = load i8, ptr getelementptr inbounds ([9 x [4 x i8]], ptr @snd_opl3_regmap, i32 0, i32 6, i32 1), align 1
  %conv3.i9 = zext i8 %13 to i16
  %conv4.i10 = add nuw nsw i16 %conv3.i9, 32
  %14 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %command.i, align 4
  tail call void %15(ptr noundef %opl3, i16 noundef zeroext %conv4.i10, i8 noundef zeroext 0) #3
  %conv8.i12 = add nuw nsw i16 %conv3.i9, 64
  %16 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %command.i, align 4
  tail call void %17(ptr noundef %opl3, i16 noundef zeroext %conv8.i12, i8 noundef zeroext 3) #3
  %conv13.i13 = add nuw nsw i16 %conv3.i9, 96
  %18 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %command.i, align 4
  tail call void %19(ptr noundef %opl3, i16 noundef zeroext %conv13.i13, i8 noundef zeroext -10) #3
  %conv18.i14 = add nuw nsw i16 %conv3.i9, 128
  %20 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %command.i, align 4
  tail call void %21(ptr noundef %opl3, i16 noundef zeroext %conv18.i14, i8 noundef zeroext 87) #3
  %22 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %command.i, align 4
  tail call void %23(ptr noundef %opl3, i16 noundef zeroext 198, i8 noundef zeroext 48) #3
  %add26.i15 = add nuw nsw i16 %conv3.i9, 224
  %24 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %command.i, align 4
  tail call void %25(ptr noundef %opl3, i16 noundef zeroext %add26.i15, i8 noundef zeroext 0) #3
  %26 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %command.i, align 4
  tail call void %27(ptr noundef %opl3, i16 noundef zeroext 166, i8 noundef zeroext -112) #3
  %28 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %command.i, align 4
  tail call void %29(ptr noundef %opl3, i16 noundef zeroext 182, i8 noundef zeroext 9) #3
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x [4 x i8]], ptr @snd_opl3_regmap, i32 0, i32 7, i32 0) to i32))
  %30 = load i8, ptr getelementptr inbounds ([9 x [4 x i8]], ptr @snd_opl3_regmap, i32 0, i32 7, i32 0), align 1
  %conv3.i17 = zext i8 %30 to i16
  %conv4.i18 = add nuw nsw i16 %conv3.i17, 32
  %31 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %command.i, align 4
  tail call void %32(ptr noundef %opl3, i16 noundef zeroext %conv4.i18, i8 noundef zeroext 0) #3
  %conv8.i20 = add nuw nsw i16 %conv3.i17, 64
  %33 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %command.i, align 4
  tail call void %34(ptr noundef %opl3, i16 noundef zeroext %conv8.i20, i8 noundef zeroext 3) #3
  %conv13.i21 = add nuw nsw i16 %conv3.i17, 96
  %35 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %command.i, align 4
  tail call void %36(ptr noundef %opl3, i16 noundef zeroext %conv13.i21, i8 noundef zeroext -16) #3
  %conv18.i22 = add nuw nsw i16 %conv3.i17, 128
  %37 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %command.i, align 4
  tail call void %38(ptr noundef %opl3, i16 noundef zeroext %conv18.i22, i8 noundef zeroext 6) #3
  %39 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %command.i, align 4
  tail call void %40(ptr noundef %opl3, i16 noundef zeroext 199, i8 noundef zeroext 32) #3
  %add26.i23 = add nuw nsw i16 %conv3.i17, 224
  %41 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %command.i, align 4
  tail call void %42(ptr noundef %opl3, i16 noundef zeroext %add26.i23, i8 noundef zeroext 0) #3
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x [4 x i8]], ptr @snd_opl3_regmap, i32 0, i32 7, i32 1) to i32))
  %43 = load i8, ptr getelementptr inbounds ([9 x [4 x i8]], ptr @snd_opl3_regmap, i32 0, i32 7, i32 1), align 1
  %conv3.i24 = zext i8 %43 to i16
  %conv4.i25 = add nuw nsw i16 %conv3.i24, 32
  %44 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %command.i, align 4
  tail call void %45(ptr noundef %opl3, i16 noundef zeroext %conv4.i25, i8 noundef zeroext 0) #3
  %conv8.i27 = add nuw nsw i16 %conv3.i24, 64
  %46 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %command.i, align 4
  tail call void %47(ptr noundef %opl3, i16 noundef zeroext %conv8.i27, i8 noundef zeroext 3) #3
  %conv13.i28 = add nuw nsw i16 %conv3.i24, 96
  %48 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %command.i, align 4
  tail call void %49(ptr noundef %opl3, i16 noundef zeroext %conv13.i28, i8 noundef zeroext -16) #3
  %conv18.i29 = add nuw nsw i16 %conv3.i24, 128
  %50 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %command.i, align 4
  tail call void %51(ptr noundef %opl3, i16 noundef zeroext %conv18.i29, i8 noundef zeroext 7) #3
  %52 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %command.i, align 4
  tail call void %53(ptr noundef %opl3, i16 noundef zeroext 199, i8 noundef zeroext 32) #3
  %add26.i30 = add nuw nsw i16 %conv3.i24, 224
  %54 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %command.i, align 4
  tail call void %55(ptr noundef %opl3, i16 noundef zeroext %add26.i30, i8 noundef zeroext 2) #3
  %56 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %command.i, align 4
  tail call void %57(ptr noundef %opl3, i16 noundef zeroext 167, i8 noundef zeroext -12) #3
  %58 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %command.i, align 4
  tail call void %59(ptr noundef %opl3, i16 noundef zeroext 183, i8 noundef zeroext 13) #3
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x [4 x i8]], ptr @snd_opl3_regmap, i32 0, i32 8, i32 0) to i32))
  %60 = load i8, ptr getelementptr inbounds ([9 x [4 x i8]], ptr @snd_opl3_regmap, i32 0, i32 8, i32 0), align 1
  %conv3.i32 = zext i8 %60 to i16
  %conv4.i33 = add nuw nsw i16 %conv3.i32, 32
  %61 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %command.i, align 4
  tail call void %62(ptr noundef %opl3, i16 noundef zeroext %conv4.i33, i8 noundef zeroext 2) #3
  %conv8.i35 = add nuw nsw i16 %conv3.i32, 64
  %63 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %command.i, align 4
  tail call void %64(ptr noundef %opl3, i16 noundef zeroext %conv8.i35, i8 noundef zeroext 3) #3
  %conv13.i36 = add nuw nsw i16 %conv3.i32, 96
  %65 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %command.i, align 4
  tail call void %66(ptr noundef %opl3, i16 noundef zeroext %conv13.i36, i8 noundef zeroext -16) #3
  %conv18.i37 = add nuw nsw i16 %conv3.i32, 128
  %67 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %command.i, align 4
  tail call void %68(ptr noundef %opl3, i16 noundef zeroext %conv18.i37, i8 noundef zeroext 6) #3
  %69 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %command.i, align 4
  tail call void %70(ptr noundef %opl3, i16 noundef zeroext 200, i8 noundef zeroext 16) #3
  %add26.i38 = add nuw nsw i16 %conv3.i32, 224
  %71 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %command.i, align 4
  tail call void %72(ptr noundef %opl3, i16 noundef zeroext %add26.i38, i8 noundef zeroext 0) #3
  %73 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %command.i, align 4
  tail call void %74(ptr noundef %opl3, i16 noundef zeroext 168, i8 noundef zeroext -12) #3
  %75 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %command.i, align 4
  tail call void %76(ptr noundef %opl3, i16 noundef zeroext 184, i8 noundef zeroext 9) #3
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x [4 x i8]], ptr @snd_opl3_regmap, i32 0, i32 8, i32 1) to i32))
  %77 = load i8, ptr getelementptr inbounds ([9 x [4 x i8]], ptr @snd_opl3_regmap, i32 0, i32 8, i32 1), align 1
  %conv3.i40 = zext i8 %77 to i16
  %conv4.i41 = add nuw nsw i16 %conv3.i40, 32
  %78 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %command.i, align 4
  tail call void %79(ptr noundef %opl3, i16 noundef zeroext %conv4.i41, i8 noundef zeroext 4) #3
  %conv8.i43 = add nuw nsw i16 %conv3.i40, 64
  %80 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %command.i, align 4
  tail call void %81(ptr noundef %opl3, i16 noundef zeroext %conv8.i43, i8 noundef zeroext 3) #3
  %conv13.i44 = add nuw nsw i16 %conv3.i40, 96
  %82 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %command.i, align 4
  tail call void %83(ptr noundef %opl3, i16 noundef zeroext %conv13.i44, i8 noundef zeroext -16) #3
  %conv18.i45 = add nuw nsw i16 %conv3.i40, 128
  %84 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %command.i, align 4
  tail call void %85(ptr noundef %opl3, i16 noundef zeroext %conv18.i45, i8 noundef zeroext 6) #3
  %86 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %command.i, align 4
  tail call void %87(ptr noundef %opl3, i16 noundef zeroext 200, i8 noundef zeroext 16) #3
  %add26.i46 = add nuw nsw i16 %conv3.i40, 224
  %88 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %command.i, align 4
  tail call void %89(ptr noundef %opl3, i16 noundef zeroext %add26.i46, i8 noundef zeroext 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_opl3_drum_switch(ptr noundef %opl3, i32 noundef %note, i32 noundef %vel, i32 noundef %on_off, ptr noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  %reg_val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %drum_reg = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 29
  %0 = ptrtoint ptr %drum_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %drum_reg, align 2
  %2 = and i8 %1, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %3 = add i32 %note, -82
  call void @__sanitizer_cov_trace_const_cmp4(i32 -47, i32 %3)
  %4 = icmp ult i32 %3, -47
  %or.cond = or i1 %4, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %entry
  %sub = add nsw i32 %note, -35
  %arrayidx = getelementptr [47 x i8], ptr @snd_opl3_drum_table, i32 0, i32 %sub
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on_off)
  %tobool6.not = icmp eq i32 %on_off, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %sw.default [
    i8 16, label %if.then7.sw.epilog_crit_edge
    i8 1, label %sw.bb9
    i8 8, label %sw.bb10
    i8 4, label %sw.bb11
    i8 2, label %sw.bb12
  ]

if.then7.sw.epilog_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.default:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %if.then7.sw.epilog_crit_edge
  %drum_voice.0 = phi ptr [ @tomtom, %sw.default ], [ @cymbal, %sw.bb12 ], [ @tomtom, %sw.bb11 ], [ @snare, %sw.bb10 ], [ @hihat, %sw.bb9 ], [ @bass_op1, %if.then7.sw.epilog_crit_edge ]
  %8 = ptrtoint ptr %drum_voice.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %drum_voice.0, align 4
  %op.i = getelementptr inbounds %struct.snd_opl3_drum_voice, ptr %drum_voice.0, i32 0, i32 1
  %10 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %op.i, align 4
  %arrayidx1.i = getelementptr [9 x [4 x i8]], ptr @snd_opl3_regmap, i32 0, i32 %9, i32 %11
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx1.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_val.i) #3
  %ksl_level.i = getelementptr inbounds %struct.snd_opl3_drum_voice, ptr %drum_voice.0, i32 0, i32 3
  %14 = ptrtoint ptr %ksl_level.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ksl_level.i, align 1
  %16 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %reg_val.i, align 1
  call void @snd_opl3_calc_volume(ptr noundef nonnull %reg_val.i, i32 noundef %vel, ptr noundef %chan) #3
  %conv3.i = zext i8 %13 to i16
  %add.i = add nuw nsw i16 %conv3.i, 64
  %command.i = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 5
  %17 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %command.i, align 4
  %19 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %reg_val.i, align 1
  call void %18(ptr noundef %opl3, i16 noundef zeroext %add.i, i8 noundef zeroext %20) #3
  %feedback_connection.i = getelementptr inbounds %struct.snd_opl3_drum_voice, ptr %drum_voice.0, i32 0, i32 6
  %21 = ptrtoint ptr %feedback_connection.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %feedback_connection.i, align 4
  %23 = or i8 %22, 48
  %24 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %reg_val.i, align 1
  %arrayidx8.i = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 10
  %25 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx8.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %26)
  %cmp.i = icmp ult i8 %26, 43
  br i1 %cmp.i, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %27 = and i8 %23, -33
  %28 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %reg_val.i, align 1
  br label %snd_opl3_drum_vol_set.exit

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %26)
  %cmp16.i = icmp ugt i8 %26, 85
  br i1 %cmp16.i, label %if.then18.i, label %if.end.i.snd_opl3_drum_vol_set.exit_crit_edge

if.end.i.snd_opl3_drum_vol_set.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_opl3_drum_vol_set.exit

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %29 = and i8 %23, -17
  %30 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %reg_val.i, align 1
  br label %snd_opl3_drum_vol_set.exit

snd_opl3_drum_vol_set.exit:                       ; preds = %if.then18.i, %if.end.i.snd_opl3_drum_vol_set.exit_crit_edge, %if.end.thread.i
  %31 = trunc i32 %9 to i16
  %32 = and i16 %31, 255
  %conv26.i = add nuw nsw i16 %32, 192
  %33 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %command.i, align 4
  %35 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %reg_val.i, align 1
  call void %34(ptr noundef %opl3, i16 noundef zeroext %conv26.i, i8 noundef zeroext %36) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_val.i) #3
  %37 = ptrtoint ptr %drum_reg to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %drum_reg, align 2
  %or35 = or i8 %38, %6
  br label %if.end22

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  %neg = xor i8 %6, -1
  %and20 = and i8 %1, %neg
  br label %if.end22

if.end22:                                         ; preds = %if.else, %snd_opl3_drum_vol_set.exit
  %storemerge = phi i8 [ %and20, %if.else ], [ %or35, %snd_opl3_drum_vol_set.exit ]
  %39 = ptrtoint ptr %drum_reg to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %storemerge, ptr %drum_reg, align 2
  %command = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 5
  %40 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %command, align 4
  call void %41(ptr noundef %opl3, i16 noundef zeroext 189, i8 noundef zeroext %storemerge) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_opl3_calc_volume(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !{null, !1, !"bass_op0", i1 false, i1 false}
!1 = !{!"../sound/drivers/opl3/opl3_drums.c", i32 50, i32 41}
!2 = !{ptr @bass_op1, !3, !"bass_op1", i1 false, i1 false}
!3 = !{!"../sound/drivers/opl3/opl3_drums.c", i32 51, i32 41}
!4 = distinct !{null, !5, !"bass_note", i1 false, i1 false}
!5 = !{!"../sound/drivers/opl3/opl3_drums.c", i32 52, i32 40}
!6 = !{ptr @hihat, !7, !"hihat", i1 false, i1 false}
!7 = !{!"../sound/drivers/opl3/opl3_drums.c", i32 54, i32 41}
!8 = !{ptr @snare, !9, !"snare", i1 false, i1 false}
!9 = !{!"../sound/drivers/opl3/opl3_drums.c", i32 56, i32 41}
!10 = distinct !{null, !11, !"snare_note", i1 false, i1 false}
!11 = !{!"../sound/drivers/opl3/opl3_drums.c", i32 57, i32 40}
!12 = !{ptr @tomtom, !13, !"tomtom", i1 false, i1 false}
!13 = !{!"../sound/drivers/opl3/opl3_drums.c", i32 59, i32 41}
!14 = distinct !{null, !15, !"tomtom_note", i1 false, i1 false}
!15 = !{!"../sound/drivers/opl3/opl3_drums.c", i32 60, i32 40}
!16 = !{ptr @cymbal, !17, !"cymbal", i1 false, i1 false}
!17 = !{!"../sound/drivers/opl3/opl3_drums.c", i32 62, i32 41}
!18 = !{ptr @snd_opl3_drum_table, !19, !"snd_opl3_drum_table", i1 false, i1 false}
!19 = !{!"../sound/drivers/opl3/opl3_drums.c", i32 10, i32 19}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
