; ModuleID = '/llk/IR_all_yes/sound/pci/hda/patch_analog.c_pt.bc'
source_filename = "../sound/pci/hda/patch_analog.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hda_codec_driver = type { %struct.hdac_driver, ptr }
%struct.hdac_driver = type { %struct.device_driver, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hda_device_id = type { i32, i32, i8, ptr, i32 }
%struct.snd_pci_quirk = type { i16, i16, i16, i32, ptr }
%struct.hda_fixup = type { i32, i8, i32, %union.anon.73 }
%union.anon.73 = type { ptr }
%struct.hda_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.hda_verb = type { i16, i32, i32 }
%struct.nid_path = type { i32, [10 x i16], [10 x i8], [10 x i8], [3 x i32], i8 }
%struct.hda_model_fixup = type { i32, ptr }
%struct.hda_pintbl = type { i16, i32 }
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
%struct.ad198x_spec = type { %struct.hda_gen_spec, [4 x i32], i32, i16, i32, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.83, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.83 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.78, [128 x i8] }
%union.anon.78 = type { %union.anon.80 }
%union.anon.80 = type { [64 x i64] }

@__UNIQUE_ID_file239 = internal constant [61 x i8] c"snd_hda_codec_analog.file=sound/pci/hda/snd-hda-codec-analog\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [33 x i8] c"snd_hda_codec_analog.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [63 x i8] c"snd_hda_codec_analog.description=Analog Devices HD-audio codec\00", section ".modinfo", align 1
@__initcall__kmod_snd_hda_codec_analog__242_1180_analog_driver_init6 = internal global ptr @analog_driver_init, section ".initcall6.init", align 4
@analog_driver = internal global { %struct.hda_codec_driver, [52 x i8] } { %struct.hda_codec_driver { %struct.hdac_driver zeroinitializer, ptr @snd_hda_id_analog }, [52 x i8] zeroinitializer }, align 32
@__exitcall_analog_driver_exit = internal global ptr @analog_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_hda_codec_analog\00", [43 x i8] zeroinitializer }, align 32
@snd_hda_id_analog = internal constant { [16 x %struct.hda_device_id], [64 x i8] } { [16 x %struct.hda_device_id] [%struct.hda_device_id { i32 299112522, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_ad1884 to i32) }, %struct.hda_device_id { i32 299112578, i32 0, i8 1, ptr @.str.2, i32 ptrtoint (ptr @patch_ad1882 to i32) }, %struct.hda_device_id { i32 299112579, i32 0, i8 1, ptr @.str.3, i32 ptrtoint (ptr @patch_ad1884 to i32) }, %struct.hda_device_id { i32 299112580, i32 0, i8 1, ptr @.str.4, i32 ptrtoint (ptr @patch_ad1884 to i32) }, %struct.hda_device_id { i32 299112778, i32 0, i8 1, ptr @.str.5, i32 ptrtoint (ptr @patch_ad1884 to i32) }, %struct.hda_device_id { i32 299112779, i32 0, i8 1, ptr @.str.6, i32 ptrtoint (ptr @patch_ad1884 to i32) }, %struct.hda_device_id { i32 299112833, i32 0, i8 1, ptr @.str.7, i32 ptrtoint (ptr @patch_ad1981 to i32) }, %struct.hda_device_id { i32 299112835, i32 0, i8 1, ptr @.str.8, i32 ptrtoint (ptr @patch_ad1983 to i32) }, %struct.hda_device_id { i32 299112836, i32 0, i8 1, ptr @.str.9, i32 ptrtoint (ptr @patch_ad1884 to i32) }, %struct.hda_device_id { i32 299112838, i32 0, i8 1, ptr @.str.10, i32 ptrtoint (ptr @patch_ad1986a to i32) }, %struct.hda_device_id { i32 299112840, i32 0, i8 1, ptr @.str.11, i32 ptrtoint (ptr @patch_ad1988 to i32) }, %struct.hda_device_id { i32 299112843, i32 0, i8 1, ptr @.str.12, i32 ptrtoint (ptr @patch_ad1988 to i32) }, %struct.hda_device_id { i32 299141162, i32 0, i8 1, ptr @.str.13, i32 ptrtoint (ptr @patch_ad1882 to i32) }, %struct.hda_device_id { i32 299145370, i32 0, i8 1, ptr @.str.14, i32 ptrtoint (ptr @patch_ad1988 to i32) }, %struct.hda_device_id { i32 299145371, i32 0, i8 1, ptr @.str.15, i32 ptrtoint (ptr @patch_ad1988 to i32) }, %struct.hda_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AD1884A\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AD1882\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AD1883\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AD1884\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AD1984A\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AD1984B\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AD1981\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AD1983\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AD1984\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AD1986A\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AD1988\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AD1988B\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AD1882A\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AD1989A\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AD1989B\00", [24 x i8] zeroinitializer }, align 32
@ad1884_fixup_tbl = internal constant { [4 x %struct.snd_pci_quirk], [32 x i8] } { [4 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4156, i16 10882, i16 -1, i32 4, ptr @.str.18 }, %struct.snd_pci_quirk { i16 4156, i16 0, i16 0, i32 1, ptr @.str.19 }, %struct.snd_pci_quirk { i16 6058, i16 0, i16 0, i32 3, ptr @.str.20 }, %struct.snd_pci_quirk zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ad1884_fixups = internal constant { [5 x %struct.hda_fixup], [48 x i8] } { [5 x %struct.hda_fixup] [%struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.73 { ptr @ad1884_fixup_amp_override } }, %struct.hda_fixup { i32 3, i8 -128, i32 0, %union.anon.73 { ptr @ad1884_fixup_hp_eapd } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.73 { ptr @ad1884_dmic_init_verbs } }, %struct.hda_fixup { i32 3, i8 -128, i32 2, %union.anon.73 { ptr @ad1884_fixup_thinkpad } }, %struct.hda_fixup { i32 2, i8 -128, i32 1, %union.anon.73 { ptr @ad1884_dmic_init_verbs } }], [48 x i8] zeroinitializer }, align 32
@ad198x_auto_patch_ops = internal constant { %struct.hda_codec_ops, [56 x i8] } { %struct.hda_codec_ops { ptr @ad198x_auto_build_controls, ptr @snd_hda_gen_build_pcms, ptr @snd_hda_gen_init, ptr @snd_hda_gen_free, ptr @snd_hda_jack_unsol_event, ptr null, ptr @ad198x_suspend, ptr null, ptr @snd_hda_gen_check_power_status, ptr null }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ad_beep_mixer = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 1073741824, ptr @.str.16, i32 0, i32 268435475, i32 0, ptr @snd_hda_mixer_amp_volume_info, ptr @snd_hda_mixer_amp_volume_get, ptr @snd_hda_mixer_amp_volume_put, %union.anon.84 { ptr @snd_hda_mixer_amp_tlv }, i32 458752 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 1073741824, ptr @.str.17, i32 0, i32 0, i32 0, ptr @snd_hda_mixer_amp_switch_info, ptr @snd_hda_mixer_amp_switch_get_beep, ptr @snd_hda_mixer_amp_switch_put_beep, %union.anon.84 zeroinitializer, i32 458752 }, %struct.snd_kcontrol_new zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Beep Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Beep Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HP Touchsmart\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HP\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Lenovo Thinkpad\00", [16 x i8] zeroinitializer }, align 32
@ad1884_dmic_init_verbs = internal constant { [3 x %struct.hda_verb], [60 x i8] } { [3 x %struct.hda_verb] [%struct.hda_verb { i16 1, i32 1280, i32 5111 }, %struct.hda_verb { i16 1, i32 1024, i32 8 }, %struct.hda_verb zeroinitializer], [60 x i8] zeroinitializer }, align 32
@ad1983_auto_smux_mixer = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @ad1983_auto_smux_enum_info, ptr @ad1983_auto_smux_enum_get, ptr @ad1983_auto_smux_enum_put, %union.anon.84 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 Playback Source\00", [41 x i8] zeroinitializer }, align 32
@ad1983_auto_smux_enum_info.texts2 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.22, ptr @.str.23], [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCM\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@ad1983_auto_smux_enum_info.texts3 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.22, ptr @.str.24, ptr @.str.25], [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC1\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC2\00", [27 x i8] zeroinitializer }, align 32
@ad1988_add_spdif_mux_ctl.fake_paths = internal constant { <{ %struct.nid_path, { i32, [10 x i16], [10 x i8], <{ i8, i8, [8 x i8] }>, [3 x i32], i8 }, { i32, [10 x i16], [10 x i8], <{ i8, i8, [8 x i8] }>, [3 x i32], i8 }, { i32, [10 x i16], [10 x i8], <{ i8, i8, [8 x i8] }>, [3 x i32], i8 } }>, [48 x i8] } { <{ %struct.nid_path, { i32, [10 x i16], [10 x i8], <{ i8, i8, [8 x i8] }>, [3 x i32], i8 }, { i32, [10 x i16], [10 x i8], <{ i8, i8, [8 x i8] }>, [3 x i32], i8 }, { i32, [10 x i16], [10 x i8], <{ i8, i8, [8 x i8] }>, [3 x i32], i8 } }> <{ %struct.nid_path { i32 3, [10 x i16] [i16 2, i16 29, i16 27, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0], [10 x i8] zeroinitializer, [10 x i8] zeroinitializer, [3 x i32] zeroinitializer, i8 0 }, { i32, [10 x i16], [10 x i8], <{ i8, i8, [8 x i8] }>, [3 x i32], i8 } { i32 4, [10 x i16] [i16 8, i16 11, i16 29, i16 27, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0], [10 x i8] c"\00\00\01\00\00\00\00\00\00\00", <{ i8, i8, [8 x i8] }> <{ i8 0, i8 1, [8 x i8] zeroinitializer }>, [3 x i32] zeroinitializer, i8 0 }, { i32, [10 x i16], [10 x i8], <{ i8, i8, [8 x i8] }>, [3 x i32], i8 } { i32 4, [10 x i16] [i16 9, i16 11, i16 29, i16 27, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0], [10 x i8] c"\00\01\01\00\00\00\00\00\00\00", <{ i8, i8, [8 x i8] }> <{ i8 0, i8 1, [8 x i8] zeroinitializer }>, [3 x i32] zeroinitializer, i8 0 }, { i32, [10 x i16], [10 x i8], <{ i8, i8, [8 x i8] }>, [3 x i32], i8 } { i32 4, [10 x i16] [i16 15, i16 11, i16 29, i16 27, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0], [10 x i8] c"\00\02\01\00\00\00\00\00\00\00", <{ i8, i8, [8 x i8] }> <{ i8 0, i8 1, [8 x i8] zeroinitializer }>, [3 x i32] zeroinitializer, i8 0 } }>, [48 x i8] zeroinitializer }, align 32
@ad1988_auto_smux_mixer = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @ad1988_auto_smux_enum_info, ptr @ad1988_auto_smux_enum_get, ptr @ad1988_auto_smux_enum_put, %union.anon.84 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ad1988_auto_smux_enum_info.texts = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26], [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC3\00", [27 x i8] zeroinitializer }, align 32
@ad1981_fixup_tbl = internal constant { [5 x %struct.snd_pci_quirk], [48 x i8] } { [5 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4116, i16 0, i16 0, i32 0, ptr @.str.27 }, %struct.snd_pci_quirk { i16 4156, i16 0, i16 0, i32 1, ptr @.str.19 }, %struct.snd_pci_quirk { i16 6058, i16 0, i16 0, i32 0, ptr @.str.27 }, %struct.snd_pci_quirk { i16 12464, i16 4156, i16 -1, i32 1, ptr @.str.28 }, %struct.snd_pci_quirk zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ad1981_fixups = internal constant { [2 x %struct.hda_fixup], [32 x i8] } { [2 x %struct.hda_fixup] [%struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.73 { ptr @ad1981_fixup_amp_override } }, %struct.hda_fixup { i32 3, i8 -128, i32 0, %union.anon.73 { ptr @ad1981_fixup_hp_eapd } }], [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Lenovo\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HP nx6320\00", [22 x i8] zeroinitializer }, align 32
@patch_ad1983.conn_0c = internal constant { [1 x i16], [30 x i8] } { [1 x i16] [i16 8], [30 x i8] zeroinitializer }, align 32
@patch_ad1983.conn_0d = internal constant { [1 x i16], [30 x i8] } { [1 x i16] [i16 9], [30 x i8] zeroinitializer }, align 32
@patch_ad1986a.preferred_pairs = internal constant { [11 x i16], [42 x i8] } { [11 x i16] [i16 26, i16 3, i16 27, i16 3, i16 28, i16 4, i16 29, i16 5, i16 30, i16 3, i16 0], [42 x i8] zeroinitializer }, align 32
@ad1986a_fixup_models = internal constant { [6 x %struct.hda_model_fixup], [48 x i8] } { [6 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 3, ptr @.str.29 }, %struct.hda_model_fixup { i32 4, ptr @.str.30 }, %struct.hda_model_fixup { i32 5, ptr @.str.31 }, %struct.hda_model_fixup { i32 5, ptr @.str.32 }, %struct.hda_model_fixup { i32 6, ptr @.str.33 }, %struct.hda_model_fixup zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ad1986a_fixup_tbl = internal constant { [16 x %struct.snd_pci_quirk], [64 x i8] } { [16 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4156, i16 12463, i16 -1, i32 5, ptr @.str.34 }, %struct.snd_pci_quirk { i16 4163, i16 4435, i16 -1, i32 5, ptr @.str.35 }, %struct.snd_pci_quirk { i16 4163, i16 5187, i16 -1, i32 6, ptr @.str.36 }, %struct.snd_pci_quirk { i16 4163, i16 5191, i16 -1, i32 6, ptr @.str.37 }, %struct.snd_pci_quirk { i16 4163, i16 -32512, i16 -256, i32 3, ptr @.str.38 }, %struct.snd_pci_quirk { i16 4163, i16 -32256, i16 -256, i32 3, ptr @.str.39 }, %struct.snd_pci_quirk { i16 4318, i16 -13436, i16 -1, i32 3, ptr @.str.40 }, %struct.snd_pci_quirk { i16 4473, i16 -192, i16 -1, i32 6, ptr @.str.41 }, %struct.snd_pci_quirk { i16 5197, i16 -16354, i16 -1, i32 4, ptr @.str.42 }, %struct.snd_pci_quirk { i16 5197, i16 -16384, i16 -256, i32 2, ptr @.str.43 }, %struct.snd_pci_quirk { i16 5197, i16 -16345, i16 -1, i32 1, ptr @.str.44 }, %struct.snd_pci_quirk { i16 5681, i16 -16350, i16 -1, i32 8, ptr @.str.45 }, %struct.snd_pci_quirk { i16 6058, i16 8294, i16 -1, i32 0, ptr @.str.46 }, %struct.snd_pci_quirk { i16 6058, i16 4113, i16 -1, i32 3, ptr @.str.47 }, %struct.snd_pci_quirk { i16 6058, i16 4119, i16 -1, i32 3, ptr @.str.48 }, %struct.snd_pci_quirk zeroinitializer], [64 x i8] zeroinitializer }, align 32
@ad1986a_fixups = internal constant { [9 x %struct.hda_fixup], [48 x i8] } { [9 x %struct.hda_fixup] [%struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.73 { ptr @ad_fixup_inv_jack_detect } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.73 { ptr @.compoundliteral } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.73 { ptr @.compoundliteral.49 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.73 { ptr @.compoundliteral.50 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.73 { ptr @.compoundliteral.51 } }, %struct.hda_fixup { i32 1, i8 64, i32 4, %union.anon.73 { ptr @.compoundliteral.52 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.73 { ptr @ad1986a_fixup_eapd } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.73 { ptr @ad1986a_fixup_eapd_mix_in } }, %struct.hda_fixup { i32 1, i8 -128, i32 7, %union.anon.73 { ptr @.compoundliteral.53 } }], [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3stack\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"laptop\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"laptop-imic\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"laptop-eapd\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eapd\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HP B2800\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ASUS M9V\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ASUS Z99He\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ASUS A8JN\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ASUS P5\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ASUS M2\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ASUS A8N-VM\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Toshiba Satellite L40\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FSC V2060\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Samsung\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Samsung Q1\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PackardBell EasyNote MX65\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Lenovo N100\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Lenovo M55\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Lenovo A60\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [3 x %struct.hda_pintbl], [40 x i8] } { [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 27, i32 -1877540592 }, %struct.hda_pintbl { i16 29, i32 -1868103362 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal constant { [5 x %struct.hda_pintbl], [56 x i8] } { [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 27, i32 -1877540592 }, %struct.hda_pintbl { i16 29, i32 -1868103362 }, %struct.hda_pintbl { i16 32, i32 1091637744 }, %struct.hda_pintbl { i16 36, i32 1091637744 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal constant { [8 x %struct.hda_pintbl], [32 x i8] } { [8 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 26, i32 35733537 }, %struct.hda_pintbl { i16 27, i32 16859153 }, %struct.hda_pintbl { i16 28, i32 25243696 }, %struct.hda_pintbl { i16 29, i32 27365408 }, %struct.hda_pintbl { i16 30, i32 1091637744 }, %struct.hda_pintbl { i16 31, i32 44142832 }, %struct.hda_pintbl { i16 32, i32 1091637744 }, %struct.hda_pintbl zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal constant { [8 x %struct.hda_pintbl], [32 x i8] } { [8 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 26, i32 35733537 }, %struct.hda_pintbl { i16 27, i32 -1877540592 }, %struct.hda_pintbl { i16 28, i32 1091637744 }, %struct.hda_pintbl { i16 29, i32 1091637744 }, %struct.hda_pintbl { i16 30, i32 1091637744 }, %struct.hda_pintbl { i16 31, i32 44143088 }, %struct.hda_pintbl { i16 32, i32 1091637744 }, %struct.hda_pintbl zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal constant { [2 x %struct.hda_pintbl], [16 x i8] } { [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 29, i32 -1868103362 }, %struct.hda_pintbl zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal constant { [13 x %struct.hda_pintbl], [56 x i8] } { [13 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 26, i32 69287983 }, %struct.hda_pintbl { i16 27, i32 -1877540592 }, %struct.hda_pintbl { i16 28, i32 1091637744 }, %struct.hda_pintbl { i16 29, i32 -1868103376 }, %struct.hda_pintbl { i16 30, i32 1091637744 }, %struct.hda_pintbl { i16 31, i32 77697088 }, %struct.hda_pintbl { i16 32, i32 1091637744 }, %struct.hda_pintbl { i16 33, i32 1091637744 }, %struct.hda_pintbl { i16 34, i32 1091637744 }, %struct.hda_pintbl { i16 35, i32 1091637744 }, %struct.hda_pintbl { i16 36, i32 1091637744 }, %struct.hda_pintbl { i16 37, i32 1091637744 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ad1988_fixup_models = internal constant { [2 x %struct.hda_model_fixup], [16 x i8] } { [2 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 0, ptr @.str.54 }, %struct.hda_model_fixup zeroinitializer], [16 x i8] zeroinitializer }, align 32
@ad1988_fixups = internal constant { [1 x %struct.hda_fixup], [16 x i8] } { [1 x %struct.hda_fixup] [%struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.73 { ptr @.compoundliteral.55 } }], [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"6stack-dig\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal constant { [10 x %struct.hda_pintbl], [48 x i8] } { [10 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 17, i32 35733808 }, %struct.hda_pintbl { i16 18, i32 16859152 }, %struct.hda_pintbl { i16 20, i32 44142882 }, %struct.hda_pintbl { i16 21, i32 25243681 }, %struct.hda_pintbl { i16 22, i32 16846866 }, %struct.hda_pintbl { i16 23, i32 27365408 }, %struct.hda_pintbl { i16 27, i32 21361136 }, %struct.hda_pintbl { i16 36, i32 16867345 }, %struct.hda_pintbl { i16 37, i32 16850963 }, %struct.hda_pintbl zeroinitializer], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 299112522, i64 299112578, i64 299112579, i64 299112580, i64 299112778, i64 299112779, i64 299112833, i64 299112835, i64 299112836, i64 299112838, i64 299112840, i64 299112843, i64 299141162, i64 299145370, i64 299145371]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"analog_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1176, i32 32 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1180, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"snd_hda_id_analog\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1153, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1154, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1155, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1156, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1157, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1158, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1159, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1160, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1161, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1162, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1163, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1164, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1165, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1166, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1167, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1168, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"ad1884_fixup_tbl\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1068, i32 35 }
@___asan_gen_.115 = private unnamed_addr constant [14 x i8] c"ad1884_fixups\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1039, i32 31 }
@___asan_gen_.118 = private unnamed_addr constant [22 x i8] c"ad198x_auto_patch_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 155, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant [14 x i8] c"ad_beep_mixer\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 37, i32 38 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 38, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 39, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1069, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1070, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1071, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [23 x i8] c"ad1884_dmic_init_verbs\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1025, i32 30 }
@___asan_gen_.142 = private unnamed_addr constant [23 x i8] c"ad1983_auto_smux_mixer\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 489, i32 38 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 491, i32 10 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"texts2\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 448, i32 28 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 448, i32 41 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 448, i32 48 }
@___asan_gen_.157 = private unnamed_addr constant [7 x i8] c"texts3\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 449, i32 28 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 449, i32 48 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 449, i32 56 }
@___asan_gen_.166 = private unnamed_addr constant [11 x i8] c"fake_paths\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 811, i32 31 }
@___asan_gen_.169 = private unnamed_addr constant [23 x i8] c"ad1988_auto_smux_mixer\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 775, i32 38 }
@___asan_gen_.172 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 728, i32 28 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 729, i32 26 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"ad1981_fixup_tbl\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 595, i32 35 }
@___asan_gen_.181 = private unnamed_addr constant [14 x i8] c"ad1981_fixups\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 582, i32 31 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 596, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 600, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [8 x i8] c"conn_0c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 516, i32 25 }
@___asan_gen_.193 = private unnamed_addr constant [8 x i8] c"conn_0d\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 517, i32 25 }
@___asan_gen_.196 = private unnamed_addr constant [16 x i8] c"preferred_pairs\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 386, i32 25 }
@___asan_gen_.199 = private unnamed_addr constant [21 x i8] c"ad1986a_fixup_models\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 371, i32 37 }
@___asan_gen_.202 = private unnamed_addr constant [18 x i8] c"ad1986a_fixup_tbl\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 352, i32 35 }
@___asan_gen_.205 = private unnamed_addr constant [15 x i8] c"ad1986a_fixups\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 264, i32 31 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 372, i32 40 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 373, i32 40 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 374, i32 45 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 375, i32 45 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 376, i32 38 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 353, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 354, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 355, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 356, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 357, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 358, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 359, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 360, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 361, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 362, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 363, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 364, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 365, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 366, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 367, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [20 x i8] c"ad1988_fixup_models\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 891, i32 37 }
@___asan_gen_.277 = private unnamed_addr constant [14 x i8] c"ad1988_fixups\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 873, i32 31 }
@___asan_gen_.280 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.281 = private constant [32 x i8] c"../sound/pci/hda/patch_analog.c\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 892, i32 43 }
@___asan_gen_.283 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_analog_driver_exit, ptr @__initcall__kmod_snd_hda_codec_analog__242_1180_analog_driver_init6, ptr @analog_driver_exit, ptr @analog_driver, ptr @.str, ptr @snd_hda_id_analog, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ad1884_fixup_tbl, ptr @ad1884_fixups, ptr @ad198x_auto_patch_ops, ptr @ad_beep_mixer, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @ad1884_dmic_init_verbs, ptr @ad1983_auto_smux_mixer, ptr @.str.21, ptr @ad1983_auto_smux_enum_info.texts2, ptr @.str.22, ptr @.str.23, ptr @ad1983_auto_smux_enum_info.texts3, ptr @.str.24, ptr @.str.25, ptr @ad1988_add_spdif_mux_ctl.fake_paths, ptr @ad1988_auto_smux_mixer, ptr @ad1988_auto_smux_enum_info.texts, ptr @.str.26, ptr @ad1981_fixup_tbl, ptr @ad1981_fixups, ptr @.str.27, ptr @.str.28, ptr @patch_ad1983.conn_0c, ptr @patch_ad1983.conn_0d, ptr @patch_ad1986a.preferred_pairs, ptr @ad1986a_fixup_models, ptr @ad1986a_fixup_tbl, ptr @ad1986a_fixups, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.compoundliteral, ptr @.compoundliteral.49, ptr @.compoundliteral.50, ptr @.compoundliteral.51, ptr @.compoundliteral.52, ptr @.compoundliteral.53, ptr @ad1988_fixup_models, ptr @ad1988_fixups, ptr @.str.54, ptr @.compoundliteral.55], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hda_id_analog to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad1884_fixup_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad1884_fixups to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad198x_auto_patch_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad_beep_mixer to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad1884_dmic_init_verbs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad1983_auto_smux_mixer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad1983_auto_smux_enum_info.texts2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad1983_auto_smux_enum_info.texts3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad1988_add_spdif_mux_ctl.fake_paths to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad1988_auto_smux_mixer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad1988_auto_smux_enum_info.texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad1981_fixup_tbl to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad1981_fixups to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @patch_ad1983.conn_0c to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @patch_ad1983.conn_0d to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @patch_ad1986a.preferred_pairs to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad1986a_fixup_models to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad1986a_fixup_tbl to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad1986a_fixups to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad1988_fixup_models to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad1988_fixups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @analog_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hda_codec_driver_register(ptr noundef nonnull @analog_driver, ptr noundef nonnull @.str, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @analog_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @hda_codec_driver_unregister(ptr noundef nonnull @analog_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_codec_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hda_codec_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_ad1884(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5736) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec1.i, align 8
  %call2.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #7
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %2 = call ptr @memcpy(ptr %patch_ops.i, ptr @ad198x_auto_patch_ops, i32 40)
  %3 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spec1.i, align 8
  %mixer_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %mixer_nid to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 32, ptr %mixer_nid, align 2
  %mixer_merge_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 19
  %6 = ptrtoint ptr %mixer_merge_nid to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 33, ptr %mixer_merge_nid, align 8
  %beep_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 67
  %7 = ptrtoint ptr %beep_nid to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 16, ptr %beep_nid, align 2
  %beep_amp = getelementptr inbounds %struct.ad198x_spec, ptr %4, i32 0, i32 4
  %8 = ptrtoint ptr %beep_amp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 327696, ptr %beep_amp, align 8
  tail call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef null, ptr noundef nonnull @ad1884_fixup_tbl, ptr noundef nonnull @ad1884_fixups) #7
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 0) #7
  %9 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spec1.i, align 8
  %autocfg.i = getelementptr inbounds %struct.hda_gen_spec, ptr %10, i32 0, i32 33
  %spdif_status_reset.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %11 = ptrtoint ptr %spdif_status_reset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load.i = load i32, ptr %spdif_status_reset.i, align 4
  %bf.set7.i = or i32 %bf.load.i, 155189248
  store i32 %bf.set7.i, ptr %spdif_status_reset.i, align 4
  %indep_hp9.i = getelementptr inbounds %struct.hda_gen_spec, ptr %10, i32 0, i32 58
  %12 = ptrtoint ptr %indep_hp9.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %bf.load10.i = load i64, ptr %indep_hp9.i, align 4
  %bf.set12.i = or i64 %bf.load10.i, 34359738368
  %13 = and i64 %bf.load10.i, 12884901888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool16.not.i = icmp eq i64 %13, 0
  %bf.clear20.i = and i64 %bf.set12.i, -12884901889
  %bf.set21.i = or i64 %bf.clear20.i, 8589934592
  %storemerge.i = select i1 %tobool16.not.i, i64 %bf.set21.i, i64 %bf.set12.i
  %14 = ptrtoint ptr %indep_hp9.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %storemerge.i, ptr %indep_hp9.i, align 4
  %call.i = tail call i32 @snd_hda_parse_pin_defcfg(ptr noundef %codec, ptr noundef %autocfg.i, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.error_crit_edge, label %ad198x_parse_auto_config.exit

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

ad198x_parse_auto_config.exit:                    ; preds = %if.end
  %call25.i = tail call i32 @snd_hda_gen_parse_auto_config(ptr noundef %codec, ptr noundef %autocfg.i) #7
  %15 = tail call i32 @llvm.smin.i32(i32 %call25.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp5 = icmp slt i32 %call25.i, 0
  br i1 %cmp5, label %ad198x_parse_auto_config.exit.error_crit_edge, label %if.end7

ad198x_parse_auto_config.exit.error_crit_edge:    ; preds = %ad198x_parse_auto_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end7:                                          ; preds = %ad198x_parse_auto_config.exit
  %16 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spec1.i, align 8
  %dig_out_nid.i = getelementptr inbounds %struct.hda_gen_spec, ptr %17, i32 0, i32 11, i32 5
  %18 = ptrtoint ptr %dig_out_nid.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %dig_out_nid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i30 = icmp eq i16 %19, 0
  br i1 %tobool.not.i30, label %if.end7.if.end11_crit_edge, label %if.end.i31

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end.i31:                                       ; preds = %if.end7
  %call.i.i = tail call i32 @snd_hda_get_connections(ptr noundef %codec, i16 noundef zeroext %19, ptr noundef null, i32 noundef 0) #7
  %20 = and i32 %call.i.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %switch.i = icmp eq i32 %20, 2
  br i1 %switch.i, label %if.end4.i, label %if.end.i31.if.end11_crit_edge

if.end.i31.if.end11_crit_edge:                    ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end4.i:                                        ; preds = %if.end.i31
  %num_smux_conns.i = getelementptr inbounds %struct.ad198x_spec, ptr %17, i32 0, i32 5
  %21 = ptrtoint ptr %num_smux_conns.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call.i.i, ptr %num_smux_conns.i, align 4
  %call6.i = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %17, ptr noundef null, ptr noundef nonnull @ad1983_auto_smux_mixer) #7
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end4.i.error_crit_edge, label %if.end4.i.if.end11_crit_edge

if.end4.i.if.end11_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end4.i.error_crit_edge:                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end11:                                         ; preds = %if.end4.i.if.end11_crit_edge, %if.end.i31.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 1) #7
  br label %cleanup

error:                                            ; preds = %if.end4.i.error_crit_edge, %ad198x_parse_auto_config.exit.error_crit_edge, %if.end.error_crit_edge
  %err.0 = phi i32 [ %15, %ad198x_parse_auto_config.exit.error_crit_edge ], [ -12, %if.end4.i.error_crit_edge ], [ %call.i, %if.end.error_crit_edge ]
  tail call void @snd_hda_gen_free(ptr noundef %codec) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %if.end11 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_ad1882(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5736) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec1.i, align 8
  %call2.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #7
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %2 = call ptr @memcpy(ptr %patch_ops.i, ptr @ad198x_auto_patch_ops, i32 40)
  %3 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spec1.i, align 8
  %mixer_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %mixer_nid to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 32, ptr %mixer_nid, align 2
  %mixer_merge_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 19
  %6 = ptrtoint ptr %mixer_merge_nid to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 33, ptr %mixer_merge_nid, align 8
  %beep_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 67
  %7 = ptrtoint ptr %beep_nid to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 16, ptr %beep_nid, align 2
  %beep_amp = getelementptr inbounds %struct.ad198x_spec, ptr %4, i32 0, i32 4
  %8 = ptrtoint ptr %beep_amp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 327696, ptr %beep_amp, align 8
  %9 = load ptr, ptr %spec1.i, align 8
  %autocfg.i = getelementptr inbounds %struct.hda_gen_spec, ptr %9, i32 0, i32 33
  %spdif_status_reset.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %10 = ptrtoint ptr %spdif_status_reset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i = load i32, ptr %spdif_status_reset.i, align 4
  %bf.set7.i = or i32 %bf.load.i, 155189248
  store i32 %bf.set7.i, ptr %spdif_status_reset.i, align 4
  %indep_hp9.i = getelementptr inbounds %struct.hda_gen_spec, ptr %9, i32 0, i32 58
  %11 = ptrtoint ptr %indep_hp9.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %bf.load10.i = load i64, ptr %indep_hp9.i, align 4
  %bf.set12.i = or i64 %bf.load10.i, 34359738368
  %12 = and i64 %bf.load10.i, 12884901888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool16.not.i = icmp eq i64 %12, 0
  %bf.clear20.i = and i64 %bf.set12.i, -12884901889
  %bf.set21.i = or i64 %bf.clear20.i, 8589934592
  %storemerge.i = select i1 %tobool16.not.i, i64 %bf.set21.i, i64 %bf.set12.i
  %13 = ptrtoint ptr %indep_hp9.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %storemerge.i, ptr %indep_hp9.i, align 4
  %call.i = tail call i32 @snd_hda_parse_pin_defcfg(ptr noundef %codec, ptr noundef %autocfg.i, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.error_crit_edge, label %ad198x_parse_auto_config.exit

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

ad198x_parse_auto_config.exit:                    ; preds = %if.end
  %call25.i = tail call i32 @snd_hda_gen_parse_auto_config(ptr noundef %codec, ptr noundef %autocfg.i) #7
  %14 = tail call i32 @llvm.smin.i32(i32 %call25.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp5 = icmp slt i32 %call25.i, 0
  br i1 %cmp5, label %ad198x_parse_auto_config.exit.error_crit_edge, label %if.end7

ad198x_parse_auto_config.exit.error_crit_edge:    ; preds = %ad198x_parse_auto_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end7:                                          ; preds = %ad198x_parse_auto_config.exit
  %call8 = tail call fastcc i32 @ad1988_add_spdif_mux_ctl(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.error_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.error_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

error:                                            ; preds = %if.end7.error_crit_edge, %ad198x_parse_auto_config.exit.error_crit_edge, %if.end.error_crit_edge
  %err.0 = phi i32 [ %14, %ad198x_parse_auto_config.exit.error_crit_edge ], [ %call8, %if.end7.error_crit_edge ], [ %call.i, %if.end.error_crit_edge ]
  tail call void @snd_hda_gen_free(ptr noundef %codec) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %if.end7.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_ad1981(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5736) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec1.i, align 8
  %call2.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #7
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %2 = call ptr @memcpy(ptr %patch_ops.i, ptr @ad198x_auto_patch_ops, i32 40)
  %3 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spec1.i, align 8
  %mixer_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %mixer_nid to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 14, ptr %mixer_nid, align 2
  %beep_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 67
  %6 = ptrtoint ptr %beep_nid to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 16, ptr %beep_nid, align 2
  %beep_amp = getelementptr inbounds %struct.ad198x_spec, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %beep_amp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 327693, ptr %beep_amp, align 8
  tail call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef null, ptr noundef nonnull @ad1981_fixup_tbl, ptr noundef nonnull @ad1981_fixups) #7
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 0) #7
  %8 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spec1.i, align 8
  %autocfg.i = getelementptr inbounds %struct.hda_gen_spec, ptr %9, i32 0, i32 33
  %spdif_status_reset.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %10 = ptrtoint ptr %spdif_status_reset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i = load i32, ptr %spdif_status_reset.i, align 4
  %bf.set7.i = or i32 %bf.load.i, 155189248
  store i32 %bf.set7.i, ptr %spdif_status_reset.i, align 4
  %indep_hp9.i = getelementptr inbounds %struct.hda_gen_spec, ptr %9, i32 0, i32 58
  %11 = ptrtoint ptr %indep_hp9.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %bf.load10.i = load i64, ptr %indep_hp9.i, align 4
  %bf.clear11.i = and i64 %bf.load10.i, -34359738369
  %12 = and i64 %bf.load10.i, 12884901888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool16.not.i = icmp eq i64 %12, 0
  %bf.clear20.i = and i64 %bf.load10.i, -47244640257
  %bf.set21.i = or i64 %bf.clear20.i, 8589934592
  %storemerge.i = select i1 %tobool16.not.i, i64 %bf.set21.i, i64 %bf.clear11.i
  %13 = ptrtoint ptr %indep_hp9.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %storemerge.i, ptr %indep_hp9.i, align 4
  %call.i = tail call i32 @snd_hda_parse_pin_defcfg(ptr noundef %codec, ptr noundef %autocfg.i, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.error_crit_edge, label %ad198x_parse_auto_config.exit

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

ad198x_parse_auto_config.exit:                    ; preds = %if.end
  %call25.i = tail call i32 @snd_hda_gen_parse_auto_config(ptr noundef %codec, ptr noundef %autocfg.i) #7
  %14 = tail call i32 @llvm.smin.i32(i32 %call25.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp4 = icmp slt i32 %call25.i, 0
  br i1 %cmp4, label %ad198x_parse_auto_config.exit.error_crit_edge, label %if.end6

ad198x_parse_auto_config.exit.error_crit_edge:    ; preds = %ad198x_parse_auto_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end6:                                          ; preds = %ad198x_parse_auto_config.exit
  %15 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spec1.i, align 8
  %dig_out_nid.i = getelementptr inbounds %struct.hda_gen_spec, ptr %16, i32 0, i32 11, i32 5
  %17 = ptrtoint ptr %dig_out_nid.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dig_out_nid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i27 = icmp eq i16 %18, 0
  br i1 %tobool.not.i27, label %if.end6.if.end10_crit_edge, label %if.end.i28

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end.i28:                                       ; preds = %if.end6
  %call.i.i = tail call i32 @snd_hda_get_connections(ptr noundef %codec, i16 noundef zeroext %18, ptr noundef null, i32 noundef 0) #7
  %19 = and i32 %call.i.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %switch.i = icmp eq i32 %19, 2
  br i1 %switch.i, label %if.end4.i, label %if.end.i28.if.end10_crit_edge

if.end.i28.if.end10_crit_edge:                    ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end4.i:                                        ; preds = %if.end.i28
  %num_smux_conns.i = getelementptr inbounds %struct.ad198x_spec, ptr %16, i32 0, i32 5
  %20 = ptrtoint ptr %num_smux_conns.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call.i.i, ptr %num_smux_conns.i, align 4
  %call6.i = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %16, ptr noundef null, ptr noundef nonnull @ad1983_auto_smux_mixer) #7
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end4.i.error_crit_edge, label %if.end4.i.if.end10_crit_edge

if.end4.i.if.end10_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end4.i.error_crit_edge:                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end10:                                         ; preds = %if.end4.i.if.end10_crit_edge, %if.end.i28.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 1) #7
  br label %cleanup

error:                                            ; preds = %if.end4.i.error_crit_edge, %ad198x_parse_auto_config.exit.error_crit_edge, %if.end.error_crit_edge
  %err.0 = phi i32 [ %14, %ad198x_parse_auto_config.exit.error_crit_edge ], [ -12, %if.end4.i.error_crit_edge ], [ %call.i, %if.end.error_crit_edge ]
  tail call void @snd_hda_gen_free(ptr noundef %codec) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %if.end10 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_ad1983(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5736) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec1.i, align 8
  %call2.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #7
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %2 = call ptr @memcpy(ptr %patch_ops.i, ptr @ad198x_auto_patch_ops, i32 40)
  %3 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spec1.i, align 8
  %mixer_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %mixer_nid to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 14, ptr %mixer_nid, align 2
  %beep_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 67
  %6 = ptrtoint ptr %beep_nid to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 16, ptr %beep_nid, align 2
  %beep_amp = getelementptr inbounds %struct.ad198x_spec, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %beep_amp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 327696, ptr %beep_amp, align 8
  %call3 = tail call i32 @snd_hda_override_conn_list(ptr noundef %codec, i16 noundef zeroext 12, i32 noundef 1, ptr noundef nonnull @patch_ad1983.conn_0c) #7
  %call4 = tail call i32 @snd_hda_override_conn_list(ptr noundef %codec, i16 noundef zeroext 13, i32 noundef 1, ptr noundef nonnull @patch_ad1983.conn_0d) #7
  %8 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spec1.i, align 8
  %autocfg.i = getelementptr inbounds %struct.hda_gen_spec, ptr %9, i32 0, i32 33
  %spdif_status_reset.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %10 = ptrtoint ptr %spdif_status_reset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i = load i32, ptr %spdif_status_reset.i, align 4
  %bf.set7.i = or i32 %bf.load.i, 155189248
  store i32 %bf.set7.i, ptr %spdif_status_reset.i, align 4
  %indep_hp9.i = getelementptr inbounds %struct.hda_gen_spec, ptr %9, i32 0, i32 58
  %11 = ptrtoint ptr %indep_hp9.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %bf.load10.i = load i64, ptr %indep_hp9.i, align 4
  %bf.clear11.i = and i64 %bf.load10.i, -34359738369
  %12 = and i64 %bf.load10.i, 12884901888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool16.not.i = icmp eq i64 %12, 0
  %bf.clear20.i = and i64 %bf.load10.i, -47244640257
  %bf.set21.i = or i64 %bf.clear20.i, 8589934592
  %storemerge.i = select i1 %tobool16.not.i, i64 %bf.set21.i, i64 %bf.clear11.i
  %13 = ptrtoint ptr %indep_hp9.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %storemerge.i, ptr %indep_hp9.i, align 4
  %call.i = tail call i32 @snd_hda_parse_pin_defcfg(ptr noundef %codec, ptr noundef %autocfg.i, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.error_crit_edge, label %ad198x_parse_auto_config.exit

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

ad198x_parse_auto_config.exit:                    ; preds = %if.end
  %call25.i = tail call i32 @snd_hda_gen_parse_auto_config(ptr noundef %codec, ptr noundef %autocfg.i) #7
  %14 = tail call i32 @llvm.smin.i32(i32 %call25.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp6 = icmp slt i32 %call25.i, 0
  br i1 %cmp6, label %ad198x_parse_auto_config.exit.error_crit_edge, label %if.end8

ad198x_parse_auto_config.exit.error_crit_edge:    ; preds = %ad198x_parse_auto_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end8:                                          ; preds = %ad198x_parse_auto_config.exit
  %15 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spec1.i, align 8
  %dig_out_nid.i = getelementptr inbounds %struct.hda_gen_spec, ptr %16, i32 0, i32 11, i32 5
  %17 = ptrtoint ptr %dig_out_nid.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dig_out_nid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i29 = icmp eq i16 %18, 0
  br i1 %tobool.not.i29, label %if.end8.cleanup_crit_edge, label %if.end.i30

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i30:                                       ; preds = %if.end8
  %call.i.i = tail call i32 @snd_hda_get_connections(ptr noundef %codec, i16 noundef zeroext %18, ptr noundef null, i32 noundef 0) #7
  %19 = and i32 %call.i.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %switch.i = icmp eq i32 %19, 2
  br i1 %switch.i, label %if.end4.i, label %if.end.i30.cleanup_crit_edge

if.end.i30.cleanup_crit_edge:                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i30
  %num_smux_conns.i = getelementptr inbounds %struct.ad198x_spec, ptr %16, i32 0, i32 5
  %20 = ptrtoint ptr %num_smux_conns.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call.i.i, ptr %num_smux_conns.i, align 4
  %call6.i = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %16, ptr noundef null, ptr noundef nonnull @ad1983_auto_smux_mixer) #7
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end4.i.error_crit_edge, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i.error_crit_edge:                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

error:                                            ; preds = %if.end4.i.error_crit_edge, %ad198x_parse_auto_config.exit.error_crit_edge, %if.end.error_crit_edge
  %err.0 = phi i32 [ %14, %ad198x_parse_auto_config.exit.error_crit_edge ], [ -12, %if.end4.i.error_crit_edge ], [ %call.i, %if.end.error_crit_edge ]
  tail call void @snd_hda_gen_free(ptr noundef %codec) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end4.i.cleanup_crit_edge, %if.end.i30.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %if.end.i30.cleanup_crit_edge ], [ 0, %if.end4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_ad1986a(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5736) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec1.i, align 8
  %call2.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #7
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %2 = call ptr @memcpy(ptr %patch_ops.i, ptr @ad198x_auto_patch_ops, i32 40)
  %3 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spec1.i, align 8
  %inv_eapd = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %5 = ptrtoint ptr %inv_eapd to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %inv_eapd, align 4
  %bf.set = or i32 %bf.load, 1048576
  store i32 %bf.set, ptr %inv_eapd, align 4
  %mixer_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 18
  %6 = ptrtoint ptr %mixer_nid to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 7, ptr %mixer_nid, align 2
  %beep_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 67
  %7 = ptrtoint ptr %beep_nid to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 25, ptr %beep_nid, align 2
  %beep_amp = getelementptr inbounds %struct.ad198x_spec, ptr %4, i32 0, i32 4
  %8 = ptrtoint ptr %beep_amp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 327704, ptr %beep_amp, align 8
  %no_share_stream = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 11, i32 9
  %9 = ptrtoint ptr %no_share_stream to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %no_share_stream, align 4
  %preferred_dacs = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 64
  %10 = ptrtoint ptr %preferred_dacs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @patch_ad1986a.preferred_pairs, ptr %preferred_dacs, align 8
  %auto_mute_via_amp = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 58
  %11 = ptrtoint ptr %auto_mute_via_amp to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %bf.load6 = load i64, ptr %auto_mute_via_amp, align 4
  %bf.set8 = or i64 %bf.load6, 562949953421312
  store i64 %bf.set8, ptr %auto_mute_via_amp, align 4
  tail call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef nonnull @ad1986a_fixup_models, ptr noundef nonnull @ad1986a_fixup_tbl, ptr noundef nonnull @ad1986a_fixups) #7
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 0) #7
  %12 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spec1.i, align 8
  %autocfg.i = getelementptr inbounds %struct.hda_gen_spec, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %inv_eapd to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load.i = load i32, ptr %inv_eapd, align 4
  %bf.set7.i = or i32 %bf.load.i, 155189248
  store i32 %bf.set7.i, ptr %inv_eapd, align 4
  %indep_hp9.i = getelementptr inbounds %struct.hda_gen_spec, ptr %13, i32 0, i32 58
  %15 = ptrtoint ptr %indep_hp9.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %bf.load10.i = load i64, ptr %indep_hp9.i, align 4
  %bf.clear11.i = and i64 %bf.load10.i, -34359738369
  %16 = and i64 %bf.load10.i, 12884901888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool16.not.i = icmp eq i64 %16, 0
  %bf.clear20.i = and i64 %bf.load10.i, -47244640257
  %bf.set21.i = or i64 %bf.clear20.i, 8589934592
  %storemerge.i = select i1 %tobool16.not.i, i64 %bf.set21.i, i64 %bf.clear11.i
  %17 = ptrtoint ptr %indep_hp9.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %storemerge.i, ptr %indep_hp9.i, align 4
  %call.i = tail call i32 @snd_hda_parse_pin_defcfg(ptr noundef %codec, ptr noundef %autocfg.i, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.if.then11_crit_edge, label %ad198x_parse_auto_config.exit

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

ad198x_parse_auto_config.exit:                    ; preds = %if.end
  %call25.i = tail call i32 @snd_hda_gen_parse_auto_config(ptr noundef %codec, ptr noundef %autocfg.i) #7
  %18 = tail call i32 @llvm.smin.i32(i32 %call25.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp10 = icmp slt i32 %call25.i, 0
  br i1 %cmp10, label %ad198x_parse_auto_config.exit.if.then11_crit_edge, label %if.end12

ad198x_parse_auto_config.exit.if.then11_crit_edge: ; preds = %ad198x_parse_auto_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

if.then11:                                        ; preds = %ad198x_parse_auto_config.exit.if.then11_crit_edge, %if.end.if.then11_crit_edge
  %retval.0.i3035 = phi i32 [ %18, %ad198x_parse_auto_config.exit.if.then11_crit_edge ], [ %call.i, %if.end.if.then11_crit_edge ]
  tail call void @snd_hda_gen_free(ptr noundef %codec) #7
  br label %cleanup

if.end12:                                         ; preds = %ad198x_parse_auto_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i3035, %if.then11 ], [ 0, %if.end12 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_ad1988(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5736) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec1.i, align 8
  %call2.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #7
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %2 = call ptr @memcpy(ptr %patch_ops.i, ptr @ad198x_auto_patch_ops, i32 40)
  %3 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spec1.i, align 8
  %mixer_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %mixer_nid to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 32, ptr %mixer_nid, align 2
  %mixer_merge_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 19
  %6 = ptrtoint ptr %mixer_merge_nid to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 33, ptr %mixer_merge_nid, align 8
  %beep_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %4, i32 0, i32 67
  %7 = ptrtoint ptr %beep_nid to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 16, ptr %beep_nid, align 2
  %beep_amp = getelementptr inbounds %struct.ad198x_spec, ptr %4, i32 0, i32 4
  %8 = ptrtoint ptr %beep_amp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 327696, ptr %beep_amp, align 8
  tail call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef nonnull @ad1988_fixup_models, ptr noundef null, ptr noundef nonnull @ad1988_fixups) #7
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 0) #7
  %9 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spec1.i, align 8
  %autocfg.i = getelementptr inbounds %struct.hda_gen_spec, ptr %10, i32 0, i32 33
  %spdif_status_reset.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %11 = ptrtoint ptr %spdif_status_reset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load.i = load i32, ptr %spdif_status_reset.i, align 4
  %bf.set7.i = or i32 %bf.load.i, 155189248
  store i32 %bf.set7.i, ptr %spdif_status_reset.i, align 4
  %indep_hp9.i = getelementptr inbounds %struct.hda_gen_spec, ptr %10, i32 0, i32 58
  %12 = ptrtoint ptr %indep_hp9.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %bf.load10.i = load i64, ptr %indep_hp9.i, align 4
  %bf.set12.i = or i64 %bf.load10.i, 34359738368
  %13 = and i64 %bf.load10.i, 12884901888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool16.not.i = icmp eq i64 %13, 0
  %bf.clear20.i = and i64 %bf.set12.i, -12884901889
  %bf.set21.i = or i64 %bf.clear20.i, 8589934592
  %storemerge.i = select i1 %tobool16.not.i, i64 %bf.set21.i, i64 %bf.set12.i
  %14 = ptrtoint ptr %indep_hp9.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %storemerge.i, ptr %indep_hp9.i, align 4
  %call.i = tail call i32 @snd_hda_parse_pin_defcfg(ptr noundef %codec, ptr noundef %autocfg.i, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.error_crit_edge, label %ad198x_parse_auto_config.exit

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

ad198x_parse_auto_config.exit:                    ; preds = %if.end
  %call25.i = tail call i32 @snd_hda_gen_parse_auto_config(ptr noundef %codec, ptr noundef %autocfg.i) #7
  %15 = tail call i32 @llvm.smin.i32(i32 %call25.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp5 = icmp slt i32 %call25.i, 0
  br i1 %cmp5, label %ad198x_parse_auto_config.exit.error_crit_edge, label %if.end7

ad198x_parse_auto_config.exit.error_crit_edge:    ; preds = %ad198x_parse_auto_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end7:                                          ; preds = %ad198x_parse_auto_config.exit
  %call8 = tail call fastcc i32 @ad1988_add_spdif_mux_ctl(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.error_crit_edge, label %if.end11

if.end7.error_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 1) #7
  br label %cleanup

error:                                            ; preds = %if.end7.error_crit_edge, %ad198x_parse_auto_config.exit.error_crit_edge, %if.end.error_crit_edge
  %err.0 = phi i32 [ %15, %ad198x_parse_auto_config.exit.error_crit_edge ], [ %call8, %if.end7.error_crit_edge ], [ %call.i, %if.end.error_crit_edge ]
  tail call void @snd_hda_gen_free(ptr noundef %codec) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %if.end11 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_pick_fixup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_apply_fixup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_gen_free(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_spec_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad198x_auto_build_controls(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_hda_gen_build_controls(ptr noundef %codec) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1.i, align 8
  %beep_amp.i = getelementptr inbounds %struct.ad198x_spec, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %beep_amp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %beep_amp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %for.body.preheader.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end
  %call.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @ad_beep_mixer, ptr noundef %codec) #7
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %for.body.preheader.i.create_beep_ctls.exit.thread_crit_edge, label %cleanup.i

for.body.preheader.i.create_beep_ctls.exit.thread_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_beep_ctls.exit.thread

for.cond.i:                                       ; preds = %cleanup.i
  %call.1.i = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @ad_beep_mixer, i32 0, i32 1), ptr noundef %codec) #7
  %tobool3.not.1.i = icmp eq ptr %call.1.i, null
  br i1 %tobool3.not.1.i, label %for.cond.i.create_beep_ctls.exit.thread_crit_edge, label %create_beep_ctls.exit

for.cond.i.create_beep_ctls.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_beep_ctls.exit.thread

cleanup.i:                                        ; preds = %for.body.preheader.i
  %4 = ptrtoint ptr %beep_amp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %beep_amp.i, align 8
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %private_value.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %private_value.i, align 4
  %call7.i = tail call i32 @snd_hda_ctl_add(ptr noundef %codec, i16 noundef zeroext 0, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp slt i32 %call7.i, 0
  br i1 %cmp.i, label %cleanup.i.create_beep_ctls.exit.thread_crit_edge, label %for.cond.i

cleanup.i.create_beep_ctls.exit.thread_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_beep_ctls.exit.thread

create_beep_ctls.exit:                            ; preds = %for.cond.i
  %7 = ptrtoint ptr %beep_amp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %beep_amp.i, align 8
  %private_value.1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.1.i, i32 0, i32 7
  %9 = ptrtoint ptr %private_value.1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %private_value.1.i, align 4
  %call7.1.i = tail call i32 @snd_hda_ctl_add(ptr noundef %codec, i16 noundef zeroext 0, ptr noundef nonnull %call.1.i) #7
  %10 = tail call i32 @llvm.smin.i32(i32 %call7.1.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1.i)
  %cmp2 = icmp slt i32 %call7.1.i, 0
  br i1 %cmp2, label %create_beep_ctls.exit.create_beep_ctls.exit.thread_crit_edge, label %create_beep_ctls.exit.cleanup_crit_edge

create_beep_ctls.exit.cleanup_crit_edge:          ; preds = %create_beep_ctls.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

create_beep_ctls.exit.create_beep_ctls.exit.thread_crit_edge: ; preds = %create_beep_ctls.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_beep_ctls.exit.thread

create_beep_ctls.exit.thread:                     ; preds = %create_beep_ctls.exit.create_beep_ctls.exit.thread_crit_edge, %cleanup.i.create_beep_ctls.exit.thread_crit_edge, %for.cond.i.create_beep_ctls.exit.thread_crit_edge, %for.body.preheader.i.create_beep_ctls.exit.thread_crit_edge
  %retval.2.i11 = phi i32 [ %10, %create_beep_ctls.exit.create_beep_ctls.exit.thread_crit_edge ], [ -12, %for.cond.i.create_beep_ctls.exit.thread_crit_edge ], [ -12, %for.body.preheader.i.create_beep_ctls.exit.thread_crit_edge ], [ %call7.i, %cleanup.i.create_beep_ctls.exit.thread_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %create_beep_ctls.exit.thread, %create_beep_ctls.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.2.i11, %create_beep_ctls.exit.thread ], [ 0, %create_beep_ctls.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_build_pcms(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_jack_unsol_event(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad198x_suspend(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @snd_hda_shutup_pins(ptr noundef %codec) #7
  %vendor_id.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 7
  %0 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vendor_id.i, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.ad198x_power_eapd.exit_crit_edge [
    i32 299112578, label %entry.sw.bb.i_crit_edge
    i32 299141162, label %entry.sw.bb.i_crit_edge2
    i32 299112580, label %entry.sw.bb.i_crit_edge3
    i32 299112836, label %entry.sw.bb.i_crit_edge4
    i32 299112579, label %entry.sw.bb.i_crit_edge5
    i32 299112522, label %entry.sw.bb.i_crit_edge6
    i32 299112778, label %entry.sw.bb.i_crit_edge7
    i32 299112779, label %entry.sw.bb.i_crit_edge8
    i32 299112840, label %entry.sw.bb.i_crit_edge9
    i32 299112843, label %entry.sw.bb.i_crit_edge10
    i32 299145370, label %entry.sw.bb.i_crit_edge11
    i32 299145371, label %entry.sw.bb.i_crit_edge12
    i32 299112833, label %entry.sw.bb1.i_crit_edge
    i32 299112835, label %entry.sw.bb1.i_crit_edge13
    i32 299112838, label %sw.bb2.i
  ]

entry.sw.bb1.i_crit_edge13:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

entry.sw.bb.i_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

entry.sw.bb.i_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

entry.sw.bb.i_crit_edge10:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

entry.sw.bb.i_crit_edge9:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

entry.sw.bb.i_crit_edge8:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

entry.sw.bb.i_crit_edge7:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

entry.sw.bb.i_crit_edge6:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

entry.sw.bb.i_crit_edge5:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

entry.sw.bb.i_crit_edge4:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

entry.sw.bb.i_crit_edge3:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

entry.sw.bb.i_crit_edge2:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

entry.ad198x_power_eapd.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad198x_power_eapd.exit

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge2, %entry.sw.bb.i_crit_edge3, %entry.sw.bb.i_crit_edge4, %entry.sw.bb.i_crit_edge5, %entry.sw.bb.i_crit_edge6, %entry.sw.bb.i_crit_edge7, %entry.sw.bb.i_crit_edge8, %entry.sw.bb.i_crit_edge9, %entry.sw.bb.i_crit_edge10, %entry.sw.bb.i_crit_edge11, %entry.sw.bb.i_crit_edge12
  tail call fastcc void @ad198x_power_eapd_write(ptr noundef %codec, i16 noundef zeroext 18, i16 noundef zeroext 17) #7
  br label %ad198x_power_eapd.exit

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge13
  tail call fastcc void @ad198x_power_eapd_write(ptr noundef %codec, i16 noundef zeroext 5, i16 noundef zeroext 6) #7
  br label %ad198x_power_eapd.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ad198x_power_eapd_write(ptr noundef %codec, i16 noundef zeroext 27, i16 noundef zeroext 26) #7
  br label %ad198x_power_eapd.exit

ad198x_power_eapd.exit:                           ; preds = %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %entry.ad198x_power_eapd.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_check_power_status(ptr noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_build_controls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_ctl_add(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_volume_info(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_volume_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_volume_put(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_tlv(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_switch_info(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_switch_get_beep(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_switch_put_beep(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_shutup_pins(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad198x_power_eapd_write(ptr noundef %codec, i16 noundef zeroext %front, i16 noundef zeroext %hp) unnamed_addr #2 align 64 {
entry:
  %val.i.i23 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %0 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i.i, align 4, !annotation !162
  %call.i.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %front, i32 noundef 12, ptr noundef nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %snd_hda_query_pin_caps.exit.thread, label %snd_hda_query_pin_caps.exit

snd_hda_query_pin_caps.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  br label %if.then

snd_hda_query_pin_caps.exit:                      ; preds = %entry
  %1 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %and = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %snd_hda_query_pin_caps.exit.if.end_crit_edge, label %snd_hda_query_pin_caps.exit.if.then_crit_edge

snd_hda_query_pin_caps.exit.if.then_crit_edge:    ; preds = %snd_hda_query_pin_caps.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

snd_hda_query_pin_caps.exit.if.end_crit_edge:     ; preds = %snd_hda_query_pin_caps.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %snd_hda_query_pin_caps.exit.if.then_crit_edge, %snd_hda_query_pin_caps.exit.thread
  %inv_eapd = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %3 = ptrtoint ptr %inv_eapd to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %inv_eapd, align 4
  %4 = lshr i32 %bf.load, 19
  %5 = and i32 %4, 2
  %call.i = call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %front, i32 noundef 0, i32 noundef 1804, i32 noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %snd_hda_query_pin_caps.exit.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i23) #7
  %6 = ptrtoint ptr %val.i.i23 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i.i23, align 4, !annotation !162
  %call.i.i24 = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %hp, i32 noundef 12, ptr noundef nonnull %val.i.i23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %cmp.i.i25 = icmp slt i32 %call.i.i24, 0
  br i1 %cmp.i.i25, label %snd_hda_query_pin_caps.exit28.thread, label %snd_hda_query_pin_caps.exit28

snd_hda_query_pin_caps.exit28.thread:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i23) #7
  br label %if.then6

snd_hda_query_pin_caps.exit28:                    ; preds = %if.end
  %7 = ptrtoint ptr %val.i.i23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i.i23, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i23) #7
  %and4 = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %snd_hda_query_pin_caps.exit28.if.end15_crit_edge, label %snd_hda_query_pin_caps.exit28.if.then6_crit_edge

snd_hda_query_pin_caps.exit28.if.then6_crit_edge: ; preds = %snd_hda_query_pin_caps.exit28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

snd_hda_query_pin_caps.exit28.if.end15_crit_edge: ; preds = %snd_hda_query_pin_caps.exit28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then6:                                         ; preds = %snd_hda_query_pin_caps.exit28.if.then6_crit_edge, %snd_hda_query_pin_caps.exit28.thread
  %inv_eapd7 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %9 = ptrtoint ptr %inv_eapd7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load8 = load i32, ptr %inv_eapd7, align 4
  %10 = lshr i32 %bf.load8, 19
  %11 = and i32 %10, 2
  %call.i29 = call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %hp, i32 noundef 0, i32 noundef 1804, i32 noundef %11) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then6, %snd_hda_query_pin_caps.exit28.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_hdac_read_parm(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_write(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad1884_fixup_amp_override(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp = icmp eq i32 %action, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 32, i32 noundef 0, i32 noundef -2147150057) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad1884_fixup_hp_eapd(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %2 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %action, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hook = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 71, i32 1
  %3 = ptrtoint ptr %hook to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ad1884_vmaster_hp_gpio_hook, ptr %hook, align 4
  %own_eapd_ctl = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 58
  %4 = ptrtoint ptr %own_eapd_ctl to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %bf.load = load i64, ptr %own_eapd_ctl, align 4
  %bf.set = or i64 %bf.load, 549755813888
  store i64 %bf.set, ptr %own_eapd_ctl, align 4
  %call.i.i = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %codec, i32 noundef 2037248, i32 noundef 2) #7
  %call.i.i22 = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %codec, i32 noundef 2037504, i32 noundef 2) #7
  %call.i.i23 = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %codec, i32 noundef 2036992, i32 noundef 2) #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %line_out_type = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 33, i32 5
  %5 = ptrtoint ptr %line_out_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %line_out_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %line_out_pins = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 33, i32 1
  %7 = ptrtoint ptr %line_out_pins to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %line_out_pins, align 4
  %eapd_nid = getelementptr inbounds %struct.ad198x_spec, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %eapd_nid to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %eapd_nid, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %speaker_pins = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 33, i32 3
  %10 = ptrtoint ptr %speaker_pins to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %speaker_pins, align 4
  %eapd_nid12 = getelementptr inbounds %struct.ad198x_spec, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %eapd_nid12 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %eapd_nid12, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ad1884_fixup_thinkpad(ptr nocapture noundef readonly %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp = icmp eq i32 %action, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %keep_eapd_on = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %keep_eapd_on to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %bf.load = load i64, ptr %keep_eapd_on, align 4
  %bf.set = or i64 %bf.load, 274877906944
  store i64 %bf.set, ptr %keep_eapd_on, align 4
  %hook = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 71, i32 1
  %3 = ptrtoint ptr %hook to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ad_vmaster_eapd_hook, ptr %hook, align 4
  %eapd_nid = getelementptr inbounds %struct.ad198x_spec, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %eapd_nid to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 18, ptr %eapd_nid, align 4
  %beep_amp = getelementptr inbounds %struct.ad198x_spec, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %beep_amp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1769504, ptr %beep_amp, align 8
  %beep_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 67
  %6 = ptrtoint ptr %beep_nid to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %beep_nid, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_override_amp_caps(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad1884_vmaster_hp_gpio_hook(ptr noundef %private_data, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %private_data, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %eapd_nid = getelementptr inbounds %struct.ad198x_spec, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %eapd_nid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %eapd_nid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %ad_vmaster_eapd_hook.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

ad_vmaster_eapd_hook.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %inv_eapd.i = getelementptr inbounds %struct.hda_codec, ptr %private_data, i32 0, i32 31
  %4 = ptrtoint ptr %inv_eapd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %inv_eapd.i, align 4
  %5 = and i32 %bf.load.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not.i = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool4.not.i = icmp eq i32 %enabled, 0
  %lnot.ext.i = zext i1 %tobool4.not.i to i32
  %enabled.addr.0.i = select i1 %tobool2.not.i, i32 %enabled, i32 %lnot.ext.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled.addr.0.i)
  %tobool7.not.i = icmp eq i32 %enabled.addr.0.i, 0
  %cond.i = select i1 %tobool7.not.i, i32 0, i32 2
  %conv.i.i.i = zext i16 %3 to i32
  %shl1.i.i.i = shl i32 %conv.i.i.i, 20
  %or2.i.i.i = or i32 %shl1.i.i.i, 986112
  %call.i.i.i = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %private_data, i32 noundef %or2.i.i.i, i32 noundef %cond.i) #7
  br label %if.end

if.end:                                           ; preds = %ad_vmaster_eapd_hook.exit, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool2.not = icmp eq i32 %enabled, 0
  %cond = select i1 %tobool2.not, i32 2, i32 0
  %call.i.i = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %private_data, i32 noundef 2036992, i32 noundef %cond) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad_vmaster_eapd_hook(ptr noundef %private_data, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %private_data, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %eapd_nid = getelementptr inbounds %struct.ad198x_spec, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %eapd_nid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %eapd_nid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %inv_eapd = getelementptr inbounds %struct.hda_codec, ptr %private_data, i32 0, i32 31
  %4 = ptrtoint ptr %inv_eapd to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %inv_eapd, align 4
  %5 = and i32 %bf.load, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool4.not = icmp eq i32 %enabled, 0
  %lnot.ext = zext i1 %tobool4.not to i32
  %enabled.addr.0 = select i1 %tobool2.not, i32 %enabled, i32 %lnot.ext
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled.addr.0)
  %tobool7.not = icmp eq i32 %enabled.addr.0, 0
  %cond = select i1 %tobool7.not, i32 0, i32 2
  %conv.i.i = zext i16 %3 to i32
  %shl1.i.i = shl i32 %conv.i.i, 20
  %or2.i.i = or i32 %shl1.i.i, 986112
  %call.i.i = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %private_data, i32 noundef %or2.i.i, i32 noundef %cond) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_regmap_write_raw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_parse_pin_defcfg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_parse_auto_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_gen_add_kctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_connections(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad1983_auto_smux_enum_info(ptr noundef %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 8
  %num_smux_conns = getelementptr inbounds %struct.ad198x_spec, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %num_smux_conns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_smux_conns, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 2, label %if.then
    i32 3, label %if.then3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @snd_hda_enum_helper_info(ptr noundef %kcontrol, ptr noundef %uinfo, i32 noundef 2, ptr noundef nonnull @ad1983_auto_smux_enum_info.texts2) #7
  br label %cleanup

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @snd_hda_enum_helper_info(ptr noundef %kcontrol, ptr noundef %uinfo, i32 noundef 3, ptr noundef nonnull @ad1983_auto_smux_enum_info.texts3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ %call4, %if.then3 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad1983_auto_smux_enum_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 8
  %cur_smux = getelementptr inbounds %struct.ad198x_spec, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cur_smux to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_smux, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad1983_auto_smux_enum_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %dig_out_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 11, i32 5
  %6 = ptrtoint ptr %dig_out_nid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dig_out_nid, align 2
  %num_smux_conns = getelementptr inbounds %struct.ad198x_spec, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %num_smux_conns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_smux_conns, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp.not = icmp ult i32 %5, %9
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_smux = getelementptr inbounds %struct.ad198x_spec, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %cur_smux to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_smux, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %5)
  %cmp2 = icmp eq i32 %11, %5
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %cur_smux to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %cur_smux, align 8
  %conv.i.i = zext i16 %7 to i32
  %shl1.i.i = shl i32 %conv.i.i, 20
  %or2.i.i = or i32 %shl1.i.i, 983296
  %call.i.i = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %1, i32 noundef %or2.i.i, i32 noundef %5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_enum_helper_info(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad1988_add_spdif_mux_ctl(ptr noundef %codec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %dig_outs = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 33, i32 9
  %2 = ptrtoint ptr %dig_outs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dig_outs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup24_crit_edge, label %lor.lhs.false

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

lor.lhs.false:                                    ; preds = %entry
  %start_nid.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %4 = ptrtoint ptr %start_nid.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %start_nid.i, align 4
  %conv1.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 29, i16 %5)
  %cmp.i = icmp ugt i16 %5, 29
  br i1 %cmp.i, label %lor.lhs.false.cleanup24_crit_edge, label %lor.lhs.false.i

lor.lhs.false.cleanup24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

lor.lhs.false.i:                                  ; preds = %lor.lhs.false
  %num_nodes.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %6 = ptrtoint ptr %num_nodes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_nodes.i, align 8
  %add.i = add i32 %7, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %add.i)
  %cmp8.i = icmp ult i32 %add.i, 30
  br i1 %cmp8.i, label %lor.lhs.false.i.cleanup24_crit_edge, label %get_wcaps.exit

lor.lhs.false.i.cleanup24_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

get_wcaps.exit:                                   ; preds = %lor.lhs.false.i
  %wcaps.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %8 = ptrtoint ptr %wcaps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wcaps.i, align 4
  %sub.i = sub nsw i32 29, %conv1.i
  %arrayidx.i = getelementptr i32, ptr %9, i32 %sub.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %12 = and i32 %11, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %12)
  %cmp.not = icmp eq i32 %12, 2097152
  br i1 %cmp.not, label %if.end, label %get_wcaps.exit.cleanup24_crit_edge

get_wcaps.exit.cleanup24_crit_edge:               ; preds = %get_wcaps.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

if.end:                                           ; preds = %get_wcaps.exit
  %call.i = tail call i32 @snd_hda_get_connections(ptr noundef %codec, i16 noundef zeroext 11, ptr noundef null, i32 noundef 0) #7
  %13 = and i32 %call.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %switch = icmp eq i32 %13, 2
  br i1 %switch, label %for.body.lr.ph, label %if.end.cleanup24_crit_edge

if.end.cleanup24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

for.body.lr.ph:                                   ; preds = %if.end
  %add = add i32 %call.i, 1
  %num_smux_conns = getelementptr inbounds %struct.ad198x_spec, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %num_smux_conns to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %num_smux_conns, align 4
  %paths = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 46
  %smax = call i32 @llvm.smax.i32(i32 %add, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end16.for.body_crit_edge ]
  %call10 = tail call ptr @snd_array_new(ptr noundef %paths) #7
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %for.body.cleanup24_crit_edge, label %if.end13

for.body.cleanup24_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

if.end13:                                         ; preds = %for.body
  %arrayidx = getelementptr [4 x %struct.nid_path], ptr @ad1988_add_spdif_mux_ctl.fake_paths, i32 0, i32 %i.052
  %15 = call ptr @memcpy(ptr %call10, ptr %arrayidx, i32 60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.052)
  %tobool14.not = icmp eq i32 %i.052, 0
  br i1 %tobool14.not, label %if.then15, label %if.end13.if.end16_crit_edge

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %active = getelementptr inbounds %struct.nid_path, ptr %call10, i32 0, i32 5
  %16 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %active, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %active, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13.if.end16_crit_edge
  %call17 = tail call i32 @snd_hda_get_path_idx(ptr noundef %codec, ptr noundef nonnull %call10) #7
  %arrayidx18 = getelementptr %struct.ad198x_spec, ptr %1, i32 0, i32 1, i32 %i.052
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call17, ptr %arrayidx18, align 4
  %inc = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.end, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end16
  %call20 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %1, ptr noundef null, ptr noundef nonnull @ad1988_auto_smux_mixer) #7
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %for.end.cleanup24_crit_edge, label %if.end23

for.end.cleanup24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

if.end23:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %init = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7, i32 2
  %18 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ad1988_auto_init, ptr %init, align 8
  br label %cleanup24

cleanup24:                                        ; preds = %if.end23, %for.end.cleanup24_crit_edge, %for.body.cleanup24_crit_edge, %if.end.cleanup24_crit_edge, %get_wcaps.exit.cleanup24_crit_edge, %lor.lhs.false.i.cleanup24_crit_edge, %lor.lhs.false.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  %retval.2 = phi i32 [ 0, %if.end23 ], [ 0, %entry.cleanup24_crit_edge ], [ 0, %if.end.cleanup24_crit_edge ], [ -12, %for.end.cleanup24_crit_edge ], [ 0, %get_wcaps.exit.cleanup24_crit_edge ], [ 0, %lor.lhs.false.i.cleanup24_crit_edge ], [ 0, %lor.lhs.false.cleanup24_crit_edge ], [ -12, %for.body.cleanup24_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_array_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_path_idx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad1988_auto_init(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %call = tail call i32 @snd_hda_gen_init(ptr noundef %codec) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dig_outs = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 33, i32 9
  %2 = ptrtoint ptr %dig_outs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dig_outs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %arrayidx = getelementptr %struct.ad198x_spec, ptr %1, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call5 = tail call ptr @snd_hda_get_path_from_idx(ptr noundef %codec, i32 noundef %5) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %for.body.preheader.if.end8_crit_edge, label %if.then7

for.body.preheader.if.end8_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %active = getelementptr inbounds %struct.nid_path, ptr %call5, i32 0, i32 5
  %6 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %bf.cast = icmp slt i8 %bf.load, 0
  tail call void @snd_hda_activate_path(ptr noundef %codec, ptr noundef nonnull %call5, i1 noundef zeroext %bf.cast, i1 noundef zeroext false) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %for.body.preheader.if.end8_crit_edge
  %arrayidx.1 = getelementptr %struct.ad198x_spec, ptr %1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1, align 4
  %call5.1 = tail call ptr @snd_hda_get_path_from_idx(ptr noundef %codec, i32 noundef %8) #7
  %tobool6.not.1 = icmp eq ptr %call5.1, null
  br i1 %tobool6.not.1, label %if.end8.if.end8.1_crit_edge, label %if.then7.1

if.end8.if.end8.1_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.1

if.then7.1:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %active.1 = getelementptr inbounds %struct.nid_path, ptr %call5.1, i32 0, i32 5
  %9 = ptrtoint ptr %active.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.1 = load i8, ptr %active.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.1)
  %bf.cast.1 = icmp slt i8 %bf.load.1, 0
  tail call void @snd_hda_activate_path(ptr noundef %codec, ptr noundef nonnull %call5.1, i1 noundef zeroext %bf.cast.1, i1 noundef zeroext false) #7
  br label %if.end8.1

if.end8.1:                                        ; preds = %if.then7.1, %if.end8.if.end8.1_crit_edge
  %arrayidx.2 = getelementptr %struct.ad198x_spec, ptr %1, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.2, align 4
  %call5.2 = tail call ptr @snd_hda_get_path_from_idx(ptr noundef %codec, i32 noundef %11) #7
  %tobool6.not.2 = icmp eq ptr %call5.2, null
  br i1 %tobool6.not.2, label %if.end8.1.if.end8.2_crit_edge, label %if.then7.2

if.end8.1.if.end8.2_crit_edge:                    ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.2

if.then7.2:                                       ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #9
  %active.2 = getelementptr inbounds %struct.nid_path, ptr %call5.2, i32 0, i32 5
  %12 = ptrtoint ptr %active.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.2 = load i8, ptr %active.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.2)
  %bf.cast.2 = icmp slt i8 %bf.load.2, 0
  tail call void @snd_hda_activate_path(ptr noundef %codec, ptr noundef nonnull %call5.2, i1 noundef zeroext %bf.cast.2, i1 noundef zeroext false) #7
  br label %if.end8.2

if.end8.2:                                        ; preds = %if.then7.2, %if.end8.1.if.end8.2_crit_edge
  %arrayidx.3 = getelementptr %struct.ad198x_spec, ptr %1, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.3, align 4
  %call5.3 = tail call ptr @snd_hda_get_path_from_idx(ptr noundef %codec, i32 noundef %14) #7
  %tobool6.not.3 = icmp eq ptr %call5.3, null
  br i1 %tobool6.not.3, label %if.end8.2.cleanup_crit_edge, label %if.then7.3

if.end8.2.cleanup_crit_edge:                      ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7.3:                                       ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #9
  %active.3 = getelementptr inbounds %struct.nid_path, ptr %call5.3, i32 0, i32 5
  %15 = ptrtoint ptr %active.3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.3 = load i8, ptr %active.3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.3)
  %bf.cast.3 = icmp slt i8 %bf.load.3, 0
  tail call void @snd_hda_activate_path(ptr noundef %codec, ptr noundef nonnull %call5.3, i1 noundef zeroext %bf.cast.3, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7.3, %if.end8.2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then7.3 ], [ 0, %if.end8.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad1988_auto_smux_enum_info(ptr noundef %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 8
  %num_smux_conns = getelementptr inbounds %struct.ad198x_spec, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %num_smux_conns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_smux_conns, align 4
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 4)
  %call = tail call i32 @snd_hda_enum_helper_info(ptr noundef %kcontrol, ptr noundef %uinfo, i32 noundef %6, ptr noundef nonnull @ad1988_auto_smux_enum_info.texts) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad1988_auto_smux_enum_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 8
  %cur_smux = getelementptr inbounds %struct.ad198x_spec, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cur_smux to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_smux, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad1988_auto_smux_enum_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %num_smux_conns = getelementptr inbounds %struct.ad198x_spec, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %num_smux_conns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_smux_conns, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp ult i32 %5, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_smux = getelementptr inbounds %struct.ad198x_spec, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %cur_smux to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_smux, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp2 = icmp eq i32 %9, %5
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %control_mutex = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %control_mutex, i32 noundef 0) #7
  %10 = ptrtoint ptr %cur_smux to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_smux, align 8
  %arrayidx6 = getelementptr %struct.ad198x_spec, ptr %3, i32 0, i32 1, i32 %11
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx6, align 4
  %call = tail call ptr @snd_hda_get_path_from_idx(ptr noundef %1, i32 noundef %13) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_hda_activate_path(ptr noundef %1, ptr noundef nonnull %call, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %arrayidx10 = getelementptr %struct.ad198x_spec, ptr %3, i32 0, i32 1, i32 %5
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx10, align 4
  %call11 = tail call ptr @snd_hda_get_path_from_idx(ptr noundef %1, i32 noundef %15) #7
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end8.if.end14_crit_edge, label %if.then13

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_hda_activate_path(ptr noundef %1, ptr noundef nonnull %call11, i1 noundef zeroext true, i1 noundef zeroext true) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end8.if.end14_crit_edge
  %16 = ptrtoint ptr %cur_smux to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %5, ptr %cur_smux, align 8
  tail call void @mutex_unlock(ptr noundef %control_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end14 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_get_path_from_idx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_activate_path(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad1981_fixup_amp_override(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp = icmp eq i32 %action, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 17, i32 noundef 0, i32 noundef -2147150057) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ad1981_fixup_hp_eapd(ptr nocapture noundef readonly %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp = icmp eq i32 %action, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %hook = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 71, i32 1
  %2 = ptrtoint ptr %hook to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ad_vmaster_eapd_hook, ptr %hook, align 4
  %eapd_nid = getelementptr inbounds %struct.ad198x_spec, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %eapd_nid to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 5, ptr %eapd_nid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_override_conn_list(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ad_fixup_inv_jack_detect(ptr nocapture noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp = icmp eq i32 %action, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %inv_jack_detect = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %2 = ptrtoint ptr %inv_jack_detect to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %inv_jack_detect, align 4
  %bf.set = or i32 %bf.load, 524288
  store i32 %bf.set, ptr %inv_jack_detect, align 4
  %keep_eapd_on = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 58
  %3 = ptrtoint ptr %keep_eapd_on to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load2 = load i64, ptr %keep_eapd_on, align 4
  %bf.set4 = or i64 %bf.load2, 274877906944
  store i64 %bf.set4, ptr %keep_eapd_on, align 4
  %hook = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 71, i32 1
  %4 = ptrtoint ptr %hook to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ad_vmaster_eapd_hook, ptr %hook, align 4
  %eapd_nid = getelementptr inbounds %struct.ad198x_spec, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %eapd_nid to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 27, ptr %eapd_nid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ad1986a_fixup_eapd(ptr nocapture noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp = icmp eq i32 %action, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %inv_eapd = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %2 = ptrtoint ptr %inv_eapd to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %inv_eapd, align 4
  %bf.clear = and i32 %bf.load, -1048577
  store i32 %bf.clear, ptr %inv_eapd, align 4
  %keep_eapd_on = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 58
  %3 = ptrtoint ptr %keep_eapd_on to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load2 = load i64, ptr %keep_eapd_on, align 4
  %bf.set4 = or i64 %bf.load2, 274877906944
  store i64 %bf.set4, ptr %keep_eapd_on, align 4
  %eapd_nid = getelementptr inbounds %struct.ad198x_spec, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %eapd_nid to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 27, ptr %eapd_nid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ad1986a_fixup_eapd_mix_in(ptr nocapture noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp = icmp eq i32 %action, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %inv_eapd.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %2 = ptrtoint ptr %inv_eapd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %inv_eapd.i, align 4
  %bf.clear.i = and i32 %bf.load.i, -1048577
  store i32 %bf.clear.i, ptr %inv_eapd.i, align 4
  %keep_eapd_on.i = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 58
  %3 = ptrtoint ptr %keep_eapd_on.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load2.i = load i64, ptr %keep_eapd_on.i, align 4
  %eapd_nid.i = getelementptr inbounds %struct.ad198x_spec, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %eapd_nid.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 27, ptr %eapd_nid.i, align 4
  %bf.set4.i = and i64 %bf.load2.i, -287762808833
  %bf.set = or i64 %bf.set4.i, 279172874240
  store i64 %bf.set, ptr %keep_eapd_on.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @__UNIQUE_ID_file239, !1, !"__UNIQUE_ID_file239", i1 false, i1 false}
!1 = !{!"../sound/pci/hda/patch_analog.c", i32 1173, i32 1}
!2 = !{ptr @__UNIQUE_ID_license240, !1, !"__UNIQUE_ID_license240", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description241, !4, !"__UNIQUE_ID_description241", i1 false, i1 false}
!4 = !{!"../sound/pci/hda/patch_analog.c", i32 1174, i32 1}
!5 = !{ptr @__initcall__kmod_snd_hda_codec_analog__242_1180_analog_driver_init6, !6, !"__initcall__kmod_snd_hda_codec_analog__242_1180_analog_driver_init6", i1 false, i1 false}
!6 = !{!"../sound/pci/hda/patch_analog.c", i32 1180, i32 1}
!7 = !{ptr @__exitcall_analog_driver_exit, !6, !"__exitcall_analog_driver_exit", i1 false, i1 false}
!8 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @analog_driver, !10, !"analog_driver", i1 false, i1 false}
!10 = !{!"../sound/pci/hda/patch_analog.c", i32 1176, i32 32}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/pci/hda/patch_analog.c", i32 1154, i32 2}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/pci/hda/patch_analog.c", i32 1155, i32 2}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/pci/hda/patch_analog.c", i32 1156, i32 2}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/pci/hda/patch_analog.c", i32 1157, i32 2}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/pci/hda/patch_analog.c", i32 1158, i32 2}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/pci/hda/patch_analog.c", i32 1159, i32 2}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/pci/hda/patch_analog.c", i32 1160, i32 2}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/pci/hda/patch_analog.c", i32 1161, i32 2}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/pci/hda/patch_analog.c", i32 1162, i32 2}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/pci/hda/patch_analog.c", i32 1163, i32 2}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/pci/hda/patch_analog.c", i32 1164, i32 2}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/pci/hda/patch_analog.c", i32 1165, i32 2}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/pci/hda/patch_analog.c", i32 1166, i32 2}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/pci/hda/patch_analog.c", i32 1167, i32 2}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/pci/hda/patch_analog.c", i32 1168, i32 2}
!41 = !{ptr @snd_hda_id_analog, !42, !"snd_hda_id_analog", i1 false, i1 false}
!42 = !{!"../sound/pci/hda/patch_analog.c", i32 1153, i32 35}
!43 = !{ptr @ad198x_auto_patch_ops, !44, !"ad198x_auto_patch_ops", i1 false, i1 false}
!44 = !{!"../sound/pci/hda/patch_analog.c", i32 155, i32 35}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/pci/hda/patch_analog.c", i32 38, i32 2}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/pci/hda/patch_analog.c", i32 39, i32 2}
!49 = !{ptr @ad_beep_mixer, !50, !"ad_beep_mixer", i1 false, i1 false}
!50 = !{!"../sound/pci/hda/patch_analog.c", i32 37, i32 38}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/pci/hda/patch_analog.c", i32 1069, i32 2}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/pci/hda/patch_analog.c", i32 1070, i32 2}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/pci/hda/patch_analog.c", i32 1071, i32 2}
!57 = !{ptr @ad1884_fixup_tbl, !58, !"ad1884_fixup_tbl", i1 false, i1 false}
!58 = !{!"../sound/pci/hda/patch_analog.c", i32 1068, i32 35}
!59 = !{ptr @ad1884_fixups, !60, !"ad1884_fixups", i1 false, i1 false}
!60 = !{!"../sound/pci/hda/patch_analog.c", i32 1039, i32 31}
!61 = !{ptr @ad1884_dmic_init_verbs, !62, !"ad1884_dmic_init_verbs", i1 false, i1 false}
!62 = !{!"../sound/pci/hda/patch_analog.c", i32 1025, i32 30}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/pci/hda/patch_analog.c", i32 491, i32 10}
!65 = !{ptr @ad1983_auto_smux_mixer, !66, !"ad1983_auto_smux_mixer", i1 false, i1 false}
!66 = !{!"../sound/pci/hda/patch_analog.c", i32 489, i32 38}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/pci/hda/patch_analog.c", i32 448, i32 41}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pci/hda/patch_analog.c", i32 448, i32 48}
!71 = !{ptr @ad1983_auto_smux_enum_info.texts2, !72, !"texts2", i1 false, i1 false}
!72 = !{!"../sound/pci/hda/patch_analog.c", i32 448, i32 28}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/pci/hda/patch_analog.c", i32 449, i32 48}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/hda/patch_analog.c", i32 449, i32 56}
!77 = !{ptr @ad1983_auto_smux_enum_info.texts3, !78, !"texts3", i1 false, i1 false}
!78 = !{!"../sound/pci/hda/patch_analog.c", i32 449, i32 28}
!79 = !{ptr @ad1988_add_spdif_mux_ctl.fake_paths, !80, !"fake_paths", i1 false, i1 false}
!80 = !{!"../sound/pci/hda/patch_analog.c", i32 811, i32 31}
!81 = !{ptr @ad1988_auto_smux_mixer, !82, !"ad1988_auto_smux_mixer", i1 false, i1 false}
!82 = !{!"../sound/pci/hda/patch_analog.c", i32 775, i32 38}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/pci/hda/patch_analog.c", i32 729, i32 26}
!85 = !{ptr @ad1988_auto_smux_enum_info.texts, !86, !"texts", i1 false, i1 false}
!86 = !{!"../sound/pci/hda/patch_analog.c", i32 728, i32 28}
!87 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/pci/hda/patch_analog.c", i32 596, i32 2}
!89 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/pci/hda/patch_analog.c", i32 600, i32 2}
!91 = !{ptr @ad1981_fixup_tbl, !92, !"ad1981_fixup_tbl", i1 false, i1 false}
!92 = !{!"../sound/pci/hda/patch_analog.c", i32 595, i32 35}
!93 = !{ptr @ad1981_fixups, !94, !"ad1981_fixups", i1 false, i1 false}
!94 = !{!"../sound/pci/hda/patch_analog.c", i32 582, i32 31}
!95 = !{ptr @patch_ad1983.conn_0c, !96, !"conn_0c", i1 false, i1 false}
!96 = !{!"../sound/pci/hda/patch_analog.c", i32 516, i32 25}
!97 = !{ptr @patch_ad1983.conn_0d, !98, !"conn_0d", i1 false, i1 false}
!98 = !{!"../sound/pci/hda/patch_analog.c", i32 517, i32 25}
!99 = !{ptr @patch_ad1986a.preferred_pairs, !100, !"preferred_pairs", i1 false, i1 false}
!100 = !{!"../sound/pci/hda/patch_analog.c", i32 386, i32 25}
!101 = !{ptr @.str.29, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/pci/hda/patch_analog.c", i32 372, i32 40}
!103 = !{ptr @.str.30, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/pci/hda/patch_analog.c", i32 373, i32 40}
!105 = !{ptr @.str.31, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/pci/hda/patch_analog.c", i32 374, i32 45}
!107 = !{ptr @.str.32, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/pci/hda/patch_analog.c", i32 375, i32 45}
!109 = !{ptr @.str.33, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/pci/hda/patch_analog.c", i32 376, i32 38}
!111 = !{ptr @ad1986a_fixup_models, !112, !"ad1986a_fixup_models", i1 false, i1 false}
!112 = !{!"../sound/pci/hda/patch_analog.c", i32 371, i32 37}
!113 = !{ptr @.str.34, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/pci/hda/patch_analog.c", i32 353, i32 2}
!115 = !{ptr @.str.35, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/pci/hda/patch_analog.c", i32 354, i32 2}
!117 = !{ptr @.str.36, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/pci/hda/patch_analog.c", i32 355, i32 2}
!119 = !{ptr @.str.37, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/pci/hda/patch_analog.c", i32 356, i32 2}
!121 = !{ptr @.str.38, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/pci/hda/patch_analog.c", i32 357, i32 2}
!123 = !{ptr @.str.39, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/pci/hda/patch_analog.c", i32 358, i32 2}
!125 = !{ptr @.str.40, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/pci/hda/patch_analog.c", i32 359, i32 2}
!127 = !{ptr @.str.41, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/pci/hda/patch_analog.c", i32 360, i32 2}
!129 = !{ptr @.str.42, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/pci/hda/patch_analog.c", i32 361, i32 2}
!131 = !{ptr @.str.43, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/pci/hda/patch_analog.c", i32 362, i32 2}
!133 = !{ptr @.str.44, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/pci/hda/patch_analog.c", i32 363, i32 2}
!135 = !{ptr @.str.45, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/pci/hda/patch_analog.c", i32 364, i32 2}
!137 = !{ptr @.str.46, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/pci/hda/patch_analog.c", i32 365, i32 2}
!139 = !{ptr @.str.47, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/pci/hda/patch_analog.c", i32 366, i32 2}
!141 = !{ptr @.str.48, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/pci/hda/patch_analog.c", i32 367, i32 2}
!143 = !{ptr @ad1986a_fixup_tbl, !144, !"ad1986a_fixup_tbl", i1 false, i1 false}
!144 = !{!"../sound/pci/hda/patch_analog.c", i32 352, i32 35}
!145 = !{ptr @ad1986a_fixups, !146, !"ad1986a_fixups", i1 false, i1 false}
!146 = !{!"../sound/pci/hda/patch_analog.c", i32 264, i32 31}
!147 = !{ptr @.str.54, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/pci/hda/patch_analog.c", i32 892, i32 43}
!149 = !{ptr @ad1988_fixup_models, !150, !"ad1988_fixup_models", i1 false, i1 false}
!150 = !{!"../sound/pci/hda/patch_analog.c", i32 891, i32 37}
!151 = !{ptr @ad1988_fixups, !152, !"ad1988_fixups", i1 false, i1 false}
!152 = !{!"../sound/pci/hda/patch_analog.c", i32 873, i32 31}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{!"auto-init"}
