; ModuleID = '/llk/IR_all_yes/sound/pci/ice1712/psc724.c_pt.bc'
source_filename = "../sound/pci/ice1712/psc724.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_ice1712_card_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.psc724_control = type { ptr, ptr, ptr }
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
%struct.psc724_spec = type { %struct.snd_wm8766, %struct.snd_wm8776, i8, i8, ptr, %struct.delayed_work, i8 }
%struct.snd_wm8766 = type { ptr, [14 x %struct.snd_wm8766_ctl], i32, %struct.snd_wm8766_ops, [16 x i16] }
%struct.snd_wm8766_ctl = type { ptr, ptr, i32, [16 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.snd_wm8766_ops = type { ptr }
%struct.snd_wm8776 = type { ptr, [32 x %struct.snd_wm8776_ctl], i32, %struct.snd_wm8776_ops, [23 x i16] }
%struct.snd_wm8776_ctl = type { ptr, i32, [16 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.snd_wm8776_ops = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.87, i32 }
%union.anon.87 = type { ptr }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Philips PSC724 Ultimate Edge\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"psc724\00", [25 x i8] zeroinitializer }, align 32
@psc724_eeprom = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"B\80\F0\C1\00\00_\FF\FF\A0\00\00 ", [19 x i8] zeroinitializer }, align 32
@snd_vt1724_psc724_cards = dso_local global { [2 x %struct.snd_ice1712_card_info], [48 x i8] } { [2 x %struct.snd_ice1712_card_info] [%struct.snd_ice1712_card_info { i32 -1424554471, ptr @.str, ptr @.str.1, ptr null, ptr @psc724_init, ptr @psc724_exit, ptr @psc724_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 13, ptr @psc724_eeprom }, %struct.snd_ice1712_card_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@psc724_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&spec->hp_work)->work)\00", [53 x i8] zeroinitializer }, align 32
@psc724_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&spec->hp_work)->timer\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Master Speakers Playback Switch\00", [32 x i8] zeroinitializer }, align 32
@psc724_cont = internal constant { [2 x %struct.psc724_control], [40 x i8] } { [2 x %struct.psc724_control] [%struct.psc724_control { ptr @.str.5, ptr @psc724_set_master_switch, ptr @psc724_get_master_switch }, %struct.psc724_control { ptr @.str.27, ptr @psc724_set_jack_detection, ptr @psc724_get_jack_detection }], [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Front Playback Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Front Playback Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Front Zero Cross Detect Playback Switch\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Front Infinite Zero Detect Playback Switch\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Front Phase Invert Playback Switch\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Front Deemphasis Playback Switch\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Line Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CD Capture Switch\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AUX Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Front Mic Capture Switch\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Rear Mic Capture Switch\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Surround Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CLFE Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Surround Playback Switch\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CLFE Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Surround Phase Invert Playback Switch\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CLFE Phase Invert Playback Switch\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Surround Deemphasis Playback Switch\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CLFE Deemphasis Playback Switch\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Rear Infinite Zero Detect Playback Switch\00", [54 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Rear Zero Cross Detect Playback Switch\00", [57 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Headphone Jack Detection Playback Switch\00", [55 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 441, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 442, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"psc724_eeprom\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 423, i32 28 }
@___asan_gen_.37 = private unnamed_addr constant [24 x i8] c"snd_vt1724_psc724_cards\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 438, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 410, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 192, i32 24 }
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"psc724_cont\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 248, i32 36 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 283, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 284, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 285, i32 31 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 286, i32 32 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 287, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 288, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 289, i32 34 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 290, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 291, i32 34 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 292, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 293, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 294, i32 34 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 295, i32 34 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 296, i32 34 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 297, i32 34 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 298, i32 33 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 299, i32 33 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 300, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 301, i32 34 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 302, i32 36 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 303, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [30 x i8] c"../sound/pci/ice1712/psc724.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 255, i32 11 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @.str, ptr @.str.1, ptr @psc724_eeprom, ptr @snd_vt1724_psc724_cards, ptr @psc724_init.__key, ptr @.str.2, ptr @psc724_init.__key.3, ptr @.str.4, ptr @.str.5, ptr @psc724_cont, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psc724_eeprom to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_psc724_cards to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psc724_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psc724_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psc724_cont to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psc724_init(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4872) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %1 = ptrtoint ptr %spec1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %spec1, align 4
  %ice2 = getelementptr inbounds %struct.psc724_spec, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %ice2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ice, ptr %ice2, align 4
  %num_total_dacs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %3 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 6, ptr %num_total_dacs, align 4
  %num_total_adcs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %4 = ptrtoint ptr %num_total_adcs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %num_total_adcs, align 4
  %wm8776 = getelementptr inbounds %struct.psc724_spec, ptr %call7.i.i, i32 0, i32 1
  %ops = getelementptr inbounds %struct.psc724_spec, ptr %call7.i.i, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @psc724_wm8776_write, ptr %ops, align 4
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %8 = ptrtoint ptr %wm8776 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %wm8776, align 4
  tail call void @snd_wm8776_init(ptr noundef %wm8776) #6
  %ops6 = getelementptr inbounds %struct.snd_wm8766, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %ops6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @psc724_wm8766_write, ptr %ops6, align 8
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %call7.i.i, align 8
  %pm_resume = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 60
  %13 = ptrtoint ptr %pm_resume to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @psc724_resume, ptr %pm_resume, align 4
  %pm_suspend_enabled = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 61
  %14 = ptrtoint ptr %pm_suspend_enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %pm_suspend_enabled, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %pm_suspend_enabled, align 4
  tail call void @snd_wm8766_init(ptr noundef nonnull %call7.i.i) #6
  tail call void @snd_wm8766_set_if(ptr noundef nonnull %call7.i.i, i16 noundef zeroext 34) #6
  %set_pro_rate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 9
  %15 = ptrtoint ptr %set_pro_rate to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @psc724_set_pro_rate, ptr %set_pro_rate, align 4
  %hp_work = getelementptr inbounds %struct.psc724_spec, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %hp_work, i32 noundef 0) #6
  %16 = ptrtoint ptr %hp_work to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %hp_work, align 8
  %lockdep_map = getelementptr inbounds %struct.psc724_spec, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @psc724_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry20 = getelementptr inbounds %struct.psc724_spec, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %17 = ptrtoint ptr %entry20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry20, ptr %entry20, align 4
  %prev.i = getelementptr inbounds %struct.psc724_spec, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry20, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.psc724_spec, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @psc724_update_hp_jack_state, ptr %func, align 4
  %timer = getelementptr inbounds %struct.psc724_spec, ptr %call7.i.i, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.4, ptr noundef nonnull @psc724_init.__key.3) #6
  %20 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spec1, align 4
  %jack_detect.i = getelementptr inbounds %struct.psc724_spec, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %jack_detect.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %jack_detect.i, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp.i = icmp eq i8 %23, 1
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %jack_detect.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %jack_detect.i, align 1
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %25 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %26(ptr noundef %ice) #6
  %and.i = and i32 %call.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.i = icmp ne i32 %and.i, 0
  tail call fastcc void @psc724_set_jack_state(ptr noundef %ice, i1 noundef zeroext %tobool10.i) #6
  %hp_work.i = getelementptr inbounds %struct.psc724_spec, ptr %21, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %hp_work.i, i32 noundef 100) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psc724_exit(ptr nocapture noundef readonly %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %hp_work = getelementptr inbounds %struct.psc724_spec, ptr %1, i32 0, i32 5
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %hp_work) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psc724_add_controls(ptr noundef %ice) #0 align 64 {
entry:
  %cont = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cont) #6
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %wm8776 = getelementptr inbounds %struct.psc724_spec, ptr %1, i32 0, i32 1
  %ctl2 = getelementptr inbounds %struct.psc724_spec, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %ctl2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.6, ptr %ctl2, align 4
  %arrayidx5 = getelementptr %struct.psc724_spec, ptr %1, i32 0, i32 1, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.7, ptr %arrayidx5, align 4
  %arrayidx9 = getelementptr %struct.psc724_spec, ptr %1, i32 0, i32 1, i32 1, i32 2
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.8, ptr %arrayidx9, align 4
  %arrayidx13 = getelementptr %struct.psc724_spec, ptr %1, i32 0, i32 1, i32 1, i32 6
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx13, align 4
  %arrayidx17 = getelementptr %struct.psc724_spec, ptr %1, i32 0, i32 1, i32 1, i32 8
  %6 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.9, ptr %arrayidx17, align 4
  %arrayidx21 = getelementptr %struct.psc724_spec, ptr %1, i32 0, i32 1, i32 1, i32 9
  %7 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.10, ptr %arrayidx21, align 4
  %arrayidx25 = getelementptr %struct.psc724_spec, ptr %1, i32 0, i32 1, i32 1, i32 10
  %8 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.11, ptr %arrayidx25, align 4
  %arrayidx29 = getelementptr %struct.psc724_spec, ptr %1, i32 0, i32 1, i32 1, i32 13
  %9 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.12, ptr %arrayidx29, align 4
  %arrayidx33 = getelementptr %struct.psc724_spec, ptr %1, i32 0, i32 1, i32 1, i32 14
  %10 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.13, ptr %arrayidx33, align 4
  %arrayidx37 = getelementptr %struct.psc724_spec, ptr %1, i32 0, i32 1, i32 1, i32 15
  %11 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.14, ptr %arrayidx37, align 4
  %arrayidx41 = getelementptr %struct.psc724_spec, ptr %1, i32 0, i32 1, i32 1, i32 16
  %12 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.15, ptr %arrayidx41, align 4
  %arrayidx45 = getelementptr %struct.psc724_spec, ptr %1, i32 0, i32 1, i32 1, i32 17
  %13 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.16, ptr %arrayidx45, align 4
  %call = tail call i32 @snd_wm8776_build_controls(ptr noundef %wm8776) #6
  %name50 = getelementptr inbounds %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %name50 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.17, ptr %name50, align 4
  %name54 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 1, i32 1
  %15 = ptrtoint ptr %name54 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.18, ptr %name54, align 4
  %name58 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 2, i32 1
  %16 = ptrtoint ptr %name58 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %name58, align 4
  %name62 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 3, i32 1
  %17 = ptrtoint ptr %name62 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.19, ptr %name62, align 4
  %name66 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 4, i32 1
  %18 = ptrtoint ptr %name66 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.20, ptr %name66, align 4
  %name70 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 5, i32 1
  %19 = ptrtoint ptr %name70 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %name70, align 4
  %name74 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 6, i32 1
  %20 = ptrtoint ptr %name74 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.21, ptr %name74, align 4
  %name78 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 7, i32 1
  %21 = ptrtoint ptr %name78 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.22, ptr %name78, align 4
  %name82 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 8, i32 1
  %22 = ptrtoint ptr %name82 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %name82, align 4
  %name86 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 9, i32 1
  %23 = ptrtoint ptr %name86 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.23, ptr %name86, align 4
  %name90 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 10, i32 1
  %24 = ptrtoint ptr %name90 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.24, ptr %name90, align 4
  %name94 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 11, i32 1
  %25 = ptrtoint ptr %name94 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %name94, align 4
  %name98 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 12, i32 1
  %26 = ptrtoint ptr %name98 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.25, ptr %name98, align 4
  %name102 = getelementptr %struct.snd_wm8766, ptr %1, i32 0, i32 1, i32 13, i32 1
  %27 = ptrtoint ptr %name102 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.26, ptr %name102, align 4
  %call104 = tail call i32 @snd_wm8766_build_controls(ptr noundef %1) #6
  %28 = getelementptr inbounds i8, ptr %cont, i32 4
  %29 = call ptr @memset(ptr %28, i32 0, i32 40)
  %30 = ptrtoint ptr %cont to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %cont, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont, i32 0, i32 11
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %name107 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont, i32 0, i32 3
  %access = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont, i32 0, i32 5
  %info = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont, i32 0, i32 7
  %get = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont, i32 0, i32 8
  %put = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont, i32 0, i32 9
  %31 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %private_value, align 4
  %32 = ptrtoint ptr %name107 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.5, ptr %name107, align 4
  %33 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3, ptr %access, align 4
  %34 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @snd_ctl_boolean_mono_info, ptr %info, align 4
  %35 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @psc724_ctl_get, ptr %get, align 4
  %36 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @psc724_ctl_put, ptr %put, align 4
  %call108 = call ptr @snd_ctl_new1(ptr noundef nonnull %cont, ptr noundef %ice) #6
  %tobool.not = icmp eq ptr %call108, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %if.end
  %37 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %private_value, align 4
  %38 = ptrtoint ptr %name107 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.27, ptr %name107, align 4
  %39 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %access, align 4
  %40 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @snd_ctl_boolean_mono_info, ptr %info, align 4
  %41 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @psc724_ctl_get, ptr %get, align 4
  %42 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @psc724_ctl_put, ptr %put, align 4
  %call108.1 = call ptr @snd_ctl_new1(ptr noundef nonnull %cont, ptr noundef %ice) #6
  %tobool.not.1 = icmp eq ptr %call108.1, null
  br i1 %tobool.not.1, label %for.cond.cleanup_crit_edge, label %if.end.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.1:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card, align 4
  %call109.1 = call i32 @snd_ctl_add(ptr noundef %44, ptr noundef nonnull %call108.1) #6
  %45 = call i32 @llvm.smin.i32(i32 %call109.1, i32 0)
  br label %cleanup

if.end:                                           ; preds = %entry
  %46 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %card, align 4
  %call109 = call i32 @snd_ctl_add(ptr noundef %47, ptr noundef nonnull %call108) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp110 = icmp slt i32 %call109, 0
  br i1 %cmp110, label %if.end.cleanup_crit_edge, label %for.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.end.1, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call109, %if.end.cleanup_crit_edge ], [ -12, %for.cond.cleanup_crit_edge ], [ %45, %if.end.1 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cont) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psc724_wm8776_write(ptr nocapture noundef readonly %wm, i8 noundef zeroext %addr, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ice = getelementptr i8, ptr %wm, i32 3264
  %0 = ptrtoint ptr %ice to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ice, align 4
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext %addr, i8 noundef zeroext %data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_wm8776_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psc724_wm8766_write(ptr nocapture noundef readonly %wm, i16 noundef zeroext %addr, i16 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ice1 = getelementptr inbounds %struct.psc724_spec, ptr %wm, i32 0, i32 4
  %0 = ptrtoint ptr %ice1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ice1, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #6
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
  %8 = shl i16 %addr, 9
  %9 = and i16 %data, 511
  %or40 = or i16 %9, %8
  %or = zext i16 %or40 to i32
  %or4 = or i32 %3, 458752
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %10 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_dir.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef %or4) #6
  %12 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %write_mask.i, align 4
  %and6 = and i32 %13, -458753
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %14 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_mask.i, align 4
  tail call void %15(ptr noundef %1, i32 noundef %and6) #6
  %get_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 8
  %16 = ptrtoint ptr %get_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_data.i, align 4
  %call.i = tail call i32 %17(ptr noundef %1) #6
  %and7 = and i32 %call.i, -458753
  %set_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 7
  %18 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_data.i, align 4
  tail call void %19(ptr noundef %1, i32 noundef %and7) #6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.054 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %bits.053 = phi i32 [ %and7, %entry ], [ %or14, %for.body.for.body_crit_edge ]
  %st.052 = phi i32 [ %or, %entry ], [ %shl10, %for.body.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #6
  %shl10 = shl i32 %st.052, 1
  %and9 = and i32 %bits.053, -196609
  %21 = and i32 %shl10, 65536
  %22 = or i32 %21, %and9
  %23 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_data.i, align 4
  tail call void %24(ptr noundef %1, i32 noundef %22) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #6
  %or14 = or i32 %22, 131072
  %26 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_data.i, align 4
  tail call void %27(ptr noundef %1, i32 noundef %or14) #6
  %inc = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #6
  %or15 = or i32 %22, 393216
  %29 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_data.i, align 4
  tail call void %30(ptr noundef %1, i32 noundef %or15) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #6
  %or16 = or i32 %bits.053, 458752
  %32 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_data.i, align 4
  tail call void %33(ptr noundef %1, i32 noundef %or16) #6
  %34 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_dir.i, align 4
  %36 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %saved.i, align 4
  tail call void %35(ptr noundef %1, i32 noundef %37) #6
  %38 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %set_mask.i, align 4
  %40 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx5.i, align 4
  tail call void %39(ptr noundef %1, i32 noundef %41) #6
  %42 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %saved.i, align 4
  %44 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %gpio.i, align 4
  %45 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx5.i, align 4
  %47 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psc724_resume(ptr nocapture noundef readonly %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %wm8776 = getelementptr inbounds %struct.psc724_spec, ptr %1, i32 0, i32 1
  tail call void @snd_wm8776_resume(ptr noundef %wm8776) #6
  tail call void @snd_wm8766_resume(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_wm8766_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_wm8766_set_if(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psc724_set_pro_rate(ptr nocapture noundef readonly %ice, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %wm8776 = getelementptr inbounds %struct.psc724_spec, ptr %1, i32 0, i32 1
  tail call void @snd_wm8776_volume_restore(ptr noundef %wm8776) #6
  tail call void @snd_wm8766_volume_restore(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psc724_update_hp_jack_state(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ice1 = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %ice1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ice1, align 4
  %get_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 8
  %2 = ptrtoint ptr %get_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_data.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1) #6
  %and = and i32 %call.i, 16384
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work, i32 noundef 100) #6
  %and.lobit = lshr exact i32 %and, 14
  %hp_connected5 = getelementptr i8, ptr %work, i32 100
  %5 = ptrtoint ptr %hp_connected5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hp_connected5, align 4, !range !112
  %7 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit, i32 %7)
  %cmp = icmp eq i32 %and.lobit, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  tail call fastcc void @psc724_set_jack_state(ptr noundef %1, i1 noundef zeroext %tobool)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psc724_set_jack_detection(ptr noundef %ice, i1 noundef zeroext %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %jack_detect = getelementptr inbounds %struct.psc724_spec, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %jack_detect to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %jack_detect, align 1, !range !112
  %4 = zext i1 %on to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %4)
  %cmp = icmp eq i8 %3, %4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %jack_detect to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %jack_detect, align 1
  br i1 %on, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %get_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %6 = ptrtoint ptr %get_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_data.i, align 4
  %call.i = tail call i32 %7(ptr noundef %ice) #6
  %and = and i32 %call.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10 = icmp ne i32 %and, 0
  tail call fastcc void @psc724_set_jack_state(ptr noundef %ice, i1 noundef zeroext %tobool10)
  %hp_work = getelementptr inbounds %struct.psc724_spec, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %hp_work, i32 noundef 100) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %hp_work15 = getelementptr inbounds %struct.psc724_spec, ptr %1, i32 0, i32 5
  %call16 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %hp_work15) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then9, %entry.cleanup_crit_edge
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_wm8776_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_wm8766_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_wm8776_volume_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_wm8766_volume_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @psc724_set_jack_state(ptr noundef %ice, i1 noundef zeroext %hp_connected) unnamed_addr #0 align 64 {
entry:
  %elem_id = alloca %struct.snd_ctl_elem_id, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %elem_id) #6
  %arrayidx = getelementptr %struct.psc724_spec, ptr %1, i32 0, i32 1, i32 4, i32 13
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = and i16 %3, -9
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %5 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %ice) #6
  %7 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spec1, align 4
  %mute_all.i = getelementptr inbounds %struct.psc724_spec, ptr %8, i32 0, i32 2
  %frombool2.i = zext i1 %hp_connected to i8
  %9 = ptrtoint ptr %mute_all.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool2.i, ptr %mute_all.i, align 4
  %and.i = and i32 %call.i.i, -5242881
  %masksel.i = select i1 %hp_connected, i32 5242880, i32 0
  %bits.0.i = or i32 %and.i, %masksel.i
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %10 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_data.i.i, align 4
  tail call void %11(ptr noundef %ice, i32 noundef %bits.0.i) #6
  %masksel = select i1 %hp_connected, i16 0, i16 8
  %spec.select = or i16 %4, %masksel
  %wm8776 = getelementptr inbounds %struct.psc724_spec, ptr %1, i32 0, i32 1
  tail call void @snd_wm8776_set_power(ptr noundef %wm8776, i16 noundef zeroext %spec.select) #6
  %hp_connected8 = getelementptr inbounds %struct.psc724_spec, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %hp_connected8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool2.i, ptr %hp_connected8, align 4
  %13 = call ptr @memset(ptr %elem_id, i32 0, i32 64)
  %iface = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %elem_id, i32 0, i32 1
  %14 = ptrtoint ptr %iface to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %iface, align 4
  %name = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %elem_id, i32 0, i32 4
  %call = call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.5, i32 noundef 44) #6
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %15 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card, align 4
  %call10 = call ptr @snd_ctl_find_id(ptr noundef %16, ptr noundef nonnull %elem_id) #6
  %17 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %call10, i32 0, i32 1
  call void @snd_ctl_notify(ptr noundef %18, i32 noundef 1, ptr noundef %id) #6
  %arrayidx15 = getelementptr %struct.psc724_spec, ptr %1, i32 0, i32 1, i32 1, i32 4
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx15, align 4
  %call17 = call i32 @strscpy(ptr noundef %name, ptr noundef %20, i32 noundef 44) #6
  %21 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card, align 4
  %call19 = call ptr @snd_ctl_find_id(ptr noundef %22, ptr noundef nonnull %elem_id) #6
  %23 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card, align 4
  %id21 = getelementptr inbounds %struct.snd_kcontrol, ptr %call19, i32 0, i32 1
  call void @snd_ctl_notify(ptr noundef %24, i32 noundef 1, ptr noundef %id21) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %elem_id) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psc724_set_master_switch(ptr noundef %ice, i1 noundef zeroext %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %get_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %0 = ptrtoint ptr %get_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_data.i, align 4
  %call.i = tail call i32 %1(ptr noundef %ice) #6
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  %lnot = xor i1 %on, true
  %mute_all = getelementptr inbounds %struct.psc724_spec, ptr %3, i32 0, i32 2
  %frombool2 = zext i1 %lnot to i8
  %4 = ptrtoint ptr %mute_all to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool2, ptr %mute_all, align 4
  %and = and i32 %call.i, -5242881
  %masksel = select i1 %on, i32 0, i32 5242880
  %bits.0 = or i32 %and, %masksel
  %set_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %5 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_data.i, align 4
  tail call void %6(ptr noundef %ice, i32 noundef %bits.0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_wm8776_set_power(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_find_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_wm8776_build_controls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_wm8766_build_controls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psc724_ctl_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
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
  %get = getelementptr [2 x %struct.psc724_control], ptr @psc724_cont, i32 0, i32 %3, i32 2
  %4 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get, align 4
  %call = tail call zeroext i1 %5(ptr noundef %1) #6
  %conv = zext i1 %call to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psc724_ctl_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %set = getelementptr [2 x %struct.psc724_control], ptr @psc724_cont, i32 0, i32 %3, i32 1
  %4 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool = icmp ne i32 %7, 0
  tail call void %5(ptr noundef %1, i1 noundef zeroext %tobool) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @psc724_get_master_switch(ptr nocapture noundef readonly %ice) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %mute_all = getelementptr inbounds %struct.psc724_spec, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mute_all to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mute_all, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @psc724_get_jack_detection(ptr nocapture noundef readonly %ice) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %jack_detect = getelementptr inbounds %struct.psc724_spec, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %jack_detect to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %jack_detect, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  ret i1 %tobool
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/ice1712/psc724.c", i32 441, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ice1712/psc724.c", i32 442, i32 12}
!4 = !{ptr @snd_vt1724_psc724_cards, !5, !"snd_vt1724_psc724_cards", i1 false, i1 false}
!5 = !{!"../sound/pci/ice1712/psc724.c", i32 438, i32 30}
!6 = !{ptr @psc724_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../sound/pci/ice1712/psc724.c", i32 410, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @psc724_init.__key.3, !7, !"__key", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/pci/ice1712/psc724.c", i32 192, i32 24}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/pci/ice1712/psc724.c", i32 283, i32 35}
!15 = distinct !{null, !16, !"front_volume", i1 false, i1 false}
!16 = !{!"../sound/pci/ice1712/psc724.c", i32 283, i32 20}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/pci/ice1712/psc724.c", i32 284, i32 35}
!19 = distinct !{null, !20, !"front_switch", i1 false, i1 false}
!20 = !{!"../sound/pci/ice1712/psc724.c", i32 284, i32 20}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/pci/ice1712/psc724.c", i32 285, i32 31}
!23 = distinct !{null, !24, !"front_zc", i1 false, i1 false}
!24 = !{!"../sound/pci/ice1712/psc724.c", i32 285, i32 20}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/pci/ice1712/psc724.c", i32 286, i32 32}
!27 = distinct !{null, !28, !"front_izd", i1 false, i1 false}
!28 = !{!"../sound/pci/ice1712/psc724.c", i32 286, i32 20}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/pci/ice1712/psc724.c", i32 287, i32 34}
!31 = distinct !{null, !32, !"front_phase", i1 false, i1 false}
!32 = !{!"../sound/pci/ice1712/psc724.c", i32 287, i32 20}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/pci/ice1712/psc724.c", i32 288, i32 35}
!35 = distinct !{null, !36, !"front_deemph", i1 false, i1 false}
!36 = !{!"../sound/pci/ice1712/psc724.c", i32 288, i32 20}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/pci/ice1712/psc724.c", i32 289, i32 34}
!39 = distinct !{null, !40, !"ain1_switch", i1 false, i1 false}
!40 = !{!"../sound/pci/ice1712/psc724.c", i32 289, i32 20}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/pci/ice1712/psc724.c", i32 290, i32 34}
!43 = distinct !{null, !44, !"ain2_switch", i1 false, i1 false}
!44 = !{!"../sound/pci/ice1712/psc724.c", i32 290, i32 20}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/pci/ice1712/psc724.c", i32 291, i32 34}
!47 = distinct !{null, !48, !"ain3_switch", i1 false, i1 false}
!48 = !{!"../sound/pci/ice1712/psc724.c", i32 291, i32 20}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/pci/ice1712/psc724.c", i32 292, i32 34}
!51 = distinct !{null, !52, !"ain4_switch", i1 false, i1 false}
!52 = !{!"../sound/pci/ice1712/psc724.c", i32 292, i32 20}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/pci/ice1712/psc724.c", i32 293, i32 34}
!55 = distinct !{null, !56, !"ain5_switch", i1 false, i1 false}
!56 = !{!"../sound/pci/ice1712/psc724.c", i32 293, i32 20}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/pci/ice1712/psc724.c", i32 294, i32 34}
!59 = distinct !{null, !60, !"rear_volume", i1 false, i1 false}
!60 = !{!"../sound/pci/ice1712/psc724.c", i32 294, i32 20}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/pci/ice1712/psc724.c", i32 295, i32 34}
!63 = distinct !{null, !64, !"clfe_volume", i1 false, i1 false}
!64 = !{!"../sound/pci/ice1712/psc724.c", i32 295, i32 20}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/pci/ice1712/psc724.c", i32 296, i32 34}
!67 = distinct !{null, !68, !"rear_switch", i1 false, i1 false}
!68 = !{!"../sound/pci/ice1712/psc724.c", i32 296, i32 20}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pci/ice1712/psc724.c", i32 297, i32 34}
!71 = distinct !{null, !72, !"clfe_switch", i1 false, i1 false}
!72 = !{!"../sound/pci/ice1712/psc724.c", i32 297, i32 20}
!73 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/pci/ice1712/psc724.c", i32 298, i32 33}
!75 = distinct !{null, !76, !"rear_phase", i1 false, i1 false}
!76 = !{!"../sound/pci/ice1712/psc724.c", i32 298, i32 20}
!77 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/pci/ice1712/psc724.c", i32 299, i32 33}
!79 = distinct !{null, !80, !"clfe_phase", i1 false, i1 false}
!80 = !{!"../sound/pci/ice1712/psc724.c", i32 299, i32 20}
!81 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/pci/ice1712/psc724.c", i32 300, i32 34}
!83 = distinct !{null, !84, !"rear_deemph", i1 false, i1 false}
!84 = !{!"../sound/pci/ice1712/psc724.c", i32 300, i32 20}
!85 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/pci/ice1712/psc724.c", i32 301, i32 34}
!87 = distinct !{null, !88, !"clfe_deemph", i1 false, i1 false}
!88 = !{!"../sound/pci/ice1712/psc724.c", i32 301, i32 20}
!89 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/pci/ice1712/psc724.c", i32 302, i32 36}
!91 = distinct !{null, !92, !"rear_clfe_izd", i1 false, i1 false}
!92 = !{!"../sound/pci/ice1712/psc724.c", i32 302, i32 20}
!93 = !{ptr @.str.26, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/pci/ice1712/psc724.c", i32 303, i32 35}
!95 = distinct !{null, !96, !"rear_clfe_zc", i1 false, i1 false}
!96 = !{!"../sound/pci/ice1712/psc724.c", i32 303, i32 20}
!97 = !{ptr @.str.27, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/pci/ice1712/psc724.c", i32 255, i32 11}
!99 = !{ptr @psc724_cont, !100, !"psc724_cont", i1 false, i1 false}
!100 = !{!"../sound/pci/ice1712/psc724.c", i32 248, i32 36}
!101 = !{ptr @psc724_eeprom, !102, !"psc724_eeprom", i1 false, i1 false}
!102 = !{!"../sound/pci/ice1712/psc724.c", i32 423, i32 28}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i8 0, i8 2}
