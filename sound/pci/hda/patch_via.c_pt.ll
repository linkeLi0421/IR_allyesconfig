; ModuleID = '/llk/IR_all_yes/sound/pci/hda/patch_via.c_pt.bc'
source_filename = "../sound/pci/hda/patch_via.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hda_codec_driver = type { %struct.hdac_driver, ptr }
%struct.hdac_driver = type { %struct.device_driver, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hda_device_id = type { i32, i32, i8, ptr, i32 }
%struct.hda_verb = type { i16, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.hda_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.badness_table = type { i32, i32, i32, i32, i32, i32 }
%struct.snd_pci_quirk = type { i16, i16, i16, i32, ptr }
%struct.hda_fixup = type { i32, i8, i32, %union.anon.73 }
%union.anon.73 = type { ptr }
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
%struct.via_spec = type { %struct.hda_gen_spec, i32, i32, i8, i32, i32, [4 x i8] }
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
%struct.hda_pcm = type { ptr, [2 x %struct.hda_pcm_stream], i32, i32, ptr, i8, ptr, %struct.list_head, i8 }
%struct.hda_pcm_stream = type { i32, i32, i32, i16, i32, i64, i32, ptr, %struct.hda_pcm_ops }
%struct.hda_pcm_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.hda_amp_list = type { i16, i8, i8 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.83, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.83 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.78, [128 x i8] }
%union.anon.78 = type { %union.anon.80 }
%union.anon.80 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.74, [64 x i8] }
%union.anon.74 = type { %struct.anon.77, [40 x i8] }
%struct.anon.77 = type { i32, i32, [64 x i8], i64, i32 }

@__UNIQUE_ID_file239 = internal constant [55 x i8] c"snd_hda_codec_via.file=sound/pci/hda/snd-hda-codec-via\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [30 x i8] c"snd_hda_codec_via.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [49 x i8] c"snd_hda_codec_via.description=VIA HD-audio codec\00", section ".modinfo", align 1
@__initcall__kmod_snd_hda_codec_via__242_1252_via_driver_init6 = internal global ptr @via_driver_init, section ".initcall6.init", align 4
@via_driver = internal global { %struct.hda_codec_driver, [52 x i8] } { %struct.hda_codec_driver { %struct.hdac_driver zeroinitializer, ptr @snd_hda_id_via }, [52 x i8] zeroinitializer }, align 32
@__exitcall_via_driver_exit = internal global ptr @via_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_hda_codec_via\00", [46 x i8] zeroinitializer }, align 32
@snd_hda_id_via = internal constant { [52 x %struct.hda_device_id], [272 x i8] } { [52 x %struct.hda_device_id] [%struct.hda_device_id { i32 285611784, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_vt1708 to i32) }, %struct.hda_device_id { i32 285611785, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_vt1708 to i32) }, %struct.hda_device_id { i32 285611786, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_vt1708 to i32) }, %struct.hda_device_id { i32 285611787, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_vt1708 to i32) }, %struct.hda_device_id { i32 285665040, i32 0, i8 1, ptr @.str.2, i32 ptrtoint (ptr @patch_vt1709 to i32) }, %struct.hda_device_id { i32 285665041, i32 0, i8 1, ptr @.str.2, i32 ptrtoint (ptr @patch_vt1709 to i32) }, %struct.hda_device_id { i32 285665042, i32 0, i8 1, ptr @.str.2, i32 ptrtoint (ptr @patch_vt1709 to i32) }, %struct.hda_device_id { i32 285665043, i32 0, i8 1, ptr @.str.2, i32 ptrtoint (ptr @patch_vt1709 to i32) }, %struct.hda_device_id { i32 285665044, i32 0, i8 1, ptr @.str.3, i32 ptrtoint (ptr @patch_vt1709 to i32) }, %struct.hda_device_id { i32 285665045, i32 0, i8 1, ptr @.str.3, i32 ptrtoint (ptr @patch_vt1709 to i32) }, %struct.hda_device_id { i32 285665046, i32 0, i8 1, ptr @.str.3, i32 ptrtoint (ptr @patch_vt1709 to i32) }, %struct.hda_device_id { i32 285665047, i32 0, i8 1, ptr @.str.3, i32 ptrtoint (ptr @patch_vt1709 to i32) }, %struct.hda_device_id { i32 285665056, i32 0, i8 1, ptr @.str.4, i32 ptrtoint (ptr @patch_vt1708B to i32) }, %struct.hda_device_id { i32 285665057, i32 0, i8 1, ptr @.str.4, i32 ptrtoint (ptr @patch_vt1708B to i32) }, %struct.hda_device_id { i32 285665058, i32 0, i8 1, ptr @.str.4, i32 ptrtoint (ptr @patch_vt1708B to i32) }, %struct.hda_device_id { i32 285665059, i32 0, i8 1, ptr @.str.4, i32 ptrtoint (ptr @patch_vt1708B to i32) }, %struct.hda_device_id { i32 285665060, i32 0, i8 1, ptr @.str.5, i32 ptrtoint (ptr @patch_vt1708B to i32) }, %struct.hda_device_id { i32 285665061, i32 0, i8 1, ptr @.str.5, i32 ptrtoint (ptr @patch_vt1708B to i32) }, %struct.hda_device_id { i32 285665062, i32 0, i8 1, ptr @.str.5, i32 ptrtoint (ptr @patch_vt1708B to i32) }, %struct.hda_device_id { i32 285665063, i32 0, i8 1, ptr @.str.5, i32 ptrtoint (ptr @patch_vt1708B to i32) }, %struct.hda_device_id { i32 285606807, i32 0, i8 1, ptr @.str.6, i32 ptrtoint (ptr @patch_vt1708S to i32) }, %struct.hda_device_id { i32 285610903, i32 0, i8 1, ptr @.str.6, i32 ptrtoint (ptr @patch_vt1708S to i32) }, %struct.hda_device_id { i32 285614999, i32 0, i8 1, ptr @.str.6, i32 ptrtoint (ptr @patch_vt1708S to i32) }, %struct.hda_device_id { i32 285619095, i32 0, i8 1, ptr @.str.6, i32 ptrtoint (ptr @patch_vt1708S to i32) }, %struct.hda_device_id { i32 285623191, i32 0, i8 1, ptr @.str.7, i32 ptrtoint (ptr @patch_vt1708S to i32) }, %struct.hda_device_id { i32 285627287, i32 0, i8 1, ptr @.str.6, i32 ptrtoint (ptr @patch_vt1708S to i32) }, %struct.hda_device_id { i32 285631383, i32 0, i8 1, ptr @.str.6, i32 ptrtoint (ptr @patch_vt1708S to i32) }, %struct.hda_device_id { i32 285635479, i32 0, i8 1, ptr @.str.6, i32 ptrtoint (ptr @patch_vt1708S to i32) }, %struct.hda_device_id { i32 285606808, i32 0, i8 1, ptr @.str.8, i32 ptrtoint (ptr @patch_vt1702 to i32) }, %struct.hda_device_id { i32 285610904, i32 0, i8 1, ptr @.str.8, i32 ptrtoint (ptr @patch_vt1702 to i32) }, %struct.hda_device_id { i32 285615000, i32 0, i8 1, ptr @.str.8, i32 ptrtoint (ptr @patch_vt1702 to i32) }, %struct.hda_device_id { i32 285619096, i32 0, i8 1, ptr @.str.8, i32 ptrtoint (ptr @patch_vt1702 to i32) }, %struct.hda_device_id { i32 285623192, i32 0, i8 1, ptr @.str.8, i32 ptrtoint (ptr @patch_vt1702 to i32) }, %struct.hda_device_id { i32 285627288, i32 0, i8 1, ptr @.str.8, i32 ptrtoint (ptr @patch_vt1702 to i32) }, %struct.hda_device_id { i32 285631384, i32 0, i8 1, ptr @.str.8, i32 ptrtoint (ptr @patch_vt1702 to i32) }, %struct.hda_device_id { i32 285635480, i32 0, i8 1, ptr @.str.8, i32 ptrtoint (ptr @patch_vt1702 to i32) }, %struct.hda_device_id { i32 285606952, i32 0, i8 1, ptr @.str.9, i32 ptrtoint (ptr @patch_vt1718S to i32) }, %struct.hda_device_id { i32 285623336, i32 0, i8 1, ptr @.str.9, i32 ptrtoint (ptr @patch_vt1718S to i32) }, %struct.hda_device_id { i32 285606977, i32 0, i8 1, ptr @.str.10, i32 ptrtoint (ptr @patch_vt1718S to i32) }, %struct.hda_device_id { i32 285623361, i32 0, i8 1, ptr @.str.11, i32 ptrtoint (ptr @patch_vt1718S to i32) }, %struct.hda_device_id { i32 285606963, i32 0, i8 1, ptr @.str.12, i32 ptrtoint (ptr @patch_vt1716S to i32) }, %struct.hda_device_id { i32 285648673, i32 0, i8 1, ptr @.str.12, i32 ptrtoint (ptr @patch_vt1716S to i32) }, %struct.hda_device_id { i32 285606968, i32 0, i8 1, ptr @.str.13, i32 ptrtoint (ptr @patch_vt2002P to i32) }, %struct.hda_device_id { i32 285623352, i32 0, i8 1, ptr @.str.13, i32 ptrtoint (ptr @patch_vt2002P to i32) }, %struct.hda_device_id { i32 285606984, i32 0, i8 1, ptr @.str.14, i32 ptrtoint (ptr @patch_vt1812 to i32) }, %struct.hda_device_id { i32 285606976, i32 0, i8 1, ptr @.str.15, i32 ptrtoint (ptr @patch_vt1708S to i32) }, %struct.hda_device_id { i32 285606982, i32 0, i8 1, ptr @.str.16, i32 ptrtoint (ptr @patch_vt2002P to i32) }, %struct.hda_device_id { i32 285639750, i32 0, i8 1, ptr @.str.16, i32 ptrtoint (ptr @patch_vt2002P to i32) }, %struct.hda_device_id { i32 285624160, i32 0, i8 1, ptr @.str.17, i32 ptrtoint (ptr @patch_vt3476 to i32) }, %struct.hda_device_id { i32 285624161, i32 0, i8 1, ptr @.str.18, i32 ptrtoint (ptr @patch_vt3476 to i32) }, %struct.hda_device_id { i32 285624162, i32 0, i8 1, ptr @.str.19, i32 ptrtoint (ptr @patch_vt3476 to i32) }, %struct.hda_device_id zeroinitializer], [272 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VT1708\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VT1709 10-Ch\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VT1709 6-Ch\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VT1708B 8-Ch\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VT1708B 4-Ch\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VT1708S\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VT1705\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VT1702\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VT1718S\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VT2020\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VT1828S\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VT1716S\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VT2002P\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VT1812\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VT1818S\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VT1802\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VT1705CF\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VT1708SCE\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VT1808\00", [25 x i8] zeroinitializer }, align 32
@vt1708_init_verbs = internal constant { [2 x %struct.hda_verb], [40 x i8] } { [2 x %struct.hda_verb] [%struct.hda_verb { i16 1, i32 3969, i32 1 }, %struct.hda_verb zeroinitializer], [40 x i8] zeroinitializer }, align 32
@vt1708_jack_detect_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 1, ptr @snd_ctl_boolean_mono_info, ptr @vt1708_jack_detect_get, ptr @vt1708_jack_detect_put, %union.anon.84 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@via_patch_ops = internal constant { %struct.hda_codec_ops, [56 x i8] } { %struct.hda_codec_ops { ptr @snd_hda_gen_build_controls, ptr @snd_hda_gen_build_pcms, ptr @via_init, ptr @via_free, ptr @snd_hda_jack_unsol_event, ptr null, ptr @via_suspend, ptr @via_resume, ptr @via_check_power_status, ptr null }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"analog_loopback_hp_detect\00", [38 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@via_main_out_badness = internal constant { %struct.badness_table, [40 x i8] } { %struct.badness_table { i32 65536, i32 16384, i32 65536, i32 32, i32 32, i32 32 }, [40 x i8] zeroinitializer }, align 32
@via_extra_out_badness = internal constant { %struct.badness_table, [40 x i8] } { %struct.badness_table { i32 16384, i32 16384, i32 18, i32 32, i32 32, i32 16 }, [40 x i8] zeroinitializer }, align 32
@via_pin_power_ctl_enum = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @via_pin_power_ctl_info, ptr @via_pin_power_ctl_get, ptr @via_pin_power_ctl_put, %union.anon.84 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@via_beep_mixer = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 1073741824, ptr @.str.21, i32 0, i32 268435475, i32 0, ptr @snd_hda_mixer_amp_volume_info, ptr @snd_hda_mixer_amp_volume_get, ptr @snd_hda_mixer_amp_volume_put, %union.anon.84 { ptr @snd_hda_mixer_amp_tlv }, i32 327680 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 1073741824, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_hda_mixer_amp_switch_info, ptr @snd_hda_mixer_amp_switch_get_beep, ptr @snd_hda_mixer_amp_switch_put_beep, %union.anon.84 zeroinitializer, i32 327680 }], [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Beep Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Beep Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Dynamic Power-Control\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Jack Detect\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VT1708BCE\00", [22 x i8] zeroinitializer }, align 32
@vt1708S_init_verbs = internal constant { [3 x %struct.hda_verb], [60 x i8] } { [3 x %struct.hda_verb] [%struct.hda_verb { i16 1, i32 3992, i32 1 }, %struct.hda_verb { i16 1, i32 3976, i32 192 }, %struct.hda_verb zeroinitializer], [60 x i8] zeroinitializer }, align 32
@vt1702_init_verbs = internal constant { [3 x %struct.hda_verb], [60 x i8] } { [3 x %struct.hda_verb] [%struct.hda_verb { i16 1, i32 3976, i32 3 }, %struct.hda_verb { i16 1, i32 3970, i32 63 }, %struct.hda_verb zeroinitializer], [60 x i8] zeroinitializer }, align 32
@vt1718S_init_verbs = internal constant { [3 x %struct.hda_verb], [60 x i8] } { [3 x %struct.hda_verb] [%struct.hda_verb { i16 1, i32 4018, i32 16 }, %struct.hda_verb { i16 1, i32 3976, i32 8 }, %struct.hda_verb zeroinitializer], [60 x i8] zeroinitializer }, align 32
@vt1716S_init_verbs = internal constant { [4 x %struct.hda_verb], [48 x i8] } { [4 x %struct.hda_verb] [%struct.hda_verb { i16 1, i32 3978, i32 128 }, %struct.hda_verb { i16 1, i32 3976, i32 192 }, %struct.hda_verb { i16 1, i32 3984, i32 8 }, %struct.hda_verb zeroinitializer], [48 x i8] zeroinitializer }, align 32
@vt1716s_dmic_mixer_vol = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 1073741824, ptr @.str.26, i32 0, i32 268435475, i32 0, ptr @snd_hda_mixer_amp_volume_info, ptr @snd_hda_mixer_amp_volume_get, ptr @snd_hda_mixer_amp_volume_put, %union.anon.84 { ptr @snd_hda_mixer_amp_tlv }, i32 196642 }, [48 x i8] zeroinitializer }, align 32
@vt1716s_dmic_mixer_sw = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 -2147483610, ptr @.str.27, i32 0, i32 0, i32 1, ptr @vt1716s_dmic_info, ptr @vt1716s_dmic_get, ptr @vt1716s_dmic_put, %union.anon.84 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@vt1716S_mono_out_mixer = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 1073741824, ptr @.str.28, i32 0, i32 0, i32 0, ptr @snd_hda_mixer_amp_switch_info, ptr @snd_hda_mixer_amp_switch_get, ptr @snd_hda_mixer_amp_switch_put, %union.anon.84 zeroinitializer, i32 458794 }, [48 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Digital Mic Capture Volume\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Digital Mic Capture Switch\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Mono Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@vt2002p_fixups = internal constant { [5 x %struct.snd_pci_quirk], [48 x i8] } { [5 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4163, i16 5111, i16 -1, i32 2, ptr @.str.29 }, %struct.snd_pci_quirk { i16 4163, i16 5255, i16 -1, i32 1, ptr @.str.30 }, %struct.snd_pci_quirk { i16 4163, i16 -31438, i16 -1, i32 0, ptr @.str.31 }, %struct.snd_pci_quirk { i16 5464, i16 0, i16 0, i32 2, ptr @.str.32 }, %struct.snd_pci_quirk zeroinitializer], [48 x i8] zeroinitializer }, align 32
@via_fixups = internal constant { [3 x %struct.hda_fixup], [48 x i8] } { [3 x %struct.hda_fixup] [%struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.73 { ptr @via_fixup_intmic_boost } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.73 { ptr @.compoundliteral } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.73 { ptr @via_fixup_power_save } }], [48 x i8] zeroinitializer }, align 32
@vt1802_init_verbs = internal constant { [3 x %struct.hda_verb], [60 x i8] } { [3 x %struct.hda_verb] [%struct.hda_verb { i16 1, i32 4025, i32 36 }, %struct.hda_verb { i16 1, i32 4024, i32 136 }, %struct.hda_verb zeroinitializer], [60 x i8] zeroinitializer }, align 32
@vt2002P_init_verbs = internal constant { [6 x %struct.hda_verb], [56 x i8] } { [6 x %struct.hda_verb] [%struct.hda_verb { i16 1, i32 4064, i32 4 }, %struct.hda_verb { i16 1, i32 4073, i32 128 }, %struct.hda_verb { i16 1, i32 4066, i32 34 }, %struct.hda_verb { i16 1, i32 4025, i32 36 }, %struct.hda_verb { i16 1, i32 4024, i32 136 }, %struct.hda_verb zeroinitializer], [56 x i8] zeroinitializer }, align 32
@fix_vt1802_connections.conn_24 = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 20, i16 28], [28 x i8] zeroinitializer }, align 32
@fix_vt1802_connections.conn_33 = internal constant { [1 x i16], [30 x i8] } { [1 x i16] [i16 28], [30 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Asus B23E\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Asus G75\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Asus X202E\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Clevo\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [3 x %struct.hda_pintbl], [40 x i8] } { [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 36, i32 -1726807568 }, %struct.hda_pintbl { i16 51, i32 -1726807567 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@vt1812_init_verbs = internal constant { [3 x %struct.hda_verb], [60 x i8] } { [3 x %struct.hda_verb] [%struct.hda_verb { i16 1, i32 4025, i32 36 }, %struct.hda_verb { i16 1, i32 4024, i32 168 }, %struct.hda_verb zeroinitializer], [60 x i8] zeroinitializer }, align 32
@vt3476_init_verbs = internal constant { [4 x %struct.hda_verb], [48 x i8] } { [4 x %struct.hda_verb] [%struct.hda_verb { i16 1, i32 3963, i32 48 }, %struct.hda_verb { i16 1, i32 4025, i32 32 }, %struct.hda_verb { i16 1, i32 4024, i32 16 }, %struct.hda_verb zeroinitializer], [48 x i8] zeroinitializer }, align 32
@switch.table.get_codec_type = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 13, i32 14, i32 14], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 240, i64 255]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 240, i64 255]
@__sancov_gen_cov_switch_values.34 = internal global [7 x i64] [i64 5, i64 16, i64 5896, i64 59152, i64 59156, i64 59168, i64 59172]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 16, i64 919, i64 920, i64 1064]
@__sancov_gen_cov_switch_values.36 = internal global [10 x i64] [i64 8, i64 16, i64 1075, i64 1080, i64 1088, i64 1089, i64 1096, i64 17464, i64 17473, i64 42785]
@__sancov_gen_cov_switch_values.37 = internal global [13 x i64] [i64 11, i64 32, i64 3, i64 4, i64 5, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@___asan_gen_.38 = private unnamed_addr constant [11 x i8] c"via_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1245, i32 32 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1252, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"snd_hda_id_via\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1189, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1190, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1194, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1198, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1202, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1206, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1210, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1214, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1218, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1226, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1228, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1229, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1230, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1232, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1234, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1235, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1236, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1238, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1239, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1240, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [18 x i8] c"vt1708_init_verbs\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 434, i32 30 }
@___asan_gen_.107 = private unnamed_addr constant [23 x i8] c"vt1708_jack_detect_ctl\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 485, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant [14 x i8] c"via_patch_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 420, i32 35 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 209, i32 14 }
@___asan_gen_.116 = private unnamed_addr constant [21 x i8] c"via_main_out_badness\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 494, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant [22 x i8] c"via_extra_out_badness\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 502, i32 35 }
@___asan_gen_.122 = private unnamed_addr constant [23 x i8] c"via_pin_power_ctl_enum\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 244, i32 38 }
@___asan_gen_.125 = private unnamed_addr constant [15 x i8] c"via_beep_mixer\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 254, i32 38 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 255, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 256, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 246, i32 10 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 487, i32 10 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 733, i32 33 }
@___asan_gen_.143 = private unnamed_addr constant [19 x i8] c"vt1708S_init_verbs\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 697, i32 30 }
@___asan_gen_.146 = private unnamed_addr constant [18 x i8] c"vt1702_init_verbs\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 756, i32 30 }
@___asan_gen_.149 = private unnamed_addr constant [19 x i8] c"vt1718S_init_verbs\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 801, i32 30 }
@___asan_gen_.152 = private unnamed_addr constant [19 x i8] c"vt1716S_init_verbs\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 931, i32 30 }
@___asan_gen_.155 = private unnamed_addr constant [23 x i8] c"vt1716s_dmic_mixer_vol\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 914, i32 38 }
@___asan_gen_.158 = private unnamed_addr constant [22 x i8] c"vt1716s_dmic_mixer_sw\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 916, i32 38 }
@___asan_gen_.161 = private unnamed_addr constant [23 x i8] c"vt1716S_mono_out_mixer\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 928, i32 38 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 915, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 918, i32 11 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 929, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [15 x i8] c"vt2002p_fixups\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1043, i32 35 }
@___asan_gen_.176 = private unnamed_addr constant [11 x i8] c"via_fixups\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1023, i32 31 }
@___asan_gen_.179 = private unnamed_addr constant [18 x i8] c"vt1802_init_verbs\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 992, i32 30 }
@___asan_gen_.182 = private unnamed_addr constant [19 x i8] c"vt2002P_init_verbs\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 980, i32 30 }
@___asan_gen_.185 = private unnamed_addr constant [8 x i8] c"conn_24\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1056, i32 25 }
@___asan_gen_.188 = private unnamed_addr constant [8 x i8] c"conn_33\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1057, i32 25 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1044, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1045, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1046, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1047, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [18 x i8] c"vt1812_init_verbs\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1105, i32 30 }
@___asan_gen_.207 = private unnamed_addr constant [18 x i8] c"vt3476_init_verbs\00", align 1
@___asan_gen_.208 = private constant [29 x i8] c"../sound/pci/hda/patch_via.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1147, i32 30 }
@___asan_gen_.210 = private unnamed_addr constant [28 x i8] c"switch.table.get_codec_type\00", align 1
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_via_driver_exit, ptr @__initcall__kmod_snd_hda_codec_via__242_1252_via_driver_init6, ptr @via_driver_exit, ptr @via_driver, ptr @.str, ptr @snd_hda_id_via, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @vt1708_init_verbs, ptr @vt1708_jack_detect_ctl, ptr @via_patch_ops, ptr @.str.20, ptr @via_main_out_badness, ptr @via_extra_out_badness, ptr @via_pin_power_ctl_enum, ptr @via_beep_mixer, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @vt1708S_init_verbs, ptr @vt1702_init_verbs, ptr @vt1718S_init_verbs, ptr @vt1716S_init_verbs, ptr @vt1716s_dmic_mixer_vol, ptr @vt1716s_dmic_mixer_sw, ptr @vt1716S_mono_out_mixer, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @vt2002p_fixups, ptr @via_fixups, ptr @vt1802_init_verbs, ptr @vt2002P_init_verbs, ptr @fix_vt1802_connections.conn_24, ptr @fix_vt1802_connections.conn_33, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.compoundliteral, ptr @vt1812_init_verbs, ptr @vt3476_init_verbs, ptr @switch.table.get_codec_type], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hda_id_via to i32), i32 1040, i32 1312, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1708_init_verbs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1708_jack_detect_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_patch_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_main_out_badness to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_extra_out_badness to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_pin_power_ctl_enum to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_beep_mixer to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1708S_init_verbs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1702_init_verbs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1718S_init_verbs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1716S_init_verbs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1716s_dmic_mixer_vol to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1716s_dmic_mixer_sw to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1716S_mono_out_mixer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt2002p_fixups to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_fixups to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1802_init_verbs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt2002P_init_verbs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fix_vt1802_connections.conn_24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fix_vt1802_connections.conn_33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1812_init_verbs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt3476_init_verbs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.get_codec_type to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @via_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hda_codec_driver_register(ptr noundef nonnull @via_driver, ptr noundef nonnull @.str, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @via_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hda_codec_driver_unregister(ptr noundef nonnull @via_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_codec_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hda_codec_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_vt1708(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5728) #11
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec1.i, align 8
  %call2.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #8
  %call3.i = tail call fastcc i32 @get_codec_type(ptr noundef %codec) #8
  %codec_type.i = getelementptr inbounds %struct.via_spec, ptr %call7.i.i.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call3.i)
  %cmp5.i = icmp eq i32 %call3.i, 6
  %spec.select.i = select i1 %cmp5.i, i32 5, i32 %call3.i
  %2 = ptrtoint ptr %codec_type.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select.i, ptr %codec_type.i, align 4
  %indep_hp.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 58
  %3 = ptrtoint ptr %indep_hp.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load.i = load i64, ptr %indep_hp.i, align 4
  %pcm_playback_hook.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 79
  %4 = ptrtoint ptr %pcm_playback_hook.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @via_playback_pcm_hook, ptr %pcm_playback_hook.i, align 4
  %bf.set17.i = and i64 %bf.load.i, -704011174936577
  %power_save_node.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %5 = ptrtoint ptr %power_save_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load23.i = load i32, ptr %power_save_node.i, align 4
  %bf.set25.i = or i32 %bf.load23.i, 16384
  store i32 %bf.set25.i, ptr %power_save_node.i, align 4
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %6 = call ptr @memcpy(ptr %patch_ops.i, ptr @via_patch_ops, i32 40)
  %7 = ptrtoint ptr %patch_ops.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @vt1708_build_controls, ptr %patch_ops.i, align 8
  %build_pcms = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %build_pcms to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @vt1708_build_pcms, ptr %build_pcms, align 4
  %mixer_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 18
  %9 = ptrtoint ptr %mixer_nid to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 23, ptr %mixer_nid, align 2
  %jackpoll_interval = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 38
  %10 = ptrtoint ptr %jackpoll_interval to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 10, ptr %jackpoll_interval, align 8
  %vt1708_jack_detect = getelementptr inbounds %struct.via_spec, ptr %call7.i.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %vt1708_jack_detect to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %vt1708_jack_detect, align 8
  %bf.set7 = or i64 %bf.set17.i, 704006879969280
  store i64 %bf.set7, ptr %indep_hp.i, align 4
  %call.i = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %codec, i16 noundef zeroext 32) #8
  %shr5.mask.i = and i32 %call.i, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr5.mask.i)
  %cmp.i38 = icmp eq i32 %shr5.mask.i, 1073741824
  br i1 %cmp.i38, label %land.lhs.true.i, label %if.end.vt1708_set_pinconfig_connect.exit_crit_edge

if.end.vt1708_set_pinconfig_connect.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %vt1708_set_pinconfig_connect.exit

land.lhs.true.i:                                  ; preds = %if.end
  %trunc.i = trunc i32 %call.i to i8
  %12 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %land.lhs.true.i.vt1708_set_pinconfig_connect.exit_crit_edge [
    i8 -16, label %land.lhs.true.i.if.then.i_crit_edge
    i8 -1, label %land.lhs.true.i.if.then.i_crit_edge50
  ]

land.lhs.true.i.if.then.i_crit_edge50:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

land.lhs.true.i.vt1708_set_pinconfig_connect.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vt1708_set_pinconfig_connect.exit

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge50
  %and13.i = and i32 %call.i, 1073741823
  %call14.i = tail call i32 @snd_hda_codec_set_pincfg(ptr noundef %codec, i16 noundef zeroext 32, i32 noundef %and13.i) #8
  br label %vt1708_set_pinconfig_connect.exit

vt1708_set_pinconfig_connect.exit:                ; preds = %if.then.i, %land.lhs.true.i.vt1708_set_pinconfig_connect.exit_crit_edge, %if.end.vt1708_set_pinconfig_connect.exit_crit_edge
  %call.i40 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %codec, i16 noundef zeroext 36) #8
  %shr5.mask.i41 = and i32 %call.i40, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr5.mask.i41)
  %cmp.i42 = icmp eq i32 %shr5.mask.i41, 1073741824
  br i1 %cmp.i42, label %land.lhs.true.i44, label %vt1708_set_pinconfig_connect.exit.vt1708_set_pinconfig_connect.exit49_crit_edge

vt1708_set_pinconfig_connect.exit.vt1708_set_pinconfig_connect.exit49_crit_edge: ; preds = %vt1708_set_pinconfig_connect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %vt1708_set_pinconfig_connect.exit49

land.lhs.true.i44:                                ; preds = %vt1708_set_pinconfig_connect.exit
  %trunc.i43 = trunc i32 %call.i40 to i8
  %13 = zext i8 %trunc.i43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %trunc.i43, label %land.lhs.true.i44.vt1708_set_pinconfig_connect.exit49_crit_edge [
    i8 -16, label %land.lhs.true.i44.if.then.i47_crit_edge
    i8 -1, label %land.lhs.true.i44.if.then.i47_crit_edge51
  ]

land.lhs.true.i44.if.then.i47_crit_edge51:        ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i47

land.lhs.true.i44.if.then.i47_crit_edge:          ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i47

land.lhs.true.i44.vt1708_set_pinconfig_connect.exit49_crit_edge: ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %vt1708_set_pinconfig_connect.exit49

if.then.i47:                                      ; preds = %land.lhs.true.i44.if.then.i47_crit_edge, %land.lhs.true.i44.if.then.i47_crit_edge51
  %and13.i45 = and i32 %call.i40, 1073741823
  %call14.i46 = tail call i32 @snd_hda_codec_set_pincfg(ptr noundef %codec, i16 noundef zeroext 36, i32 noundef %and13.i45) #8
  br label %vt1708_set_pinconfig_connect.exit49

vt1708_set_pinconfig_connect.exit49:              ; preds = %if.then.i47, %land.lhs.true.i44.vt1708_set_pinconfig_connect.exit49_crit_edge, %vt1708_set_pinconfig_connect.exit.vt1708_set_pinconfig_connect.exit49_crit_edge
  %call8 = tail call i32 @snd_hda_add_verbs(ptr noundef %codec, ptr noundef nonnull @vt1708_init_verbs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %vt1708_set_pinconfig_connect.exit49.error_crit_edge, label %if.end11

vt1708_set_pinconfig_connect.exit49.error_crit_edge: ; preds = %vt1708_set_pinconfig_connect.exit49
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end11:                                         ; preds = %vt1708_set_pinconfig_connect.exit49
  %call12 = tail call fastcc i32 @via_parse_auto_config(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.error_crit_edge, label %if.end15

if.end11.error_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end15:                                         ; preds = %if.end11
  %call17 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef nonnull %call7.i.i.i, ptr noundef null, ptr noundef nonnull @vt1708_jack_detect_ctl) #8
  %tobool.not = icmp eq ptr %call17, null
  br i1 %tobool.not, label %if.end15.error_crit_edge, label %if.end19

if.end15.error_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %jackpoll_interval to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %jackpoll_interval, align 8
  br label %cleanup

error:                                            ; preds = %if.end15.error_crit_edge, %if.end11.error_crit_edge, %vt1708_set_pinconfig_connect.exit49.error_crit_edge
  %err.0 = phi i32 [ %call8, %vt1708_set_pinconfig_connect.exit49.error_crit_edge ], [ %call12, %if.end11.error_crit_edge ], [ -12, %if.end15.error_crit_edge ]
  %15 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spec1.i, align 8
  %codec_type.i.i = getelementptr inbounds %struct.via_spec, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %codec_type.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %codec_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i.i = icmp eq i32 %18, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %error.via_free.exit_crit_edge

error.via_free.exit_crit_edge:                    ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

lor.lhs.false.i.i:                                ; preds = %error
  %hp_outs.i.i = getelementptr inbounds %struct.hda_gen_spec, ptr %16, i32 0, i32 33, i32 4
  %19 = ptrtoint ptr %hp_outs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hp_outs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i.via_free.exit_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.via_free.exit_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %hp_work_active.i.i = getelementptr inbounds %struct.via_spec, ptr %16, i32 0, i32 4
  %21 = ptrtoint ptr %hp_work_active.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hp_work_active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool2.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.via_free.exit_crit_edge, label %if.then3.i.i

if.end.i.i.via_free.exit_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3969, i32 noundef 1) #8
  %23 = ptrtoint ptr %jackpoll_interval to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %jackpoll_interval, align 8
  %jackpoll_work.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 39
  %call4.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jackpoll_work.i.i) #8
  %24 = ptrtoint ptr %hp_work_active.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %hp_work_active.i.i, align 4
  br label %via_free.exit

via_free.exit:                                    ; preds = %if.then3.i.i, %if.end.i.i.via_free.exit_crit_edge, %lor.lhs.false.i.i.via_free.exit_crit_edge, %error.via_free.exit_crit_edge
  tail call void @snd_hda_gen_free(ptr noundef %codec) #8
  br label %cleanup

cleanup:                                          ; preds = %via_free.exit, %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %via_free.exit ], [ 0, %if.end19 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_vt1709(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5728) #11
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec1.i, align 8
  %call2.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #8
  %call3.i = tail call fastcc i32 @get_codec_type(ptr noundef %codec) #8
  %codec_type.i = getelementptr inbounds %struct.via_spec, ptr %call7.i.i.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call3.i)
  %cmp5.i = icmp eq i32 %call3.i, 6
  %spec.select.i = select i1 %cmp5.i, i32 5, i32 %call3.i
  %2 = ptrtoint ptr %codec_type.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select.i, ptr %codec_type.i, align 4
  %indep_hp.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 58
  %3 = ptrtoint ptr %indep_hp.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load.i = load i64, ptr %indep_hp.i, align 4
  %pcm_playback_hook.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 79
  %4 = ptrtoint ptr %pcm_playback_hook.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @via_playback_pcm_hook, ptr %pcm_playback_hook.i, align 4
  %bf.set17.i = and i64 %bf.load.i, -323733159937
  %power_save_node.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %5 = ptrtoint ptr %power_save_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load23.i = load i32, ptr %power_save_node.i, align 4
  %bf.set25.i = or i32 %bf.load23.i, 16384
  store i32 %bf.set25.i, ptr %power_save_node.i, align 4
  %bf.set29.i = or i64 %bf.set17.i, 319438192640
  store i64 %bf.set29.i, ptr %indep_hp.i, align 4
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %6 = call ptr @memcpy(ptr %patch_ops.i, ptr @via_patch_ops, i32 40)
  %mixer_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 18
  %7 = ptrtoint ptr %mixer_nid to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 24, ptr %mixer_nid, align 2
  %call1 = tail call fastcc i32 @via_parse_auto_config(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %error, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error:                                            ; preds = %if.end
  %8 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spec1.i, align 8
  %codec_type.i.i = getelementptr inbounds %struct.via_spec, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %codec_type.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %codec_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %error.via_free.exit_crit_edge

error.via_free.exit_crit_edge:                    ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

lor.lhs.false.i.i:                                ; preds = %error
  %hp_outs.i.i = getelementptr inbounds %struct.hda_gen_spec, ptr %9, i32 0, i32 33, i32 4
  %12 = ptrtoint ptr %hp_outs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hp_outs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i.via_free.exit_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.via_free.exit_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %hp_work_active.i.i = getelementptr inbounds %struct.via_spec, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %hp_work_active.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hp_work_active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool2.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.via_free.exit_crit_edge, label %if.then3.i.i

if.end.i.i.via_free.exit_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3969, i32 noundef 1) #8
  %jackpoll_interval.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 38
  %16 = ptrtoint ptr %jackpoll_interval.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %jackpoll_interval.i.i, align 8
  %jackpoll_work.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 39
  %call4.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jackpoll_work.i.i) #8
  %17 = ptrtoint ptr %hp_work_active.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %hp_work_active.i.i, align 4
  br label %via_free.exit

via_free.exit:                                    ; preds = %if.then3.i.i, %if.end.i.i.via_free.exit_crit_edge, %lor.lhs.false.i.i.via_free.exit_crit_edge, %error.via_free.exit_crit_edge
  tail call void @snd_hda_gen_free(ptr noundef %codec) #8
  br label %cleanup

cleanup:                                          ; preds = %via_free.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %via_free.exit ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_vt1708B(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @get_codec_type(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call)
  %cmp = icmp eq i32 %call, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @patch_vt1708S(ptr noundef %codec)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5728) #11
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec1.i, align 8
  %call2.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #8
  %call3.i = tail call fastcc i32 @get_codec_type(ptr noundef %codec) #8
  %codec_type.i = getelementptr inbounds %struct.via_spec, ptr %call7.i.i.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call3.i)
  %cmp5.i = icmp eq i32 %call3.i, 6
  %spec.select.i = select i1 %cmp5.i, i32 5, i32 %call3.i
  %2 = ptrtoint ptr %codec_type.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select.i, ptr %codec_type.i, align 4
  %indep_hp.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 58
  %3 = ptrtoint ptr %indep_hp.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load.i = load i64, ptr %indep_hp.i, align 4
  %pcm_playback_hook.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 79
  %4 = ptrtoint ptr %pcm_playback_hook.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @via_playback_pcm_hook, ptr %pcm_playback_hook.i, align 4
  %bf.set17.i = and i64 %bf.load.i, -323733159937
  %power_save_node.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %5 = ptrtoint ptr %power_save_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load23.i = load i32, ptr %power_save_node.i, align 4
  %bf.set25.i = or i32 %bf.load23.i, 16384
  store i32 %bf.set25.i, ptr %power_save_node.i, align 4
  %bf.set29.i = or i64 %bf.set17.i, 319438192640
  store i64 %bf.set29.i, ptr %indep_hp.i, align 4
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %6 = call ptr @memcpy(ptr %patch_ops.i, ptr @via_patch_ops, i32 40)
  %mixer_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 18
  %7 = ptrtoint ptr %mixer_nid to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 22, ptr %mixer_nid, align 2
  %call6 = tail call fastcc i32 @via_parse_auto_config(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %error, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error:                                            ; preds = %if.end5
  %8 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spec1.i, align 8
  %codec_type.i.i = getelementptr inbounds %struct.via_spec, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %codec_type.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %codec_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %error.via_free.exit_crit_edge

error.via_free.exit_crit_edge:                    ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

lor.lhs.false.i.i:                                ; preds = %error
  %hp_outs.i.i = getelementptr inbounds %struct.hda_gen_spec, ptr %9, i32 0, i32 33, i32 4
  %12 = ptrtoint ptr %hp_outs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hp_outs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i.via_free.exit_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.via_free.exit_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %hp_work_active.i.i = getelementptr inbounds %struct.via_spec, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %hp_work_active.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hp_work_active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool2.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.via_free.exit_crit_edge, label %if.then3.i.i

if.end.i.i.via_free.exit_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3969, i32 noundef 1) #8
  %jackpoll_interval.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 38
  %16 = ptrtoint ptr %jackpoll_interval.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %jackpoll_interval.i.i, align 8
  %jackpoll_work.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 39
  %call4.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jackpoll_work.i.i) #8
  %17 = ptrtoint ptr %hp_work_active.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %hp_work_active.i.i, align 4
  br label %via_free.exit

via_free.exit:                                    ; preds = %if.then3.i.i, %if.end.i.i.via_free.exit_crit_edge, %lor.lhs.false.i.i.via_free.exit_crit_edge, %error.via_free.exit_crit_edge
  tail call void @snd_hda_gen_free(ptr noundef %codec) #8
  br label %cleanup

cleanup:                                          ; preds = %via_free.exit, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call6, %via_free.exit ], [ 0, %if.end5.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_vt1708S(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5728) #11
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec1.i, align 8
  %call2.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #8
  %call3.i = tail call fastcc i32 @get_codec_type(ptr noundef %codec) #8
  %codec_type.i = getelementptr inbounds %struct.via_spec, ptr %call7.i.i.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call3.i)
  %cmp5.i = icmp eq i32 %call3.i, 6
  %spec.select.i = select i1 %cmp5.i, i32 5, i32 %call3.i
  %2 = ptrtoint ptr %codec_type.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select.i, ptr %codec_type.i, align 4
  %indep_hp.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 58
  %3 = ptrtoint ptr %indep_hp.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load.i = load i64, ptr %indep_hp.i, align 4
  %pcm_playback_hook.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 79
  %4 = ptrtoint ptr %pcm_playback_hook.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @via_playback_pcm_hook, ptr %pcm_playback_hook.i, align 4
  %bf.set17.i = and i64 %bf.load.i, -323733159937
  %power_save_node.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %5 = ptrtoint ptr %power_save_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load23.i = load i32, ptr %power_save_node.i, align 4
  %bf.set25.i = or i32 %bf.load23.i, 16384
  store i32 %bf.set25.i, ptr %power_save_node.i, align 4
  %bf.set29.i = or i64 %bf.set17.i, 319438192640
  store i64 %bf.set29.i, ptr %indep_hp.i, align 4
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %6 = call ptr @memcpy(ptr %patch_ops.i, ptr @via_patch_ops, i32 40)
  %mixer_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 18
  %7 = ptrtoint ptr %mixer_nid to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 22, ptr %mixer_nid, align 2
  %start_nid.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %8 = ptrtoint ptr %start_nid.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %start_nid.i.i, align 4
  %conv1.i.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 26, i16 %9)
  %cmp.i.i = icmp ugt i16 %9, 26
  br i1 %cmp.i.i, label %if.end.override_mic_boost.exit_crit_edge, label %lor.lhs.false.i.i

if.end.override_mic_boost.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %override_mic_boost.exit

lor.lhs.false.i.i:                                ; preds = %if.end
  %num_nodes.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %10 = ptrtoint ptr %num_nodes.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_nodes.i.i, align 8
  %add.i.i = add i32 %11, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %add.i.i)
  %cmp8.not.i.i = icmp ugt i32 %add.i.i, 26
  br i1 %cmp8.not.i.i, label %if.then.i.i, label %lor.lhs.false.i.i.override_mic_boost.exit_crit_edge

lor.lhs.false.i.i.override_mic_boost.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %override_mic_boost.exit

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %wcaps.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %12 = ptrtoint ptr %wcaps.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wcaps.i.i, align 4
  %sub.i.i = sub nsw i32 26, %conv1.i.i
  %arrayidx.i.i = getelementptr i32, ptr %13, i32 %sub.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %phi.bo.i = or i32 %15, 2
  store i32 %phi.bo.i, ptr %arrayidx.i.i, align 4
  br label %override_mic_boost.exit

override_mic_boost.exit:                          ; preds = %if.then.i.i, %lor.lhs.false.i.i.override_mic_boost.exit_crit_edge, %if.end.override_mic_boost.exit_crit_edge
  %call6.i = tail call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 26, i32 noundef 0, i32 noundef 2622208) #8
  %16 = ptrtoint ptr %start_nid.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %start_nid.i.i, align 4
  %conv1.i.i32 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %17)
  %cmp.i.i33 = icmp ugt i16 %17, 30
  br i1 %cmp.i.i33, label %override_mic_boost.exit.override_mic_boost.exit52_crit_edge, label %lor.lhs.false.i.i37

override_mic_boost.exit.override_mic_boost.exit52_crit_edge: ; preds = %override_mic_boost.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %override_mic_boost.exit52

lor.lhs.false.i.i37:                              ; preds = %override_mic_boost.exit
  %num_nodes.i.i34 = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %18 = ptrtoint ptr %num_nodes.i.i34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_nodes.i.i34, align 8
  %add.i.i35 = add i32 %19, %conv1.i.i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %add.i.i35)
  %cmp8.not.i.i36 = icmp ugt i32 %add.i.i35, 30
  br i1 %cmp8.not.i.i36, label %if.then.i.i50, label %lor.lhs.false.i.i37.override_mic_boost.exit52_crit_edge

lor.lhs.false.i.i37.override_mic_boost.exit52_crit_edge: ; preds = %lor.lhs.false.i.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %override_mic_boost.exit52

if.then.i.i50:                                    ; preds = %lor.lhs.false.i.i37
  call void @__sanitizer_cov_trace_pc() #10
  %wcaps.i.i38 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %20 = ptrtoint ptr %wcaps.i.i38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wcaps.i.i38, align 4
  %sub.i.i39 = sub nsw i32 30, %conv1.i.i32
  %arrayidx.i.i40 = getelementptr i32, ptr %21, i32 %sub.i.i39
  %22 = ptrtoint ptr %arrayidx.i.i40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i40, align 4
  %phi.bo.i41 = or i32 %23, 2
  store i32 %phi.bo.i41, ptr %arrayidx.i.i40, align 4
  br label %override_mic_boost.exit52

override_mic_boost.exit52:                        ; preds = %if.then.i.i50, %lor.lhs.false.i.i37.override_mic_boost.exit52_crit_edge, %override_mic_boost.exit.override_mic_boost.exit52_crit_edge
  %call6.i51 = tail call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 30, i32 noundef 0, i32 noundef 2622208) #8
  %call1 = tail call fastcc i32 @get_codec_type(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 6
  br i1 %cmp2, label %if.then3, label %override_mic_boost.exit52.if.end5_crit_edge

override_mic_boost.exit52.if.end5_crit_edge:      ; preds = %override_mic_boost.exit52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %override_mic_boost.exit52
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @snd_hda_codec_set_name(ptr noundef %codec, ptr noundef nonnull @.str.25) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %override_mic_boost.exit52.if.end5_crit_edge
  %vendor_id = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 7
  %24 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vendor_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 285623191, i32 %25)
  %cmp6 = icmp eq i32 %25, 285623191
  br i1 %cmp6, label %if.then7, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 @snd_hda_codec_set_name(ptr noundef %codec, ptr noundef nonnull @.str.7) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %call10 = tail call i32 @snd_hda_add_verbs(ptr noundef %codec, ptr noundef nonnull @vt1708S_init_verbs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.error_crit_edge, label %if.end13

if.end9.error_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end13:                                         ; preds = %if.end9
  %call14 = tail call fastcc i32 @via_parse_auto_config(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.error_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13.error_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

error:                                            ; preds = %if.end13.error_crit_edge, %if.end9.error_crit_edge
  %err.0 = phi i32 [ %call10, %if.end9.error_crit_edge ], [ %call14, %if.end13.error_crit_edge ]
  %26 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spec1.i, align 8
  %codec_type.i.i = getelementptr inbounds %struct.via_spec, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %codec_type.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %codec_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.not.i.i = icmp eq i32 %29, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i53, label %error.via_free.exit_crit_edge

error.via_free.exit_crit_edge:                    ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

lor.lhs.false.i.i53:                              ; preds = %error
  %hp_outs.i.i = getelementptr inbounds %struct.hda_gen_spec, ptr %27, i32 0, i32 33, i32 4
  %30 = ptrtoint ptr %hp_outs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hp_outs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i53.via_free.exit_crit_edge, label %if.end.i.i54

lor.lhs.false.i.i53.via_free.exit_crit_edge:      ; preds = %lor.lhs.false.i.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

if.end.i.i54:                                     ; preds = %lor.lhs.false.i.i53
  %hp_work_active.i.i = getelementptr inbounds %struct.via_spec, ptr %27, i32 0, i32 4
  %32 = ptrtoint ptr %hp_work_active.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hp_work_active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool2.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i54.via_free.exit_crit_edge, label %if.then3.i.i

if.end.i.i54.via_free.exit_crit_edge:             ; preds = %if.end.i.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

if.then3.i.i:                                     ; preds = %if.end.i.i54
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3969, i32 noundef 1) #8
  %jackpoll_interval.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 38
  %34 = ptrtoint ptr %jackpoll_interval.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %jackpoll_interval.i.i, align 8
  %jackpoll_work.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 39
  %call4.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jackpoll_work.i.i) #8
  %35 = ptrtoint ptr %hp_work_active.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %hp_work_active.i.i, align 4
  br label %via_free.exit

via_free.exit:                                    ; preds = %if.then3.i.i, %if.end.i.i54.via_free.exit_crit_edge, %lor.lhs.false.i.i53.via_free.exit_crit_edge, %error.via_free.exit_crit_edge
  tail call void @snd_hda_gen_free(ptr noundef %codec) #8
  br label %cleanup

cleanup:                                          ; preds = %via_free.exit, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %via_free.exit ], [ 0, %if.end13.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_vt1702(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5728) #11
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec1.i, align 8
  %call2.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #8
  %call3.i = tail call fastcc i32 @get_codec_type(ptr noundef %codec) #8
  %codec_type.i = getelementptr inbounds %struct.via_spec, ptr %call7.i.i.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call3.i)
  %cmp5.i = icmp eq i32 %call3.i, 6
  %spec.select.i = select i1 %cmp5.i, i32 5, i32 %call3.i
  %2 = ptrtoint ptr %codec_type.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select.i, ptr %codec_type.i, align 4
  %indep_hp.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 58
  %3 = ptrtoint ptr %indep_hp.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load.i = load i64, ptr %indep_hp.i, align 4
  %pcm_playback_hook.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 79
  %4 = ptrtoint ptr %pcm_playback_hook.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @via_playback_pcm_hook, ptr %pcm_playback_hook.i, align 4
  %bf.set17.i = and i64 %bf.load.i, -323733159937
  %power_save_node.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %5 = ptrtoint ptr %power_save_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load23.i = load i32, ptr %power_save_node.i, align 4
  %bf.set25.i = or i32 %bf.load23.i, 16384
  store i32 %bf.set25.i, ptr %power_save_node.i, align 4
  %bf.set29.i = or i64 %bf.set17.i, 319438192640
  store i64 %bf.set29.i, ptr %indep_hp.i, align 4
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %6 = call ptr @memcpy(ptr %patch_ops.i, ptr @via_patch_ops, i32 40)
  %mixer_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 18
  %7 = ptrtoint ptr %mixer_nid to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 26, ptr %mixer_nid, align 2
  %call1 = tail call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 26, i32 noundef 0, i32 noundef -2147150057) #8
  %call2 = tail call i32 @snd_hda_add_verbs(ptr noundef %codec, ptr noundef nonnull @vt1702_init_verbs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.error_crit_edge, label %if.end5

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @via_parse_auto_config(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.error_crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.error_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

error:                                            ; preds = %if.end5.error_crit_edge, %if.end.error_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.error_crit_edge ], [ %call6, %if.end5.error_crit_edge ]
  %8 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spec1.i, align 8
  %codec_type.i.i = getelementptr inbounds %struct.via_spec, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %codec_type.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %codec_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %error.via_free.exit_crit_edge

error.via_free.exit_crit_edge:                    ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

lor.lhs.false.i.i:                                ; preds = %error
  %hp_outs.i.i = getelementptr inbounds %struct.hda_gen_spec, ptr %9, i32 0, i32 33, i32 4
  %12 = ptrtoint ptr %hp_outs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hp_outs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i.via_free.exit_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.via_free.exit_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %hp_work_active.i.i = getelementptr inbounds %struct.via_spec, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %hp_work_active.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hp_work_active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool2.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.via_free.exit_crit_edge, label %if.then3.i.i

if.end.i.i.via_free.exit_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3969, i32 noundef 1) #8
  %jackpoll_interval.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 38
  %16 = ptrtoint ptr %jackpoll_interval.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %jackpoll_interval.i.i, align 8
  %jackpoll_work.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 39
  %call4.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jackpoll_work.i.i) #8
  %17 = ptrtoint ptr %hp_work_active.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %hp_work_active.i.i, align 4
  br label %via_free.exit

via_free.exit:                                    ; preds = %if.then3.i.i, %if.end.i.i.via_free.exit_crit_edge, %lor.lhs.false.i.i.via_free.exit_crit_edge, %error.via_free.exit_crit_edge
  tail call void @snd_hda_gen_free(ptr noundef %codec) #8
  br label %cleanup

cleanup:                                          ; preds = %via_free.exit, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %via_free.exit ], [ 0, %if.end5.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_vt1718S(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5728) #11
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec1.i, align 8
  %call2.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #8
  %call3.i = tail call fastcc i32 @get_codec_type(ptr noundef %codec) #8
  %codec_type.i = getelementptr inbounds %struct.via_spec, ptr %call7.i.i.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call3.i)
  %cmp5.i = icmp eq i32 %call3.i, 6
  %spec.select.i = select i1 %cmp5.i, i32 5, i32 %call3.i
  %2 = ptrtoint ptr %codec_type.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select.i, ptr %codec_type.i, align 4
  %indep_hp.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 58
  %3 = ptrtoint ptr %indep_hp.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load.i = load i64, ptr %indep_hp.i, align 4
  %pcm_playback_hook.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 79
  %4 = ptrtoint ptr %pcm_playback_hook.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @via_playback_pcm_hook, ptr %pcm_playback_hook.i, align 4
  %bf.set17.i = and i64 %bf.load.i, -323733159937
  %power_save_node.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %5 = ptrtoint ptr %power_save_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load23.i = load i32, ptr %power_save_node.i, align 4
  %bf.set25.i = or i32 %bf.load23.i, 16384
  store i32 %bf.set25.i, ptr %power_save_node.i, align 4
  %bf.set29.i = or i64 %bf.set17.i, 319438192640
  store i64 %bf.set29.i, ptr %indep_hp.i, align 4
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %6 = call ptr @memcpy(ptr %patch_ops.i, ptr @via_patch_ops, i32 40)
  %mixer_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 18
  %7 = ptrtoint ptr %mixer_nid to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 33, ptr %mixer_nid, align 2
  %start_nid.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %8 = ptrtoint ptr %start_nid.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %start_nid.i.i, align 4
  %conv1.i.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 43, i16 %9)
  %cmp.i.i = icmp ugt i16 %9, 43
  br i1 %cmp.i.i, label %if.end.override_mic_boost.exit_crit_edge, label %lor.lhs.false.i.i

if.end.override_mic_boost.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %override_mic_boost.exit

lor.lhs.false.i.i:                                ; preds = %if.end
  %num_nodes.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %10 = ptrtoint ptr %num_nodes.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_nodes.i.i, align 8
  %add.i.i = add i32 %11, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %add.i.i)
  %cmp8.not.i.i = icmp ugt i32 %add.i.i, 43
  br i1 %cmp8.not.i.i, label %if.then.i.i, label %lor.lhs.false.i.i.override_mic_boost.exit_crit_edge

lor.lhs.false.i.i.override_mic_boost.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %override_mic_boost.exit

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %wcaps.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %12 = ptrtoint ptr %wcaps.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wcaps.i.i, align 4
  %sub.i.i = sub nsw i32 43, %conv1.i.i
  %arrayidx.i.i = getelementptr i32, ptr %13, i32 %sub.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %phi.bo.i = or i32 %15, 2
  store i32 %phi.bo.i, ptr %arrayidx.i.i, align 4
  br label %override_mic_boost.exit

override_mic_boost.exit:                          ; preds = %if.then.i.i, %lor.lhs.false.i.i.override_mic_boost.exit_crit_edge, %if.end.override_mic_boost.exit_crit_edge
  %call6.i = tail call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 43, i32 noundef 0, i32 noundef 2622208) #8
  %16 = ptrtoint ptr %start_nid.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %start_nid.i.i, align 4
  %conv1.i.i21 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 41, i16 %17)
  %cmp.i.i22 = icmp ugt i16 %17, 41
  br i1 %cmp.i.i22, label %override_mic_boost.exit.override_mic_boost.exit41_crit_edge, label %lor.lhs.false.i.i26

override_mic_boost.exit.override_mic_boost.exit41_crit_edge: ; preds = %override_mic_boost.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %override_mic_boost.exit41

lor.lhs.false.i.i26:                              ; preds = %override_mic_boost.exit
  %num_nodes.i.i23 = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %18 = ptrtoint ptr %num_nodes.i.i23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_nodes.i.i23, align 8
  %add.i.i24 = add i32 %19, %conv1.i.i21
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %add.i.i24)
  %cmp8.not.i.i25 = icmp ugt i32 %add.i.i24, 41
  br i1 %cmp8.not.i.i25, label %if.then.i.i39, label %lor.lhs.false.i.i26.override_mic_boost.exit41_crit_edge

lor.lhs.false.i.i26.override_mic_boost.exit41_crit_edge: ; preds = %lor.lhs.false.i.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %override_mic_boost.exit41

if.then.i.i39:                                    ; preds = %lor.lhs.false.i.i26
  call void @__sanitizer_cov_trace_pc() #10
  %wcaps.i.i27 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %20 = ptrtoint ptr %wcaps.i.i27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wcaps.i.i27, align 4
  %sub.i.i28 = sub nsw i32 41, %conv1.i.i21
  %arrayidx.i.i29 = getelementptr i32, ptr %21, i32 %sub.i.i28
  %22 = ptrtoint ptr %arrayidx.i.i29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i29, align 4
  %phi.bo.i30 = or i32 %23, 2
  store i32 %phi.bo.i30, ptr %arrayidx.i.i29, align 4
  br label %override_mic_boost.exit41

override_mic_boost.exit41:                        ; preds = %if.then.i.i39, %lor.lhs.false.i.i26.override_mic_boost.exit41_crit_edge, %override_mic_boost.exit.override_mic_boost.exit41_crit_edge
  %call6.i40 = tail call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 41, i32 noundef 0, i32 noundef 2622208) #8
  tail call fastcc void @add_secret_dac_path(ptr noundef %codec)
  %call2 = tail call i32 @snd_hda_add_verbs(ptr noundef %codec, ptr noundef nonnull @vt1718S_init_verbs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %override_mic_boost.exit41.error_crit_edge, label %if.end5

override_mic_boost.exit41.error_crit_edge:        ; preds = %override_mic_boost.exit41
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end5:                                          ; preds = %override_mic_boost.exit41
  %call6 = tail call fastcc i32 @via_parse_auto_config(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.error_crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.error_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

error:                                            ; preds = %if.end5.error_crit_edge, %override_mic_boost.exit41.error_crit_edge
  %err.0 = phi i32 [ %call2, %override_mic_boost.exit41.error_crit_edge ], [ %call6, %if.end5.error_crit_edge ]
  %24 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spec1.i, align 8
  %codec_type.i.i = getelementptr inbounds %struct.via_spec, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %codec_type.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %codec_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i.i = icmp eq i32 %27, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i42, label %error.via_free.exit_crit_edge

error.via_free.exit_crit_edge:                    ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

lor.lhs.false.i.i42:                              ; preds = %error
  %hp_outs.i.i = getelementptr inbounds %struct.hda_gen_spec, ptr %25, i32 0, i32 33, i32 4
  %28 = ptrtoint ptr %hp_outs.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hp_outs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i42.via_free.exit_crit_edge, label %if.end.i.i43

lor.lhs.false.i.i42.via_free.exit_crit_edge:      ; preds = %lor.lhs.false.i.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

if.end.i.i43:                                     ; preds = %lor.lhs.false.i.i42
  %hp_work_active.i.i = getelementptr inbounds %struct.via_spec, ptr %25, i32 0, i32 4
  %30 = ptrtoint ptr %hp_work_active.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hp_work_active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool2.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i43.via_free.exit_crit_edge, label %if.then3.i.i

if.end.i.i43.via_free.exit_crit_edge:             ; preds = %if.end.i.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

if.then3.i.i:                                     ; preds = %if.end.i.i43
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3969, i32 noundef 1) #8
  %jackpoll_interval.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 38
  %32 = ptrtoint ptr %jackpoll_interval.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %jackpoll_interval.i.i, align 8
  %jackpoll_work.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 39
  %call4.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jackpoll_work.i.i) #8
  %33 = ptrtoint ptr %hp_work_active.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %hp_work_active.i.i, align 4
  br label %via_free.exit

via_free.exit:                                    ; preds = %if.then3.i.i, %if.end.i.i43.via_free.exit_crit_edge, %lor.lhs.false.i.i42.via_free.exit_crit_edge, %error.via_free.exit_crit_edge
  tail call void @snd_hda_gen_free(ptr noundef %codec) #8
  br label %cleanup

cleanup:                                          ; preds = %via_free.exit, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %via_free.exit ], [ 0, %if.end5.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_vt1716S(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5728) #11
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec1.i, align 8
  %call2.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #8
  %call3.i = tail call fastcc i32 @get_codec_type(ptr noundef %codec) #8
  %codec_type.i = getelementptr inbounds %struct.via_spec, ptr %call7.i.i.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call3.i)
  %cmp5.i = icmp eq i32 %call3.i, 6
  %spec.select.i = select i1 %cmp5.i, i32 5, i32 %call3.i
  %2 = ptrtoint ptr %codec_type.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select.i, ptr %codec_type.i, align 4
  %indep_hp.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 58
  %3 = ptrtoint ptr %indep_hp.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load.i = load i64, ptr %indep_hp.i, align 4
  %pcm_playback_hook.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 79
  %4 = ptrtoint ptr %pcm_playback_hook.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @via_playback_pcm_hook, ptr %pcm_playback_hook.i, align 4
  %bf.set17.i = and i64 %bf.load.i, -323733159937
  %power_save_node.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %5 = ptrtoint ptr %power_save_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load23.i = load i32, ptr %power_save_node.i, align 4
  %bf.set25.i = or i32 %bf.load23.i, 16384
  store i32 %bf.set25.i, ptr %power_save_node.i, align 4
  %bf.set29.i = or i64 %bf.set17.i, 319438192640
  store i64 %bf.set29.i, ptr %indep_hp.i, align 4
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %6 = call ptr @memcpy(ptr %patch_ops.i, ptr @via_patch_ops, i32 40)
  %mixer_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 18
  %7 = ptrtoint ptr %mixer_nid to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 22, ptr %mixer_nid, align 2
  %start_nid.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %8 = ptrtoint ptr %start_nid.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %start_nid.i.i, align 4
  %conv1.i.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 26, i16 %9)
  %cmp.i.i = icmp ugt i16 %9, 26
  br i1 %cmp.i.i, label %if.end.override_mic_boost.exit_crit_edge, label %lor.lhs.false.i.i

if.end.override_mic_boost.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %override_mic_boost.exit

lor.lhs.false.i.i:                                ; preds = %if.end
  %num_nodes.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %10 = ptrtoint ptr %num_nodes.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_nodes.i.i, align 8
  %add.i.i = add i32 %11, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %add.i.i)
  %cmp8.not.i.i = icmp ugt i32 %add.i.i, 26
  br i1 %cmp8.not.i.i, label %if.then.i.i, label %lor.lhs.false.i.i.override_mic_boost.exit_crit_edge

lor.lhs.false.i.i.override_mic_boost.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %override_mic_boost.exit

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %wcaps.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %12 = ptrtoint ptr %wcaps.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wcaps.i.i, align 4
  %sub.i.i = sub nsw i32 26, %conv1.i.i
  %arrayidx.i.i = getelementptr i32, ptr %13, i32 %sub.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %phi.bo.i = or i32 %15, 2
  store i32 %phi.bo.i, ptr %arrayidx.i.i, align 4
  br label %override_mic_boost.exit

override_mic_boost.exit:                          ; preds = %if.then.i.i, %lor.lhs.false.i.i.override_mic_boost.exit_crit_edge, %if.end.override_mic_boost.exit_crit_edge
  %call6.i = tail call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 26, i32 noundef 0, i32 noundef 2622208) #8
  %16 = ptrtoint ptr %start_nid.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %start_nid.i.i, align 4
  %conv1.i.i33 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %17)
  %cmp.i.i34 = icmp ugt i16 %17, 30
  br i1 %cmp.i.i34, label %override_mic_boost.exit.override_mic_boost.exit53_crit_edge, label %lor.lhs.false.i.i38

override_mic_boost.exit.override_mic_boost.exit53_crit_edge: ; preds = %override_mic_boost.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %override_mic_boost.exit53

lor.lhs.false.i.i38:                              ; preds = %override_mic_boost.exit
  %num_nodes.i.i35 = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %18 = ptrtoint ptr %num_nodes.i.i35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_nodes.i.i35, align 8
  %add.i.i36 = add i32 %19, %conv1.i.i33
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %add.i.i36)
  %cmp8.not.i.i37 = icmp ugt i32 %add.i.i36, 30
  br i1 %cmp8.not.i.i37, label %if.then.i.i51, label %lor.lhs.false.i.i38.override_mic_boost.exit53_crit_edge

lor.lhs.false.i.i38.override_mic_boost.exit53_crit_edge: ; preds = %lor.lhs.false.i.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %override_mic_boost.exit53

if.then.i.i51:                                    ; preds = %lor.lhs.false.i.i38
  call void @__sanitizer_cov_trace_pc() #10
  %wcaps.i.i39 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %20 = ptrtoint ptr %wcaps.i.i39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wcaps.i.i39, align 4
  %sub.i.i40 = sub nsw i32 30, %conv1.i.i33
  %arrayidx.i.i41 = getelementptr i32, ptr %21, i32 %sub.i.i40
  %22 = ptrtoint ptr %arrayidx.i.i41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i41, align 4
  %phi.bo.i42 = or i32 %23, 2
  store i32 %phi.bo.i42, ptr %arrayidx.i.i41, align 4
  br label %override_mic_boost.exit53

override_mic_boost.exit53:                        ; preds = %if.then.i.i51, %lor.lhs.false.i.i38.override_mic_boost.exit53_crit_edge, %override_mic_boost.exit.override_mic_boost.exit53_crit_edge
  %call6.i52 = tail call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 30, i32 noundef 0, i32 noundef 2622208) #8
  %call1 = tail call i32 @snd_hda_add_verbs(ptr noundef %codec, ptr noundef nonnull @vt1716S_init_verbs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %override_mic_boost.exit53.error_crit_edge, label %if.end4

override_mic_boost.exit53.error_crit_edge:        ; preds = %override_mic_boost.exit53
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end4:                                          ; preds = %override_mic_boost.exit53
  %call5 = tail call fastcc i32 @via_parse_auto_config(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.error_crit_edge, label %if.end8

if.end4.error_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end8:                                          ; preds = %if.end4
  %call10 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef nonnull %call7.i.i.i, ptr noundef null, ptr noundef nonnull @vt1716s_dmic_mixer_vol) #8
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %if.end8.error_crit_edge, label %lor.lhs.false

if.end8.error_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

lor.lhs.false:                                    ; preds = %if.end8
  %call12 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef nonnull %call7.i.i.i, ptr noundef null, ptr noundef nonnull @vt1716s_dmic_mixer_sw) #8
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %lor.lhs.false.error_crit_edge, label %lor.lhs.false14

lor.lhs.false.error_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %call16 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef nonnull %call7.i.i.i, ptr noundef null, ptr noundef nonnull @vt1716S_mono_out_mixer) #8
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %lor.lhs.false14.error_crit_edge, label %lor.lhs.false14.cleanup_crit_edge

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false14.error_crit_edge:                  ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

error:                                            ; preds = %lor.lhs.false14.error_crit_edge, %lor.lhs.false.error_crit_edge, %if.end8.error_crit_edge, %if.end4.error_crit_edge, %override_mic_boost.exit53.error_crit_edge
  %err.0 = phi i32 [ %call1, %override_mic_boost.exit53.error_crit_edge ], [ %call5, %if.end4.error_crit_edge ], [ -12, %lor.lhs.false14.error_crit_edge ], [ -12, %lor.lhs.false.error_crit_edge ], [ -12, %if.end8.error_crit_edge ]
  %24 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spec1.i, align 8
  %codec_type.i.i = getelementptr inbounds %struct.via_spec, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %codec_type.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %codec_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i.i = icmp eq i32 %27, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i54, label %error.via_free.exit_crit_edge

error.via_free.exit_crit_edge:                    ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

lor.lhs.false.i.i54:                              ; preds = %error
  %hp_outs.i.i = getelementptr inbounds %struct.hda_gen_spec, ptr %25, i32 0, i32 33, i32 4
  %28 = ptrtoint ptr %hp_outs.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hp_outs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i54.via_free.exit_crit_edge, label %if.end.i.i55

lor.lhs.false.i.i54.via_free.exit_crit_edge:      ; preds = %lor.lhs.false.i.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

if.end.i.i55:                                     ; preds = %lor.lhs.false.i.i54
  %hp_work_active.i.i = getelementptr inbounds %struct.via_spec, ptr %25, i32 0, i32 4
  %30 = ptrtoint ptr %hp_work_active.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hp_work_active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool2.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i55.via_free.exit_crit_edge, label %if.then3.i.i

if.end.i.i55.via_free.exit_crit_edge:             ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

if.then3.i.i:                                     ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3969, i32 noundef 1) #8
  %jackpoll_interval.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 38
  %32 = ptrtoint ptr %jackpoll_interval.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %jackpoll_interval.i.i, align 8
  %jackpoll_work.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 39
  %call4.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jackpoll_work.i.i) #8
  %33 = ptrtoint ptr %hp_work_active.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %hp_work_active.i.i, align 4
  br label %via_free.exit

via_free.exit:                                    ; preds = %if.then3.i.i, %if.end.i.i55.via_free.exit_crit_edge, %lor.lhs.false.i.i54.via_free.exit_crit_edge, %error.via_free.exit_crit_edge
  tail call void @snd_hda_gen_free(ptr noundef %codec) #8
  br label %cleanup

cleanup:                                          ; preds = %via_free.exit, %lor.lhs.false14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %via_free.exit ], [ 0, %lor.lhs.false14.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_vt2002P(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5728) #11
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec1.i, align 8
  %call2.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #8
  %call3.i = tail call fastcc i32 @get_codec_type(ptr noundef %codec) #8
  %codec_type.i = getelementptr inbounds %struct.via_spec, ptr %call7.i.i.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call3.i)
  %cmp5.i = icmp eq i32 %call3.i, 6
  %spec.select.i = select i1 %cmp5.i, i32 5, i32 %call3.i
  %2 = ptrtoint ptr %codec_type.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select.i, ptr %codec_type.i, align 4
  %indep_hp.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 58
  %3 = ptrtoint ptr %indep_hp.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load.i = load i64, ptr %indep_hp.i, align 4
  %pcm_playback_hook.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 79
  %4 = ptrtoint ptr %pcm_playback_hook.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @via_playback_pcm_hook, ptr %pcm_playback_hook.i, align 4
  %bf.set17.i = and i64 %bf.load.i, -323733159937
  %power_save_node.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %5 = ptrtoint ptr %power_save_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load23.i = load i32, ptr %power_save_node.i, align 4
  %bf.set25.i = or i32 %bf.load23.i, 16384
  store i32 %bf.set25.i, ptr %power_save_node.i, align 4
  %bf.set29.i = or i64 %bf.set17.i, 319438192640
  store i64 %bf.set29.i, ptr %indep_hp.i, align 4
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %6 = call ptr @memcpy(ptr %patch_ops.i, ptr @via_patch_ops, i32 40)
  %mixer_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 18
  %7 = ptrtoint ptr %mixer_nid to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 33, ptr %mixer_nid, align 2
  %start_nid.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %8 = ptrtoint ptr %start_nid.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %start_nid.i.i, align 4
  %conv1.i.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 43, i16 %9)
  %cmp.i.i = icmp ugt i16 %9, 43
  br i1 %cmp.i.i, label %if.end.override_mic_boost.exit_crit_edge, label %lor.lhs.false.i.i

if.end.override_mic_boost.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %override_mic_boost.exit

lor.lhs.false.i.i:                                ; preds = %if.end
  %num_nodes.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %10 = ptrtoint ptr %num_nodes.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_nodes.i.i, align 8
  %add.i.i = add i32 %11, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %add.i.i)
  %cmp8.not.i.i = icmp ugt i32 %add.i.i, 43
  br i1 %cmp8.not.i.i, label %if.then.i.i, label %lor.lhs.false.i.i.override_mic_boost.exit_crit_edge

lor.lhs.false.i.i.override_mic_boost.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %override_mic_boost.exit

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %wcaps.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %12 = ptrtoint ptr %wcaps.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wcaps.i.i, align 4
  %sub.i.i = sub nsw i32 43, %conv1.i.i
  %arrayidx.i.i = getelementptr i32, ptr %13, i32 %sub.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %phi.bo.i = or i32 %15, 2
  store i32 %phi.bo.i, ptr %arrayidx.i.i, align 4
  br label %override_mic_boost.exit

override_mic_boost.exit:                          ; preds = %if.then.i.i, %lor.lhs.false.i.i.override_mic_boost.exit_crit_edge, %if.end.override_mic_boost.exit_crit_edge
  %call6.i = tail call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 43, i32 noundef 0, i32 noundef 2622208) #8
  %16 = ptrtoint ptr %start_nid.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %start_nid.i.i, align 4
  %conv1.i.i35 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 41, i16 %17)
  %cmp.i.i36 = icmp ugt i16 %17, 41
  br i1 %cmp.i.i36, label %override_mic_boost.exit.override_mic_boost.exit55_crit_edge, label %lor.lhs.false.i.i40

override_mic_boost.exit.override_mic_boost.exit55_crit_edge: ; preds = %override_mic_boost.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %override_mic_boost.exit55

lor.lhs.false.i.i40:                              ; preds = %override_mic_boost.exit
  %num_nodes.i.i37 = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %18 = ptrtoint ptr %num_nodes.i.i37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_nodes.i.i37, align 8
  %add.i.i38 = add i32 %19, %conv1.i.i35
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %add.i.i38)
  %cmp8.not.i.i39 = icmp ugt i32 %add.i.i38, 41
  br i1 %cmp8.not.i.i39, label %if.then.i.i53, label %lor.lhs.false.i.i40.override_mic_boost.exit55_crit_edge

lor.lhs.false.i.i40.override_mic_boost.exit55_crit_edge: ; preds = %lor.lhs.false.i.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %override_mic_boost.exit55

if.then.i.i53:                                    ; preds = %lor.lhs.false.i.i40
  call void @__sanitizer_cov_trace_pc() #10
  %wcaps.i.i41 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %20 = ptrtoint ptr %wcaps.i.i41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wcaps.i.i41, align 4
  %sub.i.i42 = sub nsw i32 41, %conv1.i.i35
  %arrayidx.i.i43 = getelementptr i32, ptr %21, i32 %sub.i.i42
  %22 = ptrtoint ptr %arrayidx.i.i43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i43, align 4
  %phi.bo.i44 = or i32 %23, 2
  store i32 %phi.bo.i44, ptr %arrayidx.i.i43, align 4
  br label %override_mic_boost.exit55

override_mic_boost.exit55:                        ; preds = %if.then.i.i53, %lor.lhs.false.i.i40.override_mic_boost.exit55_crit_edge, %override_mic_boost.exit.override_mic_boost.exit55_crit_edge
  %call6.i54 = tail call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 41, i32 noundef 0, i32 noundef 2622208) #8
  %24 = ptrtoint ptr %codec_type.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %codec_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %25)
  %cmp1 = icmp eq i32 %25, 12
  br i1 %cmp1, label %if.then2, label %override_mic_boost.exit55.if.end3_crit_edge

override_mic_boost.exit55.if.end3_crit_edge:      ; preds = %override_mic_boost.exit55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %override_mic_boost.exit55
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @snd_hda_override_conn_list(ptr noundef %codec, i16 noundef zeroext 36, i32 noundef 2, ptr noundef nonnull @fix_vt1802_connections.conn_24) #8
  %call1.i = tail call i32 @snd_hda_override_conn_list(ptr noundef %codec, i16 noundef zeroext 51, i32 noundef 1, ptr noundef nonnull @fix_vt1802_connections.conn_33) #8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %override_mic_boost.exit55.if.end3_crit_edge
  tail call fastcc void @add_secret_dac_path(ptr noundef %codec)
  tail call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef null, ptr noundef nonnull @vt2002p_fixups, ptr noundef nonnull @via_fixups) #8
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 0) #8
  %26 = ptrtoint ptr %codec_type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %codec_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %27)
  %cmp6 = icmp eq i32 %27, 12
  %vt1802_init_verbs.vt2002P_init_verbs = select i1 %cmp6, ptr @vt1802_init_verbs, ptr @vt2002P_init_verbs
  %call9 = tail call i32 @snd_hda_add_verbs(ptr noundef %codec, ptr noundef nonnull %vt1802_init_verbs.vt2002P_init_verbs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp11 = icmp slt i32 %call9, 0
  br i1 %cmp11, label %if.end3.error_crit_edge, label %if.end13

if.end3.error_crit_edge:                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end13:                                         ; preds = %if.end3
  %call14 = tail call fastcc i32 @via_parse_auto_config(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.error_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13.error_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

error:                                            ; preds = %if.end13.error_crit_edge, %if.end3.error_crit_edge
  %err.1 = phi i32 [ %call9, %if.end3.error_crit_edge ], [ %call14, %if.end13.error_crit_edge ]
  %28 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %spec1.i, align 8
  %codec_type.i.i = getelementptr inbounds %struct.via_spec, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %codec_type.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %codec_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.not.i.i = icmp eq i32 %31, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i56, label %error.via_free.exit_crit_edge

error.via_free.exit_crit_edge:                    ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

lor.lhs.false.i.i56:                              ; preds = %error
  %hp_outs.i.i = getelementptr inbounds %struct.hda_gen_spec, ptr %29, i32 0, i32 33, i32 4
  %32 = ptrtoint ptr %hp_outs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hp_outs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i56.via_free.exit_crit_edge, label %if.end.i.i57

lor.lhs.false.i.i56.via_free.exit_crit_edge:      ; preds = %lor.lhs.false.i.i56
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

if.end.i.i57:                                     ; preds = %lor.lhs.false.i.i56
  %hp_work_active.i.i = getelementptr inbounds %struct.via_spec, ptr %29, i32 0, i32 4
  %34 = ptrtoint ptr %hp_work_active.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hp_work_active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool2.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i57.via_free.exit_crit_edge, label %if.then3.i.i

if.end.i.i57.via_free.exit_crit_edge:             ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

if.then3.i.i:                                     ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3969, i32 noundef 1) #8
  %jackpoll_interval.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 38
  %36 = ptrtoint ptr %jackpoll_interval.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %jackpoll_interval.i.i, align 8
  %jackpoll_work.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 39
  %call4.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jackpoll_work.i.i) #8
  %37 = ptrtoint ptr %hp_work_active.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %hp_work_active.i.i, align 4
  br label %via_free.exit

via_free.exit:                                    ; preds = %if.then3.i.i, %if.end.i.i57.via_free.exit_crit_edge, %lor.lhs.false.i.i56.via_free.exit_crit_edge, %error.via_free.exit_crit_edge
  tail call void @snd_hda_gen_free(ptr noundef %codec) #8
  br label %cleanup

cleanup:                                          ; preds = %via_free.exit, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %via_free.exit ], [ 0, %if.end13.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_vt1812(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5728) #11
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec1.i, align 8
  %call2.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #8
  %call3.i = tail call fastcc i32 @get_codec_type(ptr noundef %codec) #8
  %codec_type.i = getelementptr inbounds %struct.via_spec, ptr %call7.i.i.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call3.i)
  %cmp5.i = icmp eq i32 %call3.i, 6
  %spec.select.i = select i1 %cmp5.i, i32 5, i32 %call3.i
  %2 = ptrtoint ptr %codec_type.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select.i, ptr %codec_type.i, align 4
  %indep_hp.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 58
  %3 = ptrtoint ptr %indep_hp.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load.i = load i64, ptr %indep_hp.i, align 4
  %pcm_playback_hook.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 79
  %4 = ptrtoint ptr %pcm_playback_hook.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @via_playback_pcm_hook, ptr %pcm_playback_hook.i, align 4
  %bf.set17.i = and i64 %bf.load.i, -323733159937
  %power_save_node.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %5 = ptrtoint ptr %power_save_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load23.i = load i32, ptr %power_save_node.i, align 4
  %bf.set25.i = or i32 %bf.load23.i, 16384
  store i32 %bf.set25.i, ptr %power_save_node.i, align 4
  %bf.set29.i = or i64 %bf.set17.i, 319438192640
  store i64 %bf.set29.i, ptr %indep_hp.i, align 4
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %6 = call ptr @memcpy(ptr %patch_ops.i, ptr @via_patch_ops, i32 40)
  %mixer_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 18
  %7 = ptrtoint ptr %mixer_nid to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 33, ptr %mixer_nid, align 2
  %start_nid.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %8 = ptrtoint ptr %start_nid.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %start_nid.i.i, align 4
  %conv1.i.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 43, i16 %9)
  %cmp.i.i = icmp ugt i16 %9, 43
  br i1 %cmp.i.i, label %if.end.override_mic_boost.exit_crit_edge, label %lor.lhs.false.i.i

if.end.override_mic_boost.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %override_mic_boost.exit

lor.lhs.false.i.i:                                ; preds = %if.end
  %num_nodes.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %10 = ptrtoint ptr %num_nodes.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_nodes.i.i, align 8
  %add.i.i = add i32 %11, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %add.i.i)
  %cmp8.not.i.i = icmp ugt i32 %add.i.i, 43
  br i1 %cmp8.not.i.i, label %if.then.i.i, label %lor.lhs.false.i.i.override_mic_boost.exit_crit_edge

lor.lhs.false.i.i.override_mic_boost.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %override_mic_boost.exit

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %wcaps.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %12 = ptrtoint ptr %wcaps.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wcaps.i.i, align 4
  %sub.i.i = sub nsw i32 43, %conv1.i.i
  %arrayidx.i.i = getelementptr i32, ptr %13, i32 %sub.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %phi.bo.i = or i32 %15, 2
  store i32 %phi.bo.i, ptr %arrayidx.i.i, align 4
  br label %override_mic_boost.exit

override_mic_boost.exit:                          ; preds = %if.then.i.i, %lor.lhs.false.i.i.override_mic_boost.exit_crit_edge, %if.end.override_mic_boost.exit_crit_edge
  %call6.i = tail call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 43, i32 noundef 0, i32 noundef 2622208) #8
  %16 = ptrtoint ptr %start_nid.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %start_nid.i.i, align 4
  %conv1.i.i21 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 41, i16 %17)
  %cmp.i.i22 = icmp ugt i16 %17, 41
  br i1 %cmp.i.i22, label %override_mic_boost.exit.override_mic_boost.exit41_crit_edge, label %lor.lhs.false.i.i26

override_mic_boost.exit.override_mic_boost.exit41_crit_edge: ; preds = %override_mic_boost.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %override_mic_boost.exit41

lor.lhs.false.i.i26:                              ; preds = %override_mic_boost.exit
  %num_nodes.i.i23 = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %18 = ptrtoint ptr %num_nodes.i.i23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_nodes.i.i23, align 8
  %add.i.i24 = add i32 %19, %conv1.i.i21
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %add.i.i24)
  %cmp8.not.i.i25 = icmp ugt i32 %add.i.i24, 41
  br i1 %cmp8.not.i.i25, label %if.then.i.i39, label %lor.lhs.false.i.i26.override_mic_boost.exit41_crit_edge

lor.lhs.false.i.i26.override_mic_boost.exit41_crit_edge: ; preds = %lor.lhs.false.i.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %override_mic_boost.exit41

if.then.i.i39:                                    ; preds = %lor.lhs.false.i.i26
  call void @__sanitizer_cov_trace_pc() #10
  %wcaps.i.i27 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %20 = ptrtoint ptr %wcaps.i.i27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wcaps.i.i27, align 4
  %sub.i.i28 = sub nsw i32 41, %conv1.i.i21
  %arrayidx.i.i29 = getelementptr i32, ptr %21, i32 %sub.i.i28
  %22 = ptrtoint ptr %arrayidx.i.i29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i29, align 4
  %phi.bo.i30 = or i32 %23, 2
  store i32 %phi.bo.i30, ptr %arrayidx.i.i29, align 4
  br label %override_mic_boost.exit41

override_mic_boost.exit41:                        ; preds = %if.then.i.i39, %lor.lhs.false.i.i26.override_mic_boost.exit41_crit_edge, %override_mic_boost.exit.override_mic_boost.exit41_crit_edge
  %call6.i40 = tail call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 41, i32 noundef 0, i32 noundef 2622208) #8
  tail call fastcc void @add_secret_dac_path(ptr noundef %codec)
  %call2 = tail call i32 @snd_hda_add_verbs(ptr noundef %codec, ptr noundef nonnull @vt1812_init_verbs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %override_mic_boost.exit41.error_crit_edge, label %if.end5

override_mic_boost.exit41.error_crit_edge:        ; preds = %override_mic_boost.exit41
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end5:                                          ; preds = %override_mic_boost.exit41
  %call6 = tail call fastcc i32 @via_parse_auto_config(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.error_crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.error_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

error:                                            ; preds = %if.end5.error_crit_edge, %override_mic_boost.exit41.error_crit_edge
  %err.0 = phi i32 [ %call2, %override_mic_boost.exit41.error_crit_edge ], [ %call6, %if.end5.error_crit_edge ]
  %24 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spec1.i, align 8
  %codec_type.i.i = getelementptr inbounds %struct.via_spec, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %codec_type.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %codec_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i.i = icmp eq i32 %27, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i42, label %error.via_free.exit_crit_edge

error.via_free.exit_crit_edge:                    ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

lor.lhs.false.i.i42:                              ; preds = %error
  %hp_outs.i.i = getelementptr inbounds %struct.hda_gen_spec, ptr %25, i32 0, i32 33, i32 4
  %28 = ptrtoint ptr %hp_outs.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hp_outs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i42.via_free.exit_crit_edge, label %if.end.i.i43

lor.lhs.false.i.i42.via_free.exit_crit_edge:      ; preds = %lor.lhs.false.i.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

if.end.i.i43:                                     ; preds = %lor.lhs.false.i.i42
  %hp_work_active.i.i = getelementptr inbounds %struct.via_spec, ptr %25, i32 0, i32 4
  %30 = ptrtoint ptr %hp_work_active.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hp_work_active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool2.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i43.via_free.exit_crit_edge, label %if.then3.i.i

if.end.i.i43.via_free.exit_crit_edge:             ; preds = %if.end.i.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

if.then3.i.i:                                     ; preds = %if.end.i.i43
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3969, i32 noundef 1) #8
  %jackpoll_interval.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 38
  %32 = ptrtoint ptr %jackpoll_interval.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %jackpoll_interval.i.i, align 8
  %jackpoll_work.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 39
  %call4.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jackpoll_work.i.i) #8
  %33 = ptrtoint ptr %hp_work_active.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %hp_work_active.i.i, align 4
  br label %via_free.exit

via_free.exit:                                    ; preds = %if.then3.i.i, %if.end.i.i43.via_free.exit_crit_edge, %lor.lhs.false.i.i42.via_free.exit_crit_edge, %error.via_free.exit_crit_edge
  tail call void @snd_hda_gen_free(ptr noundef %codec) #8
  br label %cleanup

cleanup:                                          ; preds = %via_free.exit, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %via_free.exit ], [ 0, %if.end5.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_vt3476(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5728) #11
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec1.i, align 8
  %call2.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #8
  %call3.i = tail call fastcc i32 @get_codec_type(ptr noundef %codec) #8
  %codec_type.i = getelementptr inbounds %struct.via_spec, ptr %call7.i.i.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call3.i)
  %cmp5.i = icmp eq i32 %call3.i, 6
  %spec.select.i = select i1 %cmp5.i, i32 5, i32 %call3.i
  %2 = ptrtoint ptr %codec_type.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select.i, ptr %codec_type.i, align 4
  %indep_hp.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 58
  %3 = ptrtoint ptr %indep_hp.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load.i = load i64, ptr %indep_hp.i, align 4
  %pcm_playback_hook.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 79
  %4 = ptrtoint ptr %pcm_playback_hook.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @via_playback_pcm_hook, ptr %pcm_playback_hook.i, align 4
  %bf.set17.i = and i64 %bf.load.i, -323733159937
  %power_save_node.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %5 = ptrtoint ptr %power_save_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load23.i = load i32, ptr %power_save_node.i, align 4
  %bf.set25.i = or i32 %bf.load23.i, 16384
  store i32 %bf.set25.i, ptr %power_save_node.i, align 4
  %bf.set29.i = or i64 %bf.set17.i, 319438192640
  store i64 %bf.set29.i, ptr %indep_hp.i, align 4
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %6 = call ptr @memcpy(ptr %patch_ops.i, ptr @via_patch_ops, i32 40)
  %mixer_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 18
  %7 = ptrtoint ptr %mixer_nid to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 63, ptr %mixer_nid, align 2
  tail call fastcc void @add_secret_dac_path(ptr noundef %codec)
  %call2 = tail call i32 @snd_hda_add_verbs(ptr noundef %codec, ptr noundef nonnull @vt3476_init_verbs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.error_crit_edge, label %if.end5

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @via_parse_auto_config(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.error_crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.error_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

error:                                            ; preds = %if.end5.error_crit_edge, %if.end.error_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.error_crit_edge ], [ %call6, %if.end5.error_crit_edge ]
  %8 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spec1.i, align 8
  %codec_type.i.i = getelementptr inbounds %struct.via_spec, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %codec_type.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %codec_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %error.via_free.exit_crit_edge

error.via_free.exit_crit_edge:                    ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

lor.lhs.false.i.i:                                ; preds = %error
  %hp_outs.i.i = getelementptr inbounds %struct.hda_gen_spec, ptr %9, i32 0, i32 33, i32 4
  %12 = ptrtoint ptr %hp_outs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hp_outs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i.via_free.exit_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.via_free.exit_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %hp_work_active.i.i = getelementptr inbounds %struct.via_spec, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %hp_work_active.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hp_work_active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool2.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.via_free.exit_crit_edge, label %if.then3.i.i

if.end.i.i.via_free.exit_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %via_free.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3969, i32 noundef 1) #8
  %jackpoll_interval.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 38
  %16 = ptrtoint ptr %jackpoll_interval.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %jackpoll_interval.i.i, align 8
  %jackpoll_work.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 39
  %call4.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jackpoll_work.i.i) #8
  %17 = ptrtoint ptr %hp_work_active.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %hp_work_active.i.i, align 4
  br label %via_free.exit

via_free.exit:                                    ; preds = %if.then3.i.i, %if.end.i.i.via_free.exit_crit_edge, %lor.lhs.false.i.i.via_free.exit_crit_edge, %error.via_free.exit_crit_edge
  tail call void @snd_hda_gen_free(ptr noundef %codec) #8
  br label %cleanup

cleanup:                                          ; preds = %via_free.exit, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %via_free.exit ], [ 0, %if.end5.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt1708_build_controls(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %jackpoll_interval = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 38
  %0 = ptrtoint ptr %jackpoll_interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %jackpoll_interval, align 8
  store i32 10, ptr %jackpoll_interval, align 8
  %call2 = tail call i32 @snd_hda_gen_build_controls(ptr noundef %codec) #8
  %2 = ptrtoint ptr %jackpoll_interval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %jackpoll_interval, align 8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt1708_build_pcms(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %call = tail call i32 @snd_hda_gen_build_pcms(ptr noundef %codec) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup14_crit_edge, label %lor.lhs.false

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup14

lor.lhs.false:                                    ; preds = %entry
  %vendor_id = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 7
  %2 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vendor_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 285611784, i32 %3)
  %cmp2.not = icmp eq i32 %3, 285611784
  br i1 %cmp2.not, label %for.body.preheader, label %lor.lhs.false.cleanup14_crit_edge

lor.lhs.false.cleanup14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup14

for.body.preheader:                               ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.hda_gen_spec, ptr %1, i32 0, i32 32, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.preheader.cleanup_crit_edge, label %if.end5

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %for.body.preheader
  %stream = getelementptr inbounds %struct.hda_pcm, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %lor.lhs.false8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false8:                                   ; preds = %if.end5
  %pcm_type = getelementptr inbounds %struct.hda_pcm, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %pcm_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pcm_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9.not = icmp eq i32 %9, 0
  br i1 %cmp9.not, label %if.end11, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #10
  %formats = getelementptr inbounds %struct.hda_pcm, ptr %5, i32 0, i32 1, i32 0, i32 5
  %10 = ptrtoint ptr %formats to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 4, ptr %formats, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %lor.lhs.false8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge
  %arrayidx.1 = getelementptr %struct.hda_gen_spec, ptr %1, i32 0, i32 32, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %12, null
  br i1 %tobool.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end5.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1

if.end5.1:                                        ; preds = %cleanup
  %stream.1 = getelementptr inbounds %struct.hda_pcm, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %stream.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stream.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not.1 = icmp eq i32 %14, 0
  br i1 %tobool7.not.1, label %if.end5.1.cleanup.1_crit_edge, label %lor.lhs.false8.1

if.end5.1.cleanup.1_crit_edge:                    ; preds = %if.end5.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1

lor.lhs.false8.1:                                 ; preds = %if.end5.1
  %pcm_type.1 = getelementptr inbounds %struct.hda_pcm, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %pcm_type.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pcm_type.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp9.not.1 = icmp eq i32 %16, 0
  br i1 %cmp9.not.1, label %if.end11.1, label %lor.lhs.false8.1.cleanup.1_crit_edge

lor.lhs.false8.1.cleanup.1_crit_edge:             ; preds = %lor.lhs.false8.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1

if.end11.1:                                       ; preds = %lor.lhs.false8.1
  call void @__sanitizer_cov_trace_pc() #10
  %formats.1 = getelementptr inbounds %struct.hda_pcm, ptr %12, i32 0, i32 1, i32 0, i32 5
  %17 = ptrtoint ptr %formats.1 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 4, ptr %formats.1, align 8
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end11.1, %lor.lhs.false8.1.cleanup.1_crit_edge, %if.end5.1.cleanup.1_crit_edge, %cleanup.cleanup.1_crit_edge
  %arrayidx.2 = getelementptr %struct.hda_gen_spec, ptr %1, i32 0, i32 32, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %19, null
  br i1 %tobool.not.2, label %cleanup.1.cleanup14_crit_edge, label %if.end5.2

cleanup.1.cleanup14_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup14

if.end5.2:                                        ; preds = %cleanup.1
  %stream.2 = getelementptr inbounds %struct.hda_pcm, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %stream.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stream.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool7.not.2 = icmp eq i32 %21, 0
  br i1 %tobool7.not.2, label %if.end5.2.cleanup14_crit_edge, label %lor.lhs.false8.2

if.end5.2.cleanup14_crit_edge:                    ; preds = %if.end5.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup14

lor.lhs.false8.2:                                 ; preds = %if.end5.2
  %pcm_type.2 = getelementptr inbounds %struct.hda_pcm, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %pcm_type.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pcm_type.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp9.not.2 = icmp eq i32 %23, 0
  br i1 %cmp9.not.2, label %if.end11.2, label %lor.lhs.false8.2.cleanup14_crit_edge

lor.lhs.false8.2.cleanup14_crit_edge:             ; preds = %lor.lhs.false8.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup14

if.end11.2:                                       ; preds = %lor.lhs.false8.2
  call void @__sanitizer_cov_trace_pc() #10
  %formats.2 = getelementptr inbounds %struct.hda_pcm, ptr %19, i32 0, i32 1, i32 0, i32 5
  %24 = ptrtoint ptr %formats.2 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 4, ptr %formats.2, align 8
  br label %cleanup14

cleanup14:                                        ; preds = %if.end11.2, %lor.lhs.false8.2.cleanup14_crit_edge, %if.end5.2.cleanup14_crit_edge, %cleanup.1.cleanup14_crit_edge, %lor.lhs.false.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.0 = phi i32 [ %call, %lor.lhs.false.cleanup14_crit_edge ], [ %call, %entry.cleanup14_crit_edge ], [ 0, %if.end11.2 ], [ 0, %lor.lhs.false8.2.cleanup14_crit_edge ], [ 0, %if.end5.2.cleanup14_crit_edge ], [ 0, %cleanup.1.cleanup14_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_add_verbs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @via_parse_auto_config(ptr noundef %codec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %main_out_badness = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 62
  %2 = ptrtoint ptr %main_out_badness to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @via_main_out_badness, ptr %main_out_badness, align 8
  %extra_out_badness = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 63
  %3 = ptrtoint ptr %extra_out_badness to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @via_extra_out_badness, ptr %extra_out_badness, align 4
  %autocfg = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 33
  %call = tail call i32 @snd_hda_parse_pin_defcfg(ptr noundef %codec, ptr noundef %autocfg, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @snd_hda_gen_parse_auto_config(ptr noundef %codec, ptr noundef %autocfg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %4 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec1, align 8
  %start_nid.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %6 = ptrtoint ptr %start_nid.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %start_nid.i, align 4
  %end_nid.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 19
  %8 = ptrtoint ptr %end_nid.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %end_nid.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp27.i = icmp ult i16 %7, %9
  br i1 %cmp27.i, label %for.body.lr.ph.i, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

for.body.lr.ph.i:                                 ; preds = %if.end9
  %conv1.i.i = zext i16 %7 to i32
  %num_nodes.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %wcaps.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ %conv1.i.i, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.i, i32 %conv1.i.i)
  %cmp.i.i = icmp ult i32 %indvars.iv.i, %conv1.i.i
  br i1 %cmp.i.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false.i.i:                                ; preds = %for.body.i
  %10 = ptrtoint ptr %num_nodes.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_nodes.i.i, align 8
  %add.i.i = add i32 %11, %conv1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %indvars.iv.i)
  %cmp8.not.i.i = icmp ugt i32 %add.i.i, %indvars.iv.i
  br i1 %cmp8.not.i.i, label %get_wcaps.exit.i, label %lor.lhs.false.i.i.for.inc.i_crit_edge

lor.lhs.false.i.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

get_wcaps.exit.i:                                 ; preds = %lor.lhs.false.i.i
  %12 = ptrtoint ptr %wcaps.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wcaps.i.i, align 4
  %sub.i.i = sub nuw nsw i32 %indvars.iv.i, %conv1.i.i
  %arrayidx.i.i = getelementptr i32, ptr %13, i32 %sub.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %16 = and i32 %15, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 7340032, i32 %16)
  %cmp6.i = icmp eq i32 %16, 7340032
  br i1 %cmp6.i, label %if.then.i, label %get_wcaps.exit.i.for.inc.i_crit_edge

get_wcaps.exit.i.for.inc.i_crit_edge:             ; preds = %get_wcaps.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %get_wcaps.exit.i
  %17 = trunc i32 %indvars.iv.i to i16
  %or1.i.i = or i32 %indvars.iv.i, 327680
  %beep_nid.i.i = getelementptr inbounds %struct.hda_gen_spec, ptr %5, i32 0, i32 67
  %18 = ptrtoint ptr %beep_nid.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %beep_nid.i.i, align 2
  %call.i.i = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %5, ptr noundef null, ptr noundef nonnull @via_beep_mixer) #8
  %tobool.not.i18.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i18.i, label %if.then.i.cleanup_crit_edge, label %if.end.i19.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i19.i:                                     ; preds = %if.then.i
  %private_value.i.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %call.i.i, i32 0, i32 11
  %19 = ptrtoint ptr %private_value.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or1.i.i, ptr %private_value.i.i, align 4
  %call.1.i.i = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %5, ptr noundef null, ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @via_beep_mixer, i32 0, i32 1)) #8
  %tobool.not.1.i.i = icmp eq ptr %call.1.i.i, null
  br i1 %tobool.not.1.i.i, label %if.end.i19.i.cleanup_crit_edge, label %if.end.1.i.i

if.end.i19.i.cleanup_crit_edge:                   ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.1.i.i:                                     ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #10
  %private_value.1.i.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %call.1.i.i, i32 0, i32 11
  %20 = ptrtoint ptr %private_value.1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or1.i.i, ptr %private_value.1.i.i, align 4
  br label %if.end13

for.inc.i:                                        ; preds = %get_wcaps.exit.i.for.inc.i_crit_edge, %lor.lhs.false.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %lftr.wideiv.i = trunc i32 %indvars.iv.next.i to i16
  %exitcond.not.i = icmp eq i16 %9, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end13_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end13_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end13:                                         ; preds = %for.inc.i.if.end13_crit_edge, %if.end.1.i.i, %if.end9.if.end13_crit_edge
  %call15 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %1, ptr noundef null, ptr noundef nonnull @via_pin_power_ctl_enum) #8
  %tobool.not = icmp eq ptr %call15, null
  br i1 %tobool.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %power_save_node = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %21 = ptrtoint ptr %power_save_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load = load i32, ptr %power_save_node, align 4
  %bf.clear = and i32 %bf.load, -16385
  store i32 %bf.clear, ptr %power_save_node, align 4
  %power_down_unused = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 58
  %22 = ptrtoint ptr %power_down_unused to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %bf.load19 = load i64, ptr %power_down_unused, align 4
  %bf.clear20 = and i64 %bf.load19, -1073741825
  store i64 %bf.clear20, ptr %power_down_unused, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end13.cleanup_crit_edge, %if.end.i19.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %call, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ -12, %if.then.i.cleanup_crit_edge ], [ -12, %if.end.i19.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_gen_add_kctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @via_free(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1.i, align 8
  %codec_type.i = getelementptr inbounds %struct.via_spec, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %codec_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %codec_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.vt1708_stop_hp_work.exit_crit_edge

entry.vt1708_stop_hp_work.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vt1708_stop_hp_work.exit

lor.lhs.false.i:                                  ; preds = %entry
  %hp_outs.i = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 33, i32 4
  %4 = ptrtoint ptr %hp_outs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hp_outs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.vt1708_stop_hp_work.exit_crit_edge, label %if.end.i

lor.lhs.false.i.vt1708_stop_hp_work.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vt1708_stop_hp_work.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %hp_work_active.i = getelementptr inbounds %struct.via_spec, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %hp_work_active.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hp_work_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %if.end.i.vt1708_stop_hp_work.exit_crit_edge, label %if.then3.i

if.end.i.vt1708_stop_hp_work.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vt1708_stop_hp_work.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3969, i32 noundef 1) #8
  %jackpoll_interval.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 38
  %8 = ptrtoint ptr %jackpoll_interval.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %jackpoll_interval.i, align 8
  %jackpoll_work.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 39
  %call4.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jackpoll_work.i) #8
  %9 = ptrtoint ptr %hp_work_active.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %hp_work_active.i, align 4
  br label %vt1708_stop_hp_work.exit

vt1708_stop_hp_work.exit:                         ; preds = %if.then3.i, %if.end.i.vt1708_stop_hp_work.exit_crit_edge, %lor.lhs.false.i.vt1708_stop_hp_work.exit_crit_edge, %entry.vt1708_stop_hp_work.exit_crit_edge
  tail call void @snd_hda_gen_free(ptr noundef %codec) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_spec_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_codec_type(ptr noundef %codec) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor_id1 = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 7
  %0 = ptrtoint ptr %vendor_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vendor_id1, align 8
  %shr.mask = and i32 %1, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 285605888, i32 %shr.mask)
  %cmp.not = icmp eq i32 %shr.mask, 285605888
  br i1 %cmp.not, label %if.else, label %entry.if.end158_crit_edge

entry.if.end158_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

if.else:                                          ; preds = %entry
  %2 = trunc i32 %1 to i16
  %trunc202 = and i16 %2, -4
  %3 = zext i16 %trunc202 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %trunc202, label %if.else52 [
    i16 5896, label %if.else.if.end158_crit_edge
    i16 -6384, label %if.end158.fold.split
    i16 -6380, label %if.end158.fold.split198
    i16 -6368, label %if.then38
    i16 -6364, label %if.end158.fold.split199
  ]

if.else.if.end158_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

if.then38:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !130
  %call.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext 22, i32 noundef 14, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %snd_hdac_read_parm.exit.thread, label %snd_hdac_read_parm.exit

snd_hdac_read_parm.exit.thread:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %if.end158

snd_hdac_read_parm.exit:                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %6)
  %cmp40 = icmp eq i32 %6, 7
  %spec.select = select i1 %cmp40, i32 6, i32 3
  br label %if.end158

if.else52:                                        ; preds = %if.else
  %and54 = and i32 %1, 4095
  %7 = trunc i32 %1 to i16
  %trunc203 = and i16 %7, -28673
  %8 = zext i16 %trunc203 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %trunc203, label %if.else85 [
    i16 919, label %if.else52.if.end158_crit_edge
    i16 920, label %if.end158.fold.split200
    i16 1064, label %if.end158.fold.split201
  ]

if.else52.if.end158_crit_edge:                    ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

if.else85:                                        ; preds = %if.else52
  %trunc = trunc i32 %1 to i16
  %9 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.36)
  switch i16 %trunc, label %if.else121 [
    i16 1075, label %if.else85.if.end158_crit_edge
    i16 -22751, label %if.else85.if.end158_crit_edge204
    i16 1089, label %if.else85.if.then101_crit_edge
    i16 17473, label %if.else85.if.then101_crit_edge205
    i16 1080, label %if.else85.if.then110_crit_edge
    i16 17464, label %if.else85.if.then110_crit_edge206
    i16 1096, label %if.then115
    i16 1088, label %if.then120
  ]

if.else85.if.then110_crit_edge206:                ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then110

if.else85.if.then110_crit_edge:                   ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then110

if.else85.if.then101_crit_edge205:                ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then101

if.else85.if.then101_crit_edge:                   ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then101

if.else85.if.end158_crit_edge204:                 ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

if.else85.if.end158_crit_edge:                    ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

if.then101:                                       ; preds = %if.else85.if.then101_crit_edge, %if.else85.if.then101_crit_edge205
  br label %if.end158

if.then110:                                       ; preds = %if.else85.if.then110_crit_edge, %if.else85.if.then110_crit_edge206
  br label %if.end158

if.then115:                                       ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

if.then120:                                       ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

if.else121:                                       ; preds = %if.else85
  call void @__sanitizer_cov_trace_const_cmp4(i32 1094, i32 %and54)
  %cmp124 = icmp eq i32 %and54, 1094
  br i1 %cmp124, label %if.else121.if.end158_crit_edge, label %if.else127

if.else121.if.end158_crit_edge:                   ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

if.else127:                                       ; preds = %if.else121
  %switch.tableidx = add i16 %trunc, -18272
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %switch.tableidx)
  %10 = icmp ult i16 %switch.tableidx, 3
  br i1 %10, label %switch.lookup, label %if.else127.if.end158_crit_edge

if.else127.if.end158_crit_edge:                   ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

if.end158.fold.split:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

if.end158.fold.split198:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

if.end158.fold.split199:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

if.end158.fold.split200:                          ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

if.end158.fold.split201:                          ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

switch.lookup:                                    ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #10
  %11 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.get_codec_type, i32 0, i32 %11
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end158

if.end158:                                        ; preds = %switch.lookup, %if.end158.fold.split201, %if.end158.fold.split200, %if.end158.fold.split199, %if.end158.fold.split198, %if.end158.fold.split, %if.else127.if.end158_crit_edge, %if.else121.if.end158_crit_edge, %if.then120, %if.then115, %if.then110, %if.then101, %if.else85.if.end158_crit_edge, %if.else85.if.end158_crit_edge204, %if.else52.if.end158_crit_edge, %snd_hdac_read_parm.exit, %snd_hdac_read_parm.exit.thread, %if.else.if.end158_crit_edge, %entry.if.end158_crit_edge
  %codec_type.0 = phi i32 [ 8, %if.then101 ], [ 10, %if.then110 ], [ 11, %if.then115 ], [ 5, %if.then120 ], [ -1, %entry.if.end158_crit_edge ], [ 0, %if.else.if.end158_crit_edge ], [ 5, %if.else52.if.end158_crit_edge ], [ 9, %if.else85.if.end158_crit_edge ], [ 9, %if.else85.if.end158_crit_edge204 ], [ 12, %if.else121.if.end158_crit_edge ], [ 3, %snd_hdac_read_parm.exit.thread ], [ %spec.select, %snd_hdac_read_parm.exit ], [ 1, %if.end158.fold.split ], [ 2, %if.end158.fold.split198 ], [ 4, %if.end158.fold.split199 ], [ 7, %if.end158.fold.split200 ], [ 8, %if.end158.fold.split201 ], [ %switch.load, %switch.lookup ], [ -1, %if.else127.if.end158_crit_edge ]
  ret i32 %codec_type.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @via_playback_pcm_hook(ptr nocapture noundef readnone %hinfo, ptr noundef %codec, ptr nocapture noundef readnone %substream, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__analog_low_current_mode(ptr noundef %codec, i1 noundef zeroext false) #8
  tail call fastcc void @vt1708_update_hp_work(ptr noundef %codec)
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_hdac_read_parm(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vt1708_update_hp_work(ptr noundef %codec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %codec_type = getelementptr inbounds %struct.via_spec, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %codec_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %codec_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hp_outs = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 33, i32 4
  %4 = ptrtoint ptr %hp_outs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hp_outs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %vt1708_jack_detect = getelementptr inbounds %struct.via_spec, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %vt1708_jack_detect to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vt1708_jack_detect, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %hp_work_active = getelementptr inbounds %struct.via_spec, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %hp_work_active to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hp_work_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %if.then5, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %jackpoll_interval = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 38
  %10 = ptrtoint ptr %jackpoll_interval to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 10, ptr %jackpoll_interval, align 8
  %call.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #8
  %jackpoll_work = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %jackpoll_work, i32 noundef 0) #8
  %12 = ptrtoint ptr %hp_work_active to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %hp_work_active, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call10 = tail call i32 @snd_hda_get_bool_hint(ptr noundef %codec, ptr noundef nonnull @.str.20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 1
  br i1 %cmp11, label %land.lhs.true, label %if.else.if.then13_crit_edge

if.else.if.then13_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

land.lhs.true:                                    ; preds = %if.else
  %call12 = tail call fastcc zeroext i1 @is_aa_path_mute(ptr noundef %codec)
  br i1 %call12, label %land.lhs.true.if.then13_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.then13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then13:                                        ; preds = %land.lhs.true.if.then13_crit_edge, %if.else.if.then13_crit_edge
  %13 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spec1, align 8
  %codec_type.i = getelementptr inbounds %struct.via_spec, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %codec_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %codec_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then13
  %hp_outs.i = getelementptr inbounds %struct.hda_gen_spec, ptr %14, i32 0, i32 33, i32 4
  %17 = ptrtoint ptr %hp_outs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hp_outs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %hp_work_active.i = getelementptr inbounds %struct.via_spec, ptr %14, i32 0, i32 4
  %19 = ptrtoint ptr %hp_work_active.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hp_work_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool2.not.i = icmp eq i32 %20, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i26 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3969, i32 noundef 1) #8
  %jackpoll_interval.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 38
  %21 = ptrtoint ptr %jackpoll_interval.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %jackpoll_interval.i, align 8
  %jackpoll_work.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 39
  %call4.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jackpoll_work.i) #8
  %22 = ptrtoint ptr %hp_work_active.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %hp_work_active.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then5, %if.then3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__analog_low_current_mode(ptr noundef %codec, i1 noundef zeroext %force) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %power_save_node = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %2 = ptrtoint ptr %power_save_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %power_save_node, align 4
  %3 = and i32 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %entry
  %call = tail call fastcc zeroext i1 @is_aa_path_mute(ptr noundef %codec)
  br i1 %call, label %land.rhs, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %active_streams = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %active_streams to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active_streams, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br label %if.end

if.end:                                           ; preds = %land.rhs, %if.else.if.end_crit_edge, %entry.if.end_crit_edge
  %enable.0.off0 = phi i1 [ false, %entry.if.end_crit_edge ], [ false, %if.else.if.end_crit_edge ], [ %tobool2.not, %land.rhs ]
  %alc_mode = getelementptr inbounds %struct.via_spec, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %alc_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %alc_mode, align 8, !range !131
  %8 = zext i1 %enable.0.off0 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %8)
  %cmp = icmp ne i8 %7, %8
  %brmerge = or i1 %cmp, %force
  br i1 %brmerge, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %9 = ptrtoint ptr %alc_mode to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %alc_mode, align 8
  %codec_type = getelementptr inbounds %struct.via_spec, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %codec_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %codec_type, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %11, label %if.end10.cleanup_crit_edge [
    i32 3, label %if.end10.sw.bb_crit_edge
    i32 4, label %if.end10.sw.bb_crit_edge49
    i32 5, label %if.end10.sw.bb16_crit_edge
    i32 8, label %if.end10.sw.bb16_crit_edge50
    i32 9, label %if.end10.sw.bb16_crit_edge51
    i32 7, label %sw.bb20
    i32 10, label %if.end10.sw.bb24_crit_edge
    i32 11, label %if.end10.sw.bb24_crit_edge52
    i32 12, label %if.end10.sw.bb24_crit_edge53
    i32 13, label %if.end10.sw.bb28_crit_edge
    i32 14, label %if.end10.sw.bb28_crit_edge54
  ]

if.end10.sw.bb28_crit_edge54:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.end10.sw.bb28_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.end10.sw.bb24_crit_edge53:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb24

if.end10.sw.bb24_crit_edge52:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb24

if.end10.sw.bb24_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb24

if.end10.sw.bb16_crit_edge51:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

if.end10.sw.bb16_crit_edge50:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

if.end10.sw.bb16_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

if.end10.sw.bb_crit_edge49:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end10.sw.bb_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end10.sw.bb_crit_edge, %if.end10.sw.bb_crit_edge49
  %cond = select i1 %enable.0.off0, i32 2, i32 0
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end10.sw.bb16_crit_edge, %if.end10.sw.bb16_crit_edge50, %if.end10.sw.bb16_crit_edge51
  %cond19 = select i1 %enable.0.off0, i32 81, i32 225
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %cond23 = select i1 %enable.0.off0, i32 1, i32 29
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end10.sw.bb24_crit_edge, %if.end10.sw.bb24_crit_edge52, %if.end10.sw.bb24_crit_edge53
  %cond27 = select i1 %enable.0.off0, i32 0, i32 224
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end10.sw.bb28_crit_edge, %if.end10.sw.bb28_crit_edge54
  %cond31 = select i1 %enable.0.off0, i32 0, i32 224
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb28, %sw.bb24, %sw.bb20, %sw.bb16, %sw.bb
  %verb.0 = phi i32 [ 3970, %sw.bb28 ], [ 3987, %sw.bb24 ], [ 3955, %sw.bb20 ], [ 3955, %sw.bb16 ], [ 3952, %sw.bb ]
  %parm.0 = phi i32 [ %cond31, %sw.bb28 ], [ %cond27, %sw.bb24 ], [ %cond23, %sw.bb20 ], [ %cond19, %sw.bb16 ], [ %cond, %sw.bb ]
  %afg = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 5
  %13 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %afg, align 4
  %call.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %14, i32 noundef 0, i32 noundef %verb.0, i32 noundef %parm.0) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_aa_path_mute(ptr noundef %codec) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %loopback = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 72
  %2 = ptrtoint ptr %loopback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %loopback, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool2.not33 = icmp eq i16 %5, 0
  br i1 %tobool2.not33, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.cond3.preheader_crit_edge

for.cond.preheader.for.cond3.preheader_crit_edge: ; preds = %for.cond.preheader
  br label %for.cond3.preheader

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond3.preheader:                              ; preds = %for.inc.1.for.cond3.preheader_crit_edge, %for.cond.preheader.for.cond3.preheader_crit_edge
  %p.034 = phi ptr [ %incdec.ptr, %for.inc.1.for.cond3.preheader_crit_edge ], [ %3, %for.cond.preheader.for.cond3.preheader_crit_edge ]
  %dir = getelementptr inbounds %struct.hda_amp_list, ptr %p.034, i32 0, i32 1
  %idx = getelementptr inbounds %struct.hda_amp_list, ptr %p.034, i32 0, i32 2
  %6 = ptrtoint ptr %p.034 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %p.034, align 2
  %8 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dir, align 2
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %idx, align 1
  %conv6 = zext i8 %11 to i32
  %conv.i = zext i16 %7 to i32
  %shl.i = shl i32 %conv.i, 20
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.i = icmp eq i8 %9, 1
  %cond3.i = select i1 %cmp.i, i32 32768, i32 0
  %or.i = or i32 %shl.i, %cond3.i
  %or1.i = or i32 %or.i, %conv6
  %or5.i = or i32 %or1.i, 729088
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val.i, align 4, !annotation !130
  %call.i = call i32 @snd_hdac_regmap_read_raw(ptr noundef %codec, i32 noundef %or5.i, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.i = icmp slt i32 %call.i, 0
  br i1 %cmp6.i, label %snd_hdac_regmap_get_amp.exit.thread, label %snd_hdac_regmap_get_amp.exit

snd_hdac_regmap_get_amp.exit.thread:              ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %for.inc

snd_hdac_regmap_get_amp.exit:                     ; preds = %for.cond3.preheader
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %and = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp8 = icmp sgt i32 %14, 0
  %or.cond = and i1 %cmp8, %tobool7.not
  br i1 %or.cond, label %snd_hdac_regmap_get_amp.exit.cleanup_crit_edge, label %snd_hdac_regmap_get_amp.exit.for.inc_crit_edge

snd_hdac_regmap_get_amp.exit.for.inc_crit_edge:   ; preds = %snd_hdac_regmap_get_amp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

snd_hdac_regmap_get_amp.exit.cleanup_crit_edge:   ; preds = %snd_hdac_regmap_get_amp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %snd_hdac_regmap_get_amp.exit.for.inc_crit_edge, %snd_hdac_regmap_get_amp.exit.thread
  %15 = ptrtoint ptr %p.034 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %p.034, align 2
  %17 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dir, align 2
  %19 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %idx, align 1
  %conv6.1 = zext i8 %20 to i32
  %conv.i.1 = zext i16 %16 to i32
  %shl.i.1 = shl i32 %conv.i.1, 20
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp.i.1 = icmp eq i8 %18, 1
  %cond3.i.1 = select i1 %cmp.i.1, i32 32768, i32 0
  %or1.i.1 = or i32 %shl.i.1, %cond3.i.1
  %or4.i.1 = or i32 %or1.i.1, %conv6.1
  %or5.i.1 = or i32 %or4.i.1, 720896
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i, align 4, !annotation !130
  %call.i.1 = call i32 @snd_hdac_regmap_read_raw(ptr noundef %codec, i32 noundef %or5.i.1, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp6.i.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp6.i.1, label %snd_hdac_regmap_get_amp.exit.thread.1, label %snd_hdac_regmap_get_amp.exit.1

snd_hdac_regmap_get_amp.exit.1:                   ; preds = %for.inc
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %and.1 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool7.not.1 = icmp eq i32 %and.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp8.1 = icmp sgt i32 %23, 0
  %or.cond.1 = and i1 %cmp8.1, %tobool7.not.1
  br i1 %or.cond.1, label %snd_hdac_regmap_get_amp.exit.1.cleanup_crit_edge, label %snd_hdac_regmap_get_amp.exit.1.for.inc.1_crit_edge

snd_hdac_regmap_get_amp.exit.1.for.inc.1_crit_edge: ; preds = %snd_hdac_regmap_get_amp.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

snd_hdac_regmap_get_amp.exit.1.cleanup_crit_edge: ; preds = %snd_hdac_regmap_get_amp.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

snd_hdac_regmap_get_amp.exit.thread.1:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %snd_hdac_regmap_get_amp.exit.thread.1, %snd_hdac_regmap_get_amp.exit.1.for.inc.1_crit_edge
  %incdec.ptr = getelementptr %struct.hda_amp_list, ptr %p.034, i32 1
  %24 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %incdec.ptr, align 2
  %tobool2.not = icmp eq i16 %25, 0
  br i1 %tobool2.not, label %for.inc.1.cleanup_crit_edge, label %for.inc.1.for.cond3.preheader_crit_edge

for.inc.1.for.cond3.preheader_crit_edge:          ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond3.preheader

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.1.cleanup_crit_edge, %snd_hdac_regmap_get_amp.exit.1.cleanup_crit_edge, %snd_hdac_regmap_get_amp.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ true, %for.cond.preheader.cleanup_crit_edge ], [ true, %for.inc.1.cleanup_crit_edge ], [ false, %snd_hdac_regmap_get_amp.exit.cleanup_crit_edge ], [ false, %snd_hdac_regmap_get_amp.exit.1.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_regmap_read_raw(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_write(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_bool_hint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_build_controls(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_build_pcms(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_init(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__analog_low_current_mode(ptr noundef %codec, i1 noundef zeroext true)
  %call = tail call i32 @snd_hda_gen_init(ptr noundef %codec) #8
  tail call fastcc void @vt1708_update_hp_work(ptr noundef %codec)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_jack_unsol_event(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_suspend(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %codec_type.i = getelementptr inbounds %struct.via_spec, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %codec_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %codec_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.vt1708_stop_hp_work.exit_crit_edge

entry.vt1708_stop_hp_work.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vt1708_stop_hp_work.exit

lor.lhs.false.i:                                  ; preds = %entry
  %hp_outs.i = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 33, i32 4
  %4 = ptrtoint ptr %hp_outs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hp_outs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.vt1708_stop_hp_work.exitthread-pre-split_crit_edge, label %if.end.i

lor.lhs.false.i.vt1708_stop_hp_work.exitthread-pre-split_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vt1708_stop_hp_work.exitthread-pre-split

if.end.i:                                         ; preds = %lor.lhs.false.i
  %hp_work_active.i = getelementptr inbounds %struct.via_spec, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %hp_work_active.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hp_work_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %if.end.i.vt1708_stop_hp_work.exitthread-pre-split_crit_edge, label %if.then3.i

if.end.i.vt1708_stop_hp_work.exitthread-pre-split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vt1708_stop_hp_work.exitthread-pre-split

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3969, i32 noundef 1) #8
  %jackpoll_interval.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 38
  %8 = ptrtoint ptr %jackpoll_interval.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %jackpoll_interval.i, align 8
  %jackpoll_work.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 39
  %call4.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jackpoll_work.i) #8
  %9 = ptrtoint ptr %hp_work_active.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %hp_work_active.i, align 4
  br label %vt1708_stop_hp_work.exitthread-pre-split

vt1708_stop_hp_work.exitthread-pre-split:         ; preds = %if.then3.i, %if.end.i.vt1708_stop_hp_work.exitthread-pre-split_crit_edge, %lor.lhs.false.i.vt1708_stop_hp_work.exitthread-pre-split_crit_edge
  %10 = ptrtoint ptr %codec_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %codec_type.i, align 4
  br label %vt1708_stop_hp_work.exit

vt1708_stop_hp_work.exit:                         ; preds = %vt1708_stop_hp_work.exitthread-pre-split, %entry.vt1708_stop_hp_work.exit_crit_edge
  %11 = phi i32 [ %.pr, %vt1708_stop_hp_work.exitthread-pre-split ], [ %3, %entry.vt1708_stop_hp_work.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %11)
  %cmp = icmp eq i32 %11, 12
  br i1 %cmp, label %if.then, label %vt1708_stop_hp_work.exit.if.end_crit_edge

vt1708_stop_hp_work.exit.if.end_crit_edge:        ; preds = %vt1708_stop_hp_work.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %vt1708_stop_hp_work.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_hda_shutup_pins(ptr noundef %codec) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %vt1708_stop_hp_work.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_resume(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @msleep(i32 noundef 10) #8
  %init = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init, align 8
  %call = tail call i32 %1(ptr noundef %codec) #8
  tail call void @snd_hdac_regmap_sync(ptr noundef %codec) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_check_power_status(ptr noundef %codec, i16 noundef zeroext %nid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  tail call fastcc void @__analog_low_current_mode(ptr noundef %codec, i1 noundef zeroext false) #8
  tail call fastcc void @vt1708_update_hp_work(ptr noundef %codec)
  %loopback = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 72
  %call = tail call i32 @snd_hda_check_amp_list_power(ptr noundef %codec, ptr noundef %loopback, i16 noundef zeroext %nid) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_shutup_pins(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_regmap_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_check_amp_list_power(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_get_pincfg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_set_pincfg(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_parse_pin_defcfg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_parse_auto_config(ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_pin_power_ctl_info(ptr noundef %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_hda_enum_helper_info(ptr noundef %kcontrol, ptr noundef %uinfo, i32 noundef 0, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @via_pin_power_ctl_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 8
  %power_down_unused = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 58
  %4 = ptrtoint ptr %power_down_unused to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %bf.load = load i64, ptr %power_down_unused, align 4
  %5 = trunc i64 %bf.load to i32
  %6 = lshr i32 %5, 30
  %bf.cast = and i32 %6, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bf.cast, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_pin_power_ctl_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool = icmp ne i32 %5, 0
  %power_down_unused = getelementptr inbounds %struct.hda_gen_spec, ptr %3, i32 0, i32 58
  %6 = ptrtoint ptr %power_down_unused to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %bf.load = load i64, ptr %power_down_unused, align 4
  %7 = and i64 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %8 = icmp eq i64 %7, 0
  %cmp = xor i1 %tobool, %8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.shl = select i1 %tobool, i64 1073741824, i64 0
  %bf.clear10 = and i64 %bf.load, -1073741825
  %bf.set = or i64 %bf.clear10, %bf.shl
  %9 = ptrtoint ptr %power_down_unused to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %bf.set, ptr %power_down_unused, align 4
  tail call fastcc void @__analog_low_current_mode(ptr noundef %1, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_enum_helper_info(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vt1708_jack_detect_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 8
  %codec_type = getelementptr inbounds %struct.via_spec, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %codec_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %codec_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vt1708_jack_detect = getelementptr inbounds %struct.via_spec, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %vt1708_jack_detect to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vt1708_jack_detect, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt1708_jack_detect_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 8
  %codec_type = getelementptr inbounds %struct.via_spec, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %codec_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %codec_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool = icmp ne i32 %7, 0
  %lnot.ext = zext i1 %tobool to i32
  %vt1708_jack_detect = getelementptr inbounds %struct.via_spec, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %vt1708_jack_detect to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vt1708_jack_detect, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %lnot.ext)
  %cmp3 = icmp eq i32 %9, %lnot.ext
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %vt1708_jack_detect to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %lnot.ext, ptr %vt1708_jack_detect, align 8
  tail call fastcc void @vt1708_update_hp_work(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_gen_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_set_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_override_amp_caps(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_secret_dac_path(ptr noundef %codec) unnamed_addr #2 align 64 {
entry:
  %conn = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %conn) #8
  %mixer_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 18
  %2 = call ptr @memset(ptr %conn, i32 255, i32 16)
  %3 = ptrtoint ptr %mixer_nid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mixer_nid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.cleanup31_crit_edge, label %if.end

entry.cleanup31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

if.end:                                           ; preds = %entry
  %call = call i32 @snd_hda_get_connections(ptr noundef %codec, i16 noundef zeroext %4, ptr noundef nonnull %conn, i32 noundef 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp44 = icmp sgt i32 %call, 0
  br i1 %cmp44, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %start_nid.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %5 = ptrtoint ptr %start_nid.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %start_nid.i, align 4
  %conv1.i = zext i16 %6 to i32
  %num_nodes.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %wcaps.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i16], ptr %conn, i32 0, i32 %i.045
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %conv.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp.i = icmp ugt i16 %6, %8
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %lor.lhs.false.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %for.body
  %9 = ptrtoint ptr %num_nodes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_nodes.i, align 8
  %add.i = add i32 %10, %conv1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp8.not.i = icmp ugt i32 %add.i, %conv.i
  br i1 %cmp8.not.i, label %get_wcaps.exit, label %lor.lhs.false.i.for.inc_crit_edge

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

get_wcaps.exit:                                   ; preds = %lor.lhs.false.i
  %11 = ptrtoint ptr %wcaps.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wcaps.i, align 4
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %arrayidx.i = getelementptr i32, ptr %12, i32 %sub.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp ne i32 %14, 0
  %15 = and i32 %14, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp6 = icmp eq i32 %15, 0
  %or.cond40 = and i1 %tobool.not.i, %cmp6
  br i1 %or.cond40, label %get_wcaps.exit.cleanup31_crit_edge, label %get_wcaps.exit.for.inc_crit_edge

get_wcaps.exit.for.inc_crit_edge:                 ; preds = %get_wcaps.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

get_wcaps.exit.cleanup31_crit_edge:               ; preds = %get_wcaps.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

for.inc:                                          ; preds = %get_wcaps.exit.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %start_nid = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %16 = ptrtoint ptr %start_nid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %start_nid, align 4
  %end_nid = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 19
  %18 = ptrtoint ptr %end_nid to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %end_nid, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %19)
  %cmp1246 = icmp ult i16 %17, %19
  br i1 %cmp1246, label %for.body14.lr.ph, label %for.end.cleanup31_crit_edge

for.end.cleanup31_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

for.body14.lr.ph:                                 ; preds = %for.end
  %20 = ptrtoint ptr %start_nid to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %start_nid, align 4
  %conv1.i4 = zext i16 %21 to i32
  %num_nodes.i6 = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %wcaps.i10 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %22 = zext i16 %17 to i32
  br label %for.body14

for.body14:                                       ; preds = %for.inc28.for.body14_crit_edge, %for.body14.lr.ph
  %indvars.iv = phi i32 [ %22, %for.body14.lr.ph ], [ %indvars.iv.next, %for.inc28.for.body14_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %conv1.i4)
  %cmp.i5 = icmp ult i32 %indvars.iv, %conv1.i4
  br i1 %cmp.i5, label %for.body14.for.inc28_crit_edge, label %lor.lhs.false.i9

for.body14.for.inc28_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc28

lor.lhs.false.i9:                                 ; preds = %for.body14
  %23 = ptrtoint ptr %num_nodes.i6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_nodes.i6, align 8
  %add.i7 = add i32 %24, %conv1.i4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i7, i32 %indvars.iv)
  %cmp8.not.i8 = icmp ugt i32 %add.i7, %indvars.iv
  br i1 %cmp8.not.i8, label %get_wcaps.exit15, label %lor.lhs.false.i9.for.inc28_crit_edge

lor.lhs.false.i9.for.inc28_crit_edge:             ; preds = %lor.lhs.false.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc28

get_wcaps.exit15:                                 ; preds = %lor.lhs.false.i9
  %25 = ptrtoint ptr %wcaps.i10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wcaps.i10, align 4
  %sub.i11 = sub nsw i32 %indvars.iv, %conv1.i4
  %arrayidx.i12 = getelementptr i32, ptr %26, i32 %sub.i11
  %27 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i16 = icmp ne i32 %28, 0
  %29 = and i32 %28, 15729152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %30 = icmp eq i32 %29, 0
  %or.cond = and i1 %tobool.not.i16, %30
  br i1 %or.cond, label %cleanup, label %get_wcaps.exit15.for.inc28_crit_edge

get_wcaps.exit15.for.inc28_crit_edge:             ; preds = %get_wcaps.exit15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc28

cleanup:                                          ; preds = %get_wcaps.exit15
  call void @__sanitizer_cov_trace_pc() #10
  %31 = trunc i32 %indvars.iv to i16
  %inc21 = add i32 %call, 1
  %arrayidx22 = getelementptr [8 x i16], ptr %conn, i32 0, i32 %call
  %32 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %arrayidx22, align 2
  %33 = ptrtoint ptr %mixer_nid to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %mixer_nid, align 2
  %call26 = call i32 @snd_hda_override_conn_list(ptr noundef %codec, i16 noundef zeroext %34, i32 noundef %inc21, ptr noundef nonnull %conn) #8
  br label %cleanup31

for.inc28:                                        ; preds = %get_wcaps.exit15.for.inc28_crit_edge, %lor.lhs.false.i9.for.inc28_crit_edge, %for.body14.for.inc28_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %lftr.wideiv = trunc i32 %indvars.iv.next to i16
  %exitcond51.not = icmp eq i16 %19, %lftr.wideiv
  br i1 %exitcond51.not, label %for.inc28.cleanup31_crit_edge, label %for.inc28.for.body14_crit_edge

for.inc28.for.body14_crit_edge:                   ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14

for.inc28.cleanup31_crit_edge:                    ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

cleanup31:                                        ; preds = %for.inc28.cleanup31_crit_edge, %cleanup, %for.end.cleanup31_crit_edge, %get_wcaps.exit.cleanup31_crit_edge, %entry.cleanup31_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %conn) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_connections(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_override_conn_list(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vt1716s_dmic_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %type, align 8
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
  store i32 1, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt1716s_dmic_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call.i = tail call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext 38, i32 noundef 0, i32 noundef 3841, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call.i, ptr %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt1716s_dmic_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %call.i = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 38, i32 noundef 0, i32 noundef 1793, i32 noundef %5) #8
  %dmic_enabled = getelementptr inbounds %struct.via_spec, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dmic_enabled to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %dmic_enabled, align 8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_read(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_switch_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_switch_put(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_pick_fixup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_apply_fixup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @via_fixup_intmic_boost(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp = icmp eq i32 %action, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %start_nid.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %0 = ptrtoint ptr %start_nid.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %start_nid.i.i, align 4
  %conv1.i.i = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %1)
  %cmp.i.i = icmp ugt i16 %1, 48
  br i1 %cmp.i.i, label %if.then.override_mic_boost.exit_crit_edge, label %lor.lhs.false.i.i

if.then.override_mic_boost.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %override_mic_boost.exit

lor.lhs.false.i.i:                                ; preds = %if.then
  %num_nodes.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %2 = ptrtoint ptr %num_nodes.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_nodes.i.i, align 8
  %add.i.i = add i32 %3, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %add.i.i)
  %cmp8.not.i.i = icmp ugt i32 %add.i.i, 48
  br i1 %cmp8.not.i.i, label %if.then.i.i, label %lor.lhs.false.i.i.override_mic_boost.exit_crit_edge

lor.lhs.false.i.i.override_mic_boost.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %override_mic_boost.exit

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %wcaps.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %4 = ptrtoint ptr %wcaps.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wcaps.i.i, align 4
  %sub.i.i = sub nsw i32 48, %conv1.i.i
  %arrayidx.i.i = getelementptr i32, ptr %5, i32 %sub.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %phi.bo.i = or i32 %7, 2
  store i32 %phi.bo.i, ptr %arrayidx.i.i, align 4
  br label %override_mic_boost.exit

override_mic_boost.exit:                          ; preds = %if.then.i.i, %lor.lhs.false.i.i.override_mic_boost.exit_crit_edge, %if.then.override_mic_boost.exit_crit_edge
  %call6.i = tail call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 48, i32 noundef 0, i32 noundef 2621952) #8
  br label %if.end

if.end:                                           ; preds = %override_mic_boost.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @via_fixup_power_save(ptr nocapture noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp = icmp eq i32 %action, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %power_save_node = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %0 = ptrtoint ptr %power_save_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %power_save_node, align 4
  %bf.clear = and i32 %bf.load, -16385
  store i32 %bf.clear, ptr %power_save_node, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @__UNIQUE_ID_file239, !1, !"__UNIQUE_ID_file239", i1 false, i1 false}
!1 = !{!"../sound/pci/hda/patch_via.c", i32 1249, i32 1}
!2 = !{ptr @__UNIQUE_ID_license240, !1, !"__UNIQUE_ID_license240", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description241, !4, !"__UNIQUE_ID_description241", i1 false, i1 false}
!4 = !{!"../sound/pci/hda/patch_via.c", i32 1250, i32 1}
!5 = !{ptr @__initcall__kmod_snd_hda_codec_via__242_1252_via_driver_init6, !6, !"__initcall__kmod_snd_hda_codec_via__242_1252_via_driver_init6", i1 false, i1 false}
!6 = !{!"../sound/pci/hda/patch_via.c", i32 1252, i32 1}
!7 = !{ptr @__exitcall_via_driver_exit, !6, !"__exitcall_via_driver_exit", i1 false, i1 false}
!8 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @via_driver, !10, !"via_driver", i1 false, i1 false}
!10 = !{!"../sound/pci/hda/patch_via.c", i32 1245, i32 32}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/pci/hda/patch_via.c", i32 1190, i32 2}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/pci/hda/patch_via.c", i32 1194, i32 2}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/pci/hda/patch_via.c", i32 1198, i32 2}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/pci/hda/patch_via.c", i32 1202, i32 2}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/pci/hda/patch_via.c", i32 1206, i32 2}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/pci/hda/patch_via.c", i32 1210, i32 2}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/pci/hda/patch_via.c", i32 1214, i32 2}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/pci/hda/patch_via.c", i32 1218, i32 2}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/pci/hda/patch_via.c", i32 1226, i32 2}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/pci/hda/patch_via.c", i32 1228, i32 2}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/pci/hda/patch_via.c", i32 1229, i32 2}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/pci/hda/patch_via.c", i32 1230, i32 2}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/pci/hda/patch_via.c", i32 1232, i32 2}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/pci/hda/patch_via.c", i32 1234, i32 2}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/pci/hda/patch_via.c", i32 1235, i32 2}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/pci/hda/patch_via.c", i32 1236, i32 2}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/pci/hda/patch_via.c", i32 1238, i32 2}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/pci/hda/patch_via.c", i32 1239, i32 2}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/pci/hda/patch_via.c", i32 1240, i32 2}
!49 = !{ptr @snd_hda_id_via, !50, !"snd_hda_id_via", i1 false, i1 false}
!50 = !{!"../sound/pci/hda/patch_via.c", i32 1189, i32 35}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/pci/hda/patch_via.c", i32 209, i32 14}
!53 = !{ptr @via_patch_ops, !54, !"via_patch_ops", i1 false, i1 false}
!54 = !{!"../sound/pci/hda/patch_via.c", i32 420, i32 35}
!55 = !{ptr @vt1708_init_verbs, !56, !"vt1708_init_verbs", i1 false, i1 false}
!56 = !{!"../sound/pci/hda/patch_via.c", i32 434, i32 30}
!57 = !{ptr @via_main_out_badness, !58, !"via_main_out_badness", i1 false, i1 false}
!58 = !{!"../sound/pci/hda/patch_via.c", i32 494, i32 35}
!59 = !{ptr @via_extra_out_badness, !60, !"via_extra_out_badness", i1 false, i1 false}
!60 = !{!"../sound/pci/hda/patch_via.c", i32 502, i32 35}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/pci/hda/patch_via.c", i32 255, i32 2}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/pci/hda/patch_via.c", i32 256, i32 2}
!65 = !{ptr @via_beep_mixer, !66, !"via_beep_mixer", i1 false, i1 false}
!66 = !{!"../sound/pci/hda/patch_via.c", i32 254, i32 38}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/pci/hda/patch_via.c", i32 246, i32 10}
!69 = !{ptr @via_pin_power_ctl_enum, !70, !"via_pin_power_ctl_enum", i1 false, i1 false}
!70 = !{!"../sound/pci/hda/patch_via.c", i32 244, i32 38}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/pci/hda/patch_via.c", i32 487, i32 10}
!73 = !{ptr @vt1708_jack_detect_ctl, !74, !"vt1708_jack_detect_ctl", i1 false, i1 false}
!74 = !{!"../sound/pci/hda/patch_via.c", i32 485, i32 38}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/hda/patch_via.c", i32 733, i32 33}
!77 = !{ptr @vt1708S_init_verbs, !78, !"vt1708S_init_verbs", i1 false, i1 false}
!78 = !{!"../sound/pci/hda/patch_via.c", i32 697, i32 30}
!79 = !{ptr @vt1702_init_verbs, !80, !"vt1702_init_verbs", i1 false, i1 false}
!80 = !{!"../sound/pci/hda/patch_via.c", i32 756, i32 30}
!81 = !{ptr @vt1718S_init_verbs, !82, !"vt1718S_init_verbs", i1 false, i1 false}
!82 = !{!"../sound/pci/hda/patch_via.c", i32 801, i32 30}
!83 = !{ptr @vt1716S_init_verbs, !84, !"vt1716S_init_verbs", i1 false, i1 false}
!84 = !{!"../sound/pci/hda/patch_via.c", i32 931, i32 30}
!85 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/pci/hda/patch_via.c", i32 915, i32 2}
!87 = !{ptr @vt1716s_dmic_mixer_vol, !88, !"vt1716s_dmic_mixer_vol", i1 false, i1 false}
!88 = !{!"../sound/pci/hda/patch_via.c", i32 914, i32 38}
!89 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/pci/hda/patch_via.c", i32 918, i32 11}
!91 = !{ptr @vt1716s_dmic_mixer_sw, !92, !"vt1716s_dmic_mixer_sw", i1 false, i1 false}
!92 = !{!"../sound/pci/hda/patch_via.c", i32 916, i32 38}
!93 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/pci/hda/patch_via.c", i32 929, i32 2}
!95 = !{ptr @vt1716S_mono_out_mixer, !96, !"vt1716S_mono_out_mixer", i1 false, i1 false}
!96 = !{!"../sound/pci/hda/patch_via.c", i32 928, i32 38}
!97 = !{ptr @fix_vt1802_connections.conn_24, !98, !"conn_24", i1 false, i1 false}
!98 = !{!"../sound/pci/hda/patch_via.c", i32 1056, i32 25}
!99 = !{ptr @fix_vt1802_connections.conn_33, !100, !"conn_33", i1 false, i1 false}
!100 = !{!"../sound/pci/hda/patch_via.c", i32 1057, i32 25}
!101 = !{ptr @.str.29, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/pci/hda/patch_via.c", i32 1044, i32 2}
!103 = !{ptr @.str.30, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/pci/hda/patch_via.c", i32 1045, i32 2}
!105 = !{ptr @.str.31, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/pci/hda/patch_via.c", i32 1046, i32 2}
!107 = !{ptr @.str.32, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/pci/hda/patch_via.c", i32 1047, i32 2}
!109 = !{ptr @vt2002p_fixups, !110, !"vt2002p_fixups", i1 false, i1 false}
!110 = !{!"../sound/pci/hda/patch_via.c", i32 1043, i32 35}
!111 = !{ptr @via_fixups, !112, !"via_fixups", i1 false, i1 false}
!112 = !{!"../sound/pci/hda/patch_via.c", i32 1023, i32 31}
!113 = !{ptr @vt1802_init_verbs, !114, !"vt1802_init_verbs", i1 false, i1 false}
!114 = !{!"../sound/pci/hda/patch_via.c", i32 992, i32 30}
!115 = !{ptr @vt2002P_init_verbs, !116, !"vt2002P_init_verbs", i1 false, i1 false}
!116 = !{!"../sound/pci/hda/patch_via.c", i32 980, i32 30}
!117 = !{ptr @vt1812_init_verbs, !118, !"vt1812_init_verbs", i1 false, i1 false}
!118 = !{!"../sound/pci/hda/patch_via.c", i32 1105, i32 30}
!119 = !{ptr @vt3476_init_verbs, !120, !"vt3476_init_verbs", i1 false, i1 false}
!120 = !{!"../sound/pci/hda/patch_via.c", i32 1147, i32 30}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"min_enum_size", i32 4}
!123 = !{i32 8, !"branch-target-enforcement", i32 0}
!124 = !{i32 8, !"sign-return-address", i32 0}
!125 = !{i32 8, !"sign-return-address-all", i32 0}
!126 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!127 = !{i32 7, !"uwtable", i32 1}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!130 = !{!"auto-init"}
!131 = !{i8 0, i8 2}
