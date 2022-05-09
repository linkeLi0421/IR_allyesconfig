; ModuleID = '/llk/IR_all_yes/sound/pci/ice1712/wm8766.c_pt.bc'
source_filename = "../sound/pci/ice1712/wm8766.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_wm8766_ctl = type { ptr, ptr, i32, [16 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_wm8766 = type { ptr, [14 x %struct.snd_wm8766_ctl], i32, %struct.snd_wm8766_ops, [16 x i16] }
%struct.snd_wm8766_ops = type { ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.53, i32 }
%union.anon.53 = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.52, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.list_head = type { ptr, ptr }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.52 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.47, [128 x i8] }
%union.anon.47 = type { %union.anon.49 }
%union.anon.49 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.43, [64 x i8] }
%union.anon.43 = type { %struct.anon.46, [40 x i8] }
%struct.anon.46 = type { i32, i32, [64 x i8], i64, i32 }

@snd_wm8766_default_ctl = internal constant { [14 x %struct.snd_wm8766_ctl], [368 x i8] } { [14 x %struct.snd_wm8766_ctl] [%struct.snd_wm8766_ctl { ptr null, ptr @.str, i32 2, [16 x ptr] zeroinitializer, ptr @wm8766_tlv, i16 0, i16 1, i16 511, i16 511, i16 0, i16 255, i16 3, ptr null, ptr null }, %struct.snd_wm8766_ctl { ptr null, ptr @.str.1, i32 2, [16 x ptr] zeroinitializer, ptr @wm8766_tlv, i16 4, i16 5, i16 511, i16 511, i16 0, i16 255, i16 3, ptr null, ptr null }, %struct.snd_wm8766_ctl { ptr null, ptr @.str.2, i32 2, [16 x ptr] zeroinitializer, ptr @wm8766_tlv, i16 6, i16 7, i16 511, i16 511, i16 0, i16 255, i16 3, ptr null, ptr null }, %struct.snd_wm8766_ctl { ptr null, ptr @.str.3, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 9, i16 0, i16 8, i16 0, i16 0, i16 0, i16 4, ptr null, ptr null }, %struct.snd_wm8766_ctl { ptr null, ptr @.str.4, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 9, i16 0, i16 16, i16 0, i16 0, i16 0, i16 4, ptr null, ptr null }, %struct.snd_wm8766_ctl { ptr null, ptr @.str.5, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 9, i16 0, i16 32, i16 0, i16 0, i16 0, i16 4, ptr null, ptr null }, %struct.snd_wm8766_ctl { ptr null, ptr @.str.6, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 3, i16 0, i16 64, i16 0, i16 0, i16 0, i16 0, ptr null, ptr null }, %struct.snd_wm8766_ctl { ptr null, ptr @.str.7, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 3, i16 0, i16 128, i16 0, i16 0, i16 0, i16 0, ptr null, ptr null }, %struct.snd_wm8766_ctl { ptr null, ptr @.str.8, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 3, i16 0, i16 256, i16 0, i16 0, i16 0, i16 0, ptr null, ptr null }, %struct.snd_wm8766_ctl { ptr null, ptr @.str.9, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 9, i16 0, i16 64, i16 0, i16 0, i16 0, i16 0, ptr null, ptr null }, %struct.snd_wm8766_ctl { ptr null, ptr @.str.10, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 9, i16 0, i16 128, i16 0, i16 0, i16 0, i16 0, ptr null, ptr null }, %struct.snd_wm8766_ctl { ptr null, ptr @.str.11, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 9, i16 0, i16 256, i16 0, i16 0, i16 0, i16 0, ptr null, ptr null }, %struct.snd_wm8766_ctl { ptr null, ptr @.str.12, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 2, i16 0, i16 16, i16 0, i16 0, i16 0, i16 0, ptr null, ptr null }, %struct.snd_wm8766_ctl { ptr null, ptr @.str.13, i32 1, [16 x ptr] zeroinitializer, ptr null, i16 9, i16 0, i16 1, i16 0, i16 0, i16 0, i16 4, ptr null, ptr null }], [368 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Channel 1 Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@wm8766_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12750, i32 65586], [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Channel 2 Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Channel 3 Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Channel 1 Playback Switch\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Channel 2 Playback Switch\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Channel 3 Playback Switch\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Channel 1 Phase Invert Playback Switch\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Channel 2 Phase Invert Playback Switch\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Channel 3 Phase Invert Playback Switch\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Channel 1 Deemphasis Playback Switch\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Channel 2 Deemphasis Playback Switch\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Channel 3 Deemphasis Playback Switch\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Infinite Zero Detect Playback Switch\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Zero Cross Detect Playback Switch\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.14 = private unnamed_addr constant [23 x i8] c"snd_wm8766_default_ctl\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 29, i32 36 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 31, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [11 x i8] c"wm8766_tlv\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 27, i32 14 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 42, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 53, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 64, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 71, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 78, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 85, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 91, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 97, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 103, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 109, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 115, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 121, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [30 x i8] c"../sound/pci/ice1712/wm8766.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 127, i32 11 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @snd_wm8766_default_ctl, ptr @.str, ptr @wm8766_tlv, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_wm8766_default_ctl to i32), i32 1456, i32 1824, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8766_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_wm8766_init(ptr noundef %wm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctl = getelementptr inbounds %struct.snd_wm8766, ptr %wm, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %ctl, ptr @snd_wm8766_default_ctl, i32 1456)
  %ops.i = getelementptr inbounds %struct.snd_wm8766, ptr %wm, i32 0, i32 3
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  tail call void %2(ptr noundef %wm, i16 noundef zeroext 31, i16 noundef zeroext 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 2147480) #5
  %arrayidx.i = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %arrayidx.i, align 2
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  tail call void %6(ptr noundef %wm, i16 noundef zeroext 0, i16 noundef zeroext 0) #5
  %arrayidx.i.1 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 256, ptr %arrayidx.i.1, align 2
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  tail call void %9(ptr noundef %wm, i16 noundef zeroext 1, i16 noundef zeroext 256) #5
  %arrayidx.i.2 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 288, ptr %arrayidx.i.2, align 2
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  tail call void %12(ptr noundef %wm, i16 noundef zeroext 2, i16 noundef zeroext 288) #5
  %arrayidx.i.3 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %arrayidx.i.3, align 2
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  tail call void %15(ptr noundef %wm, i16 noundef zeroext 3, i16 noundef zeroext 0) #5
  %arrayidx.i.4 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 4
  %16 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %arrayidx.i.4, align 2
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  tail call void %18(ptr noundef %wm, i16 noundef zeroext 4, i16 noundef zeroext 0) #5
  %arrayidx.i.5 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 5
  %19 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 256, ptr %arrayidx.i.5, align 2
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  tail call void %21(ptr noundef %wm, i16 noundef zeroext 5, i16 noundef zeroext 256) #5
  %arrayidx.i.6 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 6
  %22 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %arrayidx.i.6, align 2
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  tail call void %24(ptr noundef %wm, i16 noundef zeroext 6, i16 noundef zeroext 0) #5
  %arrayidx.i.7 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 7
  %25 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 256, ptr %arrayidx.i.7, align 2
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  tail call void %27(ptr noundef %wm, i16 noundef zeroext 7, i16 noundef zeroext 256) #5
  %arrayidx.i.8 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 8
  %28 = ptrtoint ptr %arrayidx.i.8 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %arrayidx.i.8, align 2
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i, align 4
  tail call void %30(ptr noundef %wm, i16 noundef zeroext 8, i16 noundef zeroext 0) #5
  %arrayidx.i.9 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 9
  %31 = ptrtoint ptr %arrayidx.i.9 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %arrayidx.i.9, align 2
  %32 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i, align 4
  tail call void %33(ptr noundef %wm, i16 noundef zeroext 9, i16 noundef zeroext 0) #5
  %arrayidx.i.10 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 10
  %34 = ptrtoint ptr %arrayidx.i.10 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 128, ptr %arrayidx.i.10, align 2
  %35 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i, align 4
  tail call void %36(ptr noundef %wm, i16 noundef zeroext 10, i16 noundef zeroext 128) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_wm8766_resume(ptr noundef %wm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.snd_wm8766, ptr %wm, i32 0, i32 3
  %arrayidx = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  tail call void %3(ptr noundef %wm, i16 noundef zeroext 0, i16 noundef zeroext %1) #5
  %arrayidx.1 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.1, align 2
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  tail call void %7(ptr noundef %wm, i16 noundef zeroext 1, i16 noundef zeroext %5) #5
  %arrayidx.2 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.2, align 2
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  tail call void %11(ptr noundef %wm, i16 noundef zeroext 2, i16 noundef zeroext %9) #5
  %arrayidx.3 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.3, align 2
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  tail call void %15(ptr noundef %wm, i16 noundef zeroext 3, i16 noundef zeroext %13) #5
  %arrayidx.4 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.4, align 2
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  tail call void %19(ptr noundef %wm, i16 noundef zeroext 4, i16 noundef zeroext %17) #5
  %arrayidx.5 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 5
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.5, align 2
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  tail call void %23(ptr noundef %wm, i16 noundef zeroext 5, i16 noundef zeroext %21) #5
  %arrayidx.6 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 6
  %24 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.6, align 2
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  tail call void %27(ptr noundef %wm, i16 noundef zeroext 6, i16 noundef zeroext %25) #5
  %arrayidx.7 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 7
  %28 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.7, align 2
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 4
  tail call void %31(ptr noundef %wm, i16 noundef zeroext 7, i16 noundef zeroext %29) #5
  %arrayidx.8 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 8
  %32 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.8, align 2
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i, align 4
  tail call void %35(ptr noundef %wm, i16 noundef zeroext 8, i16 noundef zeroext %33) #5
  %arrayidx.9 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 9
  %36 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.9, align 2
  %38 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i, align 4
  tail call void %39(ptr noundef %wm, i16 noundef zeroext 9, i16 noundef zeroext %37) #5
  %arrayidx.10 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 10
  %40 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.10, align 2
  %42 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i, align 4
  tail call void %43(ptr noundef %wm, i16 noundef zeroext 10, i16 noundef zeroext %41) #5
  %arrayidx.11 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 11
  %44 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.11, align 2
  %46 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i, align 4
  tail call void %47(ptr noundef %wm, i16 noundef zeroext 11, i16 noundef zeroext %45) #5
  %arrayidx.12 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 12
  %48 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx.12, align 2
  %50 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i, align 4
  tail call void %51(ptr noundef %wm, i16 noundef zeroext 12, i16 noundef zeroext %49) #5
  %arrayidx.13 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 13
  %52 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx.13, align 2
  %54 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i, align 4
  tail call void %55(ptr noundef %wm, i16 noundef zeroext 13, i16 noundef zeroext %53) #5
  %arrayidx.14 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 14
  %56 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx.14, align 2
  %58 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i, align 4
  tail call void %59(ptr noundef %wm, i16 noundef zeroext 14, i16 noundef zeroext %57) #5
  %arrayidx.15 = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 15
  %60 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx.15, align 2
  %62 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i, align 4
  tail call void %63(ptr noundef %wm, i16 noundef zeroext 15, i16 noundef zeroext %61) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_wm8766_set_if(ptr noundef %wm, i16 noundef zeroext %dac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %2 = and i16 %1, -64
  %3 = and i16 %dac, 63
  %or10 = or i16 %2, %3
  store i16 %or10, ptr %arrayidx, align 2
  %ops.i = getelementptr inbounds %struct.snd_wm8766, ptr %wm, i32 0, i32 3
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  tail call void %5(ptr noundef %wm, i16 noundef zeroext 3, i16 noundef zeroext %or10) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_wm8766_volume_restore(ptr noundef %wm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %2 = or i16 %1, 256
  store i16 %2, ptr %arrayidx, align 2
  %ops.i = getelementptr inbounds %struct.snd_wm8766, ptr %wm, i32 0, i32 3
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  tail call void %4(ptr noundef %wm, i16 noundef zeroext 1, i16 noundef zeroext %2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_wm8766_build_controls(ptr noundef %wm) local_unnamed_addr #0 align 64 {
entry:
  %cont.i = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %cont.i, i32 4
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont.i, i32 0, i32 11
  %name2.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont.i, i32 0, i32 3
  %access.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont.i, i32 0, i32 5
  %tlv.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont.i, i32 0, i32 10
  %get.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont.i, i32 0, i32 8
  %put.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont.i, i32 0, i32 9
  %info34.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont.i, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %name = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 1, i32 %i.012, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cont.i) #5
  %3 = call ptr @memset(ptr %0, i32 0, i32 28)
  %4 = ptrtoint ptr %cont.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %cont.i, align 4
  %5 = ptrtoint ptr %private_value.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %i.012, ptr %private_value.i, align 4
  %arrayidx.i = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 1, i32 %i.012
  %6 = ptrtoint ptr %name2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %2, ptr %name2.i, align 4
  %flags.i = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 1, i32 %i.012, i32 11
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags.i, align 4
  %9 = and i16 %8, 24
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %10 = icmp eq i16 %9, 0
  %spec.store.select.i = select i1 %10, i32 3, i32 259
  %11 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.store.select.i, ptr %access.i, align 4
  %12 = ptrtoint ptr %tlv.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %tlv.i, align 4
  %13 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @snd_wm8766_ctl_get, ptr %get.i, align 4
  %14 = ptrtoint ptr %put.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @snd_wm8766_ctl_put, ptr %put.i, align 4
  %type.i = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 1, i32 %i.012, i32 2
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %if.then.snd_wm8766_add_control.exit.thread_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb20.i
    i32 3, label %sw.bb33.i
  ]

if.then.snd_wm8766_add_control.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_wm8766_add_control.exit.thread

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %info34.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @snd_wm8766_volume_info, ptr %info34.i, align 4
  %or15.i = or i32 %spec.store.select.i, 16
  %19 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or15.i, ptr %access.i, align 4
  %tlv18.i = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 1, i32 %i.012, i32 4
  %20 = ptrtoint ptr %tlv18.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tlv18.i, align 4
  %22 = ptrtoint ptr %tlv.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %tlv.i, align 4
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %if.then
  %max.i = getelementptr %struct.snd_wm8766, ptr %wm, i32 0, i32 1, i32 %i.012, i32 10
  %23 = ptrtoint ptr %max.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %max.i, align 2
  %24 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool28.not.i = icmp eq i16 %24, 0
  br i1 %tobool28.not.i, label %if.else.i, label %if.then29.i

if.then29.i:                                      ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %info34.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @snd_ctl_boolean_stereo_info, ptr %info34.i, align 4
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %info34.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @snd_ctl_boolean_mono_info, ptr %info34.i, align 4
  br label %sw.epilog.i

sw.bb33.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %info34.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @snd_wm8766_enum_info, ptr %info34.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb33.i, %if.else.i, %if.then29.i, %sw.bb.i
  %call.i = call ptr @snd_ctl_new1(ptr noundef nonnull %cont.i, ptr noundef %wm) #5
  %tobool35.not.i = icmp eq ptr %call.i, null
  br i1 %tobool35.not.i, label %sw.epilog.i.snd_wm8766_add_control.exit.thread_crit_edge, label %snd_wm8766_add_control.exit

sw.epilog.i.snd_wm8766_add_control.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_wm8766_add_control.exit.thread

snd_wm8766_add_control.exit.thread:               ; preds = %sw.epilog.i.snd_wm8766_add_control.exit.thread_crit_edge, %if.then.snd_wm8766_add_control.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %sw.epilog.i.snd_wm8766_add_control.exit.thread_crit_edge ], [ -22, %if.then.snd_wm8766_add_control.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cont.i) #5
  br label %cleanup

snd_wm8766_add_control.exit:                      ; preds = %sw.epilog.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %arrayidx.i, align 4
  %29 = ptrtoint ptr %wm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wm, align 4
  %call40.i = call i32 @snd_ctl_add(ptr noundef %30, ptr noundef nonnull %call.i) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cont.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp1 = icmp slt i32 %call40.i, 0
  br i1 %cmp1, label %snd_wm8766_add_control.exit.cleanup_crit_edge, label %snd_wm8766_add_control.exit.for.inc_crit_edge

snd_wm8766_add_control.exit.for.inc_crit_edge:    ; preds = %snd_wm8766_add_control.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

snd_wm8766_add_control.exit.cleanup_crit_edge:    ; preds = %snd_wm8766_add_control.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %snd_wm8766_add_control.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %snd_wm8766_add_control.exit.cleanup_crit_edge, %snd_wm8766_add_control.exit.thread
  %retval.0 = phi i32 [ %retval.0.i.ph, %snd_wm8766_add_control.exit.thread ], [ 0, %for.inc.cleanup_crit_edge ], [ %call40.i, %snd_wm8766_add_control.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_wm8766_ctl_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %val1 = alloca i16, align 2
  %val2 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val1) #5
  %4 = ptrtoint ptr %val1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val1, align 2, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val2) #5
  %5 = ptrtoint ptr %val2 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %val2, align 2, !annotation !43
  %get = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 13
  %6 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void %7(ptr noundef %1, ptr noundef nonnull %val1, ptr noundef nonnull %val2) #5
  br label %if.end53

if.else:                                          ; preds = %entry
  %reg1 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 5
  %8 = ptrtoint ptr %reg1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %reg1, align 4
  %idxprom = zext i16 %9 to i32
  %arrayidx6 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 4, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx6, align 2
  %mask1 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 7
  %12 = ptrtoint ptr %mask1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mask1, align 4
  %and141 = and i16 %13, %11
  %conv14 = zext i16 %13 to i32
  %14 = tail call i32 @llvm.cttz.i32(i32 %conv14, i1 false) #5, !range !44
  %conv15 = zext i16 %and141 to i32
  %shr = lshr i32 %conv15, %14
  %conv16 = trunc i32 %shr to i16
  %15 = ptrtoint ptr %val1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv16, ptr %val1, align 2
  %flags = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 11
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags, align 4
  %18 = and i16 %17, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool21.not = icmp eq i16 %18, 0
  br i1 %tobool21.not, label %if.else.if.end53_crit_edge, label %if.then22

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then22:                                        ; preds = %if.else
  %reg2 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 6
  %19 = ptrtoint ptr %reg2 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %reg2, align 2
  %idxprom26 = zext i16 %20 to i32
  %arrayidx27 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 4, i32 %idxprom26
  %21 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx27, align 2
  %mask2 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 8
  %23 = ptrtoint ptr %mask2 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %mask2, align 2
  %and32142 = and i16 %24, %22
  %conv37 = zext i16 %24 to i32
  %25 = tail call i32 @llvm.cttz.i32(i32 %conv37, i1 false) #5, !range !44
  %conv39 = zext i16 %and32142 to i32
  %shr40 = lshr i32 %conv39, %25
  %conv41 = trunc i32 %shr40 to i16
  %26 = ptrtoint ptr %val2 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv41, ptr %val2, align 2
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags, align 4
  %29 = and i16 %28, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool47.not = icmp eq i16 %29, 0
  br i1 %tobool47.not, label %if.then22.if.end53_crit_edge, label %if.then48

if.then22.if.end53_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then48:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %conv51 = and i16 %conv41, -257
  %30 = ptrtoint ptr %val2 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv51, ptr %val2, align 2
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.then22.if.end53_crit_edge, %if.else.if.end53_crit_edge, %if.then
  %flags56 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 11
  %31 = ptrtoint ptr %flags56 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %flags56, align 4
  %33 = and i16 %32, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool59.not = icmp eq i16 %33, 0
  br i1 %tobool59.not, label %if.end53.if.end90_crit_edge, label %if.then60

if.end53.if.end90_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.then60:                                        ; preds = %if.end53
  %max = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 10
  %34 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %max, align 2
  %36 = ptrtoint ptr %val1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %val1, align 2
  %min = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 9
  %38 = ptrtoint ptr %min to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %min, align 4
  %sub.neg = sub i16 %35, %37
  %sub68 = add i16 %sub.neg, %39
  store i16 %sub68, ptr %val1, align 2
  %40 = ptrtoint ptr %flags56 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags56, align 4
  %42 = and i16 %41, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool75.not = icmp eq i16 %42, 0
  br i1 %tobool75.not, label %if.then60.if.end90_crit_edge, label %if.then76

if.then60.if.end90_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.then76:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %max, align 2
  %45 = ptrtoint ptr %val2 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %val2, align 2
  %47 = ptrtoint ptr %min to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %min, align 4
  %sub86.neg = sub i16 %44, %46
  %sub87 = add i16 %sub86.neg, %48
  store i16 %sub87, ptr %val2, align 2
  br label %if.end90

if.end90:                                         ; preds = %if.then76, %if.then60.if.end90_crit_edge, %if.end53.if.end90_crit_edge
  %49 = ptrtoint ptr %val1 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %val1, align 2
  %conv91 = zext i16 %50 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %51 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv91, ptr %value, align 8
  %52 = ptrtoint ptr %flags56 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %flags56, align 4
  %54 = and i16 %53, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool98.not = icmp eq i16 %54, 0
  br i1 %tobool98.not, label %if.end90.if.end103_crit_edge, label %if.then99

if.end90.if.end103_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103

if.then99:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %val2 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %val2, align 2
  %conv100 = zext i16 %56 to i32
  %arrayidx102 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %57 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv100, ptr %arrayidx102, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then99, %if.end90.if.end103_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_wm8766_ctl_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %conv = trunc i32 %5 to i16
  %arrayidx2 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %conv3 = trunc i32 %7 to i16
  %flags = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 11
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 4
  %10 = and i16 %9, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %max = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 10
  %11 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %max, align 2
  %min = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 9
  %13 = ptrtoint ptr %min to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %min, align 4
  %15 = sub i16 %12, %conv
  %conv14 = add i16 %15, %14
  %16 = sub i16 %12, %conv3
  %conv26 = add i16 %16, %14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regval1.0 = phi i16 [ %conv14, %if.then ], [ %conv, %entry.if.end_crit_edge ]
  %regval2.0 = phi i16 [ %conv26, %if.then ], [ %conv3, %entry.if.end_crit_edge ]
  %set = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 12
  %17 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set, align 4
  %tobool29.not = icmp eq ptr %18, null
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %18(ptr noundef %1, i16 noundef zeroext %regval1.0, i16 noundef zeroext %regval2.0) #5
  br label %if.end143

if.else:                                          ; preds = %if.end
  %reg1 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 5
  %19 = ptrtoint ptr %reg1 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %reg1, align 4
  %idxprom = zext i16 %20 to i32
  %arrayidx36 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 4, i32 %idxprom
  %21 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx36, align 2
  %mask1 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 7
  %23 = ptrtoint ptr %mask1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %mask1, align 4
  %conv40 = zext i16 %24 to i32
  %neg = xor i16 %24, -1
  %and41 = and i16 %22, %neg
  %conv43 = zext i16 %regval1.0 to i32
  %25 = tail call i32 @llvm.cttz.i32(i32 %conv40, i1 false) #5, !range !44
  %shl = shl i32 %conv43, %25
  %26 = trunc i32 %shl to i16
  %conv49 = or i16 %and41, %26
  %27 = and i16 %9, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool55.not = icmp eq i16 %27, 0
  br i1 %tobool55.not, label %if.else.if.end82_crit_edge, label %land.lhs.true

if.else.if.end82_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

land.lhs.true:                                    ; preds = %if.else
  %reg2 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 6
  %28 = ptrtoint ptr %reg2 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %reg2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %29)
  %cmp = icmp eq i16 %20, %29
  br i1 %cmp, label %if.then64, label %land.lhs.true.if.end82_crit_edge

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

if.then64:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %mask2 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 8
  %30 = ptrtoint ptr %mask2 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mask2, align 2
  %conv67 = zext i16 %31 to i32
  %neg68 = xor i16 %31, -1
  %and70 = and i16 %conv49, %neg68
  %conv72 = zext i16 %regval2.0 to i32
  %32 = tail call i32 @llvm.cttz.i32(i32 %conv67, i1 false) #5, !range !44
  %shl78 = shl i32 %conv72, %32
  %33 = trunc i32 %shl78 to i16
  %conv81 = or i16 %and70, %33
  br label %if.end82

if.end82:                                         ; preds = %if.then64, %land.lhs.true.if.end82_crit_edge, %if.else.if.end82_crit_edge
  %val.0 = phi i16 [ %conv81, %if.then64 ], [ %conv49, %land.lhs.true.if.end82_crit_edge ], [ %conv49, %if.else.if.end82_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %20)
  %cmp.i = icmp ult i16 %20, 16
  br i1 %cmp.i, label %if.then.i, label %if.end82.snd_wm8766_write.exit_crit_edge

if.end82.snd_wm8766_write.exit_crit_edge:         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_wm8766_write.exit

if.then.i:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %val.0, ptr %arrayidx36, align 2
  br label %snd_wm8766_write.exit

snd_wm8766_write.exit:                            ; preds = %if.then.i, %if.end82.snd_wm8766_write.exit_crit_edge
  %ops.i = getelementptr inbounds %struct.snd_wm8766, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i, align 4
  tail call void %36(ptr noundef %1, i16 noundef zeroext %20, i16 noundef zeroext %val.0) #5
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %flags, align 4
  %39 = and i16 %38, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool91.not = icmp eq i16 %39, 0
  br i1 %tobool91.not, label %snd_wm8766_write.exit.if.end143_crit_edge, label %land.lhs.true92

snd_wm8766_write.exit.if.end143_crit_edge:        ; preds = %snd_wm8766_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end143

land.lhs.true92:                                  ; preds = %snd_wm8766_write.exit
  %40 = ptrtoint ptr %reg1 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %reg1, align 4
  %reg299 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 6
  %42 = ptrtoint ptr %reg299 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %reg299, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %43)
  %cmp101.not = icmp eq i16 %41, %43
  br i1 %cmp101.not, label %land.lhs.true92.if.end143_crit_edge, label %if.then103

land.lhs.true92.if.end143_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end143

if.then103:                                       ; preds = %land.lhs.true92
  %conv100 = zext i16 %43 to i32
  %arrayidx109 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 4, i32 %conv100
  %44 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx109, align 2
  %mask2113 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 8
  %46 = ptrtoint ptr %mask2113 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %mask2113, align 2
  %conv114 = zext i16 %47 to i32
  %neg115 = xor i16 %47, -1
  %and116 = and i16 %45, %neg115
  %conv118 = zext i16 %regval2.0 to i32
  %48 = tail call i32 @llvm.cttz.i32(i32 %conv114, i1 false) #5, !range !44
  %shl124 = shl i32 %conv118, %48
  %49 = trunc i32 %shl124 to i16
  %50 = shl i16 %38, 7
  %51 = and i16 %50, 256
  %conv127 = or i16 %and116, %51
  %52 = or i16 %conv127, %49
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %43)
  %cmp.i208 = icmp ult i16 %43, 16
  br i1 %cmp.i208, label %if.then.i211, label %if.then103.snd_wm8766_write.exit213_crit_edge

if.then103.snd_wm8766_write.exit213_crit_edge:    ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_wm8766_write.exit213

if.then.i211:                                     ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %arrayidx109, align 2
  br label %snd_wm8766_write.exit213

snd_wm8766_write.exit213:                         ; preds = %if.then.i211, %if.then103.snd_wm8766_write.exit213_crit_edge
  %54 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i, align 4
  tail call void %55(ptr noundef %1, i16 noundef zeroext %43, i16 noundef zeroext %52) #5
  br label %if.end143

if.end143:                                        ; preds = %snd_wm8766_write.exit213, %land.lhs.true92.if.end143_crit_edge, %snd_wm8766_write.exit.if.end143_crit_edge, %if.then30
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_wm8766_volume_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type, align 8
  %flags = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 11
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 4
  %7 = and i16 %6, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %8 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %count, align 8
  %min = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 9
  %9 = ptrtoint ptr %min to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %min, align 4
  %conv3 = zext i16 %10 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv3, ptr %value, align 8
  %max = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 10
  %12 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %max, align 2
  %conv7 = zext i16 %13 to i32
  %max9 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %14 = ptrtoint ptr %max9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv7, ptr %max9, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_stereo_info(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_wm8766_enum_info(ptr nocapture noundef readonly %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %max = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 10
  %4 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %max, align 2
  %conv = zext i16 %5 to i32
  %enum_names = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 %3, i32 3
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef %conv, ptr noundef %enum_names) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = distinct !{null, !1, !"default_values", i1 false, i1 false}
!1 = !{!"../sound/pci/ice1712/wm8766.c", i32 140, i32 19}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ice1712/wm8766.c", i32 31, i32 11}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/ice1712/wm8766.c", i32 42, i32 11}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/ice1712/wm8766.c", i32 53, i32 11}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/ice1712/wm8766.c", i32 64, i32 11}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/ice1712/wm8766.c", i32 71, i32 11}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/ice1712/wm8766.c", i32 78, i32 11}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/ice1712/wm8766.c", i32 85, i32 11}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/ice1712/wm8766.c", i32 91, i32 11}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/ice1712/wm8766.c", i32 97, i32 11}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/ice1712/wm8766.c", i32 103, i32 11}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/ice1712/wm8766.c", i32 109, i32 11}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/ice1712/wm8766.c", i32 115, i32 11}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/ice1712/wm8766.c", i32 121, i32 11}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/ice1712/wm8766.c", i32 127, i32 11}
!30 = !{ptr @snd_wm8766_default_ctl, !31, !"snd_wm8766_default_ctl", i1 false, i1 false}
!31 = !{!"../sound/pci/ice1712/wm8766.c", i32 29, i32 36}
!32 = !{ptr @wm8766_tlv, !33, !"wm8766_tlv", i1 false, i1 false}
!33 = !{!"../sound/pci/ice1712/wm8766.c", i32 27, i32 14}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
!44 = !{i32 0, i32 33}
