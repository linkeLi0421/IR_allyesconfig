; ModuleID = '/llk/IR_all_yes/sound/pci/ice1712/maya44.c_pt.bc'
source_filename = "../sound/pci/ice1712/maya44.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_ice1712_card_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.87, i32 }
%union.anon.87 = type { ptr }
%struct.maya_vol_info = type { i32, [2 x i8], i16, i16, i16, i16, [2 x i8] }
%struct.snd_maya44 = type { ptr, [2 x %struct.snd_wm8776], %struct.mutex }
%struct.snd_wm8776 = type { i8, [24 x i16], [3 x [2 x i8]], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_ice1712 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, [6 x ptr], ptr, ptr, ptr, i32, i32, [6 x i32], [6 x i32], i32, i32, ptr, [2 x ptr], %struct.spinlock, ptr, %struct.snd_ice1712_eeprom, ptr, [20 x i32], i16, i32, i32, i32, %struct.mutex, [4 x ptr], ptr, i32, ptr, %struct.snd_ice1712_spdif, %struct.mutex, ptr, ptr, i32, %struct.ice1712_gpio, %struct.mutex, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i8, i32, i8, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_ice1712_eeprom = type { i32, i8, i8, [32 x i8], i32, i32, i32 }
%struct.snd_ice1712_spdif = type { i8, i8, ptr, %struct.snd_ice1712_spdif_ops }
%struct.snd_ice1712_spdif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ice1712_gpio = type { i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.73, [64 x i8] }
%union.anon.73 = type { %struct.anon.76, [40 x i8] }
%struct.anon.76 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ESI Maya44\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"maya44\00", [25 x i8] zeroinitializer }, align 32
@maya44_eeprom = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"E\80\F8\C3\FF\FF\FF\00\00\00$\00\00", [19 x i8] zeroinitializer }, align 32
@snd_vt1724_maya44_cards = dso_local global { [2 x %struct.snd_ice1712_card_info], [48 x i8] } { [2 x %struct.snd_ice1712_card_info] [%struct.snd_ice1712_card_info { i32 875648065, ptr @.str, ptr @.str.1, ptr null, ptr @maya44_init, ptr null, ptr @maya44_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 13, ptr @maya44_eeprom }, %struct.snd_ice1712_card_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@maya44_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&chip->mutex\00", [19 x i8] zeroinitializer }, align 32
@dac_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @rates, i32 8, i32 0 }, [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wm8776_init.inits_wm8776 = internal constant { [32 x i16], [32 x i8] } { [32 x i16] [i16 2, i16 256, i16 5, i16 256, i16 6, i16 0, i16 7, i16 145, i16 8, i16 0, i16 9, i16 0, i16 10, i16 34, i16 11, i16 34, i16 12, i16 66, i16 13, i16 0, i16 14, i16 256, i16 15, i16 256, i16 17, i16 0, i16 21, i16 0, i16 22, i16 1, i16 255, i16 255], [32 x i8] zeroinitializer }, align 32
@rates = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000, i32 176400, i32 192000], [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/pci/ice1712/maya44.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@maya_controls = internal constant { [9 x %struct.snd_kcontrol_new], [112 x i8] } { [9 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 19, i32 2, ptr @maya_vol_info, ptr @maya_vol_get, ptr @maya_vol_put, %union.anon.87 { ptr @db_scale_hp }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.6, i32 0, i32 19, i32 2, ptr @maya_vol_info, ptr @maya_vol_get, ptr @maya_vol_put, %union.anon.87 { ptr @db_scale_dac }, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 19, i32 2, ptr @maya_vol_info, ptr @maya_vol_get, ptr @maya_vol_put, %union.anon.87 { ptr @db_scale_adc }, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.8, i32 0, i32 0, i32 2, ptr @snd_ctl_boolean_mono_info, ptr @maya_sw_get, ptr @maya_sw_put, %union.anon.87 zeroinitializer, i32 71168 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 0, i32 2, ptr @snd_ctl_boolean_mono_info, ptr @maya_sw_get, ptr @maya_sw_put, %union.anon.87 zeroinitializer, i32 267777 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 0, i32 0, ptr @maya_rec_src_info, ptr @maya_rec_src_get, ptr @maya_rec_src_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @maya_gpio_sw_get, ptr @maya_gpio_sw_put, %union.anon.87 zeroinitializer, i32 258 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.12, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @maya_gpio_sw_get, ptr @maya_gpio_sw_put, %union.anon.87 zeroinitializer, i32 261 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 4, ptr @maya_pb_route_info, ptr @maya_pb_route_get, ptr @maya_pb_route_put, %union.anon.87 zeroinitializer, i32 0 }], [112 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Crossmix Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@db_scale_hp = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7400, i32 65636], [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@db_scale_dac = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12750, i32 65586], [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Line Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@db_scale_adc = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -2100, i32 65586], [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bypass Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Source\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Mic Phantom Power Switch\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SPDIF Capture Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"H/W Playback Route\00", [45 x i8] zeroinitializer }, align 32
@vol_info = internal constant { [3 x %struct.maya_vol_info], [48 x i8] } { [3 x %struct.maya_vol_info] [%struct.maya_vol_info { i32 80, [2 x i8] c"\00\01", i16 127, i16 48, i16 0, i16 384, [2 x i8] zeroinitializer }, %struct.maya_vol_info { i32 255, [2 x i8] c"\03\04", i16 255, i16 1, i16 0, i16 256, [2 x i8] zeroinitializer }, %struct.maya_vol_info { i32 91, [2 x i8] c"\0E\0F", i16 255, i16 165, i16 165, i16 256, [2 x i8] c"\80@" }], [48 x i8] zeroinitializer }, align 32
@maya_rec_src_info.texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.14, ptr @.str.15], [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Line\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@maya_pb_route_info.texts = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCM Out\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Input 1\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Input 2\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Input 3\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Input 4\00", [24 x i8] zeroinitializer }, align 32
@maya_pb_route_shift.shift = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\08\14\00\03\0B\17\0E\1A\11\1D", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 740, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 741, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"maya44_eeprom\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 715, i32 28 }
@___asan_gen_.30 = private unnamed_addr constant [24 x i8] c"snd_vt1724_maya44_cards\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 737, i32 30 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 680, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [10 x i8] c"dac_rates\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 655, i32 48 }
@___asan_gen_.42 = private unnamed_addr constant [13 x i8] c"inits_wm8776\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 537, i32 30 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"rates\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 650, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 619, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"maya_controls\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 427, i32 38 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 429, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [12 x i8] c"db_scale_hp\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 151, i32 14 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 441, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant [13 x i8] c"db_scale_dac\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 153, i32 14 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 453, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant [13 x i8] c"db_scale_adc\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 155, i32 14 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 465, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 475, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 485, i32 11 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 492, i32 11 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 500, i32 11 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 509, i32 11 }
@___asan_gen_.93 = private unnamed_addr constant [9 x i8] c"vol_info\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 119, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 346, i32 28 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 346, i32 40 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 346, i32 48 }
@___asan_gen_.105 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 387, i32 28 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 388, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 389, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 389, i32 14 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 389, i32 25 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 389, i32 36 }
@___asan_gen_.123 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@___asan_gen_.124 = private constant [30 x i8] c"../sound/pci/ice1712/maya44.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 397, i32 29 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @.str, ptr @.str.1, ptr @maya44_eeprom, ptr @snd_vt1724_maya44_cards, ptr @maya44_init.__key, ptr @.str.2, ptr @dac_rates, ptr @wm8776_init.inits_wm8776, ptr @rates, ptr @.str.3, ptr @.str.4, ptr @maya_controls, ptr @.str.5, ptr @db_scale_hp, ptr @.str.6, ptr @db_scale_dac, ptr @.str.7, ptr @db_scale_adc, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @vol_info, ptr @maya_rec_src_info.texts, ptr @.str.14, ptr @.str.15, ptr @maya_pb_route_info.texts, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @maya_pb_route_shift.shift], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maya44_eeprom to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_maya44_cards to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maya44_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8776_init.inits_wm8776 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maya_controls to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_hp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_dac to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_adc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vol_info to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maya_rec_src_info.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maya_pb_route_info.texts to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maya_pb_route_shift.shift to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maya44_init(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 216) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %mutex = getelementptr inbounds %struct.snd_maya44, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @maya44_init.__key) #5
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ice, ptr %call7.i.i, align 8
  %spec = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %2 = ptrtoint ptr %spec to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %spec, align 4
  %num_total_dacs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %3 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %num_total_dacs, align 4
  %num_total_adcs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %4 = ptrtoint ptr %num_total_adcs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %num_total_adcs, align 4
  %akm_codecs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 39
  %5 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %akm_codecs, align 4
  %arrayidx = getelementptr %struct.snd_maya44, ptr %call7.i.i, i32 0, i32 1, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 52, ptr %arrayidx, align 4
  %switch_bits.i = getelementptr %struct.snd_maya44, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %switch_bits.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %switch_bits.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.body
  %8 = phi i16 [ 2, %do.body ], [ %17, %while.body.i.while.body.i_crit_edge ]
  %ptr.010.i = phi ptr [ @wm8776_init.inits_wm8776, %do.body ], [ %incdec.ptr5.i, %while.body.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i16, ptr %ptr.010.i, i32 1
  %conv4.i = trunc i16 %8 to i8
  %incdec.ptr5.i = getelementptr i16, ptr %ptr.010.i, i32 2
  %9 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %incdec.ptr.i, align 2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 4
  %conv4.mask.i = and i16 %8, 255
  %conv.i.i = zext i16 %conv4.mask.i to i32
  %shl.i.i = shl i8 %conv4.i, 1
  %13 = lshr i16 %10, 8
  %14 = trunc i16 %13 to i8
  %and.i.i = and i8 %14, 1
  %or.i.i = or i8 %and.i.i, %shl.i.i
  %conv5.i.i = trunc i16 %10 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext %12, i8 noundef zeroext %or.i.i, i8 noundef zeroext %conv5.i.i) #5
  %arrayidx.i.i = getelementptr %struct.snd_maya44, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1, i32 %conv.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %10, ptr %arrayidx.i.i, align 2
  %16 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %incdec.ptr5.i, align 2
  %cmp.not.i = icmp eq i16 %17, 255
  br i1 %cmp.not.i, label %wm8776_init.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

wm8776_init.exit:                                 ; preds = %while.body.i
  %arrayidx.i.i25 = getelementptr %struct.snd_maya44, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1, i32 21
  %18 = ptrtoint ptr %arrayidx.i.i25 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i.i25, align 8
  %and.i.i26 = and i16 %19, -32
  %or.i.i27 = or i16 %and.i.i26, 2
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i.i27, i16 %19)
  %cmp.not.i.i = icmp eq i16 %or.i.i27, %19
  br i1 %cmp.not.i.i, label %wm8776_init.exit.wm8776_select_input.exit_crit_edge, label %if.then.i.i

wm8776_init.exit.wm8776_select_input.exit_crit_edge: ; preds = %wm8776_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8776_select_input.exit

if.then.i.i:                                      ; preds = %wm8776_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i, align 8
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 4
  %24 = lshr i16 %19, 8
  %25 = trunc i16 %24 to i8
  %and.i.i.i = and i8 %25, 1
  %or.i.i.i = or i8 %and.i.i.i, 42
  %conv5.i.i.i = trunc i16 %or.i.i27 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %21, i8 noundef zeroext %23, i8 noundef zeroext %or.i.i.i, i8 noundef zeroext %conv5.i.i.i) #5
  %26 = ptrtoint ptr %arrayidx.i.i25 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %or.i.i27, ptr %arrayidx.i.i25, align 8
  br label %wm8776_select_input.exit

wm8776_select_input.exit:                         ; preds = %if.then.i.i, %wm8776_init.exit.wm8776_select_input.exit_crit_edge
  %arrayidx.1 = getelementptr %struct.snd_maya44, ptr %call7.i.i, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 54, ptr %arrayidx.1, align 8
  %switch_bits.i.1 = getelementptr %struct.snd_maya44, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 3
  %28 = ptrtoint ptr %switch_bits.i.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %switch_bits.i.1, align 8
  br label %while.body.i.1

while.body.i.1:                                   ; preds = %while.body.i.1.while.body.i.1_crit_edge, %wm8776_select_input.exit
  %29 = phi i16 [ 2, %wm8776_select_input.exit ], [ %38, %while.body.i.1.while.body.i.1_crit_edge ]
  %ptr.010.i.1 = phi ptr [ @wm8776_init.inits_wm8776, %wm8776_select_input.exit ], [ %incdec.ptr5.i.1, %while.body.i.1.while.body.i.1_crit_edge ]
  %incdec.ptr.i.1 = getelementptr i16, ptr %ptr.010.i.1, i32 1
  %conv4.i.1 = trunc i16 %29 to i8
  %incdec.ptr5.i.1 = getelementptr i16, ptr %ptr.010.i.1, i32 2
  %30 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %incdec.ptr.i.1, align 2
  %32 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.1, align 8
  %conv4.mask.i.1 = and i16 %29, 255
  %conv.i.i.1 = zext i16 %conv4.mask.i.1 to i32
  %shl.i.i.1 = shl i8 %conv4.i.1, 1
  %34 = lshr i16 %31, 8
  %35 = trunc i16 %34 to i8
  %and.i.i.1 = and i8 %35, 1
  %or.i.i.1 = or i8 %and.i.i.1, %shl.i.i.1
  %conv5.i.i.1 = trunc i16 %31 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext %33, i8 noundef zeroext %or.i.i.1, i8 noundef zeroext %conv5.i.i.1) #5
  %arrayidx.i.i.1 = getelementptr %struct.snd_maya44, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1, i32 %conv.i.i.1
  %36 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %31, ptr %arrayidx.i.i.1, align 2
  %37 = ptrtoint ptr %incdec.ptr5.i.1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %incdec.ptr5.i.1, align 2
  %cmp.not.i.1 = icmp eq i16 %38, 255
  br i1 %cmp.not.i.1, label %wm8776_init.exit.1, label %while.body.i.1.while.body.i.1_crit_edge

while.body.i.1.while.body.i.1_crit_edge:          ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.1

wm8776_init.exit.1:                               ; preds = %while.body.i.1
  %arrayidx.i.i25.1 = getelementptr %struct.snd_maya44, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1, i32 21
  %39 = ptrtoint ptr %arrayidx.i.i25.1 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.i.i25.1, align 4
  %and.i.i26.1 = and i16 %40, -32
  %or.i.i27.1 = or i16 %and.i.i26.1, 2
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i.i27.1, i16 %40)
  %cmp.not.i.i.1 = icmp eq i16 %or.i.i27.1, %40
  br i1 %cmp.not.i.i.1, label %wm8776_init.exit.1.wm8776_select_input.exit.1_crit_edge, label %if.then.i.i.1

wm8776_init.exit.1.wm8776_select_input.exit.1_crit_edge: ; preds = %wm8776_init.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8776_select_input.exit.1

if.then.i.i.1:                                    ; preds = %wm8776_init.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call7.i.i, align 8
  %43 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.1, align 8
  %45 = lshr i16 %40, 8
  %46 = trunc i16 %45 to i8
  %and.i.i.i.1 = and i8 %46, 1
  %or.i.i.i.1 = or i8 %and.i.i.i.1, 42
  %conv5.i.i.i.1 = trunc i16 %or.i.i27.1 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %42, i8 noundef zeroext %44, i8 noundef zeroext %or.i.i.i.1, i8 noundef zeroext %conv5.i.i.i.1) #5
  %47 = ptrtoint ptr %arrayidx.i.i25.1 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %or.i.i27.1, ptr %arrayidx.i.i25.1, align 4
  br label %wm8776_select_input.exit.1

wm8776_select_input.exit.1:                       ; preds = %if.then.i.i.1, %wm8776_init.exit.1.wm8776_select_input.exit.1_crit_edge
  %hw_rates = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 38
  %48 = ptrtoint ptr %hw_rates to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @dac_rates, ptr %hw_rates, align 4
  %set_pro_rate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 9
  %49 = ptrtoint ptr %set_pro_rate to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @set_rate, ptr %set_pro_rate, align 4
  %force_rdma1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 32
  %50 = ptrtoint ptr %force_rdma1 to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load = load i16, ptr %force_rdma1, align 4
  %bf.set5 = or i16 %bf.load, 576
  store i16 %bf.set5, ptr %force_rdma1, align 4
  br label %cleanup

cleanup:                                          ; preds = %wm8776_select_input.exit.1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %wm8776_select_input.exit.1 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maya44_add_controls(ptr nocapture noundef readonly %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %spec = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %2 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec, align 4
  %call = tail call ptr @snd_ctl_new1(ptr noundef nonnull @maya_controls, ptr noundef %3) #5
  %call1 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond:                                         ; preds = %entry
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %6 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spec, align 4
  %call.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([9 x %struct.snd_kcontrol_new], ptr @maya_controls, i32 0, i32 1), ptr noundef %7) #5
  %call1.1 = tail call i32 @snd_ctl_add(ptr noundef %5, ptr noundef %call.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cmp2.1 = icmp slt i32 %call1.1, 0
  br i1 %cmp2.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %10 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spec, align 4
  %call.2 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([9 x %struct.snd_kcontrol_new], ptr @maya_controls, i32 0, i32 2), ptr noundef %11) #5
  %call1.2 = tail call i32 @snd_ctl_add(ptr noundef %9, ptr noundef %call.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %cmp2.2 = icmp slt i32 %call1.2, 0
  br i1 %cmp2.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %14 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spec, align 4
  %call.3 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([9 x %struct.snd_kcontrol_new], ptr @maya_controls, i32 0, i32 3), ptr noundef %15) #5
  %call1.3 = tail call i32 @snd_ctl_add(ptr noundef %13, ptr noundef %call.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %cmp2.3 = icmp slt i32 %call1.3, 0
  br i1 %cmp2.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %18 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spec, align 4
  %call.4 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([9 x %struct.snd_kcontrol_new], ptr @maya_controls, i32 0, i32 4), ptr noundef %19) #5
  %call1.4 = tail call i32 @snd_ctl_add(ptr noundef %17, ptr noundef %call.4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.4)
  %cmp2.4 = icmp slt i32 %call1.4, 0
  br i1 %cmp2.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %22 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spec, align 4
  %call.5 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([9 x %struct.snd_kcontrol_new], ptr @maya_controls, i32 0, i32 5), ptr noundef %23) #5
  %call1.5 = tail call i32 @snd_ctl_add(ptr noundef %21, ptr noundef %call.5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.5)
  %cmp2.5 = icmp slt i32 %call1.5, 0
  br i1 %cmp2.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %24 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card, align 4
  %26 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spec, align 4
  %call.6 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([9 x %struct.snd_kcontrol_new], ptr @maya_controls, i32 0, i32 6), ptr noundef %27) #5
  %call1.6 = tail call i32 @snd_ctl_add(ptr noundef %25, ptr noundef %call.6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.6)
  %cmp2.6 = icmp slt i32 %call1.6, 0
  br i1 %cmp2.6, label %for.cond.5.cleanup_crit_edge, label %for.cond.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %28 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card, align 4
  %30 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %spec, align 4
  %call.7 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([9 x %struct.snd_kcontrol_new], ptr @maya_controls, i32 0, i32 7), ptr noundef %31) #5
  %call1.7 = tail call i32 @snd_ctl_add(ptr noundef %29, ptr noundef %call.7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.7)
  %cmp2.7 = icmp slt i32 %call1.7, 0
  br i1 %cmp2.7, label %for.cond.6.cleanup_crit_edge, label %for.cond.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card, align 4
  %34 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %spec, align 4
  %call.8 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([9 x %struct.snd_kcontrol_new], ptr @maya_controls, i32 0, i32 8), ptr noundef %35) #5
  %call1.8 = tail call i32 @snd_ctl_add(ptr noundef %33, ptr noundef %call.8) #5
  %36 = call i32 @llvm.smin.i32(i32 %call1.8, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %for.cond.7, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call1.1, %for.cond.cleanup_crit_edge ], [ %call1.2, %for.cond.1.cleanup_crit_edge ], [ %call1.3, %for.cond.2.cleanup_crit_edge ], [ %call1.4, %for.cond.3.cleanup_crit_edge ], [ %call1.5, %for.cond.4.cleanup_crit_edge ], [ %call1.6, %for.cond.5.cleanup_crit_edge ], [ %call1.7, %for.cond.6.cleanup_crit_edge ], [ %36, %for.cond.7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_rate(ptr noundef %ice, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %spec = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec, align 4
  %2 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rate, label %do.end [
    i32 192000, label %entry.sw.epilog_crit_edge
    i32 176400, label %entry.sw.epilog_crit_edge51
    i32 96000, label %sw.bb2
    i32 88200, label %entry.sw.epilog.thread_crit_edge
    i32 48000, label %sw.bb4
    i32 44100, label %sw.bb5
    i32 32000, label %sw.bb6
    i32 0, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.sw.epilog.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

entry.sw.epilog_crit_edge51:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 619, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %cleanup

sw.epilog.thread:                                 ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %entry.sw.epilog.thread_crit_edge
  %cmp.ph = phi i16 [ 4, %sw.bb4 ], [ 4, %sw.bb5 ], [ 5, %sw.bb6 ], [ 3, %entry.sw.epilog.thread_crit_edge ]
  %ratio.0.ph = phi i16 [ 64, %sw.bb4 ], [ 64, %sw.bb5 ], [ 80, %sw.bb6 ], [ 48, %entry.sw.epilog.thread_crit_edge ]
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.thread, %sw.bb2, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge51
  %ratio.048 = phi i16 [ %ratio.0.ph, %sw.epilog.thread ], [ 32, %sw.bb2 ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge51 ]
  %3 = phi i16 [ %cmp.ph, %sw.epilog.thread ], [ 10, %sw.bb2 ], [ 10, %entry.sw.epilog_crit_edge ], [ 10, %entry.sw.epilog_crit_edge51 ]
  %or27 = or i16 %3, %ratio.048
  %mutex = getelementptr inbounds %struct.snd_maya44, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %4 = lshr i16 %or27, 8
  %5 = trunc i16 %4 to i8
  %and.i.i = and i8 %5, 1
  %or.i.i = or i8 %and.i.i, 24
  %arrayidx.i = getelementptr %struct.snd_maya44, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 12
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  %and.i = and i16 %7, -385
  %or.i = or i16 %and.i, %or27
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i, i16 %7)
  %cmp.not.i = icmp eq i16 %or.i, %7
  br i1 %cmp.not.i, label %sw.epilog.wm8776_write_bits.exit_crit_edge, label %if.then.i

sw.epilog.wm8776_write_bits.exit_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8776_write_bits.exit

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.snd_maya44, ptr %1, i32 0, i32 1, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 4
  %conv5.i.i = trunc i16 %or.i to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext %9, i8 noundef zeroext %or.i.i, i8 noundef zeroext %conv5.i.i) #5
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %or.i, ptr %arrayidx.i, align 2
  br label %wm8776_write_bits.exit

wm8776_write_bits.exit:                           ; preds = %if.then.i, %sw.epilog.wm8776_write_bits.exit_crit_edge
  %arrayidx.i.1 = getelementptr %struct.snd_maya44, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 12
  %11 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i.1, align 2
  %and.i.1 = and i16 %12, -385
  %or.i.1 = or i16 %and.i.1, %or27
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i.1, i16 %12)
  %cmp.not.i.1 = icmp eq i16 %or.i.1, %12
  br i1 %cmp.not.i.1, label %wm8776_write_bits.exit.wm8776_write_bits.exit.1_crit_edge, label %if.then.i.1

wm8776_write_bits.exit.wm8776_write_bits.exit.1_crit_edge: ; preds = %wm8776_write_bits.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8776_write_bits.exit.1

if.then.i.1:                                      ; preds = %wm8776_write_bits.exit
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.1 = getelementptr %struct.snd_maya44, ptr %1, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.1, align 4
  %conv5.i.i.1 = trunc i16 %or.i.1 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext %14, i8 noundef zeroext %or.i.i, i8 noundef zeroext %conv5.i.i.1) #5
  %15 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %or.i.1, ptr %arrayidx.i.1, align 2
  br label %wm8776_write_bits.exit.1

wm8776_write_bits.exit.1:                         ; preds = %if.then.i.1, %wm8776_write_bits.exit.wm8776_write_bits.exit.1_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %wm8776_write_bits.exit.1, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_vt1724_write_i2c(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @maya_vol_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %arrayidx = getelementptr [3 x %struct.maya_vol_info], ptr @vol_info, i32 0, i32 %1
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value, align 8
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maya_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ucontrol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ucontrol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %id1.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1
  %4 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id1.i.i, align 4
  %sub.i.i = sub i32 %3, %5
  %count.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i.i, i32 %7) #5, !srcloc !79
  %and.i.i = and i32 %8, %sub.i.i
  br label %snd_ctl_get_ioff.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %index.i.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %9 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i, align 4
  %index2.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %11 = ptrtoint ptr %index2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index2.i.i, align 4
  %sub.i5.i = sub i32 %10, %12
  %count.i6.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %13 = ptrtoint ptr %count.i6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count.i6.i, align 4
  %15 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i5.i, i32 %14) #5, !srcloc !79
  %and.i7.i = and i32 %15, %sub.i5.i
  br label %snd_ctl_get_ioff.exit

snd_ctl_get_ioff.exit:                            ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %and.i.i, %if.then.i ], [ %and.i7.i, %if.else.i ]
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %16 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %private_value, align 4
  %mutex = getelementptr inbounds %struct.snd_maya44, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %arrayidx2 = getelementptr %struct.snd_maya44, ptr %1, i32 0, i32 1, i32 %retval.0.i, i32 2, i32 %17
  %18 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx2, align 2
  %conv = zext i8 %19 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %20 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv, ptr %value, align 8
  %arrayidx7 = getelementptr %struct.snd_maya44, ptr %1, i32 0, i32 1, i32 %retval.0.i, i32 2, i32 %17, i32 1
  %21 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %22 to i32
  %arrayidx10 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv8, ptr %arrayidx10, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maya_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ucontrol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ucontrol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %id1.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1
  %4 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id1.i.i, align 4
  %sub.i.i = sub i32 %3, %5
  %count.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i.i, i32 %7) #5, !srcloc !79
  %and.i.i = and i32 %8, %sub.i.i
  br label %snd_ctl_get_ioff.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %index.i.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %9 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i, align 4
  %index2.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %11 = ptrtoint ptr %index2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index2.i.i, align 4
  %sub.i5.i = sub i32 %10, %12
  %count.i6.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %13 = ptrtoint ptr %count.i6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count.i6.i, align 4
  %15 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i5.i, i32 %14) #5, !srcloc !79
  %and.i7.i = and i32 %15, %sub.i5.i
  br label %snd_ctl_get_ioff.exit

snd_ctl_get_ioff.exit:                            ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %and.i.i, %if.then.i ], [ %and.i7.i, %if.else.i ]
  %arrayidx = getelementptr %struct.snd_maya44, ptr %1, i32 0, i32 1, i32 %retval.0.i
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %16 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %private_value, align 4
  %arrayidx2 = getelementptr [3 x %struct.maya_vol_info], ptr @vol_info, i32 0, i32 %17
  %mutex = getelementptr inbounds %struct.snd_maya44, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2, align 4
  %offset = getelementptr [3 x %struct.maya_vol_info], ptr @vol_info, i32 0, i32 %17, i32 3
  %mute = getelementptr [3 x %struct.maya_vol_info], ptr @vol_info, i32 0, i32 %17, i32 4
  %update = getelementptr [3 x %struct.maya_vol_info], ptr @vol_info, i32 0, i32 %17, i32 5
  %mask = getelementptr [3 x %struct.maya_vol_info], ptr @vol_info, i32 0, i32 %17, i32 2
  %arrayidx.i89 = getelementptr %struct.snd_maya44, ptr %1, i32 0, i32 1, i32 %retval.0.i, i32 1, i32 21
  %20 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %19)
  %arrayidx7 = getelementptr %struct.snd_maya44, ptr %1, i32 0, i32 1, i32 %retval.0.i, i32 2, i32 %17, i32 0
  %23 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx7, align 1
  %conv = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv)
  %cmp8 = icmp eq i32 %22, %conv
  br i1 %cmp8, label %snd_ctl_get_ioff.exit.for.inc_crit_edge, label %if.end11

snd_ctl_get_ioff.exit.for.inc_crit_edge:          ; preds = %snd_ctl_get_ioff.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end11:                                         ; preds = %snd_ctl_get_ioff.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %mute to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %mute, align 2
  %conv13 = zext i16 %26 to i32
  br label %if.end15

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i32 %22, -1
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %offset, align 4
  %conv14 = zext i16 %28 to i32
  %add = add i32 %sub, %conv14
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then12
  %data.0 = phi i32 [ %add, %if.else ], [ %conv13, %if.then12 ]
  %29 = ptrtoint ptr %update to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %update, align 4
  %arrayidx17 = getelementptr [3 x %struct.maya_vol_info], ptr @vol_info, i32 0, i32 %17, i32 1, i32 0
  %31 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx17, align 4
  %33 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %mask, align 2
  %or2184 = or i16 %34, %30
  %35 = trunc i32 %data.0 to i16
  %conv23 = or i16 %30, %35
  %idxprom.i = zext i8 %32 to i32
  %arrayidx.i = getelementptr %struct.snd_maya44, ptr %1, i32 0, i32 1, i32 %retval.0.i, i32 1, i32 %idxprom.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.i, align 2
  %neg.i = xor i16 %or2184, -1
  %and.i = and i16 %37, %neg.i
  %or.i = or i16 %conv23, %and.i
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i, i16 %37)
  %cmp.not.i = icmp eq i16 %or.i, %37
  br i1 %cmp.not.i, label %if.end15.wm8776_write_bits.exit_crit_edge, label %if.then.i87

if.end15.wm8776_write_bits.exit_crit_edge:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8776_write_bits.exit

if.then.i87:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx, align 4
  %shl.i.i = shl i8 %32, 1
  %42 = lshr i16 %or.i, 8
  %43 = trunc i16 %42 to i8
  %and.i.i86 = and i8 %43, 1
  %or.i.i = or i8 %and.i.i86, %shl.i.i
  %conv5.i.i = trunc i16 %or.i to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %39, i8 noundef zeroext %41, i8 noundef zeroext %or.i.i, i8 noundef zeroext %conv5.i.i) #5
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %or.i, ptr %arrayidx.i, align 2
  br label %wm8776_write_bits.exit

wm8776_write_bits.exit:                           ; preds = %if.then.i87, %if.end15.wm8776_write_bits.exit_crit_edge
  %retval.0.i88 = phi i32 [ 1, %if.then.i87 ], [ 0, %if.end15.wm8776_write_bits.exit_crit_edge ]
  %45 = and i32 %17, 268435454
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %wm8776_write_bits.exit.if.end39_crit_edge, label %if.then28

wm8776_write_bits.exit.if.end39_crit_edge:        ; preds = %wm8776_write_bits.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then28:                                        ; preds = %wm8776_write_bits.exit
  %arrayidx26 = getelementptr [3 x %struct.maya_vol_info], ptr @vol_info, i32 0, i32 %17, i32 6, i32 0
  %47 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx26, align 2
  %conv32 = zext i8 %48 to i16
  %spec.select85 = select i1 %tobool.not, i16 %conv32, i16 0
  %49 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx.i89, align 2
  %neg.i90 = xor i16 %conv32, -1
  %and.i91 = and i16 %50, %neg.i90
  %or.i92 = or i16 %and.i91, %spec.select85
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i92, i16 %50)
  %cmp.not.i93 = icmp eq i16 %or.i92, %50
  br i1 %cmp.not.i93, label %if.then28.if.end39_crit_edge, label %if.then.i97

if.then28.if.end39_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then.i97:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx, align 4
  %55 = lshr i16 %50, 8
  %56 = trunc i16 %55 to i8
  %and.i.i94 = and i8 %56, 1
  %or.i.i95 = or i8 %and.i.i94, 42
  %conv5.i.i96 = trunc i16 %or.i92 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %52, i8 noundef zeroext %54, i8 noundef zeroext %or.i.i95, i8 noundef zeroext %conv5.i.i96) #5
  %57 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %or.i92, ptr %arrayidx.i89, align 2
  br label %if.end39

if.end39:                                         ; preds = %if.then.i97, %if.then28.if.end39_crit_edge, %wm8776_write_bits.exit.if.end39_crit_edge
  %conv40 = trunc i32 %22 to i8
  %58 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv40, ptr %arrayidx7, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end39, %snd_ctl_get_ioff.exit.for.inc_crit_edge
  %changed.1 = phi i32 [ 0, %snd_ctl_get_ioff.exit.for.inc_crit_edge ], [ %retval.0.i88, %if.end39 ]
  %arrayidx3.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %59 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx3.1, align 4
  %61 = tail call i32 @llvm.umin.i32(i32 %60, i32 %19)
  %arrayidx7.1 = getelementptr %struct.snd_maya44, ptr %1, i32 0, i32 1, i32 %retval.0.i, i32 2, i32 %17, i32 1
  %62 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx7.1, align 1
  %conv.1 = zext i8 %63 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %conv.1)
  %cmp8.1 = icmp eq i32 %61, %conv.1
  br i1 %cmp8.1, label %for.inc.for.inc.1_crit_edge, label %if.end11.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end11.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.1 = icmp eq i32 %61, 0
  br i1 %tobool.not.1, label %if.then12.1, label %if.else.1

if.else.1:                                        ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #7
  %sub.1 = add i32 %61, -1
  %64 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %offset, align 4
  %conv14.1 = zext i16 %65 to i32
  %add.1 = add i32 %sub.1, %conv14.1
  br label %if.end15.1

if.then12.1:                                      ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %mute to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %mute, align 2
  %conv13.1 = zext i16 %67 to i32
  br label %if.end15.1

if.end15.1:                                       ; preds = %if.then12.1, %if.else.1
  %data.0.1 = phi i32 [ %add.1, %if.else.1 ], [ %conv13.1, %if.then12.1 ]
  %68 = ptrtoint ptr %update to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %update, align 4
  %arrayidx17.1 = getelementptr [3 x %struct.maya_vol_info], ptr @vol_info, i32 0, i32 %17, i32 1, i32 1
  %70 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx17.1, align 1
  %72 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %mask, align 2
  %or2184.1 = or i16 %73, %69
  %74 = trunc i32 %data.0.1 to i16
  %conv23.1 = or i16 %69, %74
  %idxprom.i.1 = zext i8 %71 to i32
  %arrayidx.i.1 = getelementptr %struct.snd_maya44, ptr %1, i32 0, i32 1, i32 %retval.0.i, i32 1, i32 %idxprom.i.1
  %75 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx.i.1, align 2
  %neg.i.1 = xor i16 %or2184.1, -1
  %and.i.1 = and i16 %76, %neg.i.1
  %or.i.1 = or i16 %conv23.1, %and.i.1
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i.1, i16 %76)
  %cmp.not.i.1 = icmp eq i16 %or.i.1, %76
  br i1 %cmp.not.i.1, label %if.end15.1.wm8776_write_bits.exit.1_crit_edge, label %if.then.i87.1

if.end15.1.wm8776_write_bits.exit.1_crit_edge:    ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8776_write_bits.exit.1

if.then.i87.1:                                    ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #7
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %79 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx, align 4
  %shl.i.i.1 = shl i8 %71, 1
  %81 = lshr i16 %or.i.1, 8
  %82 = trunc i16 %81 to i8
  %and.i.i86.1 = and i8 %82, 1
  %or.i.i.1 = or i8 %and.i.i86.1, %shl.i.i.1
  %conv5.i.i.1 = trunc i16 %or.i.1 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %78, i8 noundef zeroext %80, i8 noundef zeroext %or.i.i.1, i8 noundef zeroext %conv5.i.i.1) #5
  %83 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %or.i.1, ptr %arrayidx.i.1, align 2
  br label %wm8776_write_bits.exit.1

wm8776_write_bits.exit.1:                         ; preds = %if.then.i87.1, %if.end15.1.wm8776_write_bits.exit.1_crit_edge
  %retval.0.i88.1 = phi i32 [ 1, %if.then.i87.1 ], [ 0, %if.end15.1.wm8776_write_bits.exit.1_crit_edge ]
  %or25.1 = or i32 %retval.0.i88.1, %changed.1
  %84 = and i32 %17, 268435454
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %wm8776_write_bits.exit.1.if.end39.1_crit_edge, label %if.then28.1

wm8776_write_bits.exit.1.if.end39.1_crit_edge:    ; preds = %wm8776_write_bits.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.1

if.then28.1:                                      ; preds = %wm8776_write_bits.exit.1
  %arrayidx26.1 = getelementptr [3 x %struct.maya_vol_info], ptr @vol_info, i32 0, i32 %17, i32 6, i32 1
  %86 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx26.1, align 1
  %conv32.1 = zext i8 %87 to i16
  %spec.select85.1 = select i1 %tobool.not.1, i16 %conv32.1, i16 0
  %88 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx.i89, align 2
  %neg.i90.1 = xor i16 %conv32.1, -1
  %and.i91.1 = and i16 %89, %neg.i90.1
  %or.i92.1 = or i16 %and.i91.1, %spec.select85.1
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i92.1, i16 %89)
  %cmp.not.i93.1 = icmp eq i16 %or.i92.1, %89
  br i1 %cmp.not.i93.1, label %if.then28.1.if.end39.1_crit_edge, label %if.then.i97.1

if.then28.1.if.end39.1_crit_edge:                 ; preds = %if.then28.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.1

if.then.i97.1:                                    ; preds = %if.then28.1
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 4
  %92 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx, align 4
  %94 = lshr i16 %89, 8
  %95 = trunc i16 %94 to i8
  %and.i.i94.1 = and i8 %95, 1
  %or.i.i95.1 = or i8 %and.i.i94.1, 42
  %conv5.i.i96.1 = trunc i16 %or.i92.1 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %91, i8 noundef zeroext %93, i8 noundef zeroext %or.i.i95.1, i8 noundef zeroext %conv5.i.i96.1) #5
  %96 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %or.i92.1, ptr %arrayidx.i89, align 2
  br label %if.end39.1

if.end39.1:                                       ; preds = %if.then.i97.1, %if.then28.1.if.end39.1_crit_edge, %wm8776_write_bits.exit.1.if.end39.1_crit_edge
  %conv40.1 = trunc i32 %61 to i8
  %97 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv40.1, ptr %arrayidx7.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end39.1, %for.inc.for.inc.1_crit_edge
  %changed.1.1 = phi i32 [ %changed.1, %for.inc.for.inc.1_crit_edge ], [ %or25.1, %if.end39.1 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 %changed.1.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maya_sw_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ucontrol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ucontrol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %id1.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1
  %4 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id1.i.i, align 4
  %sub.i.i = sub i32 %3, %5
  %count.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i.i, i32 %7) #5, !srcloc !79
  %and.i.i = and i32 %8, %sub.i.i
  br label %snd_ctl_get_ioff.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %index.i.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %9 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i, align 4
  %index2.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %11 = ptrtoint ptr %index2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index2.i.i, align 4
  %sub.i5.i = sub i32 %10, %12
  %count.i6.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %13 = ptrtoint ptr %count.i6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count.i6.i, align 4
  %15 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i5.i, i32 %14) #5, !srcloc !79
  %and.i7.i = and i32 %15, %sub.i5.i
  br label %snd_ctl_get_ioff.exit

snd_ctl_get_ioff.exit:                            ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %and.i.i, %if.then.i ], [ %and.i7.i, %if.else.i ]
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %16 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %private_value, align 4
  %and = and i32 %17, 255
  %switch_bits = getelementptr %struct.snd_maya44, ptr %1, i32 0, i32 1, i32 %retval.0.i, i32 3
  %18 = ptrtoint ptr %switch_bits to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %switch_bits, align 4
  %shr = lshr i32 %19, %and
  %and2 = and i32 %shr, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %20 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and2, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maya_sw_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ucontrol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ucontrol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %id1.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1
  %4 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id1.i.i, align 4
  %sub.i.i = sub i32 %3, %5
  %count.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i.i, i32 %7) #5, !srcloc !79
  %and.i.i = and i32 %8, %sub.i.i
  br label %snd_ctl_get_ioff.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %index.i.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %9 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i, align 4
  %index2.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %11 = ptrtoint ptr %index2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index2.i.i, align 4
  %sub.i5.i = sub i32 %10, %12
  %count.i6.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %13 = ptrtoint ptr %count.i6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count.i6.i, align 4
  %15 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i5.i, i32 %14) #5, !srcloc !79
  %and.i7.i = and i32 %15, %sub.i5.i
  br label %snd_ctl_get_ioff.exit

snd_ctl_get_ioff.exit:                            ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %and.i.i, %if.then.i ], [ %and.i7.i, %if.else.i ]
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %16 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %private_value, align 4
  %and = and i32 %17, 255
  %mutex = getelementptr inbounds %struct.snd_maya44, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %shl = shl nuw i32 1, %and
  %neg = xor i32 %shl, -1
  %switch_bits = getelementptr %struct.snd_maya44, ptr %1, i32 0, i32 1, i32 %retval.0.i, i32 3
  %18 = ptrtoint ptr %switch_bits to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %switch_bits, align 4
  %and2 = and i32 %19, %neg
  store i32 %and2, ptr %switch_bits, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %20 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %snd_ctl_get_ioff.exit.if.end_crit_edge, label %if.then

snd_ctl_get_ioff.exit.if.end_crit_edge:           ; preds = %snd_ctl_get_ioff.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %snd_ctl_get_ioff.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %19, %shl
  %22 = ptrtoint ptr %switch_bits to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or, ptr %switch_bits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %snd_ctl_get_ioff.exit.if.end_crit_edge
  %23 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %24, 16
  %25 = trunc i32 %shr to i16
  %phi.cast = and i16 %25, 255
  %spec.select = select i1 %tobool.not, i16 0, i16 %phi.cast
  %shr8 = lshr i32 %24, 8
  %idxprom.i = and i32 %shr8, 255
  %arrayidx.i = getelementptr %struct.snd_maya44, ptr %1, i32 0, i32 1, i32 %retval.0.i, i32 1, i32 %idxprom.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.i, align 2
  %neg.i = xor i16 %phi.cast, -1
  %and.i = and i16 %27, %neg.i
  %or.i = or i16 %and.i, %spec.select
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i, i16 %27)
  %cmp.not.i = icmp eq i16 %or.i, %27
  br i1 %cmp.not.i, label %if.end.wm8776_write_bits.exit_crit_edge, label %if.then.i30

if.end.wm8776_write_bits.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8776_write_bits.exit

if.then.i30:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.snd_maya44, ptr %1, i32 0, i32 1, i32 %retval.0.i
  %conv = trunc i32 %shr8 to i8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 4
  %shl.i.i = shl i8 %conv, 1
  %32 = lshr i16 %27, 8
  %33 = trunc i16 %32 to i8
  %and.i.i29 = and i8 %33, 1
  %or.i.i = or i8 %and.i.i29, %shl.i.i
  %conv5.i.i = trunc i16 %or.i to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %29, i8 noundef zeroext %31, i8 noundef zeroext %or.i.i, i8 noundef zeroext %conv5.i.i) #5
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %or.i, ptr %arrayidx.i, align 2
  br label %wm8776_write_bits.exit

wm8776_write_bits.exit:                           ; preds = %if.then.i30, %if.end.wm8776_write_bits.exit_crit_edge
  %retval.0.i31 = phi i32 [ 1, %if.then.i30 ], [ 0, %if.end.wm8776_write_bits.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 %retval.0.i31
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maya_rec_src_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @maya_rec_src_info.texts) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maya_rec_src_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %get_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 46, i32 8
  %4 = ptrtoint ptr %get_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_data.i, align 4
  %call.i = tail call i32 %5(ptr noundef %3) #5
  %and = lshr i32 %call.i, 4
  %and.lobit = and i32 %and, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.lobit, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maya_rec_src_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %mutex = getelementptr inbounds %struct.snd_maya44, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, i32 0, i32 16
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %5, i32 0, i32 46, i32 8
  %6 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %5) #5
  %and.i = and i32 %call.i.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %cond)
  %cmp.i = icmp eq i32 %and.i, %cond
  br i1 %cmp.i, label %entry.maya_set_gpio_bits.exit_crit_edge, label %if.end.i

entry.maya_set_gpio_bits.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %maya_set_gpio_bits.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and1.i = and i32 %call.i.i, -17
  %or.i = or i32 %and1.i, %cond
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %5, i32 0, i32 46, i32 7
  %8 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_data.i.i, align 4
  tail call void %9(ptr noundef %5, i32 noundef %or.i) #5
  br label %maya_set_gpio_bits.exit

maya_set_gpio_bits.exit:                          ; preds = %if.end.i, %entry.maya_set_gpio_bits.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end.i ], [ 0, %entry.maya_set_gpio_bits.exit_crit_edge ]
  %conv.i = select i1 %tobool.not, i16 2, i16 8
  %arrayidx.i.i = getelementptr %struct.snd_maya44, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 21
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i.i, align 2
  %and.i.i = and i16 %11, -32
  %or.i.i = or i16 %and.i.i, %conv.i
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i.i, i16 %11)
  %cmp.not.i.i = icmp eq i16 %or.i.i, %11
  br i1 %cmp.not.i.i, label %maya_set_gpio_bits.exit.wm8776_select_input.exit_crit_edge, label %if.then.i.i

maya_set_gpio_bits.exit.wm8776_select_input.exit_crit_edge: ; preds = %maya_set_gpio_bits.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8776_select_input.exit

if.then.i.i:                                      ; preds = %maya_set_gpio_bits.exit
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.snd_maya44, ptr %1, i32 0, i32 1, i32 0
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 4
  %16 = lshr i16 %11, 8
  %17 = trunc i16 %16 to i8
  %and.i.i.i = and i8 %17, 1
  %or.i.i.i = or i8 %and.i.i.i, 42
  %conv5.i.i.i = trunc i16 %or.i.i to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %13, i8 noundef zeroext %15, i8 noundef zeroext %or.i.i.i, i8 noundef zeroext %conv5.i.i.i) #5
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %or.i.i, ptr %arrayidx.i.i, align 2
  br label %wm8776_select_input.exit

wm8776_select_input.exit:                         ; preds = %if.then.i.i, %maya_set_gpio_bits.exit.wm8776_select_input.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maya_gpio_sw_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
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
  %and = and i32 %3, 255
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %get_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %5, i32 0, i32 46, i32 8
  %6 = ptrtoint ptr %get_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_data.i, align 4
  %call.i = tail call i32 %7(ptr noundef %5) #5
  %shr = lshr i32 %call.i, %and
  %8 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private_value, align 4
  %10 = lshr i32 %9, 8
  %and19 = xor i32 %10, %shr
  %spec.select = and i32 %and19, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maya_gpio_sw_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %and = and i32 %3, 255
  %mutex = getelementptr inbounds %struct.snd_maya44, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %shl = shl nuw i32 1, %and
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  %lnot.ext = zext i1 %tobool3.not to i32
  %val.0 = select i1 %tobool.not, i32 %5, i32 %lnot.ext
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0)
  %tobool4.not = icmp eq i32 %val.0, 0
  %cond = select i1 %tobool4.not, i32 0, i32 %shl
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %10, i32 0, i32 46, i32 8
  %11 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %12(ptr noundef %10) #5
  %and.i = and i32 %call.i.i, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %cond)
  %cmp.i = icmp eq i32 %and.i, %cond
  br i1 %cmp.i, label %entry.maya_set_gpio_bits.exit_crit_edge, label %if.end.i

entry.maya_set_gpio_bits.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %maya_set_gpio_bits.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %neg.i = xor i32 %shl, -1
  %and1.i = and i32 %call.i.i, %neg.i
  %or.i = or i32 %cond, %and1.i
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %10, i32 0, i32 46, i32 7
  %13 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_data.i.i, align 4
  tail call void %14(ptr noundef %10, i32 noundef %or.i) #5
  br label %maya_set_gpio_bits.exit

maya_set_gpio_bits.exit:                          ; preds = %if.end.i, %entry.maya_set_gpio_bits.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end.i ], [ 0, %entry.maya_set_gpio_bits.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maya_pb_route_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @maya_pb_route_info.texts) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maya_pb_route_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #5, !srcloc !79
  %and.i = and i32 %8, %sub.i
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %rem.i = srem i32 %and.i, 10
  %arrayidx.i = getelementptr [10 x i8], ptr @maya_pb_route_shift.shift, i32 0, i32 %rem.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %12 to i32
  %call2 = tail call i32 @snd_ice1724_get_route_val(ptr noundef %10, i32 noundef %conv.i) #5
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call2, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maya_pb_route_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #5, !srcloc !79
  %and.i = and i32 %8, %sub.i
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 8
  %rem.i = srem i32 %and.i, 10
  %arrayidx.i = getelementptr [10 x i8], ptr @maya_pb_route_shift.shift, i32 0, i32 %rem.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %14 to i32
  %call2 = tail call i32 @snd_ice1724_put_route_val(ptr noundef %10, i32 noundef %12, i32 noundef %conv.i) #5
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ice1724_get_route_val(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ice1724_put_route_val(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/ice1712/maya44.c", i32 740, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ice1712/maya44.c", i32 741, i32 12}
!4 = !{ptr @snd_vt1724_maya44_cards, !5, !"snd_vt1724_maya44_cards", i1 false, i1 false}
!5 = !{!"../sound/pci/ice1712/maya44.c", i32 737, i32 30}
!6 = !{ptr @maya44_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../sound/pci/ice1712/maya44.c", i32 680, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @wm8776_init.inits_wm8776, !10, !"inits_wm8776", i1 false, i1 false}
!10 = !{!"../sound/pci/ice1712/maya44.c", i32 537, i32 30}
!11 = distinct !{null, !12, !"wm8776_addr", i1 false, i1 false}
!12 = !{!"../sound/pci/ice1712/maya44.c", i32 665, i32 28}
!13 = !{ptr @dac_rates, !14, !"dac_rates", i1 false, i1 false}
!14 = !{!"../sound/pci/ice1712/maya44.c", i32 655, i32 48}
!15 = !{ptr @rates, !16, !"rates", i1 false, i1 false}
!16 = !{!"../sound/pci/ice1712/maya44.c", i32 650, i32 27}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/pci/ice1712/maya44.c", i32 619, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/ice1712/maya44.c", i32 429, i32 11}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/ice1712/maya44.c", i32 441, i32 11}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/ice1712/maya44.c", i32 453, i32 11}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/ice1712/maya44.c", i32 465, i32 11}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/ice1712/maya44.c", i32 475, i32 11}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/ice1712/maya44.c", i32 485, i32 11}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/ice1712/maya44.c", i32 492, i32 11}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/pci/ice1712/maya44.c", i32 500, i32 11}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/pci/ice1712/maya44.c", i32 509, i32 11}
!38 = !{ptr @maya_controls, !39, !"maya_controls", i1 false, i1 false}
!39 = !{!"../sound/pci/ice1712/maya44.c", i32 427, i32 38}
!40 = !{ptr @vol_info, !41, !"vol_info", i1 false, i1 false}
!41 = !{!"../sound/pci/ice1712/maya44.c", i32 119, i32 35}
!42 = !{ptr @db_scale_hp, !43, !"db_scale_hp", i1 false, i1 false}
!43 = !{!"../sound/pci/ice1712/maya44.c", i32 151, i32 14}
!44 = !{ptr @db_scale_dac, !45, !"db_scale_dac", i1 false, i1 false}
!45 = !{!"../sound/pci/ice1712/maya44.c", i32 153, i32 14}
!46 = !{ptr @db_scale_adc, !47, !"db_scale_adc", i1 false, i1 false}
!47 = !{!"../sound/pci/ice1712/maya44.c", i32 155, i32 14}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/ice1712/maya44.c", i32 346, i32 40}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/ice1712/maya44.c", i32 346, i32 48}
!52 = !{ptr @maya_rec_src_info.texts, !53, !"texts", i1 false, i1 false}
!53 = !{!"../sound/pci/ice1712/maya44.c", i32 346, i32 28}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/ice1712/maya44.c", i32 388, i32 3}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/ice1712/maya44.c", i32 389, i32 3}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/ice1712/maya44.c", i32 389, i32 14}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/pci/ice1712/maya44.c", i32 389, i32 25}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/ice1712/maya44.c", i32 389, i32 36}
!64 = !{ptr @maya_pb_route_info.texts, !65, !"texts", i1 false, i1 false}
!65 = !{!"../sound/pci/ice1712/maya44.c", i32 387, i32 28}
!66 = !{ptr @maya_pb_route_shift.shift, !67, !"shift", i1 false, i1 false}
!67 = !{!"../sound/pci/ice1712/maya44.c", i32 397, i32 29}
!68 = !{ptr @maya44_eeprom, !69, !"maya44_eeprom", i1 false, i1 false}
!69 = !{!"../sound/pci/ice1712/maya44.c", i32 715, i32 28}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 862672, i64 862689}
