; ModuleID = '/llk/IR_all_yes/sound/pci/hda/patch_cirrus.c_pt.bc'
source_filename = "../sound/pci/hda/patch_cirrus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hda_codec_driver = type { %struct.hdac_driver, ptr }
%struct.hdac_driver = type { %struct.device_driver, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hda_device_id = type { i32, i32, i8, ptr, i32 }
%struct.hda_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hda_model_fixup = type { i32, ptr }
%struct.snd_pci_quirk = type { i16, i16, i16, i32, ptr }
%struct.hda_fixup = type { i32, i8, i32, %union.anon.74 }
%union.anon.74 = type { ptr }
%struct.hda_verb = type { i16, i32, i32 }
%struct.hda_pintbl = type { i16, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.85, i32 }
%union.anon.85 = type { ptr }
%struct.hda_codec = type { %struct.hdac_device, ptr, ptr, i32, i32, ptr, ptr, %struct.hda_codec_ops, %struct.list_head, %struct.refcount_struct, %struct.wait_queue_head, ptr, ptr, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.list_head, %struct.mutex, %struct.mutex, %struct.snd_array, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.snd_array, %struct.mutex, %struct.snd_array, %struct.snd_array, %struct.snd_array, ptr, i24, i32, i32, i32, ptr, ptr, %struct.snd_array, i32, %struct.delayed_work, i32, i32, ptr, ptr, %struct.snd_array }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.cs_spec = type { %struct.hda_gen_spec, i32, i32, i32, i32, i32, i8, i16, ptr, [4 x i8] }
%struct.hda_gen_spec = type <{ [32 x i8], ptr, ptr, [32 x i8], ptr, ptr, [32 x i8], ptr, ptr, i32, %struct.mutex, %struct.hda_multi_out, i16, [3 x i16], i32, i32, [18 x i16], i16, i16, i16, [2 x i8], [36 x ptr], [36 x i32], i16, [2 x i8], i32, i32, %struct.hda_input_mux, [3 x i32], i32, i32, i32, [3 x ptr], %struct.auto_pin_cfg, %struct.snd_array, [5 x i16], [36 x i16], [2 x i8], [36 x i32], i16, i16, i32, i32, [16 x i16], i32, [18 x i16], %struct.snd_array, [5 x i32], [5 x i32], [5 x i32], [3 x i32], [5 x i32], [36 x [18 x i32]], [36 x i32], i32, i32, i32, [3 x %struct.automic_entry], i48, [4 x i8], i64, i64, ptr, ptr, ptr, i8, i8, i16, i16, [2 x i8], [4 x i32], %struct.hda_vmaster_mute_hook, %struct.hda_loopback_check, %struct.snd_array, i32, [4 x %struct.hda_multi_io], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }>
%struct.hda_multi_out = type { i32, ptr, i16, [5 x i16], [5 x i16], i16, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.hda_input_mux = type { i32, [36 x %struct.hda_input_mux_item] }
%struct.hda_input_mux_item = type { [32 x i8], i32 }
%struct.auto_pin_cfg = type { i32, [5 x i16], i32, [5 x i16], i32, i32, [5 x i16], i32, [18 x %struct.auto_pin_cfg_item], i32, [2 x i16], i16, i16, [2 x i32], i32 }
%struct.auto_pin_cfg_item = type { i16, i32, i8 }
%struct.automic_entry = type { i16, i32, i32 }
%struct.hda_vmaster_mute_hook = type { ptr, ptr, ptr }
%struct.hda_loopback_check = type { ptr, i32 }
%struct.hda_multi_io = type { i16, i16, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.84, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.84 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.79, [128 x i8] }
%union.anon.79 = type { %union.anon.81 }
%union.anon.81 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.75, [64 x i8] }
%union.anon.75 = type { %struct.anon.78, [40 x i8] }
%struct.anon.78 = type { i32, i32, [64 x i8], i64, i32 }

@__UNIQUE_ID_file243 = internal constant [61 x i8] c"snd_hda_codec_cirrus.file=sound/pci/hda/snd-hda-codec-cirrus\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [33 x i8] c"snd_hda_codec_cirrus.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description245 = internal constant [61 x i8] c"snd_hda_codec_cirrus.description=Cirrus Logic HD-audio codec\00", section ".modinfo", align 1
@__initcall__kmod_snd_hda_codec_cirrus__246_1246_cirrus_driver_init6 = internal global ptr @cirrus_driver_init, section ".initcall6.init", align 4
@cirrus_driver = internal global { %struct.hda_codec_driver, [52 x i8] } { %struct.hda_codec_driver { %struct.hdac_driver zeroinitializer, ptr @snd_hda_id_cirrus }, [52 x i8] zeroinitializer }, align 32
@__exitcall_cirrus_driver_exit = internal global ptr @cirrus_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_hda_codec_cirrus\00", [43 x i8] zeroinitializer }, align 32
@snd_hda_id_cirrus = internal constant { [6 x %struct.hda_device_id], [40 x i8] } { [6 x %struct.hda_device_id] [%struct.hda_device_id { i32 269697542, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_cs420x to i32) }, %struct.hda_device_id { i32 269697543, i32 0, i8 1, ptr @.str.2, i32 ptrtoint (ptr @patch_cs420x to i32) }, %struct.hda_device_id { i32 269697544, i32 0, i8 1, ptr @.str.3, i32 ptrtoint (ptr @patch_cs4208 to i32) }, %struct.hda_device_id { i32 269697552, i32 0, i8 1, ptr @.str.4, i32 ptrtoint (ptr @patch_cs4210 to i32) }, %struct.hda_device_id { i32 269697555, i32 0, i8 1, ptr @.str.5, i32 ptrtoint (ptr @patch_cs4213 to i32) }, %struct.hda_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CS4206\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CS4207\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CS4208\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CS4210\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CS4213\00", [25 x i8] zeroinitializer }, align 32
@cs_patch_ops = internal constant { %struct.hda_codec_ops, [56 x i8] } { %struct.hda_codec_ops { ptr @cs_build_controls, ptr @snd_hda_gen_build_pcms, ptr @cs_init, ptr @snd_hda_gen_free, ptr @snd_hda_jack_unsol_event, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@cs420x_models = internal constant { [9 x %struct.hda_model_fixup], [56 x i8] } { [9 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 0, ptr @.str.6 }, %struct.hda_model_fixup { i32 1, ptr @.str.7 }, %struct.hda_model_fixup { i32 2, ptr @.str.8 }, %struct.hda_model_fixup { i32 4, ptr @.str.9 }, %struct.hda_model_fixup { i32 3, ptr @.str.10 }, %struct.hda_model_fixup { i32 5, ptr @.str.11 }, %struct.hda_model_fixup { i32 6, ptr @.str.12 }, %struct.hda_model_fixup { i32 7, ptr @.str.13 }, %struct.hda_model_fixup zeroinitializer], [56 x i8] zeroinitializer }, align 32
@cs420x_fixup_tbl = internal constant { [12 x %struct.snd_pci_quirk], [32 x i8] } { [12 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4318, i16 2752, i16 -1, i32 0, ptr @.str.14 }, %struct.snd_pci_quirk { i16 4318, i16 3476, i16 -1, i32 1, ptr @.str.15 }, %struct.snd_pci_quirk { i16 4318, i16 -13447, i16 -1, i32 1, ptr @.str.16 }, %struct.snd_pci_quirk { i16 4318, i16 -13431, i16 -1, i32 1, ptr @.str.17 }, %struct.snd_pci_quirk { i16 4203, i16 1536, i16 -1, i32 4, ptr @.str.18 }, %struct.snd_pci_quirk { i16 4203, i16 7168, i16 -1, i32 6, ptr @.str.19 }, %struct.snd_pci_quirk { i16 4203, i16 8192, i16 -1, i32 4, ptr @.str.20 }, %struct.snd_pci_quirk { i16 4203, i16 10240, i16 -1, i32 5, ptr @.str.21 }, %struct.snd_pci_quirk { i16 4203, i16 22016, i16 -1, i32 6, ptr @.str.22 }, %struct.snd_pci_quirk { i16 4203, i16 23296, i16 -1, i32 7, ptr @.str.23 }, %struct.snd_pci_quirk { i16 4203, i16 0, i16 0, i32 3, ptr @.str.24 }, %struct.snd_pci_quirk zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cs420x_fixups = internal constant { [8 x %struct.hda_fixup], [32 x i8] } { [8 x %struct.hda_fixup] [%struct.hda_fixup { i32 1, i8 -128, i32 3, %union.anon.74 { ptr @mbp53_pincfgs } }, %struct.hda_fixup { i32 1, i8 -128, i32 3, %union.anon.74 { ptr @mbp55_pincfgs } }, %struct.hda_fixup { i32 1, i8 -128, i32 3, %union.anon.74 { ptr @imac27_pincfgs } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @cs420x_fixup_gpio_13 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @cs420x_fixup_gpio_23 } }, %struct.hda_fixup { i32 1, i8 -128, i32 3, %union.anon.74 { ptr @mbp101_pincfgs } }, %struct.hda_fixup { i32 2, i8 -128, i32 3, %union.anon.74 { ptr @.compoundliteral } }, %struct.hda_fixup { i32 1, i8 -128, i32 3, %union.anon.74 { ptr @mba42_pincfgs } }], [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cs_errata_init_verbs = internal constant { [18 x %struct.hda_verb], [40 x i8] } { [18 x %struct.hda_verb] [%struct.hda_verb { i16 1, i32 1797, i32 0 }, %struct.hda_verb { i16 17, i32 1795, i32 1 }, %struct.hda_verb { i16 17, i32 1280, i32 8 }, %struct.hda_verb { i16 17, i32 1024, i32 39321 }, %struct.hda_verb { i16 17, i32 1280, i32 23 }, %struct.hda_verb { i16 17, i32 1024, i32 42002 }, %struct.hda_verb { i16 17, i32 1280, i32 1 }, %struct.hda_verb { i16 17, i32 1024, i32 9 }, %struct.hda_verb { i16 7, i32 1797, i32 0 }, %struct.hda_verb { i16 8, i32 1797, i32 0 }, %struct.hda_verb { i16 17, i32 1280, i32 23 }, %struct.hda_verb { i16 17, i32 1024, i32 9234 }, %struct.hda_verb { i16 17, i32 1280, i32 8 }, %struct.hda_verb { i16 17, i32 1024, i32 0 }, %struct.hda_verb { i16 17, i32 1280, i32 1 }, %struct.hda_verb { i16 17, i32 1024, i32 8 }, %struct.hda_verb { i16 17, i32 1795, i32 0 }, %struct.hda_verb zeroinitializer], [40 x i8] zeroinitializer }, align 32
@cs_coef_init_verbs = internal constant { [8 x %struct.hda_verb], [32 x i8] } { [8 x %struct.hda_verb] [%struct.hda_verb { i16 17, i32 1795, i32 1 }, %struct.hda_verb { i16 17, i32 1280, i32 3 }, %struct.hda_verb { i16 17, i32 1024, i32 5226 }, %struct.hda_verb { i16 17, i32 1280, i32 2 }, %struct.hda_verb { i16 17, i32 1024, i32 10 }, %struct.hda_verb { i16 17, i32 1280, i32 4 }, %struct.hda_verb { i16 17, i32 1024, i32 7 }, %struct.hda_verb zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cs4208_coef_init_verbs = internal constant { [7 x %struct.hda_verb], [44 x i8] } { [7 x %struct.hda_verb] [%struct.hda_verb { i16 1, i32 1797, i32 0 }, %struct.hda_verb { i16 36, i32 1795, i32 1 }, %struct.hda_verb { i16 36, i32 1280, i32 51 }, %struct.hda_verb { i16 36, i32 1024, i32 1 }, %struct.hda_verb { i16 36, i32 1280, i32 52 }, %struct.hda_verb { i16 36, i32 1024, i32 7169 }, %struct.hda_verb zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mbp53\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mbp55\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"imac27\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imac27_122\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"apple\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mbp101\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mbp81\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mba42\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MacBookPro 5,3\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MacBookAir 3,1(2)\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MacBookPro 5,5\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MacBookPro 7,1\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iMac 14,1\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MacBookPro 8,1\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iMac 12,2\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MacBookPro 10,1\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MacBookAir 5,2\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MacBookAir 4,2\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Apple\00", [26 x i8] zeroinitializer }, align 32
@mbp53_pincfgs = internal constant { [11 x %struct.hda_pintbl], [40 x i8] } { [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 9, i32 19611728 }, %struct.hda_pintbl { i16 10, i32 -1877999295 }, %struct.hda_pintbl { i16 11, i32 -1877999296 }, %struct.hda_pintbl { i16 12, i32 25899040 }, %struct.hda_pintbl { i16 13, i32 -1868562160 }, %struct.hda_pintbl { i16 14, i32 1073742064 }, %struct.hda_pintbl { i16 15, i32 30138416 }, %struct.hda_pintbl { i16 16, i32 21749856 }, %struct.hda_pintbl { i16 18, i32 1073742064 }, %struct.hda_pintbl { i16 21, i32 1073742064 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@mbp55_pincfgs = internal constant { [11 x %struct.hda_pintbl], [40 x i8] } { [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 9, i32 19611696 }, %struct.hda_pintbl { i16 10, i32 -1877999327 }, %struct.hda_pintbl { i16 11, i32 -1877999328 }, %struct.hda_pintbl { i16 12, i32 1073742064 }, %struct.hda_pintbl { i16 13, i32 -1868562160 }, %struct.hda_pintbl { i16 14, i32 1073742064 }, %struct.hda_pintbl { i16 15, i32 1073742064 }, %struct.hda_pintbl { i16 16, i32 21749824 }, %struct.hda_pintbl { i16 18, i32 1073742064 }, %struct.hda_pintbl { i16 21, i32 1073742064 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@imac27_pincfgs = internal constant { [11 x %struct.hda_pintbl], [40 x i8] } { [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 9, i32 19611728 }, %struct.hda_pintbl { i16 10, i32 -1877999296 }, %struct.hda_pintbl { i16 11, i32 -1877999294 }, %struct.hda_pintbl { i16 12, i32 25899040 }, %struct.hda_pintbl { i16 13, i32 -1868562160 }, %struct.hda_pintbl { i16 14, i32 1073742064 }, %struct.hda_pintbl { i16 15, i32 30138416 }, %struct.hda_pintbl { i16 16, i32 21749856 }, %struct.hda_pintbl { i16 18, i32 28020848 }, %struct.hda_pintbl { i16 21, i32 1073742064 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@mbp101_pincfgs = internal constant { [4 x %struct.hda_pintbl], [32 x i8] } { [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 13, i32 1084985584 }, %struct.hda_pintbl { i16 14, i32 -1868168976 }, %struct.hda_pintbl { i16 18, i32 1353056496 }, %struct.hda_pintbl zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [3 x %struct.hda_verb], [60 x i8] } { [3 x %struct.hda_verb] [%struct.hda_verb { i16 17, i32 1280, i32 2 }, %struct.hda_verb { i16 17, i32 1024, i32 4138 }, %struct.hda_verb zeroinitializer], [60 x i8] zeroinitializer }, align 32
@mba42_pincfgs = internal constant { [11 x %struct.hda_pintbl], [40 x i8] } { [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 9, i32 19611696 }, %struct.hda_pintbl { i16 10, i32 1073742064 }, %struct.hda_pintbl { i16 11, i32 -1877999328 }, %struct.hda_pintbl { i16 12, i32 1073742064 }, %struct.hda_pintbl { i16 13, i32 -1868562160 }, %struct.hda_pintbl { i16 14, i32 1073742064 }, %struct.hda_pintbl { i16 15, i32 1073742064 }, %struct.hda_pintbl { i16 16, i32 1073742064 }, %struct.hda_pintbl { i16 18, i32 1073742064 }, %struct.hda_pintbl { i16 21, i32 1073742064 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@cs4208_models = internal constant { [5 x %struct.hda_model_fixup], [56 x i8] } { [5 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 4, ptr @.str.25 }, %struct.hda_model_fixup { i32 1, ptr @.str.26 }, %struct.hda_model_fixup { i32 2, ptr @.str.27 }, %struct.hda_model_fixup { i32 3, ptr @.str.28 }, %struct.hda_model_fixup zeroinitializer], [56 x i8] zeroinitializer }, align 32
@cs4208_fixup_tbl = internal constant { [2 x %struct.snd_pci_quirk], [32 x i8] } { [2 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4203, i16 0, i16 0, i32 0, ptr @.str.24 }, %struct.snd_pci_quirk zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cs4208_fixups = internal constant { [5 x %struct.hda_fixup], [48 x i8] } { [5 x %struct.hda_fixup] [%struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @cs4208_fixup_mac } }, %struct.hda_fixup { i32 1, i8 -128, i32 4, %union.anon.74 { ptr @mba6_pincfgs } }, %struct.hda_fixup { i32 3, i8 -128, i32 4, %union.anon.74 { ptr @cs4208_fixup_spdif_switch } }, %struct.hda_fixup { i32 3, i8 -128, i32 4, %union.anon.74 { ptr @cs4208_fixup_macmini } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @cs4208_fixup_gpio0 } }], [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio0\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mba6\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mbp11\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"macmini\00", [24 x i8] zeroinitializer }, align 32
@mba6_pincfgs = internal constant { [20 x %struct.hda_pintbl], [32 x i8] } { [20 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 16, i32 52502768 }, %struct.hda_pintbl { i16 17, i32 1342177520 }, %struct.hda_pintbl { i16 18, i32 -1877999600 }, %struct.hda_pintbl { i16 19, i32 1342177520 }, %struct.hda_pintbl { i16 20, i32 1342177520 }, %struct.hda_pintbl { i16 21, i32 1996488944 }, %struct.hda_pintbl { i16 22, i32 1996488944 }, %struct.hda_pintbl { i16 23, i32 1124073712 }, %struct.hda_pintbl { i16 24, i32 1135317040 }, %struct.hda_pintbl { i16 25, i32 1996488944 }, %struct.hda_pintbl { i16 26, i32 1996488944 }, %struct.hda_pintbl { i16 27, i32 1996488944 }, %struct.hda_pintbl { i16 28, i32 -1868562288 }, %struct.hda_pintbl { i16 29, i32 1342177520 }, %struct.hda_pintbl { i16 30, i32 1342177520 }, %struct.hda_pintbl { i16 31, i32 1342177520 }, %struct.hda_pintbl { i16 32, i32 1342177520 }, %struct.hda_pintbl { i16 33, i32 1124073712 }, %struct.hda_pintbl { i16 34, i32 1124073712 }, %struct.hda_pintbl zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cs4208_mac_fixup_tbl = internal constant { [6 x %struct.snd_pci_quirk], [32 x i8] } { [6 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4203, i16 24064, i16 -1, i32 2, ptr @.str.29 }, %struct.snd_pci_quirk { i16 4203, i16 27648, i16 -1, i32 3, ptr @.str.30 }, %struct.snd_pci_quirk { i16 4203, i16 28928, i16 -1, i32 1, ptr @.str.31 }, %struct.snd_pci_quirk { i16 4203, i16 29184, i16 -1, i32 1, ptr @.str.32 }, %struct.snd_pci_quirk { i16 4203, i16 31488, i16 -1, i32 2, ptr @.str.33 }, %struct.snd_pci_quirk zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MacBookPro 11,2\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MacMini 7,1\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MacBookAir 6,1\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MacBookAir 6,2\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MacBookPro 12,1\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@cs4208_fixup_macmini.pincfgs = internal constant { [3 x %struct.hda_pintbl], [40 x i8] } { [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 24, i32 11243856 }, %struct.hda_pintbl { i16 33, i32 4972864 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@cs421x_patch_ops = internal constant { %struct.hda_codec_ops, [56 x i8] } { %struct.hda_codec_ops { ptr @snd_hda_gen_build_controls, ptr @snd_hda_gen_build_pcms, ptr @cs421x_init, ptr @snd_hda_gen_free, ptr @snd_hda_jack_unsol_event, ptr null, ptr @cs421x_suspend, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@cs421x_models = internal constant { [3 x %struct.hda_model_fixup], [40 x i8] } { [3 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 0, ptr @.str.35 }, %struct.hda_model_fixup { i32 2, ptr @.str.36 }, %struct.hda_model_fixup zeroinitializer], [40 x i8] zeroinitializer }, align 32
@cs421x_fixup_tbl = internal constant { [2 x %struct.snd_pci_quirk], [32 x i8] } { [2 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 -32634, i16 20481, i16 -1, i32 0, ptr @.str.37 }, %struct.snd_pci_quirk zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cs421x_fixups = internal constant { [3 x %struct.hda_fixup], [48 x i8] } { [3 x %struct.hda_fixup] [%struct.hda_fixup { i32 1, i8 -128, i32 1, %union.anon.74 { ptr @cdb4210_pincfgs } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @cs421x_fixup_sense_b } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @stumpy_pincfgs } }], [48 x i8] zeroinitializer }, align 32
@cs421x_coef_init_verbs = internal constant { [8 x %struct.hda_verb], [32 x i8] } { [8 x %struct.hda_verb] [%struct.hda_verb { i16 11, i32 1795, i32 1 }, %struct.hda_verb { i16 11, i32 1280, i32 1 }, %struct.hda_verb { i16 11, i32 1024, i32 1 }, %struct.hda_verb { i16 11, i32 1280, i32 2 }, %struct.hda_verb { i16 11, i32 1024, i32 2 }, %struct.hda_verb { i16 11, i32 1280, i32 3 }, %struct.hda_verb { i16 11, i32 1024, i32 14 }, %struct.hda_verb zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cs421x_coef_init_verbs_A1_silicon_fixes = internal constant { [12 x %struct.hda_verb], [48 x i8] } { [12 x %struct.hda_verb] [%struct.hda_verb { i16 11, i32 1795, i32 1 }, %struct.hda_verb { i16 11, i32 1280, i32 6 }, %struct.hda_verb { i16 11, i32 1024, i32 39321 }, %struct.hda_verb { i16 11, i32 1280, i32 10 }, %struct.hda_verb { i16 11, i32 1024, i32 5323 }, %struct.hda_verb { i16 11, i32 1280, i32 17 }, %struct.hda_verb { i16 11, i32 1024, i32 41680 }, %struct.hda_verb { i16 11, i32 1280, i32 26 }, %struct.hda_verb { i16 11, i32 1024, i32 681 }, %struct.hda_verb { i16 11, i32 1280, i32 27 }, %struct.hda_verb { i16 11, i32 1024, i32 4102 }, %struct.hda_verb zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cdb4210\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stumpy\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DP45SG/CDB4210\00", [17 x i8] zeroinitializer }, align 32
@cdb4210_pincfgs = internal constant { [7 x %struct.hda_pintbl], [40 x i8] } { [7 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 5, i32 52510751 }, %struct.hda_pintbl { i16 6, i32 -1877540848 }, %struct.hda_pintbl { i16 7, i32 58798129 }, %struct.hda_pintbl { i16 8, i32 -1213792201 }, %struct.hda_pintbl { i16 9, i32 -1213857730 }, %struct.hda_pintbl { i16 10, i32 54857968 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@stumpy_pincfgs = internal constant { [7 x %struct.hda_pintbl], [40 x i8] } { [7 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 5, i32 35725552 }, %struct.hda_pintbl { i16 6, i32 -1877540624 }, %struct.hda_pintbl { i16 7, i32 44114160 }, %struct.hda_pintbl { i16 8, i32 2007433271 }, %struct.hda_pintbl { i16 9, i32 2007367742 }, %struct.hda_pintbl { i16 10, i32 1128599792 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@cs421x_speaker_boost_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 19, i32 0, ptr @cs421x_boost_vol_info, ptr @cs421x_boost_vol_get, ptr @cs421x_boost_vol_put, %union.anon.85 { ptr @cs421x_speaker_boost_db_scale }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Speaker Boost Playback Volume\00", [34 x i8] zeroinitializer }, align 32
@cs421x_speaker_boost_db_scale = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 900, i32 300], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 17, i64 36]
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"cirrus_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1242, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1246, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"snd_hda_id_cirrus\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1229, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1230, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1231, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1232, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1233, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1234, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [13 x i8] c"cs_patch_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 336, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"cs420x_models\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 376, i32 37 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"cs420x_fixup_tbl\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 388, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant [14 x i8] c"cs420x_fixups\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 519, i32 31 }
@___asan_gen_.75 = private unnamed_addr constant [21 x i8] c"cs_errata_init_verbs\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 253, i32 30 }
@___asan_gen_.78 = private unnamed_addr constant [19 x i8] c"cs_coef_init_verbs\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 206, i32 30 }
@___asan_gen_.81 = private unnamed_addr constant [23 x i8] c"cs4208_coef_init_verbs\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 225, i32 30 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 377, i32 32 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 378, i32 32 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 379, i32 33 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 380, i32 37 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 381, i32 32 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 382, i32 33 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 383, i32 32 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 384, i32 32 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 389, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 390, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 391, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 392, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 397, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 398, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 399, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 400, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 401, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 402, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 403, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [14 x i8] c"mbp53_pincfgs\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 407, i32 32 }
@___asan_gen_.144 = private unnamed_addr constant [14 x i8] c"mbp55_pincfgs\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 421, i32 32 }
@___asan_gen_.147 = private unnamed_addr constant [15 x i8] c"imac27_pincfgs\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 435, i32 32 }
@___asan_gen_.150 = private unnamed_addr constant [15 x i8] c"mbp101_pincfgs\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 449, i32 32 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [14 x i8] c"mba42_pincfgs\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 456, i32 32 }
@___asan_gen_.157 = private unnamed_addr constant [14 x i8] c"cs4208_models\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 628, i32 37 }
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"cs4208_fixup_tbl\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 636, i32 35 }
@___asan_gen_.163 = private unnamed_addr constant [14 x i8] c"cs4208_fixups\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 728, i32 31 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 629, i32 32 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 630, i32 31 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 631, i32 32 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 632, i32 34 }
@___asan_gen_.178 = private unnamed_addr constant [13 x i8] c"mba6_pincfgs\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 470, i32 32 }
@___asan_gen_.181 = private unnamed_addr constant [21 x i8] c"cs4208_mac_fixup_tbl\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 642, i32 35 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 643, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 644, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 645, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 646, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 647, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 720, i32 40 }
@___asan_gen_.202 = private unnamed_addr constant [8 x i8] c"pincfgs\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 684, i32 33 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"cs421x_patch_ops\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1157, i32 35 }
@___asan_gen_.208 = private unnamed_addr constant [14 x i8] c"cs421x_models\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 814, i32 37 }
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"cs421x_fixup_tbl\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 820, i32 35 }
@___asan_gen_.214 = private unnamed_addr constant [14 x i8] c"cs421x_fixups\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 859, i32 31 }
@___asan_gen_.217 = private unnamed_addr constant [23 x i8] c"cs421x_coef_init_verbs\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 876, i32 30 }
@___asan_gen_.220 = private unnamed_addr constant [40 x i8] c"cs421x_coef_init_verbs_A1_silicon_fixes\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 913, i32 30 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 815, i32 34 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 816, i32 33 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 822, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant [16 x i8] c"cdb4210_pincfgs\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 828, i32 32 }
@___asan_gen_.235 = private unnamed_addr constant [15 x i8] c"stumpy_pincfgs\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 839, i32 32 }
@___asan_gen_.238 = private unnamed_addr constant [25 x i8] c"cs421x_speaker_boost_ctl\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 977, i32 38 }
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 982, i32 10 }
@___asan_gen_.244 = private unnamed_addr constant [30 x i8] c"cs421x_speaker_boost_db_scale\00", align 1
@___asan_gen_.245 = private constant [32 x i8] c"../sound/pci/hda/patch_cirrus.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 935, i32 14 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_cirrus_driver_exit, ptr @__initcall__kmod_snd_hda_codec_cirrus__246_1246_cirrus_driver_init6, ptr @cirrus_driver_exit, ptr @cirrus_driver, ptr @.str, ptr @snd_hda_id_cirrus, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cs_patch_ops, ptr @cs420x_models, ptr @cs420x_fixup_tbl, ptr @cs420x_fixups, ptr @cs_errata_init_verbs, ptr @cs_coef_init_verbs, ptr @cs4208_coef_init_verbs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @mbp53_pincfgs, ptr @mbp55_pincfgs, ptr @imac27_pincfgs, ptr @mbp101_pincfgs, ptr @.compoundliteral, ptr @mba42_pincfgs, ptr @cs4208_models, ptr @cs4208_fixup_tbl, ptr @cs4208_fixups, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @mba6_pincfgs, ptr @cs4208_mac_fixup_tbl, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @cs4208_fixup_macmini.pincfgs, ptr @cs421x_patch_ops, ptr @cs421x_models, ptr @cs421x_fixup_tbl, ptr @cs421x_fixups, ptr @cs421x_coef_init_verbs, ptr @cs421x_coef_init_verbs_A1_silicon_fixes, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @cdb4210_pincfgs, ptr @stumpy_pincfgs, ptr @cs421x_speaker_boost_ctl, ptr @.str.38, ptr @cs421x_speaker_boost_db_scale], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrus_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hda_id_cirrus to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_patch_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs420x_models to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs420x_fixup_tbl to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs420x_fixups to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_errata_init_verbs to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_coef_init_verbs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4208_coef_init_verbs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbp53_pincfgs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbp55_pincfgs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imac27_pincfgs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbp101_pincfgs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mba42_pincfgs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4208_models to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4208_fixup_tbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4208_fixups to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mba6_pincfgs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4208_mac_fixup_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4208_fixup_macmini.pincfgs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs421x_patch_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs421x_models to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs421x_fixup_tbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs421x_fixups to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs421x_coef_init_verbs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs421x_coef_init_verbs_A1_silicon_fixes to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdb4210_pincfgs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stumpy_pincfgs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs421x_speaker_boost_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs421x_speaker_boost_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cirrus_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hda_codec_driver_register(ptr noundef nonnull @cirrus_driver, ptr noundef nonnull @.str, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cirrus_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hda_codec_driver_unregister(ptr noundef nonnull @cirrus_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_codec_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hda_codec_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_cs420x(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5736) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec1.i, align 8
  %vendor_nid2.i = getelementptr inbounds %struct.cs_spec, ptr %call7.i.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %vendor_nid2.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 17, ptr %vendor_nid2.i, align 2
  %power_save_node.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %3 = ptrtoint ptr %power_save_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load.i = load i32, ptr %power_save_node.i, align 4
  %bf.set.i = or i32 %bf.load.i, 16384
  store i32 %bf.set.i, ptr %power_save_node.i, align 4
  %call3.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #6
  %patch_ops = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %patch_ops, ptr @cs_patch_ops, i32 40)
  %automute_hook = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 77
  %5 = ptrtoint ptr %automute_hook to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cs_automute, ptr %automute_hook, align 4
  %6 = ptrtoint ptr %power_save_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %power_save_node.i, align 4
  %bf.set = or i32 %bf.load, 33554432
  store i32 %bf.set, ptr %power_save_node.i, align 4
  tail call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef nonnull @cs420x_models, ptr noundef nonnull @cs420x_fixup_tbl, ptr noundef nonnull @cs420x_fixups) #6
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 0) #6
  %7 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spec1.i, align 8
  %autocfg.i = getelementptr inbounds %struct.hda_gen_spec, ptr %8, i32 0, i32 33
  %call.i = tail call i32 @snd_hda_parse_pin_defcfg(ptr noundef %codec, ptr noundef %autocfg.i, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.error_crit_edge, label %if.end.i15

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end.i15:                                       ; preds = %if.end
  %call4.i = tail call i32 @snd_hda_gen_parse_auto_config(ptr noundef %codec, ptr noundef %autocfg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i15.error_crit_edge, label %if.end7.i

if.end.i15.error_crit_edge:                       ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end7.i:                                        ; preds = %if.end.i15
  %dyn_adc_switch.i = getelementptr inbounds %struct.hda_gen_spec, ptr %8, i32 0, i32 58
  %9 = ptrtoint ptr %dyn_adc_switch.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %bf.load.i16 = load i64, ptr %dyn_adc_switch.i, align 4
  %10 = and i64 %bf.load.i16, 33554432
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.not.i17 = icmp eq i64 %10, 0
  br i1 %tobool.not.i17, label %if.end7.i.if.end3_crit_edge, label %for.cond.preheader.i

if.end7.i.if.end3_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

for.cond.preheader.i:                             ; preds = %if.end7.i
  %input_mux.i = getelementptr inbounds %struct.hda_gen_spec, ptr %8, i32 0, i32 27
  %11 = ptrtoint ptr %input_mux.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %input_mux.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1140.not.i = icmp eq i32 %12, 0
  br i1 %cmp1140.not.i, label %for.cond.preheader.i.if.end3_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end3_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %done.042.i = phi i32 [ %done.1.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.041.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hda_gen_spec, ptr %8, i32 0, i32 38, i32 %i.041.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl nuw i32 1, %14
  %and.i = and i32 %shl.i, %done.042.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end15.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx17.i = getelementptr %struct.hda_gen_spec, ptr %8, i32 0, i32 16, i32 %14
  %15 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx17.i, align 2
  %call18.i = tail call i32 @snd_hda_gen_fix_pin_power(ptr noundef %codec, i16 noundef zeroext %16) #6
  %or.i = or i32 %shl.i, %done.042.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end15.i, %for.body.i.cleanup.i_crit_edge
  %done.1.i = phi i32 [ %or.i, %if.end15.i ], [ %done.042.i, %for.body.i.cleanup.i_crit_edge ]
  %inc.i = add nuw i32 %i.041.i, 1
  %17 = ptrtoint ptr %input_mux.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %input_mux.i, align 8
  %cmp11.i = icmp ult i32 %inc.i, %18
  br i1 %cmp11.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.if.end3_crit_edge

cleanup.i.if.end3_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end3:                                          ; preds = %cleanup.i.if.end3_crit_edge, %for.cond.preheader.i.if.end3_crit_edge, %if.end7.i.if.end3_crit_edge
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 1) #6
  br label %cleanup

error:                                            ; preds = %if.end.i15.error_crit_edge, %if.end.error_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.error_crit_edge ], [ %call4.i, %if.end.i15.error_crit_edge ]
  tail call void @snd_hda_gen_free(ptr noundef %codec) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %error ], [ 0, %if.end3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_cs4208(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5736) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec1.i, align 8
  %vendor_nid2.i = getelementptr inbounds %struct.cs_spec, ptr %call7.i.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %vendor_nid2.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 36, ptr %vendor_nid2.i, align 2
  %power_save_node.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %3 = ptrtoint ptr %power_save_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load.i = load i32, ptr %power_save_node.i, align 4
  %bf.set.i = or i32 %bf.load.i, 16384
  store i32 %bf.set.i, ptr %power_save_node.i, align 4
  %call3.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #6
  %patch_ops = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %patch_ops, ptr @cs_patch_ops, i32 40)
  %automute_hook = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 77
  %5 = ptrtoint ptr %automute_hook to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cs_automute, ptr %automute_hook, align 4
  %out_vol_mask = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 61
  %6 = ptrtoint ptr %out_vol_mask to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 65536, ptr %out_vol_mask, align 8
  tail call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef nonnull @cs4208_models, ptr noundef nonnull @cs4208_fixup_tbl, ptr noundef nonnull @cs4208_fixups) #6
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 0) #6
  %start_nid.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %7 = ptrtoint ptr %start_nid.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %start_nid.i, align 4
  %conv1.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %8)
  %cmp.i = icmp ugt i16 %8, 24
  br i1 %cmp.i, label %if.end.snd_hda_override_wcaps.exit_crit_edge, label %lor.lhs.false.i

if.end.snd_hda_override_wcaps.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_hda_override_wcaps.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %num_nodes.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %9 = ptrtoint ptr %num_nodes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_nodes.i, align 8
  %add.i = add i32 %10, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %add.i)
  %cmp8.not.i = icmp ugt i32 %add.i, 24
  br i1 %cmp8.not.i, label %if.end.i21, label %lor.lhs.false.i.land.lhs.true.i_crit_edge

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

if.end.i21:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %wcaps.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %11 = ptrtoint ptr %wcaps.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wcaps.i, align 4
  %sub.i = sub nsw i32 24, %conv1.i
  %arrayidx.i = getelementptr i32, ptr %12, i32 %sub.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %phi.bo = or i32 %14, 1
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i21, %lor.lhs.false.i.land.lhs.true.i_crit_edge
  %retval.0.i.ph = phi i32 [ 1, %lor.lhs.false.i.land.lhs.true.i_crit_edge ], [ %phi.bo, %if.end.i21 ]
  %15 = ptrtoint ptr %num_nodes.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_nodes.i, align 8
  %add.i26 = add i32 %16, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %add.i26)
  %cmp8.i = icmp ugt i32 %add.i26, 24
  br i1 %cmp8.i, label %if.then.i, label %land.lhs.true.i.snd_hda_override_wcaps.exit_crit_edge

land.lhs.true.i.snd_hda_override_wcaps.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_hda_override_wcaps.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %wcaps.i27 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %17 = ptrtoint ptr %wcaps.i27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wcaps.i27, align 4
  %sub.i28 = sub nsw i32 24, %conv1.i
  %arrayidx.i29 = getelementptr i32, ptr %18, i32 %sub.i28
  %19 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i.ph, ptr %arrayidx.i29, align 4
  br label %snd_hda_override_wcaps.exit

snd_hda_override_wcaps.exit:                      ; preds = %if.then.i, %land.lhs.true.i.snd_hda_override_wcaps.exit_crit_edge, %if.end.snd_hda_override_wcaps.exit_crit_edge
  %call.i = tail call i32 @query_amp_caps(ptr noundef %codec, i16 noundef zeroext 24, i32 noundef 0) #6
  %and.i = and i32 %call.i, -128
  %or.i = or i32 %and.i, 2
  %call1.i = tail call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 24, i32 noundef 0, i32 noundef %or.i) #6
  %call.i31 = tail call i32 @query_amp_caps(ptr noundef %codec, i16 noundef zeroext 27, i32 noundef 0) #6
  %and.i32 = and i32 %call.i31, -128
  %or.i33 = or i32 %and.i32, 2
  %call1.i34 = tail call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 27, i32 noundef 0, i32 noundef %or.i33) #6
  %call.i35 = tail call i32 @query_amp_caps(ptr noundef %codec, i16 noundef zeroext 28, i32 noundef 0) #6
  %and.i36 = and i32 %call.i35, -128
  %or.i37 = or i32 %and.i36, 2
  %call1.i38 = tail call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 28, i32 noundef 0, i32 noundef %or.i37) #6
  %20 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spec1.i, align 8
  %autocfg.i = getelementptr inbounds %struct.hda_gen_spec, ptr %21, i32 0, i32 33
  %call.i40 = tail call i32 @snd_hda_parse_pin_defcfg(ptr noundef %codec, ptr noundef %autocfg.i, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %cmp.i41 = icmp slt i32 %call.i40, 0
  br i1 %cmp.i41, label %snd_hda_override_wcaps.exit.error_crit_edge, label %if.end.i42

snd_hda_override_wcaps.exit.error_crit_edge:      ; preds = %snd_hda_override_wcaps.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end.i42:                                       ; preds = %snd_hda_override_wcaps.exit
  %call4.i = tail call i32 @snd_hda_gen_parse_auto_config(ptr noundef %codec, ptr noundef %autocfg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i42.error_crit_edge, label %if.end7.i

if.end.i42.error_crit_edge:                       ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end7.i:                                        ; preds = %if.end.i42
  %dyn_adc_switch.i = getelementptr inbounds %struct.hda_gen_spec, ptr %21, i32 0, i32 58
  %22 = ptrtoint ptr %dyn_adc_switch.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %bf.load.i43 = load i64, ptr %dyn_adc_switch.i, align 4
  %23 = and i64 %bf.load.i43, 33554432
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool.not.i44 = icmp eq i64 %23, 0
  br i1 %tobool.not.i44, label %if.end7.i.if.end5_crit_edge, label %for.cond.preheader.i

if.end7.i.if.end5_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

for.cond.preheader.i:                             ; preds = %if.end7.i
  %input_mux.i = getelementptr inbounds %struct.hda_gen_spec, ptr %21, i32 0, i32 27
  %24 = ptrtoint ptr %input_mux.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %input_mux.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp1140.not.i = icmp eq i32 %25, 0
  br i1 %cmp1140.not.i, label %for.cond.preheader.i.if.end5_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end5_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %done.042.i = phi i32 [ %done.1.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.041.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i45 = getelementptr %struct.hda_gen_spec, ptr %21, i32 0, i32 38, i32 %i.041.i
  %26 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i45, align 4
  %shl.i = shl nuw i32 1, %27
  %and.i46 = and i32 %shl.i, %done.042.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46)
  %tobool13.not.i = icmp eq i32 %and.i46, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end15.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx17.i = getelementptr %struct.hda_gen_spec, ptr %21, i32 0, i32 16, i32 %27
  %28 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx17.i, align 2
  %call18.i = tail call i32 @snd_hda_gen_fix_pin_power(ptr noundef %codec, i16 noundef zeroext %29) #6
  %or.i47 = or i32 %shl.i, %done.042.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end15.i, %for.body.i.cleanup.i_crit_edge
  %done.1.i = phi i32 [ %or.i47, %if.end15.i ], [ %done.042.i, %for.body.i.cleanup.i_crit_edge ]
  %inc.i = add nuw i32 %i.041.i, 1
  %30 = ptrtoint ptr %input_mux.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %input_mux.i, align 8
  %cmp11.i = icmp ult i32 %inc.i, %31
  br i1 %cmp11.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.if.end5_crit_edge

cleanup.i.if.end5_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end5:                                          ; preds = %cleanup.i.if.end5_crit_edge, %for.cond.preheader.i.if.end5_crit_edge, %if.end7.i.if.end5_crit_edge
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 1) #6
  br label %cleanup

error:                                            ; preds = %if.end.i42.error_crit_edge, %snd_hda_override_wcaps.exit.error_crit_edge
  %retval.0.i48 = phi i32 [ %call.i40, %snd_hda_override_wcaps.exit.error_crit_edge ], [ %call4.i, %if.end.i42.error_crit_edge ]
  tail call void @snd_hda_gen_free(ptr noundef %codec) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i48, %error ], [ 0, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_cs4210(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5736) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec1.i, align 8
  %vendor_nid2.i = getelementptr inbounds %struct.cs_spec, ptr %call7.i.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %vendor_nid2.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 11, ptr %vendor_nid2.i, align 2
  %power_save_node.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %3 = ptrtoint ptr %power_save_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load.i = load i32, ptr %power_save_node.i, align 4
  %bf.set.i = or i32 %bf.load.i, 16384
  store i32 %bf.set.i, ptr %power_save_node.i, align 4
  %call3.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #6
  %patch_ops = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %patch_ops, ptr @cs421x_patch_ops, i32 40)
  %automute_hook = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 77
  %5 = ptrtoint ptr %automute_hook to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cs_automute, ptr %automute_hook, align 4
  tail call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef nonnull @cs421x_models, ptr noundef nonnull @cs421x_fixup_tbl, ptr noundef nonnull @cs421x_fixups) #6
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 0) #6
  tail call fastcc void @cs4210_pinmux_init(ptr noundef %codec)
  %call1 = tail call fastcc i32 @cs421x_parse_auto_config(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %error, label %if.end3

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 1) #6
  br label %cleanup

error:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_hda_gen_free(ptr noundef %codec) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %error ], [ 0, %if.end3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_cs4213(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5736) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec1.i, align 8
  %vendor_nid2.i = getelementptr inbounds %struct.cs_spec, ptr %call7.i.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %vendor_nid2.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 9, ptr %vendor_nid2.i, align 2
  %power_save_node.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %3 = ptrtoint ptr %power_save_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load.i = load i32, ptr %power_save_node.i, align 4
  %bf.set.i = or i32 %bf.load.i, 16384
  store i32 %bf.set.i, ptr %power_save_node.i, align 4
  %call3.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #6
  %patch_ops = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %patch_ops, ptr @cs421x_patch_ops, i32 40)
  %call1 = tail call fastcc i32 @cs421x_parse_auto_config(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %error, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

error:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_hda_gen_free(ptr noundef %codec) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %error ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs_automute(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %spdif_present = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %spdif_present to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %spdif_present, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %bf.lshr3 = lshr i8 %bf.load, 5
  %4 = and i8 %bf.lshr3, 1
  %narrow = select i1 %tobool.not, i8 0, i8 %4
  %master_mute = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 58
  %5 = ptrtoint ptr %master_mute to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %bf.load8 = load i64, ptr %master_mute, align 4
  %bf.value = zext i8 %narrow to i64
  %bf.shl = shl nuw nsw i64 %bf.value, 52
  %bf.clear9 = and i64 %bf.load8, -4503599627370497
  %bf.set = or i64 %bf.shl, %bf.clear9
  store i64 %bf.set, ptr %master_mute, align 4
  tail call void @snd_hda_gen_update_outputs(ptr noundef %codec) #6
  %gpio_eapd_hp = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %gpio_eapd_hp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_eapd_hp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %gpio_eapd_speaker = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %gpio_eapd_speaker to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_eapd_speaker, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  br i1 %tobool11.not, label %lor.lhs.false.if.end30_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.if.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %10 = ptrtoint ptr %master_mute to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %bf.load13 = load i64, ptr %master_mute, align 4
  %11 = and i64 %bf.load13, 288230376151711744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool17.not = icmp eq i64 %11, 0
  %gpio_eapd_speaker27 = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 5
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bf.load13)
  %tobool23.not47 = icmp slt i64 %bf.load13, 0
  %cond.in = select i1 %tobool23.not47, ptr %gpio_eapd_hp, ptr %gpio_eapd_speaker27
  %12 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond = load i32, ptr %cond.in, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %gpio_eapd_speaker27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gpio_eapd_speaker27, align 8
  %or = or i32 %14, %7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then18
  %cond.sink = phi i32 [ %or, %if.else ], [ %cond, %if.then18 ]
  %15 = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond.sink, ptr %15, align 8
  %call.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1813, i32 noundef %cond.sink) #6
  br label %if.end30

if.end30:                                         ; preds = %if.end, %lor.lhs.false.if.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_pick_fixup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_apply_fixup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_gen_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_spec_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs_build_controls(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_hda_gen_build_controls(ptr noundef %codec) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_build_pcms(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs_init(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %vendor_nid = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %vendor_nid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor_nid, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %entry.if.end8_crit_edge [
    i16 17, label %if.then
    i16 36, label %entry.if.end8.sink.split_crit_edge
  ]

entry.if.end8.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.sink.split

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_hda_sequence_write(ptr noundef %codec, ptr noundef nonnull @cs_errata_init_verbs) #6
  br label %if.end8.sink.split

if.end8.sink.split:                               ; preds = %if.then, %entry.if.end8.sink.split_crit_edge
  %cs4208_coef_init_verbs.sink = phi ptr [ @cs_coef_init_verbs, %if.then ], [ @cs4208_coef_init_verbs, %entry.if.end8.sink.split_crit_edge ]
  tail call void @snd_hda_sequence_write(ptr noundef %codec, ptr noundef nonnull %cs4208_coef_init_verbs.sink) #6
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %entry.if.end8_crit_edge
  %call = tail call i32 @snd_hda_gen_init(ptr noundef %codec) #6
  %gpio_mask = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gpio_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end8.if.end14_crit_edge, label %if.then9

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then9:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1814, i32 noundef %6) #6
  %gpio_dir = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gpio_dir, align 4
  %call.i36 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1815, i32 noundef %8) #6
  %gpio_data = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %gpio_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gpio_data, align 8
  %call.i37 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1813, i32 noundef %10) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end8.if.end14_crit_edge
  %11 = ptrtoint ptr %vendor_nid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vendor_nid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %12)
  %cmp17 = icmp eq i16 %12, 17
  br i1 %cmp17, label %if.then19, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @init_input_coef(ptr noundef %codec)
  %call.i.i = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %codec, i16 noundef zeroext 21) #6
  %shr.mask.i.i = and i32 %call.i.i, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr.mask.i.i)
  %cmp.i.not.i = icmp eq i32 %shr.mask.i.i, 1073741824
  %spec.select.i = select i1 %cmp.i.not.i, i32 10, i32 16394
  %13 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spec1, align 8
  %vendor_nid.i.i = getelementptr inbounds %struct.cs_spec, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %vendor_nid.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vendor_nid.i.i, align 2
  %call.i.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %16, i32 noundef 0, i32 noundef 1280, i32 noundef 1) #6
  %17 = ptrtoint ptr %vendor_nid.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vendor_nid.i.i, align 2
  %call.i7.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %18, i32 noundef 0, i32 noundef 1024, i32 noundef %spec.select.i) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end14.if.end20_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_jack_unsol_event(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_build_controls(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_sequence_write(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_input_coef(ptr noundef %codec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %vendor_nid = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %vendor_nid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor_nid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %3)
  %cmp = icmp eq i16 %3, 17
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 17, i32 noundef 0, i32 noundef 1280, i32 noundef 4) #6
  %4 = ptrtoint ptr %vendor_nid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor_nid, align 2
  %call.i7.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %5, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #6
  %call.i = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %codec, i16 noundef zeroext 18) #6
  %shr.mask.i = and i32 %call.i, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 1073741824
  %or = or i32 %call.i7.i, 16
  %spec.select = select i1 %cmp.i.not, i32 %call.i7.i, i32 %or
  %call.i16 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %codec, i16 noundef zeroext 14) #6
  %shr.mask.i17 = and i32 %call.i16, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr.mask.i17)
  %cmp.i18.not = icmp eq i32 %shr.mask.i17, 1073741824
  %or7 = or i32 %spec.select, 8
  %coef.1 = select i1 %cmp.i18.not, i32 %spec.select, i32 %or7
  %6 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spec1, align 8
  %vendor_nid.i20 = getelementptr inbounds %struct.cs_spec, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %vendor_nid.i20 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vendor_nid.i20, align 2
  %call.i.i21 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %9, i32 noundef 0, i32 noundef 1280, i32 noundef 4) #6
  %10 = ptrtoint ptr %vendor_nid.i20 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vendor_nid.i20, align 2
  %call.i7.i22 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %11, i32 noundef 0, i32 noundef 1024, i32 noundef %coef.1) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_write(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_read(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_get_pincfg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_gen_update_outputs(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cs420x_fixup_gpio_13(ptr nocapture noundef readonly %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp = icmp eq i32 %action, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %gpio_eapd_hp = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gpio_eapd_hp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %gpio_eapd_hp, align 4
  %gpio_eapd_speaker = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %gpio_eapd_speaker to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %gpio_eapd_speaker, align 8
  %gpio_dir = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 10, ptr %gpio_dir, align 4
  %gpio_mask = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %gpio_mask, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cs420x_fixup_gpio_23(ptr nocapture noundef readonly %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp = icmp eq i32 %action, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %gpio_eapd_hp = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gpio_eapd_hp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %gpio_eapd_hp, align 4
  %gpio_eapd_speaker = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %gpio_eapd_speaker to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %gpio_eapd_speaker, align 8
  %gpio_dir = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 12, ptr %gpio_dir, align 4
  %gpio_mask = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 12, ptr %gpio_mask, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_parse_pin_defcfg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_parse_auto_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_fix_pin_power(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs4208_fixup_mac(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp.not = icmp eq i32 %action, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %fixup_id = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 41
  %0 = ptrtoint ptr %fixup_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %fixup_id, align 4
  tail call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef null, ptr noundef nonnull @cs4208_mac_fixup_tbl, ptr noundef nonnull @cs4208_fixups) #6
  %1 = ptrtoint ptr %fixup_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fixup_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp2 = icmp eq i32 %2, -1
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %fixup_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %fixup_id, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 0) #6
  br label %return

return:                                           ; preds = %if.end5, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs4208_fixup_spdif_switch(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %action)
  %cmp = icmp eq i32 %action, 3
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %entry
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %dig_out_pins = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 33, i32 10
  %2 = ptrtoint ptr %dig_out_pins to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dig_out_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.then.if.end8_crit_edge, label %if.end

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end:                                           ; preds = %if.then
  %call = tail call ptr @snd_hda_find_mixer_ctl(ptr noundef %codec, ptr noundef nonnull @.str.34) #6
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.end5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %put = getelementptr inbounds %struct.snd_kcontrol, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %put to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %put, align 4
  %spdif_sw_put = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %spdif_sw_put to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %spdif_sw_put, align 8
  store ptr @cs4208_spdif_sw_put, ptr %put, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end5, %if.end.if.end8_crit_edge, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs4208_fixup_macmini(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp = icmp eq i32 %action, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %inv_jack_detect = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %0 = ptrtoint ptr %inv_jack_detect to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %inv_jack_detect, align 4
  %bf.set = or i32 %bf.load, 524288
  store i32 %bf.set, ptr %inv_jack_detect, align 4
  tail call void @snd_hda_apply_pincfgs(ptr noundef %codec, ptr noundef nonnull @cs4208_fixup_macmini.pincfgs) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cs4208_fixup_gpio0(ptr nocapture noundef readonly %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp = icmp eq i32 %action, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %gpio_eapd_hp = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gpio_eapd_hp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %gpio_eapd_hp, align 4
  %gpio_eapd_speaker = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %gpio_eapd_speaker to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %gpio_eapd_speaker, align 8
  %gpio_dir = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %gpio_dir, align 4
  %gpio_mask = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %gpio_mask, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_find_mixer_ctl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs4208_spdif_sw_put(ptr noundef %kcontrol, ptr noundef %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 8
  %dig_out_pins = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 10
  %4 = ptrtoint ptr %dig_out_pins to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dig_out_pins, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %cond = select i1 %tobool.not, i32 0, i32 64
  %call.i = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %1, i16 noundef zeroext %5, i32 noundef %cond, i1 noundef zeroext true) #6
  %spdif_sw_put = getelementptr inbounds %struct.cs_spec, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %spdif_sw_put to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spdif_sw_put, align 8
  %call3 = tail call i32 %9(ptr noundef %kcontrol, ptr noundef %ucontrol) #6
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_hda_set_pin_ctl(ptr noundef, i16 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_apply_pincfgs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @query_amp_caps(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_override_amp_caps(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs4210_pinmux_init(ptr noundef %codec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %vendor_nid.i = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %vendor_nid.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor_nid.i, align 2
  %call.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %3, i32 noundef 0, i32 noundef 1280, i32 noundef 1) #6
  %4 = ptrtoint ptr %vendor_nid.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor_nid.i, align 2
  %call.i7.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %5, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #6
  %gpio_mask = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %and = and i32 %call.i7.i, -25
  %masksel = select i1 %tobool.not, i32 0, i32 8
  %coef.0 = or i32 %masksel, %and
  %sense_b = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %sense_b to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %sense_b, align 4
  %9 = lshr i8 %bf.load, 1
  %10 = and i8 %9, 16
  %11 = zext i8 %10 to i32
  %coef.1 = or i32 %coef.0, %11
  %12 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spec1, align 8
  %vendor_nid.i38 = getelementptr inbounds %struct.cs_spec, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %vendor_nid.i38 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vendor_nid.i38, align 2
  %call.i.i39 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %15, i32 noundef 0, i32 noundef 1280, i32 noundef 1) #6
  %16 = ptrtoint ptr %vendor_nid.i38 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vendor_nid.i38, align 2
  %call.i7.i40 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %17, i32 noundef 0, i32 noundef 1024, i32 noundef %coef.1) #6
  %18 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gpio_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool9.not = icmp eq i32 %19, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %20 = ptrtoint ptr %sense_b to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load11 = load i8, ptr %sense_b, align 4
  %21 = and i8 %bf.load11, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool15.not = icmp eq i8 %21, 0
  br i1 %tobool15.not, label %lor.lhs.false.if.end22_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call.i = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %codec, i16 noundef zeroext 9) #6
  %shr.mask.i = and i32 %call.i, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 1073741824
  br i1 %cmp.i.not, label %land.lhs.true.if.end22_crit_edge, label %if.then17

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %codec, i16 noundef zeroext 9) #6
  %and19 = and i32 %call18, 1073741823
  %or20 = or i32 %and19, 1073741824
  %call21 = tail call i32 @snd_hda_codec_set_pincfg(ptr noundef %codec, i16 noundef zeroext 9, i32 noundef %or20) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %land.lhs.true.if.end22_crit_edge, %lor.lhs.false.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cs421x_parse_auto_config(ptr noundef %codec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %call.i = tail call i32 @query_amp_caps(ptr noundef %codec, i16 noundef zeroext 2, i32 noundef 1) #6
  %and.i = and i32 %call.i, -32513
  %and1.i = shl i32 %call.i, 8
  %shl.i = and i32 %and1.i, 32512
  %or.i = or i32 %shl.i, %and.i
  %call2.i = tail call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 2, i32 noundef 1, i32 noundef %or.i) #6
  %autocfg = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 33
  %call = tail call i32 @snd_hda_parse_pin_defcfg(ptr noundef %codec, ptr noundef %autocfg, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @snd_hda_gen_parse_auto_config(ptr noundef %codec, ptr noundef %autocfg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 8
  %dig_outs.i = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 9
  %4 = ptrtoint ptr %dig_outs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dig_outs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13.i = icmp sgt i32 %5, 0
  br i1 %cmp13.i, label %for.body.lr.ph.i, label %if.end7.parse_cs421x_digital.exit_crit_edge

if.end7.parse_cs421x_digital.exit_crit_edge:      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %parse_cs421x_digital.exit

for.body.lr.ph.i:                                 ; preds = %if.end7
  %start_nid.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %num_nodes.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %wcaps.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %spdif_detect.i = getelementptr inbounds %struct.cs_spec, ptr %3, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 10, i32 %i.014.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %8 = ptrtoint ptr %start_nid.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %start_nid.i.i, align 4
  %conv1.i.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %7)
  %cmp.i.i = icmp ugt i16 %9, %7
  br i1 %cmp.i.i, label %for.body.i.if.end.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

lor.lhs.false.i.i:                                ; preds = %for.body.i
  %10 = ptrtoint ptr %num_nodes.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_nodes.i.i, align 8
  %add.i.i = add i32 %11, %conv1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv.i.i)
  %cmp8.not.i.i = icmp ugt i32 %add.i.i, %conv.i.i
  br i1 %cmp8.not.i.i, label %get_wcaps.exit.i, label %lor.lhs.false.i.i.if.end.i_crit_edge

lor.lhs.false.i.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

get_wcaps.exit.i:                                 ; preds = %lor.lhs.false.i.i
  %12 = ptrtoint ptr %wcaps.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wcaps.i.i, align 4
  %sub.i.i = sub nsw i32 %conv.i.i, %conv1.i.i
  %arrayidx.i.i = getelementptr i32, ptr %13, i32 %sub.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %and.i32 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32)
  %tobool.not.i = icmp eq i32 %and.i32, 0
  br i1 %tobool.not.i, label %get_wcaps.exit.i.if.end.i_crit_edge, label %if.then.i

get_wcaps.exit.i.if.end.i_crit_edge:              ; preds = %get_wcaps.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %get_wcaps.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %spdif_detect.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %spdif_detect.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %spdif_detect.i, align 4
  %call.i.i = tail call ptr @snd_hda_jack_detect_enable_callback_mst(ptr noundef %codec, i16 noundef zeroext %7, i32 noundef 0, ptr noundef nonnull @cs4210_spdif_automute) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %get_wcaps.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %17 = ptrtoint ptr %dig_outs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dig_outs.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %18
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.parse_cs421x_digital.exit_crit_edge

if.end.i.parse_cs421x_digital.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %parse_cs421x_digital.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

parse_cs421x_digital.exit:                        ; preds = %if.end.i.parse_cs421x_digital.exit_crit_edge, %if.end7.parse_cs421x_digital.exit_crit_edge
  %speaker_outs = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 33, i32 2
  %19 = ptrtoint ptr %speaker_outs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %speaker_outs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %parse_cs421x_digital.exit.if.end18_crit_edge, label %land.lhs.true

parse_cs421x_digital.exit.if.end18_crit_edge:     ; preds = %parse_cs421x_digital.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true:                                    ; preds = %parse_cs421x_digital.exit
  %vendor_nid = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %vendor_nid to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vendor_nid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %22)
  %cmp10 = icmp eq i16 %22, 11
  br i1 %cmp10, label %if.then12, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then12:                                        ; preds = %land.lhs.true
  %call14 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %1, ptr noundef null, ptr noundef nonnull @cs421x_speaker_boost_ctl) #6
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then12.cleanup_crit_edge, label %if.then12.if.end18_crit_edge

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.then12.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %parse_cs421x_digital.exit.if.end18_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ -12, %if.then12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs421x_init(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %vendor_nid = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %vendor_nid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor_nid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %3)
  %cmp = icmp eq i16 %3, 11
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_hda_sequence_write(ptr noundef %codec, ptr noundef nonnull @cs421x_coef_init_verbs) #6
  tail call void @snd_hda_sequence_write(ptr noundef %codec, ptr noundef nonnull @cs421x_coef_init_verbs_A1_silicon_fixes) #6
  tail call fastcc void @cs4210_pinmux_init(ptr noundef %codec)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @snd_hda_gen_init(ptr noundef %codec) #6
  %gpio_mask = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1814, i32 noundef %5) #6
  %gpio_dir = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_dir, align 4
  %call.i22 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1815, i32 noundef %7) #6
  %gpio_data = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %gpio_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_data, align 8
  %call.i23 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1813, i32 noundef %9) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  tail call fastcc void @init_input_coef(ptr noundef %codec)
  tail call void @cs4210_spdif_automute(ptr noundef %codec, ptr noundef null)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs421x_suspend(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  tail call void @snd_hda_shutup_pins(ptr noundef %codec) #6
  %call.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 2, i32 noundef 0, i32 noundef 1797, i32 noundef 3) #6
  %call.i11 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 3, i32 noundef 0, i32 noundef 1797, i32 noundef 3) #6
  %vendor_nid = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %vendor_nid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor_nid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %3)
  %cmp = icmp eq i16 %3, 11
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec1, align 8
  %vendor_nid.i = getelementptr inbounds %struct.cs_spec, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %vendor_nid.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vendor_nid.i, align 2
  %call.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %7, i32 noundef 0, i32 noundef 1280, i32 noundef 1) #6
  %8 = ptrtoint ptr %vendor_nid.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vendor_nid.i, align 2
  %call.i7.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %9, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #6
  %or = or i32 %call.i7.i, 4
  %10 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spec1, align 8
  %vendor_nid.i13 = getelementptr inbounds %struct.cs_spec, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %vendor_nid.i13 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vendor_nid.i13, align 2
  %call.i.i14 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %13, i32 noundef 0, i32 noundef 1280, i32 noundef 1) #6
  %14 = ptrtoint ptr %vendor_nid.i13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vendor_nid.i13, align 2
  %call.i7.i15 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %15, i32 noundef 0, i32 noundef 1024, i32 noundef %or) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs4210_spdif_automute(ptr noundef %codec, ptr nocapture noundef readnone %tbl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %dig_out_pins = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 33, i32 10
  %2 = ptrtoint ptr %dig_out_pins to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dig_out_pins, align 4
  %spdif_detect = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %spdif_detect to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %spdif_detect, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %vendor_nid = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %vendor_nid to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vendor_nid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %6)
  %cmp.not = icmp eq i16 %6, 11
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i.i = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %codec, i16 noundef zeroext %3, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp ne i32 %call.i.i, 0
  %7 = ptrtoint ptr %spdif_detect to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load6 = load i8, ptr %spdif_detect, align 4
  %8 = and i8 %bf.load6, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %9 = icmp eq i8 %8, 0
  %cmp9 = xor i1 %cmp.i.i, %9
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %bf.shl = select i1 %cmp.i.i, i8 64, i8 0
  %bf.clear17 = and i8 %bf.load6, -65
  %bf.set = or i8 %bf.clear17, %bf.shl
  %10 = ptrtoint ptr %spdif_detect to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %bf.set, ptr %spdif_detect, align 4
  %cond = select i1 %cmp.i.i, i32 64, i32 0
  %call.i = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %codec, i16 noundef zeroext %3, i32 noundef %cond, i1 noundef zeroext false) #6
  %11 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spec1, align 8
  %spdif_present.i = getelementptr inbounds %struct.cs_spec, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %spdif_present.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %spdif_present.i, align 4
  %14 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  %bf.lshr3.i = lshr i8 %bf.load.i, 5
  %15 = and i8 %bf.lshr3.i, 1
  %narrow.i = select i1 %tobool.not.i, i8 0, i8 %15
  %master_mute.i = getelementptr inbounds %struct.hda_gen_spec, ptr %12, i32 0, i32 58
  %16 = ptrtoint ptr %master_mute.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %bf.load8.i = load i64, ptr %master_mute.i, align 4
  %bf.value.i = zext i8 %narrow.i to i64
  %bf.shl.i = shl nuw nsw i64 %bf.value.i, 52
  %bf.clear9.i = and i64 %bf.load8.i, -4503599627370497
  %bf.set.i = or i64 %bf.shl.i, %bf.clear9.i
  store i64 %bf.set.i, ptr %master_mute.i, align 4
  tail call void @snd_hda_gen_update_outputs(ptr noundef %codec) #6
  %gpio_eapd_hp.i = getelementptr inbounds %struct.cs_spec, ptr %12, i32 0, i32 4
  %17 = ptrtoint ptr %gpio_eapd_hp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gpio_eapd_hp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool10.not.i = icmp eq i32 %18, 0
  br i1 %tobool10.not.i, label %lor.lhs.false.i, label %if.end12.if.then.i_crit_edge

if.end12.if.then.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end12
  %gpio_eapd_speaker.i = getelementptr inbounds %struct.cs_spec, ptr %12, i32 0, i32 5
  %19 = ptrtoint ptr %gpio_eapd_speaker.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gpio_eapd_speaker.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool11.not.i = icmp eq i32 %20, 0
  br i1 %tobool11.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end12.if.then.i_crit_edge
  %21 = ptrtoint ptr %master_mute.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %bf.load13.i = load i64, ptr %master_mute.i, align 4
  %22 = and i64 %bf.load13.i, 288230376151711744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool17.not.i = icmp eq i64 %22, 0
  %gpio_eapd_speaker27.i = getelementptr inbounds %struct.cs_spec, ptr %12, i32 0, i32 5
  br i1 %tobool17.not.i, label %if.else.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bf.load13.i)
  %tobool23.not47.i = icmp slt i64 %bf.load13.i, 0
  %cond.in.i = select i1 %tobool23.not47.i, ptr %gpio_eapd_hp.i, ptr %gpio_eapd_speaker27.i
  %23 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %cond.i = load i32, ptr %cond.in.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %gpio_eapd_speaker27.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gpio_eapd_speaker27.i, align 8
  %or.i = or i32 %25, %18
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then18.i
  %cond.sink.i = phi i32 [ %or.i, %if.else.i ], [ %cond.i, %if.then18.i ]
  %26 = getelementptr inbounds %struct.cs_spec, ptr %12, i32 0, i32 3
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond.sink.i, ptr %26, align 8
  %call.i.i33 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1813, i32 noundef %cond.sink.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_jack_detect_state_mst(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_shutup_pins(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cs421x_fixup_sense_b(ptr nocapture noundef readonly %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp = icmp eq i32 %action, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %sense_b = getelementptr inbounds %struct.cs_spec, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sense_b to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %sense_b, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %sense_b, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_set_pincfg(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_gen_add_kctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_jack_detect_enable_callback_mst(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cs421x_boost_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
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
  store i32 3, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs421x_boost_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1.i, align 8
  %vendor_nid.i = getelementptr inbounds %struct.cs_spec, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %vendor_nid.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor_nid.i, align 2
  %call.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext %5, i32 noundef 0, i32 noundef 1280, i32 noundef 4) #6
  %6 = ptrtoint ptr %vendor_nid.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vendor_nid.i, align 2
  %call.i7.i = tail call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %7, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #6
  %and = and i32 %call.i7.i, 3
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs421x_boost_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec1.i, align 8
  %vendor_nid.i = getelementptr inbounds %struct.cs_spec, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %vendor_nid.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vendor_nid.i, align 2
  %call.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext %7, i32 noundef 0, i32 noundef 1280, i32 noundef 4) #6
  %8 = ptrtoint ptr %vendor_nid.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vendor_nid.i, align 2
  %call.i7.i = tail call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %9, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #6
  %and = and i32 %call.i7.i, -4
  %and1 = and i32 %3, 3
  %or = or i32 %and, %and1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i7.i, i32 %or)
  %cmp.not = icmp eq i32 %call.i7.i, %or
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spec1.i, align 8
  %vendor_nid.i11 = getelementptr inbounds %struct.cs_spec, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %vendor_nid.i11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vendor_nid.i11, align 2
  %call.i.i12 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext %13, i32 noundef 0, i32 noundef 1280, i32 noundef 4) #6
  %14 = ptrtoint ptr %vendor_nid.i11 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vendor_nid.i11, align 2
  %call.i7.i13 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext %15, i32 noundef 0, i32 noundef 1024, i32 noundef %or) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @__UNIQUE_ID_file243, !1, !"__UNIQUE_ID_file243", i1 false, i1 false}
!1 = !{!"../sound/pci/hda/patch_cirrus.c", i32 1239, i32 1}
!2 = !{ptr @__UNIQUE_ID_license244, !1, !"__UNIQUE_ID_license244", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description245, !4, !"__UNIQUE_ID_description245", i1 false, i1 false}
!4 = !{!"../sound/pci/hda/patch_cirrus.c", i32 1240, i32 1}
!5 = !{ptr @__initcall__kmod_snd_hda_codec_cirrus__246_1246_cirrus_driver_init6, !6, !"__initcall__kmod_snd_hda_codec_cirrus__246_1246_cirrus_driver_init6", i1 false, i1 false}
!6 = !{!"../sound/pci/hda/patch_cirrus.c", i32 1246, i32 1}
!7 = !{ptr @__exitcall_cirrus_driver_exit, !6, !"__exitcall_cirrus_driver_exit", i1 false, i1 false}
!8 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cirrus_driver, !10, !"cirrus_driver", i1 false, i1 false}
!10 = !{!"../sound/pci/hda/patch_cirrus.c", i32 1242, i32 32}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/pci/hda/patch_cirrus.c", i32 1230, i32 2}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/pci/hda/patch_cirrus.c", i32 1231, i32 2}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/pci/hda/patch_cirrus.c", i32 1232, i32 2}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/pci/hda/patch_cirrus.c", i32 1233, i32 2}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/pci/hda/patch_cirrus.c", i32 1234, i32 2}
!21 = !{ptr @snd_hda_id_cirrus, !22, !"snd_hda_id_cirrus", i1 false, i1 false}
!22 = !{!"../sound/pci/hda/patch_cirrus.c", i32 1229, i32 35}
!23 = !{ptr @cs_patch_ops, !24, !"cs_patch_ops", i1 false, i1 false}
!24 = !{!"../sound/pci/hda/patch_cirrus.c", i32 336, i32 35}
!25 = !{ptr @cs_errata_init_verbs, !26, !"cs_errata_init_verbs", i1 false, i1 false}
!26 = !{!"../sound/pci/hda/patch_cirrus.c", i32 253, i32 30}
!27 = !{ptr @cs_coef_init_verbs, !28, !"cs_coef_init_verbs", i1 false, i1 false}
!28 = !{!"../sound/pci/hda/patch_cirrus.c", i32 206, i32 30}
!29 = !{ptr @cs4208_coef_init_verbs, !30, !"cs4208_coef_init_verbs", i1 false, i1 false}
!30 = !{!"../sound/pci/hda/patch_cirrus.c", i32 225, i32 30}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/pci/hda/patch_cirrus.c", i32 377, i32 32}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/pci/hda/patch_cirrus.c", i32 378, i32 32}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/pci/hda/patch_cirrus.c", i32 379, i32 33}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/pci/hda/patch_cirrus.c", i32 380, i32 37}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/pci/hda/patch_cirrus.c", i32 381, i32 32}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/pci/hda/patch_cirrus.c", i32 382, i32 33}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/pci/hda/patch_cirrus.c", i32 383, i32 32}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/pci/hda/patch_cirrus.c", i32 384, i32 32}
!47 = !{ptr @cs420x_models, !48, !"cs420x_models", i1 false, i1 false}
!48 = !{!"../sound/pci/hda/patch_cirrus.c", i32 376, i32 37}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/pci/hda/patch_cirrus.c", i32 389, i32 2}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/pci/hda/patch_cirrus.c", i32 390, i32 2}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/pci/hda/patch_cirrus.c", i32 391, i32 2}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/pci/hda/patch_cirrus.c", i32 392, i32 2}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/pci/hda/patch_cirrus.c", i32 397, i32 2}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/pci/hda/patch_cirrus.c", i32 398, i32 2}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/pci/hda/patch_cirrus.c", i32 399, i32 2}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/pci/hda/patch_cirrus.c", i32 400, i32 2}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/pci/hda/patch_cirrus.c", i32 401, i32 2}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/pci/hda/patch_cirrus.c", i32 402, i32 2}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pci/hda/patch_cirrus.c", i32 403, i32 2}
!71 = !{ptr @cs420x_fixup_tbl, !72, !"cs420x_fixup_tbl", i1 false, i1 false}
!72 = !{!"../sound/pci/hda/patch_cirrus.c", i32 388, i32 35}
!73 = !{ptr @cs420x_fixups, !74, !"cs420x_fixups", i1 false, i1 false}
!74 = !{!"../sound/pci/hda/patch_cirrus.c", i32 519, i32 31}
!75 = !{ptr @mbp53_pincfgs, !76, !"mbp53_pincfgs", i1 false, i1 false}
!76 = !{!"../sound/pci/hda/patch_cirrus.c", i32 407, i32 32}
!77 = !{ptr @mbp55_pincfgs, !78, !"mbp55_pincfgs", i1 false, i1 false}
!78 = !{!"../sound/pci/hda/patch_cirrus.c", i32 421, i32 32}
!79 = !{ptr @imac27_pincfgs, !80, !"imac27_pincfgs", i1 false, i1 false}
!80 = !{!"../sound/pci/hda/patch_cirrus.c", i32 435, i32 32}
!81 = !{ptr @mbp101_pincfgs, !82, !"mbp101_pincfgs", i1 false, i1 false}
!82 = !{!"../sound/pci/hda/patch_cirrus.c", i32 449, i32 32}
!83 = !{ptr @mba42_pincfgs, !84, !"mba42_pincfgs", i1 false, i1 false}
!84 = !{!"../sound/pci/hda/patch_cirrus.c", i32 456, i32 32}
!85 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/pci/hda/patch_cirrus.c", i32 629, i32 32}
!87 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/pci/hda/patch_cirrus.c", i32 630, i32 31}
!89 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/pci/hda/patch_cirrus.c", i32 631, i32 32}
!91 = !{ptr @.str.28, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/pci/hda/patch_cirrus.c", i32 632, i32 34}
!93 = !{ptr @cs4208_models, !94, !"cs4208_models", i1 false, i1 false}
!94 = !{!"../sound/pci/hda/patch_cirrus.c", i32 628, i32 37}
!95 = !{ptr @cs4208_fixup_tbl, !96, !"cs4208_fixup_tbl", i1 false, i1 false}
!96 = !{!"../sound/pci/hda/patch_cirrus.c", i32 636, i32 35}
!97 = !{ptr @cs4208_fixups, !98, !"cs4208_fixups", i1 false, i1 false}
!98 = !{!"../sound/pci/hda/patch_cirrus.c", i32 728, i32 31}
!99 = !{ptr @.str.29, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/pci/hda/patch_cirrus.c", i32 643, i32 2}
!101 = !{ptr @.str.30, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/pci/hda/patch_cirrus.c", i32 644, i32 2}
!103 = !{ptr @.str.31, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/pci/hda/patch_cirrus.c", i32 645, i32 2}
!105 = !{ptr @.str.32, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/pci/hda/patch_cirrus.c", i32 646, i32 2}
!107 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/pci/hda/patch_cirrus.c", i32 647, i32 2}
!109 = !{ptr @cs4208_mac_fixup_tbl, !110, !"cs4208_mac_fixup_tbl", i1 false, i1 false}
!110 = !{!"../sound/pci/hda/patch_cirrus.c", i32 642, i32 35}
!111 = !{ptr @mba6_pincfgs, !112, !"mba6_pincfgs", i1 false, i1 false}
!112 = !{!"../sound/pci/hda/patch_cirrus.c", i32 470, i32 32}
!113 = !{ptr @.str.34, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/pci/hda/patch_cirrus.c", i32 720, i32 40}
!115 = !{ptr @cs4208_fixup_macmini.pincfgs, !116, !"pincfgs", i1 false, i1 false}
!116 = !{!"../sound/pci/hda/patch_cirrus.c", i32 684, i32 33}
!117 = !{ptr @cs421x_patch_ops, !118, !"cs421x_patch_ops", i1 false, i1 false}
!118 = !{!"../sound/pci/hda/patch_cirrus.c", i32 1157, i32 35}
!119 = !{ptr @cs421x_coef_init_verbs, !120, !"cs421x_coef_init_verbs", i1 false, i1 false}
!120 = !{!"../sound/pci/hda/patch_cirrus.c", i32 876, i32 30}
!121 = !{ptr @cs421x_coef_init_verbs_A1_silicon_fixes, !122, !"cs421x_coef_init_verbs_A1_silicon_fixes", i1 false, i1 false}
!122 = !{!"../sound/pci/hda/patch_cirrus.c", i32 913, i32 30}
!123 = !{ptr @.str.35, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/pci/hda/patch_cirrus.c", i32 815, i32 34}
!125 = !{ptr @.str.36, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/pci/hda/patch_cirrus.c", i32 816, i32 33}
!127 = !{ptr @cs421x_models, !128, !"cs421x_models", i1 false, i1 false}
!128 = !{!"../sound/pci/hda/patch_cirrus.c", i32 814, i32 37}
!129 = !{ptr @.str.37, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/pci/hda/patch_cirrus.c", i32 822, i32 2}
!131 = !{ptr @cs421x_fixup_tbl, !132, !"cs421x_fixup_tbl", i1 false, i1 false}
!132 = !{!"../sound/pci/hda/patch_cirrus.c", i32 820, i32 35}
!133 = !{ptr @cs421x_fixups, !134, !"cs421x_fixups", i1 false, i1 false}
!134 = !{!"../sound/pci/hda/patch_cirrus.c", i32 859, i32 31}
!135 = !{ptr @cdb4210_pincfgs, !136, !"cdb4210_pincfgs", i1 false, i1 false}
!136 = !{!"../sound/pci/hda/patch_cirrus.c", i32 828, i32 32}
!137 = !{ptr @stumpy_pincfgs, !138, !"stumpy_pincfgs", i1 false, i1 false}
!138 = !{!"../sound/pci/hda/patch_cirrus.c", i32 839, i32 32}
!139 = !{ptr @.str.38, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/pci/hda/patch_cirrus.c", i32 982, i32 10}
!141 = !{ptr @cs421x_speaker_boost_ctl, !142, !"cs421x_speaker_boost_ctl", i1 false, i1 false}
!142 = !{!"../sound/pci/hda/patch_cirrus.c", i32 977, i32 38}
!143 = !{ptr @cs421x_speaker_boost_db_scale, !144, !"cs421x_speaker_boost_db_scale", i1 false, i1 false}
!144 = !{!"../sound/pci/hda/patch_cirrus.c", i32 935, i32 14}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
