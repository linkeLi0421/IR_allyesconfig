; ModuleID = '/llk/IR_all_yes/sound/pci/aw2/aw2-saa7146.c_pt.bc'
source_filename = "../sound/pci/aw2/aw2-saa7146.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_aw2_saa7146_cb_param = type { ptr, ptr }

@tsl1 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 9830400, i32 8650752, i32 393216, i32 262144, i32 -1065222144, i32 -1065353216, i32 -1073610752, i32 -1071644671], [32 x i8] zeroinitializer }, align 32
@tsl2 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 184, i32 40, i32 56, i32 40, i32 536870936, i32 536870920, i32 536870936, i32 536870921], [32 x i8] zeroinitializer }, align 32
@snd_aw2_saa7146_pcm_init_playback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013aw2: snd_aw2_saa7146_pcm_init_playback: Substream number is not 0 or 1 -> not managed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"snd_aw2_saa7146_pcm_init_playback\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/pci/aw2/aw2-saa7146.c\00", [36 x i8] zeroinitializer }, align 32
@snd_aw2_saa7146_pcm_init_playback._entry_ptr = internal global ptr @snd_aw2_saa7146_pcm_init_playback._entry, section ".printk_index", align 4
@snd_aw2_saa7146_pcm_init_capture._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013aw2: snd_aw2_saa7146_pcm_init_capture: Substream number is not 0 -> not managed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"snd_aw2_saa7146_pcm_init_capture\00", [63 x i8] zeroinitializer }, align 32
@snd_aw2_saa7146_pcm_init_capture._entry_ptr = internal global ptr @snd_aw2_saa7146_pcm_init_capture._entry, section ".printk_index", align 4
@arr_substream_it_playback_cb = internal global { [2 x %struct.snd_aw2_saa7146_cb_param], [16 x i8] } zeroinitializer, align 32
@arr_substream_it_capture_cb.0 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@arr_substream_it_capture_cb.1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.8 = private unnamed_addr constant [5 x i8] c"tsl1\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 62, i32 18 }
@___asan_gen_.11 = private unnamed_addr constant [5 x i8] c"tsl2\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [27 x i8] c"../sound/pci/aw2/aw2-tsl.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 88, i32 18 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 194, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 240, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [29 x i8] c"arr_substream_it_playback_cb\00", align 1
@___asan_gen_.36 = private constant [31 x i8] c"../sound/pci/aw2/aw2-saa7146.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 32, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [30 x i8] c"arr_substream_it_capture_cb.0\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [30 x i8] c"arr_substream_it_capture_cb.1\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @snd_aw2_saa7146_pcm_init_capture._entry, ptr @snd_aw2_saa7146_pcm_init_capture._entry_ptr, ptr @snd_aw2_saa7146_pcm_init_playback._entry, ptr @snd_aw2_saa7146_pcm_init_playback._entry_ptr, ptr @tsl1, ptr @tsl2, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @arr_substream_it_playback_cb, ptr @arr_substream_it_capture_cb.0, ptr @arr_substream_it_capture_cb.1], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_aw2_saa7146_pcm_init_playback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_aw2_saa7146_pcm_init_capture._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arr_substream_it_playback_cb to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arr_substream_it_capture_cb.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arr_substream_it_capture_cb.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_aw2_saa7146_free(ptr nocapture noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 128) #5, !srcloc !29
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %chip, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_aw2_saa7146_setup(ptr nocapture noundef %chip, ptr noundef %pci_base_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pci_base_addr, ptr %chip, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 4
  %add.ptr6 = getelementptr i8, ptr %4, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 128) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %add.ptr17 = getelementptr i8, ptr %6, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 -1946144672) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %add.ptr22 = getelementptr i8, ptr %8, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 251662095) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 4
  %add.ptr27 = getelementptr i8, ptr %10, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 131074) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %add.ptr32 = getelementptr i8, ptr %12, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 65537) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 4
  %add.ptr37 = getelementptr i8, ptr %14, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 7340800) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %add.ptr42 = getelementptr i8, ptr %16, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 18432) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 4
  %add.ptr4.i = getelementptr i8, ptr %18, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 1342177280) #5, !srcloc !29
  br label %do.body43

do.body43:                                        ; preds = %do.body43.do.body43_crit_edge, %entry
  %i.079 = phi i32 [ 0, %entry ], [ %inc, %do.body43.do.body43_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  %arrayidx = getelementptr [8 x i32], ptr @tsl1, i32 0, i32 %i.079
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip, align 4
  %mul = shl i32 %i.079, 2
  %add = add nuw nsw i32 %mul, 384
  %add.ptr47 = getelementptr i8, ptr %23, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %21) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %arrayidx51 = getelementptr [8 x i32], ptr @tsl2, i32 0, i32 %i.079
  %24 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx51, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip, align 4
  %add54 = add nuw nsw i32 %mul, 448
  %add.ptr55 = getelementptr i8, ptr %28, i32 %add54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %26) #5, !srcloc !29
  %inc = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %do.body43.do.body43_crit_edge

do.body43.do.body43_crit_edge:                    ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body43

for.end:                                          ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_aw2_saa7146_use_digital_input(ptr nocapture noundef readonly %chip, i32 noundef %use_digital) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_digital)
  %tobool.not = icmp eq i32 %use_digital, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %add.ptr4 = getelementptr i8, ptr %1, i32 224
  br i1 %tobool.not, label %do.body1, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 1073741824) #5, !srcloc !29
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 1342177280) #5, !srcloc !29
  br label %if.end

if.end:                                           ; preds = %do.body1, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_aw2_saa7146_pcm_init_playback(ptr nocapture noundef readonly %chip, i32 noundef %stream_number, i32 noundef %dma_addr, i32 noundef %period_size, i32 noundef %buffer_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %period_size)
  %cmp3.i = icmp sgt i32 %period_size, 32
  br i1 %cmp3.i, label %entry.while.body.i_crit_edge, label %entry.snd_aw2_saa7146_get_limit.exit_crit_edge

entry.snd_aw2_saa7146_get_limit.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_aw2_saa7146_get_limit.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %limit.05.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %limitsize.04.i = phi i32 [ %mul.i, %while.body.i.while.body.i_crit_edge ], [ 32, %entry.while.body.i_crit_edge ]
  %mul.i = shl i32 %limitsize.04.i, 1
  %inc.i = add i32 %limit.05.i, 1
  %cmp.i = icmp slt i32 %mul.i, %period_size
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %snd_aw2_saa7146_get_limit.exit.loopexit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

snd_aw2_saa7146_get_limit.exit.loopexit:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %phi.bo = shl i32 %inc.i, 4
  br label %snd_aw2_saa7146_get_limit.exit

snd_aw2_saa7146_get_limit.exit:                   ; preds = %snd_aw2_saa7146_get_limit.exit.loopexit, %entry.snd_aw2_saa7146_get_limit.exit_crit_edge
  %limit.0.lcssa.i = phi i32 [ 0, %entry.snd_aw2_saa7146_get_limit.exit_crit_edge ], [ %phi.bo, %snd_aw2_saa7146_get_limit.exit.loopexit ]
  %0 = zext i32 %stream_number to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %stream_number, label %do.end32 [
    i32 0, label %do.body
    i32 1, label %do.body13
  ]

do.body:                                          ; preds = %snd_aw2_saa7146_get_limit.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %1 = tail call i32 @llvm.bswap.i32(i32 %limit.0.lcssa.i)
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %dma_addr)
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %4) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %add = add i32 %buffer_size, %dma_addr
  %7 = tail call i32 @llvm.bswap.i32(i32 %add)
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %add.ptr10 = getelementptr i8, ptr %9, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %7) #5, !srcloc !29
  br label %if.end34

do.body13:                                        ; preds = %snd_aw2_saa7146_get_limit.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %limit.0.lcssa.i)
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %add.ptr17 = getelementptr i8, ptr %12, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %10) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %dma_addr)
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  %add.ptr22 = getelementptr i8, ptr %15, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %13) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %add26 = add i32 %buffer_size, %dma_addr
  %16 = tail call i32 @llvm.bswap.i32(i32 %add26)
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 4
  %add.ptr28 = getelementptr i8, ptr %18, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %16) #5, !srcloc !29
  br label %if.end34

do.end32:                                         ; preds = %snd_aw2_saa7146_get_limit.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %if.end34

if.end34:                                         ; preds = %do.end32, %do.body13, %do.body
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_aw2_saa7146_pcm_init_capture(ptr nocapture noundef readonly %chip, i32 noundef %stream_number, i32 noundef %dma_addr, i32 noundef %period_size, i32 noundef %buffer_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %period_size)
  %cmp3.i = icmp sgt i32 %period_size, 32
  br i1 %cmp3.i, label %entry.while.body.i_crit_edge, label %entry.snd_aw2_saa7146_get_limit.exit_crit_edge

entry.snd_aw2_saa7146_get_limit.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_aw2_saa7146_get_limit.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %limit.05.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %limitsize.04.i = phi i32 [ %mul.i, %while.body.i.while.body.i_crit_edge ], [ 32, %entry.while.body.i_crit_edge ]
  %mul.i = shl i32 %limitsize.04.i, 1
  %inc.i = add i32 %limit.05.i, 1
  %cmp.i = icmp slt i32 %mul.i, %period_size
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %snd_aw2_saa7146_get_limit.exit.loopexit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

snd_aw2_saa7146_get_limit.exit.loopexit:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %phi.bo = shl i32 %inc.i, 4
  br label %snd_aw2_saa7146_get_limit.exit

snd_aw2_saa7146_get_limit.exit:                   ; preds = %snd_aw2_saa7146_get_limit.exit.loopexit, %entry.snd_aw2_saa7146_get_limit.exit_crit_edge
  %limit.0.lcssa.i = phi i32 [ 0, %entry.snd_aw2_saa7146_get_limit.exit_crit_edge ], [ %phi.bo, %snd_aw2_saa7146_get_limit.exit.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream_number)
  %cmp = icmp eq i32 %stream_number, 0
  br i1 %cmp, label %do.body, label %do.end13

do.body:                                          ; preds = %snd_aw2_saa7146_get_limit.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %limit.0.lcssa.i)
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %3 = tail call i32 @llvm.bswap.i32(i32 %dma_addr)
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %3) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %add = add i32 %buffer_size, %dma_addr
  %6 = tail call i32 @llvm.bswap.i32(i32 %add)
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %add.ptr10 = getelementptr i8, ptr %8, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %6) #5, !srcloc !29
  br label %if.end

do.end13:                                         ; preds = %snd_aw2_saa7146_get_limit.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  br label %if.end

if.end:                                           ; preds = %do.end13, %do.body
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @snd_aw2_saa7146_define_it_playback_callback(i32 noundef %stream_number, ptr noundef %p_it_callback, ptr noundef %p_callback_param) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stream_number)
  %cmp = icmp ult i32 %stream_number, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [2 x %struct.snd_aw2_saa7146_cb_param], ptr @arr_substream_it_playback_cb, i32 0, i32 %stream_number
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %p_it_callback, ptr %arrayidx, align 4
  %p_callback_param3 = getelementptr [2 x %struct.snd_aw2_saa7146_cb_param], ptr @arr_substream_it_playback_cb, i32 0, i32 %stream_number, i32 1
  %1 = ptrtoint ptr %p_callback_param3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %p_callback_param, ptr %p_callback_param3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @snd_aw2_saa7146_define_it_capture_callback(i32 noundef %stream_number, ptr noundef %p_it_callback, ptr noundef %p_callback_param) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream_number)
  %cmp = icmp eq i32 %stream_number, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %p_it_callback, ptr @arr_substream_it_capture_cb.0, align 4
  store ptr %p_callback_param, ptr @arr_substream_it_capture_cb.1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_aw2_saa7146_pcm_trigger_start_playback(ptr nocapture noundef readonly %chip, i32 noundef %stream_number) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 244
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !50
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  %4 = zext i32 %stream_number to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %stream_number, label %entry.if.end22_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body11
  ]

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 134219776) #5, !srcloc !29
  %or = or i32 %3, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %7) #5, !srcloc !29
  br label %if.end22

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  %add.ptr15 = getelementptr i8, ptr %11, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 33554944) #5, !srcloc !29
  %or16 = or i32 %3, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %or16)
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 4
  %add.ptr21 = getelementptr i8, ptr %14, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %12) #5, !srcloc !29
  br label %if.end22

if.end22:                                         ; preds = %do.body11, %do.body, %entry.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_aw2_saa7146_pcm_trigger_stop_playback(ptr nocapture noundef readonly %chip, i32 noundef %stream_number) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 244
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !50
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  %4 = zext i32 %stream_number to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %stream_number, label %entry.if.end22_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then10
  ]

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %3, -3073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %and)
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 2048) #5, !srcloc !29
  br label %if.end22

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and11 = and i32 %3, -49153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %and11)
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %add.ptr16 = getelementptr i8, ptr %12, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %10) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 4
  %add.ptr21 = getelementptr i8, ptr %14, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 512) #5, !srcloc !29
  br label %if.end22

if.end22:                                         ; preds = %if.then10, %if.then, %entry.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_aw2_saa7146_pcm_trigger_start_capture(ptr nocapture noundef readonly %chip, i32 noundef %stream_number) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream_number)
  %cmp = icmp eq i32 %stream_number, 0
  br i1 %cmp, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777472) #5, !srcloc !29
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_aw2_saa7146_pcm_trigger_stop_capture(ptr nocapture noundef readonly %chip, i32 noundef %stream_number) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream_number)
  %cmp = icmp eq i32 %stream_number, 0
  br i1 %cmp, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 256) #5, !srcloc !29
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_aw2_saa7146_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 268
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !50
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #5, !srcloc !29
  %and = and i32 %3, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.if.end18_crit_edge, label %if.then5

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 144
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_id, align 4
  %add.ptr17 = getelementptr i8, ptr %10, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 65536) #5, !srcloc !29
  br label %if.end18

if.end18:                                         ; preds = %if.then5, %do.body.if.end18_crit_edge
  %and19 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end24_crit_edge, label %if.then21

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then21:                                        ; preds = %if.end18
  %11 = load ptr, ptr getelementptr inbounds ([2 x %struct.snd_aw2_saa7146_cb_param], ptr @arr_substream_it_playback_cb, i32 0, i32 1), align 4
  %cmp.not = icmp eq ptr %11, null
  br i1 %cmp.not, label %if.then21.if.end24_crit_edge, label %if.then22

if.then21.if.end24_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then22:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %12 = load ptr, ptr getelementptr inbounds ([2 x %struct.snd_aw2_saa7146_cb_param], ptr @arr_substream_it_playback_cb, i32 0, i32 1, i32 1), align 4
  tail call void %11(ptr noundef %12) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.then21.if.end24_crit_edge, %if.end18.if.end24_crit_edge
  %and25 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end31_crit_edge, label %if.then27

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then27:                                        ; preds = %if.end24
  %13 = load ptr, ptr @arr_substream_it_playback_cb, align 4
  %cmp28.not = icmp eq ptr %13, null
  br i1 %cmp28.not, label %if.then27.if.end31_crit_edge, label %if.then29

if.then27.if.end31_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  %14 = load ptr, ptr getelementptr inbounds ([2 x %struct.snd_aw2_saa7146_cb_param], ptr @arr_substream_it_playback_cb, i32 0, i32 0, i32 1), align 4
  tail call void %13(ptr noundef %14) #5
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.then27.if.end31_crit_edge, %if.end24.if.end31_crit_edge
  %and32 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %if.then34

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then34:                                        ; preds = %if.end31
  %15 = load ptr, ptr @arr_substream_it_capture_cb.0, align 4
  %cmp35.not = icmp eq ptr %15, null
  br i1 %cmp35.not, label %if.then34.cleanup_crit_edge, label %if.then36

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then36:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  %16 = load ptr, ptr @arr_substream_it_capture_cb.1, align 4
  tail call void %15(ptr noundef %16) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.then34.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then34.cleanup_crit_edge ], [ 1, %if.then36 ], [ 1, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_aw2_saa7146_get_hw_ptr_playback(ptr nocapture noundef readonly %chip, i32 noundef %stream_number, ptr noundef %start_addr, i32 noundef %buffer_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stream_number to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %stream_number, label %entry.if.end18_crit_edge [
    i32 0, label %if.end4.thread
    i32 1, label %if.then6
  ]

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end4.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 308
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !50
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %5 = ptrtoint ptr %start_addr to i32
  %sub = sub i32 %4, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %buffer_size)
  %cmp2 = icmp eq i32 %sub, %buffer_size
  %spec.store.select = select i1 %cmp2, i32 0, i32 %sub
  br label %if.end18

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 300
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #5, !srcloc !50
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %10 = ptrtoint ptr %start_addr to i32
  %sub14 = sub i32 %9, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub14, i32 %buffer_size)
  %cmp15 = icmp eq i32 %sub14, %buffer_size
  %spec.store.select19 = select i1 %cmp15, i32 0, i32 %sub14
  br label %if.end18

if.end18:                                         ; preds = %if.then6, %if.end4.thread, %entry.if.end18_crit_edge
  %ptr.1 = phi i32 [ %spec.store.select19, %if.then6 ], [ %spec.store.select, %if.end4.thread ], [ 0, %entry.if.end18_crit_edge ]
  ret i32 %ptr.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_aw2_saa7146_get_hw_ptr_capture(ptr nocapture noundef readonly %chip, i32 noundef %stream_number, ptr noundef %start_addr, i32 noundef %buffer_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream_number)
  %cmp = icmp eq i32 %stream_number, 0
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 304
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !50
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  %4 = ptrtoint ptr %start_addr to i32
  %sub = sub i32 %3, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %buffer_size)
  %cmp2 = icmp eq i32 %sub, %buffer_size
  %spec.store.select = select i1 %cmp2, i32 0, i32 %sub
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry.if.end4_crit_edge
  %ptr.0 = phi i32 [ %spec.store.select, %if.then ], [ 0, %entry.if.end4_crit_edge ]
  ret i32 %ptr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_aw2_saa7146_is_using_digital_input(ptr nocapture noundef readonly %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 224
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %.mask = and i32 %2, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %.mask)
  %cmp = icmp eq i32 %.mask, 1073741824
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/aw2/aw2-saa7146.c", i32 194, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @snd_aw2_saa7146_pcm_init_playback._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @snd_aw2_saa7146_pcm_init_playback._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/aw2/aw2-saa7146.c", i32 240, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @snd_aw2_saa7146_pcm_init_capture._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @snd_aw2_saa7146_pcm_init_capture._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @arr_substream_it_playback_cb, !12, !"arr_substream_it_playback_cb", i1 false, i1 false}
!12 = !{!"../sound/pci/aw2/aw2-saa7146.c", i32 32, i32 2}
!13 = distinct !{null, !14, !"arr_substream_it_capture_cb", i1 false, i1 false}
!14 = !{!"../sound/pci/aw2/aw2-saa7146.c", i32 34, i32 2}
!15 = !{ptr @tsl1, !16, !"tsl1", i1 false, i1 false}
!16 = !{!"../sound/pci/aw2/aw2-tsl.c", i32 62, i32 18}
!17 = !{ptr @tsl2, !18, !"tsl2", i1 false, i1 false}
!18 = !{!"../sound/pci/aw2/aw2-tsl.c", i32 88, i32 18}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 2154654485}
!29 = !{i64 4989952}
!30 = !{i64 2154655004}
!31 = !{i64 2154655542}
!32 = !{i64 2154656061}
!33 = !{i64 2154656677}
!34 = !{i64 2154657492}
!35 = !{i64 2154658441}
!36 = !{i64 2154659087}
!37 = !{i64 2154659841}
!38 = !{i64 2154660540}
!39 = !{i64 2154661056}
!40 = !{i64 2154661589}
!41 = !{i64 2154662099}
!42 = !{i64 2154662600}
!43 = !{i64 2154663132}
!44 = !{i64 2154663676}
!45 = !{i64 2154664177}
!46 = !{i64 2154664709}
!47 = !{i64 2154667295}
!48 = !{i64 2154667796}
!49 = !{i64 2154668328}
!50 = !{i64 4990370}
!51 = !{i64 2154671143}
!52 = !{i64 2154671506}
!53 = !{i64 2154672088}
!54 = !{i64 2154672653}
!55 = !{i64 2154673235}
!56 = !{i64 2154674001}
!57 = !{i64 2154674300}
!58 = !{i64 2154674828}
!59 = !{i64 2154675371}
!60 = !{i64 2154675899}
!61 = !{i64 2154676506}
!62 = !{i64 2154677115}
!63 = !{i64 2154677957}
!64 = !{i64 2154678243}
!65 = !{i64 2154679028}
!66 = !{i64 2154679315}
!67 = !{i64 2154680159}
!68 = !{i64 2154680729}
!69 = !{i64 2154681299}
!70 = !{i64 2154682831}
