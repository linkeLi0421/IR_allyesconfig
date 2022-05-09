; ModuleID = '/llk/IR_all_yes/sound/pci/ice1712/se.c_pt.bc'
source_filename = "../sound/pci/ice1712/se.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_ice1712_card_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, i32, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.se200pci_control = type { ptr, i32, i32, i32, ptr, ptr }
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
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.88, i32 }
%union.anon.88 = type { ptr }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.73, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.73 = type { %struct.anon.76, [40 x i8] }
%struct.anon.76 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.anon.87 = type { i8, i8 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ONKYO SE200PCI\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"se200pci\00", [23 x i8] zeroinitializer }, align 32
@se200pci_eeprom = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"K\80x\C3\02\00\07\00\00\00\00\00\07", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ONKYO SE90PCI\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"se90pci\00", [24 x i8] zeroinitializer }, align 32
@se90pci_eeprom = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"K\80x\C3", [28 x i8] zeroinitializer }, align 32
@snd_vt1724_se_cards = dso_local global { [3 x %struct.snd_ice1712_card_info], [56 x i8] } { [3 x %struct.snd_ice1712_card_info] [%struct.snd_ice1712_card_info { i32 185991424, ptr @.str, ptr @.str.1, ptr null, ptr @se_init, ptr null, ptr @se_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 13, ptr @se200pci_eeprom }, %struct.snd_ice1712_card_info { i32 185995264, ptr @.str.2, ptr @.str.3, ptr null, ptr @se_init, ptr null, ptr @se_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 4, ptr @se90pci_eeprom }, %struct.snd_ice1712_card_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@se200pci_WM8776_init.default_values = internal constant { [23 x i16], [50 x i8] } { [23 x i16] [i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 0, i16 144, i16 0, i16 0, i16 34, i16 34, i16 34, i16 8, i16 207, i16 207, i16 123, i16 0, i16 50, i16 0, i16 166, i16 1, i16 1], [50 x i8] zeroinitializer }, align 32
@se200pci_WM8776_set_input_selector.vals = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\10\04\08\1C\03", [27 x i8] zeroinitializer }, align 32
@se200pci_cont = internal constant { [8 x %struct.se200pci_control], [32 x i8] } { [8 x %struct.se200pci_control] [%struct.se200pci_control { ptr @.str.6, i32 2, i32 0, i32 0, ptr null, ptr @.str.7 }, %struct.se200pci_control { ptr @.str.8, i32 0, i32 0, i32 1, ptr null, ptr @.str.9 }, %struct.se200pci_control { ptr @.str.10, i32 0, i32 0, i32 2, ptr null, ptr @.str.11 }, %struct.se200pci_control { ptr @.str.12, i32 0, i32 0, i32 0, ptr null, ptr @.str.13 }, %struct.se200pci_control { ptr @.str.14, i32 1, i32 1, i32 0, ptr null, ptr null }, %struct.se200pci_control { ptr @.str.15, i32 3, i32 3, i32 0, ptr @se200pci_sel, ptr null }, %struct.se200pci_control { ptr @.str.16, i32 4, i32 3, i32 0, ptr @se200pci_agc, ptr null }, %struct.se200pci_control { ptr @.str.17, i32 5, i32 2, i32 0, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@db_scale_gain1 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12750, i32 65586], [16 x i8] zeroinitializer }, align 32
@db_scale_gain2 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10350, i32 65586], [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sound/pci/ice1712/se.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Front Playback Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Front(green)\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Side Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Surround(orange)\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Surround Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SurroundBack(white)\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CLFE Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Center(Lch)&SubWoofer(Rch)(black)\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Select\00", [17 x i8] zeroinitializer }, align 32
@se200pci_sel = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr null], [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AGC Capture Mode\00", [47 x i8] zeroinitializer }, align 32
@se200pci_agc = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AFL Bypass Playback Switch\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LINE-IN\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CD-IN\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIC-IN\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ALL-MIX\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LimiterMode\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ALCMode\00", [24 x i8] zeroinitializer }, align 32
@switch.table.se200pci_cont_update = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 4, i32 6], [20 x i8] zeroinitializer }, align 32
@switch.table.se200pci_cont_update.25 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 5, i32 7], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 185991424, i64 185995264]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 735, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 736, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"se200pci_eeprom\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 704, i32 28 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 744, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 745, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"se90pci_eeprom\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 723, i32 28 }
@___asan_gen_.47 = private unnamed_addr constant [20 x i8] c"snd_vt1724_se_cards\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 732, i32 30 }
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"default_values\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 291, i32 30 }
@___asan_gen_.53 = private unnamed_addr constant [5 x i8] c"vals\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 248, i32 29 }
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"se200pci_cont\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 355, i32 38 }
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"db_scale_gain1\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 578, i32 14 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"db_scale_gain2\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 579, i32 14 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 617, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 357, i32 11 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 360, i32 14 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 363, i32 11 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 367, i32 14 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 370, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 374, i32 14 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 377, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 381, i32 14 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 384, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 389, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant [13 x i8] c"se200pci_sel\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 241, i32 27 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 395, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant [13 x i8] c"se200pci_agc\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 266, i32 27 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 401, i32 11 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 242, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 242, i32 13 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 242, i32 22 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 242, i32 32 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 267, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 267, i32 9 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [26 x i8] c"../sound/pci/ice1712/se.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 267, i32 24 }
@___asan_gen_.134 = private unnamed_addr constant [34 x i8] c"switch.table.se200pci_cont_update\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [37 x i8] c"switch.table.se200pci_cont_update.25\00", align 1
@llvm.compiler.used = appending global [37 x ptr] [ptr @.str, ptr @.str.1, ptr @se200pci_eeprom, ptr @.str.2, ptr @.str.3, ptr @se90pci_eeprom, ptr @snd_vt1724_se_cards, ptr @se200pci_WM8776_init.default_values, ptr @se200pci_WM8776_set_input_selector.vals, ptr @se200pci_cont, ptr @db_scale_gain1, ptr @db_scale_gain2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @se200pci_sel, ptr @.str.16, ptr @se200pci_agc, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @switch.table.se200pci_cont_update, ptr @switch.table.se200pci_cont_update.25], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @se200pci_eeprom to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @se90pci_eeprom to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_se_cards to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @se200pci_WM8776_init.default_values to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @se200pci_WM8776_set_input_selector.vals to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @se200pci_cont to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_gain1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_gain2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @se200pci_sel to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @se200pci_agc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.se200pci_cont_update to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.se200pci_cont_update.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @se_init(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %1 = ptrtoint ptr %spec1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %spec1, align 4
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  %2 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eeprom, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 185995264, label %if.then2
    i32 185991424, label %if.then6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %num_total_dacs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %5 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %num_total_dacs, align 4
  %num_total_adcs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %6 = ptrtoint ptr %num_total_adcs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %num_total_adcs, align 4
  %vt1720 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 32
  %7 = ptrtoint ptr %vt1720 to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %vt1720, align 4
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %vt1720, align 4
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %num_total_dacs7 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %8 = ptrtoint ptr %num_total_dacs7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %num_total_dacs7, align 4
  %num_total_adcs8 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %9 = ptrtoint ptr %num_total_adcs8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %num_total_adcs8, align 4
  tail call fastcc void @se200pci_WM8766_write(ptr noundef %ice, i32 noundef 31, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #7
  tail call fastcc void @se200pci_WM8766_write(ptr noundef %ice, i32 noundef 0, i32 noundef 0) #7
  tail call fastcc void @se200pci_WM8766_write(ptr noundef %ice, i32 noundef 1, i32 noundef 256) #7
  tail call fastcc void @se200pci_WM8766_write(ptr noundef %ice, i32 noundef 4, i32 noundef 0) #7
  tail call fastcc void @se200pci_WM8766_write(ptr noundef %ice, i32 noundef 5, i32 noundef 256) #7
  tail call fastcc void @se200pci_WM8766_write(ptr noundef %ice, i32 noundef 6, i32 noundef 0) #7
  tail call fastcc void @se200pci_WM8766_write(ptr noundef %ice, i32 noundef 7, i32 noundef 256) #7
  tail call fastcc void @se200pci_WM8766_write(ptr noundef %ice, i32 noundef 3, i32 noundef 34) #7
  tail call fastcc void @se200pci_WM8766_write(ptr noundef %ice, i32 noundef 10, i32 noundef 128) #7
  tail call fastcc void @se200pci_WM8766_write(ptr noundef %ice, i32 noundef 18, i32 noundef 0) #7
  tail call fastcc void @se200pci_WM8766_write(ptr noundef %ice, i32 noundef 21, i32 noundef 0) #7
  tail call fastcc void @se200pci_WM8766_write(ptr noundef %ice, i32 noundef 9, i32 noundef 0) #7
  tail call fastcc void @se200pci_WM8766_write(ptr noundef %ice, i32 noundef 2, i32 noundef 292) #7
  tail call fastcc void @se200pci_WM8766_write(ptr noundef %ice, i32 noundef 2, i32 noundef 288) #7
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 46, i8 noundef zeroext 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then6
  %i.014.i = phi i32 [ 0, %if.then6 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [23 x i16], ptr @se200pci_WM8776_init.default_values, i32 0, i32 %i.014.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %13 to i32
  %shl.i.i = shl nuw nsw i32 %i.014.i, 9
  %or.i.i = or i32 %shl.i.i, %conv.i
  %shr.i.i = lshr i32 %or.i.i, 8
  %conv.i.i = trunc i32 %shr.i.i to i8
  %conv1.i.i = trunc i16 %13 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext %conv.i.i, i8 noundef zeroext %conv1.i.i) #7
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 23
  br i1 %exitcond.not.i, label %se200pci_WM8776_init.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

se200pci_WM8776_init.exit:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 42, i8 noundef zeroext 16) #7
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 44, i8 noundef zeroext 1) #7
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 34, i8 noundef zeroext 0) #7
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 28, i8 noundef zeroext 0) #7
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 31, i8 noundef zeroext 0) #7
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 6, i8 noundef zeroext 0) #7
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 9, i8 noundef zeroext 0) #7
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 2, i8 noundef zeroext 0) #7
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 5, i8 noundef zeroext 0) #7
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 26, i8 noundef zeroext -128) #7
  %set_pro_rate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 9
  %14 = ptrtoint ptr %set_pro_rate to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @se200pci_set_pro_rate, ptr %set_pro_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %se200pci_WM8776_init.exit, %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %se200pci_WM8776_init.exit ], [ -12, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @se_add_controls(ptr noundef %ice) #0 align 64 {
entry:
  %cont.i = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eeprom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 185991424, i32 %1)
  %cmp = icmp eq i32 %1, 185991424
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cont.i) #7
  %2 = getelementptr inbounds i8, ptr %cont.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 36)
  %4 = ptrtoint ptr %cont.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %cont.i, align 4
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont.i, i32 0, i32 11
  %name1.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont.i, i32 0, i32 3
  %access.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont.i, i32 0, i32 5
  %tlv.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont.i, i32 0, i32 10
  %info14.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont.i, i32 0, i32 7
  %get15.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont.i, i32 0, i32 8
  %put16.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %cont.i, i32 0, i32 9
  %card.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  br label %for.body.i

for.cond.i:                                       ; preds = %sw.epilog.i
  %inc.i = add nuw nsw i32 %i.047.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.cond.i.se200pci_add_controls.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.se200pci_add_controls.exit_crit_edge:  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %se200pci_add_controls.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then
  %i.047.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %private_value.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %i.047.i, ptr %private_value.i, align 4
  %arrayidx.i = getelementptr [8 x %struct.se200pci_control], ptr @se200pci_cont, i32 0, i32 %i.047.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %8 = ptrtoint ptr %name1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %name1.i, align 4
  %9 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %access.i, align 4
  %10 = ptrtoint ptr %tlv.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %tlv.i, align 4
  %type.i = getelementptr [8 x %struct.se200pci_control], ptr @se200pci_cont, i32 0, i32 %i.047.i, i32 2
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %12, label %do.end.i [
    i32 0, label %for.body.i.sw.bb.i_crit_edge
    i32 1, label %for.body.i.sw.bb.i_crit_edge2
    i32 2, label %sw.bb9.i
    i32 3, label %sw.bb13.i
  ]

for.body.i.sw.bb.i_crit_edge2:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

for.body.i.sw.bb.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %for.body.i.sw.bb.i_crit_edge, %for.body.i.sw.bb.i_crit_edge2
  %14 = ptrtoint ptr %info14.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @se200pci_cont_volume_info, ptr %info14.i, align 4
  %15 = ptrtoint ptr %get15.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @se200pci_cont_volume_get, ptr %get15.i, align 4
  %16 = ptrtoint ptr %put16.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @se200pci_cont_volume_put, ptr %put16.i, align 4
  %17 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 19, ptr %access.i, align 4
  %18 = and i32 %i.047.i, 536870908
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp6.i = icmp eq i32 %18, 0
  br i1 %cmp6.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %tlv.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @db_scale_gain1, ptr %tlv.i, align 4
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %tlv.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @db_scale_gain2, ptr %tlv.i, align 4
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %info14.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @snd_ctl_boolean_mono_info, ptr %info14.i, align 4
  %22 = ptrtoint ptr %get15.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @se200pci_cont_boolean_get, ptr %get15.i, align 4
  %23 = ptrtoint ptr %put16.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @se200pci_cont_boolean_put, ptr %put16.i, align 4
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %info14.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @se200pci_cont_enum_info, ptr %info14.i, align 4
  %25 = ptrtoint ptr %get15.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @se200pci_cont_enum_get, ptr %get15.i, align 4
  %26 = ptrtoint ptr %put16.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @se200pci_cont_enum_put, ptr %put16.i, align 4
  br label %sw.epilog.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 617, i32 noundef 9, ptr noundef nonnull @.str.5) #7
  br label %se200pci_add_controls.exit

sw.epilog.i:                                      ; preds = %sw.bb13.i, %sw.bb9.i, %if.else.i, %if.then.i
  %27 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card.i, align 4
  %call.i = call ptr @snd_ctl_new1(ptr noundef nonnull %cont.i, ptr noundef %ice) #7
  %call33.i = call i32 @snd_ctl_add(ptr noundef %28, ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp slt i32 %call33.i, 0
  br i1 %cmp34.i, label %sw.epilog.i.se200pci_add_controls.exit_crit_edge, label %for.cond.i

sw.epilog.i.se200pci_add_controls.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %se200pci_add_controls.exit

se200pci_add_controls.exit:                       ; preds = %sw.epilog.i.se200pci_add_controls.exit_crit_edge, %do.end.i, %for.cond.i.se200pci_add_controls.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ %call33.i, %sw.epilog.i.se200pci_add_controls.exit_crit_edge ], [ 0, %for.cond.i.se200pci_add_controls.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cont.i) #7
  br label %if.end

if.end:                                           ; preds = %se200pci_add_controls.exit, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %retval.0.i, %se200pci_add_controls.exit ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @se200pci_set_pro_rate(ptr noundef %ice, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %rate)
  %cmp.i = icmp ugt i32 %rate, 96000
  %..i = select i1 %cmp.i, i32 0, i32 128
  tail call fastcc void @se200pci_WM8766_write(ptr noundef %ice, i32 noundef 10, i32 noundef %..i) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @se200pci_WM8766_write(ptr noundef %ice, i32 noundef %addr, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #7
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46
  %0 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 2
  %2 = ptrtoint ptr %saved.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %saved.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 1
  %3 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %write_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx5.i, align 4
  %and = shl i32 %addr, 9
  %shl = and i32 %and, 65024
  %and1 = and i32 %data, 511
  %or = or i32 %shl, %and1
  %or2 = or i32 %1, 458752
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 5
  %6 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_dir.i, align 4
  tail call void %7(ptr noundef %ice, i32 noundef %or2) #7
  %8 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %write_mask.i, align 4
  %and4 = and i32 %9, -458753
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 3
  %10 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_mask.i, align 4
  tail call void %11(ptr noundef %ice, i32 noundef %and4) #7
  %get_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %12 = ptrtoint ptr %get_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_data.i, align 4
  %call.i = tail call i32 %13(ptr noundef %ice) #7
  %and5 = and i32 %call.i, -458753
  %set_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %14 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_data.i, align 4
  tail call void %15(ptr noundef %ice, i32 noundef %and5) #7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %st.050 = phi i32 [ %or, %entry ], [ %shl7, %for.body.for.body_crit_edge ]
  %bits.049 = phi i32 [ %and5, %entry ], [ %or11, %for.body.for.body_crit_edge ]
  %i.048 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #7
  %shl7 = shl i32 %st.050, 1
  %and6 = and i32 %bits.049, -196609
  %17 = and i32 %shl7, 65536
  %18 = or i32 %17, %and6
  %19 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_data.i, align 4
  tail call void %20(ptr noundef %ice, i32 noundef %18) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #7
  %or11 = or i32 %18, 131072
  %22 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_data.i, align 4
  tail call void %23(ptr noundef %ice, i32 noundef %or11) #7
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #7
  %or12 = or i32 %18, 393216
  %25 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_data.i, align 4
  tail call void %26(ptr noundef %ice, i32 noundef %or12) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #7
  %or13 = or i32 %bits.049, 458752
  %28 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_data.i, align 4
  tail call void %29(ptr noundef %ice, i32 noundef %or13) #7
  %30 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_dir.i, align 4
  %32 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %saved.i, align 4
  tail call void %31(ptr noundef %ice, i32 noundef %33) #7
  %34 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_mask.i, align 4
  %36 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx5.i, align 4
  tail call void %35(ptr noundef %ice, i32 noundef %37) #7
  %38 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %saved.i, align 4
  %40 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %gpio.i, align 4
  %41 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx5.i, align 4
  %43 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_vt1724_write_i2c(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @se200pci_cont_volume_info(ptr nocapture noundef readnone %kc, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  store i32 255, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @se200pci_cont_volume_get(ptr nocapture noundef readonly %kc, ptr nocapture noundef writeonly %uc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kc, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kc, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %arrayidx = getelementptr [8 x %struct.anon.87], ptr %3, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uc, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %value, align 8
  %ch2 = getelementptr [8 x %struct.anon.87], ptr %3, i32 0, i32 %5, i32 1
  %9 = ptrtoint ptr %ch2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ch2, align 1
  %conv5 = zext i8 %10 to i32
  %arrayidx7 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv5, ptr %arrayidx7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @se200pci_cont_volume_put(ptr nocapture noundef readonly %kc, ptr nocapture noundef readonly %uc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kc, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kc, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uc, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  %arrayidx3 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr [8 x %struct.anon.87], ptr %3, i32 0, i32 %5
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5, align 1
  %12 = trunc i32 %7 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %12)
  %cmp.not = icmp eq i8 %11, %12
  br i1 %cmp.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %ch2 = getelementptr [8 x %struct.anon.87], ptr %3, i32 0, i32 %5, i32 1
  %13 = ptrtoint ptr %ch2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ch2, align 1
  %15 = trunc i32 %9 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %15)
  %cmp14.not = icmp eq i8 %14, %15
  br i1 %cmp14.not, label %if.end.if.end23_crit_edge, label %if.end.if.end21.thread_crit_edge

if.end.if.end21.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.thread

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end.thread:                                    ; preds = %entry
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %12, ptr %arrayidx5, align 1
  %ch241 = getelementptr [8 x %struct.anon.87], ptr %3, i32 0, i32 %5, i32 1
  %17 = ptrtoint ptr %ch241 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ch241, align 1
  %19 = trunc i32 %9 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %19)
  %cmp14.not42 = icmp eq i8 %18, %19
  br i1 %cmp14.not42, label %if.end.thread.if.then22_crit_edge, label %if.end.thread.if.end21.thread_crit_edge

if.end.thread.if.end21.thread_crit_edge:          ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.thread

if.end.thread.if.then22_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.end21.thread:                                  ; preds = %if.end.thread.if.end21.thread_crit_edge, %if.end.if.end21.thread_crit_edge
  %20 = phi i8 [ %19, %if.end.thread.if.end21.thread_crit_edge ], [ %15, %if.end.if.end21.thread_crit_edge ]
  %ch243 = phi ptr [ %ch241, %if.end.thread.if.end21.thread_crit_edge ], [ %ch2, %if.end.if.end21.thread_crit_edge ]
  %21 = ptrtoint ptr %ch243 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %ch243, align 1
  br label %if.then22

if.then22:                                        ; preds = %if.end21.thread, %if.end.thread.if.then22_crit_edge
  tail call fastcc void @se200pci_cont_update(ptr noundef %1, i32 noundef %5)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end.if.end23_crit_edge
  %changed.140 = phi i32 [ 1, %if.then22 ], [ 0, %if.end.if.end23_crit_edge ]
  ret i32 %changed.140
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @se200pci_cont_boolean_get(ptr nocapture noundef readonly %kc, ptr nocapture noundef writeonly %uc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kc, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kc, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %arrayidx = getelementptr [8 x %struct.anon.87], ptr %3, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uc, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @se200pci_cont_boolean_put(ptr nocapture noundef readonly %kc, ptr nocapture noundef readonly %uc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kc, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kc, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uc, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool = icmp ne i32 %7, 0
  %arrayidx3 = getelementptr [8 x %struct.anon.87], ptr %3, i32 0, i32 %5
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx3, align 1
  %10 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %10)
  %cmp.not = icmp eq i8 %9, %10
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx3, align 1
  tail call fastcc void @se200pci_cont_update(ptr noundef %1, i32 noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @se200pci_cont_enum_info(ptr nocapture noundef readonly %kc, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kc, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %member1.i = getelementptr [8 x %struct.se200pci_control], ptr @se200pci_cont, i32 0, i32 %1, i32 4
  %2 = ptrtoint ptr %member1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %member1.i, align 4
  %4 = and i32 %1, 536870911
  %5 = add nsw i32 %4, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %5)
  %6 = icmp ult i32 %5, -2
  br i1 %6, label %entry.cleanup_crit_edge, label %entry.for.cond.i_crit_edge

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %c.0.i = phi i32 [ %inc.i, %for.cond.i.for.cond.i_crit_edge ], [ 0, %entry.for.cond.i_crit_edge ]
  %arrayidx2.i = getelementptr ptr, ptr %3, i32 %c.0.i
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx2.i, align 4
  %tobool3.not.i = icmp eq ptr %8, null
  %inc.i = add i32 %c.0.i, 1
  br i1 %tobool3.not.i, label %se200pci_get_enum_count.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

se200pci_get_enum_count.exit:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i)
  %tobool.not = icmp eq i32 %c.0.i, 0
  br i1 %tobool.not, label %se200pci_get_enum_count.exit.cleanup_crit_edge, label %if.end

se200pci_get_enum_count.exit.cleanup_crit_edge:   ; preds = %se200pci_get_enum_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %se200pci_get_enum_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef %c.0.i, ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %se200pci_get_enum_count.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %se200pci_get_enum_count.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @se200pci_cont_enum_get(ptr nocapture noundef readonly %kc, ptr nocapture noundef writeonly %uc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kc, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kc, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %arrayidx = getelementptr [8 x %struct.anon.87], ptr %3, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uc, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @se200pci_cont_enum_put(ptr nocapture noundef readonly %kc, ptr nocapture noundef readonly %uc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kc, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kc, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uc, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  %member1.i = getelementptr [8 x %struct.se200pci_control], ptr @se200pci_cont, i32 0, i32 %5, i32 4
  %8 = ptrtoint ptr %member1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %member1.i, align 4
  %10 = and i32 %5, 536870911
  %11 = add nsw i32 %10, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %11)
  %12 = icmp ult i32 %11, -2
  br i1 %12, label %entry.cleanup_crit_edge, label %entry.for.cond.i_crit_edge

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %c.0.i = phi i32 [ %inc.i, %for.cond.i.for.cond.i_crit_edge ], [ 0, %entry.for.cond.i_crit_edge ]
  %arrayidx2.i = getelementptr ptr, ptr %9, i32 %c.0.i
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx2.i, align 4
  %tobool3.not.i = icmp eq ptr %14, null
  %inc.i = add i32 %c.0.i, 1
  br i1 %tobool3.not.i, label %se200pci_get_enum_count.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

se200pci_get_enum_count.exit:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %c.0.i)
  %cmp.not = icmp ult i32 %7, %c.0.i
  br i1 %cmp.not, label %if.end, label %se200pci_get_enum_count.exit.cleanup_crit_edge

se200pci_get_enum_count.exit.cleanup_crit_edge:   ; preds = %se200pci_get_enum_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %se200pci_get_enum_count.exit
  %arrayidx2 = getelementptr [8 x %struct.anon.87], ptr %3, i32 0, i32 %5
  %15 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp3.not = icmp eq i32 %7, %conv
  br i1 %cmp3.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv6 = trunc i32 %7 to i8
  %17 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv6, ptr %arrayidx2, align 1
  tail call fastcc void @se200pci_cont_update(ptr noundef %1, i32 noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %se200pci_get_enum_count.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then5 ], [ -22, %se200pci_get_enum_count.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @se200pci_cont_update(ptr noundef %ice, i32 noundef %n) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %target = getelementptr [8 x %struct.se200pci_control], ptr @se200pci_cont, i32 0, i32 %n, i32 1
  %2 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %switch.lookup
    i32 1, label %sw.bb7
    i32 2, label %sw.bb16
    i32 3, label %sw.bb25
    i32 4, label %sw.bb30
    i32 5, label %sw.bb35
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ch = getelementptr [8 x %struct.se200pci_control], ptr @se200pci_cont, i32 0, i32 %n, i32 3
  %5 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ch, align 4
  %ch2 = getelementptr [8 x %struct.anon.87], ptr %1, i32 0, i32 %n, i32 1
  %7 = ptrtoint ptr %ch2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ch2, align 1
  %conv6 = zext i8 %8 to i32
  %arrayidx3 = getelementptr [8 x %struct.anon.87], ptr %1, i32 0, i32 %n
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx3, align 1
  %conv = zext i8 %10 to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.se200pci_cont_update, i32 0, i32 %6
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep71 = getelementptr inbounds [3 x i32], ptr @switch.table.se200pci_cont_update.25, i32 0, i32 %6
  %12 = ptrtoint ptr %switch.gep71 to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load72 = load i32, ptr %switch.gep71, align 4
  tail call fastcc void @se200pci_WM8766_write(ptr noundef %ice, i32 noundef %switch.load, i32 noundef %conv) #7
  %or4.i = or i32 %conv6, 256
  tail call fastcc void @se200pci_WM8766_write(ptr noundef %ice, i32 noundef %switch.load72, i32 noundef %or4.i) #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx9 = getelementptr [8 x %struct.anon.87], ptr %1, i32 0, i32 %n
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx9, align 1
  %ch214 = getelementptr [8 x %struct.anon.87], ptr %1, i32 0, i32 %n, i32 1
  %15 = ptrtoint ptr %ch214 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ch214, align 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 28, i8 noundef zeroext %14) #7
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 31, i8 noundef zeroext %16) #7
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx18 = getelementptr [8 x %struct.anon.87], ptr %1, i32 0, i32 %n
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx18, align 1
  %ch223 = getelementptr [8 x %struct.anon.87], ptr %1, i32 0, i32 %n, i32 1
  %19 = ptrtoint ptr %ch223 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ch223, align 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 6, i8 noundef zeroext %18) #7
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 9, i8 noundef zeroext %20) #7
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx27 = getelementptr [8 x %struct.anon.87], ptr %1, i32 0, i32 %n
  %21 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx27, align 1
  %23 = tail call i8 @llvm.umin.i8(i8 %22, i8 4)
  %24 = zext i8 %23 to i32
  %arrayidx.i = getelementptr [5 x i8], ptr @se200pci_WM8776_set_input_selector.vals, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i, align 1
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 42, i8 noundef zeroext %26) #7
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  %arrayidx32 = getelementptr [8 x %struct.anon.87], ptr %1, i32 0, i32 %n
  %27 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx32, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %28, label %sw.bb30.sw.epilog_crit_edge [
    i8 0, label %sw.bb30.sw.epilog.sink.split.i70_crit_edge
    i8 1, label %sw.bb1.i68
    i8 2, label %sw.bb2.i
  ]

sw.bb30.sw.epilog.sink.split.i70_crit_edge:       ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i70

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1.i68:                                       ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 32, i8 noundef zeroext 123) #7
  br label %sw.epilog.sink.split.i70

sw.bb2.i:                                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 33, i8 noundef zeroext -5) #7
  br label %sw.epilog.sink.split.i70

sw.epilog.sink.split.i70:                         ; preds = %sw.bb2.i, %sw.bb1.i68, %sw.bb30.sw.epilog.sink.split.i70_crit_edge
  %.sink.i69 = phi i8 [ 35, %sw.bb2.i ], [ 35, %sw.bb1.i68 ], [ 34, %sw.bb30.sw.epilog.sink.split.i70_crit_edge ]
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext %.sink.i69, i8 noundef zeroext 0) #7
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx37 = getelementptr [8 x %struct.anon.87], ptr %1, i32 0, i32 %n
  %30 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  %..i = select i1 %tobool.not.i, i8 1, i8 5
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 52, i8 noundef zeroext 44, i8 noundef zeroext %..i) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb35, %sw.epilog.sink.split.i70, %sw.bb30.sw.epilog_crit_edge, %sw.bb25, %sw.bb16, %sw.bb7, %switch.lookup, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/ice1712/se.c", i32 735, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ice1712/se.c", i32 736, i32 12}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/ice1712/se.c", i32 744, i32 11}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/ice1712/se.c", i32 745, i32 12}
!8 = !{ptr @snd_vt1724_se_cards, !9, !"snd_vt1724_se_cards", i1 false, i1 false}
!9 = !{!"../sound/pci/ice1712/se.c", i32 732, i32 30}
!10 = !{ptr @se200pci_WM8776_init.default_values, !11, !"default_values", i1 false, i1 false}
!11 = !{!"../sound/pci/ice1712/se.c", i32 291, i32 30}
!12 = !{ptr @se200pci_WM8776_set_input_selector.vals, !13, !"vals", i1 false, i1 false}
!13 = !{!"../sound/pci/ice1712/se.c", i32 248, i32 29}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/ice1712/se.c", i32 617, i32 4}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/pci/ice1712/se.c", i32 357, i32 11}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/pci/ice1712/se.c", i32 360, i32 14}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/pci/ice1712/se.c", i32 363, i32 11}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/pci/ice1712/se.c", i32 367, i32 14}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/pci/ice1712/se.c", i32 370, i32 11}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/pci/ice1712/se.c", i32 374, i32 14}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/pci/ice1712/se.c", i32 377, i32 11}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/pci/ice1712/se.c", i32 381, i32 14}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/pci/ice1712/se.c", i32 384, i32 11}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/pci/ice1712/se.c", i32 389, i32 11}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/pci/ice1712/se.c", i32 395, i32 11}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/pci/ice1712/se.c", i32 401, i32 11}
!41 = !{ptr @se200pci_cont, !42, !"se200pci_cont", i1 false, i1 false}
!42 = !{!"../sound/pci/ice1712/se.c", i32 355, i32 38}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/pci/ice1712/se.c", i32 242, i32 2}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/pci/ice1712/se.c", i32 242, i32 13}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/pci/ice1712/se.c", i32 242, i32 22}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/pci/ice1712/se.c", i32 242, i32 32}
!51 = !{ptr @se200pci_sel, !52, !"se200pci_sel", i1 false, i1 false}
!52 = !{!"../sound/pci/ice1712/se.c", i32 241, i32 27}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/pci/ice1712/se.c", i32 267, i32 2}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/pci/ice1712/se.c", i32 267, i32 9}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/pci/ice1712/se.c", i32 267, i32 24}
!59 = !{ptr @se200pci_agc, !60, !"se200pci_agc", i1 false, i1 false}
!60 = !{!"../sound/pci/ice1712/se.c", i32 266, i32 27}
!61 = !{ptr @db_scale_gain1, !62, !"db_scale_gain1", i1 false, i1 false}
!62 = !{!"../sound/pci/ice1712/se.c", i32 578, i32 14}
!63 = !{ptr @db_scale_gain2, !64, !"db_scale_gain2", i1 false, i1 false}
!64 = !{!"../sound/pci/ice1712/se.c", i32 579, i32 14}
!65 = !{ptr @se200pci_eeprom, !66, !"se200pci_eeprom", i1 false, i1 false}
!66 = !{!"../sound/pci/ice1712/se.c", i32 704, i32 28}
!67 = !{ptr @se90pci_eeprom, !68, !"se90pci_eeprom", i1 false, i1 false}
!68 = !{!"../sound/pci/ice1712/se.c", i32 723, i32 28}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
