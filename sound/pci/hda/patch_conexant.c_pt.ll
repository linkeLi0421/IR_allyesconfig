; ModuleID = '/llk/IR_all_yes/sound/pci/hda/patch_conexant.c_pt.bc'
source_filename = "../sound/pci/hda/patch_conexant.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hda_codec_driver = type { %struct.hdac_driver, ptr }
%struct.hdac_driver = type { %struct.device_driver, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hda_device_id = type { i32, i32, i8, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hda_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hda_model_fixup = type { i32, ptr }
%struct.snd_pci_quirk = type { i16, i16, i16, i32, ptr }
%struct.hda_fixup = type { i32, i8, i32, %union.anon.73 }
%union.anon.73 = type { ptr }
%struct.hda_pintbl = type { i16, i32 }
%struct.hda_verb = type { i16, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.hda_input_mux_item = type { [32 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.hda_codec = type { %struct.hdac_device, ptr, ptr, i32, i32, ptr, ptr, %struct.hda_codec_ops, %struct.list_head, %struct.refcount_struct, %struct.wait_queue_head, ptr, ptr, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.list_head, %struct.mutex, %struct.mutex, %struct.snd_array, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.snd_array, %struct.mutex, %struct.snd_array, %struct.snd_array, %struct.snd_array, ptr, i24, i32, i32, i32, ptr, ptr, %struct.snd_array, i32, %struct.delayed_work, i32, i32, ptr, ptr, %struct.snd_array }
%struct.conexant_spec = type { %struct.hda_gen_spec, i32, [4 x i16], i8, i16, i32, i8, i8, i32, ptr, i32, i32, i32, i32 }
%struct.hda_gen_spec = type <{ [32 x i8], ptr, ptr, [32 x i8], ptr, ptr, [32 x i8], ptr, ptr, i32, %struct.mutex, %struct.hda_multi_out, i16, [3 x i16], i32, i32, [18 x i16], i16, i16, i16, [2 x i8], [36 x ptr], [36 x i32], i16, [2 x i8], i32, i32, %struct.hda_input_mux, [3 x i32], i32, i32, i32, [3 x ptr], %struct.auto_pin_cfg, %struct.snd_array, [5 x i16], [36 x i16], [2 x i8], [36 x i32], i16, i16, i32, i32, [16 x i16], i32, [18 x i16], %struct.snd_array, [5 x i32], [5 x i32], [5 x i32], [3 x i32], [5 x i32], [36 x [18 x i32]], [36 x i32], i32, i32, i32, [3 x %struct.automic_entry], i48, [4 x i8], i64, i64, ptr, ptr, ptr, i8, i8, i16, i16, [2 x i8], [4 x i32], %struct.hda_vmaster_mute_hook, %struct.hda_loopback_check, %struct.snd_array, i32, [4 x %struct.hda_multi_io], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }>
%struct.hda_multi_out = type { i32, ptr, i16, [5 x i16], [5 x i16], i16, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.hda_input_mux = type { i32, [36 x %struct.hda_input_mux_item] }
%struct.auto_pin_cfg = type { i32, [5 x i16], i32, [5 x i16], i32, i32, [5 x i16], i32, [18 x %struct.auto_pin_cfg_item], i32, [2 x i16], i16, i16, [2 x i32], i32 }
%struct.auto_pin_cfg_item = type { i16, i32, i8 }
%struct.automic_entry = type { i16, i32, i32 }
%struct.hda_vmaster_mute_hook = type { ptr, ptr, ptr }
%struct.hda_loopback_check = type { ptr, i32 }
%struct.hda_multi_io = type { i16, i16, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.hda_bus = type { %struct.hdac_bus, ptr, ptr, ptr, %struct.mutex, [8 x i32], i8, i32, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.83, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.83 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.78, [128 x i8] }
%union.anon.78 = type { %union.anon.80 }
%union.anon.80 = type { [64 x i64] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__UNIQUE_ID_file240 = internal constant [65 x i8] c"snd_hda_codec_conexant.file=sound/pci/hda/snd-hda-codec-conexant\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [35 x i8] c"snd_hda_codec_conexant.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [59 x i8] c"snd_hda_codec_conexant.description=Conexant HD-audio codec\00", section ".modinfo", align 1
@__initcall__kmod_snd_hda_codec_conexant__243_1149_conexant_driver_init6 = internal global ptr @conexant_driver_init, section ".initcall6.init", align 4
@conexant_driver = internal global { %struct.hda_codec_driver, [52 x i8] } { %struct.hda_codec_driver { %struct.hdac_driver zeroinitializer, ptr @snd_hda_id_conexant }, [52 x i8] zeroinitializer }, align 32
@__exitcall_conexant_driver_exit = internal global ptr @conexant_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_hda_codec_conexant\00", [41 x i8] zeroinitializer }, align 32
@snd_hda_id_conexant = internal constant { [32 x %struct.hda_device_id], [160 x i8] } { [32 x %struct.hda_device_id] [%struct.hda_device_id { i32 351346566, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351346696, i32 0, i8 1, ptr @.str.2, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351346896, i32 0, i8 1, ptr @.str.3, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359045, i32 0, i8 1, ptr @.str.4, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359047, i32 0, i8 1, ptr @.str.5, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359057, i32 0, i8 1, ptr @.str.6, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359078, i32 0, i8 1, ptr @.str.7, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359079, i32 0, i8 1, ptr @.str.8, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359080, i32 0, i8 1, ptr @.str.9, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359081, i32 0, i8 1, ptr @.str.10, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359084, i32 0, i8 1, ptr @.str.11, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359086, i32 0, i8 1, ptr @.str.12, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359127, i32 0, i8 1, ptr @.str.13, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359128, i32 0, i8 1, ptr @.str.14, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359137, i32 0, i8 1, ptr @.str.15, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359138, i32 0, i8 1, ptr @.str.16, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359147, i32 0, i8 1, ptr @.str.17, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359148, i32 0, i8 1, ptr @.str.18, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359160, i32 0, i8 1, ptr @.str.19, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359161, i32 0, i8 1, ptr @.str.20, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359217, i32 0, i8 1, ptr @.str.21, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359218, i32 0, i8 1, ptr @.str.22, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359219, i32 0, i8 1, ptr @.str.23, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359220, i32 0, i8 1, ptr @.str.24, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359247, i32 0, i8 1, ptr @.str.25, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359248, i32 0, i8 1, ptr @.str.25, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359249, i32 0, i8 1, ptr @.str.26, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359251, i32 0, i8 1, ptr @.str.27, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359252, i32 0, i8 1, ptr @.str.28, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359253, i32 0, i8 1, ptr @.str.29, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id { i32 351359447, i32 0, i8 1, ptr @.str.30, i32 ptrtoint (ptr @patch_conexant_auto to i32) }, %struct.hda_device_id zeroinitializer], [160 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CX8070\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CX8200\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX11970\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CX20549 (Venice)\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CX20551 (Waikiki)\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CX20561 (Hermosa)\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CX20582 (Pebble)\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CX20583 (Pebble HSF)\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX20584\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX20585\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX20588\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX20590\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX20631\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX20632\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX20641\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX20642\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX20651\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX20652\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX20664\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX20665\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX21722\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX20722\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX21724\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX20724\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CX20751/2\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CX20753/4\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX20755\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX20756\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX20757\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX20952\00", [24 x i8] zeroinitializer }, align 32
@patch_conexant_auto._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.33, i32 1022, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: BIOS auto-probing.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"patch_conexant_auto\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/pci/hda/patch_conexant.c\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@patch_conexant_auto._entry_ptr = internal global ptr @patch_conexant_auto._entry, section ".printk_index", align 4
@cx_auto_patch_ops = internal constant { %struct.hda_codec_ops, [56 x i8] } { %struct.hda_codec_ops { ptr @snd_hda_gen_build_controls, ptr @snd_hda_gen_build_pcms, ptr @cx_auto_init, ptr @cx_auto_free, ptr @snd_hda_jack_unsol_event, ptr null, ptr @cx_auto_suspend, ptr null, ptr @snd_hda_gen_check_power_status, ptr null }, [56 x i8] zeroinitializer }, align 32
@cxt5045_fixup_models = internal constant { [4 x %struct.hda_model_fixup], [32 x i8] } { [4 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 13, ptr @.str.39 }, %struct.hda_model_fixup { i32 14, ptr @.str.40 }, %struct.hda_model_fixup { i32 15, ptr @.str.41 }, %struct.hda_model_fixup zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cxt5045_fixups = internal constant { [7 x %struct.snd_pci_quirk], [48 x i8] } { [7 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4156, i16 12501, i16 -1, i32 15, ptr @.str.42 }, %struct.snd_pci_quirk { i16 4473, i16 -207, i16 -1, i32 14, ptr @.str.43 }, %struct.snd_pci_quirk { i16 4156, i16 0, i16 0, i32 13, ptr @.str.44 }, %struct.snd_pci_quirk { i16 5681, i16 0, i16 0, i32 13, ptr @.str.45 }, %struct.snd_pci_quirk { i16 5940, i16 0, i16 0, i32 13, ptr @.str.46 }, %struct.snd_pci_quirk { i16 6058, i16 0, i16 0, i32 13, ptr @.str.47 }, %struct.snd_pci_quirk zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cxt_fixups = internal constant { [25 x %struct.hda_fixup], [112 x i8] } { [25 x %struct.hda_fixup] [%struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.73 { ptr @cxt_pincfg_lenovo_x200 } }, %struct.hda_fixup { i32 1, i8 -128, i32 11, %union.anon.73 { ptr @cxt_pincfg_lenovo_tp410 } }, %struct.hda_fixup { i32 1, i8 -128, i32 6, %union.anon.73 { ptr @cxt_pincfg_lemote } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.73 { ptr @cxt_pincfg_lemote } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.73 { ptr @.compoundliteral } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.73 { ptr @cxt_fixup_stereo_dmic } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.73 { ptr @cxt5066_increase_mic_boost } }, %struct.hda_fixup { i32 1, i8 -128, i32 8, %union.anon.73 { ptr @.compoundliteral.48 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.73 { ptr @cxt_fixup_headphone_mic } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.73 { ptr @.compoundliteral.49 } }, %struct.hda_fixup { i32 3, i8 -128, i32 9, %union.anon.73 { ptr @cxt_fixup_stereo_dmic } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.73 { ptr @hda_fixup_thinkpad_acpi } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.73 { ptr @cxt_fixup_olpc_xo } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.73 { ptr @cxt_fixup_cap_mix_amp } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.73 { ptr @.compoundliteral.50 } }, %struct.hda_fixup { i32 1, i8 -128, i32 13, %union.anon.73 { ptr @.compoundliteral.51 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.73 { ptr @cxt_fixup_cap_mix_amp_5047 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.73 { ptr @cxt_fixup_mute_led_eapd } }, %struct.hda_fixup { i32 1, i8 -128, i32 21, %union.anon.73 { ptr @.compoundliteral.52 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.73 { ptr @.compoundliteral.53 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.73 { ptr @cxt_fixup_hp_gate_mic_jack } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.73 { ptr @cxt_fixup_mute_led_gpio } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.73 { ptr @cxt_fixup_hp_zbook_mute_led } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.73 { ptr @cxt_fixup_headset_mic } }, %struct.hda_fixup { i32 1, i8 -128, i32 23, %union.anon.73 { ptr @.compoundliteral.54 } }], [112 x i8] zeroinitializer }, align 32
@cxt5047_fixup_models = internal constant { [2 x %struct.hda_model_fixup], [16 x i8] } { [2 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 16, ptr @.str.39 }, %struct.hda_model_fixup zeroinitializer], [16 x i8] zeroinitializer }, align 32
@cxt5047_fixups = internal constant { [2 x %struct.snd_pci_quirk], [32 x i8] } { [2 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4156, i16 0, i16 0, i32 16, ptr @.str.44 }, %struct.snd_pci_quirk zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cxt5051_fixup_models = internal constant { [2 x %struct.hda_model_fixup], [16 x i8] } { [2 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 0, ptr @.str.61 }, %struct.hda_model_fixup zeroinitializer], [16 x i8] zeroinitializer }, align 32
@cxt5051_fixups = internal constant { [3 x %struct.snd_pci_quirk], [48 x i8] } { [3 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4156, i16 13835, i16 -1, i32 4, ptr @.str.62 }, %struct.snd_pci_quirk { i16 6058, i16 8434, i16 -1, i32 0, ptr @.str.63 }, %struct.snd_pci_quirk zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cxt5066_fixup_models = internal constant { [14 x %struct.hda_model_fixup], [48 x i8] } { [14 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 5, ptr @.str.64 }, %struct.hda_model_fixup { i32 9, ptr @.str.65 }, %struct.hda_model_fixup { i32 7, ptr @.str.66 }, %struct.hda_model_fixup { i32 1, ptr @.str.67 }, %struct.hda_model_fixup { i32 11, ptr @.str.68 }, %struct.hda_model_fixup { i32 2, ptr @.str.69 }, %struct.hda_model_fixup { i32 3, ptr @.str.70 }, %struct.hda_model_fixup { i32 12, ptr @.str.71 }, %struct.hda_model_fixup { i32 17, ptr @.str.72 }, %struct.hda_model_fixup { i32 18, ptr @.str.73 }, %struct.hda_model_fixup { i32 21, ptr @.str.74 }, %struct.hda_model_fixup { i32 22, ptr @.str.75 }, %struct.hda_model_fixup { i32 24, ptr @.str.76 }, %struct.hda_model_fixup zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cxt5066_fixups = internal constant { [46 x %struct.snd_pci_quirk], [160 x i8] } { [46 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4133, i16 1347, i16 -1, i32 5, ptr @.str.77 }, %struct.snd_pci_quirk { i16 4133, i16 1356, i16 -1, i32 10, ptr @.str.78 }, %struct.snd_pci_quirk { i16 4133, i16 1359, i16 -1, i32 10, ptr @.str.79 }, %struct.snd_pci_quirk { i16 4156, i16 -32647, i16 -1, i32 18, ptr @.str.80 }, %struct.snd_pci_quirk { i16 4156, i16 -32644, i16 -1, i32 18, ptr @.str.81 }, %struct.snd_pci_quirk { i16 4156, i16 -32515, i16 -1, i32 18, ptr @.str.82 }, %struct.snd_pci_quirk { i16 4156, i16 -32491, i16 -1, i32 20, ptr @.str.83 }, %struct.snd_pci_quirk { i16 4156, i16 -32433, i16 -1, i32 21, ptr @.str.84 }, %struct.snd_pci_quirk { i16 4156, i16 -32396, i16 -1, i32 19, ptr @.str.85 }, %struct.snd_pci_quirk { i16 4156, i16 -32210, i16 -1, i32 21, ptr @.str.86 }, %struct.snd_pci_quirk { i16 4156, i16 -32116, i16 -1, i32 18, ptr @.str.87 }, %struct.snd_pci_quirk { i16 4156, i16 -32103, i16 -1, i32 24, ptr @.str.88 }, %struct.snd_pci_quirk { i16 4156, i16 -32102, i16 -1, i32 24, ptr @.str.89 }, %struct.snd_pci_quirk { i16 4156, i16 -31890, i16 -1, i32 21, ptr @.str.90 }, %struct.snd_pci_quirk { i16 4156, i16 -31873, i16 -1, i32 21, ptr @.str.91 }, %struct.snd_pci_quirk { i16 4156, i16 -31822, i16 -1, i32 18, ptr @.str.92 }, %struct.snd_pci_quirk { i16 4156, i16 -31821, i16 -1, i32 18, ptr @.str.93 }, %struct.snd_pci_quirk { i16 4156, i16 -31789, i16 -1, i32 18, ptr @.str.94 }, %struct.snd_pci_quirk { i16 4156, i16 -31742, i16 -1, i32 21, ptr @.str.95 }, %struct.snd_pci_quirk { i16 4156, i16 -31705, i16 -1, i32 22, ptr @.str.96 }, %struct.snd_pci_quirk { i16 4156, i16 -31665, i16 -1, i32 22, ptr @.str.96 }, %struct.snd_pci_quirk { i16 4156, i16 -31659, i16 -1, i32 24, ptr @.str.97 }, %struct.snd_pci_quirk { i16 4156, i16 -31658, i16 -1, i32 24, ptr @.str.98 }, %struct.snd_pci_quirk { i16 4156, i16 -31657, i16 -1, i32 24, ptr @.str.99 }, %struct.snd_pci_quirk { i16 4156, i16 -31656, i16 -1, i32 24, ptr @.str.100 }, %struct.snd_pci_quirk { i16 4163, i16 5005, i16 -1, i32 7, ptr @.str.101 }, %struct.snd_pci_quirk { i16 5421, i16 2099, i16 -1, i32 12, ptr @.str.102 }, %struct.snd_pci_quirk { i16 6058, i16 8434, i16 -1, i32 1, ptr @.str.103 }, %struct.snd_pci_quirk { i16 6058, i16 8542, i16 -1, i32 1, ptr @.str.104 }, %struct.snd_pci_quirk { i16 6058, i16 8543, i16 -1, i32 1, ptr @.str.105 }, %struct.snd_pci_quirk { i16 6058, i16 8654, i16 -1, i32 1, ptr @.str.106 }, %struct.snd_pci_quirk { i16 6058, i16 8655, i16 -1, i32 1, ptr @.str.107 }, %struct.snd_pci_quirk { i16 6058, i16 8658, i16 -1, i32 1, ptr @.str.108 }, %struct.snd_pci_quirk { i16 6058, i16 8666, i16 -1, i32 1, ptr @.str.109 }, %struct.snd_pci_quirk { i16 6058, i16 8667, i16 -1, i32 1, ptr @.str.110 }, %struct.snd_pci_quirk { i16 6058, i16 14511, i16 -1, i32 17, ptr @.str.111 }, %struct.snd_pci_quirk { i16 6058, i16 14597, i16 -1, i32 5, ptr @.str.112 }, %struct.snd_pci_quirk { i16 6058, i16 14603, i16 -1, i32 5, ptr @.str.113 }, %struct.snd_pci_quirk { i16 6058, i16 14709, i16 -1, i32 5, ptr @.str.114 }, %struct.snd_pci_quirk { i16 6058, i16 14711, i16 -1, i32 5, ptr @.str.115 }, %struct.snd_pci_quirk { i16 6058, i16 14712, i16 -1, i32 5, ptr @.str.116 }, %struct.snd_pci_quirk { i16 6058, i16 14715, i16 -1, i32 5, ptr @.str.117 }, %struct.snd_pci_quirk { i16 6058, i16 0, i16 0, i32 11, ptr @.str.118 }, %struct.snd_pci_quirk { i16 7174, i16 8209, i16 -1, i32 2, ptr @.str.119 }, %struct.snd_pci_quirk { i16 7174, i16 8210, i16 -1, i32 3, ptr @.str.120 }, %struct.snd_pci_quirk zeroinitializer], [160 x i8] zeroinitializer }, align 32
@patch_conexant_auto._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.33, i32 1089, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Enable sync_write for stable communication\0A\00", [52 x i8] zeroinitializer }, align 32
@patch_conexant_auto._entry_ptr.38 = internal global ptr @patch_conexant_auto._entry.36, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cap-mix-amp\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"toshiba-p105\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hp-530\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HP 530\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Toshiba P105\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HP\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Packard Bell\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Fujitsu\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Lenovo\00", [25 x i8] zeroinitializer }, align 32
@cxt_pincfg_lenovo_x200 = internal constant { [5 x %struct.hda_pintbl], [56 x i8] } { [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 22, i32 69288191 }, %struct.hda_pintbl { i16 23, i32 564203520 }, %struct.hda_pintbl { i16 25, i32 555814975 }, %struct.hda_pintbl { i16 28, i32 558104832 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@cxt_pincfg_lenovo_tp410 = internal constant { [4 x %struct.hda_pintbl], [32 x i8] } { [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 25, i32 69275903 }, %struct.hda_pintbl { i16 26, i32 564236528 }, %struct.hda_pintbl { i16 28, i32 555827455 }, %struct.hda_pintbl zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cxt_pincfg_lemote = internal constant { [8 x %struct.hda_pintbl], [32 x i8] } { [8 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 26, i32 -1868496864 }, %struct.hda_pintbl { i16 27, i32 60887072 }, %struct.hda_pintbl { i16 29, i32 1073807856 }, %struct.hda_pintbl { i16 30, i32 1084686832 }, %struct.hda_pintbl { i16 32, i32 1078264304 }, %struct.hda_pintbl { i16 34, i32 1078198768 }, %struct.hda_pintbl { i16 35, i32 1084686832 }, %struct.hda_pintbl zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [3 x %struct.hda_pintbl], [40 x i8] } { [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 23, i32 1073742320 }, %struct.hda_pintbl { i16 29, i32 -1750662880 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal constant { [2 x %struct.hda_pintbl], [16 x i8] } { [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 24, i32 60920125 }, %struct.hda_pintbl zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal constant { [4 x %struct.hda_verb], [48 x i8] } { [4 x %struct.hda_verb] [%struct.hda_verb { i16 1, i32 1814, i32 1 }, %struct.hda_verb { i16 1, i32 1815, i32 1 }, %struct.hda_verb { i16 1, i32 1813, i32 1 }, %struct.hda_verb zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal constant { [4 x %struct.hda_pintbl], [32 x i8] } { [4 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 16, i32 -1776877072 }, %struct.hda_pintbl { i16 18, i32 44142622 }, %struct.hda_pintbl { i16 20, i32 -1784217328 }, %struct.hda_pintbl zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal constant { [2 x %struct.hda_pintbl], [16 x i8] } { [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 18, i32 -1868168864 }, %struct.hda_pintbl zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal constant { [3 x %struct.hda_pintbl], [40 x i8] } { [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 22, i32 553717792 }, %struct.hda_pintbl { i16 24, i32 562106431 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal constant { [2 x %struct.hda_pintbl], [16 x i8] } { [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 29, i32 -1860763375 }, %struct.hda_pintbl zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal constant { [2 x %struct.hda_pintbl], [16 x i8] } { [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 26, i32 44110140 }, %struct.hda_pintbl zeroinitializer], [16 x i8] zeroinitializer }, align 32
@olpc_xo_mixers = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @olpc_xo_dc_mode_get, ptr @olpc_xo_dc_mode_put, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @olpc_xo_dc_bias_enum_info, ptr @olpc_xo_dc_bias_enum_get, ptr @olpc_xo_dc_bias_enum_put, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mic Boost Volume\00", [47 x i8] zeroinitializer }, align 32
@olpc_xo_dc_bias = internal constant { { i32, <{ %struct.hda_input_mux_item, %struct.hda_input_mux_item, %struct.hda_input_mux_item, [33 x %struct.hda_input_mux_item] }> }, [332 x i8] } { { i32, <{ %struct.hda_input_mux_item, %struct.hda_input_mux_item, %struct.hda_input_mux_item, [33 x %struct.hda_input_mux_item] }> } { i32 3, <{ %struct.hda_input_mux_item, %struct.hda_input_mux_item, %struct.hda_input_mux_item, [33 x %struct.hda_input_mux_item] }> <{ %struct.hda_input_mux_item { [32 x i8] c"Off\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32 }, %struct.hda_input_mux_item { [32 x i8] c"50%\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33 }, %struct.hda_input_mux_item { [32 x i8] c"80%\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 36 }, [33 x %struct.hda_input_mux_item] zeroinitializer }> }, [332 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DC Mode Enable Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DC Input Bias Enum\00", [45 x i8] zeroinitializer }, align 32
@cxt_update_gpio_led.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.33, ptr @.str.60, i8 0, i8 -93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cxt_update_gpio_led\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mask:%d enabled:%d gpio_led:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lenovo-x200\00", [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Compaq CQ60\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Lenovo X200\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stereo-dmic\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio1\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"headphone-mic-pin\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tp410\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"thinkpad\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lemote-a1004\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lemote-a1205\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"olpc-xo\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mute-led-eapd\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hp-dock\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mute-led-gpio\00", [18 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hp-zbook-mute-led\00", [46 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hp-mic-fix\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Acer Aspire One 522\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Acer Aspire 3830TG\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Acer Aspire 4830T\00", [46 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HP EliteBook 840 G3\00", [44 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HP EliteBook 820 G3\00", [44 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HP ProBook 640 G2\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HP Z1 Gen3\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HP ZBook 15u G3\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HP Spectre x360\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HP ProBook 440 G4\00", [46 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HP EliteBook 840 G4\00", [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HP 800 G3 SFF\00", [18 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HP 800 G3 DM\00", [19 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HP ProBook 455 G5\00", [46 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HP ProBook 470 G5\00", [46 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HP EliteBook 840 G5\00", [44 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HP EliteBook 830 G5\00", [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HP ProBook 640 G4\00", [46 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HP ProBook 645 G4\00", [46 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HP ZBook Studio G5\00", [45 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HP Z2 G4\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HP Z2 G4 SFF\00", [19 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HP Z2 G4 mini\00", [18 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HP Z2 G4 mini premium\00", [42 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Asus\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OLPC XO-1.5\00", [20 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Lenovo T400\00", [20 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Lenovo T410\00", [20 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Lenovo T510\00", [20 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Lenovo T420\00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Lenovo T520\00", [20 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Lenovo T420s\00", [19 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Lenovo X220\00", [20 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Lenovo X220-tablet\00", [45 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Lenovo IdeaPad Z560\00", [44 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Lenovo G50-30\00", [18 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Lenovo G50-80\00", [18 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Lenovo U300s\00", [19 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Lenovo IdeaPad U310\00", [44 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Lenovo G50-70\00", [18 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Lenovo S205\00", [20 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Thinkpad\00", [23 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Lemote A1004\00", [19 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Lemote A1205\00", [19 x i8] zeroinitializer }, align 32
@cxt_beep_mixer = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 1073741824, ptr @.str.121, i32 0, i32 268435475, i32 0, ptr @snd_hda_mixer_amp_volume_info, ptr @snd_hda_mixer_amp_volume_get, ptr @snd_hda_mixer_amp_volume_put, %union.anon.84 { ptr @snd_hda_mixer_amp_tlv }, i32 327680 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 1073741824, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_hda_mixer_amp_switch_info, ptr @snd_hda_mixer_amp_switch_get_beep, ptr @snd_hda_mixer_amp_switch_put_beep, %union.anon.84 zeroinitializer, i32 327680 }], [32 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Beep Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Beep Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 351359045, i64 351359047, i64 351359057, i64 351359218]
@__sancov_gen_cov_switch_values.123 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.125 = private unnamed_addr constant [16 x i8] c"conexant_driver\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1145, i32 32 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1149, i32 1 }
@___asan_gen_.131 = private unnamed_addr constant [20 x i8] c"snd_hda_id_conexant\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1106, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1107, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1108, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1109, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1110, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1111, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1112, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1113, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1114, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1115, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1116, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1117, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1118, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1119, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1120, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1121, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1122, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1123, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1124, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1125, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1126, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1127, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1128, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1129, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1130, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1131, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1133, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1134, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1135, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1136, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1137, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1022, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [18 x i8] c"cx_auto_patch_ops\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 203, i32 35 }
@___asan_gen_.245 = private unnamed_addr constant [21 x i8] c"cxt5045_fixup_models\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 903, i32 37 }
@___asan_gen_.248 = private unnamed_addr constant [15 x i8] c"cxt5045_fixups\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 890, i32 35 }
@___asan_gen_.251 = private unnamed_addr constant [11 x i8] c"cxt_fixups\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 741, i32 31 }
@___asan_gen_.254 = private unnamed_addr constant [21 x i8] c"cxt5047_fixup_models\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 917, i32 37 }
@___asan_gen_.257 = private unnamed_addr constant [15 x i8] c"cxt5047_fixups\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 910, i32 35 }
@___asan_gen_.260 = private unnamed_addr constant [21 x i8] c"cxt5051_fixup_models\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 928, i32 37 }
@___asan_gen_.263 = private unnamed_addr constant [15 x i8] c"cxt5051_fixups\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 922, i32 35 }
@___asan_gen_.266 = private unnamed_addr constant [21 x i8] c"cxt5066_fixup_models\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 982, i32 37 }
@___asan_gen_.269 = private unnamed_addr constant [15 x i8] c"cxt5066_fixups\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 933, i32 35 }
@___asan_gen_.272 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1088, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 904, i32 41 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 905, i32 42 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 906, i32 36 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 891, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 892, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 896, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 897, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 898, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 899, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant [23 x i8] c"cxt_pincfg_lenovo_x200\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 713, i32 32 }
@___asan_gen_.308 = private unnamed_addr constant [24 x i8] c"cxt_pincfg_lenovo_tp410\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 722, i32 32 }
@___asan_gen_.311 = private unnamed_addr constant [18 x i8] c"cxt_pincfg_lemote\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 730, i32 32 }
@___asan_gen_.314 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.316 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.322 = private unnamed_addr constant [15 x i8] c"olpc_xo_mixers\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 524, i32 38 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 580, i32 27 }
@___asan_gen_.328 = private unnamed_addr constant [16 x i8] c"olpc_xo_dc_bias\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 349, i32 35 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 527, i32 11 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 534, i32 11 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 652, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 929, i32 42 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 923, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 924, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 983, i32 41 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 984, i32 35 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 985, i32 47 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 986, i32 43 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 987, i32 43 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 988, i32 43 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 989, i32 43 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 990, i32 37 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 991, i32 43 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 992, i32 37 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 993, i32 43 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 994, i32 47 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 995, i32 48 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 934, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 935, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 936, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 937, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 938, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 939, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 940, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 941, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 942, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 943, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 944, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 945, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 946, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 947, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 948, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 949, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 950, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 951, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 952, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 953, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 955, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 956, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 957, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 958, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 959, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 960, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 961, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 962, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 963, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 964, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 965, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 966, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 967, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 968, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 969, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 970, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 971, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 972, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 973, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 974, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 975, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 976, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 977, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 978, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant [15 x i8] c"cxt_beep_mixer\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 51, i32 38 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 52, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.530 = private constant [34 x i8] c"../sound/pci/hda/patch_conexant.c\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 53, i32 2 }
@llvm.compiler.used = appending global [149 x ptr] [ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_conexant_driver_exit, ptr @__initcall__kmod_snd_hda_codec_conexant__243_1149_conexant_driver_init6, ptr @conexant_driver_exit, ptr @patch_conexant_auto._entry, ptr @patch_conexant_auto._entry.36, ptr @patch_conexant_auto._entry_ptr, ptr @patch_conexant_auto._entry_ptr.38, ptr @conexant_driver, ptr @.str, ptr @snd_hda_id_conexant, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @cx_auto_patch_ops, ptr @cxt5045_fixup_models, ptr @cxt5045_fixups, ptr @cxt_fixups, ptr @cxt5047_fixup_models, ptr @cxt5047_fixups, ptr @cxt5051_fixup_models, ptr @cxt5051_fixups, ptr @cxt5066_fixup_models, ptr @cxt5066_fixups, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @cxt_pincfg_lenovo_x200, ptr @cxt_pincfg_lenovo_tp410, ptr @cxt_pincfg_lemote, ptr @.compoundliteral, ptr @.compoundliteral.48, ptr @.compoundliteral.49, ptr @.compoundliteral.50, ptr @.compoundliteral.51, ptr @.compoundliteral.52, ptr @.compoundliteral.53, ptr @.compoundliteral.54, ptr @olpc_xo_mixers, ptr @.str.55, ptr @olpc_xo_dc_bias, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @cxt_beep_mixer, ptr @.str.121, ptr @.str.122], section "llvm.metadata"
@0 = internal global [141 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conexant_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hda_id_conexant to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @patch_conexant_auto._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx_auto_patch_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxt5045_fixup_models to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxt5045_fixups to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxt_fixups to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxt5047_fixup_models to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxt5047_fixups to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxt5051_fixup_models to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxt5051_fixups to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxt5066_fixup_models to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxt5066_fixups to i32), i32 736, i32 896, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @patch_conexant_auto._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxt_pincfg_lenovo_x200 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxt_pincfg_lenovo_tp410 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxt_pincfg_lemote to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo_mixers to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo_dc_bias to i32), i32 1300, i32 1632, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxt_beep_mixer to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @conexant_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hda_codec_driver_register(ptr noundef nonnull @conexant_driver, ptr noundef nonnull @.str, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @conexant_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @hda_codec_driver_unregister(ptr noundef nonnull @conexant_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_codec_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hda_codec_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_conexant_auto(ptr noundef %codec) #2 align 64 {
entry:
  %val.i.i.i.i.i = alloca i32, align 4
  %val.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_name = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 15
  %0 = ptrtoint ptr %chip_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_name, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %codec, ptr noundef nonnull @.str.31, ptr noundef %1) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 5752) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i) #10
  %spec3 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %3 = ptrtoint ptr %spec3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %spec3, align 8
  %patch_ops = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %patch_ops, ptr @cx_auto_patch_ops, i32 40)
  %start_nid.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %5 = ptrtoint ptr %start_nid.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %start_nid.i, align 4
  %end_nid.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 19
  %7 = ptrtoint ptr %end_nid.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %end_nid.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp43.i = icmp ult i16 %6, %8
  br i1 %cmp43.i, label %for.body.lr.ph.i, label %if.end.for.end.i_crit_edge

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %num_nodes.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %wcaps.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %num_eapds.i = getelementptr inbounds %struct.conexant_spec, ptr %call7.i.i, i32 0, i32 1
  %9 = zext i16 %6 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ %9, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %start_nid.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %start_nid.i, align 4
  %conv1.i.i = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.i, i32 %conv1.i.i)
  %cmp.i.i = icmp ult i32 %indvars.iv.i, %conv1.i.i
  br i1 %cmp.i.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false.i.i:                                ; preds = %for.body.i
  %12 = ptrtoint ptr %num_nodes.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_nodes.i.i, align 8
  %add.i.i = add i32 %13, %conv1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %indvars.iv.i)
  %cmp8.not.i.i = icmp ugt i32 %add.i.i, %indvars.iv.i
  br i1 %cmp8.not.i.i, label %get_wcaps.exit.i, label %lor.lhs.false.i.i.for.inc.i_crit_edge

lor.lhs.false.i.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

get_wcaps.exit.i:                                 ; preds = %lor.lhs.false.i.i
  %14 = ptrtoint ptr %wcaps.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wcaps.i.i, align 4
  %sub.i.i = sub nsw i32 %indvars.iv.i, %conv1.i.i
  %arrayidx.i.i = getelementptr i32, ptr %15, i32 %sub.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %18 = and i32 %17, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %18)
  %cmp6.not.i = icmp eq i32 %18, 4194304
  br i1 %cmp6.not.i, label %if.end.i, label %get_wcaps.exit.i.for.inc.i_crit_edge

get_wcaps.exit.i.for.inc.i_crit_edge:             ; preds = %get_wcaps.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %get_wcaps.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #10
  %19 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !280
  %20 = trunc i32 %indvars.iv.i to i16
  %call.i.i.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %20, i32 noundef 12, ptr noundef nonnull %val.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %snd_hda_query_pin_caps.exit.thread.i, label %snd_hda_query_pin_caps.exit.i

snd_hda_query_pin_caps.exit.thread.i:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #10
  br label %if.end10.i

snd_hda_query_pin_caps.exit.i:                    ; preds = %if.end.i
  %21 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #10
  %and.i = and i32 %22, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %snd_hda_query_pin_caps.exit.i.for.inc.i_crit_edge, label %snd_hda_query_pin_caps.exit.i.if.end10.i_crit_edge

snd_hda_query_pin_caps.exit.i.if.end10.i_crit_edge: ; preds = %snd_hda_query_pin_caps.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

snd_hda_query_pin_caps.exit.i.for.inc.i_crit_edge: ; preds = %snd_hda_query_pin_caps.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end10.i:                                       ; preds = %snd_hda_query_pin_caps.exit.i.if.end10.i_crit_edge, %snd_hda_query_pin_caps.exit.thread.i
  %23 = ptrtoint ptr %num_eapds.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_eapds.i, align 8
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %num_eapds.i, align 8
  %arrayidx.i = getelementptr %struct.conexant_spec, ptr %call7.i.i, i32 0, i32 2, i32 %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %20, ptr %arrayidx.i, align 2
  %26 = load i32, ptr %num_eapds.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp12.i = icmp ugt i32 %26, 3
  br i1 %cmp12.i, label %if.end10.i.for.end.i_crit_edge, label %if.end10.i.for.inc.i_crit_edge

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end10.i.for.end.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end10.i.for.inc.i_crit_edge, %snd_hda_query_pin_caps.exit.i.for.inc.i_crit_edge, %get_wcaps.exit.i.for.inc.i_crit_edge, %lor.lhs.false.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %27 = ptrtoint ptr %end_nid.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %end_nid.i, align 2
  %29 = zext i16 %28 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %29
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end10.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %num_eapds17.i = getelementptr inbounds %struct.conexant_spec, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %num_eapds17.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_eapds17.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp18.i = icmp ugt i32 %31, 2
  br i1 %cmp18.i, label %if.then20.i, label %for.end.i.cx_auto_parse_eapd.exit_crit_edge

for.end.i.cx_auto_parse_eapd.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx_auto_parse_eapd.exit

if.then20.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dynamic_eapd.i = getelementptr inbounds %struct.conexant_spec, ptr %call7.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %dynamic_eapd.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %dynamic_eapd.i, align 4
  br label %cx_auto_parse_eapd.exit

cx_auto_parse_eapd.exit:                          ; preds = %if.then20.i, %for.end.i.cx_auto_parse_eapd.exit_crit_edge
  %own_eapd_ctl = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i, i32 0, i32 58
  %33 = ptrtoint ptr %own_eapd_ctl to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %bf.load = load i64, ptr %own_eapd_ctl, align 4
  %bf.set = or i64 %bf.load, 549755813888
  store i64 %bf.set, ptr %own_eapd_ctl, align 4
  %vendor_id = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 7
  %34 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vendor_id, align 8
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %35, label %cx_auto_parse_eapd.exit.sw.default_crit_edge [
    i32 351359045, label %sw.bb
    i32 351359047, label %sw.bb14
    i32 351359057, label %sw.bb25
    i32 351359218, label %sw.bb30
  ]

cx_auto_parse_eapd.exit.sw.default_crit_edge:     ; preds = %cx_auto_parse_eapd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.bb:                                            ; preds = %cx_auto_parse_eapd.exit
  call void @__sanitizer_cov_trace_pc() #12
  %single_adc_amp = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %37 = ptrtoint ptr %single_adc_amp to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load6 = load i32, ptr %single_adc_amp, align 4
  %bf.set8 = or i32 %bf.load6, 33554432
  store i32 %bf.set8, ptr %single_adc_amp, align 4
  %mixer_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i, i32 0, i32 18
  %38 = ptrtoint ptr %mixer_nid to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 23, ptr %mixer_nid, align 2
  %bf.clear12 = and i64 %bf.set, -12884901889
  %bf.set13 = or i64 %bf.clear12, 8589934592
  %39 = ptrtoint ptr %own_eapd_ctl to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 %bf.set13, ptr %own_eapd_ctl, align 4
  call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef nonnull @cxt5045_fixup_models, ptr noundef nonnull @cxt5045_fixups, ptr noundef nonnull @cxt_fixups) #10
  br label %sw.epilog

sw.bb14:                                          ; preds = %cx_auto_parse_eapd.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pin_amp_workaround = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %40 = ptrtoint ptr %pin_amp_workaround to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load15 = load i32, ptr %pin_amp_workaround, align 4
  %bf.set17 = or i32 %bf.load15, 67108864
  store i32 %bf.set17, ptr %pin_amp_workaround, align 4
  %mixer_nid19 = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i, i32 0, i32 18
  %41 = ptrtoint ptr %mixer_nid19 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 25, ptr %mixer_nid19, align 2
  %bf.clear23 = and i64 %bf.set, -12884901889
  %bf.set24 = or i64 %bf.clear23, 8589934592
  %42 = ptrtoint ptr %own_eapd_ctl to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %bf.set24, ptr %own_eapd_ctl, align 4
  call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef nonnull @cxt5047_fixup_models, ptr noundef nonnull @cxt5047_fixups, ptr noundef nonnull @cxt_fixups) #10
  br label %sw.epilog

sw.bb25:                                          ; preds = %cx_auto_parse_eapd.exit
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %spec3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %spec3, align 8
  %call.i = call i32 @query_amp_caps(ptr noundef %codec, i16 noundef zeroext 16, i32 noundef 1) #10
  %or.i = or i32 %call.i, 1073741824
  %call2.i = call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 16, i32 noundef 1, i32 noundef %or.i) #10
  %call.1.i = call i32 @query_amp_caps(ptr noundef %codec, i16 noundef zeroext 17, i32 noundef 1) #10
  %or.1.i = or i32 %call.1.i, 1073741824
  %call2.1.i = call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 17, i32 noundef 1, i32 noundef %or.1.i) #10
  %dac_min_mute.i = getelementptr inbounds %struct.hda_gen_spec, ptr %44, i32 0, i32 58
  %45 = ptrtoint ptr %dac_min_mute.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %bf.load.i = load i64, ptr %dac_min_mute.i, align 4
  %bf.set.i = or i64 %bf.load.i, 536870912
  store i64 %bf.set.i, ptr %dac_min_mute.i, align 4
  %pin_amp_workaround26 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %46 = ptrtoint ptr %pin_amp_workaround26 to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load27 = load i32, ptr %pin_amp_workaround26, align 4
  %bf.set29 = or i32 %bf.load27, 67108864
  store i32 %bf.set29, ptr %pin_amp_workaround26, align 4
  call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef nonnull @cxt5051_fixup_models, ptr noundef nonnull @cxt5051_fixups, ptr noundef nonnull @cxt_fixups) #10
  br label %sw.epilog

sw.bb30:                                          ; preds = %cx_auto_parse_eapd.exit
  call void @__sanitizer_cov_trace_pc() #12
  %power_save_node = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %47 = ptrtoint ptr %power_save_node to i32
  call void @__asan_load4_noabort(i32 %47)
  %bf.load31 = load i32, ptr %power_save_node, align 4
  %bf.set33 = or i32 %bf.load31, 16384
  store i32 %bf.set33, ptr %power_save_node, align 4
  br label %sw.default

sw.default:                                       ; preds = %sw.bb30, %cx_auto_parse_eapd.exit.sw.default_crit_edge
  %pin_amp_workaround34 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %48 = ptrtoint ptr %pin_amp_workaround34 to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load35 = load i32, ptr %pin_amp_workaround34, align 4
  %bf.set37 = or i32 %bf.load35, 67108864
  store i32 %bf.set37, ptr %pin_amp_workaround34, align 4
  call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef nonnull @cxt5066_fixup_models, ptr noundef nonnull @cxt5066_fixups, ptr noundef nonnull @cxt_fixups) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb25, %sw.bb14, %sw.bb
  %hook = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i, i32 0, i32 71, i32 1
  %49 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hook, align 8
  %tobool39.not = icmp eq ptr %50, null
  br i1 %tobool39.not, label %land.lhs.true, label %sw.epilog.if.end45_crit_edge

sw.epilog.if.end45_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

land.lhs.true:                                    ; preds = %sw.epilog
  %dynamic_eapd = getelementptr inbounds %struct.conexant_spec, ptr %call7.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %dynamic_eapd to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %dynamic_eapd, align 4, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool40.not = icmp eq i8 %52, 0
  br i1 %tobool40.not, label %land.lhs.true.if.end45_crit_edge, label %if.then41

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %hook to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @cx_auto_vmaster_hook, ptr %hook, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %land.lhs.true.if.end45_crit_edge, %sw.epilog.if.end45_crit_edge
  call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 0) #10
  %autocfg = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i, i32 0, i32 33
  %parse_flags = getelementptr inbounds %struct.conexant_spec, ptr %call7.i.i, i32 0, i32 5
  %54 = ptrtoint ptr %parse_flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %parse_flags, align 8
  %call47 = call i32 @snd_hda_parse_pin_defcfg(ptr noundef %codec, ptr noundef %autocfg, ptr noundef null, i32 noundef %55) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp = icmp slt i32 %call47, 0
  br i1 %cmp, label %if.end45.error_crit_edge, label %if.end49

if.end45.error_crit_edge:                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end49:                                         ; preds = %if.end45
  %call52 = call i32 @snd_hda_gen_parse_auto_config(ptr noundef %codec, ptr noundef %autocfg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end49.error_crit_edge, label %if.end55

if.end49.error_crit_edge:                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end55:                                         ; preds = %if.end49
  %56 = ptrtoint ptr %spec3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %spec3, align 8
  %58 = ptrtoint ptr %start_nid.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %start_nid.i, align 4
  %60 = ptrtoint ptr %end_nid.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %end_nid.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %59, i16 %61)
  %cmp27.i = icmp ult i16 %59, %61
  br i1 %cmp27.i, label %for.body.lr.ph.i129, label %if.end55.if.end59_crit_edge

if.end55.if.end59_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

for.body.lr.ph.i129:                              ; preds = %if.end55
  %conv1.i.i126 = zext i16 %59 to i32
  %num_nodes.i.i127 = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %wcaps.i.i128 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  br label %for.body.i132

for.body.i132:                                    ; preds = %for.inc.i140.for.body.i132_crit_edge, %for.body.lr.ph.i129
  %indvars.iv.i130 = phi i32 [ %conv1.i.i126, %for.body.lr.ph.i129 ], [ %indvars.iv.next.i139, %for.inc.i140.for.body.i132_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.i130, i32 %conv1.i.i126)
  %cmp.i.i131 = icmp ult i32 %indvars.iv.i130, %conv1.i.i126
  br i1 %cmp.i.i131, label %for.body.i132.for.inc.i140_crit_edge, label %lor.lhs.false.i.i135

for.body.i132.for.inc.i140_crit_edge:             ; preds = %for.body.i132
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i140

lor.lhs.false.i.i135:                             ; preds = %for.body.i132
  %62 = ptrtoint ptr %num_nodes.i.i127 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_nodes.i.i127, align 8
  %add.i.i133 = add i32 %63, %conv1.i.i126
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i133, i32 %indvars.iv.i130)
  %cmp8.not.i.i134 = icmp ugt i32 %add.i.i133, %indvars.iv.i130
  br i1 %cmp8.not.i.i134, label %get_wcaps.exit.i138, label %lor.lhs.false.i.i135.for.inc.i140_crit_edge

lor.lhs.false.i.i135.for.inc.i140_crit_edge:      ; preds = %lor.lhs.false.i.i135
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i140

get_wcaps.exit.i138:                              ; preds = %lor.lhs.false.i.i135
  %64 = ptrtoint ptr %wcaps.i.i128 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wcaps.i.i128, align 4
  %sub.i.i136 = sub nuw nsw i32 %indvars.iv.i130, %conv1.i.i126
  %arrayidx.i.i137 = getelementptr i32, ptr %65, i32 %sub.i.i136
  %66 = ptrtoint ptr %arrayidx.i.i137 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i.i137, align 4
  %68 = and i32 %67, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 7340032, i32 %68)
  %cmp6.i = icmp eq i32 %68, 7340032
  br i1 %cmp6.i, label %if.then.i, label %get_wcaps.exit.i138.for.inc.i140_crit_edge

get_wcaps.exit.i138.for.inc.i140_crit_edge:       ; preds = %get_wcaps.exit.i138
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i140

if.then.i:                                        ; preds = %get_wcaps.exit.i138
  %69 = trunc i32 %indvars.iv.i130 to i16
  %or1.i.i = or i32 %indvars.iv.i130, 327680
  %beep_nid.i.i = getelementptr inbounds %struct.hda_gen_spec, ptr %57, i32 0, i32 67
  %70 = ptrtoint ptr %beep_nid.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %beep_nid.i.i, align 2
  %call.i.i = call ptr @snd_hda_gen_add_kctl(ptr noundef %57, ptr noundef null, ptr noundef nonnull @cxt_beep_mixer) #10
  %tobool.not.i18.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i18.i, label %if.then.i.error_crit_edge, label %if.end.i19.i

if.then.i.error_crit_edge:                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end.i19.i:                                     ; preds = %if.then.i
  %private_value.i.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %call.i.i, i32 0, i32 11
  %71 = ptrtoint ptr %private_value.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or1.i.i, ptr %private_value.i.i, align 4
  %call.1.i.i = call ptr @snd_hda_gen_add_kctl(ptr noundef %57, ptr noundef null, ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @cxt_beep_mixer, i32 0, i32 1)) #10
  %tobool.not.1.i.i = icmp eq ptr %call.1.i.i, null
  br i1 %tobool.not.1.i.i, label %if.end.i19.i.error_crit_edge, label %if.end.1.i.i

if.end.i19.i.error_crit_edge:                     ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end.1.i.i:                                     ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #12
  %private_value.1.i.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %call.1.i.i, i32 0, i32 11
  %72 = ptrtoint ptr %private_value.1.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or1.i.i, ptr %private_value.1.i.i, align 4
  br label %if.end59

for.inc.i140:                                     ; preds = %get_wcaps.exit.i138.for.inc.i140_crit_edge, %lor.lhs.false.i.i135.for.inc.i140_crit_edge, %for.body.i132.for.inc.i140_crit_edge
  %indvars.iv.next.i139 = add nuw nsw i32 %indvars.iv.i130, 1
  %lftr.wideiv.i = trunc i32 %indvars.iv.next.i139 to i16
  %exitcond.not.i = icmp eq i16 %61, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %for.inc.i140.if.end59_crit_edge, label %for.inc.i140.for.body.i132_crit_edge

for.inc.i140.for.body.i132_crit_edge:             ; preds = %for.inc.i140
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i132

for.inc.i140.if.end59_crit_edge:                  ; preds = %for.inc.i140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.end59:                                         ; preds = %for.inc.i140.if.end59_crit_edge, %if.end.1.i.i, %if.end55.if.end59_crit_edge
  %bus = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 1
  %73 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bus, align 8
  %sync_write = getelementptr inbounds %struct.hdac_bus, ptr %74, i32 0, i32 28
  %75 = ptrtoint ptr %sync_write to i32
  call void @__asan_load2_noabort(i32 %75)
  %bf.load61 = load i16, ptr %sync_write, align 4
  %76 = and i16 %bf.load61, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %bf.cast.not = icmp eq i16 %76, 0
  br i1 %bf.cast.not, label %do.end66, label %if.end59.if.end79_crit_edge

if.end59.if.end79_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %codec, ptr noundef nonnull @.str.37) #13
  %77 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bus, align 8
  %sync_write71 = getelementptr inbounds %struct.hdac_bus, ptr %78, i32 0, i32 28
  %79 = ptrtoint ptr %sync_write71 to i32
  call void @__asan_load2_noabort(i32 %79)
  %bf.load72 = load i16, ptr %sync_write71, align 4
  %bf.set74 = or i16 %bf.load72, 8192
  store i16 %bf.set74, ptr %sync_write71, align 4
  %80 = load ptr, ptr %bus, align 8
  %allow_bus_reset = getelementptr inbounds %struct.hda_bus, ptr %80, i32 0, i32 6
  %81 = ptrtoint ptr %allow_bus_reset to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load76 = load i8, ptr %allow_bus_reset, align 4
  %bf.set78 = or i8 %bf.load76, -128
  store i8 %bf.set78, ptr %allow_bus_reset, align 4
  br label %if.end79

if.end79:                                         ; preds = %do.end66, %if.end59.if.end79_crit_edge
  call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 1) #10
  br label %cleanup

error:                                            ; preds = %if.end.i19.i.error_crit_edge, %if.then.i.error_crit_edge, %if.end49.error_crit_edge, %if.end45.error_crit_edge
  %err.0 = phi i32 [ %call47, %if.end45.error_crit_edge ], [ %call52, %if.end49.error_crit_edge ], [ -12, %if.then.i.error_crit_edge ], [ -12, %if.end.i19.i.error_crit_edge ]
  %82 = ptrtoint ptr %spec3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %spec3, align 8
  %num_eapds.i.i = getelementptr inbounds %struct.conexant_spec, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %num_eapds.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num_eapds.i.i, align 8
  %eapds.i.i = getelementptr inbounds %struct.conexant_spec, ptr %83, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp12.i.i.i = icmp sgt i32 %85, 0
  br i1 %cmp12.i.i.i, label %error.for.body.i.i.i_crit_edge, label %error.cx_auto_free.exit_crit_edge

error.cx_auto_free.exit_crit_edge:                ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx_auto_free.exit

error.for.body.i.i.i_crit_edge:                   ; preds = %error
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %error.for.body.i.i.i_crit_edge
  %i.013.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %error.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr i16, ptr %eapds.i.i, i32 %i.013.i.i.i
  %86 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx.i.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i.i.i) #10
  %88 = ptrtoint ptr %val.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %val.i.i.i.i.i, align 4, !annotation !280
  %call.i.i.i.i.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %87, i32 noundef 12, ptr noundef nonnull %val.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %snd_hda_query_pin_caps.exit.thread.i.i.i, label %snd_hda_query_pin_caps.exit.i.i.i

snd_hda_query_pin_caps.exit.thread.i.i.i:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i.i.i) #10
  br label %if.then.i.i.i

snd_hda_query_pin_caps.exit.i.i.i:                ; preds = %for.body.i.i.i
  %89 = ptrtoint ptr %val.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %val.i.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i.i.i) #10
  %and.i.i.i = and i32 %90, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %snd_hda_query_pin_caps.exit.i.i.i.for.inc.i.i.i_crit_edge, label %snd_hda_query_pin_caps.exit.i.i.i.if.then.i.i.i_crit_edge

snd_hda_query_pin_caps.exit.i.i.i.if.then.i.i.i_crit_edge: ; preds = %snd_hda_query_pin_caps.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

snd_hda_query_pin_caps.exit.i.i.i.for.inc.i.i.i_crit_edge: ; preds = %snd_hda_query_pin_caps.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %snd_hda_query_pin_caps.exit.i.i.i.if.then.i.i.i_crit_edge, %snd_hda_query_pin_caps.exit.thread.i.i.i
  %91 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %arrayidx.i.i.i, align 2
  %call.i.i.i.i = call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %92, i32 noundef 0, i32 noundef 1804, i32 noundef 0) #10
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %snd_hda_query_pin_caps.exit.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.013.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %85
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.cx_auto_free.exit_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc.i.i.i.cx_auto_free.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx_auto_free.exit

cx_auto_free.exit:                                ; preds = %for.inc.i.i.i.cx_auto_free.exit_crit_edge, %error.cx_auto_free.exit_crit_edge
  call void @snd_hda_gen_free(ptr noundef %codec) #10
  br label %cleanup

cleanup:                                          ; preds = %cx_auto_free.exit, %if.end79, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %cx_auto_free.exit ], [ 0, %if.end79 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_spec_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_pick_fixup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx_auto_vmaster_hook(ptr noundef %private_data, i32 noundef %enabled) #2 align 64 {
entry:
  %val.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %private_data, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %num_eapds = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_eapds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_eapds, align 8
  %eapds = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12.i = icmp sgt i32 %3, 0
  br i1 %cmp12.i, label %for.body.lr.ph.i, label %entry.cx_auto_turn_eapd.exit_crit_edge

entry.cx_auto_turn_eapd.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx_auto_turn_eapd.exit

for.body.lr.ph.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %cond.i = select i1 %tobool.not, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %eapds, i32 %i.013.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #10
  %6 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !280
  %call.i.i.i = call i32 @_snd_hdac_read_parm(ptr noundef %private_data, i16 noundef zeroext %5, i32 noundef 12, ptr noundef nonnull %val.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %snd_hda_query_pin_caps.exit.thread.i, label %snd_hda_query_pin_caps.exit.i

snd_hda_query_pin_caps.exit.thread.i:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #10
  br label %if.then.i

snd_hda_query_pin_caps.exit.i:                    ; preds = %for.body.i
  %7 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #10
  %and.i = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %snd_hda_query_pin_caps.exit.i.for.inc.i_crit_edge, label %snd_hda_query_pin_caps.exit.i.if.then.i_crit_edge

snd_hda_query_pin_caps.exit.i.if.then.i_crit_edge: ; preds = %snd_hda_query_pin_caps.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

snd_hda_query_pin_caps.exit.i.for.inc.i_crit_edge: ; preds = %snd_hda_query_pin_caps.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %snd_hda_query_pin_caps.exit.i.if.then.i_crit_edge, %snd_hda_query_pin_caps.exit.thread.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i, align 2
  %call.i.i = call i32 @snd_hdac_codec_write(ptr noundef %private_data, i16 noundef zeroext %10, i32 noundef 0, i32 noundef 1804, i32 noundef %cond.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %snd_hda_query_pin_caps.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.cx_auto_turn_eapd.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cx_auto_turn_eapd.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx_auto_turn_eapd.exit

cx_auto_turn_eapd.exit:                           ; preds = %for.inc.i.cx_auto_turn_eapd.exit_crit_edge, %entry.cx_auto_turn_eapd.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_apply_fixup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_parse_pin_defcfg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_parse_auto_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx_auto_free(ptr noundef %codec) #2 align 64 {
entry:
  %val.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1.i, align 8
  %num_eapds.i = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_eapds.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_eapds.i, align 8
  %eapds.i = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12.i.i = icmp sgt i32 %3, 0
  br i1 %cmp12.i.i, label %entry.for.body.i.i_crit_edge, label %entry.cx_auto_shutdown.exit_crit_edge

entry.cx_auto_shutdown.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx_auto_shutdown.exit

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.013.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i16, ptr %eapds.i, i32 %i.013.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i.i) #10
  %6 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i.i.i.i, align 4, !annotation !280
  %call.i.i.i.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %5, i32 noundef 12, ptr noundef nonnull %val.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %snd_hda_query_pin_caps.exit.thread.i.i, label %snd_hda_query_pin_caps.exit.i.i

snd_hda_query_pin_caps.exit.thread.i.i:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i.i) #10
  br label %if.then.i.i

snd_hda_query_pin_caps.exit.i.i:                  ; preds = %for.body.i.i
  %7 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i.i) #10
  %and.i.i = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %snd_hda_query_pin_caps.exit.i.i.for.inc.i.i_crit_edge, label %snd_hda_query_pin_caps.exit.i.i.if.then.i.i_crit_edge

snd_hda_query_pin_caps.exit.i.i.if.then.i.i_crit_edge: ; preds = %snd_hda_query_pin_caps.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

snd_hda_query_pin_caps.exit.i.i.for.inc.i.i_crit_edge: ; preds = %snd_hda_query_pin_caps.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %snd_hda_query_pin_caps.exit.i.i.if.then.i.i_crit_edge, %snd_hda_query_pin_caps.exit.thread.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i.i, align 2
  %call.i.i.i = call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %10, i32 noundef 0, i32 noundef 1804, i32 noundef 0) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %snd_hda_query_pin_caps.exit.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.013.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %3
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cx_auto_shutdown.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.cx_auto_shutdown.exit_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx_auto_shutdown.exit

cx_auto_shutdown.exit:                            ; preds = %for.inc.i.i.cx_auto_shutdown.exit_crit_edge, %entry.cx_auto_shutdown.exit_crit_edge
  call void @snd_hda_gen_free(ptr noundef %codec) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_build_controls(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_build_pcms(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx_auto_init(ptr noundef %codec) #2 align 64 {
entry:
  %val.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %call = tail call i32 @snd_hda_gen_init(ptr noundef %codec) #10
  %dynamic_eapd = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dynamic_eapd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dynamic_eapd, align 4, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %num_eapds = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %num_eapds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_eapds, align 8
  %eapds = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12.i = icmp sgt i32 %5, 0
  br i1 %cmp12.i, label %if.then.for.body.i_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %eapds, i32 %i.013.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #10
  %8 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !280
  %call.i.i.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %7, i32 noundef 12, ptr noundef nonnull %val.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %snd_hda_query_pin_caps.exit.thread.i, label %snd_hda_query_pin_caps.exit.i

snd_hda_query_pin_caps.exit.thread.i:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #10
  br label %if.then.i

snd_hda_query_pin_caps.exit.i:                    ; preds = %for.body.i
  %9 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #10
  %and.i = and i32 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %snd_hda_query_pin_caps.exit.i.for.inc.i_crit_edge, label %snd_hda_query_pin_caps.exit.i.if.then.i_crit_edge

snd_hda_query_pin_caps.exit.i.if.then.i_crit_edge: ; preds = %snd_hda_query_pin_caps.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

snd_hda_query_pin_caps.exit.i.for.inc.i_crit_edge: ; preds = %snd_hda_query_pin_caps.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %snd_hda_query_pin_caps.exit.i.if.then.i_crit_edge, %snd_hda_query_pin_caps.exit.thread.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i, align 2
  %call.i.i = call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %12, i32 noundef 0, i32 noundef 1804, i32 noundef 2) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %snd_hda_query_pin_caps.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spec1, align 8
  %gpio_mute_led_mask.i = getelementptr inbounds %struct.conexant_spec, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %gpio_mute_led_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gpio_mute_led_mask.i, align 8
  %gpio_mic_led_mask.i = getelementptr inbounds %struct.conexant_spec, ptr %14, i32 0, i32 13
  %17 = ptrtoint ptr %gpio_mic_led_mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gpio_mic_led_mask.i, align 4
  %or.i = or i32 %18, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i8 = icmp eq i32 %or.i, 0
  br i1 %tobool.not.i8, label %if.end.cxt_init_gpio_led.exit_crit_edge, label %if.then.i10

if.end.cxt_init_gpio_led.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxt_init_gpio_led.exit

if.then.i10:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i9 = call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1814, i32 noundef %or.i) #10
  %call.i11.i = call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1815, i32 noundef %or.i) #10
  %gpio_led.i = getelementptr inbounds %struct.conexant_spec, ptr %14, i32 0, i32 11
  %19 = ptrtoint ptr %gpio_led.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gpio_led.i, align 4
  %call.i12.i = call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1813, i32 noundef %20) #10
  br label %cxt_init_gpio_led.exit

cxt_init_gpio_led.exit:                           ; preds = %if.then.i10, %if.end.cxt_init_gpio_led.exit_crit_edge
  call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 2) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_jack_unsol_event(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx_auto_suspend(ptr noundef %codec) #2 align 64 {
entry:
  %val.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1.i, align 8
  %num_eapds.i = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_eapds.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_eapds.i, align 8
  %eapds.i = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12.i.i = icmp sgt i32 %3, 0
  br i1 %cmp12.i.i, label %entry.for.body.i.i_crit_edge, label %entry.cx_auto_shutdown.exit_crit_edge

entry.cx_auto_shutdown.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx_auto_shutdown.exit

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.013.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i16, ptr %eapds.i, i32 %i.013.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i.i) #10
  %6 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i.i.i.i, align 4, !annotation !280
  %call.i.i.i.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %5, i32 noundef 12, ptr noundef nonnull %val.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %snd_hda_query_pin_caps.exit.thread.i.i, label %snd_hda_query_pin_caps.exit.i.i

snd_hda_query_pin_caps.exit.thread.i.i:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i.i) #10
  br label %if.then.i.i

snd_hda_query_pin_caps.exit.i.i:                  ; preds = %for.body.i.i
  %7 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i.i) #10
  %and.i.i = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %snd_hda_query_pin_caps.exit.i.i.for.inc.i.i_crit_edge, label %snd_hda_query_pin_caps.exit.i.i.if.then.i.i_crit_edge

snd_hda_query_pin_caps.exit.i.i.if.then.i.i_crit_edge: ; preds = %snd_hda_query_pin_caps.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

snd_hda_query_pin_caps.exit.i.i.for.inc.i.i_crit_edge: ; preds = %snd_hda_query_pin_caps.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %snd_hda_query_pin_caps.exit.i.i.if.then.i.i_crit_edge, %snd_hda_query_pin_caps.exit.thread.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i.i, align 2
  %call.i.i.i = call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %10, i32 noundef 0, i32 noundef 1804, i32 noundef 0) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %snd_hda_query_pin_caps.exit.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.013.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %3
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cx_auto_shutdown.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.cx_auto_shutdown.exit_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx_auto_shutdown.exit

cx_auto_shutdown.exit:                            ; preds = %for.inc.i.i.cx_auto_shutdown.exit_crit_edge, %entry.cx_auto_shutdown.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_check_power_status(ptr noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_hdac_read_parm(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_write(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cxt_fixup_stereo_dmic(ptr nocapture noundef readonly %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %inv_dmic_split = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %inv_dmic_split to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %bf.load = load i64, ptr %inv_dmic_split, align 4
  %bf.set = or i64 %bf.load, 1099511627776
  store i64 %bf.set, ptr %inv_dmic_split, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxt5066_increase_mic_boost(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp.not = icmp eq i32 %action, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 23, i32 noundef 1, i32 noundef 2556931) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxt_fixup_headphone_mic(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %2 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %action, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb25
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %parse_flags = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %parse_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %parse_flags, align 8
  %or = or i32 %4, 8
  store i32 %or, ptr %parse_flags, align 8
  %call = tail call i32 @snd_hdac_regmap_add_vendor_verb(ptr noundef %codec, i32 noundef 1040) #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %cap_sync_hook = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 78
  %5 = ptrtoint ptr %cap_sync_hook to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cap_sync_hook, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %sw.bb2.if.end_crit_edge, label %do.end, !prof !282

sw.bb2.if.end_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 314, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb2.if.end_crit_edge
  %7 = ptrtoint ptr %cap_sync_hook to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @cxt_update_headset_mode_hook, ptr %cap_sync_hook, align 8
  %automute_hook = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 77
  %8 = ptrtoint ptr %automute_hook to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @cxt_update_headset_mode, ptr %automute_hook, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cxt_update_headset_mode(ptr noundef %codec)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %if.end, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hda_fixup_thinkpad_acpi(ptr nocapture noundef %codec, ptr nocapture noundef %fix, i32 noundef %action) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxt_fixup_olpc_xo(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %action)
  %cmp.not = icmp eq i32 %action, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %mic_autoswitch_hook = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 83
  %2 = ptrtoint ptr %mic_autoswitch_hook to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @olpc_xo_automic, ptr %mic_autoswitch_hook, align 4
  %pcm_capture_hook = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 80
  %3 = ptrtoint ptr %pcm_capture_hook to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @olpc_xo_capture_hook, ptr %pcm_capture_hook, align 8
  %call = tail call ptr @snd_hda_add_new_path(ptr noundef %codec, i16 noundef zeroext 30, i16 noundef zeroext 20, i32 noundef 0) #10
  %dc_mode_path = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %dc_mode_path to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %dc_mode_path, align 4
  %call3 = tail call i32 @snd_hda_add_new_ctls(ptr noundef %codec, ptr noundef nonnull @olpc_xo_mixers) #10
  %call4 = tail call i32 @snd_hda_codec_set_pin_target(ptr noundef %codec, i16 noundef zeroext 26, i32 noundef 33) #10
  %kctls = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 34
  %5 = ptrtoint ptr %kctls to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %kctls, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp828.not = icmp eq i32 %6, 0
  br i1 %cmp828.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %list = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 34, i32 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list, align 8
  %elem_size.i = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 34, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %kctl.029 = phi ptr [ %8, %for.body.lr.ph ], [ %add.ptr.i, %for.inc.for.body_crit_edge ]
  %name = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kctl.029, i32 0, i32 3
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %call9 = tail call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(17) @.str.55) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then10, label %for.inc

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %put = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kctl.029, i32 0, i32 9
  %11 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @olpc_xo_mic_boost_put, ptr %put, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.030, 1
  %12 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %list, align 4
  %14 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %elem_size.i, align 4
  %mul.i = mul i32 %15, %inc
  %add.ptr.i = getelementptr i8, ptr %13, i32 %mul.i
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxt_fixup_cap_mix_amp(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 23, i32 noundef 0, i32 noundef -2147150828) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxt_fixup_cap_mix_amp_5047(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 16, i32 noundef 0, i32 noundef -2147150057) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxt_fixup_mute_led_eapd(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp = icmp eq i32 %action, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %mute_led_eapd = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mute_led_eapd to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 27, ptr %mute_led_eapd, align 2
  %dynamic_eapd = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %dynamic_eapd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %dynamic_eapd, align 4
  %call = tail call i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef %codec, ptr noundef nonnull @cx_auto_vmaster_mute_led) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxt_fixup_hp_gate_mic_jack(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %action)
  %cmp = icmp eq i32 %action, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @snd_hda_jack_set_gating_jack(ptr noundef %codec, i16 noundef zeroext 25, i16 noundef zeroext 22) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxt_fixup_mute_led_gpio(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp = icmp eq i32 %action, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1.i, align 8
  %gpio_led.i = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %gpio_led.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %gpio_led.i, align 4
  %mute_led_polarity.i = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %mute_led_polarity.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %mute_led_polarity.i, align 8
  %call.i = tail call i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef %codec, ptr noundef nonnull @cxt_gpio_mute_update) #10
  %gpio_mute_led_mask.i = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %gpio_mute_led_mask.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %gpio_mute_led_mask.i, align 8
  %call4.i = tail call i32 @snd_hda_gen_add_micmute_led_cdev(ptr noundef %codec, ptr noundef nonnull @cxt_gpio_micmute_update) #10
  %gpio_mic_led_mask.i = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %gpio_mic_led_mask.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %gpio_mic_led_mask.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxt_fixup_hp_zbook_mute_led(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp = icmp eq i32 %action, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1.i, align 8
  %gpio_led.i = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %gpio_led.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %gpio_led.i, align 4
  %mute_led_polarity.i = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %mute_led_polarity.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %mute_led_polarity.i, align 8
  %call.i = tail call i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef %codec, ptr noundef nonnull @cxt_gpio_mute_update) #10
  %gpio_mute_led_mask.i = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %gpio_mute_led_mask.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %gpio_mute_led_mask.i, align 8
  %call4.i = tail call i32 @snd_hda_gen_add_micmute_led_cdev(ptr noundef %codec, ptr noundef nonnull @cxt_gpio_micmute_update) #10
  %gpio_mic_led_mask.i = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %gpio_mic_led_mask.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %gpio_mic_led_mask.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cxt_fixup_headset_mic(ptr nocapture noundef readonly %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cond = icmp eq i32 %action, 0
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %parse_flags = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %parse_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parse_flags, align 8
  %or = or i32 %3, 4
  store i32 %or, ptr %parse_flags, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_override_amp_caps(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_regmap_add_vendor_verb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxt_update_headset_mode_hook(ptr noundef %codec, ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef readnone %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cxt_update_headset_mode(ptr noundef %codec)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxt_update_headset_mode(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %cur_mux = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %cur_mux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_mux, align 4
  %arrayidx4 = getelementptr %struct.hda_gen_spec, ptr %1, i32 0, i32 36, i32 %3
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx4, align 2
  %num_inputs = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 33, i32 7
  %6 = ptrtoint ptr %num_inputs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_inputs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp46 = icmp sgt i32 %7, 0
  br i1 %cmp46, label %entry.for.body_crit_edge, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.047 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx5 = getelementptr %struct.hda_gen_spec, ptr %1, i32 0, i32 33, i32 8, i32 %i.047
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %5)
  %cmp7 = icmp eq i16 %9, %5
  br i1 %cmp7, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %is_headphone_mic = getelementptr %struct.hda_gen_spec, ptr %1, i32 0, i32 33, i32 8, i32 %i.047, i32 2
  %10 = ptrtoint ptr %is_headphone_mic to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %is_headphone_mic, align 4
  %11 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then.if.else_crit_edge, label %if.then13

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.if.else_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.else_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %codec, i32 noundef 30150656, i32 noundef 124) #10
  %hp_jack_present = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 58
  %12 = ptrtoint ptr %hp_jack_present to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %bf.load15 = load i64, ptr %hp_jack_present, align 4
  %bf.clear16 = and i64 %bf.load15, 9223372036854775807
  store i64 %bf.clear16, ptr %hp_jack_present, align 4
  br label %if.end28

if.else:                                          ; preds = %for.inc.if.else_crit_edge, %if.then.if.else_crit_edge, %entry.if.else_crit_edge
  %call.i.i43 = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %codec, i32 noundef 30150656, i32 noundef 84) #10
  %hp_pins = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 33, i32 6
  %13 = ptrtoint ptr %hp_pins to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hp_pins, align 8
  %call.i.i44 = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %codec, i16 noundef zeroext %14, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44)
  %cmp.i.i.not = icmp eq i32 %call.i.i44, 0
  %hp_jack_present24 = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 58
  %15 = ptrtoint ptr %hp_jack_present24 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %bf.load25 = load i64, ptr %hp_jack_present24, align 4
  %bf.shl = select i1 %cmp.i.i.not, i64 0, i64 -9223372036854775808
  %bf.clear26 = and i64 %bf.load25, 9223372036854775807
  %bf.set27 = or i64 %bf.clear26, %bf.shl
  store i64 %bf.set27, ptr %hp_jack_present24, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then13
  tail call void @snd_hda_gen_update_outputs(ptr noundef %codec) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_gen_update_outputs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_regmap_write_raw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_jack_detect_state_mst(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @olpc_xo_automic(ptr noundef %codec, ptr noundef %jack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %dc_enable = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dc_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dc_enable, align 1, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @snd_hda_gen_mic_autoswitch(ptr noundef %codec, ptr noundef %jack) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @olpc_xo_update_mic_pins(ptr noundef %codec)
  %4 = ptrtoint ptr %dc_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dc_enable, align 1, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @olpc_xo_update_mic_boost(ptr noundef %codec)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @olpc_xo_capture_hook(ptr nocapture noundef readnone %hinfo, ptr noundef %codec, ptr nocapture noundef readnone %substream, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %2 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %action, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb2
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 0, %sw.bb2 ], [ 1, %entry.sw.epilog.sink.split_crit_edge ]
  %recording3 = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %recording3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.sink, ptr %recording3, align 4
  tail call fastcc void @olpc_xo_update_mic_pins(ptr noundef %codec)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_add_new_path(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_add_new_ctls(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_set_pin_target(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @olpc_xo_mic_boost_put(ptr noundef %kcontrol, ptr noundef %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 8
  %call = tail call i32 @snd_hda_mixer_amp_volume_put(ptr noundef %kcontrol, ptr noundef %ucontrol) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dc_enable = getelementptr inbounds %struct.conexant_spec, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %dc_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dc_enable, align 1, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @olpc_xo_update_mic_boost(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_gen_mic_autoswitch(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @olpc_xo_update_mic_pins(ptr noundef %codec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %input_paths = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 52
  %cur_mux = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %cur_mux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_mux, align 4
  %arrayidx4 = getelementptr [18 x i32], ptr %input_paths, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %dc_enable = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %dc_enable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dc_enable, align 1, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %codec, i32 noundef 32442112, i32 noundef 0) #10
  %dc_mode_path = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %dc_mode_path to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dc_mode_path, align 4
  tail call void @snd_hda_activate_path(ptr noundef %codec, ptr noundef %9, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %recording = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %recording to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %recording, align 4, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  br i1 %tobool5.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 @snd_hda_codec_get_pin_target(ptr noundef %codec, i16 noundef zeroext 26) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %call6, %cond.true ], [ 0, %if.then.cond.end_crit_edge ]
  %call.i.i64 = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %codec, i32 noundef 28247808, i32 noundef %cond) #10
  %12 = ptrtoint ptr %recording to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %recording, align 4, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool9.not = icmp eq i8 %13, 0
  br i1 %tobool9.not, label %cond.end.cond.end13_crit_edge, label %cond.true10

cond.end.cond.end13_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end13

cond.true10:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 @snd_hda_codec_get_pin_target(ptr noundef %codec, i16 noundef zeroext 27) #10
  br label %cond.end13

cond.end13:                                       ; preds = %cond.true10, %cond.end.cond.end13_crit_edge
  %cond14 = phi i32 [ %call11, %cond.true10 ], [ 0, %cond.end.cond.end13_crit_edge ]
  %call.i.i65 = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %codec, i32 noundef 29296384, i32 noundef %cond14) #10
  %call16 = tail call ptr @snd_hda_get_path_from_idx(ptr noundef %codec, i32 noundef %5) #10
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %cond.end13.if.end36_crit_edge, label %if.then18

cond.end13.if.end36_crit_edge:                    ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then18:                                        ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @snd_hda_activate_path(ptr noundef %codec, ptr noundef nonnull %call16, i1 noundef zeroext true, i1 noundef zeroext false) #10
  br label %if.end36

if.else:                                          ; preds = %entry
  %call19 = tail call ptr @snd_hda_get_path_from_idx(ptr noundef %codec, i32 noundef %5) #10
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.else.if.end22_crit_edge, label %if.then21

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @snd_hda_activate_path(ptr noundef %codec, ptr noundef nonnull %call19, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.else.if.end22_crit_edge
  %recording23 = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %recording23 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %recording23, align 4, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool24.not = icmp eq i8 %15, 0
  br i1 %tobool24.not, label %if.end22.if.end28_crit_edge, label %if.then25

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %dc_input_bias = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %dc_input_bias to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dc_input_bias, align 8
  %index = getelementptr [36 x %struct.hda_input_mux_item], ptr getelementptr inbounds ({ i32, <{ %struct.hda_input_mux_item, %struct.hda_input_mux_item, %struct.hda_input_mux_item, [33 x %struct.hda_input_mux_item] }> }, ptr @olpc_xo_dc_bias, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %17, i32 1
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end22.if.end28_crit_edge
  %val.0 = phi i32 [ %19, %if.then25 ], [ 0, %if.end22.if.end28_crit_edge ]
  %call.i.i66 = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %codec, i32 noundef 28247808, i32 noundef %val.0) #10
  %call.i.i67 = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %codec, i32 noundef 29296384, i32 noundef 0) #10
  %20 = ptrtoint ptr %recording23 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %recording23, align 4, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool32.not = icmp eq i8 %21, 0
  %cond33 = select i1 %tobool32.not, i32 0, i32 32
  %call.i.i68 = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %codec, i32 noundef 32442112, i32 noundef %cond33) #10
  %dc_mode_path35 = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %dc_mode_path35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dc_mode_path35, align 4
  tail call void @snd_hda_activate_path(ptr noundef %codec, ptr noundef %23, i1 noundef zeroext true, i1 noundef zeroext false) #10
  br label %if.end36

if.end36:                                         ; preds = %if.end28, %if.then18, %cond.end13.if.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @olpc_xo_update_mic_boost(ptr noundef %codec) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %dc_enable = getelementptr inbounds %struct.conexant_spec, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dc_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dc_enable, align 1, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !280
  %call.i = call i32 @snd_hdac_regmap_read_raw(ptr noundef %codec, i32 noundef 24879104, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.i = icmp slt i32 %call.i, 0
  br i1 %cmp6.i, label %if.then.snd_hdac_regmap_get_amp.exit_crit_edge, label %cond.false.i

if.then.snd_hdac_regmap_get_amp.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_hdac_regmap_get_amp.exit

cond.false.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  br label %snd_hdac_regmap_get_amp.exit

snd_hdac_regmap_get_amp.exit:                     ; preds = %cond.false.i, %if.then.snd_hdac_regmap_get_amp.exit_crit_edge
  %cond8.i = phi i32 [ %6, %cond.false.i ], [ %call.i, %if.then.snd_hdac_regmap_get_amp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %or3 = or i32 %cond8.i, 40960
  br label %if.end

if.end:                                           ; preds = %snd_hdac_regmap_get_amp.exit, %entry.if.end_crit_edge
  %val.0 = phi i32 [ 40960, %entry.if.end_crit_edge ], [ %or3, %snd_hdac_regmap_get_amp.exit ]
  %call.i11 = call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 23, i32 noundef 0, i32 noundef 768, i32 noundef %val.0) #10
  %7 = ptrtoint ptr %dc_enable to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dc_enable, align 1, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not.1 = icmp eq i8 %8, 0
  br i1 %tobool2.not.1, label %if.then.1, label %if.end.if.end.1_crit_edge

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i, align 4, !annotation !280
  %call.i.1 = call i32 @snd_hdac_regmap_read_raw(ptr noundef %codec, i32 noundef 24870912, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp6.i.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp6.i.1, label %if.then.1.snd_hdac_regmap_get_amp.exit.1_crit_edge, label %cond.false.i.1

if.then.1.snd_hdac_regmap_get_amp.exit.1_crit_edge: ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_hdac_regmap_get_amp.exit.1

cond.false.i.1:                                   ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i, align 4
  br label %snd_hdac_regmap_get_amp.exit.1

snd_hdac_regmap_get_amp.exit.1:                   ; preds = %cond.false.i.1, %if.then.1.snd_hdac_regmap_get_amp.exit.1_crit_edge
  %cond8.i.1 = phi i32 [ %11, %cond.false.i.1 ], [ %call.i.1, %if.then.1.snd_hdac_regmap_get_amp.exit.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %or3.1 = or i32 %cond8.i.1, 36864
  br label %if.end.1

if.end.1:                                         ; preds = %snd_hdac_regmap_get_amp.exit.1, %if.end.if.end.1_crit_edge
  %val.0.1 = phi i32 [ 36864, %if.end.if.end.1_crit_edge ], [ %or3.1, %snd_hdac_regmap_get_amp.exit.1 ]
  %call.i11.1 = call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 23, i32 noundef 0, i32 noundef 768, i32 noundef %val.0.1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_activate_path(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_get_pin_target(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_get_path_from_idx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_regmap_read_raw(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @olpc_xo_dc_mode_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 8
  %dc_enable = getelementptr inbounds %struct.conexant_spec, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %dc_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dc_enable, align 1, !range !281
  %6 = zext i8 %5 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @olpc_xo_dc_mode_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %dc_enable3 = getelementptr inbounds %struct.conexant_spec, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %dc_enable3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dc_enable3, align 1, !range !281
  %8 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %8)
  %cmp = icmp eq i8 %7, %8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %dc_enable3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %dc_enable3, align 1
  tail call fastcc void @olpc_xo_update_mic_pins(ptr noundef %1)
  tail call fastcc void @olpc_xo_update_mic_boost(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @olpc_xo_dc_bias_enum_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_hda_input_mux_info(ptr noundef nonnull @olpc_xo_dc_bias, ptr noundef %uinfo) #10
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @olpc_xo_dc_bias_enum_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 8
  %dc_input_bias = getelementptr inbounds %struct.conexant_spec, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %dc_input_bias to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dc_input_bias, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @olpc_xo_dc_bias_enum_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 2)
  %dc_input_bias = getelementptr inbounds %struct.conexant_spec, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %dc_input_bias to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dc_input_bias, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp3 = icmp eq i32 %8, %6
  br i1 %cmp3, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  %9 = ptrtoint ptr %dc_input_bias to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %dc_input_bias, align 8
  %dc_enable = getelementptr inbounds %struct.conexant_spec, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %dc_enable to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dc_enable, align 1, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.then7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @olpc_xo_update_mic_pins(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then7 ], [ 1, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_input_mux_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_volume_put(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx_auto_vmaster_mute_led(ptr nocapture noundef readonly %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec1, align 8
  %mute_led_eapd = getelementptr inbounds %struct.conexant_spec, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %mute_led_eapd to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mute_led_eapd, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %tobool.not = icmp eq i32 %brightness, 0
  %cond = select i1 %tobool.not, i32 0, i32 2
  %call.i = tail call i32 @snd_hdac_codec_write(ptr noundef %3, i16 noundef zeroext %7, i32 noundef 0, i32 noundef 1804, i32 noundef %cond) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_jack_set_gating_jack(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxt_gpio_mute_update(ptr nocapture noundef readonly %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec1, align 8
  %gpio_mute_led_mask = getelementptr inbounds %struct.conexant_spec, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %gpio_mute_led_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_mute_led_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %tobool = icmp ne i32 %brightness, 0
  %gpio_led.i = getelementptr inbounds %struct.conexant_spec, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %gpio_led.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_led.i, align 4
  %mute_led_polarity.i = getelementptr inbounds %struct.conexant_spec, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %mute_led_polarity.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mute_led_polarity.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp ne i32 %11, 0
  %spec.select.i = xor i1 %tobool, %tobool.not.i
  %neg.i = xor i32 %7, -1
  %and.i = and i32 %9, %neg.i
  %or.i = or i32 %9, %7
  %storemerge.i = select i1 %spec.select.i, i32 %or.i, i32 %and.i
  %12 = ptrtoint ptr %gpio_led.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %storemerge.i, ptr %gpio_led.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxt_update_gpio_led.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxt_gpio_mute_update, %if.then14.i)) #10
          to label %do.end.i [label %if.then14.i], !srcloc !283

if.then14.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i1 %spec.select.i to i32
  %13 = ptrtoint ptr %gpio_led.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gpio_led.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxt_update_gpio_led.__UNIQUE_ID_ddebug239, ptr noundef %3, ptr noundef nonnull @.str.60, i32 noundef %7, i32 noundef %conv.i, i32 noundef %14) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %entry
  %15 = ptrtoint ptr %gpio_led.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gpio_led.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %9)
  %cmp.not.i = icmp eq i32 %16, %9
  br i1 %cmp.not.i, label %do.end.i.cxt_update_gpio_led.exit_crit_edge, label %if.then20.i

do.end.i.cxt_update_gpio_led.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxt_update_gpio_led.exit

if.then20.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %3, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1813, i32 noundef %16) #10
  br label %cxt_update_gpio_led.exit

cxt_update_gpio_led.exit:                         ; preds = %if.then20.i, %do.end.i.cxt_update_gpio_led.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_add_micmute_led_cdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxt_gpio_micmute_update(ptr nocapture noundef readonly %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec1, align 8
  %gpio_mic_led_mask = getelementptr inbounds %struct.conexant_spec, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %gpio_mic_led_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_mic_led_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %tobool = icmp ne i32 %brightness, 0
  %gpio_led.i = getelementptr inbounds %struct.conexant_spec, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %gpio_led.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_led.i, align 4
  %mute_led_polarity.i = getelementptr inbounds %struct.conexant_spec, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %mute_led_polarity.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mute_led_polarity.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp ne i32 %11, 0
  %spec.select.i = xor i1 %tobool, %tobool.not.i
  %neg.i = xor i32 %7, -1
  %and.i = and i32 %9, %neg.i
  %or.i = or i32 %9, %7
  %storemerge.i = select i1 %spec.select.i, i32 %or.i, i32 %and.i
  %12 = ptrtoint ptr %gpio_led.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %storemerge.i, ptr %gpio_led.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxt_update_gpio_led.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxt_gpio_micmute_update, %if.then14.i)) #10
          to label %do.end.i [label %if.then14.i], !srcloc !283

if.then14.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i1 %spec.select.i to i32
  %13 = ptrtoint ptr %gpio_led.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gpio_led.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxt_update_gpio_led.__UNIQUE_ID_ddebug239, ptr noundef %3, ptr noundef nonnull @.str.60, i32 noundef %7, i32 noundef %conv.i, i32 noundef %14) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %entry
  %15 = ptrtoint ptr %gpio_led.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gpio_led.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %9)
  %cmp.not.i = icmp eq i32 %16, %9
  br i1 %cmp.not.i, label %do.end.i.cxt_update_gpio_led.exit_crit_edge, label %if.then20.i

do.end.i.cxt_update_gpio_led.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxt_update_gpio_led.exit

if.then20.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %3, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1813, i32 noundef %16) #10
  br label %cxt_update_gpio_led.exit

cxt_update_gpio_led.exit:                         ; preds = %if.then20.i, %do.end.i.cxt_update_gpio_led.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @query_amp_caps(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_gen_add_kctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_volume_info(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_volume_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_tlv(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_switch_info(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_switch_get_beep(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_switch_put_beep(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_gen_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !77, !78, !79, !80, !81, !83, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !130, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269}
!llvm.module.flags = !{!271, !272, !273, !274, !275, !276, !277, !278}
!llvm.ident = !{!279}

!0 = !{ptr @__UNIQUE_ID_file240, !1, !"__UNIQUE_ID_file240", i1 false, i1 false}
!1 = !{!"../sound/pci/hda/patch_conexant.c", i32 1142, i32 1}
!2 = !{ptr @__UNIQUE_ID_license241, !1, !"__UNIQUE_ID_license241", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description242, !4, !"__UNIQUE_ID_description242", i1 false, i1 false}
!4 = !{!"../sound/pci/hda/patch_conexant.c", i32 1143, i32 1}
!5 = !{ptr @__initcall__kmod_snd_hda_codec_conexant__243_1149_conexant_driver_init6, !6, !"__initcall__kmod_snd_hda_codec_conexant__243_1149_conexant_driver_init6", i1 false, i1 false}
!6 = !{!"../sound/pci/hda/patch_conexant.c", i32 1149, i32 1}
!7 = !{ptr @__exitcall_conexant_driver_exit, !6, !"__exitcall_conexant_driver_exit", i1 false, i1 false}
!8 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @conexant_driver, !10, !"conexant_driver", i1 false, i1 false}
!10 = !{!"../sound/pci/hda/patch_conexant.c", i32 1145, i32 32}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/pci/hda/patch_conexant.c", i32 1107, i32 2}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/pci/hda/patch_conexant.c", i32 1108, i32 2}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/pci/hda/patch_conexant.c", i32 1109, i32 2}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/pci/hda/patch_conexant.c", i32 1110, i32 2}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/pci/hda/patch_conexant.c", i32 1111, i32 2}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/pci/hda/patch_conexant.c", i32 1112, i32 2}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/pci/hda/patch_conexant.c", i32 1113, i32 2}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/pci/hda/patch_conexant.c", i32 1114, i32 2}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/pci/hda/patch_conexant.c", i32 1115, i32 2}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/pci/hda/patch_conexant.c", i32 1116, i32 2}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/pci/hda/patch_conexant.c", i32 1117, i32 2}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/pci/hda/patch_conexant.c", i32 1118, i32 2}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/pci/hda/patch_conexant.c", i32 1119, i32 2}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/pci/hda/patch_conexant.c", i32 1120, i32 2}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/pci/hda/patch_conexant.c", i32 1121, i32 2}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/pci/hda/patch_conexant.c", i32 1122, i32 2}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/pci/hda/patch_conexant.c", i32 1123, i32 2}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/pci/hda/patch_conexant.c", i32 1124, i32 2}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/pci/hda/patch_conexant.c", i32 1125, i32 2}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/pci/hda/patch_conexant.c", i32 1126, i32 2}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/pci/hda/patch_conexant.c", i32 1127, i32 2}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/pci/hda/patch_conexant.c", i32 1128, i32 2}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/pci/hda/patch_conexant.c", i32 1129, i32 2}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/pci/hda/patch_conexant.c", i32 1130, i32 2}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/pci/hda/patch_conexant.c", i32 1131, i32 2}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/pci/hda/patch_conexant.c", i32 1133, i32 2}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/pci/hda/patch_conexant.c", i32 1134, i32 2}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/pci/hda/patch_conexant.c", i32 1135, i32 2}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/pci/hda/patch_conexant.c", i32 1136, i32 2}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pci/hda/patch_conexant.c", i32 1137, i32 2}
!71 = !{ptr @snd_hda_id_conexant, !72, !"snd_hda_id_conexant", i1 false, i1 false}
!72 = !{!"../sound/pci/hda/patch_conexant.c", i32 1106, i32 35}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/pci/hda/patch_conexant.c", i32 1022, i32 2}
!75 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @patch_conexant_auto._entry, !74, !"_entry", i1 false, i1 false}
!80 = !{ptr @patch_conexant_auto._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/pci/hda/patch_conexant.c", i32 1088, i32 3}
!83 = !{ptr @patch_conexant_auto._entry.36, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @patch_conexant_auto._entry_ptr.38, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @cx_auto_patch_ops, !86, !"cx_auto_patch_ops", i1 false, i1 false}
!86 = !{!"../sound/pci/hda/patch_conexant.c", i32 203, i32 35}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/pci/hda/patch_conexant.c", i32 904, i32 41}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/pci/hda/patch_conexant.c", i32 905, i32 42}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/pci/hda/patch_conexant.c", i32 906, i32 36}
!93 = !{ptr @cxt5045_fixup_models, !94, !"cxt5045_fixup_models", i1 false, i1 false}
!94 = !{!"../sound/pci/hda/patch_conexant.c", i32 903, i32 37}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/pci/hda/patch_conexant.c", i32 891, i32 2}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/pci/hda/patch_conexant.c", i32 892, i32 2}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/pci/hda/patch_conexant.c", i32 896, i32 2}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/pci/hda/patch_conexant.c", i32 897, i32 2}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/pci/hda/patch_conexant.c", i32 898, i32 2}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/pci/hda/patch_conexant.c", i32 899, i32 2}
!107 = !{ptr @cxt5045_fixups, !108, !"cxt5045_fixups", i1 false, i1 false}
!108 = !{!"../sound/pci/hda/patch_conexant.c", i32 890, i32 35}
!109 = !{ptr @cxt_fixups, !110, !"cxt_fixups", i1 false, i1 false}
!110 = !{!"../sound/pci/hda/patch_conexant.c", i32 741, i32 31}
!111 = !{ptr @cxt_pincfg_lenovo_x200, !112, !"cxt_pincfg_lenovo_x200", i1 false, i1 false}
!112 = !{!"../sound/pci/hda/patch_conexant.c", i32 713, i32 32}
!113 = !{ptr @cxt_pincfg_lenovo_tp410, !114, !"cxt_pincfg_lenovo_tp410", i1 false, i1 false}
!114 = !{!"../sound/pci/hda/patch_conexant.c", i32 722, i32 32}
!115 = !{ptr @cxt_pincfg_lemote, !116, !"cxt_pincfg_lemote", i1 false, i1 false}
!116 = !{!"../sound/pci/hda/patch_conexant.c", i32 730, i32 32}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/pci/hda/patch_conexant.c", i32 580, i32 27}
!119 = !{ptr @olpc_xo_dc_bias, !120, !"olpc_xo_dc_bias", i1 false, i1 false}
!120 = !{!"../sound/pci/hda/patch_conexant.c", i32 349, i32 35}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/pci/hda/patch_conexant.c", i32 527, i32 11}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/pci/hda/patch_conexant.c", i32 534, i32 11}
!125 = !{ptr @olpc_xo_mixers, !126, !"olpc_xo_mixers", i1 false, i1 false}
!126 = !{!"../sound/pci/hda/patch_conexant.c", i32 524, i32 38}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/pci/hda/patch_conexant.c", i32 652, i32 2}
!129 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @cxt_update_gpio_led.__UNIQUE_ID_ddebug239, !128, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!131 = !{ptr @cxt5047_fixup_models, !132, !"cxt5047_fixup_models", i1 false, i1 false}
!132 = !{!"../sound/pci/hda/patch_conexant.c", i32 917, i32 37}
!133 = !{ptr @cxt5047_fixups, !134, !"cxt5047_fixups", i1 false, i1 false}
!134 = !{!"../sound/pci/hda/patch_conexant.c", i32 910, i32 35}
!135 = distinct !{null, !136, !"out_nids", i1 false, i1 false}
!136 = !{!"../sound/pci/hda/patch_conexant.c", i32 1005, i32 25}
!137 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/pci/hda/patch_conexant.c", i32 929, i32 42}
!139 = !{ptr @cxt5051_fixup_models, !140, !"cxt5051_fixup_models", i1 false, i1 false}
!140 = !{!"../sound/pci/hda/patch_conexant.c", i32 928, i32 37}
!141 = !{ptr @.str.62, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/pci/hda/patch_conexant.c", i32 923, i32 2}
!143 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/pci/hda/patch_conexant.c", i32 924, i32 2}
!145 = !{ptr @cxt5051_fixups, !146, !"cxt5051_fixups", i1 false, i1 false}
!146 = !{!"../sound/pci/hda/patch_conexant.c", i32 922, i32 35}
!147 = !{ptr @.str.64, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/pci/hda/patch_conexant.c", i32 983, i32 41}
!149 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/pci/hda/patch_conexant.c", i32 984, i32 35}
!151 = !{ptr @.str.66, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/pci/hda/patch_conexant.c", i32 985, i32 47}
!153 = !{ptr @.str.67, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/pci/hda/patch_conexant.c", i32 986, i32 43}
!155 = !{ptr @.str.68, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/pci/hda/patch_conexant.c", i32 987, i32 43}
!157 = !{ptr @.str.69, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/pci/hda/patch_conexant.c", i32 988, i32 43}
!159 = !{ptr @.str.70, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/pci/hda/patch_conexant.c", i32 989, i32 43}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/pci/hda/patch_conexant.c", i32 990, i32 37}
!163 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/pci/hda/patch_conexant.c", i32 991, i32 43}
!165 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/pci/hda/patch_conexant.c", i32 992, i32 37}
!167 = !{ptr @.str.74, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/pci/hda/patch_conexant.c", i32 993, i32 43}
!169 = !{ptr @.str.75, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/pci/hda/patch_conexant.c", i32 994, i32 47}
!171 = !{ptr @.str.76, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/pci/hda/patch_conexant.c", i32 995, i32 48}
!173 = !{ptr @cxt5066_fixup_models, !174, !"cxt5066_fixup_models", i1 false, i1 false}
!174 = !{!"../sound/pci/hda/patch_conexant.c", i32 982, i32 37}
!175 = !{ptr @.str.77, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/pci/hda/patch_conexant.c", i32 934, i32 2}
!177 = !{ptr @.str.78, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/pci/hda/patch_conexant.c", i32 935, i32 2}
!179 = !{ptr @.str.79, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/pci/hda/patch_conexant.c", i32 936, i32 2}
!181 = !{ptr @.str.80, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/pci/hda/patch_conexant.c", i32 937, i32 2}
!183 = !{ptr @.str.81, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/pci/hda/patch_conexant.c", i32 938, i32 2}
!185 = !{ptr @.str.82, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/pci/hda/patch_conexant.c", i32 939, i32 2}
!187 = !{ptr @.str.83, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/pci/hda/patch_conexant.c", i32 940, i32 2}
!189 = !{ptr @.str.84, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/pci/hda/patch_conexant.c", i32 941, i32 2}
!191 = !{ptr @.str.85, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/pci/hda/patch_conexant.c", i32 942, i32 2}
!193 = !{ptr @.str.86, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/pci/hda/patch_conexant.c", i32 943, i32 2}
!195 = !{ptr @.str.87, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/pci/hda/patch_conexant.c", i32 944, i32 2}
!197 = !{ptr @.str.88, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/pci/hda/patch_conexant.c", i32 945, i32 2}
!199 = !{ptr @.str.89, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/pci/hda/patch_conexant.c", i32 946, i32 2}
!201 = !{ptr @.str.90, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/pci/hda/patch_conexant.c", i32 947, i32 2}
!203 = !{ptr @.str.91, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/pci/hda/patch_conexant.c", i32 948, i32 2}
!205 = !{ptr @.str.92, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/pci/hda/patch_conexant.c", i32 949, i32 2}
!207 = !{ptr @.str.93, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/pci/hda/patch_conexant.c", i32 950, i32 2}
!209 = !{ptr @.str.94, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/pci/hda/patch_conexant.c", i32 951, i32 2}
!211 = !{ptr @.str.95, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/pci/hda/patch_conexant.c", i32 952, i32 2}
!213 = !{ptr @.str.96, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/pci/hda/patch_conexant.c", i32 953, i32 2}
!215 = !{ptr @.str.97, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/pci/hda/patch_conexant.c", i32 955, i32 2}
!217 = !{ptr @.str.98, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/pci/hda/patch_conexant.c", i32 956, i32 2}
!219 = !{ptr @.str.99, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/pci/hda/patch_conexant.c", i32 957, i32 2}
!221 = !{ptr @.str.100, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/pci/hda/patch_conexant.c", i32 958, i32 2}
!223 = !{ptr @.str.101, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/pci/hda/patch_conexant.c", i32 959, i32 2}
!225 = !{ptr @.str.102, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/pci/hda/patch_conexant.c", i32 960, i32 2}
!227 = !{ptr @.str.103, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/pci/hda/patch_conexant.c", i32 961, i32 2}
!229 = !{ptr @.str.104, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/pci/hda/patch_conexant.c", i32 962, i32 2}
!231 = !{ptr @.str.105, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/pci/hda/patch_conexant.c", i32 963, i32 2}
!233 = !{ptr @.str.106, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/pci/hda/patch_conexant.c", i32 964, i32 2}
!235 = !{ptr @.str.107, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/pci/hda/patch_conexant.c", i32 965, i32 2}
!237 = !{ptr @.str.108, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/pci/hda/patch_conexant.c", i32 966, i32 2}
!239 = !{ptr @.str.109, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/pci/hda/patch_conexant.c", i32 967, i32 2}
!241 = !{ptr @.str.110, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/pci/hda/patch_conexant.c", i32 968, i32 2}
!243 = !{ptr @.str.111, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/pci/hda/patch_conexant.c", i32 969, i32 2}
!245 = !{ptr @.str.112, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/pci/hda/patch_conexant.c", i32 970, i32 2}
!247 = !{ptr @.str.113, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/pci/hda/patch_conexant.c", i32 971, i32 2}
!249 = !{ptr @.str.114, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/pci/hda/patch_conexant.c", i32 972, i32 2}
!251 = !{ptr @.str.115, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/pci/hda/patch_conexant.c", i32 973, i32 2}
!253 = !{ptr @.str.116, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/pci/hda/patch_conexant.c", i32 974, i32 2}
!255 = !{ptr @.str.117, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/pci/hda/patch_conexant.c", i32 975, i32 2}
!257 = !{ptr @.str.118, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/pci/hda/patch_conexant.c", i32 976, i32 2}
!259 = !{ptr @.str.119, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/pci/hda/patch_conexant.c", i32 977, i32 2}
!261 = !{ptr @.str.120, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/pci/hda/patch_conexant.c", i32 978, i32 2}
!263 = !{ptr @cxt5066_fixups, !264, !"cxt5066_fixups", i1 false, i1 false}
!264 = !{!"../sound/pci/hda/patch_conexant.c", i32 933, i32 35}
!265 = !{ptr @.str.121, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/pci/hda/patch_conexant.c", i32 52, i32 2}
!267 = !{ptr @.str.122, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/pci/hda/patch_conexant.c", i32 53, i32 2}
!269 = !{ptr @cxt_beep_mixer, !270, !"cxt_beep_mixer", i1 false, i1 false}
!270 = !{!"../sound/pci/hda/patch_conexant.c", i32 51, i32 38}
!271 = !{i32 1, !"wchar_size", i32 2}
!272 = !{i32 1, !"min_enum_size", i32 4}
!273 = !{i32 8, !"branch-target-enforcement", i32 0}
!274 = !{i32 8, !"sign-return-address", i32 0}
!275 = !{i32 8, !"sign-return-address-all", i32 0}
!276 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!277 = !{i32 7, !"uwtable", i32 1}
!278 = !{i32 7, !"frame-pointer", i32 2}
!279 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!280 = !{!"auto-init"}
!281 = !{i8 0, i8 2}
!282 = !{!"branch_weights", i32 2000, i32 1}
!283 = !{i64 2148789745, i64 2148789750, i64 2148789763, i64 2148789807, i64 2148789841, i64 2148789862}
