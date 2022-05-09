; ModuleID = '/llk/IR_all_yes/sound/pci/ice1712/hoontech.c_pt.bc'
source_filename = "../sound/pci/ice1712/hoontech.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_ice1712_card_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, i32, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_akm4xxx = type { ptr, i32, i32, [64 x i8], [64 x i8], [4 x i32], [4 x ptr], i32, i32, ptr, ptr, %struct.snd_ak4xxx_ops, i32, i32, ptr }
%struct.snd_ak4xxx_ops = type { ptr, ptr, ptr, ptr }
%struct.snd_ak4xxx_private = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, %struct.snd_akm4xxx_ops }
%struct.snd_akm4xxx_ops = type { ptr }
%struct.snd_ice1712 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, [6 x ptr], ptr, ptr, ptr, i32, i32, [6 x i32], [6 x i32], i32, i32, ptr, [2 x ptr], %struct.spinlock, ptr, %struct.snd_ice1712_eeprom, ptr, [20 x i32], i16, i32, i32, i32, %struct.mutex, [4 x ptr], ptr, i32, ptr, %struct.snd_ice1712_spdif, %struct.mutex, ptr, ptr, i32, %struct.ice1712_gpio, %struct.mutex, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i8, i32, i8, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_ice1712_eeprom = type { i32, i8, i8, [32 x i8], i32, i32, i32 }
%struct.snd_ice1712_spdif = type { i8, i8, ptr, %struct.snd_ice1712_spdif_ops }
%struct.snd_ice1712_spdif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ice1712_gpio = type { i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.hoontech_spec = type { [4 x i8], i32, [4 x i16] }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Hoontech SoundTrack Audio DSP24\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dsp24\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MIDI-1 Hoontech/STA DSP24\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MIDI-2 Hoontech/STA DSP24\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Hoontech SoundTrack Audio DSP24 Value\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dsp24_value\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Hoontech STA DSP24 Media 7.1\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsp24_71\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Event Electronics EZ8\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ez8\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"STAudio ADCIII\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"staudio\00", [24 x i8] zeroinitializer }, align 32
@snd_ice1712_hoontech_cards = dso_local global { [6 x %struct.snd_ice1712_card_info], [80 x i8] } { [6 x %struct.snd_ice1712_card_info] [%struct.snd_ice1712_card_info { i32 303305239, ptr @.str, ptr @.str.1, ptr null, ptr @snd_ice1712_hoontech_init, ptr null, ptr null, i8 0, i32 0, i32 0, ptr @.str.2, ptr @.str.3, i32 0, ptr null }, %struct.snd_ice1712_card_info { i32 65552, ptr @.str.4, ptr @.str.5, ptr null, ptr @snd_ice1712_value_init, ptr null, ptr null, i8 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info { i32 370414103, ptr @.str.6, ptr @.str.7, ptr null, ptr @snd_ice1712_hoontech_init, ptr null, ptr null, i8 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info { i32 65537, ptr @.str.8, ptr @.str.9, ptr null, ptr @snd_ice1712_ez8_init, ptr null, ptr null, i8 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info { i32 65538, ptr @.str.10, ptr @.str.11, ptr null, ptr @snd_ice1712_staudio_init, ptr null, ptr null, i8 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info zeroinitializer], [80 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_ice1712_value_init.akm_stdsp24_mv = internal constant { %struct.snd_akm4xxx, [40 x i8] } { %struct.snd_akm4xxx { ptr null, i32 2, i32 2, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, i32 0, ptr null, ptr null, %struct.snd_ak4xxx_ops { ptr @stdsp24_ak4524_lock, ptr null, ptr null, ptr null }, i32 0, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@snd_ice1712_value_init.akm_stdsp24_mv_priv = internal constant { %struct.snd_ak4xxx_private, [60 x i8] } { %struct.snd_ak4xxx_private { i8 -128, i8 2, i32 12, i32 48, i32 3, i32 3, i32 0, i32 0, i32 0, %struct.snd_akm4xxx_ops zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 336, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 337, i32 12 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 339, i32 20 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 340, i32 20 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 344, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 345, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 350, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 351, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 356, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 357, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 365, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 366, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant [27 x i8] c"snd_ice1712_hoontech_cards\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 333, i32 30 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"akm_stdsp24_mv\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 278, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c"akm_stdsp24_mv_priv\00", align 1
@___asan_gen_.55 = private constant [32 x i8] c"../sound/pci/ice1712/hoontech.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 287, i32 41 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @snd_ice1712_hoontech_cards, ptr @snd_ice1712_value_init.akm_stdsp24_mv, ptr @snd_ice1712_value_init.akm_stdsp24_mv_priv], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_hoontech_cards to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_value_init.akm_stdsp24_mv to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_value_init.akm_stdsp24_mv_priv to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_hoontech_init(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @hoontech_init(ptr noundef %ice, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_value_init(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %num_total_dacs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %0 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %num_total_dacs, align 4
  %num_total_adcs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %1 = ptrtoint ptr %num_total_adcs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %num_total_adcs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 216) #6
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  %3 = ptrtoint ptr %akm to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i, ptr %akm, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %akm_codecs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 39
  %4 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %akm_codecs, align 4
  %call1 = tail call i32 @snd_ice1712_akm4xxx_init(ptr noundef nonnull %call7.i, ptr noundef nonnull @snd_ice1712_value_init.akm_stdsp24_mv, ptr noundef nonnull @snd_ice1712_value_init.akm_stdsp24_mv_priv, ptr noundef %ice) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call4 = tail call i32 @snd_ice1712_akm4xxx_build_controls(ptr noundef %ice) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_ez8_init(ptr nocapture noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiomask = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 4
  %0 = ptrtoint ptr %gpiomask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpiomask, align 4
  %gpio = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46
  %write_mask = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 1
  %2 = ptrtoint ptr %write_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %write_mask, align 4
  %gpiodir = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 6
  %3 = ptrtoint ptr %gpiodir to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gpiodir, align 4
  %5 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %gpio, align 4
  %conv = trunc i32 %1 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port.i, align 4
  %add.i = add i32 %7, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 33) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %add5.i = add i32 %10, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %11 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv) #3, !srcloc !40
  %12 = ptrtoint ptr %gpiodir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gpiodir, align 4
  %conv7 = trunc i32 %13 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %14 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port.i, align 4
  %add.i20 = add i32 %15, 3
  %and.i21 = and i32 %add.i20, 1048575
  %add1.i22 = or i32 %and.i21, -18874368
  %16 = inttoptr i32 %add1.i22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 34) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %17 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port.i, align 4
  %add5.i23 = add i32 %18, 4
  %and6.i24 = and i32 %add5.i23, 1048575
  %add7.i25 = or i32 %and6.i24, -18874368
  %19 = inttoptr i32 %add7.i25 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %conv7) #3, !srcloc !40
  %gpiostate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 5
  %20 = ptrtoint ptr %gpiostate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gpiostate, align 4
  %conv9 = trunc i32 %21 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %22 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port.i, align 4
  %add.i27 = add i32 %23, 3
  %and.i28 = and i32 %add.i27, 1048575
  %add1.i29 = or i32 %and.i28, -18874368
  %24 = inttoptr i32 %add1.i29 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 32) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %25 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port.i, align 4
  %add5.i30 = add i32 %26, 4
  %and6.i31 = and i32 %add5.i30, 1048575
  %add7.i32 = or i32 %and6.i31, -18874368
  %27 = inttoptr i32 %add7.i32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %conv9) #3, !srcloc !40
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_staudio_init(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @hoontech_init(ptr noundef %ice, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hoontech_init(ptr noundef %ice, i1 noundef zeroext %staudio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %num_total_dacs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %0 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8, ptr %num_total_dacs, align 4
  %num_total_adcs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %1 = ptrtoint ptr %num_total_adcs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %num_total_adcs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 16) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %3 = ptrtoint ptr %spec1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %spec1, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %call7.i.i, align 8
  %6 = and i8 %5, -64
  %7 = or i8 %6, 32
  store i8 %7, ptr %call7.i.i, align 8
  %arrayidx30 = getelementptr [4 x i8], ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx30, align 1
  %10 = and i8 %9, -64
  %11 = or i8 %10, 47
  store i8 %11, ptr %arrayidx30, align 1
  %arrayidx70 = getelementptr [4 x i8], ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx70, align 2
  %14 = and i8 %13, -64
  %15 = or i8 %14, 51
  store i8 %15, ptr %arrayidx70, align 2
  %arrayidx110 = getelementptr [4 x i8], ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx110, align 1
  %18 = and i8 %17, -64
  %19 = or i8 %18, 58
  store i8 %19, ptr %arrayidx110, align 1
  %spec.select = select i1 %staudio, i32 2, i32 0
  %spec.select314 = select i1 %staudio, i16 783, i16 0
  %20 = getelementptr inbounds %struct.hoontech_spec, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select, ptr %20, align 4
  %22 = getelementptr inbounds %struct.hoontech_spec, ptr %call7.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 783, ptr %22, align 8
  %24 = getelementptr %struct.hoontech_spec, ptr %call7.i.i, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %spec.select314, ptr %24, align 2
  %26 = getelementptr %struct.hoontech_spec, ptr %call7.i.i, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %spec.select314, ptr %26, align 4
  %28 = getelementptr %struct.hoontech_spec, ptr %call7.i.i, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %spec.select314, ptr %28, align 2
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #3
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %call7.i.i, align 8
  %32 = and i8 %31, -5
  store i8 %32, ptr %call7.i.i, align 8
  tail call fastcc void @snd_ice1712_stdsp24_gpio_write(ptr noundef %ice, i8 noundef zeroext %32) #3
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #3
  %33 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %20, align 4
  %35 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %spec1, align 4
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #3
  %arrayidx.i = getelementptr [4 x i8], ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i, align 1
  %39 = and i8 %38, -3
  %40 = trunc i32 %34 to i8
  %activate.tr.i289 = and i8 %40, 2
  %conv3.i290 = or i8 %39, %activate.tr.i289
  store i8 %conv3.i290, ptr %arrayidx.i, align 1
  tail call fastcc void @snd_ice1712_stdsp24_gpio_write(ptr noundef %ice, i8 noundef zeroext %conv3.i290) #3
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #3
  %41 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %20, align 4
  %43 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %spec1, align 4
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #3
  %arrayidx.i293 = getelementptr [4 x i8], ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %arrayidx.i293 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i293, align 1
  %47 = and i8 %46, -5
  %48 = trunc i32 %42 to i8
  %activate.tr.i294 = and i8 %48, 4
  %conv3.i295 = or i8 %47, %activate.tr.i294
  store i8 %conv3.i295, ptr %arrayidx.i293, align 1
  tail call fastcc void @snd_ice1712_stdsp24_gpio_write(ptr noundef %ice, i8 noundef zeroext %conv3.i295) #3
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #3
  br label %for.body

for.body:                                         ; preds = %for.inc208.for.body_crit_edge, %if.end
  %box.0308 = phi i32 [ 0, %if.end ], [ %inc209, %for.inc208.for.body_crit_edge ]
  %arrayidx185 = getelementptr %struct.hoontech_spec, ptr %call7.i.i, i32 0, i32 2, i32 %box.0308
  %49 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx185, align 2
  %51 = and i16 %50, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool188.not = icmp eq i16 %51, 0
  br i1 %tobool188.not, label %for.body.if.end190_crit_edge, label %if.then189

for.body.if.end190_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end190

if.then189:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %52 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %spec1, align 4
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #3
  %arrayidx.i298 = getelementptr [4 x i8], ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %arrayidx.i298 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i298, align 1
  %56 = or i8 %55, 1
  store i8 %56, ptr %arrayidx.i298, align 1
  tail call fastcc void @snd_ice1712_stdsp24_gpio_write(ptr noundef %ice, i8 noundef zeroext %56) #3
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #3
  br label %if.end190

if.end190:                                        ; preds = %if.then189, %for.body.if.end190_crit_edge
  %57 = trunc i32 %box.0308 to i8
  %58 = and i8 %57, 3
  br label %for.body194

for.body194:                                      ; preds = %snd_ice1712_stdsp24_box_channel.exit.for.body194_crit_edge, %if.end190
  %chn.0306 = phi i32 [ 0, %if.end190 ], [ %inc, %snd_ice1712_stdsp24_box_channel.exit.for.body194_crit_edge ]
  %59 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx185, align 2
  %conv197 = zext i16 %60 to i32
  %61 = lshr i32 %conv197, %chn.0306
  %62 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %spec1, align 4
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #3
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %63, align 4
  %66 = and i8 %65, -4
  %conv3.i301 = or i8 %66, %58
  store i8 %conv3.i301, ptr %63, align 4
  tail call fastcc void @snd_ice1712_stdsp24_gpio_write(ptr noundef %ice, i8 noundef zeroext %conv3.i301) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %chn.0306)
  %cmp.i = icmp eq i32 %chn.0306, 3
  br i1 %cmp.i, label %if.then.i, label %for.body194.if.end.i_crit_edge

for.body194.if.end.i_crit_edge:                   ; preds = %for.body194
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i:                                        ; preds = %for.body194
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx10.i = getelementptr [4 x i8], ptr %63, i32 0, i32 2
  %67 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx10.i, align 2
  %69 = and i8 %68, -2
  store i8 %69, ptr %arrayidx10.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body194.if.end.i_crit_edge
  %arrayidx18.i = getelementptr [4 x i8], ptr %63, i32 0, i32 2
  %70 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx18.i, align 2
  %72 = and i8 %71, -5
  %73 = trunc i32 %61 to i8
  %activate.tr.i302 = shl i8 %73, 2
  %74 = and i8 %activate.tr.i302, 4
  %conv23.i = or i8 %72, %74
  store i8 %conv23.i, ptr %arrayidx18.i, align 2
  tail call fastcc void @snd_ice1712_stdsp24_gpio_write(ptr noundef %ice, i8 noundef zeroext %conv23.i) #3
  %arrayidx29.i = getelementptr [4 x i8], ptr %63, i32 0, i32 3
  %75 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx29.i, align 1
  tail call fastcc void @snd_ice1712_stdsp24_gpio_write(ptr noundef %ice, i8 noundef zeroext %76) #3
  %arrayidx31.i = getelementptr [4 x i8], ptr %63, i32 0, i32 1
  %77 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx31.i, align 1
  %79 = or i8 %78, 7
  store i8 %79, ptr %arrayidx31.i, align 1
  %80 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx18.i, align 2
  %82 = or i8 %81, 1
  store i8 %82, ptr %arrayidx18.i, align 2
  tail call fastcc void @snd_ice1712_stdsp24_gpio_write(ptr noundef %ice, i8 noundef zeroext %79) #3
  %83 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx18.i, align 2
  tail call fastcc void @snd_ice1712_stdsp24_gpio_write(ptr noundef %ice, i8 noundef zeroext %84) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 21474800) #3
  br i1 %cmp.i, label %if.then68.i, label %if.else.i

if.then68.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %86 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx18.i, align 2
  %88 = and i8 %87, -2
  store i8 %88, ptr %arrayidx18.i, align 2
  br label %snd_ice1712_stdsp24_box_channel.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %chn.0306)
  %89 = icmp ult i32 %chn.0306, 3
  br i1 %89, label %switch.lookup, label %if.else.i.sw.epilog.i_crit_edge

if.else.i.sw.epilog.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  %switch.cast = trunc i32 %chn.0306 to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 -262658, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %90 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx31.i, align 1
  %92 = and i8 %91, %switch.masked
  store i8 %92, ptr %arrayidx31.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.else.i.sw.epilog.i_crit_edge
  %93 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx31.i, align 1
  br label %snd_ice1712_stdsp24_box_channel.exit

snd_ice1712_stdsp24_box_channel.exit:             ; preds = %sw.epilog.i, %if.then68.i
  %.sink.i = phi i8 [ %94, %sw.epilog.i ], [ %88, %if.then68.i ]
  tail call fastcc void @snd_ice1712_stdsp24_gpio_write(ptr noundef %ice, i8 noundef zeroext %.sink.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 21474800) #3
  %96 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx31.i, align 1
  %98 = or i8 %97, 7
  store i8 %98, ptr %arrayidx31.i, align 1
  %99 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx18.i, align 2
  %101 = or i8 %100, 1
  store i8 %101, ptr %arrayidx18.i, align 2
  tail call fastcc void @snd_ice1712_stdsp24_gpio_write(ptr noundef %ice, i8 noundef zeroext %98) #3
  %102 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx18.i, align 2
  tail call fastcc void @snd_ice1712_stdsp24_gpio_write(ptr noundef %ice, i8 noundef zeroext %103) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 21474800) #3
  %105 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx18.i, align 2
  %107 = and i8 %106, -5
  store i8 %107, ptr %arrayidx18.i, align 2
  tail call fastcc void @snd_ice1712_stdsp24_gpio_write(ptr noundef %ice, i8 noundef zeroext %107) #3
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #3
  %inc = add nuw nsw i32 %chn.0306, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %snd_ice1712_stdsp24_box_channel.exit.for.body194_crit_edge

snd_ice1712_stdsp24_box_channel.exit.for.body194_crit_edge: ; preds = %snd_ice1712_stdsp24_box_channel.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body194

for.end:                                          ; preds = %snd_ice1712_stdsp24_box_channel.exit
  %108 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx185, align 2
  %110 = and i16 %109, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool205.not = icmp eq i16 %110, 0
  br i1 %tobool205.not, label %for.end.for.inc208_crit_edge, label %if.then206

for.end.for.inc208_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc208

if.then206:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %111 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %spec1, align 4
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #3
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %112, align 4
  %115 = and i8 %114, -4
  %conv3.i305 = or i8 %115, %58
  store i8 %conv3.i305, ptr %112, align 4
  tail call fastcc void @snd_ice1712_stdsp24_gpio_write(ptr noundef %ice, i8 noundef zeroext %conv3.i305) #3
  %arrayidx9.i = getelementptr [4 x i8], ptr %112, i32 0, i32 2
  %116 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx9.i, align 2
  %118 = or i8 %117, 6
  store i8 %118, ptr %arrayidx9.i, align 2
  tail call fastcc void @snd_ice1712_stdsp24_gpio_write(ptr noundef %ice, i8 noundef zeroext %118) #3
  %arrayidx28.i = getelementptr [4 x i8], ptr %112, i32 0, i32 3
  %119 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx28.i, align 1
  tail call fastcc void @snd_ice1712_stdsp24_gpio_write(ptr noundef %ice, i8 noundef zeroext %120) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %121(i32 noundef 21474800) #3
  %122 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx9.i, align 2
  %124 = and i8 %123, -3
  store i8 %124, ptr %arrayidx9.i, align 2
  tail call fastcc void @snd_ice1712_stdsp24_gpio_write(ptr noundef %ice, i8 noundef zeroext %124) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %125(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %126 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %126(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %127(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %128(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %129(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %130(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %131(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %132(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %133(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %134(i32 noundef 214748000) #3
  %135 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx9.i, align 2
  %137 = or i8 %136, 2
  store i8 %137, ptr %arrayidx9.i, align 2
  tail call fastcc void @snd_ice1712_stdsp24_gpio_write(ptr noundef %ice, i8 noundef zeroext %137) #3
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #3
  br label %for.inc208

for.inc208:                                       ; preds = %if.then206, %for.end.for.inc208_crit_edge
  %inc209 = add nuw nsw i32 %box.0308, 1
  %exitcond310.not = icmp eq i32 %inc209, 4
  br i1 %exitcond310.not, label %for.inc208.cleanup_crit_edge, label %for.inc208.for.body_crit_edge

for.inc208.for.body_crit_edge:                    ; preds = %for.inc208
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc208.cleanup_crit_edge:                     ; preds = %for.inc208
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %for.inc208.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %for.inc208.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ice1712_stdsp24_gpio_write(ptr nocapture noundef readonly %ice, i8 noundef zeroext %byte) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i8 %byte, 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 21474800) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port.i, align 4
  %add.i = add i32 %3, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 32) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port.i, align 4
  %add5.i = add i32 %6, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %7 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %0) #3, !srcloc !40
  %8 = and i8 %byte, -33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 21474800) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i, align 4
  %add.i15 = add i32 %11, 3
  %and.i16 = and i32 %add.i15, 1048575
  %add1.i17 = or i32 %and.i16, -18874368
  %12 = inttoptr i32 %add1.i17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 32) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i, align 4
  %add5.i18 = add i32 %14, 4
  %and6.i19 = and i32 %add5.i18, 1048575
  %add7.i20 = or i32 %and6.i19, -18874368
  %15 = inttoptr i32 %add7.i20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %8) #3, !srcloc !40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 21474800) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %17 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port.i, align 4
  %add.i22 = add i32 %18, 3
  %and.i23 = and i32 %add.i22, 1048575
  %add1.i24 = or i32 %and.i23, -18874368
  %19 = inttoptr i32 %add1.i24 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 32) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port.i, align 4
  %add5.i25 = add i32 %21, 4
  %and6.i26 = and i32 %add5.i25, 1048575
  %add7.i27 = or i32 %and6.i26, -18874368
  %22 = inttoptr i32 %add7.i27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %0) #3, !srcloc !40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stdsp24_ak4524_lock(ptr nocapture noundef readonly %ak, i32 noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 6
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #3
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2
  %4 = ptrtoint ptr %saved.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %saved.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 1
  %5 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %write_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx5.i, align 4
  %8 = trunc i32 %3 to i8
  %conv1 = or i8 %8, 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %add.i = add i32 %10, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %11 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 34) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add5.i = add i32 %13, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %14 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv1) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i, align 4
  %add.i9 = add i32 %16, 3
  %and.i10 = and i32 %add.i9, 1048575
  %add1.i11 = or i32 %and.i10, -18874368
  %17 = inttoptr i32 %add1.i11 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 33) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i, align 4
  %add5.i12 = add i32 %19, 4
  %and6.i13 = and i32 %add5.i12, 1048575
  %add7.i14 = or i32 %and6.i13, -18874368
  %20 = inttoptr i32 %add7.i14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 -64) #3, !srcloc !40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ice1712_akm4xxx_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ice1712_akm4xxx_build_controls(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/ice1712/hoontech.c", i32 336, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ice1712/hoontech.c", i32 337, i32 12}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/ice1712/hoontech.c", i32 339, i32 20}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/ice1712/hoontech.c", i32 340, i32 20}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/ice1712/hoontech.c", i32 344, i32 11}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/ice1712/hoontech.c", i32 345, i32 12}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/ice1712/hoontech.c", i32 350, i32 11}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/ice1712/hoontech.c", i32 351, i32 12}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/ice1712/hoontech.c", i32 356, i32 11}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/ice1712/hoontech.c", i32 357, i32 12}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/ice1712/hoontech.c", i32 365, i32 11}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/ice1712/hoontech.c", i32 366, i32 12}
!24 = !{ptr @snd_ice1712_hoontech_cards, !25, !"snd_ice1712_hoontech_cards", i1 false, i1 false}
!25 = !{!"../sound/pci/ice1712/hoontech.c", i32 333, i32 30}
!26 = !{ptr @snd_ice1712_value_init.akm_stdsp24_mv, !27, !"akm_stdsp24_mv", i1 false, i1 false}
!27 = !{!"../sound/pci/ice1712/hoontech.c", i32 278, i32 34}
!28 = !{ptr @snd_ice1712_value_init.akm_stdsp24_mv_priv, !29, !"akm_stdsp24_mv_priv", i1 false, i1 false}
!29 = !{!"../sound/pci/ice1712/hoontech.c", i32 287, i32 41}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2154353082}
!40 = !{i64 4214587}
!41 = !{i64 2154353502}
