; ModuleID = '/llk/IR_all_yes/sound/pci/ice1712/wtm.c_pt.bc'
source_filename = "../sound/pci/ice1712/wtm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_ice1712_card_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.87, i32 }
%union.anon.87 = type { ptr }
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
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.73, [64 x i8] }
%union.anon.73 = type { %struct.anon.76, [40 x i8] }
%struct.anon.76 = type { i32, i32, [64 x i8], i64, i32 }

@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ESI Waveterminal 192M\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WT192M\00", [25 x i8] zeroinitializer }, align 32
@wtm_eeprom = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"g\80\F8\C1\9F\FF\7F\9F\FF\7F\16\80\00", [19 x i8] zeroinitializer }, align 32
@snd_vt1724_wtm_cards = dso_local global { [2 x %struct.snd_ice1712_card_info], [48 x i8] } { [2 x %struct.snd_ice1712_card_info] [%struct.snd_ice1712_card_info { i32 910775109, ptr @.str, ptr @.str.1, ptr null, ptr @wtm_init, ptr null, ptr @wtm_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 13, ptr @wtm_eeprom }, %struct.snd_ice1712_card_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@wtm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&spec->mute_mutex\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@stac9640_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.3, i32 0, i32 19, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @stac9460_dac_mute_get, ptr @stac9460_dac_mute_put, %union.anon.87 { ptr @db_scale_dac }, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.4, i32 0, i32 0, i32 0, ptr @stac9460_dac_vol_info, ptr @stac9460_dac_vol_get, ptr @stac9460_dac_vol_put, %union.anon.87 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 0, i32 2, ptr @stac9460_mic_sw_info, ptr @stac9460_mic_sw_get, ptr @stac9460_mic_sw_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.6, i32 0, i32 0, i32 8, ptr @snd_ctl_boolean_mono_info, ptr @stac9460_dac_mute_get, ptr @stac9460_dac_mute_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 19, i32 8, ptr @stac9460_dac_vol_info, ptr @stac9460_dac_vol_get, ptr @stac9460_dac_vol_put, %union.anon.87 { ptr @db_scale_dac }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.8, i32 0, i32 0, i32 2, ptr @snd_ctl_boolean_stereo_info, ptr @stac9460_adc_mute_get, ptr @stac9460_adc_mute_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 19, i32 2, ptr @stac9460_adc_vol_info, ptr @stac9460_adc_vol_get, ptr @stac9460_adc_vol_put, %union.anon.87 { ptr @db_scale_adc }, i32 0 }], [80 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@db_scale_dac = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -19125, i32 75], [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MIC/Line Input Enum\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Switch\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Volume\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC Switch\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC Volume\00", [21 x i8] zeroinitializer }, align 32
@db_scale_adc = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 150], [16 x i8] zeroinitializer }, align 32
@stac9460_mic_sw_info.texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.10, ptr @.str.11], [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Line In\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 624, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 625, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"wtm_eeprom\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 602, i32 28 }
@___asan_gen_.21 = private unnamed_addr constant [21 x i8] c"snd_vt1724_wtm_cards\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 621, i32 30 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 588, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"stac9640_controls\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 480, i32 38 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 485, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [13 x i8] c"db_scale_dac\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 474, i32 14 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 494, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 502, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 511, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 522, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 531, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 542, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [13 x i8] c"db_scale_adc\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 475, i32 14 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 389, i32 28 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 389, i32 41 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [27 x i8] c"../sound/pci/ice1712/wtm.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 389, i32 52 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @.str, ptr @.str.1, ptr @wtm_eeprom, ptr @snd_vt1724_wtm_cards, ptr @wtm_init.__key, ptr @.str.2, ptr @stac9640_controls, ptr @.str.3, ptr @db_scale_dac, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @db_scale_adc, ptr @stac9460_mic_sw_info.texts, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wtm_eeprom to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_wtm_cards to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wtm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9640_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_dac to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_adc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9460_mic_sw_info.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wtm_init(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_total_dacs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %0 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8, ptr %num_total_dacs, align 4
  %num_total_adcs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %1 = ptrtoint ptr %num_total_adcs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %num_total_adcs, align 4
  %force_rdma1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 32
  %2 = ptrtoint ptr %force_rdma1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %force_rdma1, align 4
  %bf.set = or i16 %bf.load, 512
  store i16 %bf.set, ptr %force_rdma1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 92) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %4 = ptrtoint ptr %spec1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %spec1, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @wtm_init.__key) #6
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 86, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 15, i8 noundef zeroext 17) #6
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 86, i8 noundef zeroext 15, i8 noundef zeroext 17) #6
  %set_pro_rate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 9
  %5 = ptrtoint ptr %set_pro_rate to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @stac9460_set_rate_val, ptr %set_pro_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wtm_add_controls(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %call = tail call ptr @snd_ctl_new1(ptr noundef nonnull @stac9640_controls, ptr noundef %ice) #6
  %call1 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %entry
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %call.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @stac9640_controls, i32 0, i32 1), ptr noundef %ice) #6
  %call1.1 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cmp2.1 = icmp slt i32 %call1.1, 0
  br i1 %cmp2.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %call.2 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @stac9640_controls, i32 0, i32 2), ptr noundef %ice) #6
  %call1.2 = tail call i32 @snd_ctl_add(ptr noundef %5, ptr noundef %call.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %cmp2.2 = icmp slt i32 %call1.2, 0
  br i1 %cmp2.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %call.3 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @stac9640_controls, i32 0, i32 3), ptr noundef %ice) #6
  %call1.3 = tail call i32 @snd_ctl_add(ptr noundef %7, ptr noundef %call.3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %cmp2.3 = icmp slt i32 %call1.3, 0
  br i1 %cmp2.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %call.4 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @stac9640_controls, i32 0, i32 4), ptr noundef %ice) #6
  %call1.4 = tail call i32 @snd_ctl_add(ptr noundef %9, ptr noundef %call.4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.4)
  %cmp2.4 = icmp slt i32 %call1.4, 0
  br i1 %cmp2.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %call.5 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @stac9640_controls, i32 0, i32 5), ptr noundef %ice) #6
  %call1.5 = tail call i32 @snd_ctl_add(ptr noundef %11, ptr noundef %call.5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.5)
  %cmp2.5 = icmp slt i32 %call1.5, 0
  br i1 %cmp2.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %call.6 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @stac9640_controls, i32 0, i32 6), ptr noundef %ice) #6
  %call1.6 = tail call i32 @snd_ctl_add(ptr noundef %13, ptr noundef %call.6) #6
  %14 = call i32 @llvm.smin.i32(i32 %call1.6, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %for.cond.5, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call1.1, %for.cond.cleanup_crit_edge ], [ %call1.2, %for.cond.1.cleanup_crit_edge ], [ %call1.3, %for.cond.2.cleanup_crit_edge ], [ %call1.4, %for.cond.3.cleanup_crit_edge ], [ %call1.5, %for.cond.4.cleanup_crit_edge ], [ %14, %for.cond.5 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac9460_set_rate_val(ptr noundef %ice, i32 noundef %rate) #0 align 64 {
entry:
  %changed = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %changed) #6
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp = icmp eq i32 %rate, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 48001, i32 %rate)
  %cmp2 = icmp ult i32 %rate, 48001
  call void @__sanitizer_cov_trace_const_cmp4(i32 96001, i32 %rate)
  %cmp5 = icmp ult i32 %rate, 96001
  %. = select i1 %cmp5, i8 17, i8 18
  %new.0 = select i1 %cmp2, i8 8, i8 %.
  %call.i = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 15) #6
  call void @__sanitizer_cov_trace_cmp1(i8 %call.i, i8 %new.0)
  %cmp11 = icmp eq i8 %call.i, %new.0
  br i1 %cmp11, label %if.else.cleanup_crit_edge, label %if.end14

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #6
  %2 = ptrtoint ptr %changed to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %changed, align 2
  call fastcc void @stac9460_dac_mute_all(ptr noundef %ice, i8 noundef zeroext 0, ptr noundef nonnull %changed)
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 15, i8 noundef zeroext %new.0) #6
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 86, i8 noundef zeroext 15, i8 noundef zeroext %new.0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 2147480) #6
  call fastcc void @stac9460_dac_mute_all(ptr noundef %ice, i8 noundef zeroext 1, ptr noundef nonnull %changed)
  tail call void @mutex_unlock(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %changed) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_vt1724_write_i2c(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stac9460_dac_mute_all(ptr noundef %ice, i8 noundef zeroext %mute, ptr nocapture noundef %change_mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %neg = xor i8 %mute, -1
  %shl5 = shl i8 %neg, 7
  br label %for.body

for.cond28.preheader:                             ; preds = %for.inc
  %0 = ptrtoint ptr %change_mask to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %change_mask, align 2
  %2 = and i16 %1, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool36.not = icmp eq i16 %2, 0
  br i1 %tobool36.not, label %for.cond28.preheader.for.inc71_crit_edge, label %if.then37

for.cond28.preheader.for.inc71_crit_edge:         ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc71

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %id.0114 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %change_mask to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %change_mask, align 2
  %conv = zext i16 %4 to i32
  %shl = shl nuw nsw i32 1, %id.0114
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  %5 = trunc i32 %id.0114 to i8
  %conv.i = add i8 %5, 2
  %call.i = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext %conv.i) #6
  %and8 = and i8 %call.i, 127
  %or = or i8 %and8, %shl5
  call void @__sanitizer_cov_trace_cmp1(i8 %or, i8 %call.i)
  %cmp12.not = icmp eq i8 %or, %call.i
  br i1 %cmp12.not, label %if.else20, label %if.then15

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext %conv.i, i8 noundef zeroext %or) #6
  %6 = ptrtoint ptr %change_mask to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %change_mask, align 2
  %8 = trunc i32 %shl to i16
  %conv19 = or i16 %7, %8
  br label %for.inc.sink.split

if.else20:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %change_mask to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %change_mask, align 2
  %11 = trunc i32 %shl to i16
  %12 = xor i16 %11, -1
  %conv25 = and i16 %10, %12
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else20, %if.then15
  %conv25.sink = phi i16 [ %conv25, %if.else20 ], [ %conv19, %if.then15 ]
  %13 = ptrtoint ptr %change_mask to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv25.sink, ptr %change_mask, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %id.0114, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.cond28.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.then37:                                        ; preds = %for.cond28.preheader
  %call.i112 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext 86, i8 noundef zeroext 2) #6
  %and50 = and i8 %call.i112, 127
  %or51 = or i8 %and50, %shl5
  call void @__sanitizer_cov_trace_cmp1(i8 %or51, i8 %call.i112)
  %cmp55.not = icmp eq i8 %or51, %call.i112
  br i1 %cmp55.not, label %if.else63, label %if.then58

if.then58:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 86, i8 noundef zeroext 2, i8 noundef zeroext %or51) #6
  %14 = ptrtoint ptr %change_mask to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %change_mask, align 2
  %conv62 = or i16 %15, 1
  br label %for.inc71.sink.split

if.else63:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %change_mask to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %change_mask, align 2
  %conv68 = and i16 %17, -2
  br label %for.inc71.sink.split

for.inc71.sink.split:                             ; preds = %if.else63, %if.then58
  %conv68.sink = phi i16 [ %conv68, %if.else63 ], [ %conv62, %if.then58 ]
  %18 = ptrtoint ptr %change_mask to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv68.sink, ptr %change_mask, align 2
  br label %for.inc71

for.inc71:                                        ; preds = %for.inc71.sink.split, %for.cond28.preheader.for.inc71_crit_edge
  %19 = ptrtoint ptr %change_mask to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %change_mask, align 2
  %21 = and i16 %20, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool36.not.1 = icmp eq i16 %21, 0
  br i1 %tobool36.not.1, label %for.inc71.for.inc71.1_crit_edge, label %if.then37.1

for.inc71.for.inc71.1_crit_edge:                  ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc71.1

if.then37.1:                                      ; preds = %for.inc71
  %call.i112.1 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext 86, i8 noundef zeroext 3) #6
  %and50.1 = and i8 %call.i112.1, 127
  %or51.1 = or i8 %and50.1, %shl5
  call void @__sanitizer_cov_trace_cmp1(i8 %or51.1, i8 %call.i112.1)
  %cmp55.not.1 = icmp eq i8 %or51.1, %call.i112.1
  br i1 %cmp55.not.1, label %if.else63.1, label %if.then58.1

if.then58.1:                                      ; preds = %if.then37.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 86, i8 noundef zeroext 3, i8 noundef zeroext %or51.1) #6
  %22 = ptrtoint ptr %change_mask to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %change_mask, align 2
  %conv62.1 = or i16 %23, 2
  br label %for.inc71.1.sink.split

if.else63.1:                                      ; preds = %if.then37.1
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %change_mask to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %change_mask, align 2
  %conv68.1 = and i16 %25, -3
  br label %for.inc71.1.sink.split

for.inc71.1.sink.split:                           ; preds = %if.else63.1, %if.then58.1
  %conv68.1.sink = phi i16 [ %conv68.1, %if.else63.1 ], [ %conv62.1, %if.then58.1 ]
  %26 = ptrtoint ptr %change_mask to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv68.1.sink, ptr %change_mask, align 2
  br label %for.inc71.1

for.inc71.1:                                      ; preds = %for.inc71.1.sink.split, %for.inc71.for.inc71.1_crit_edge
  %27 = ptrtoint ptr %change_mask to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %change_mask, align 2
  %29 = and i16 %28, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool36.not.2 = icmp eq i16 %29, 0
  br i1 %tobool36.not.2, label %for.inc71.1.for.inc71.2_crit_edge, label %if.then37.2

for.inc71.1.for.inc71.2_crit_edge:                ; preds = %for.inc71.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc71.2

if.then37.2:                                      ; preds = %for.inc71.1
  %call.i112.2 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext 86, i8 noundef zeroext 4) #6
  %and50.2 = and i8 %call.i112.2, 127
  %or51.2 = or i8 %and50.2, %shl5
  call void @__sanitizer_cov_trace_cmp1(i8 %or51.2, i8 %call.i112.2)
  %cmp55.not.2 = icmp eq i8 %or51.2, %call.i112.2
  br i1 %cmp55.not.2, label %if.else63.2, label %if.then58.2

if.then58.2:                                      ; preds = %if.then37.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 86, i8 noundef zeroext 4, i8 noundef zeroext %or51.2) #6
  %30 = ptrtoint ptr %change_mask to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %change_mask, align 2
  %conv62.2 = or i16 %31, 4
  br label %for.inc71.2.sink.split

if.else63.2:                                      ; preds = %if.then37.2
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %change_mask to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %change_mask, align 2
  %conv68.2 = and i16 %33, -5
  br label %for.inc71.2.sink.split

for.inc71.2.sink.split:                           ; preds = %if.else63.2, %if.then58.2
  %conv68.2.sink = phi i16 [ %conv68.2, %if.else63.2 ], [ %conv62.2, %if.then58.2 ]
  %34 = ptrtoint ptr %change_mask to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv68.2.sink, ptr %change_mask, align 2
  br label %for.inc71.2

for.inc71.2:                                      ; preds = %for.inc71.2.sink.split, %for.inc71.1.for.inc71.2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @snd_vt1724_read_i2c(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9460_dac_mute_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #6
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.if.then3_crit_edge

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.end:                                           ; preds = %entry
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %7, %9
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i, align 4
  %12 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %11) #6, !srcloc !48
  %and.i = and i32 %12, %sub.i
  %add = add i32 %and.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i)
  %phi.cmp = icmp slt i32 %and.i, 6
  br i1 %phi.cmp, label %if.end.if.then3_crit_edge, label %if.else5

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %entry.if.then3_crit_edge
  %idx.021 = phi i32 [ %add, %if.end.if.then3_crit_edge ], [ 2, %entry.if.then3_crit_edge ]
  %conv.i = trunc i32 %idx.021 to i8
  %call.i = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext %conv.i) #6
  br label %if.end7

if.else5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = trunc i32 %and.i to i8
  %conv.i17 = add i8 %13, -3
  %call.i18 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 86, i8 noundef zeroext %conv.i17) #6
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.then3
  %val.0 = phi i8 [ %call.i, %if.then3 ], [ %call.i18, %if.else5 ]
  %14 = xor i8 %val.0, -1
  %15 = lshr i8 %14, 7
  %and = zext i8 %15 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %16 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9460_dac_mute_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 2) #6
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %neg = xor i32 %5, -1
  %shl = shl i32 %neg, 7
  %conv = zext i8 %call.i to i32
  %and1 = and i32 %conv, 127
  %or = or i32 %shl, %and1
  %conv3 = and i32 %or, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv)
  %cmp.not = icmp eq i32 %conv3, %conv
  br i1 %cmp.not, label %if.then.if.end39_crit_edge, label %if.then7

if.then.if.end39_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv2 = trunc i32 %or to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 2, i8 noundef zeroext %conv2) #6
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 86, i8 noundef zeroext 2, i8 noundef zeroext %conv2) #6
  br label %if.end39

if.else:                                          ; preds = %entry
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %7, %9
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i, align 4
  %12 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %11) #6, !srcloc !48
  %and.i = and i32 %12, %sub.i
  %add = add i32 %and.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i)
  %cmp10 = icmp slt i32 %and.i, 6
  br i1 %cmp10, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i32 %add to i8
  %call.i68 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext %conv.i) #6
  br label %if.end16

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %13 = trunc i32 %and.i to i8
  %conv.i69 = add i8 %13, -3
  %call.i70 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 86, i8 noundef zeroext %conv.i69) #6
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then12
  %old.0 = phi i8 [ %call.i68, %if.then12 ], [ %call.i70, %if.else14 ]
  %value17 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %value17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value17, align 8
  %neg19 = xor i32 %15, -1
  %shl20 = shl i32 %neg19, 7
  %conv22 = zext i8 %old.0 to i32
  %and23 = and i32 %conv22, 127
  %or24 = or i32 %shl20, %and23
  %conv25 = trunc i32 %or24 to i8
  %conv26 = and i32 %or24, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv26, i32 %conv22)
  %cmp28.not = icmp eq i32 %conv26, %conv22
  br i1 %cmp28.not, label %if.end16.if.end39_crit_edge, label %if.then31

if.end16.if.end39_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then31:                                        ; preds = %if.end16
  br i1 %cmp10, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i71 = trunc i32 %add to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext %conv.i71, i8 noundef zeroext %conv25) #6
  br label %if.end39

if.else35:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %16 = trunc i32 %and.i to i8
  %conv.i72 = add i8 %16, -3
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 86, i8 noundef zeroext %conv.i72, i8 noundef zeroext %conv25) #6
  br label %if.end39

if.end39:                                         ; preds = %if.else35, %if.then34, %if.end16.if.end39_crit_edge, %if.then7, %if.then.if.end39_crit_edge
  %change.0.in = phi i32 [ 1, %if.then7 ], [ 0, %if.then.if.end39_crit_edge ], [ 1, %if.then34 ], [ 1, %if.else35 ], [ 0, %if.end16.if.end39_crit_edge ]
  ret i32 %change.0.in
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @stac9460_dac_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 127, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9460_dac_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.if.then2_crit_edge

entry.if.then2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end:                                           ; preds = %entry
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %5, %7
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 4
  %10 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %9) #6, !srcloc !48
  %and.i = and i32 %10, %sub.i
  %add = add i32 %and.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i)
  %phi.cmp = icmp slt i32 %and.i, 6
  br i1 %phi.cmp, label %if.end.if.then2_crit_edge, label %if.else5

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.then2:                                         ; preds = %if.end.if.then2_crit_edge, %entry.if.then2_crit_edge
  %idx.023 = phi i32 [ %add, %if.end.if.then2_crit_edge ], [ 2, %entry.if.then2_crit_edge ]
  %conv.i = trunc i32 %idx.023 to i8
  %call.i = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext %conv.i) #6
  br label %if.end10

if.else5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = trunc i32 %and.i to i8
  %conv.i19 = add i8 %11, -3
  %call.i20 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 86, i8 noundef zeroext %conv.i19) #6
  br label %if.end10

if.end10:                                         ; preds = %if.else5, %if.then2
  %vol.0.in = phi i8 [ %call.i, %if.then2 ], [ %call.i20, %if.else5 ]
  %vol.0 = and i8 %vol.0.in, 127
  %12 = xor i8 %vol.0, 127
  %sub12 = zext i8 %12 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub12, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9460_dac_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %conv = and i32 %5, 127
  %call.i = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 2) #6
  %and2 = and i8 %call.i, 127
  %sub = xor i8 %and2, 127
  %conv4 = zext i8 %sub to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv4)
  %cmp.not = icmp eq i32 %conv, %conv4
  br i1 %cmp.not, label %if.then.if.end63_crit_edge, label %if.then8

if.then.if.end63_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %6 = and i8 %call.i, -128
  %7 = trunc i32 %conv to i8
  %8 = or i8 %6, %7
  %conv13 = xor i8 %8, 127
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 2, i8 noundef zeroext %conv13) #6
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 86, i8 noundef zeroext 2, i8 noundef zeroext %conv13) #6
  br label %if.end63

if.else:                                          ; preds = %entry
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %9 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %11 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %10, %12
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %13 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count.i, align 4
  %15 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %14) #6, !srcloc !48
  %and.i = and i32 %15, %sub.i
  %value22 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %16 = ptrtoint ptr %value22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value22, align 8
  %conv25 = and i32 %17, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i)
  %cmp26 = icmp slt i32 %and.i, 6
  %18 = trunc i32 %and.i to i8
  br i1 %cmp26, label %if.end33, label %if.end33.thread

if.end33:                                         ; preds = %if.else
  %conv.i = add i8 %18, 3
  %call.i95 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext %conv.i) #6
  %and35 = and i8 %call.i95, 127
  %sub36 = xor i8 %and35, 127
  %conv38 = zext i8 %sub36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv25, i32 %conv38)
  %cmp40.not = icmp eq i32 %conv25, %conv38
  br i1 %cmp40.not, label %if.end33.if.end63_crit_edge, label %if.then46

if.end33.if.end63_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.end33.thread:                                  ; preds = %if.else
  %conv.i96 = add i8 %18, -3
  %call.i97 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 86, i8 noundef zeroext %conv.i96) #6
  %and35102 = and i8 %call.i97, 127
  %sub36103 = xor i8 %and35102, 127
  %conv38104 = zext i8 %sub36103 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv25, i32 %conv38104)
  %cmp40105.not = icmp eq i32 %conv25, %conv38104
  br i1 %cmp40105.not, label %if.end33.thread.if.end63_crit_edge, label %if.else53

if.end33.thread.if.end63_crit_edge:               ; preds = %if.end33.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then46:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %19 = and i8 %call.i95, -128
  %20 = trunc i32 %conv25 to i8
  %21 = or i8 %19, %20
  %conv52 = xor i8 %21, 127
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext %conv.i, i8 noundef zeroext %conv52) #6
  br label %if.end63

if.else53:                                        ; preds = %if.end33.thread
  call void @__sanitizer_cov_trace_pc() #8
  %22 = and i8 %call.i97, -128
  %23 = trunc i32 %conv25 to i8
  %24 = or i8 %22, %23
  %conv60 = xor i8 %24, 127
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 86, i8 noundef zeroext %conv.i96, i8 noundef zeroext %conv60) #6
  br label %if.end63

if.end63:                                         ; preds = %if.else53, %if.then46, %if.end33.thread.if.end63_crit_edge, %if.end33.if.end63_crit_edge, %if.then8, %if.then.if.end63_crit_edge
  %change.0.in = phi i32 [ 1, %if.then8 ], [ 0, %if.then.if.end63_crit_edge ], [ 1, %if.then46 ], [ 1, %if.else53 ], [ 0, %if.end33.if.end63_crit_edge ], [ 0, %if.end33.thread.if.end63_crit_edge ]
  ret i32 %change.0.in
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9460_mic_sw_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @stac9460_mic_sw_info.texts) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9460_mic_sw_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #6, !srcloc !48
  %and.i = and i32 %8, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 0
  %. = select i1 %cmp, i8 84, i8 86
  %call.i7 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext %., i8 noundef zeroext 13) #6
  %9 = lshr i8 %call.i7, 7
  %10 = zext i8 %9 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9460_mic_sw_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #6, !srcloc !48
  %and.i = and i32 %8, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 0
  %. = select i1 %cmp, i8 84, i8 86
  %call.i27 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext %., i8 noundef zeroext 13) #6
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  %shl = shl i32 %10, 7
  %conv = zext i8 %call.i27 to i32
  %and4 = and i32 %conv, 127
  %or = or i32 %shl, %and4
  %conv6 = and i32 %or, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6, i32 %conv)
  %cmp8 = icmp ne i32 %conv6, %conv
  br i1 %cmp8, label %if.then10, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv5 = trunc i32 %or to i8
  %.29 = select i1 %cmp, i8 84, i8 86
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext %.29, i8 noundef zeroext 13, i8 noundef zeroext %conv5) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %entry.if.end16_crit_edge
  %conv9 = zext i1 %cmp8 to i32
  ret i32 %conv9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_stereo_info(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9460_adc_mute_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #6, !srcloc !48
  %and.i = and i32 %8, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 0
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %. = select i1 %cmp, i8 84, i8 86
  %call.i32 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext %., i8 noundef zeroext 9) #6
  %9 = xor i8 %call.i32, -1
  %10 = lshr i8 %9, 7
  %and13 = zext i8 %10 to i32
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and13, ptr %value, align 4
  %call.i32.1 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext %., i8 noundef zeroext 10) #6
  %12 = xor i8 %call.i32.1, -1
  %13 = lshr i8 %12, 7
  %and13.1 = zext i8 %13 to i32
  %arrayidx15.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and13.1, ptr %arrayidx15.1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9460_adc_mute_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #6, !srcloc !48
  %and.i = and i32 %8, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 0
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br i1 %cmp, label %for.cond.preheader, label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %entry
  %call.i63 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 86, i8 noundef zeroext 9) #6
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %neg19 = xor i32 %10, -1
  %shl20 = shl i32 %neg19, 7
  %conv22 = zext i8 %call.i63 to i32
  %and23 = and i32 %conv22, 127
  %or24 = or i32 %shl20, %and23
  %conv26 = and i32 %or24, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv26, i32 %conv22)
  %cmp28.not = icmp eq i32 %conv26, %conv22
  br i1 %cmp28.not, label %for.cond11.preheader.for.inc33_crit_edge, label %if.then31

for.cond11.preheader.for.inc33_crit_edge:         ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc33

for.cond.preheader:                               ; preds = %entry
  %call.i = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 9) #6
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 4
  %neg = xor i32 %12, -1
  %shl = shl i32 %neg, 7
  %conv = zext i8 %call.i to i32
  %and4 = and i32 %conv, 127
  %or = or i32 %shl, %and4
  %conv6 = and i32 %or, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6, i32 %conv)
  %cmp8.not = icmp eq i32 %conv6, %conv
  br i1 %cmp8.not, label %for.cond.preheader.for.inc_crit_edge, label %if.then10

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then10:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %conv5 = trunc i32 %or to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 9, i8 noundef zeroext %conv5) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %for.cond.preheader.for.inc_crit_edge
  %call.i.1 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 10) #6
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1, align 4
  %neg.1 = xor i32 %14, -1
  %shl.1 = shl i32 %neg.1, 7
  %conv.1 = zext i8 %call.i.1 to i32
  %and4.1 = and i32 %conv.1, 127
  %or.1 = or i32 %shl.1, %and4.1
  %conv6.1 = and i32 %or.1, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6.1, i32 %conv.1)
  %cmp8.1.not = icmp eq i32 %conv6.1, %conv.1
  br i1 %cmp8.1.not, label %for.inc.if.end36_crit_edge, label %for.inc.if.end36.sink.split_crit_edge

for.inc.if.end36.sink.split_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.sink.split

for.inc.if.end36_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then31:                                        ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %conv25 = trunc i32 %or24 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 86, i8 noundef zeroext 9, i8 noundef zeroext %conv25) #6
  br label %for.inc33

for.inc33:                                        ; preds = %if.then31, %for.cond11.preheader.for.inc33_crit_edge
  %call.i63.1 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 86, i8 noundef zeroext 10) #6
  %arrayidx18.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx18.1, align 4
  %neg19.1 = xor i32 %16, -1
  %shl20.1 = shl i32 %neg19.1, 7
  %conv22.1 = zext i8 %call.i63.1 to i32
  %and23.1 = and i32 %conv22.1, 127
  %or24.1 = or i32 %shl20.1, %and23.1
  %conv26.1 = and i32 %or24.1, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv26.1, i32 %conv22.1)
  %cmp28.1.not = icmp eq i32 %conv26.1, %conv22.1
  br i1 %cmp28.1.not, label %for.inc33.if.end36_crit_edge, label %for.inc33.if.end36.sink.split_crit_edge

for.inc33.if.end36.sink.split_crit_edge:          ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.sink.split

for.inc33.if.end36_crit_edge:                     ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end36.sink.split:                              ; preds = %for.inc33.if.end36.sink.split_crit_edge, %for.inc.if.end36.sink.split_crit_edge
  %or24.1.sink = phi i32 [ %or.1, %for.inc.if.end36.sink.split_crit_edge ], [ %or24.1, %for.inc33.if.end36.sink.split_crit_edge ]
  %.sink = phi i8 [ 84, %for.inc.if.end36.sink.split_crit_edge ], [ 86, %for.inc33.if.end36.sink.split_crit_edge ]
  %conv25.1 = trunc i32 %or24.1.sink to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext %.sink, i8 noundef zeroext 10, i8 noundef zeroext %conv25.1) #6
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %for.inc33.if.end36_crit_edge, %for.inc.if.end36_crit_edge
  %change.2.in = phi i32 [ 0, %for.inc.if.end36_crit_edge ], [ 0, %for.inc33.if.end36_crit_edge ], [ 1, %if.end36.sink.split ]
  ret i32 %change.2.in
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @stac9460_adc_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 15, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9460_adc_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #6, !srcloc !48
  %and.i = and i32 %8, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 0
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %. = select i1 %cmp, i8 84, i8 86
  %call.i36 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext %., i8 noundef zeroext 9) #6
  %9 = and i8 %call.i36, 15
  %10 = xor i8 %9, 15
  %sub16 = zext i8 %10 to i32
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub16, ptr %value, align 4
  %call.i36.1 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext %., i8 noundef zeroext 10) #6
  %12 = and i8 %call.i36.1, 15
  %13 = xor i8 %12, 15
  %sub16.1 = zext i8 %13 to i32
  %arrayidx18.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub16.1, ptr %arrayidx18.1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9460_adc_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #6, !srcloc !48
  %and.i = and i32 %8, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 0
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %conv = and i32 %10, 15
  br i1 %cmp, label %for.cond.preheader, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %entry
  %call.i74 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 86, i8 noundef zeroext 9) #6
  %sub28 = sub i8 15, %call.i74
  %conv30 = zext i8 %sub28 to i32
  %and31 = and i32 %conv30, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and31, i32 %conv)
  %cmp33.not = icmp eq i32 %and31, %conv
  br i1 %cmp33.not, label %for.cond17.preheader.for.inc44_crit_edge, label %if.then36

for.cond17.preheader.for.inc44_crit_edge:         ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc44

for.cond.preheader:                               ; preds = %entry
  %call.i = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 9) #6
  %sub = sub i8 15, %call.i
  %conv6 = zext i8 %sub to i32
  %and7 = and i32 %conv6, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and7, i32 %conv)
  %cmp9.not = icmp eq i32 %and7, %conv
  br i1 %cmp9.not, label %for.cond.preheader.for.inc_crit_edge, label %if.then11

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then11:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %and15 = and i32 %conv6, 240
  %11 = or i32 %and15, %conv
  %12 = trunc i32 %11 to i8
  %conv16 = xor i8 %12, 15
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 9, i8 noundef zeroext %conv16) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %for.cond.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1, align 4
  %conv.1 = and i32 %14, 15
  %call.i.1 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 10) #6
  %sub.1 = sub i8 15, %call.i.1
  %conv6.1 = zext i8 %sub.1 to i32
  %and7.1 = and i32 %conv6.1, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and7.1, i32 %conv.1)
  %cmp9.1.not = icmp eq i32 %and7.1, %conv.1
  br i1 %cmp9.1.not, label %for.inc.if.end47_crit_edge, label %for.inc.if.end47.sink.split_crit_edge

for.inc.if.end47.sink.split_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.sink.split

for.inc.if.end47_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then36:                                        ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %and40 = and i32 %conv30, 240
  %15 = or i32 %and40, %conv
  %16 = trunc i32 %15 to i8
  %conv42 = xor i8 %16, 15
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 86, i8 noundef zeroext 9, i8 noundef zeroext %conv42) #6
  br label %for.inc44

for.inc44:                                        ; preds = %if.then36, %for.cond17.preheader.for.inc44_crit_edge
  %arrayidx23.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx23.1, align 4
  %conv25.1 = and i32 %18, 15
  %call.i74.1 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 86, i8 noundef zeroext 10) #6
  %sub28.1 = sub i8 15, %call.i74.1
  %conv30.1 = zext i8 %sub28.1 to i32
  %and31.1 = and i32 %conv30.1, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and31.1, i32 %conv25.1)
  %cmp33.1.not = icmp eq i32 %and31.1, %conv25.1
  br i1 %cmp33.1.not, label %for.inc44.if.end47_crit_edge, label %for.inc44.if.end47.sink.split_crit_edge

for.inc44.if.end47.sink.split_crit_edge:          ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.sink.split

for.inc44.if.end47_crit_edge:                     ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.end47.sink.split:                              ; preds = %for.inc44.if.end47.sink.split_crit_edge, %for.inc.if.end47.sink.split_crit_edge
  %conv30.1.sink = phi i32 [ %conv6.1, %for.inc.if.end47.sink.split_crit_edge ], [ %conv30.1, %for.inc44.if.end47.sink.split_crit_edge ]
  %conv25.1.sink = phi i32 [ %conv.1, %for.inc.if.end47.sink.split_crit_edge ], [ %conv25.1, %for.inc44.if.end47.sink.split_crit_edge ]
  %.sink = phi i8 [ 84, %for.inc.if.end47.sink.split_crit_edge ], [ 86, %for.inc44.if.end47.sink.split_crit_edge ]
  %and40.1 = and i32 %conv30.1.sink, 240
  %19 = or i32 %and40.1, %conv25.1.sink
  %20 = trunc i32 %19 to i8
  %conv42.1 = xor i8 %20, 15
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext %.sink, i8 noundef zeroext 10, i8 noundef zeroext %conv42.1) #6
  br label %if.end47

if.end47:                                         ; preds = %if.end47.sink.split, %for.inc44.if.end47_crit_edge, %for.inc.if.end47_crit_edge
  %change.2.in = phi i32 [ 0, %for.inc.if.end47_crit_edge ], [ 0, %for.inc44.if.end47_crit_edge ], [ 1, %if.end47.sink.split ]
  ret i32 %change.2.in
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/ice1712/wtm.c", i32 624, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ice1712/wtm.c", i32 625, i32 12}
!4 = !{ptr @snd_vt1724_wtm_cards, !5, !"snd_vt1724_wtm_cards", i1 false, i1 false}
!5 = !{!"../sound/pci/ice1712/wtm.c", i32 621, i32 30}
!6 = distinct !{null, !7, !"stac_inits_wtm", i1 false, i1 false}
!7 = !{!"../sound/pci/ice1712/wtm.c", i32 570, i32 30}
!8 = !{ptr @wtm_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../sound/pci/ice1712/wtm.c", i32 588, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/pci/ice1712/wtm.c", i32 485, i32 11}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/pci/ice1712/wtm.c", i32 494, i32 11}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/pci/ice1712/wtm.c", i32 502, i32 11}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/pci/ice1712/wtm.c", i32 511, i32 11}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/pci/ice1712/wtm.c", i32 522, i32 11}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/pci/ice1712/wtm.c", i32 531, i32 11}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/pci/ice1712/wtm.c", i32 542, i32 11}
!25 = !{ptr @stac9640_controls, !26, !"stac9640_controls", i1 false, i1 false}
!26 = !{!"../sound/pci/ice1712/wtm.c", i32 480, i32 38}
!27 = !{ptr @db_scale_dac, !28, !"db_scale_dac", i1 false, i1 false}
!28 = !{!"../sound/pci/ice1712/wtm.c", i32 474, i32 14}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/pci/ice1712/wtm.c", i32 389, i32 41}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/pci/ice1712/wtm.c", i32 389, i32 52}
!33 = !{ptr @stac9460_mic_sw_info.texts, !34, !"texts", i1 false, i1 false}
!34 = !{!"../sound/pci/ice1712/wtm.c", i32 389, i32 28}
!35 = !{ptr @db_scale_adc, !36, !"db_scale_adc", i1 false, i1 false}
!36 = !{!"../sound/pci/ice1712/wtm.c", i32 475, i32 14}
!37 = !{ptr @wtm_eeprom, !38, !"wtm_eeprom", i1 false, i1 false}
!38 = !{!"../sound/pci/ice1712/wtm.c", i32 602, i32 28}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 650733, i64 650750}
