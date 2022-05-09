; ModuleID = '/llk/IR_all_yes/sound/pci/hda/patch_sigmatel.c_pt.bc'
source_filename = "../sound/pci/hda/patch_sigmatel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hda_codec_driver = type { %struct.hdac_driver, ptr }
%struct.hdac_driver = type { %struct.device_driver, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hda_device_id = type { i32, i32, i8, ptr, i32 }
%struct.hda_verb = type { i16, i32, i32 }
%struct.hda_model_fixup = type { i32, ptr }
%struct.snd_pci_quirk = type { i16, i16, i16, i32, ptr }
%struct.hda_fixup = type { i32, i8, i32, %union.anon.74 }
%union.anon.74 = type { ptr }
%struct.hda_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hda_pintbl = type { i16, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.85, i32 }
%union.anon.85 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.sigmatel_spec = type { %struct.hda_gen_spec, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, i32, ptr, i32, i16, ptr, %struct.hda_input_mux, [2 x i32] }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.hda_beep = type { ptr, ptr, [32 x i8], i32, i16, i8, %struct.work_struct, %struct.mutex, ptr }
%struct.hda_pcm_stream = type { i32, i32, i32, i16, i32, i64, i32, ptr, %struct.hda_pcm_ops }
%struct.hda_pcm_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.84, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.84 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.79, [128 x i8] }
%union.anon.79 = type { %union.anon.81 }
%union.anon.81 = type { [64 x i64] }
%struct.hda_jack_callback = type { i16, i32, ptr, i32, i32, ptr, ptr }

@__UNIQUE_ID_file248 = internal constant [55 x i8] c"snd_hda_codec_idt.file=sound/pci/hda/snd-hda-codec-idt\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [30 x i8] c"snd_hda_codec_idt.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [58 x i8] c"snd_hda_codec_idt.description=IDT/Sigmatel HD-audio codec\00", section ".modinfo", align 1
@__initcall__kmod_snd_hda_codec_idt__251_5156_sigmatel_driver_init6 = internal global ptr @sigmatel_driver_init, section ".initcall6.init", align 4
@sigmatel_driver = internal global { %struct.hda_codec_driver, [52 x i8] } { %struct.hda_codec_driver { %struct.hdac_driver zeroinitializer, ptr @snd_hda_id_sigmatel }, [52 x i8] zeroinitializer }, align 32
@__exitcall_sigmatel_driver_exit = internal global ptr @sigmatel_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_hda_codec_idt\00", [46 x i8] zeroinitializer }, align 32
@snd_hda_id_sigmatel = internal constant { [101 x %struct.hda_device_id], [508 x i8] } { [101 x %struct.hda_device_id] [%struct.hda_device_id { i32 -2088470896, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_stac9200 to i32) }, %struct.hda_device_id { i32 -2088470398, i32 0, i8 1, ptr @.str.2, i32 ptrtoint (ptr @patch_stac922x to i32) }, %struct.hda_device_id { i32 -2088470912, i32 0, i8 1, ptr @.str.3, i32 ptrtoint (ptr @patch_stac922x to i32) }, %struct.hda_device_id { i32 -2088470400, i32 0, i8 1, ptr @.str.4, i32 ptrtoint (ptr @patch_stac922x to i32) }, %struct.hda_device_id { i32 -2088470911, i32 0, i8 1, ptr @.str.5, i32 ptrtoint (ptr @patch_stac922x to i32) }, %struct.hda_device_id { i32 -2088470910, i32 0, i8 1, ptr @.str.6, i32 ptrtoint (ptr @patch_stac922x to i32) }, %struct.hda_device_id { i32 -2088470909, i32 0, i8 1, ptr @.str.7, i32 ptrtoint (ptr @patch_stac922x to i32) }, %struct.hda_device_id { i32 -2088471016, i32 0, i8 1, ptr @.str.8, i32 ptrtoint (ptr @patch_stac927x to i32) }, %struct.hda_device_id { i32 -2088471015, i32 0, i8 1, ptr @.str.8, i32 ptrtoint (ptr @patch_stac927x to i32) }, %struct.hda_device_id { i32 -2088470984, i32 0, i8 1, ptr @.str.9, i32 ptrtoint (ptr @patch_stac927x to i32) }, %struct.hda_device_id { i32 -2088471018, i32 0, i8 1, ptr @.str.10, i32 ptrtoint (ptr @patch_stac927x to i32) }, %struct.hda_device_id { i32 -2088471017, i32 0, i8 1, ptr @.str.10, i32 ptrtoint (ptr @patch_stac927x to i32) }, %struct.hda_device_id { i32 -2088471020, i32 0, i8 1, ptr @.str.11, i32 ptrtoint (ptr @patch_stac927x to i32) }, %struct.hda_device_id { i32 -2088471019, i32 0, i8 1, ptr @.str.11, i32 ptrtoint (ptr @patch_stac927x to i32) }, %struct.hda_device_id { i32 -2088471008, i32 0, i8 1, ptr @.str.12, i32 ptrtoint (ptr @patch_stac927x to i32) }, %struct.hda_device_id { i32 -2088471007, i32 0, i8 1, ptr @.str.13, i32 ptrtoint (ptr @patch_stac927x to i32) }, %struct.hda_device_id { i32 -2088471006, i32 0, i8 1, ptr @.str.14, i32 ptrtoint (ptr @patch_stac927x to i32) }, %struct.hda_device_id { i32 -2088471005, i32 0, i8 1, ptr @.str.15, i32 ptrtoint (ptr @patch_stac927x to i32) }, %struct.hda_device_id { i32 -2088471004, i32 0, i8 1, ptr @.str.16, i32 ptrtoint (ptr @patch_stac927x to i32) }, %struct.hda_device_id { i32 -2088471003, i32 0, i8 1, ptr @.str.17, i32 ptrtoint (ptr @patch_stac927x to i32) }, %struct.hda_device_id { i32 -2088471002, i32 0, i8 1, ptr @.str.18, i32 ptrtoint (ptr @patch_stac927x to i32) }, %struct.hda_device_id { i32 -2088471001, i32 0, i8 1, ptr @.str.19, i32 ptrtoint (ptr @patch_stac927x to i32) }, %struct.hda_device_id { i32 -2088471000, i32 0, i8 1, ptr @.str.20, i32 ptrtoint (ptr @patch_stac927x to i32) }, %struct.hda_device_id { i32 -2088470999, i32 0, i8 1, ptr @.str.21, i32 ptrtoint (ptr @patch_stac927x to i32) }, %struct.hda_device_id { i32 -2088470990, i32 0, i8 1, ptr @.str.22, i32 ptrtoint (ptr @patch_stac925x to i32) }, %struct.hda_device_id { i32 -2088470989, i32 0, i8 1, ptr @.str.23, i32 ptrtoint (ptr @patch_stac925x to i32) }, %struct.hda_device_id { i32 -2088470988, i32 0, i8 1, ptr @.str.24, i32 ptrtoint (ptr @patch_stac925x to i32) }, %struct.hda_device_id { i32 -2088470987, i32 0, i8 1, ptr @.str.25, i32 ptrtoint (ptr @patch_stac925x to i32) }, %struct.hda_device_id { i32 -2088470986, i32 0, i8 1, ptr @.str.26, i32 ptrtoint (ptr @patch_stac925x to i32) }, %struct.hda_device_id { i32 -2088470985, i32 0, i8 1, ptr @.str.25, i32 ptrtoint (ptr @patch_stac925x to i32) }, %struct.hda_device_id { i32 -2088470971, i32 0, i8 1, ptr @.str.27, i32 ptrtoint (ptr @patch_stac927x to i32) }, %struct.hda_device_id { i32 -2088470970, i32 0, i8 1, ptr @.str.28, i32 ptrtoint (ptr @patch_stac927x to i32) }, %struct.hda_device_id { i32 -2088470943, i32 0, i8 1, ptr @.str.29, i32 ptrtoint (ptr @patch_stac9872 to i32) }, %struct.hda_device_id { i32 -2088470942, i32 0, i8 1, ptr @.str.30, i32 ptrtoint (ptr @patch_stac9872 to i32) }, %struct.hda_device_id { i32 -2088470940, i32 0, i8 1, ptr @.str.31, i32 ptrtoint (ptr @patch_stac9872 to i32) }, %struct.hda_device_id { i32 -2088470888, i32 0, i8 1, ptr @.str.32, i32 ptrtoint (ptr @patch_stac9205 to i32) }, %struct.hda_device_id { i32 -2088470880, i32 0, i8 1, ptr @.str.32, i32 ptrtoint (ptr @patch_stac9205 to i32) }, %struct.hda_device_id { i32 -2088470879, i32 0, i8 1, ptr @.str.33, i32 ptrtoint (ptr @patch_stac9205 to i32) }, %struct.hda_device_id { i32 -2088470878, i32 0, i8 1, ptr @.str.34, i32 ptrtoint (ptr @patch_stac9205 to i32) }, %struct.hda_device_id { i32 -2088470877, i32 0, i8 1, ptr @.str.35, i32 ptrtoint (ptr @patch_stac9205 to i32) }, %struct.hda_device_id { i32 -2088470876, i32 0, i8 1, ptr @.str.36, i32 ptrtoint (ptr @patch_stac9205 to i32) }, %struct.hda_device_id { i32 -2088470875, i32 0, i8 1, ptr @.str.37, i32 ptrtoint (ptr @patch_stac9205 to i32) }, %struct.hda_device_id { i32 -2088470874, i32 0, i8 1, ptr @.str.38, i32 ptrtoint (ptr @patch_stac9205 to i32) }, %struct.hda_device_id { i32 -2088470873, i32 0, i8 1, ptr @.str.39, i32 ptrtoint (ptr @patch_stac9205 to i32) }, %struct.hda_device_id { i32 287143427, i32 0, i8 1, ptr @.str.40, i32 ptrtoint (ptr @patch_stac92hd71bxx to i32) }, %struct.hda_device_id { i32 287143428, i32 0, i8 1, ptr @.str.41, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143636, i32 0, i8 1, ptr @.str.42, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143429, i32 0, i8 1, ptr @.str.43, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143637, i32 0, i8 1, ptr @.str.44, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143633, i32 0, i8 1, ptr @.str.45, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143641, i32 0, i8 1, ptr @.str.46, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143526, i32 0, i8 1, ptr @.str.47, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143527, i32 0, i8 1, ptr @.str.48, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143528, i32 0, i8 1, ptr @.str.49, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143529, i32 0, i8 1, ptr @.str.50, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143432, i32 0, i8 1, ptr @.str.51, i32 ptrtoint (ptr @patch_stac92hd71bxx to i32) }, %struct.hda_device_id { i32 287143540, i32 0, i8 1, ptr @.str.52, i32 ptrtoint (ptr @patch_stac92hd73xx to i32) }, %struct.hda_device_id { i32 287143541, i32 0, i8 1, ptr @.str.53, i32 ptrtoint (ptr @patch_stac92hd73xx to i32) }, %struct.hda_device_id { i32 287143542, i32 0, i8 1, ptr @.str.54, i32 ptrtoint (ptr @patch_stac92hd73xx to i32) }, %struct.hda_device_id { i32 287143573, i32 0, i8 1, ptr @.str.55, i32 ptrtoint (ptr @patch_stac92hd95 to i32) }, %struct.hda_device_id { i32 287143600, i32 0, i8 1, ptr @.str.56, i32 ptrtoint (ptr @patch_stac92hd71bxx to i32) }, %struct.hda_device_id { i32 287143601, i32 0, i8 1, ptr @.str.56, i32 ptrtoint (ptr @patch_stac92hd71bxx to i32) }, %struct.hda_device_id { i32 287143602, i32 0, i8 1, ptr @.str.57, i32 ptrtoint (ptr @patch_stac92hd71bxx to i32) }, %struct.hda_device_id { i32 287143603, i32 0, i8 1, ptr @.str.57, i32 ptrtoint (ptr @patch_stac92hd71bxx to i32) }, %struct.hda_device_id { i32 287143604, i32 0, i8 1, ptr @.str.58, i32 ptrtoint (ptr @patch_stac92hd71bxx to i32) }, %struct.hda_device_id { i32 287143605, i32 0, i8 1, ptr @.str.58, i32 ptrtoint (ptr @patch_stac92hd71bxx to i32) }, %struct.hda_device_id { i32 287143606, i32 0, i8 1, ptr @.str.59, i32 ptrtoint (ptr @patch_stac92hd71bxx to i32) }, %struct.hda_device_id { i32 287143607, i32 0, i8 1, ptr @.str.59, i32 ptrtoint (ptr @patch_stac92hd71bxx to i32) }, %struct.hda_device_id { i32 287143616, i32 0, i8 1, ptr @.str.60, i32 ptrtoint (ptr @patch_stac92hd73xx to i32) }, %struct.hda_device_id { i32 287143617, i32 0, i8 1, ptr @.str.61, i32 ptrtoint (ptr @patch_stac92hd73xx to i32) }, %struct.hda_device_id { i32 287143618, i32 0, i8 1, ptr @.str.62, i32 ptrtoint (ptr @patch_stac92hd73xx to i32) }, %struct.hda_device_id { i32 287143619, i32 0, i8 1, ptr @.str.63, i32 ptrtoint (ptr @patch_stac92hd73xx to i32) }, %struct.hda_device_id { i32 287143620, i32 0, i8 1, ptr @.str.64, i32 ptrtoint (ptr @patch_stac92hd73xx to i32) }, %struct.hda_device_id { i32 287143621, i32 0, i8 1, ptr @.str.65, i32 ptrtoint (ptr @patch_stac92hd73xx to i32) }, %struct.hda_device_id { i32 287143622, i32 0, i8 1, ptr @.str.66, i32 ptrtoint (ptr @patch_stac92hd73xx to i32) }, %struct.hda_device_id { i32 287143623, i32 0, i8 1, ptr @.str.67, i32 ptrtoint (ptr @patch_stac92hd73xx to i32) }, %struct.hda_device_id { i32 287143624, i32 0, i8 1, ptr @.str.68, i32 ptrtoint (ptr @patch_stac92hd73xx to i32) }, %struct.hda_device_id { i32 287143625, i32 0, i8 1, ptr @.str.69, i32 ptrtoint (ptr @patch_stac92hd73xx to i32) }, %struct.hda_device_id { i32 287143626, i32 0, i8 1, ptr @.str.70, i32 ptrtoint (ptr @patch_stac92hd73xx to i32) }, %struct.hda_device_id { i32 287143627, i32 0, i8 1, ptr @.str.71, i32 ptrtoint (ptr @patch_stac92hd73xx to i32) }, %struct.hda_device_id { i32 287143628, i32 0, i8 1, ptr @.str.72, i32 ptrtoint (ptr @patch_stac92hd73xx to i32) }, %struct.hda_device_id { i32 287143629, i32 0, i8 1, ptr @.str.73, i32 ptrtoint (ptr @patch_stac92hd73xx to i32) }, %struct.hda_device_id { i32 287143630, i32 0, i8 1, ptr @.str.74, i32 ptrtoint (ptr @patch_stac92hd73xx to i32) }, %struct.hda_device_id { i32 287143647, i32 0, i8 1, ptr @.str.75, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143648, i32 0, i8 1, ptr @.str.76, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143651, i32 0, i8 1, ptr @.str.77, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143653, i32 0, i8 1, ptr @.str.78, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143655, i32 0, i8 1, ptr @.str.79, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143656, i32 0, i8 1, ptr @.str.80, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143657, i32 0, i8 1, ptr @.str.81, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143658, i32 0, i8 1, ptr @.str.82, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143659, i32 0, i8 1, ptr @.str.83, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143660, i32 0, i8 1, ptr @.str.84, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143661, i32 0, i8 1, ptr @.str.85, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143662, i32 0, i8 1, ptr @.str.86, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143663, i32 0, i8 1, ptr @.str.87, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143664, i32 0, i8 1, ptr @.str.88, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143665, i32 0, i8 1, ptr @.str.89, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143666, i32 0, i8 1, ptr @.str.90, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id { i32 287143667, i32 0, i8 1, ptr @.str.91, i32 ptrtoint (ptr @patch_stac92hd83xxx to i32) }, %struct.hda_device_id zeroinitializer], [508 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"STAC9200\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"STAC9220 A1\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"STAC9221 A1\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"STAC9220 A2\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"STAC9220D/9223D A2\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"STAC9221 A2\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"STAC9221D A2\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"STAC9227\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"STAC92HD700\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"STAC9228\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"STAC9229\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"STAC9274\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"STAC9274D\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"STAC9273X\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"STAC9273D\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"STAC9272X\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"STAC9272D\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"STAC9271X\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"STAC9271D\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"STAC9274X5NH\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"STAC9274D5NH\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"STAC9202\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"STAC9202D\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"STAC9250\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"STAC9250D\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"STAC9251\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"92HD206X\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"92HD206D\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CXD9872RD/K\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"STAC9872AK\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CXD9872AKD\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"STAC9205\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"STAC9205D\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"STAC9204\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"STAC9204D\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"STAC9255\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"STAC9255D\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"STAC9254\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"STAC9254D\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"92HD75B3X5\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"92HD83C1X5\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"92HD83C1C5\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"92HD81B1X5\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"92HD81B1C5\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"92HD87B1/3\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"92HD87B2/4\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"92HD88B3\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"92HD88B1\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"92HD88B2\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"92HD88B4\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"92HD75B2X5\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"92HD73D1X5\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"92HD73C1X5\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"92HD73E1X5\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"92HD95\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"92HD71B8X\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"92HD71B7X\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"92HD71B6X\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"92HD71B5X\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"92HD89C3\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"92HD89C2\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"92HD89C1\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"92HD89B3\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"92HD89B2\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"92HD89B1\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"92HD89E3\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"92HD89E2\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"92HD89E1\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"92HD89D3\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"92HD89D2\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"92HD89D1\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"92HD89F3\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"92HD89F2\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"92HD89F1\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"92HD93BXX\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"92HD91BXX\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"92HD98BXX\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"92HD99BXX\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"92HD90BXX\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"92HD66B1X5\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"92HD66B2X5\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"92HD66B3X5\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"92HD66C1X5\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"92HD66C2X5\00", [21 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"92HD66C3X5\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"92HD66B1X3\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"92HD66B2X3\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"92HD66B3X3\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"92HD66C1X3\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"92HD66C2X3\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"92HD66C3/65\00", [20 x i8] zeroinitializer }, align 32
@stac9200_eapd_init = internal constant { [3 x %struct.hda_verb], [60 x i8] } { [3 x %struct.hda_verb] [%struct.hda_verb { i16 7, i32 1793, i32 0 }, %struct.hda_verb { i16 8, i32 1804, i32 2 }, %struct.hda_verb zeroinitializer], [60 x i8] zeroinitializer }, align 32
@stac9200_models = internal constant { [16 x %struct.hda_model_fixup], [32 x i8] } { [16 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 0, ptr @.str.101 }, %struct.hda_model_fixup { i32 1, ptr @.str.102 }, %struct.hda_model_fixup { i32 2, ptr @.str.103 }, %struct.hda_model_fixup { i32 3, ptr @.str.104 }, %struct.hda_model_fixup { i32 4, ptr @.str.105 }, %struct.hda_model_fixup { i32 5, ptr @.str.106 }, %struct.hda_model_fixup { i32 6, ptr @.str.107 }, %struct.hda_model_fixup { i32 7, ptr @.str.108 }, %struct.hda_model_fixup { i32 8, ptr @.str.109 }, %struct.hda_model_fixup { i32 9, ptr @.str.110 }, %struct.hda_model_fixup { i32 10, ptr @.str.111 }, %struct.hda_model_fixup { i32 11, ptr @.str.112 }, %struct.hda_model_fixup { i32 12, ptr @.str.113 }, %struct.hda_model_fixup { i32 13, ptr @.str.114 }, %struct.hda_model_fixup { i32 14, ptr @.str.115 }, %struct.hda_model_fixup zeroinitializer], [32 x i8] zeroinitializer }, align 32
@stac9200_fixup_tbl = internal constant { [38 x %struct.snd_pci_quirk], [128 x i8] } { [38 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 -32634, i16 9832, i16 -1, i32 0, ptr @.str.116 }, %struct.snd_pci_quirk { i16 5565, i16 12545, i16 -1, i32 0, ptr @.str.116 }, %struct.snd_pci_quirk { i16 4136, i16 424, i16 -1, i32 2, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 437, i16 -1, i32 5, ptr @.str.118 }, %struct.snd_pci_quirk { i16 4136, i16 445, i16 -1, i32 9, ptr @.str.119 }, %struct.snd_pci_quirk { i16 4136, i16 448, i16 -1, i32 3, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 449, i16 -1, i32 3, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 450, i16 -1, i32 6, ptr @.str.120 }, %struct.snd_pci_quirk { i16 4136, i16 453, i16 -1, i32 4, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 455, i16 -1, i32 4, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 456, i16 -1, i32 6, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 457, i16 -1, i32 8, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 458, i16 -1, i32 8, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 459, i16 -1, i32 8, ptr @.str.121 }, %struct.snd_pci_quirk { i16 4136, i16 460, i16 -1, i32 6, ptr @.str.122 }, %struct.snd_pci_quirk { i16 4136, i16 461, i16 -1, i32 11, ptr @.str.123 }, %struct.snd_pci_quirk { i16 4136, i16 462, i16 -1, i32 7, ptr @.str.124 }, %struct.snd_pci_quirk { i16 4136, i16 463, i16 -1, i32 7, ptr @.str.125 }, %struct.snd_pci_quirk { i16 4136, i16 467, i16 -1, i32 6, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 468, i16 -1, i32 6, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 470, i16 -1, i32 6, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 472, i16 -1, i32 5, ptr @.str.126 }, %struct.snd_pci_quirk { i16 4136, i16 473, i16 -1, i32 4, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 474, i16 -1, i32 4, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 478, i16 -1, i32 2, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 483, i16 -1, i32 4, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 488, i16 -1, i32 2, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 494, i16 -1, i32 9, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 495, i16 -1, i32 9, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 501, i16 -1, i32 10, ptr @.str.127 }, %struct.snd_pci_quirk { i16 4136, i16 502, i16 -1, i32 10, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 513, i16 -1, i32 6, ptr @.str.128 }, %struct.snd_pci_quirk { i16 4343, i16 -31944, i16 -1, i32 14, ptr @.str.129 }, %struct.snd_pci_quirk { i16 4219, i16 517, i16 -1, i32 12, ptr @.str.130 }, %struct.snd_pci_quirk { i16 4219, i16 791, i16 -1, i32 13, ptr @.str.131 }, %struct.snd_pci_quirk { i16 4219, i16 792, i16 -1, i32 13, ptr @.str.132 }, %struct.snd_pci_quirk { i16 4358, i16 12936, i16 -1, i32 1, ptr @.str.133 }, %struct.snd_pci_quirk zeroinitializer], [128 x i8] zeroinitializer }, align 32
@stac9200_fixups = internal constant { [16 x %struct.hda_fixup], [64 x i8] } { [16 x %struct.hda_fixup] [%struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @ref9200_pin_configs } }, %struct.hda_fixup { i32 1, i8 -128, i32 15, %union.anon.74 { ptr @oqo9200_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @dell9200_d21_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @dell9200_d22_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @dell9200_d23_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @dell9200_m21_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @dell9200_m22_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @dell9200_m23_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @dell9200_m24_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @dell9200_m25_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @dell9200_m26_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @dell9200_m27_pin_configs } }, %struct.hda_fixup { i32 1, i8 -128, i32 15, %union.anon.74 { ptr @gateway9200_m4_pin_configs } }, %struct.hda_fixup { i32 1, i8 -128, i32 15, %union.anon.74 { ptr @gateway9200_m4_2_pin_configs } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @stac9200_fixup_panasonic } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.74 { ptr @.compoundliteral } }], [64 x i8] zeroinitializer }, align 32
@stac_patch_ops = internal constant { %struct.hda_codec_ops, [56 x i8] } { %struct.hda_codec_ops { ptr @snd_hda_gen_build_controls, ptr @snd_hda_gen_build_pcms, ptr @stac_init, ptr @snd_hda_gen_free, ptr @snd_hda_jack_unsol_event, ptr null, ptr @stac_suspend, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio_mask\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_dir\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio_data\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eapd_mask\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio_mute\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"eapd_switch\00", [20 x i8] zeroinitializer }, align 32
@stac_gpio_set.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.99, ptr @.str.100, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stac_gpio_set\00", [18 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/pci/hda/patch_sigmatel.c\00", [33 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s msk %x dir %x gpio %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"oqo\00", [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dell-d21\00", [23 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dell-d22\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dell-d23\00", [23 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dell-m21\00", [23 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dell-m22\00", [23 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dell-m23\00", [23 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dell-m24\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dell-m25\00", [23 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dell-m26\00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dell-m27\00", [23 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gateway-m4\00", [21 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gateway-m4-2\00", [19 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"panasonic\00", [22 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DFI LanParty\00", [19 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unknown Dell\00", [19 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dell Inspiron 630m\00", [45 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Dell Inspiron E1505n\00", [43 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dell Latitude D620\00", [45 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dell Latitude 120L\00", [45 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dell Latitude D820\00", [45 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Dell Inspiron E1705/9400\00", [39 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Dell XPS M1710\00", [17 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dell Precision M90\00", [45 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dell Inspiron 640m\00", [45 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dell Inspiron 1501\00", [45 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dell Latitude D430\00", [45 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Panasonic CF-74\00", [16 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Gateway S-7110M\00", [16 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Gateway MT3423, MX341*\00", [41 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Gateway ML3019, MT3707\00", [41 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OQO Model 2\00", [20 x i8] zeroinitializer }, align 32
@ref9200_pin_configs = internal constant { [9 x %struct.hda_pintbl], [56 x i8] } { [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 8, i32 29650960 }, %struct.hda_pintbl { i16 9, i32 21262352 }, %struct.hda_pintbl { i16 13, i32 35733535 }, %struct.hda_pintbl { i16 14, i32 17907728 }, %struct.hda_pintbl { i16 15, i32 44142624 }, %struct.hda_pintbl { i16 16, i32 27365409 }, %struct.hda_pintbl { i16 17, i32 -1877999296 }, %struct.hda_pintbl { i16 18, i32 25243938 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@oqo9200_pin_configs = internal constant { [9 x %struct.hda_pintbl], [56 x i8] } { [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 8, i32 1086324976 }, %struct.hda_pintbl { i16 9, i32 1077936369 }, %struct.hda_pintbl { i16 13, i32 35721759 }, %struct.hda_pintbl { i16 14, i32 35721744 }, %struct.hda_pintbl { i16 15, i32 -1877540591 }, %struct.hda_pintbl { i16 16, i32 -1868103392 }, %struct.hda_pintbl { i16 17, i32 1073742066 }, %struct.hda_pintbl { i16 18, i32 1073742067 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@dell9200_d21_pin_configs = internal constant { [9 x %struct.hda_pintbl], [56 x i8] } { [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 8, i32 1073742320 }, %struct.hda_pintbl { i16 9, i32 1073742321 }, %struct.hda_pintbl { i16 13, i32 35733552 }, %struct.hda_pintbl { i16 14, i32 16859152 }, %struct.hda_pintbl { i16 15, i32 44142624 }, %struct.hda_pintbl { i16 16, i32 27365409 }, %struct.hda_pintbl { i16 17, i32 -1877999296 }, %struct.hda_pintbl { i16 18, i32 25243938 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@dell9200_d22_pin_configs = internal constant { [9 x %struct.hda_pintbl], [56 x i8] } { [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 8, i32 1073742320 }, %struct.hda_pintbl { i16 9, i32 1073742321 }, %struct.hda_pintbl { i16 13, i32 35733535 }, %struct.hda_pintbl { i16 14, i32 16859152 }, %struct.hda_pintbl { i16 15, i32 25243680 }, %struct.hda_pintbl { i16 16, i32 44142625 }, %struct.hda_pintbl { i16 17, i32 -1877999296 }, %struct.hda_pintbl { i16 18, i32 1073742322 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@dell9200_d23_pin_configs = internal constant { [9 x %struct.hda_pintbl], [56 x i8] } { [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 8, i32 1073742320 }, %struct.hda_pintbl { i16 9, i32 1073742321 }, %struct.hda_pintbl { i16 13, i32 35733535 }, %struct.hda_pintbl { i16 14, i32 16859152 }, %struct.hda_pintbl { i16 15, i32 25243680 }, %struct.hda_pintbl { i16 16, i32 27365409 }, %struct.hda_pintbl { i16 17, i32 -1877999296 }, %struct.hda_pintbl { i16 18, i32 1073742322 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@dell9200_m21_pin_configs = internal constant { [9 x %struct.hda_pintbl], [56 x i8] } { [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 8, i32 1086325754 }, %struct.hda_pintbl { i16 9, i32 54793024 }, %struct.hda_pintbl { i16 13, i32 52498975 }, %struct.hda_pintbl { i16 14, i32 -1877540080 }, %struct.hda_pintbl { i16 15, i32 1082131451 }, %struct.hda_pintbl { i16 16, i32 60887072 }, %struct.hda_pintbl { i16 17, i32 1074791420 }, %struct.hda_pintbl { i16 18, i32 1076888573 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@dell9200_m22_pin_configs = internal constant { [9 x %struct.hda_pintbl], [56 x i8] } { [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 8, i32 1086325754 }, %struct.hda_pintbl { i16 9, i32 21238559 }, %struct.hda_pintbl { i16 13, i32 52498975 }, %struct.hda_pintbl { i16 14, i32 -1877540080 }, %struct.hda_pintbl { i16 15, i32 -1868102879 }, %struct.hda_pintbl { i16 16, i32 60887072 }, %struct.hda_pintbl { i16 17, i32 1074791419 }, %struct.hda_pintbl { i16 18, i32 1089470716 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@dell9200_m23_pin_configs = internal constant { [9 x %struct.hda_pintbl], [56 x i8] } { [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 8, i32 1086325754 }, %struct.hda_pintbl { i16 9, i32 21238592 }, %struct.hda_pintbl { i16 13, i32 69288479 }, %struct.hda_pintbl { i16 14, i32 -1877540080 }, %struct.hda_pintbl { i16 15, i32 1082131451 }, %struct.hda_pintbl { i16 16, i32 77664302 }, %struct.hda_pintbl { i16 17, i32 -1877540079 }, %struct.hda_pintbl { i16 18, i32 1076888572 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@dell9200_m24_pin_configs = internal constant { [9 x %struct.hda_pintbl], [56 x i8] } { [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 8, i32 1086325754 }, %struct.hda_pintbl { i16 9, i32 1077937147 }, %struct.hda_pintbl { i16 13, i32 52498975 }, %struct.hda_pintbl { i16 14, i32 -1877540080 }, %struct.hda_pintbl { i16 15, i32 1082131452 }, %struct.hda_pintbl { i16 16, i32 60887072 }, %struct.hda_pintbl { i16 17, i32 1074791421 }, %struct.hda_pintbl { i16 18, i32 1076888574 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@dell9200_m25_pin_configs = internal constant { [9 x %struct.hda_pintbl], [56 x i8] } { [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 8, i32 1086325754 }, %struct.hda_pintbl { i16 9, i32 21238592 }, %struct.hda_pintbl { i16 13, i32 69276191 }, %struct.hda_pintbl { i16 14, i32 -1877540080 }, %struct.hda_pintbl { i16 15, i32 1082131451 }, %struct.hda_pintbl { i16 16, i32 77664288 }, %struct.hda_pintbl { i16 17, i32 1074791420 }, %struct.hda_pintbl { i16 18, i32 1076888573 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@dell9200_m26_pin_configs = internal constant { [9 x %struct.hda_pintbl], [56 x i8] } { [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 8, i32 1086325754 }, %struct.hda_pintbl { i16 9, i32 1077937147 }, %struct.hda_pintbl { i16 13, i32 69276191 }, %struct.hda_pintbl { i16 14, i32 -1877540080 }, %struct.hda_pintbl { i16 15, i32 1082131452 }, %struct.hda_pintbl { i16 16, i32 77664288 }, %struct.hda_pintbl { i16 17, i32 1074791421 }, %struct.hda_pintbl { i16 18, i32 1076888574 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@dell9200_m27_pin_configs = internal constant { [9 x %struct.hda_pintbl], [56 x i8] } { [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 8, i32 1086325754 }, %struct.hda_pintbl { i16 9, i32 21238592 }, %struct.hda_pintbl { i16 13, i32 69276191 }, %struct.hda_pintbl { i16 14, i32 -1877540080 }, %struct.hda_pintbl { i16 15, i32 -1877540080 }, %struct.hda_pintbl { i16 16, i32 77664288 }, %struct.hda_pintbl { i16 17, i32 -1877540080 }, %struct.hda_pintbl { i16 18, i32 1089471484 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@gateway9200_m4_pin_configs = internal constant { [9 x %struct.hda_pintbl], [56 x i8] } { [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 8, i32 1073742078 }, %struct.hda_pintbl { i16 9, i32 1078264052 }, %struct.hda_pintbl { i16 13, i32 1073807600 }, %struct.hda_pintbl { i16 14, i32 -1877934064 }, %struct.hda_pintbl { i16 15, i32 1073807601 }, %struct.hda_pintbl { i16 16, i32 44142638 }, %struct.hda_pintbl { i16 17, i32 1342177522 }, %struct.hda_pintbl { i16 18, i32 1342177523 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@gateway9200_m4_2_pin_configs = internal constant { [9 x %struct.hda_pintbl], [56 x i8] } { [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 8, i32 1073742078 }, %struct.hda_pintbl { i16 9, i32 1078264052 }, %struct.hda_pintbl { i16 13, i32 1073807600 }, %struct.hda_pintbl { i16 14, i32 -1877934064 }, %struct.hda_pintbl { i16 15, i32 1073807601 }, %struct.hda_pintbl { i16 16, i32 44142638 }, %struct.hda_pintbl { i16 17, i32 1342177522 }, %struct.hda_pintbl { i16 18, i32 1342177523 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [2 x %struct.hda_verb], [40 x i8] } { [2 x %struct.hda_verb] [%struct.hda_verb { i16 8, i32 1804, i32 2 }, %struct.hda_verb zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"loopback\00", [23 x i8] zeroinitializer }, align 32
@stac_vrefout_set.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.135, ptr @.str.99, ptr @.str.136, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stac_vrefout_set\00", [47 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s, nid %x ctl %x\0A\00", [45 x i8] zeroinitializer }, align 32
@stac_auto_create_beep_ctls.abeep_mute_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 1073741824, ptr null, i32 0, i32 0, i32 0, ptr @snd_hda_mixer_amp_switch_info, ptr @snd_hda_mixer_amp_switch_get, ptr @snd_hda_mixer_amp_switch_put, %union.anon.85 zeroinitializer, i32 196608 }, [48 x i8] zeroinitializer }, align 32
@stac_auto_create_beep_ctls.dbeep_mute_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 1073741824, ptr null, i32 0, i32 0, i32 0, ptr @snd_hda_mixer_amp_switch_info, ptr @snd_hda_mixer_amp_switch_get_beep, ptr @snd_hda_mixer_amp_switch_put_beep, %union.anon.85 zeroinitializer, i32 196608 }, [48 x i8] zeroinitializer }, align 32
@stac_auto_create_beep_ctls.beep_vol_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 1073741824, ptr null, i32 0, i32 268435475, i32 0, ptr @snd_hda_mixer_amp_volume_info, ptr @snd_hda_mixer_amp_volume_get, ptr @snd_hda_mixer_amp_volume_put, %union.anon.85 { ptr @snd_hda_mixer_amp_tlv }, i32 196608 }, [48 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Beep Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Beep Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@stac_dig_beep_ctrl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @stac_dig_beep_switch_get, ptr @stac_dig_beep_switch_put, %union.anon.85 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@stac_spdif_labels = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr null], [16 x i8] zeroinitializer }, align 32
@stac_smux_mixer = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.142, i32 0, i32 0, i32 0, ptr @stac_smux_enum_info, ptr @stac_smux_enum_get, ptr @stac_smux_enum_put, %union.anon.85 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Digital Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Analog Mux 1\00", [19 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Analog Mux 2\00", [19 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 Playback Source\00", [41 x i8] zeroinitializer }, align 32
@stac922x_core_init = internal constant { [2 x %struct.hda_verb], [40 x i8] } { [2 x %struct.hda_verb] [%struct.hda_verb { i16 22, i32 1807, i32 255 }, %struct.hda_verb zeroinitializer], [40 x i8] zeroinitializer }, align 32
@stac922x_models = internal constant { [21 x %struct.hda_model_fixup], [56 x i8] } { [21 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 0, ptr @.str.101 }, %struct.hda_model_fixup { i32 2, ptr @.str.143 }, %struct.hda_model_fixup { i32 1, ptr @.str.144 }, %struct.hda_model_fixup { i32 3, ptr @.str.145 }, %struct.hda_model_fixup { i32 4, ptr @.str.146 }, %struct.hda_model_fixup { i32 5, ptr @.str.147 }, %struct.hda_model_fixup { i32 6, ptr @.str.148 }, %struct.hda_model_fixup { i32 7, ptr @.str.149 }, %struct.hda_model_fixup { i32 8, ptr @.str.150 }, %struct.hda_model_fixup { i32 9, ptr @.str.151 }, %struct.hda_model_fixup { i32 10, ptr @.str.152 }, %struct.hda_model_fixup { i32 11, ptr @.str.153 }, %struct.hda_model_fixup { i32 12, ptr @.str.154 }, %struct.hda_model_fixup { i32 13, ptr @.str.155 }, %struct.hda_model_fixup { i32 5, ptr @.str.156 }, %struct.hda_model_fixup { i32 7, ptr @.str.157 }, %struct.hda_model_fixup { i32 5, ptr @.str.158 }, %struct.hda_model_fixup { i32 5, ptr @.str.159 }, %struct.hda_model_fixup { i32 4, ptr @.str.160 }, %struct.hda_model_fixup { i32 5, ptr @.str.161 }, %struct.hda_model_fixup zeroinitializer], [56 x i8] zeroinitializer }, align 32
@stac922x_fixup_tbl = internal constant { [40 x %struct.snd_pci_quirk], [160 x i8] } { [40 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 -32634, i16 9832, i16 -1, i32 0, ptr @.str.116 }, %struct.snd_pci_quirk { i16 5565, i16 12545, i16 -1, i32 0, ptr @.str.116 }, %struct.snd_pci_quirk { i16 -32634, i16 257, i16 -1, i32 1, ptr @.str.162 }, %struct.snd_pci_quirk { i16 -32634, i16 514, i16 -1, i32 1, ptr @.str.162 }, %struct.snd_pci_quirk { i16 -32634, i16 1542, i16 -1, i32 1, ptr @.str.162 }, %struct.snd_pci_quirk { i16 -32634, i16 1537, i16 -1, i32 1, ptr @.str.162 }, %struct.snd_pci_quirk { i16 -32634, i16 273, i16 -1, i32 1, ptr @.str.162 }, %struct.snd_pci_quirk { i16 -32634, i16 4373, i16 -1, i32 1, ptr @.str.162 }, %struct.snd_pci_quirk { i16 -32634, i16 4374, i16 -1, i32 1, ptr @.str.162 }, %struct.snd_pci_quirk { i16 -32634, i16 4375, i16 -1, i32 1, ptr @.str.162 }, %struct.snd_pci_quirk { i16 -32634, i16 4376, i16 -1, i32 1, ptr @.str.162 }, %struct.snd_pci_quirk { i16 -32634, i16 4377, i16 -1, i32 1, ptr @.str.162 }, %struct.snd_pci_quirk { i16 -32634, i16 -30682, i16 -1, i32 1, ptr @.str.162 }, %struct.snd_pci_quirk { i16 -32634, i16 20553, i16 -1, i32 1, ptr @.str.162 }, %struct.snd_pci_quirk { i16 -32634, i16 20565, i16 -1, i32 1, ptr @.str.162 }, %struct.snd_pci_quirk { i16 -32634, i16 20552, i16 -1, i32 1, ptr @.str.162 }, %struct.snd_pci_quirk { i16 -32634, i16 272, i16 -1, i32 1, ptr @.str.162 }, %struct.snd_pci_quirk { i16 -32634, i16 1028, i16 -1, i32 2, ptr @.str.162 }, %struct.snd_pci_quirk { i16 -32634, i16 771, i16 -1, i32 2, ptr @.str.162 }, %struct.snd_pci_quirk { i16 -32634, i16 19, i16 -1, i32 2, ptr @.str.162 }, %struct.snd_pci_quirk { i16 -32634, i16 1047, i16 -1, i32 2, ptr @.str.162 }, %struct.snd_pci_quirk { i16 -32634, i16 2827, i16 -1, i32 1, ptr @.str.163 }, %struct.snd_pci_quirk { i16 -32634, i16 274, i16 -1, i32 1, ptr @.str.163 }, %struct.snd_pci_quirk { i16 -32634, i16 3341, i16 -1, i32 1, ptr @.str.163 }, %struct.snd_pci_quirk { i16 -32634, i16 2313, i16 -1, i32 1, ptr @.str.163 }, %struct.snd_pci_quirk { i16 -32634, i16 1285, i16 -1, i32 1, ptr @.str.163 }, %struct.snd_pci_quirk { i16 -32634, i16 1799, i16 -1, i32 2, ptr @.str.163 }, %struct.snd_pci_quirk { i16 -32634, i16 516, i16 -1, i32 0, ptr @.str.164 }, %struct.snd_pci_quirk { i16 -31868, i16 30336, i16 -1, i32 8, ptr @.str.165 }, %struct.snd_pci_quirk { i16 4136, i16 423, i16 -1, i32 10, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 425, i16 -1, i32 10, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 427, i16 -1, i32 10, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 428, i16 -1, i32 11, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 447, i16 -1, i32 12, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 464, i16 -1, i32 11, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 465, i16 -1, i32 10, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 466, i16 -1, i32 10, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 471, i16 -1, i32 13, ptr @.str.166 }, %struct.snd_pci_quirk { i16 4121, i16 8192, i16 -4096, i32 9, ptr @.str.167 }, %struct.snd_pci_quirk zeroinitializer], [160 x i8] zeroinitializer }, align 32
@stac922x_fixups = internal constant { [15 x %struct.hda_fixup], [48 x i8] } { [15 x %struct.hda_fixup] [%struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @ref922x_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @d945gtp3_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @d945gtp5_pin_configs } }, %struct.hda_fixup { i32 1, i8 -128, i32 14, %union.anon.74 { ptr @intel_mac_v1_pin_configs } }, %struct.hda_fixup { i32 1, i8 -128, i32 14, %union.anon.74 { ptr @intel_mac_v2_pin_configs } }, %struct.hda_fixup { i32 1, i8 -128, i32 14, %union.anon.74 { ptr @intel_mac_v3_pin_configs } }, %struct.hda_fixup { i32 1, i8 -128, i32 14, %union.anon.74 { ptr @intel_mac_v4_pin_configs } }, %struct.hda_fixup { i32 1, i8 -128, i32 14, %union.anon.74 { ptr @intel_mac_v5_pin_configs } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @stac922x_fixup_intel_mac_auto } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @ecs202_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @dell_922x_d81_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @dell_922x_d82_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @dell_922x_m81_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @dell_922x_m82_pin_configs } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @stac922x_fixup_intel_mac_gpio } }], [48 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"5stack\00", [25 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3stack\00", [25 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intel-mac-v1\00", [19 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intel-mac-v2\00", [19 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intel-mac-v3\00", [19 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intel-mac-v4\00", [19 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intel-mac-v5\00", [19 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"intel-mac-auto\00", [17 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecs202\00", [25 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dell-d81\00", [23 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dell-d82\00", [23 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dell-m81\00", [23 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dell-m82\00", [23 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"macmini\00", [24 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"macbook\00", [24 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"macbook-pro-v1\00", [17 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"macbook-pro\00", [20 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imac-intel\00", [21 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imac-intel-20\00", [18 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Intel D945G\00", [20 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Intel D945P\00", [20 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Intel D945\00", [21 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mac\00", [28 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Dell XPS M1210\00", [17 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ECS/PC chips\00", [19 x i8] zeroinitializer }, align 32
@ref922x_pin_configs = internal constant { [11 x %struct.hda_pintbl], [40 x i8] } { [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 16859152 }, %struct.hda_pintbl { i16 11, i32 16867345 }, %struct.hda_pintbl { i16 12, i32 16850962 }, %struct.hda_pintbl { i16 13, i32 35733535 }, %struct.hda_pintbl { i16 14, i32 25243938 }, %struct.hda_pintbl { i16 15, i32 16846868 }, %struct.hda_pintbl { i16 16, i32 21237808 }, %struct.hda_pintbl { i16 17, i32 29626416 }, %struct.hda_pintbl { i16 21, i32 1073742080 }, %struct.hda_pintbl { i16 27, i32 1073742080 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@d945gtp3_pin_configs = internal constant { [11 x %struct.hda_pintbl], [40 x i8] } { [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 35733535 }, %struct.hda_pintbl { i16 11, i32 27365410 }, %struct.hda_pintbl { i16 12, i32 25243681 }, %struct.hda_pintbl { i16 13, i32 16859152 }, %struct.hda_pintbl { i16 14, i32 1073742080 }, %struct.hda_pintbl { i16 15, i32 1073742080 }, %struct.hda_pintbl { i16 16, i32 1073742080 }, %struct.hda_pintbl { i16 17, i32 1073742080 }, %struct.hda_pintbl { i16 21, i32 44142880 }, %struct.hda_pintbl { i16 27, i32 1073742080 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@d945gtp5_pin_configs = internal constant { [11 x %struct.hda_pintbl], [40 x i8] } { [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 35733535 }, %struct.hda_pintbl { i16 11, i32 16846866 }, %struct.hda_pintbl { i16 12, i32 25243684 }, %struct.hda_pintbl { i16 13, i32 16859152 }, %struct.hda_pintbl { i16 14, i32 27365409 }, %struct.hda_pintbl { i16 15, i32 16867345 }, %struct.hda_pintbl { i16 16, i32 21307696 }, %struct.hda_pintbl { i16 17, i32 1073742080 }, %struct.hda_pintbl { i16 21, i32 44143392 }, %struct.hda_pintbl { i16 27, i32 1073742080 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@intel_mac_v1_pin_configs = internal constant { [11 x %struct.hda_pintbl], [40 x i8] } { [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 18997791 }, %struct.hda_pintbl { i16 11, i32 1073742079 }, %struct.hda_pintbl { i16 12, i32 -1877483248 }, %struct.hda_pintbl { i16 13, i32 1073742077 }, %struct.hda_pintbl { i16 14, i32 1073742078 }, %struct.hda_pintbl { i16 15, i32 25288736 }, %struct.hda_pintbl { i16 16, i32 289792048 }, %struct.hda_pintbl { i16 17, i32 298181184 }, %struct.hda_pintbl { i16 21, i32 1073742076 }, %struct.hda_pintbl { i16 27, i32 1073742075 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@intel_mac_v2_pin_configs = internal constant { [11 x %struct.hda_pintbl], [40 x i8] } { [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 18997791 }, %struct.hda_pintbl { i16 11, i32 -1868103378 }, %struct.hda_pintbl { i16 12, i32 -1877483248 }, %struct.hda_pintbl { i16 13, i32 1073742077 }, %struct.hda_pintbl { i16 14, i32 1073742078 }, %struct.hda_pintbl { i16 15, i32 25288736 }, %struct.hda_pintbl { i16 16, i32 289792560 }, %struct.hda_pintbl { i16 17, i32 1342177530 }, %struct.hda_pintbl { i16 21, i32 1073742076 }, %struct.hda_pintbl { i16 27, i32 1073742075 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@intel_mac_v3_pin_configs = internal constant { [11 x %struct.hda_pintbl], [40 x i8] } { [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 18997791 }, %struct.hda_pintbl { i16 11, i32 -1868103378 }, %struct.hda_pintbl { i16 12, i32 -1877483248 }, %struct.hda_pintbl { i16 13, i32 1073742077 }, %struct.hda_pintbl { i16 14, i32 1073742078 }, %struct.hda_pintbl { i16 15, i32 25288736 }, %struct.hda_pintbl { i16 16, i32 289792560 }, %struct.hda_pintbl { i16 17, i32 298181184 }, %struct.hda_pintbl { i16 21, i32 1073742076 }, %struct.hda_pintbl { i16 27, i32 1073742075 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@intel_mac_v4_pin_configs = internal constant { [11 x %struct.hda_pintbl], [40 x i8] } { [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 52552223 }, %struct.hda_pintbl { i16 11, i32 60940334 }, %struct.hda_pintbl { i16 12, i32 -1877483248 }, %struct.hda_pintbl { i16 13, i32 -1877483233 }, %struct.hda_pintbl { i16 14, i32 1073742078 }, %struct.hda_pintbl { i16 15, i32 58843168 }, %struct.hda_pintbl { i16 16, i32 323346992 }, %struct.hda_pintbl { i16 17, i32 331735616 }, %struct.hda_pintbl { i16 21, i32 1073742076 }, %struct.hda_pintbl { i16 27, i32 1073742075 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@intel_mac_v5_pin_configs = internal constant { [11 x %struct.hda_pintbl], [40 x i8] } { [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 52552223 }, %struct.hda_pintbl { i16 11, i32 60940334 }, %struct.hda_pintbl { i16 12, i32 -1877483248 }, %struct.hda_pintbl { i16 13, i32 -1877483233 }, %struct.hda_pintbl { i16 14, i32 1073742078 }, %struct.hda_pintbl { i16 15, i32 58843168 }, %struct.hda_pintbl { i16 16, i32 323346992 }, %struct.hda_pintbl { i16 17, i32 331735616 }, %struct.hda_pintbl { i16 21, i32 1073742076 }, %struct.hda_pintbl { i16 27, i32 1073742075 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ecs202_pin_configs = internal constant { [11 x %struct.hda_pintbl], [40 x i8] } { [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 35733535 }, %struct.hda_pintbl { i16 11, i32 44142624 }, %struct.hda_pintbl { i16 12, i32 27365408 }, %struct.hda_pintbl { i16 13, i32 17907728 }, %struct.hda_pintbl { i16 14, i32 1082130672 }, %struct.hda_pintbl { i16 15, i32 25243682 }, %struct.hda_pintbl { i16 16, i32 121966752 }, %struct.hda_pintbl { i16 17, i32 1086587121 }, %struct.hda_pintbl { i16 21, i32 -1875443410 }, %struct.hda_pintbl { i16 27, i32 1088422130 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@dell_922x_d81_pin_configs = internal constant { [11 x %struct.hda_pintbl], [40 x i8] } { [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 35733552 }, %struct.hda_pintbl { i16 11, i32 27365409 }, %struct.hda_pintbl { i16 12, i32 17895442 }, %struct.hda_pintbl { i16 13, i32 17907728 }, %struct.hda_pintbl { i16 14, i32 44142624 }, %struct.hda_pintbl { i16 15, i32 17920017 }, %struct.hda_pintbl { i16 16, i32 1073742320 }, %struct.hda_pintbl { i16 17, i32 1073742321 }, %struct.hda_pintbl { i16 21, i32 25243938 }, %struct.hda_pintbl { i16 27, i32 1073742322 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@dell_922x_d82_pin_configs = internal constant { [11 x %struct.hda_pintbl], [40 x i8] } { [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 35733552 }, %struct.hda_pintbl { i16 11, i32 27365409 }, %struct.hda_pintbl { i16 12, i32 17895442 }, %struct.hda_pintbl { i16 13, i32 17907728 }, %struct.hda_pintbl { i16 14, i32 44142624 }, %struct.hda_pintbl { i16 15, i32 17920017 }, %struct.hda_pintbl { i16 16, i32 21303616 }, %struct.hda_pintbl { i16 17, i32 1073742320 }, %struct.hda_pintbl { i16 21, i32 25243938 }, %struct.hda_pintbl { i16 27, i32 1073742321 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@dell_922x_m81_pin_configs = internal constant { [11 x %struct.hda_pintbl], [40 x i8] } { [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 52498463 }, %struct.hda_pintbl { i16 11, i32 17899556 }, %struct.hda_pintbl { i16 12, i32 17895970 }, %struct.hda_pintbl { i16 13, i32 -1860746720 }, %struct.hda_pintbl { i16 14, i32 60887120 }, %struct.hda_pintbl { i16 15, i32 17916449 }, %struct.hda_pintbl { i16 16, i32 -1868102864 }, %struct.hda_pintbl { i16 17, i32 21308224 }, %struct.hda_pintbl { i16 21, i32 1086325745 }, %struct.hda_pintbl { i16 27, i32 1078985712 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@dell_922x_m82_pin_configs = internal constant { [11 x %struct.hda_pintbl], [40 x i8] } { [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 35721745 }, %struct.hda_pintbl { i16 11, i32 1082196991 }, %struct.hda_pintbl { i16 12, i32 44110398 }, %struct.hda_pintbl { i16 13, i32 -1877998832 }, %struct.hda_pintbl { i16 14, i32 1082131441 }, %struct.hda_pintbl { i16 15, i32 35721759 }, %struct.hda_pintbl { i16 16, i32 54858560 }, %struct.hda_pintbl { i16 17, i32 1086325746 }, %struct.hda_pintbl { i16 21, i32 1350566899 }, %struct.hda_pintbl { i16 27, i32 1078985716 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@stac922x_intel_mac_fixup_tbl = internal constant { [14 x %struct.snd_pci_quirk], [32 x i8] } { [14 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 0, i16 256, i16 -1, i32 5, ptr @.str.168 }, %struct.snd_pci_quirk { i16 4203, i16 2048, i16 -1, i32 3, ptr @.str.165 }, %struct.snd_pci_quirk { i16 4203, i16 1536, i16 -1, i32 4, ptr @.str.165 }, %struct.snd_pci_quirk { i16 4203, i16 1792, i16 -1, i32 4, ptr @.str.165 }, %struct.snd_pci_quirk { i16 4203, i16 3584, i16 -1, i32 5, ptr @.str.165 }, %struct.snd_pci_quirk { i16 4203, i16 3840, i16 -1, i32 5, ptr @.str.165 }, %struct.snd_pci_quirk { i16 4203, i16 5632, i16 -1, i32 5, ptr @.str.165 }, %struct.snd_pci_quirk { i16 4203, i16 5888, i16 -1, i32 5, ptr @.str.165 }, %struct.snd_pci_quirk { i16 4203, i16 512, i16 -1, i32 5, ptr @.str.165 }, %struct.snd_pci_quirk { i16 4203, i16 7680, i16 -1, i32 5, ptr @.str.165 }, %struct.snd_pci_quirk { i16 4203, i16 6656, i16 -1, i32 6, ptr @.str.165 }, %struct.snd_pci_quirk { i16 4203, i16 2560, i16 -1, i32 7, ptr @.str.165 }, %struct.snd_pci_quirk { i16 4203, i16 8704, i16 -1, i32 7, ptr @.str.165 }, %struct.snd_pci_quirk zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mac Mini\00", [23 x i8] zeroinitializer }, align 32
@stac927x_spdif_labels = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.139, ptr @.str.169, ptr @.str.140, ptr @.str.141, ptr @.str.170, ptr null], [40 x i8] zeroinitializer }, align 32
@stac927x_loopback = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.171, i32 0, i32 0, i32 1, ptr @snd_ctl_boolean_mono_info, ptr @stac_aloopback_get, ptr @stac_aloopback_put, %union.anon.85 zeroinitializer, i32 132845547 }, [48 x i8] zeroinitializer }, align 32
@stac927x_models = internal constant { [11 x %struct.hda_model_fixup], [40 x i8] } { [11 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 0, ptr @.str.172 }, %struct.hda_model_fixup { i32 1, ptr @.str.101 }, %struct.hda_model_fixup { i32 2, ptr @.str.144 }, %struct.hda_model_fixup { i32 3, ptr @.str.143 }, %struct.hda_model_fixup { i32 4, ptr @.str.173 }, %struct.hda_model_fixup { i32 6, ptr @.str.174 }, %struct.hda_model_fixup { i32 7, ptr @.str.175 }, %struct.hda_model_fixup { i32 8, ptr @.str.176 }, %struct.hda_model_fixup { i32 9, ptr @.str.177 }, %struct.hda_model_fixup { i32 12, ptr @.str.178 }, %struct.hda_model_fixup zeroinitializer], [40 x i8] zeroinitializer }, align 32
@stac927x_fixup_tbl = internal constant { [23 x %struct.snd_pci_quirk], [80 x i8] } { [23 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 -32634, i16 9832, i16 -1, i32 1, ptr @.str.116 }, %struct.snd_pci_quirk { i16 5565, i16 12545, i16 -1, i32 1, ptr @.str.116 }, %struct.snd_pci_quirk { i16 -32634, i16 15617, i16 -1, i32 2, ptr @.str.179 }, %struct.snd_pci_quirk { i16 -32634, i16 -23807, i16 -1, i32 2, ptr @.str.179 }, %struct.snd_pci_quirk { i16 -32634, i16 8448, i16 -256, i32 2, ptr @.str.180 }, %struct.snd_pci_quirk { i16 -32634, i16 8192, i16 -256, i32 2, ptr @.str.180 }, %struct.snd_pci_quirk { i16 4136, i16 477, i16 -1, i32 6, ptr @.str.181 }, %struct.snd_pci_quirk { i16 4136, i16 493, i16 -1, i32 6, ptr @.str.182 }, %struct.snd_pci_quirk { i16 4136, i16 500, i16 -1, i32 6, ptr @.str.182 }, %struct.snd_pci_quirk { i16 4136, i16 499, i16 -1, i32 7, ptr @.str.183 }, %struct.snd_pci_quirk { i16 4136, i16 503, i16 -1, i32 7, ptr @.str.184 }, %struct.snd_pci_quirk { i16 4136, i16 551, i16 -1, i32 7, ptr @.str.185 }, %struct.snd_pci_quirk { i16 4136, i16 558, i16 -1, i32 10, ptr @.str.182 }, %struct.snd_pci_quirk { i16 4136, i16 559, i16 -1, i32 7, ptr @.str.186 }, %struct.snd_pci_quirk { i16 4136, i16 578, i16 -1, i32 7, ptr @.str.182 }, %struct.snd_pci_quirk { i16 4136, i16 579, i16 -1, i32 7, ptr @.str.182 }, %struct.snd_pci_quirk { i16 4136, i16 767, i16 -1, i32 7, ptr @.str.182 }, %struct.snd_pci_quirk { i16 4136, i16 521, i16 -1, i32 10, ptr @.str.187 }, %struct.snd_pci_quirk { i16 -32634, i16 8960, i16 -256, i32 3, ptr @.str.180 }, %struct.snd_pci_quirk { i16 -32634, i16 9472, i16 -256, i32 3, ptr @.str.180 }, %struct.snd_pci_quirk { i16 6280, i16 4096, i16 -1, i32 8, ptr @.str.188 }, %struct.snd_pci_quirk { i16 4303, i16 0, i16 0, i32 12, ptr @.str.189 }, %struct.snd_pci_quirk zeroinitializer], [80 x i8] zeroinitializer }, align 32
@stac927x_fixups = internal constant { [13 x %struct.hda_fixup], [48 x i8] } { [13 x %struct.hda_fixup] [%struct.hda_fixup { i32 3, i8 -128, i32 1, %union.anon.74 { ptr @stac927x_fixup_ref_no_jd } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @stac927x_fixup_ref } }, %struct.hda_fixup { i32 1, i8 -128, i32 5, %union.anon.74 { ptr @d965_3st_pin_configs } }, %struct.hda_fixup { i32 1, i8 -128, i32 5, %union.anon.74 { ptr @d965_5st_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @d965_5st_no_fp_pin_configs } }, %struct.hda_fixup { i32 2, i8 0, i32 0, %union.anon.74 { ptr @d965_core_init } }, %struct.hda_fixup { i32 1, i8 -128, i32 11, %union.anon.74 { ptr @dell_3st_pin_configs } }, %struct.hda_fixup { i32 1, i8 -128, i32 11, %union.anon.74 { ptr @.compoundliteral.190 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @nemo_pin_configs } }, %struct.hda_fixup { i32 1, i8 -128, i32 7, %union.anon.74 { ptr @.compoundliteral.191 } }, %struct.hda_fixup { i32 1, i8 -128, i32 7, %union.anon.74 { ptr @.compoundliteral.192 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @stac927x_fixup_dell_dmic } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @stac927x_fixup_volknob } }], [48 x i8] zeroinitializer }, align 32
@stac927x_core_init = internal constant { [3 x %struct.hda_verb], [60 x i8] } { [3 x %struct.hda_verb] [%struct.hda_verb { i16 36, i32 1807, i32 255 }, %struct.hda_verb { i16 1, i32 1806, i32 32 }, %struct.hda_verb zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADAT\00", [27 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Analog Mux 3\00", [19 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Analog Loopback\00", [16 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ref-no-jd\00", [22 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"5stack-no-fp\00", [19 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dell-3stack\00", [20 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dell-bios\00", [22 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nemo-default\00", [19 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dell-bios-amic\00", [17 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"volknob\00", [24 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Intel D946\00", [21 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Intel D965\00", [21 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Dell Dimension E520\00", [44 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Dell     \00", [22 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dell Inspiron 1420\00", [45 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Dell XPS M1730\00", [17 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dell Vostro 1400  \00", [45 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dell Inspiron 1525\00", [45 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Dell XPS 1330\00", [18 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AmigaOne X1000\00", [17 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FSC\00", [28 x i8] zeroinitializer }, align 32
@d965_3st_pin_configs = internal constant { [15 x %struct.hda_pintbl], [40 x i8] } { [15 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 35733535 }, %struct.hda_pintbl { i16 11, i32 44142880 }, %struct.hda_pintbl { i16 12, i32 1073742080 }, %struct.hda_pintbl { i16 13, i32 16859153 }, %struct.hda_pintbl { i16 14, i32 27365409 }, %struct.hda_pintbl { i16 15, i32 25243684 }, %struct.hda_pintbl { i16 16, i32 1073742080 }, %struct.hda_pintbl { i16 17, i32 1073742080 }, %struct.hda_pintbl { i16 18, i32 1073742080 }, %struct.hda_pintbl { i16 19, i32 1073742080 }, %struct.hda_pintbl { i16 20, i32 1073742080 }, %struct.hda_pintbl { i16 33, i32 1073742080 }, %struct.hda_pintbl { i16 34, i32 1073742080 }, %struct.hda_pintbl { i16 35, i32 1073742080 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@d965_5st_pin_configs = internal constant { [15 x %struct.hda_pintbl], [40 x i8] } { [15 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 35733536 }, %struct.hda_pintbl { i16 11, i32 44142720 }, %struct.hda_pintbl { i16 12, i32 25243726 }, %struct.hda_pintbl { i16 13, i32 16859152 }, %struct.hda_pintbl { i16 14, i32 27365440 }, %struct.hda_pintbl { i16 15, i32 16846866 }, %struct.hda_pintbl { i16 16, i32 16867345 }, %struct.hda_pintbl { i16 17, i32 1073742080 }, %struct.hda_pintbl { i16 18, i32 1073742080 }, %struct.hda_pintbl { i16 19, i32 1073742080 }, %struct.hda_pintbl { i16 20, i32 1073742080 }, %struct.hda_pintbl { i16 33, i32 21241968 }, %struct.hda_pintbl { i16 34, i32 1073742080 }, %struct.hda_pintbl { i16 35, i32 1073742080 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@d965_5st_no_fp_pin_configs = internal constant { [15 x %struct.hda_pintbl], [40 x i8] } { [15 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 1073742080 }, %struct.hda_pintbl { i16 11, i32 1073742080 }, %struct.hda_pintbl { i16 12, i32 25243726 }, %struct.hda_pintbl { i16 13, i32 16859152 }, %struct.hda_pintbl { i16 14, i32 27365440 }, %struct.hda_pintbl { i16 15, i32 16846866 }, %struct.hda_pintbl { i16 16, i32 16867345 }, %struct.hda_pintbl { i16 17, i32 1073742080 }, %struct.hda_pintbl { i16 18, i32 1073742080 }, %struct.hda_pintbl { i16 19, i32 1073742080 }, %struct.hda_pintbl { i16 20, i32 1073742080 }, %struct.hda_pintbl { i16 33, i32 21241968 }, %struct.hda_pintbl { i16 34, i32 1073742080 }, %struct.hda_pintbl { i16 35, i32 1073742080 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@d965_core_init = internal constant { [3 x %struct.hda_verb], [60 x i8] } { [3 x %struct.hda_verb] [%struct.hda_verb { i16 27, i32 768, i32 45056 }, %struct.hda_verb { i16 11, i32 1793, i32 1 }, %struct.hda_verb zeroinitializer], [60 x i8] zeroinitializer }, align 32
@dell_3st_pin_configs = internal constant { [15 x %struct.hda_pintbl], [40 x i8] } { [15 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 35721776 }, %struct.hda_pintbl { i16 11, i32 44110368 }, %struct.hda_pintbl { i16 12, i32 27365440 }, %struct.hda_pintbl { i16 13, i32 17908240 }, %struct.hda_pintbl { i16 14, i32 17895954 }, %struct.hda_pintbl { i16 15, i32 17916433 }, %struct.hda_pintbl { i16 16, i32 25243728 }, %struct.hda_pintbl { i16 17, i32 17900052 }, %struct.hda_pintbl { i16 18, i32 1076888570 }, %struct.hda_pintbl { i16 19, i32 -1868169152 }, %struct.hda_pintbl { i16 20, i32 -1868169152 }, %struct.hda_pintbl { i16 33, i32 1077937147 }, %struct.hda_pintbl { i16 34, i32 1086325756 }, %struct.hda_pintbl { i16 35, i32 1073742080 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.190 = internal constant { [3 x %struct.hda_pintbl], [40 x i8] } { [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 15, i32 35721247 }, %struct.hda_pintbl { i16 14, i32 44536112 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@nemo_pin_configs = internal constant { [15 x %struct.hda_pintbl], [40 x i8] } { [15 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 35733536 }, %struct.hda_pintbl { i16 11, i32 44142720 }, %struct.hda_pintbl { i16 12, i32 25243726 }, %struct.hda_pintbl { i16 13, i32 16859152 }, %struct.hda_pintbl { i16 14, i32 27365440 }, %struct.hda_pintbl { i16 15, i32 16846866 }, %struct.hda_pintbl { i16 16, i32 16867345 }, %struct.hda_pintbl { i16 17, i32 16850964 }, %struct.hda_pintbl { i16 18, i32 271778288 }, %struct.hda_pintbl { i16 19, i32 1091637744 }, %struct.hda_pintbl { i16 20, i32 1091637744 }, %struct.hda_pintbl { i16 33, i32 21242224 }, %struct.hda_pintbl { i16 34, i32 1091637744 }, %struct.hda_pintbl { i16 35, i32 1091637744 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.191 = internal constant { [2 x %struct.hda_pintbl], [16 x i8] } { [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 12, i32 -1868066512 }, %struct.hda_pintbl zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.192 = internal constant { [2 x %struct.hda_pintbl], [16 x i8] } { [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 33, i32 21241968 }, %struct.hda_pintbl zeroinitializer], [16 x i8] zeroinitializer }, align 32
@ref927x_pin_configs = internal constant { [15 x %struct.hda_pintbl], [40 x i8] } { [15 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 35733536 }, %struct.hda_pintbl { i16 11, i32 44142720 }, %struct.hda_pintbl { i16 12, i32 25243726 }, %struct.hda_pintbl { i16 13, i32 16859152 }, %struct.hda_pintbl { i16 14, i32 27365440 }, %struct.hda_pintbl { i16 15, i32 16846866 }, %struct.hda_pintbl { i16 16, i32 16867345 }, %struct.hda_pintbl { i16 17, i32 16850975 }, %struct.hda_pintbl { i16 18, i32 405996016 }, %struct.hda_pintbl { i16 19, i32 413139440 }, %struct.hda_pintbl { i16 20, i32 413139440 }, %struct.hda_pintbl { i16 33, i32 21241968 }, %struct.hda_pintbl { i16 34, i32 29630864 }, %struct.hda_pintbl { i16 35, i32 1073742080 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@dell_3st_core_init = internal constant { [4 x %struct.hda_verb], [48 x i8] } { [4 x %struct.hda_verb] [%struct.hda_verb { i16 36, i32 1807, i32 127 }, %struct.hda_verb { i16 27, i32 768, i32 45056 }, %struct.hda_verb { i16 11, i32 1793, i32 1 }, %struct.hda_verb zeroinitializer], [48 x i8] zeroinitializer }, align 32
@stac927x_volknob_core_init = internal constant { [3 x %struct.hda_verb], [60 x i8] } { [3 x %struct.hda_verb] [%struct.hda_verb { i16 36, i32 1807, i32 127 }, %struct.hda_verb { i16 1, i32 1806, i32 32 }, %struct.hda_verb zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Analog Loopback: 0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@stac925x_core_init = internal constant { [3 x %struct.hda_verb], [60 x i8] } { [3 x %struct.hda_verb] [%struct.hda_verb { i16 6, i32 1793, i32 0 }, %struct.hda_verb { i16 14, i32 768, i32 45184 }, %struct.hda_verb zeroinitializer], [60 x i8] zeroinitializer }, align 32
@stac925x_models = internal constant { [9 x %struct.hda_model_fixup], [56 x i8] } { [9 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 0, ptr @.str.101 }, %struct.hda_model_fixup { i32 1, ptr @.str.194 }, %struct.hda_model_fixup { i32 2, ptr @.str.195 }, %struct.hda_model_fixup { i32 3, ptr @.str.196 }, %struct.hda_model_fixup { i32 4, ptr @.str.197 }, %struct.hda_model_fixup { i32 5, ptr @.str.198 }, %struct.hda_model_fixup { i32 6, ptr @.str.199 }, %struct.hda_model_fixup { i32 7, ptr @.str.200 }, %struct.hda_model_fixup zeroinitializer], [56 x i8] zeroinitializer }, align 32
@stac925x_fixup_tbl = internal constant { [14 x %struct.snd_pci_quirk], [32 x i8] } { [14 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 -32634, i16 9832, i16 -1, i32 0, ptr @.str.116 }, %struct.snd_pci_quirk { i16 5565, i16 12545, i16 -1, i32 0, ptr @.str.116 }, %struct.snd_pci_quirk { i16 -31868, i16 30258, i16 -1, i32 0, ptr @.str.201 }, %struct.snd_pci_quirk { i16 4098, i16 17275, i16 -1, i32 4, ptr @.str.202 }, %struct.snd_pci_quirk { i16 4219, i16 790, i16 -1, i32 3, ptr @.str.203 }, %struct.snd_pci_quirk { i16 4219, i16 870, i16 -1, i32 6, ptr @.str.204 }, %struct.snd_pci_quirk { i16 4219, i16 1121, i16 -1, i32 1, ptr @.str.205 }, %struct.snd_pci_quirk { i16 4219, i16 1665, i16 -1, i32 3, ptr @.str.206 }, %struct.snd_pci_quirk { i16 4219, i16 871, i16 -1, i32 2, ptr @.str.207 }, %struct.snd_pci_quirk { i16 4219, i16 641, i16 -1, i32 1, ptr @.str.202 }, %struct.snd_pci_quirk { i16 4219, i16 1287, i16 -1, i32 5, ptr @.str.202 }, %struct.snd_pci_quirk { i16 4219, i16 641, i16 -1, i32 7, ptr @.str.202 }, %struct.snd_pci_quirk { i16 4219, i16 1669, i16 -1, i32 4, ptr @.str.202 }, %struct.snd_pci_quirk zeroinitializer], [32 x i8] zeroinitializer }, align 32
@stac925x_fixups = internal constant { [8 x %struct.hda_fixup], [32 x i8] } { [8 x %struct.hda_fixup] [%struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @ref925x_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @stac925xM1_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @stac925xM1_2_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @stac925xM2_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @stac925xM2_2_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @stac925xM3_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @stac925xM5_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @stac925xM6_pin_configs } }], [32 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"m1\00", [29 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"m1-2\00", [27 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"m2\00", [29 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"m2-2\00", [27 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"m3\00", [29 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"m5\00", [29 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"m6\00", [29 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Stac9202 Reference Board\00", [39 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Gateway mobile\00", [17 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Gateway M255\00", [19 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Gateway MP6954\00", [17 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Gateway NX560XL\00", [16 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Gateway NX860\00", [18 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Gateway MX6453\00", [17 x i8] zeroinitializer }, align 32
@ref925x_pin_configs = internal constant { [9 x %struct.hda_pintbl], [56 x i8] } { [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 7, i32 1086325744 }, %struct.hda_pintbl { i16 8, i32 1111819250 }, %struct.hda_pintbl { i16 10, i32 25243682 }, %struct.hda_pintbl { i16 11, i32 44142625 }, %struct.hda_pintbl { i16 12, i32 -1868102880 }, %struct.hda_pintbl { i16 13, i32 35734032 }, %struct.hda_pintbl { i16 16, i32 16879648 }, %struct.hda_pintbl { i16 17, i32 -1875705042 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@stac925xM1_pin_configs = internal constant { [9 x %struct.hda_pintbl], [56 x i8] } { [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 7, i32 1086325748 }, %struct.hda_pintbl { i16 8, i32 1111819250 }, %struct.hda_pintbl { i16 10, i32 1073742067 }, %struct.hda_pintbl { i16 11, i32 44142624 }, %struct.hda_pintbl { i16 12, i32 1084227824 }, %struct.hda_pintbl { i16 13, i32 -1877999088 }, %struct.hda_pintbl { i16 16, i32 1073742833 }, %struct.hda_pintbl { i16 17, i32 -1875705042 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@stac925xM1_2_pin_configs = internal constant { [9 x %struct.hda_pintbl], [56 x i8] } { [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 7, i32 1086325748 }, %struct.hda_pintbl { i16 8, i32 1111819250 }, %struct.hda_pintbl { i16 10, i32 1073742067 }, %struct.hda_pintbl { i16 11, i32 44142624 }, %struct.hda_pintbl { i16 12, i32 1084227824 }, %struct.hda_pintbl { i16 13, i32 -1877999088 }, %struct.hda_pintbl { i16 16, i32 1073742833 }, %struct.hda_pintbl { i16 17, i32 -1875705042 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@stac925xM2_pin_configs = internal constant { [9 x %struct.hda_pintbl], [56 x i8] } { [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 7, i32 1086325748 }, %struct.hda_pintbl { i16 8, i32 1111819250 }, %struct.hda_pintbl { i16 10, i32 1073742067 }, %struct.hda_pintbl { i16 11, i32 44142624 }, %struct.hda_pintbl { i16 12, i32 1084227824 }, %struct.hda_pintbl { i16 13, i32 -1877999088 }, %struct.hda_pintbl { i16 16, i32 1073742833 }, %struct.hda_pintbl { i16 17, i32 -1875705042 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@stac925xM2_2_pin_configs = internal constant { [9 x %struct.hda_pintbl], [56 x i8] } { [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 7, i32 1086325748 }, %struct.hda_pintbl { i16 8, i32 1111819250 }, %struct.hda_pintbl { i16 10, i32 1073742067 }, %struct.hda_pintbl { i16 11, i32 44142624 }, %struct.hda_pintbl { i16 12, i32 1084227824 }, %struct.hda_pintbl { i16 13, i32 -1877999088 }, %struct.hda_pintbl { i16 16, i32 1073742833 }, %struct.hda_pintbl { i16 17, i32 -1875705042 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@stac925xM3_pin_configs = internal constant { [9 x %struct.hda_pintbl], [56 x i8] } { [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 7, i32 1086325748 }, %struct.hda_pintbl { i16 8, i32 1111819250 }, %struct.hda_pintbl { i16 10, i32 1073742067 }, %struct.hda_pintbl { i16 11, i32 44142624 }, %struct.hda_pintbl { i16 12, i32 1084227824 }, %struct.hda_pintbl { i16 13, i32 -1877999088 }, %struct.hda_pintbl { i16 16, i32 1073742833 }, %struct.hda_pintbl { i16 17, i32 1345520627 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@stac925xM5_pin_configs = internal constant { [9 x %struct.hda_pintbl], [56 x i8] } { [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 7, i32 1086325748 }, %struct.hda_pintbl { i16 8, i32 1111819250 }, %struct.hda_pintbl { i16 10, i32 1073742067 }, %struct.hda_pintbl { i16 11, i32 44142624 }, %struct.hda_pintbl { i16 12, i32 1084227824 }, %struct.hda_pintbl { i16 13, i32 -1877999088 }, %struct.hda_pintbl { i16 16, i32 1073742833 }, %struct.hda_pintbl { i16 17, i32 -1875705042 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@stac925xM6_pin_configs = internal constant { [9 x %struct.hda_pintbl], [56 x i8] } { [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 7, i32 1086325748 }, %struct.hda_pintbl { i16 8, i32 1111819250 }, %struct.hda_pintbl { i16 10, i32 1073742067 }, %struct.hda_pintbl { i16 11, i32 44142624 }, %struct.hda_pintbl { i16 12, i32 1084227824 }, %struct.hda_pintbl { i16 13, i32 -1877999088 }, %struct.hda_pintbl { i16 16, i32 1073742833 }, %struct.hda_pintbl { i16 17, i32 -1875705056 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@stac9872_core_init = internal constant { [3 x %struct.hda_verb], [60 x i8] } { [3 x %struct.hda_verb] [%struct.hda_verb { i16 21, i32 1793, i32 1 }, %struct.hda_verb { i16 21, i32 768, i32 45056 }, %struct.hda_verb zeroinitializer], [60 x i8] zeroinitializer }, align 32
@stac9872_models = internal constant { [2 x %struct.hda_model_fixup], [16 x i8] } { [2 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 0, ptr @.str.208 }, %struct.hda_model_fixup zeroinitializer], [16 x i8] zeroinitializer }, align 32
@stac9872_fixup_tbl = internal constant { [2 x %struct.snd_pci_quirk], [32 x i8] } { [2 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4173, i16 -32288, i16 -16, i32 0, ptr @.str.209 }, %struct.snd_pci_quirk zeroinitializer], [32 x i8] zeroinitializer }, align 32
@stac9872_fixups = internal constant { [1 x %struct.hda_fixup], [16 x i8] } { [1 x %struct.hda_fixup] [%struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @stac9872_vaio_pin_configs } }], [16 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vaio\00", [27 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Sony VAIO F/S\00", [18 x i8] zeroinitializer }, align 32
@stac9872_vaio_pin_configs = internal constant { [10 x %struct.hda_pintbl], [48 x i8] } { [10 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 52498464 }, %struct.hda_pintbl { i16 11, i32 1091637744 }, %struct.hda_pintbl { i16 12, i32 1091637744 }, %struct.hda_pintbl { i16 13, i32 60903472 }, %struct.hda_pintbl { i16 14, i32 1091637744 }, %struct.hda_pintbl { i16 15, i32 -1877540592 }, %struct.hda_pintbl { i16 17, i32 1091637744 }, %struct.hda_pintbl { i16 19, i32 1091637744 }, %struct.hda_pintbl { i16 20, i32 -1868103362 }, %struct.hda_pintbl zeroinitializer], [48 x i8] zeroinitializer }, align 32
@stac9205_core_init = internal constant { [3 x %struct.hda_verb], [60 x i8] } { [3 x %struct.hda_verb] [%struct.hda_verb { i16 36, i32 1807, i32 255 }, %struct.hda_verb { i16 1, i32 1806, i32 32 }, %struct.hda_verb zeroinitializer], [60 x i8] zeroinitializer }, align 32
@stac9205_loopback = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.171, i32 0, i32 0, i32 1, ptr @snd_ctl_boolean_mono_info, ptr @stac_aloopback_get, ptr @stac_aloopback_put, %union.anon.85 zeroinitializer, i32 132124640 }, [48 x i8] zeroinitializer }, align 32
@stac9205_models = internal constant { [6 x %struct.hda_model_fixup], [48 x i8] } { [6 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 0, ptr @.str.101 }, %struct.hda_model_fixup { i32 1, ptr @.str.210 }, %struct.hda_model_fixup { i32 2, ptr @.str.211 }, %struct.hda_model_fixup { i32 3, ptr @.str.212 }, %struct.hda_model_fixup { i32 4, ptr @.str.213 }, %struct.hda_model_fixup zeroinitializer], [48 x i8] zeroinitializer }, align 32
@stac9205_fixup_tbl = internal constant { [22 x %struct.snd_pci_quirk], [64 x i8] } { [22 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 -32634, i16 9832, i16 -1, i32 0, ptr @.str.116 }, %struct.snd_pci_quirk { i16 -32634, i16 -1232, i16 -1, i32 0, ptr @.str.214 }, %struct.snd_pci_quirk { i16 5565, i16 12545, i16 -1, i32 0, ptr @.str.116 }, %struct.snd_pci_quirk { i16 4136, i16 497, i16 -1, i32 1, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 498, i16 -1, i32 1, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 504, i16 -1, i32 2, ptr @.str.215 }, %struct.snd_pci_quirk { i16 4136, i16 505, i16 -1, i32 2, ptr @.str.215 }, %struct.snd_pci_quirk { i16 4136, i16 506, i16 -1, i32 2, ptr @.str.215 }, %struct.snd_pci_quirk { i16 4136, i16 508, i16 -1, i32 1, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 509, i16 -1, i32 1, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 510, i16 -1, i32 2, ptr @.str.215 }, %struct.snd_pci_quirk { i16 4136, i16 511, i16 -1, i32 2, ptr @.str.216 }, %struct.snd_pci_quirk { i16 4136, i16 516, i16 -1, i32 1, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 518, i16 -1, i32 2, ptr @.str.215 }, %struct.snd_pci_quirk { i16 4136, i16 539, i16 -1, i32 2, ptr @.str.215 }, %struct.snd_pci_quirk { i16 4136, i16 540, i16 -1, i32 2, ptr @.str.215 }, %struct.snd_pci_quirk { i16 4136, i16 543, i16 -1, i32 3, ptr @.str.217 }, %struct.snd_pci_quirk { i16 4136, i16 552, i16 -1, i32 1, ptr @.str.218 }, %struct.snd_pci_quirk { i16 4136, i16 553, i16 -1, i32 1, ptr @.str.219 }, %struct.snd_pci_quirk { i16 4219, i16 1376, i16 -1, i32 4, ptr @.str.220 }, %struct.snd_pci_quirk { i16 4219, i16 1381, i16 -1, i32 4, ptr @.str.221 }, %struct.snd_pci_quirk zeroinitializer], [64 x i8] zeroinitializer }, align 32
@stac9205_fixups = internal constant { [6 x %struct.hda_fixup], [32 x i8] } { [6 x %struct.hda_fixup] [%struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @stac9205_fixup_ref } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @dell_9205_m42_pin_configs } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @stac9205_fixup_dell_m43 } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @dell_9205_m44_pin_configs } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @stac9205_fixup_eapd } }, %struct.hda_fixup zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dell-m42\00", [23 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dell-m43\00", [23 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dell-m44\00", [23 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eapd\00", [27 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SigmaTel\00", [23 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Dell Precision\00", [17 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Dell Precision M4300\00", [43 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Dell Inspiron\00", [18 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Dell Vostro 1500\00", [47 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Dell Vostro 1700\00", [47 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Gateway T6834c\00", [17 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Gateway T1616\00", [18 x i8] zeroinitializer }, align 32
@dell_9205_m42_pin_configs = internal constant { [13 x %struct.hda_pintbl], [56 x i8] } { [13 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 52498463 }, %struct.hda_pintbl { i16 11, i32 60887072 }, %struct.hda_pintbl { i16 12, i32 1073742842 }, %struct.hda_pintbl { i16 13, i32 -1877540080 }, %struct.hda_pintbl { i16 14, i32 1073742843 }, %struct.hda_pintbl { i16 15, i32 1073742844 }, %struct.hda_pintbl { i16 20, i32 1073742845 }, %struct.hda_pintbl { i16 22, i32 1089470713 }, %struct.hda_pintbl { i16 23, i32 -1868168400 }, %struct.hda_pintbl { i16 24, i32 1073742847 }, %struct.hda_pintbl { i16 33, i32 21238559 }, %struct.hda_pintbl { i16 34, i32 1086325758 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@dell_9205_m44_pin_configs = internal constant { [13 x %struct.hda_pintbl], [56 x i8] } { [13 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 69275679 }, %struct.hda_pintbl { i16 11, i32 77664288 }, %struct.hda_pintbl { i16 12, i32 1073742842 }, %struct.hda_pintbl { i16 13, i32 -1877540080 }, %struct.hda_pintbl { i16 14, i32 1073742843 }, %struct.hda_pintbl { i16 15, i32 1073742844 }, %struct.hda_pintbl { i16 20, i32 1073742845 }, %struct.hda_pintbl { i16 22, i32 1073742841 }, %struct.hda_pintbl { i16 23, i32 -1868168400 }, %struct.hda_pintbl { i16 24, i32 1073742847 }, %struct.hda_pintbl { i16 33, i32 21238592 }, %struct.hda_pintbl { i16 34, i32 1086325758 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ref9205_pin_configs = internal constant { [13 x %struct.hda_pintbl], [56 x i8] } { [13 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 1073742080 }, %struct.hda_pintbl { i16 11, i32 1073742080 }, %struct.hda_pintbl { i16 12, i32 16867345 }, %struct.hda_pintbl { i16 13, i32 16859152 }, %struct.hda_pintbl { i16 14, i32 25243938 }, %struct.hda_pintbl { i16 15, i32 27365409 }, %struct.hda_pintbl { i16 20, i32 16879648 }, %struct.hda_pintbl { i16 22, i32 1073742080 }, %struct.hda_pintbl { i16 23, i32 -1868562192 }, %struct.hda_pintbl { i16 24, i32 -1868562192 }, %struct.hda_pintbl { i16 33, i32 21237808 }, %struct.hda_pintbl { i16 34, i32 29626416 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@dell_9205_m43_pin_configs = internal constant { [15 x %struct.hda_pintbl], [40 x i8] } { [15 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 52498463 }, %struct.hda_pintbl { i16 11, i32 60887072 }, %struct.hda_pintbl { i16 12, i32 -1868102864 }, %struct.hda_pintbl { i16 13, i32 -1877540080 }, %struct.hda_pintbl { i16 14, i32 1073742078 }, %struct.hda_pintbl { i16 15, i32 1073742079 }, %struct.hda_pintbl { i16 20, i32 1073742077 }, %struct.hda_pintbl { i16 22, i32 1089470713 }, %struct.hda_pintbl { i16 23, i32 1073742074 }, %struct.hda_pintbl { i16 24, i32 1073742076 }, %struct.hda_pintbl { i16 33, i32 21238559 }, %struct.hda_pintbl { i16 34, i32 1086325752 }, %struct.hda_pintbl { i16 31, i32 21237808 }, %struct.hda_pintbl { i16 32, i32 474021936 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@stac92hd71bxx_unmute_nids = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 15, i16 10, i16 13, i16 0], [24 x i8] zeroinitializer }, align 32
@stac92hd71bxx_core_init = internal constant { [2 x %struct.hda_verb], [40 x i8] } { [2 x %struct.hda_verb] [%struct.hda_verb { i16 40, i32 1807, i32 255 }, %struct.hda_verb zeroinitializer], [40 x i8] zeroinitializer }, align 32
@stac92hd71bxx_loopback = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.171, i32 0, i32 0, i32 2, ptr @snd_ctl_boolean_mono_info, ptr @stac_aloopback_get, ptr @stac_aloopback_put, %union.anon.85 zeroinitializer, i32 127930272 }, [48 x i8] zeroinitializer }, align 32
@stac92hd71bxx_pwr_nids = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 10, i16 13, i16 15], [26 x i8] zeroinitializer }, align 32
@stac92hd71bxx_models = internal constant { [10 x %struct.hda_model_fixup], [48 x i8] } { [10 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 0, ptr @.str.101 }, %struct.hda_model_fixup { i32 1, ptr @.str.222 }, %struct.hda_model_fixup { i32 2, ptr @.str.223 }, %struct.hda_model_fixup { i32 3, ptr @.str.224 }, %struct.hda_model_fixup { i32 4, ptr @.str.225 }, %struct.hda_model_fixup { i32 5, ptr @.str.226 }, %struct.hda_model_fixup { i32 6, ptr @.str.227 }, %struct.hda_model_fixup { i32 7, ptr @.str.228 }, %struct.hda_model_fixup { i32 5, ptr @.str.229 }, %struct.hda_model_fixup zeroinitializer], [48 x i8] zeroinitializer }, align 32
@stac92hd71bxx_fixup_tbl = internal constant { [27 x %struct.snd_pci_quirk], [112 x i8] } { [27 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 -32634, i16 9832, i16 -1, i32 0, ptr @.str.116 }, %struct.snd_pci_quirk { i16 5565, i16 12545, i16 -1, i32 0, ptr @.str.116 }, %struct.snd_pci_quirk { i16 4156, i16 5920, i16 -16, i32 6, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 12416, i16 -16, i32 6, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 12528, i16 -16, i32 5, ptr @.str.231 }, %struct.snd_pci_quirk { i16 4156, i16 13824, i16 -16, i32 6, ptr @.str.231 }, %struct.snd_pci_quirk { i16 4156, i16 13840, i16 -1, i32 7, ptr @.str.232 }, %struct.snd_pci_quirk { i16 4156, i16 13850, i16 -1, i32 4, ptr @.str.233 }, %struct.snd_pci_quirk { i16 4156, i16 13851, i16 -1, i32 7, ptr @.str.232 }, %struct.snd_pci_quirk { i16 4156, i16 13856, i16 -16, i32 6, ptr @.str.234 }, %struct.snd_pci_quirk { i16 4156, i16 12385, i16 -1, i32 6, ptr @.str.234 }, %struct.snd_pci_quirk { i16 4156, i16 13886, i16 -1, i32 6, ptr @.str.235 }, %struct.snd_pci_quirk { i16 4156, i16 28688, i16 -16, i32 6, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 0, i16 0, i32 8, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4136, i16 563, i16 -1, i32 1, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 564, i16 -1, i32 1, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 592, i16 -1, i32 1, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 591, i16 -1, i32 1, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 589, i16 -1, i32 1, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 593, i16 -1, i32 1, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 631, i16 -1, i32 1, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 611, i16 -1, i32 2, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 613, i16 -1, i32 2, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 610, i16 -1, i32 2, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 612, i16 -1, i32 2, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 682, i16 -1, i32 3, ptr @.str.117 }, %struct.snd_pci_quirk zeroinitializer], [112 x i8] zeroinitializer }, align 32
@stac92hd71bxx_fixups = internal constant { [9 x %struct.hda_fixup], [48 x i8] } { [9 x %struct.hda_fixup] [%struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @stac92hd71bxx_fixup_ref } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @dell_m4_1_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @dell_m4_2_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @dell_m4_3_pin_configs } }, %struct.hda_fixup { i32 3, i8 -128, i32 8, %union.anon.74 { ptr @stac92hd71bxx_fixup_hp_m4 } }, %struct.hda_fixup { i32 3, i8 -128, i32 6, %union.anon.74 { ptr @stac92hd71bxx_fixup_hp_dv4 } }, %struct.hda_fixup { i32 3, i8 -128, i32 8, %union.anon.74 { ptr @stac92hd71bxx_fixup_hp_dv5 } }, %struct.hda_fixup { i32 3, i8 -128, i32 8, %union.anon.74 { ptr @stac92hd71bxx_fixup_hp_hdx } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @stac92hd71bxx_fixup_hp } }], [48 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dell-m4-1\00", [22 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dell-m4-2\00", [22 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dell-m4-3\00", [22 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hp-m4\00", [26 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hp-dv4\00", [25 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hp-dv5\00", [25 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hp-hdx\00", [25 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hp-dv4-1222nr\00", [18 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HP\00", [29 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HP dv4-7\00", [23 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HP HDX\00", [25 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HP mini 1000\00", [19 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HP dv6\00", [25 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HP DV6\00", [25 x i8] zeroinitializer }, align 32
@dell_m4_1_pin_configs = internal constant { [12 x %struct.hda_pintbl], [32 x i8] } { [12 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 69275679 }, %struct.hda_pintbl { i16 11, i32 77664801 }, %struct.hda_pintbl { i16 12, i32 1089470704 }, %struct.hda_pintbl { i16 13, i32 -1877540592 }, %struct.hda_pintbl { i16 14, i32 597790766 }, %struct.hda_pintbl { i16 15, i32 587285072 }, %struct.hda_pintbl { i16 20, i32 1089470704 }, %struct.hda_pintbl { i16 24, i32 -1868562192 }, %struct.hda_pintbl { i16 25, i32 1089470704 }, %struct.hda_pintbl { i16 30, i32 1325400304 }, %struct.hda_pintbl { i16 31, i32 1325400304 }, %struct.hda_pintbl zeroinitializer], [32 x i8] zeroinitializer }, align 32
@dell_m4_2_pin_configs = internal constant { [12 x %struct.hda_pintbl], [32 x i8] } { [12 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 69275679 }, %struct.hda_pintbl { i16 11, i32 77664801 }, %struct.hda_pintbl { i16 12, i32 -1868102864 }, %struct.hda_pintbl { i16 13, i32 -1877540592 }, %struct.hda_pintbl { i16 14, i32 597790766 }, %struct.hda_pintbl { i16 15, i32 587285072 }, %struct.hda_pintbl { i16 20, i32 1089470704 }, %struct.hda_pintbl { i16 24, i32 1089470704 }, %struct.hda_pintbl { i16 25, i32 1089470704 }, %struct.hda_pintbl { i16 30, i32 71570352 }, %struct.hda_pintbl { i16 31, i32 71570352 }, %struct.hda_pintbl zeroinitializer], [32 x i8] zeroinitializer }, align 32
@dell_m4_3_pin_configs = internal constant { [12 x %struct.hda_pintbl], [32 x i8] } { [12 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 69275679 }, %struct.hda_pintbl { i16 11, i32 77664801 }, %struct.hda_pintbl { i16 12, i32 -1868102864 }, %struct.hda_pintbl { i16 13, i32 -1877540592 }, %struct.hda_pintbl { i16 14, i32 1089470704 }, %struct.hda_pintbl { i16 15, i32 1089470704 }, %struct.hda_pintbl { i16 20, i32 1089470704 }, %struct.hda_pintbl { i16 24, i32 -1868562192 }, %struct.hda_pintbl { i16 25, i32 1089470704 }, %struct.hda_pintbl { i16 30, i32 71570352 }, %struct.hda_pintbl { i16 31, i32 71570352 }, %struct.hda_pintbl zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ref92hd71bxx_pin_configs = internal constant { [12 x %struct.hda_pintbl], [32 x i8] } { [12 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 35733552 }, %struct.hda_pintbl { i16 11, i32 44142656 }, %struct.hda_pintbl { i16 12, i32 27365408 }, %struct.hda_pintbl { i16 13, i32 16859152 }, %struct.hda_pintbl { i16 14, i32 25243694 }, %struct.hda_pintbl { i16 15, i32 16859152 }, %struct.hda_pintbl { i16 20, i32 16879648 }, %struct.hda_pintbl { i16 24, i32 -1868562192 }, %struct.hda_pintbl { i16 25, i32 -1868562192 }, %struct.hda_pintbl { i16 30, i32 21307472 }, %struct.hda_pintbl { i16 31, i32 21307472 }, %struct.hda_pintbl zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Bass Speaker Playback Switch\00", [35 x i8] zeroinitializer }, align 32
@stac_hp_bass_sw_ctrl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @stac_hp_bass_gpio_get, ptr @stac_hp_bass_gpio_put, %union.anon.85 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@stac92hd71bxx_fixup_hp.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.237, ptr @.str.99, ptr @.str.238, i8 3, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.237 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stac92hd71bxx_fixup_hp\00", [41 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mute LED gpio %d polarity %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_led\00", [23 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpio_led_polarity\00", [46 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Power-Map: 0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@stac92hd83xxx_pwr_nids = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16], [18 x i8] zeroinitializer }, align 32
@stac92hd83xxx_core_init = internal constant { [2 x %struct.hda_verb], [40 x i8] } { [2 x %struct.hda_verb] [%struct.hda_verb { i16 1, i32 1928, i32 4 }, %struct.hda_verb zeroinitializer], [40 x i8] zeroinitializer }, align 32
@stac92hd83xxx_models = internal constant { [15 x %struct.hda_model_fixup], [40 x i8] } { [15 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 0, ptr @.str.101 }, %struct.hda_model_fixup { i32 1, ptr @.str.245 }, %struct.hda_model_fixup { i32 2, ptr @.str.246 }, %struct.hda_model_fixup { i32 3, ptr @.str.247 }, %struct.hda_model_fixup { i32 4, ptr @.str.248 }, %struct.hda_model_fixup { i32 5, ptr @.str.249 }, %struct.hda_model_fixup { i32 6, ptr @.str.250 }, %struct.hda_model_fixup { i32 7, ptr @.str.251 }, %struct.hda_model_fixup { i32 8, ptr @.str.252 }, %struct.hda_model_fixup { i32 9, ptr @.str.253 }, %struct.hda_model_fixup { i32 11, ptr @.str.254 }, %struct.hda_model_fixup { i32 13, ptr @.str.255 }, %struct.hda_model_fixup { i32 14, ptr @.str.256 }, %struct.hda_model_fixup { i32 15, ptr @.str.257 }, %struct.hda_model_fixup zeroinitializer], [40 x i8] zeroinitializer }, align 32
@stac92hd83xxx_fixup_tbl = internal constant { [95 x %struct.snd_pci_quirk], [368 x i8] } { [95 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 -32634, i16 9832, i16 -1, i32 0, ptr @.str.116 }, %struct.snd_pci_quirk { i16 5565, i16 12545, i16 -1, i32 0, ptr @.str.116 }, %struct.snd_pci_quirk { i16 4136, i16 698, i16 -1, i32 2, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 1330, i16 -1, i32 11, ptr @.str.258 }, %struct.snd_pci_quirk { i16 4136, i16 1331, i16 -1, i32 11, ptr @.str.259 }, %struct.snd_pci_quirk { i16 4136, i16 1332, i16 -1, i32 11, ptr @.str.260 }, %struct.snd_pci_quirk { i16 4136, i16 1333, i16 -1, i32 11, ptr @.str.261 }, %struct.snd_pci_quirk { i16 4136, i16 1340, i16 -1, i32 11, ptr @.str.262 }, %struct.snd_pci_quirk { i16 4136, i16 1341, i16 -1, i32 11, ptr @.str.263 }, %struct.snd_pci_quirk { i16 4136, i16 1353, i16 -1, i32 11, ptr @.str.262 }, %struct.snd_pci_quirk { i16 4136, i16 1405, i16 -1, i32 11, ptr @.str.264 }, %struct.snd_pci_quirk { i16 4136, i16 1412, i16 -1, i32 11, ptr @.str.265 }, %struct.snd_pci_quirk { i16 4136, i16 4136, i16 -1, i32 3, ptr @.str.266 }, %struct.snd_pci_quirk { i16 4156, i16 5718, i16 -1, i32 4, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 5719, i16 -1, i32 4, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 5720, i16 -1, i32 4, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 5721, i16 -1, i32 5, ptr @.str.267 }, %struct.snd_pci_quirk { i16 4156, i16 5722, i16 -1, i32 4, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 5723, i16 -1, i32 4, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 6280, i16 -1, i32 13, ptr @.str.268 }, %struct.snd_pci_quirk { i16 4156, i16 6297, i16 -1, i32 10, ptr @.str.269 }, %struct.snd_pci_quirk { i16 4156, i16 6367, i16 -1, i32 14, ptr @.str.270 }, %struct.snd_pci_quirk { i16 4156, i16 6392, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 6409, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 6410, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 6414, i16 -1, i32 15, ptr @.str.272 }, %struct.snd_pci_quirk { i16 4156, i16 6503, i16 -1, i32 16, ptr @.str.272 }, %struct.snd_pci_quirk { i16 4156, i16 6464, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 6465, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 6466, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 6467, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 6468, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 6469, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 6470, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 6472, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 6473, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 6474, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 6475, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 6476, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 6478, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 6479, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 6480, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 6481, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 6490, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 6491, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 6492, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 6545, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8451, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8452, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8453, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8454, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8455, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8456, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8457, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8458, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8459, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8476, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8477, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8478, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8479, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8480, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8481, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8482, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8483, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8510, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8511, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8512, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8626, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8627, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8629, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 8630, i16 -1, i32 14, ptr @.str.271 }, %struct.snd_pci_quirk { i16 4156, i16 6400, i16 -256, i32 9, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 8192, i16 -256, i32 9, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 8448, i16 -256, i32 9, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 13192, i16 -1, i32 4, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 13193, i16 -1, i32 4, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 13659, i16 -1, i32 4, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 13660, i16 -1, i32 4, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 13661, i16 -1, i32 4, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 13662, i16 -1, i32 4, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 13663, i16 -1, i32 4, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 13664, i16 -1, i32 4, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 13707, i16 -1, i32 4, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 13708, i16 -1, i32 4, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 13709, i16 -1, i32 4, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 13713, i16 -1, i32 4, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 13714, i16 -1, i32 4, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 13715, i16 -1, i32 4, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 13665, i16 -1, i32 6, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4156, i16 13920, i16 -1, i32 7, ptr @.str.273 }, %struct.snd_pci_quirk { i16 4156, i16 5198, i16 -1, i32 8, ptr @.str.274 }, %struct.snd_pci_quirk { i16 4156, i16 5258, i16 -1, i32 7, ptr @.str.273 }, %struct.snd_pci_quirk { i16 4156, i16 0, i16 0, i32 12, ptr @.str.230 }, %struct.snd_pci_quirk { i16 4473, i16 -1391, i16 -3, i32 17, ptr @.str.275 }, %struct.snd_pci_quirk zeroinitializer], [368 x i8] zeroinitializer }, align 32
@stac92hd83xxx_fixups = internal constant { [18 x %struct.hda_fixup], [64 x i8] } { [18 x %struct.hda_fixup] [%struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @ref92hd83xxx_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @ref92hd83xxx_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @dell_s14_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @dell_vostro_3500_pin_configs } }, %struct.hda_fixup { i32 1, i8 -128, i32 12, %union.anon.74 { ptr @hp_cNB11_intquad_pin_configs } }, %struct.hda_fixup { i32 1, i8 -128, i32 12, %union.anon.74 { ptr @hp_dv7_4000_pin_configs } }, %struct.hda_fixup { i32 3, i8 -128, i32 12, %union.anon.74 { ptr @stac92hd83xxx_fixup_hp_zephyr } }, %struct.hda_fixup { i32 3, i8 -128, i32 12, %union.anon.74 { ptr @stac92hd83xxx_fixup_hp_led } }, %struct.hda_fixup { i32 3, i8 -128, i32 12, %union.anon.74 { ptr @stac92hd83xxx_fixup_hp_inv_led } }, %struct.hda_fixup { i32 3, i8 -128, i32 12, %union.anon.74 { ptr @stac92hd83xxx_fixup_hp_mic_led } }, %struct.hda_fixup { i32 3, i8 -128, i32 12, %union.anon.74 { ptr @stac92hd83xxx_fixup_hp_led_gpio10 } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @stac92hd83xxx_fixup_headset_jack } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @stac92hd83xxx_fixup_hp } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @.compoundliteral.276 } }, %struct.hda_fixup { i32 2, i8 -128, i32 9, %union.anon.74 { ptr @hp_bnb13_eq_verbs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @.compoundliteral.277 } }, %struct.hda_fixup { i32 3, i8 -128, i32 15, %union.anon.74 { ptr @hp_envy_ts_fixup_dac_bind } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @stac92hd83xxx_fixup_gpio10_eapd } }], [64 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mic-ref\00", [24 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dell-s14\00", [23 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dell-vostro-3500\00", [47 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hp_cNB11_intquad\00", [47 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hp-dv7-4000\00", [20 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hp-zephyr\00", [22 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hp-led\00", [25 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hp-inv-led\00", [21 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hp-mic-led\00", [21 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"headset-jack\00", [19 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hp-envy-bass\00", [19 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hp-bnb13-eq\00", [20 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hp-envy-ts-bass\00", [16 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Dell Latitude E6230\00", [44 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Dell Latitude E6330\00", [44 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Dell Latitude E6430\00", [44 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Dell Latitude E6530\00", [44 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Dell Latitude E5430\00", [44 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Dell Latitude E5530\00", [44 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Dell Latitude E6430s\00", [43 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Dell Latitude E6430U\00", [43 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Dell Vostro 3500\00", [47 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HP Pavilion dv7\00", [16 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HP Envy Spectre\00", [16 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HP Folio 13\00", [20 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HP Folio\00", [23 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HP bNB13\00", [23 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HP ENVY TS\00", [21 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HP Mini\00", [24 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HP Pavilion dv5\00", [16 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Toshiba Satellite S50D\00", [41 x i8] zeroinitializer }, align 32
@ref92hd83xxx_pin_configs = internal constant { [11 x %struct.hda_pintbl], [40 x i8] } { [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 35733552 }, %struct.hda_pintbl { i16 11, i32 35721232 }, %struct.hda_pintbl { i16 12, i32 44142624 }, %struct.hda_pintbl { i16 13, i32 35062064 }, %struct.hda_pintbl { i16 14, i32 16859216 }, %struct.hda_pintbl { i16 15, i32 25268288 }, %struct.hda_pintbl { i16 16, i32 16859168 }, %struct.hda_pintbl { i16 17, i32 -1868365490 }, %struct.hda_pintbl { i16 31, i32 21303648 }, %struct.hda_pintbl { i16 32, i32 -1739194000 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@dell_s14_pin_configs = internal constant { [11 x %struct.hda_pintbl], [40 x i8] } { [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 35733567 }, %struct.hda_pintbl { i16 11, i32 35721247 }, %struct.hda_pintbl { i16 12, i32 44142624 }, %struct.hda_pintbl { i16 13, i32 -1877540592 }, %struct.hda_pintbl { i16 14, i32 1089470704 }, %struct.hda_pintbl { i16 15, i32 1089470704 }, %struct.hda_pintbl { i16 16, i32 1089470704 }, %struct.hda_pintbl { i16 17, i32 -1868168864 }, %struct.hda_pintbl { i16 31, i32 1089470704 }, %struct.hda_pintbl { i16 32, i32 1089470704 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@dell_vostro_3500_pin_configs = internal constant { [11 x %struct.hda_pintbl], [40 x i8] } { [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 44109856 }, %struct.hda_pintbl { i16 11, i32 35721247 }, %struct.hda_pintbl { i16 12, i32 1073742064 }, %struct.hda_pintbl { i16 13, i32 -1877540592 }, %struct.hda_pintbl { i16 14, i32 1073742065 }, %struct.hda_pintbl { i16 15, i32 1073742066 }, %struct.hda_pintbl { i16 16, i32 1073742067 }, %struct.hda_pintbl { i16 17, i32 -1868168864 }, %struct.hda_pintbl { i16 31, i32 1073742068 }, %struct.hda_pintbl { i16 32, i32 1073742069 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@hp_cNB11_intquad_pin_configs = internal constant { [11 x %struct.hda_pintbl], [40 x i8] } { [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 1089470704 }, %struct.hda_pintbl { i16 11, i32 35721247 }, %struct.hda_pintbl { i16 12, i32 44109856 }, %struct.hda_pintbl { i16 13, i32 -1843986160 }, %struct.hda_pintbl { i16 14, i32 1089470704 }, %struct.hda_pintbl { i16 15, i32 -1843986160 }, %struct.hda_pintbl { i16 16, i32 1089470704 }, %struct.hda_pintbl { i16 17, i32 -710737616 }, %struct.hda_pintbl { i16 31, i32 1089470704 }, %struct.hda_pintbl { i16 32, i32 1089470704 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@hp_dv7_4000_pin_configs = internal constant { [11 x %struct.hda_pintbl], [40 x i8] } { [11 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 60891216 }, %struct.hda_pintbl { i16 11, i32 52502559 }, %struct.hda_pintbl { i16 12, i32 1089470704 }, %struct.hda_pintbl { i16 13, i32 -1877540592 }, %struct.hda_pintbl { i16 14, i32 1089470704 }, %struct.hda_pintbl { i16 15, i32 1089470704 }, %struct.hda_pintbl { i16 16, i32 -1877540592 }, %struct.hda_pintbl { i16 17, i32 -710737600 }, %struct.hda_pintbl { i16 31, i32 1089470704 }, %struct.hda_pintbl { i16 32, i32 1089470704 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.276 = internal constant { [2 x %struct.hda_pintbl], [16 x i8] } { [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 15, i32 -1877540591 }, %struct.hda_pintbl zeroinitializer], [16 x i8] zeroinitializer }, align 32
@hp_bnb13_eq_verbs = internal constant { [422 x %struct.hda_verb], [1272 x i8] } { [422 x %struct.hda_verb] [%struct.hda_verb { i16 34, i32 1958, i32 62 }, %struct.hda_verb { i16 34, i32 1959, i32 104 }, %struct.hda_verb { i16 34, i32 1960, i32 23 }, %struct.hda_verb { i16 34, i32 1961, i32 62 }, %struct.hda_verb { i16 34, i32 1962, i32 104 }, %struct.hda_verb { i16 34, i32 1963, i32 23 }, %struct.hda_verb { i16 34, i32 1964, i32 0 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 131 }, %struct.hda_verb { i16 34, i32 1959, i32 47 }, %struct.hda_verb { i16 34, i32 1960, i32 209 }, %struct.hda_verb { i16 34, i32 1961, i32 131 }, %struct.hda_verb { i16 34, i32 1962, i32 47 }, %struct.hda_verb { i16 34, i32 1963, i32 209 }, %struct.hda_verb { i16 34, i32 1964, i32 1 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 62 }, %struct.hda_verb { i16 34, i32 1959, i32 104 }, %struct.hda_verb { i16 34, i32 1960, i32 23 }, %struct.hda_verb { i16 34, i32 1961, i32 62 }, %struct.hda_verb { i16 34, i32 1962, i32 104 }, %struct.hda_verb { i16 34, i32 1963, i32 23 }, %struct.hda_verb { i16 34, i32 1964, i32 2 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 124 }, %struct.hda_verb { i16 34, i32 1959, i32 198 }, %struct.hda_verb { i16 34, i32 1960, i32 12 }, %struct.hda_verb { i16 34, i32 1961, i32 124 }, %struct.hda_verb { i16 34, i32 1962, i32 198 }, %struct.hda_verb { i16 34, i32 1963, i32 12 }, %struct.hda_verb { i16 34, i32 1964, i32 3 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 195 }, %struct.hda_verb { i16 34, i32 1959, i32 37 }, %struct.hda_verb { i16 34, i32 1960, i32 175 }, %struct.hda_verb { i16 34, i32 1961, i32 195 }, %struct.hda_verb { i16 34, i32 1962, i32 37 }, %struct.hda_verb { i16 34, i32 1963, i32 175 }, %struct.hda_verb { i16 34, i32 1964, i32 4 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 62 }, %struct.hda_verb { i16 34, i32 1959, i32 133 }, %struct.hda_verb { i16 34, i32 1960, i32 115 }, %struct.hda_verb { i16 34, i32 1961, i32 62 }, %struct.hda_verb { i16 34, i32 1962, i32 133 }, %struct.hda_verb { i16 34, i32 1963, i32 115 }, %struct.hda_verb { i16 34, i32 1964, i32 5 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 133 }, %struct.hda_verb { i16 34, i32 1959, i32 57 }, %struct.hda_verb { i16 34, i32 1960, i32 199 }, %struct.hda_verb { i16 34, i32 1961, i32 133 }, %struct.hda_verb { i16 34, i32 1962, i32 57 }, %struct.hda_verb { i16 34, i32 1963, i32 199 }, %struct.hda_verb { i16 34, i32 1964, i32 6 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 60 }, %struct.hda_verb { i16 34, i32 1959, i32 144 }, %struct.hda_verb { i16 34, i32 1960, i32 176 }, %struct.hda_verb { i16 34, i32 1961, i32 60 }, %struct.hda_verb { i16 34, i32 1962, i32 144 }, %struct.hda_verb { i16 34, i32 1963, i32 176 }, %struct.hda_verb { i16 34, i32 1964, i32 7 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 122 }, %struct.hda_verb { i16 34, i32 1959, i32 198 }, %struct.hda_verb { i16 34, i32 1960, i32 57 }, %struct.hda_verb { i16 34, i32 1961, i32 122 }, %struct.hda_verb { i16 34, i32 1962, i32 198 }, %struct.hda_verb { i16 34, i32 1963, i32 57 }, %struct.hda_verb { i16 34, i32 1964, i32 8 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 196 }, %struct.hda_verb { i16 34, i32 1959, i32 233 }, %struct.hda_verb { i16 34, i32 1960, i32 220 }, %struct.hda_verb { i16 34, i32 1961, i32 196 }, %struct.hda_verb { i16 34, i32 1962, i32 233 }, %struct.hda_verb { i16 34, i32 1963, i32 220 }, %struct.hda_verb { i16 34, i32 1964, i32 9 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 61 }, %struct.hda_verb { i16 34, i32 1959, i32 225 }, %struct.hda_verb { i16 34, i32 1960, i32 13 }, %struct.hda_verb { i16 34, i32 1961, i32 61 }, %struct.hda_verb { i16 34, i32 1962, i32 225 }, %struct.hda_verb { i16 34, i32 1963, i32 13 }, %struct.hda_verb { i16 34, i32 1964, i32 10 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 137 }, %struct.hda_verb { i16 34, i32 1959, i32 182 }, %struct.hda_verb { i16 34, i32 1960, i32 235 }, %struct.hda_verb { i16 34, i32 1961, i32 137 }, %struct.hda_verb { i16 34, i32 1962, i32 182 }, %struct.hda_verb { i16 34, i32 1963, i32 235 }, %struct.hda_verb { i16 34, i32 1964, i32 11 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 57 }, %struct.hda_verb { i16 34, i32 1959, i32 157 }, %struct.hda_verb { i16 34, i32 1960, i32 254 }, %struct.hda_verb { i16 34, i32 1961, i32 57 }, %struct.hda_verb { i16 34, i32 1962, i32 157 }, %struct.hda_verb { i16 34, i32 1963, i32 254 }, %struct.hda_verb { i16 34, i32 1964, i32 12 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 118 }, %struct.hda_verb { i16 34, i32 1959, i32 73 }, %struct.hda_verb { i16 34, i32 1960, i32 21 }, %struct.hda_verb { i16 34, i32 1961, i32 118 }, %struct.hda_verb { i16 34, i32 1962, i32 73 }, %struct.hda_verb { i16 34, i32 1963, i32 21 }, %struct.hda_verb { i16 34, i32 1964, i32 13 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 200 }, %struct.hda_verb { i16 34, i32 1959, i32 128 }, %struct.hda_verb { i16 34, i32 1960, i32 245 }, %struct.hda_verb { i16 34, i32 1961, i32 200 }, %struct.hda_verb { i16 34, i32 1962, i32 128 }, %struct.hda_verb { i16 34, i32 1963, i32 245 }, %struct.hda_verb { i16 34, i32 1964, i32 14 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 64 }, %struct.hda_verb { i16 34, i32 1959, i32 0 }, %struct.hda_verb { i16 34, i32 1960, i32 0 }, %struct.hda_verb { i16 34, i32 1961, i32 64 }, %struct.hda_verb { i16 34, i32 1962, i32 0 }, %struct.hda_verb { i16 34, i32 1963, i32 0 }, %struct.hda_verb { i16 34, i32 1964, i32 15 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 144 }, %struct.hda_verb { i16 34, i32 1959, i32 104 }, %struct.hda_verb { i16 34, i32 1960, i32 241 }, %struct.hda_verb { i16 34, i32 1961, i32 144 }, %struct.hda_verb { i16 34, i32 1962, i32 104 }, %struct.hda_verb { i16 34, i32 1963, i32 241 }, %struct.hda_verb { i16 34, i32 1964, i32 16 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 52 }, %struct.hda_verb { i16 34, i32 1959, i32 71 }, %struct.hda_verb { i16 34, i32 1960, i32 108 }, %struct.hda_verb { i16 34, i32 1961, i32 52 }, %struct.hda_verb { i16 34, i32 1962, i32 71 }, %struct.hda_verb { i16 34, i32 1963, i32 108 }, %struct.hda_verb { i16 34, i32 1964, i32 17 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 111 }, %struct.hda_verb { i16 34, i32 1959, i32 151 }, %struct.hda_verb { i16 34, i32 1960, i32 15 }, %struct.hda_verb { i16 34, i32 1961, i32 111 }, %struct.hda_verb { i16 34, i32 1962, i32 151 }, %struct.hda_verb { i16 34, i32 1963, i32 15 }, %struct.hda_verb { i16 34, i32 1964, i32 18 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 203 }, %struct.hda_verb { i16 34, i32 1959, i32 184 }, %struct.hda_verb { i16 34, i32 1960, i32 148 }, %struct.hda_verb { i16 34, i32 1961, i32 203 }, %struct.hda_verb { i16 34, i32 1962, i32 184 }, %struct.hda_verb { i16 34, i32 1963, i32 148 }, %struct.hda_verb { i16 34, i32 1964, i32 19 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 64 }, %struct.hda_verb { i16 34, i32 1959, i32 0 }, %struct.hda_verb { i16 34, i32 1960, i32 0 }, %struct.hda_verb { i16 34, i32 1961, i32 64 }, %struct.hda_verb { i16 34, i32 1962, i32 0 }, %struct.hda_verb { i16 34, i32 1963, i32 0 }, %struct.hda_verb { i16 34, i32 1964, i32 20 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 149 }, %struct.hda_verb { i16 34, i32 1959, i32 118 }, %struct.hda_verb { i16 34, i32 1960, i32 91 }, %struct.hda_verb { i16 34, i32 1961, i32 149 }, %struct.hda_verb { i16 34, i32 1962, i32 118 }, %struct.hda_verb { i16 34, i32 1963, i32 91 }, %struct.hda_verb { i16 34, i32 1964, i32 21 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 49 }, %struct.hda_verb { i16 34, i32 1959, i32 172 }, %struct.hda_verb { i16 34, i32 1960, i32 49 }, %struct.hda_verb { i16 34, i32 1961, i32 49 }, %struct.hda_verb { i16 34, i32 1962, i32 172 }, %struct.hda_verb { i16 34, i32 1963, i32 49 }, %struct.hda_verb { i16 34, i32 1964, i32 22 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 106 }, %struct.hda_verb { i16 34, i32 1959, i32 137 }, %struct.hda_verb { i16 34, i32 1960, i32 165 }, %struct.hda_verb { i16 34, i32 1961, i32 106 }, %struct.hda_verb { i16 34, i32 1962, i32 137 }, %struct.hda_verb { i16 34, i32 1963, i32 165 }, %struct.hda_verb { i16 34, i32 1964, i32 23 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 206 }, %struct.hda_verb { i16 34, i32 1959, i32 83 }, %struct.hda_verb { i16 34, i32 1960, i32 207 }, %struct.hda_verb { i16 34, i32 1961, i32 206 }, %struct.hda_verb { i16 34, i32 1962, i32 83 }, %struct.hda_verb { i16 34, i32 1963, i32 207 }, %struct.hda_verb { i16 34, i32 1964, i32 24 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 64 }, %struct.hda_verb { i16 34, i32 1959, i32 0 }, %struct.hda_verb { i16 34, i32 1960, i32 0 }, %struct.hda_verb { i16 34, i32 1961, i32 64 }, %struct.hda_verb { i16 34, i32 1962, i32 0 }, %struct.hda_verb { i16 34, i32 1963, i32 0 }, %struct.hda_verb { i16 34, i32 1964, i32 25 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 62 }, %struct.hda_verb { i16 34, i32 1959, i32 136 }, %struct.hda_verb { i16 34, i32 1960, i32 220 }, %struct.hda_verb { i16 34, i32 1961, i32 62 }, %struct.hda_verb { i16 34, i32 1962, i32 136 }, %struct.hda_verb { i16 34, i32 1963, i32 220 }, %struct.hda_verb { i16 34, i32 1964, i32 26 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 130 }, %struct.hda_verb { i16 34, i32 1959, i32 238 }, %struct.hda_verb { i16 34, i32 1960, i32 70 }, %struct.hda_verb { i16 34, i32 1961, i32 130 }, %struct.hda_verb { i16 34, i32 1962, i32 238 }, %struct.hda_verb { i16 34, i32 1963, i32 70 }, %struct.hda_verb { i16 34, i32 1964, i32 27 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 62 }, %struct.hda_verb { i16 34, i32 1959, i32 136 }, %struct.hda_verb { i16 34, i32 1960, i32 220 }, %struct.hda_verb { i16 34, i32 1961, i32 62 }, %struct.hda_verb { i16 34, i32 1962, i32 136 }, %struct.hda_verb { i16 34, i32 1963, i32 220 }, %struct.hda_verb { i16 34, i32 1964, i32 28 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 125 }, %struct.hda_verb { i16 34, i32 1959, i32 9 }, %struct.hda_verb { i16 34, i32 1960, i32 40 }, %struct.hda_verb { i16 34, i32 1961, i32 125 }, %struct.hda_verb { i16 34, i32 1962, i32 9 }, %struct.hda_verb { i16 34, i32 1963, i32 40 }, %struct.hda_verb { i16 34, i32 1964, i32 29 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 194 }, %struct.hda_verb { i16 34, i32 1959, i32 229 }, %struct.hda_verb { i16 34, i32 1960, i32 180 }, %struct.hda_verb { i16 34, i32 1961, i32 194 }, %struct.hda_verb { i16 34, i32 1962, i32 229 }, %struct.hda_verb { i16 34, i32 1963, i32 180 }, %struct.hda_verb { i16 34, i32 1964, i32 30 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 62 }, %struct.hda_verb { i16 34, i32 1959, i32 163 }, %struct.hda_verb { i16 34, i32 1960, i32 31 }, %struct.hda_verb { i16 34, i32 1961, i32 62 }, %struct.hda_verb { i16 34, i32 1962, i32 163 }, %struct.hda_verb { i16 34, i32 1963, i32 31 }, %struct.hda_verb { i16 34, i32 1964, i32 31 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 132 }, %struct.hda_verb { i16 34, i32 1959, i32 202 }, %struct.hda_verb { i16 34, i32 1960, i32 241 }, %struct.hda_verb { i16 34, i32 1961, i32 132 }, %struct.hda_verb { i16 34, i32 1962, i32 202 }, %struct.hda_verb { i16 34, i32 1963, i32 241 }, %struct.hda_verb { i16 34, i32 1964, i32 32 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 60 }, %struct.hda_verb { i16 34, i32 1959, i32 213 }, %struct.hda_verb { i16 34, i32 1960, i32 156 }, %struct.hda_verb { i16 34, i32 1961, i32 60 }, %struct.hda_verb { i16 34, i32 1962, i32 213 }, %struct.hda_verb { i16 34, i32 1963, i32 156 }, %struct.hda_verb { i16 34, i32 1964, i32 33 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 123 }, %struct.hda_verb { i16 34, i32 1959, i32 53 }, %struct.hda_verb { i16 34, i32 1960, i32 15 }, %struct.hda_verb { i16 34, i32 1961, i32 123 }, %struct.hda_verb { i16 34, i32 1962, i32 53 }, %struct.hda_verb { i16 34, i32 1963, i32 15 }, %struct.hda_verb { i16 34, i32 1964, i32 34 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 196 }, %struct.hda_verb { i16 34, i32 1959, i32 135 }, %struct.hda_verb { i16 34, i32 1960, i32 69 }, %struct.hda_verb { i16 34, i32 1961, i32 196 }, %struct.hda_verb { i16 34, i32 1962, i32 135 }, %struct.hda_verb { i16 34, i32 1963, i32 69 }, %struct.hda_verb { i16 34, i32 1964, i32 35 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 62 }, %struct.hda_verb { i16 34, i32 1959, i32 10 }, %struct.hda_verb { i16 34, i32 1960, i32 120 }, %struct.hda_verb { i16 34, i32 1961, i32 62 }, %struct.hda_verb { i16 34, i32 1962, i32 10 }, %struct.hda_verb { i16 34, i32 1963, i32 120 }, %struct.hda_verb { i16 34, i32 1964, i32 36 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 136 }, %struct.hda_verb { i16 34, i32 1959, i32 226 }, %struct.hda_verb { i16 34, i32 1960, i32 5 }, %struct.hda_verb { i16 34, i32 1961, i32 136 }, %struct.hda_verb { i16 34, i32 1962, i32 226 }, %struct.hda_verb { i16 34, i32 1963, i32 5 }, %struct.hda_verb { i16 34, i32 1964, i32 37 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 58 }, %struct.hda_verb { i16 34, i32 1959, i32 26 }, %struct.hda_verb { i16 34, i32 1960, i32 163 }, %struct.hda_verb { i16 34, i32 1961, i32 58 }, %struct.hda_verb { i16 34, i32 1962, i32 26 }, %struct.hda_verb { i16 34, i32 1963, i32 163 }, %struct.hda_verb { i16 34, i32 1964, i32 38 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 119 }, %struct.hda_verb { i16 34, i32 1959, i32 29 }, %struct.hda_verb { i16 34, i32 1960, i32 251 }, %struct.hda_verb { i16 34, i32 1961, i32 119 }, %struct.hda_verb { i16 34, i32 1962, i32 29 }, %struct.hda_verb { i16 34, i32 1963, i32 251 }, %struct.hda_verb { i16 34, i32 1964, i32 39 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 199 }, %struct.hda_verb { i16 34, i32 1959, i32 218 }, %struct.hda_verb { i16 34, i32 1960, i32 229 }, %struct.hda_verb { i16 34, i32 1961, i32 199 }, %struct.hda_verb { i16 34, i32 1962, i32 218 }, %struct.hda_verb { i16 34, i32 1963, i32 229 }, %struct.hda_verb { i16 34, i32 1964, i32 40 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 64 }, %struct.hda_verb { i16 34, i32 1959, i32 0 }, %struct.hda_verb { i16 34, i32 1960, i32 0 }, %struct.hda_verb { i16 34, i32 1961, i32 64 }, %struct.hda_verb { i16 34, i32 1962, i32 0 }, %struct.hda_verb { i16 34, i32 1963, i32 0 }, %struct.hda_verb { i16 34, i32 1964, i32 41 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 142 }, %struct.hda_verb { i16 34, i32 1959, i32 215 }, %struct.hda_verb { i16 34, i32 1960, i32 34 }, %struct.hda_verb { i16 34, i32 1961, i32 142 }, %struct.hda_verb { i16 34, i32 1962, i32 215 }, %struct.hda_verb { i16 34, i32 1963, i32 34 }, %struct.hda_verb { i16 34, i32 1964, i32 42 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 53 }, %struct.hda_verb { i16 34, i32 1959, i32 38 }, %struct.hda_verb { i16 34, i32 1960, i32 198 }, %struct.hda_verb { i16 34, i32 1961, i32 53 }, %struct.hda_verb { i16 34, i32 1962, i32 38 }, %struct.hda_verb { i16 34, i32 1963, i32 198 }, %struct.hda_verb { i16 34, i32 1964, i32 43 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 113 }, %struct.hda_verb { i16 34, i32 1959, i32 40 }, %struct.hda_verb { i16 34, i32 1960, i32 222 }, %struct.hda_verb { i16 34, i32 1961, i32 113 }, %struct.hda_verb { i16 34, i32 1962, i32 40 }, %struct.hda_verb { i16 34, i32 1963, i32 222 }, %struct.hda_verb { i16 34, i32 1964, i32 44 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 202 }, %struct.hda_verb { i16 34, i32 1959, i32 217 }, %struct.hda_verb { i16 34, i32 1960, i32 58 }, %struct.hda_verb { i16 34, i32 1961, i32 202 }, %struct.hda_verb { i16 34, i32 1962, i32 217 }, %struct.hda_verb { i16 34, i32 1963, i32 58 }, %struct.hda_verb { i16 34, i32 1964, i32 45 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 64 }, %struct.hda_verb { i16 34, i32 1959, i32 0 }, %struct.hda_verb { i16 34, i32 1960, i32 0 }, %struct.hda_verb { i16 34, i32 1961, i32 64 }, %struct.hda_verb { i16 34, i32 1962, i32 0 }, %struct.hda_verb { i16 34, i32 1963, i32 0 }, %struct.hda_verb { i16 34, i32 1964, i32 46 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 147 }, %struct.hda_verb { i16 34, i32 1959, i32 94 }, %struct.hda_verb { i16 34, i32 1960, i32 216 }, %struct.hda_verb { i16 34, i32 1961, i32 147 }, %struct.hda_verb { i16 34, i32 1962, i32 94 }, %struct.hda_verb { i16 34, i32 1963, i32 216 }, %struct.hda_verb { i16 34, i32 1964, i32 47 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 50 }, %struct.hda_verb { i16 34, i32 1959, i32 183 }, %struct.hda_verb { i16 34, i32 1960, i32 177 }, %struct.hda_verb { i16 34, i32 1961, i32 50 }, %struct.hda_verb { i16 34, i32 1962, i32 183 }, %struct.hda_verb { i16 34, i32 1963, i32 177 }, %struct.hda_verb { i16 34, i32 1964, i32 48 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 108 }, %struct.hda_verb { i16 34, i32 1959, i32 161 }, %struct.hda_verb { i16 34, i32 1960, i32 40 }, %struct.hda_verb { i16 34, i32 1961, i32 108 }, %struct.hda_verb { i16 34, i32 1962, i32 161 }, %struct.hda_verb { i16 34, i32 1963, i32 40 }, %struct.hda_verb { i16 34, i32 1964, i32 49 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 205 }, %struct.hda_verb { i16 34, i32 1959, i32 72 }, %struct.hda_verb { i16 34, i32 1960, i32 79 }, %struct.hda_verb { i16 34, i32 1961, i32 205 }, %struct.hda_verb { i16 34, i32 1962, i32 72 }, %struct.hda_verb { i16 34, i32 1963, i32 79 }, %struct.hda_verb { i16 34, i32 1964, i32 50 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1958, i32 64 }, %struct.hda_verb { i16 34, i32 1959, i32 0 }, %struct.hda_verb { i16 34, i32 1960, i32 0 }, %struct.hda_verb { i16 34, i32 1961, i32 64 }, %struct.hda_verb { i16 34, i32 1962, i32 0 }, %struct.hda_verb { i16 34, i32 1963, i32 0 }, %struct.hda_verb { i16 34, i32 1964, i32 51 }, %struct.hda_verb { i16 34, i32 1965, i32 128 }, %struct.hda_verb { i16 34, i32 1922, i32 193 }, %struct.hda_verb { i16 34, i32 1905, i32 44 }, %struct.hda_verb { i16 34, i32 1906, i32 44 }, %struct.hda_verb { i16 34, i32 1928, i32 4 }, %struct.hda_verb { i16 1, i32 1968, i32 8 }, %struct.hda_verb zeroinitializer], [1272 x i8] zeroinitializer }, align 32
@.compoundliteral.277 = internal constant { [2 x %struct.hda_pintbl], [16 x i8] } { [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 16, i32 -1843986159 }, %struct.hda_pintbl zeroinitializer], [16 x i8] zeroinitializer }, align 32
@hp_zephyr_pin_configs = internal constant { [9 x %struct.hda_pintbl], [56 x i8] } { [9 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 25243728 }, %struct.hda_pintbl { i16 11, i32 69279775 }, %struct.hda_pintbl { i16 12, i32 77668446 }, %struct.hda_pintbl { i16 13, i32 -1777138928 }, %struct.hda_pintbl { i16 14, i32 -1777138928 }, %struct.hda_pintbl { i16 15, i32 16859167 }, %struct.hda_pintbl { i16 16, i32 286351647 }, %struct.hda_pintbl { i16 17, i32 -710737616 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@stac92hd83xxx_hp_zephyr_init = internal constant { [4 x %struct.hda_verb], [48 x i8] } { [4 x %struct.hda_verb] [%struct.hda_verb { i16 34, i32 1925, i32 67 }, %struct.hda_verb { i16 34, i32 1922, i32 224 }, %struct.hda_verb { i16 34, i32 1941, i32 0 }, %struct.hda_verb zeroinitializer], [48 x i8] zeroinitializer }, align 32
@stac92hd83xxx_fixup_hp.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.278, ptr @.str.99, ptr @.str.238, i8 2, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.278 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stac92hd83xxx_fixup_hp\00", [41 x i8] zeroinitializer }, align 32
@hp_envy_ts_fixup_dac_bind.preferred_pairs = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 13, i16 19, i16 0], [26 x i8] zeroinitializer }, align 32
@patch_stac92hd73xx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @.str.280, ptr @.str.99, i32 4561, ptr @.str.281, ptr @.str.282 }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Could not determine number of channels defaulting to DAC count\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"patch_stac92hd73xx\00", [45 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@patch_stac92hd73xx._entry_ptr = internal global ptr @patch_stac92hd73xx._entry, section ".printk_index", align 4
@stac92hd73xx_6ch_loopback = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.171, i32 0, i32 0, i32 3, ptr @snd_ctl_boolean_mono_info, ptr @stac_aloopback_get, ptr @stac_aloopback_put, %union.anon.85 zeroinitializer, i32 127995808 }, [48 x i8] zeroinitializer }, align 32
@stac92hd73xx_8ch_loopback = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.171, i32 0, i32 0, i32 4, ptr @snd_ctl_boolean_mono_info, ptr @stac_aloopback_get, ptr @stac_aloopback_put, %union.anon.85 zeroinitializer, i32 127995808 }, [48 x i8] zeroinitializer }, align 32
@stac92hd73xx_10ch_loopback = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.171, i32 0, i32 0, i32 5, ptr @snd_ctl_boolean_mono_info, ptr @stac_aloopback_get, ptr @stac_aloopback_put, %union.anon.85 zeroinitializer, i32 127995808 }, [48 x i8] zeroinitializer }, align 32
@stac92hd73xx_pwr_nids = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17], [16 x i8] zeroinitializer }, align 32
@stac92hd73xx_models = internal constant { [11 x %struct.hda_model_fixup], [40 x i8] } { [11 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 0, ptr @.str.283 }, %struct.hda_model_fixup { i32 1, ptr @.str.101 }, %struct.hda_model_fixup { i32 2, ptr @.str.284 }, %struct.hda_model_fixup { i32 3, ptr @.str.285 }, %struct.hda_model_fixup { i32 4, ptr @.str.286 }, %struct.hda_model_fixup { i32 5, ptr @.str.287 }, %struct.hda_model_fixup { i32 6, ptr @.str.288 }, %struct.hda_model_fixup { i32 7, ptr @.str.289 }, %struct.hda_model_fixup { i32 8, ptr @.str.290 }, %struct.hda_model_fixup { i32 11, ptr @.str.291 }, %struct.hda_model_fixup zeroinitializer], [40 x i8] zeroinitializer }, align 32
@stac92hd73xx_fixup_tbl = internal constant { [26 x %struct.snd_pci_quirk], [96 x i8] } { [26 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 -32634, i16 9832, i16 -1, i32 1, ptr @.str.116 }, %struct.snd_pci_quirk { i16 5565, i16 12545, i16 -1, i32 1, ptr @.str.116 }, %struct.snd_pci_quirk { i16 -32634, i16 20482, i16 -1, i32 2, ptr @.str.292 }, %struct.snd_pci_quirk { i16 -32634, i16 20483, i16 -1, i32 2, ptr @.str.293 }, %struct.snd_pci_quirk { i16 4136, i16 596, i16 -1, i32 4, ptr @.str.294 }, %struct.snd_pci_quirk { i16 4136, i16 597, i16 -1, i32 4, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 598, i16 -1, i32 5, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 599, i16 -1, i32 5, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 606, i16 -1, i32 3, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 607, i16 -1, i32 3, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 625, i16 -1, i32 4, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 626, i16 -1, i32 4, ptr @.str.117 }, %struct.snd_pci_quirk { i16 4136, i16 671, i16 -1, i32 4, ptr @.str.295 }, %struct.snd_pci_quirk { i16 4136, i16 672, i16 -1, i32 4, ptr @.str.296 }, %struct.snd_pci_quirk { i16 4136, i16 702, i16 -1, i32 4, ptr @.str.297 }, %struct.snd_pci_quirk { i16 4136, i16 701, i16 -1, i32 4, ptr @.str.298 }, %struct.snd_pci_quirk { i16 4136, i16 766, i16 -1, i32 4, ptr @.str.299 }, %struct.snd_pci_quirk { i16 4136, i16 1043, i16 -1, i32 4, ptr @.str.300 }, %struct.snd_pci_quirk { i16 4136, i16 673, i16 -1, i32 7, ptr @.str.301 }, %struct.snd_pci_quirk { i16 4136, i16 1082, i16 -1, i32 7, ptr @.str.301 }, %struct.snd_pci_quirk { i16 4136, i16 1168, i16 -1, i32 6, ptr @.str.302 }, %struct.snd_pci_quirk { i16 4185, i16 4113, i16 -1, i32 8, ptr @.str.303 }, %struct.snd_pci_quirk { i16 4156, i16 6439, i16 -1, i32 10, ptr @.str.304 }, %struct.snd_pci_quirk { i16 4156, i16 11031, i16 -1, i32 9, ptr @.str.305 }, %struct.snd_pci_quirk { i16 4163, i16 -31752, i16 -1, i32 11, ptr @.str.306 }, %struct.snd_pci_quirk zeroinitializer], [96 x i8] zeroinitializer }, align 32
@stac92hd73xx_fixups = internal constant { [12 x %struct.hda_fixup], [32 x i8] } { [12 x %struct.hda_fixup] [%struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @stac92hd73xx_fixup_no_jd } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @stac92hd73xx_fixup_ref } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @intel_dg45id_pin_configs } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @stac92hd73xx_fixup_dell_m6_amic } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @stac92hd73xx_fixup_dell_m6_dmic } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @stac92hd73xx_fixup_dell_m6_both } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @stac92hd73xx_fixup_dell_eq } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @stac92hd73xx_fixup_alienware_m17x } }, %struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @stac92hd73xx_disable_automute } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @stac92hd89xx_hp_front_jack_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @stac92hd89xx_hp_z1_g2_right_mic_jack_pin_configs } }, %struct.hda_fixup { i32 1, i8 0, i32 0, %union.anon.74 { ptr @.compoundliteral.307 } }], [32 x i8] zeroinitializer }, align 32
@stac92hd73xx_core_init = internal constant { [2 x %struct.hda_verb], [40 x i8] } { [2 x %struct.hda_verb] [%struct.hda_verb { i16 31, i32 1807, i32 255 }, %struct.hda_verb zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"no-jd\00", [26 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"intel\00", [26 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dell-m6-amic\00", [19 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dell-m6-dmic\00", [19 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dell-m6\00", [24 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dell-eq\00", [24 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"alienware\00", [22 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"elo-vupoint-15mx\00", [47 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"asus-mobo\00", [22 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Intel DG45ID\00", [19 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Intel DG45FC\00", [19 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Dell Studio 1535\00", [47 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Dell Studio 1537\00", [47 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Dell Studio 17\00", [17 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Dell Studio 1555\00", [47 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Dell Studio 1557\00", [47 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Dell Studio XPS 1645\00", [43 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Dell Studio 1558\00", [47 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Alienware M17x\00", [17 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Alienware M17x R3\00", [46 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ELO VuPoint 15MX\00", [47 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HP Z1 G2\00", [23 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unknown HP\00", [21 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ASUS AT4NM10\00", [19 x i8] zeroinitializer }, align 32
@intel_dg45id_pin_configs = internal constant { [8 x %struct.hda_pintbl], [32 x i8] } { [8 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 35734064 }, %struct.hda_pintbl { i16 11, i32 44143168 }, %struct.hda_pintbl { i16 12, i32 16855572 }, %struct.hda_pintbl { i16 13, i32 16859664 }, %struct.hda_pintbl { i16 14, i32 27365968 }, %struct.hda_pintbl { i16 15, i32 16847378 }, %struct.hda_pintbl { i16 16, i32 16867857 }, %struct.hda_pintbl zeroinitializer], [32 x i8] zeroinitializer }, align 32
@stac92hd89xx_hp_front_jack_pin_configs = internal constant { [3 x %struct.hda_pintbl], [40 x i8] } { [3 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 35733552 }, %struct.hda_pintbl { i16 11, i32 44142608 }, %struct.hda_pintbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@stac92hd89xx_hp_z1_g2_right_mic_jack_pin_configs = internal constant { [2 x %struct.hda_pintbl], [16 x i8] } { [2 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 14, i32 1073742064 }, %struct.hda_pintbl zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.307 = internal constant { [5 x %struct.hda_pintbl], [56 x i8] } { [5 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 12, i32 16860177 }, %struct.hda_pintbl { i16 13, i32 16860176 }, %struct.hda_pintbl { i16 14, i32 16860178 }, %struct.hda_pintbl { i16 34, i32 21696896 }, %struct.hda_pintbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ref92hd73xx_pin_configs = internal constant { [14 x %struct.hda_pintbl], [48 x i8] } { [14 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 35733552 }, %struct.hda_pintbl { i16 11, i32 44142656 }, %struct.hda_pintbl { i16 12, i32 27365408 }, %struct.hda_pintbl { i16 13, i32 35733552 }, %struct.hda_pintbl { i16 14, i32 25243694 }, %struct.hda_pintbl { i16 15, i32 16859152 }, %struct.hda_pintbl { i16 16, i32 16859168 }, %struct.hda_pintbl { i16 17, i32 16859184 }, %struct.hda_pintbl { i16 18, i32 36802624 }, %struct.hda_pintbl { i16 19, i32 -1868562192 }, %struct.hda_pintbl { i16 20, i32 -1868562192 }, %struct.hda_pintbl { i16 34, i32 21307472 }, %struct.hda_pintbl { i16 35, i32 21307472 }, %struct.hda_pintbl zeroinitializer], [48 x i8] zeroinitializer }, align 32
@dell_m6_pin_configs = internal constant { [14 x %struct.hda_pintbl], [48 x i8] } { [14 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 52498463 }, %struct.hda_pintbl { i16 11, i32 1325400079 }, %struct.hda_pintbl { i16 12, i32 1325400304 }, %struct.hda_pintbl { i16 13, i32 -1877540592 }, %struct.hda_pintbl { i16 14, i32 60887072 }, %struct.hda_pintbl { i16 15, i32 52498463 }, %struct.hda_pintbl { i16 16, i32 1325400304 }, %struct.hda_pintbl { i16 17, i32 1325400304 }, %struct.hda_pintbl { i16 18, i32 1325400304 }, %struct.hda_pintbl { i16 19, i32 -1868168864 }, %struct.hda_pintbl { i16 20, i32 1325400304 }, %struct.hda_pintbl { i16 34, i32 1325400304 }, %struct.hda_pintbl { i16 35, i32 1325400304 }, %struct.hda_pintbl zeroinitializer], [48 x i8] zeroinitializer }, align 32
@dell_eq_core_init = internal constant { [2 x %struct.hda_verb], [40 x i8] } { [2 x %struct.hda_verb] [%struct.hda_verb { i16 31, i32 1807, i32 236 }, %struct.hda_verb zeroinitializer], [40 x i8] zeroinitializer }, align 32
@alienware_m17x_pin_configs = internal constant { [14 x %struct.hda_pintbl], [48 x i8] } { [14 x %struct.hda_pintbl] [%struct.hda_pintbl { i16 10, i32 52498463 }, %struct.hda_pintbl { i16 11, i32 52498463 }, %struct.hda_pintbl { i16 12, i32 60887072 }, %struct.hda_pintbl { i16 13, i32 50413600 }, %struct.hda_pintbl { i16 14, i32 -1877540592 }, %struct.hda_pintbl { i16 15, i32 1325400304 }, %struct.hda_pintbl { i16 16, i32 1325400304 }, %struct.hda_pintbl { i16 17, i32 1325400304 }, %struct.hda_pintbl { i16 18, i32 1325400304 }, %struct.hda_pintbl { i16 19, i32 -1868168864 }, %struct.hda_pintbl { i16 20, i32 1325400304 }, %struct.hda_pintbl { i16 34, i32 1325400304 }, %struct.hda_pintbl { i16 35, i32 -1874460240 }, %struct.hda_pintbl zeroinitializer], [48 x i8] zeroinitializer }, align 32
@stac92hd95_pwr_nids = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 10, i16 11, i16 12, i16 13], [24 x i8] zeroinitializer }, align 32
@stac92hd95_models = internal constant { [3 x %struct.hda_model_fixup], [40 x i8] } { [3 x %struct.hda_model_fixup] [%struct.hda_model_fixup { i32 0, ptr @.str.251 }, %struct.hda_model_fixup { i32 1, ptr @.str.308 }, %struct.hda_model_fixup zeroinitializer], [40 x i8] zeroinitializer }, align 32
@stac92hd95_fixup_tbl = internal constant { [2 x %struct.snd_pci_quirk], [32 x i8] } { [2 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4156, i16 6417, i16 -1, i32 1, ptr @.str.309 }, %struct.snd_pci_quirk zeroinitializer], [32 x i8] zeroinitializer }, align 32
@stac92hd95_fixups = internal constant { [2 x %struct.hda_fixup], [32 x i8] } { [2 x %struct.hda_fixup] [%struct.hda_fixup { i32 3, i8 0, i32 0, %union.anon.74 { ptr @stac92hd95_fixup_hp_led } }, %struct.hda_fixup { i32 2, i8 -128, i32 0, %union.anon.74 { ptr @.compoundliteral.310 } }], [32 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hp-bass\00", [24 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HP Spectre 13\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.310 = internal constant { [2 x %struct.hda_verb], [40 x i8] } { [2 x %struct.hda_verb] [%struct.hda_verb { i16 26, i32 1941, i32 0 }, %struct.hda_verb zeroinitializer], [40 x i8] zeroinitializer }, align 32
@stac92hd95_fixup_hp_led.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.311, ptr @.str.99, ptr @.str.238, i8 4, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.311 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stac92hd95_fixup_hp_led\00", [40 x i8] zeroinitializer }, align 32
@switch.table.patch_stac92hd73xx = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @stac92hd73xx_6ch_loopback, ptr @stac92hd73xx_8ch_loopback, ptr @stac92hd73xx_10ch_loopback], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 287143427, i64 287143432, i64 287143606, i64 287143607]
@__sancov_gen_cov_switch_values.312 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.313 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.314 = internal global [24 x i64] [i64 22, i64 32, i64 272372851, i64 272373024, i64 272373025, i64 272373027, i64 272373028, i64 272373029, i64 272373538, i64 272373539, i64 272373540, i64 272373541, i64 272373542, i64 272373543, i64 272373544, i64 272373545, i64 272373546, i64 272373547, i64 272380030, i64 272380031, i64 272380032, i64 272380033, i64 272396295, i64 272396296]
@__sancov_gen_cov_switch_values.315 = internal global [4 x i64] [i64 2, i64 32, i64 287143429, i64 287143633]
@__sancov_gen_cov_switch_values.316 = internal global [24 x i64] [i64 22, i64 32, i64 272373272, i64 272373273, i64 272373274, i64 272373275, i64 272373276, i64 272373277, i64 272373278, i64 272373279, i64 272373290, i64 272373291, i64 272373296, i64 272373297, i64 272373299, i64 272373300, i64 272373301, i64 272381319, i64 272381320, i64 272381321, i64 272381322, i64 272381543, i64 272381544, i64 272381545]
@___asan_gen_.317 = private unnamed_addr constant [16 x i8] c"sigmatel_driver\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5152, i32 32 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5156, i32 1 }
@___asan_gen_.323 = private unnamed_addr constant [20 x i8] c"snd_hda_id_sigmatel\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5040, i32 35 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5041, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5042, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5043, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5044, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5045, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5046, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5047, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5048, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5050, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5051, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5053, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5055, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5056, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5057, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5058, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5059, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5060, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5061, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5062, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5063, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5064, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5065, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5066, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5067, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5068, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5069, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5071, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5072, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5077, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5078, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5079, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5080, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5082, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5083, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5084, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5085, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5086, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5087, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5088, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5089, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5090, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5091, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5092, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5093, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5094, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5095, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5096, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5097, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5098, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5099, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5100, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5101, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5102, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5103, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5104, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5105, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5107, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5109, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5111, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5113, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5114, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5115, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5116, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5117, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5118, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5119, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5120, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5121, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5122, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5123, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5124, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5125, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5126, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5127, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5128, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5129, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5130, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5131, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5132, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5133, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5134, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5135, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5136, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5137, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5138, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5139, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5140, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5141, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5142, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5143, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5144, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant [19 x i8] c"stac9200_eapd_init\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 984, i32 30 }
@___asan_gen_.602 = private unnamed_addr constant [16 x i8] c"stac9200_models\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1445, i32 37 }
@___asan_gen_.605 = private unnamed_addr constant [19 x i8] c"stac9200_fixup_tbl\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1464, i32 35 }
@___asan_gen_.608 = private unnamed_addr constant [16 x i8] c"stac9200_fixups\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1369, i32 31 }
@___asan_gen_.611 = private unnamed_addr constant [15 x i8] c"stac_patch_ops\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4450, i32 35 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 548, i32 26 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 552, i32 26 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 554, i32 26 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 556, i32 26 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 558, i32 26 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 560, i32 37 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 294, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1446, i32 28 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1447, i32 33 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1448, i32 38 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1449, i32 38 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1450, i32 38 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1451, i32 38 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1452, i32 38 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1453, i32 38 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1454, i32 38 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1455, i32 38 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1456, i32 38 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1457, i32 38 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1458, i32 32 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1459, i32 34 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1460, i32 39 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1466, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1471, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1473, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1475, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1481, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1493, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1495, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1497, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1499, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1501, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1509, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1525, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1529, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1532, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1534, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1535, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1536, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1538, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant [20 x i8] c"ref9200_pin_configs\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1102, i32 32 }
@___asan_gen_.743 = private unnamed_addr constant [20 x i8] c"oqo9200_pin_configs\00", align 1
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1319, i32 32 }
@___asan_gen_.746 = private unnamed_addr constant [25 x i8] c"dell9200_d21_pin_configs\00", align 1
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1144, i32 32 }
@___asan_gen_.749 = private unnamed_addr constant [25 x i8] c"dell9200_d22_pin_configs\00", align 1
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1161, i32 32 }
@___asan_gen_.752 = private unnamed_addr constant [25 x i8] c"dell9200_d23_pin_configs\00", align 1
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1182, i32 32 }
@___asan_gen_.755 = private unnamed_addr constant [25 x i8] c"dell9200_m21_pin_configs\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1200, i32 32 }
@___asan_gen_.758 = private unnamed_addr constant [25 x i8] c"dell9200_m22_pin_configs\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1220, i32 32 }
@___asan_gen_.761 = private unnamed_addr constant [25 x i8] c"dell9200_m23_pin_configs\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1237, i32 32 }
@___asan_gen_.764 = private unnamed_addr constant [25 x i8] c"dell9200_m24_pin_configs\00", align 1
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1256, i32 32 }
@___asan_gen_.767 = private unnamed_addr constant [25 x i8] c"dell9200_m25_pin_configs\00", align 1
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1274, i32 32 }
@___asan_gen_.770 = private unnamed_addr constant [25 x i8] c"dell9200_m26_pin_configs\00", align 1
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1291, i32 32 }
@___asan_gen_.773 = private unnamed_addr constant [25 x i8] c"dell9200_m27_pin_configs\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1307, i32 32 }
@___asan_gen_.776 = private unnamed_addr constant [27 x i8] c"gateway9200_m4_pin_configs\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1114, i32 32 }
@___asan_gen_.779 = private unnamed_addr constant [29 x i8] c"gateway9200_m4_2_pin_configs\00", align 1
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1126, i32 32 }
@___asan_gen_.782 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4325, i32 35 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 342, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant [15 x i8] c"abeep_mute_ctl\00", align 1
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 834, i32 39 }
@___asan_gen_.795 = private unnamed_addr constant [15 x i8] c"dbeep_mute_ctl\00", align 1
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 836, i32 39 }
@___asan_gen_.798 = private unnamed_addr constant [13 x i8] c"beep_vol_ctl\00", align 1
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 838, i32 39 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 849, i32 10 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 859, i32 10 }
@___asan_gen_.807 = private unnamed_addr constant [19 x i8] c"stac_dig_beep_ctrl\00", align 1
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 887, i32 38 }
@___asan_gen_.810 = private unnamed_addr constant [18 x i8] c"stac_spdif_labels\00", align 1
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 949, i32 27 }
@___asan_gen_.813 = private unnamed_addr constant [16 x i8] c"stac_smux_mixer\00", align 1
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 940, i32 38 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 950, i32 2 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 950, i32 22 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 950, i32 38 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 942, i32 10 }
@___asan_gen_.828 = private unnamed_addr constant [19 x i8] c"stac922x_core_init\00", align 1
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1036, i32 30 }
@___asan_gen_.831 = private unnamed_addr constant [16 x i8] c"stac922x_models\00", align 1
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3609, i32 37 }
@___asan_gen_.834 = private unnamed_addr constant [19 x i8] c"stac922x_fixup_tbl\00", align 1
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3634, i32 35 }
@___asan_gen_.837 = private unnamed_addr constant [16 x i8] c"stac922x_fixups\00", align 1
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3536, i32 31 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3611, i32 33 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3612, i32 33 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3613, i32 37 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3614, i32 37 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3615, i32 37 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3616, i32 37 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3617, i32 37 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3618, i32 39 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3619, i32 32 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3620, i32 38 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3621, i32 38 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3622, i32 38 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3623, i32 38 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3625, i32 37 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3626, i32 37 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3627, i32 37 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3628, i32 37 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3629, i32 37 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3630, i32 37 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3641, i32 2 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3681, i32 2 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3694, i32 2 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3699, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3718, i32 2 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3721, i32 2 }
@___asan_gen_.915 = private unnamed_addr constant [20 x i8] c"ref922x_pin_configs\00", align 1
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3286, i32 32 }
@___asan_gen_.918 = private unnamed_addr constant [21 x i8] c"d945gtp3_pin_configs\00", align 1
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3377, i32 32 }
@___asan_gen_.921 = private unnamed_addr constant [21 x i8] c"d945gtp5_pin_configs\00", align 1
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3391, i32 32 }
@___asan_gen_.924 = private unnamed_addr constant [25 x i8] c"intel_mac_v1_pin_configs\00", align 1
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3405, i32 32 }
@___asan_gen_.927 = private unnamed_addr constant [25 x i8] c"intel_mac_v2_pin_configs\00", align 1
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3419, i32 32 }
@___asan_gen_.930 = private unnamed_addr constant [25 x i8] c"intel_mac_v3_pin_configs\00", align 1
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3433, i32 32 }
@___asan_gen_.933 = private unnamed_addr constant [25 x i8] c"intel_mac_v4_pin_configs\00", align 1
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3447, i32 32 }
@___asan_gen_.936 = private unnamed_addr constant [25 x i8] c"intel_mac_v5_pin_configs\00", align 1
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3461, i32 32 }
@___asan_gen_.939 = private unnamed_addr constant [19 x i8] c"ecs202_pin_configs\00", align 1
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3475, i32 32 }
@___asan_gen_.942 = private unnamed_addr constant [26 x i8] c"dell_922x_d81_pin_configs\00", align 1
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3308, i32 32 }
@___asan_gen_.945 = private unnamed_addr constant [26 x i8] c"dell_922x_d82_pin_configs\00", align 1
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3327, i32 32 }
@___asan_gen_.948 = private unnamed_addr constant [26 x i8] c"dell_922x_m81_pin_configs\00", align 1
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3345, i32 32 }
@___asan_gen_.951 = private unnamed_addr constant [26 x i8] c"dell_922x_m82_pin_configs\00", align 1
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3363, i32 32 }
@___asan_gen_.954 = private unnamed_addr constant [29 x i8] c"stac922x_intel_mac_fixup_tbl\00", align 1
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3490, i32 35 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3491, i32 2 }
@___asan_gen_.960 = private unnamed_addr constant [22 x i8] c"stac927x_spdif_labels\00", align 1
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4856, i32 27 }
@___asan_gen_.963 = private unnamed_addr constant [18 x i8] c"stac927x_loopback\00", align 1
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1099, i32 38 }
@___asan_gen_.966 = private unnamed_addr constant [16 x i8] c"stac927x_models\00", align 1
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3948, i32 37 }
@___asan_gen_.969 = private unnamed_addr constant [19 x i8] c"stac927x_fixup_tbl\00", align 1
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3962, i32 35 }
@___asan_gen_.972 = private unnamed_addr constant [16 x i8] c"stac927x_fixups\00", align 1
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3865, i32 31 }
@___asan_gen_.975 = private unnamed_addr constant [19 x i8] c"stac927x_core_init\00", align 1
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1060, i32 30 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4857, i32 22 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4858, i32 18 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1100, i32 2 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3949, i32 39 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3953, i32 39 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3954, i32 33 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3955, i32 34 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3956, i32 37 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3957, i32 39 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3958, i32 37 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3969, i32 2 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3972, i32 2 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3977, i32 2 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3978, i32 2 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3981, i32 2 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3982, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3983, i32 2 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3985, i32 2 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3989, i32 2 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3996, i32 2 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3998, i32 2 }
@___asan_gen_.1041 = private unnamed_addr constant [21 x i8] c"d965_3st_pin_configs\00", align 1
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3744, i32 32 }
@___asan_gen_.1044 = private unnamed_addr constant [21 x i8] c"d965_5st_pin_configs\00", align 1
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3762, i32 32 }
@___asan_gen_.1047 = private unnamed_addr constant [27 x i8] c"d965_5st_no_fp_pin_configs\00", align 1
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3780, i32 32 }
@___asan_gen_.1050 = private unnamed_addr constant [15 x i8] c"d965_core_init\00", align 1
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1042, i32 30 }
@___asan_gen_.1053 = private unnamed_addr constant [21 x i8] c"dell_3st_pin_configs\00", align 1
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3798, i32 32 }
@___asan_gen_.1056 = private unnamed_addr constant [21 x i8] c".compoundliteral.190\00", align 1
@___asan_gen_.1057 = private unnamed_addr constant [17 x i8] c"nemo_pin_configs\00", align 1
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1335, i32 32 }
@___asan_gen_.1060 = private unnamed_addr constant [21 x i8] c".compoundliteral.191\00", align 1
@___asan_gen_.1061 = private unnamed_addr constant [21 x i8] c".compoundliteral.192\00", align 1
@___asan_gen_.1062 = private unnamed_addr constant [20 x i8] c"ref927x_pin_configs\00", align 1
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3726, i32 32 }
@___asan_gen_.1065 = private unnamed_addr constant [19 x i8] c"dell_3st_core_init\00", align 1
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1050, i32 30 }
@___asan_gen_.1068 = private unnamed_addr constant [27 x i8] c"stac927x_volknob_core_init\00", align 1
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1068, i32 30 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4399, i32 2 }
@___asan_gen_.1074 = private unnamed_addr constant [19 x i8] c"stac925x_core_init\00", align 1
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1028, i32 30 }
@___asan_gen_.1077 = private unnamed_addr constant [16 x i8] c"stac925x_models\00", align 1
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1673, i32 37 }
@___asan_gen_.1080 = private unnamed_addr constant [19 x i8] c"stac925x_fixup_tbl\00", align 1
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1685, i32 35 }
@___asan_gen_.1083 = private unnamed_addr constant [16 x i8] c"stac925x_fixups\00", align 1
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1638, i32 31 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1675, i32 27 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1676, i32 29 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1677, i32 27 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1678, i32 29 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1679, i32 27 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1680, i32 27 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1681, i32 27 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1689, i32 2 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1692, i32 2 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1695, i32 2 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1696, i32 2 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1697, i32 2 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1698, i32 2 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1699, i32 2 }
@___asan_gen_.1128 = private unnamed_addr constant [20 x i8] c"ref925x_pin_configs\00", align 1
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1542, i32 32 }
@___asan_gen_.1131 = private unnamed_addr constant [23 x i8] c"stac925xM1_pin_configs\00", align 1
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1554, i32 32 }
@___asan_gen_.1134 = private unnamed_addr constant [25 x i8] c"stac925xM1_2_pin_configs\00", align 1
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1566, i32 32 }
@___asan_gen_.1137 = private unnamed_addr constant [23 x i8] c"stac925xM2_pin_configs\00", align 1
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1578, i32 32 }
@___asan_gen_.1140 = private unnamed_addr constant [25 x i8] c"stac925xM2_2_pin_configs\00", align 1
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1590, i32 32 }
@___asan_gen_.1143 = private unnamed_addr constant [23 x i8] c"stac925xM3_pin_configs\00", align 1
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1602, i32 32 }
@___asan_gen_.1146 = private unnamed_addr constant [23 x i8] c"stac925xM5_pin_configs\00", align 1
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1614, i32 32 }
@___asan_gen_.1149 = private unnamed_addr constant [23 x i8] c"stac925xM6_pin_configs\00", align 1
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1626, i32 32 }
@___asan_gen_.1152 = private unnamed_addr constant [19 x i8] c"stac9872_core_init\00", align 1
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4969, i32 30 }
@___asan_gen_.1155 = private unnamed_addr constant [16 x i8] c"stac9872_models\00", align 1
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4988, i32 37 }
@___asan_gen_.1158 = private unnamed_addr constant [19 x i8] c"stac9872_fixup_tbl\00", align 1
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5000, i32 35 }
@___asan_gen_.1161 = private unnamed_addr constant [16 x i8] c"stac9872_fixups\00", align 1
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4993, i32 31 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4989, i32 34 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 5001, i32 2 }
@___asan_gen_.1170 = private unnamed_addr constant [26 x i8] c"stac9872_vaio_pin_configs\00", align 1
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4975, i32 32 }
@___asan_gen_.1173 = private unnamed_addr constant [19 x i8] c"stac9205_core_init\00", align 1
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1076, i32 30 }
@___asan_gen_.1176 = private unnamed_addr constant [18 x i8] c"stac9205_loopback\00", align 1
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1096, i32 38 }
@___asan_gen_.1179 = private unnamed_addr constant [16 x i8] c"stac9205_models\00", align 1
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4163, i32 37 }
@___asan_gen_.1182 = private unnamed_addr constant [19 x i8] c"stac9205_fixup_tbl\00", align 1
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4172, i32 35 }
@___asan_gen_.1185 = private unnamed_addr constant [16 x i8] c"stac9205_fixups\00", align 1
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4139, i32 31 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4165, i32 38 }
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4166, i32 38 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4167, i32 38 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4168, i32 34 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4176, i32 2 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4185, i32 2 }
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4197, i32 2 }
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4207, i32 2 }
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4209, i32 2 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4211, i32 2 }
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4214, i32 2 }
@___asan_gen_.1223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4215, i32 2 }
@___asan_gen_.1224 = private unnamed_addr constant [26 x i8] c"dell_9205_m42_pin_configs\00", align 1
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4029, i32 32 }
@___asan_gen_.1227 = private unnamed_addr constant [26 x i8] c"dell_9205_m44_pin_configs\00", align 1
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4074, i32 32 }
@___asan_gen_.1230 = private unnamed_addr constant [20 x i8] c"ref9205_pin_configs\00", align 1
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4002, i32 32 }
@___asan_gen_.1233 = private unnamed_addr constant [26 x i8] c"dell_9205_m43_pin_configs\00", align 1
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4055, i32 32 }
@___asan_gen_.1236 = private unnamed_addr constant [26 x i8] c"stac92hd71bxx_unmute_nids\00", align 1
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1023, i32 24 }
@___asan_gen_.1239 = private unnamed_addr constant [24 x i8] c"stac92hd71bxx_core_init\00", align 1
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1017, i32 30 }
@___asan_gen_.1242 = private unnamed_addr constant [23 x i8] c"stac92hd71bxx_loopback\00", align 1
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1093, i32 38 }
@___asan_gen_.1245 = private unnamed_addr constant [23 x i8] c"stac92hd71bxx_pwr_nids\00", align 1
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 232, i32 24 }
@___asan_gen_.1248 = private unnamed_addr constant [21 x i8] c"stac92hd71bxx_models\00", align 1
@___asan_gen_.1250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3217, i32 37 }
@___asan_gen_.1251 = private unnamed_addr constant [24 x i8] c"stac92hd71bxx_fixup_tbl\00", align 1
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3230, i32 35 }
@___asan_gen_.1254 = private unnamed_addr constant [21 x i8] c"stac92hd71bxx_fixups\00", align 1
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3170, i32 31 }
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3219, i32 34 }
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3220, i32 34 }
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3221, i32 34 }
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3222, i32 30 }
@___asan_gen_.1271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3223, i32 31 }
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3224, i32 31 }
@___asan_gen_.1277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3225, i32 31 }
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3226, i32 31 }
@___asan_gen_.1283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3236, i32 2 }
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3240, i32 2 }
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3244, i32 2 }
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3246, i32 2 }
@___asan_gen_.1295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3250, i32 2 }
@___asan_gen_.1298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3254, i32 2 }
@___asan_gen_.1299 = private unnamed_addr constant [22 x i8] c"dell_m4_1_pin_configs\00", align 1
@___asan_gen_.1301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3003, i32 32 }
@___asan_gen_.1302 = private unnamed_addr constant [22 x i8] c"dell_m4_2_pin_configs\00", align 1
@___asan_gen_.1304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3018, i32 32 }
@___asan_gen_.1305 = private unnamed_addr constant [22 x i8] c"dell_m4_3_pin_configs\00", align 1
@___asan_gen_.1307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3033, i32 32 }
@___asan_gen_.1308 = private unnamed_addr constant [25 x i8] c"ref92hd71bxx_pin_configs\00", align 1
@___asan_gen_.1310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2988, i32 32 }
@___asan_gen_.1313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2978, i32 40 }
@___asan_gen_.1314 = private unnamed_addr constant [21 x i8] c"stac_hp_bass_sw_ctrl\00", align 1
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2967, i32 38 }
@___asan_gen_.1322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 3164, i32 3 }
@___asan_gen_.1325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 750, i32 26 }
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 751, i32 23 }
@___asan_gen_.1331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4390, i32 3 }
@___asan_gen_.1332 = private unnamed_addr constant [23 x i8] c"stac92hd83xxx_pwr_nids\00", align 1
@___asan_gen_.1334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 227, i32 24 }
@___asan_gen_.1335 = private unnamed_addr constant [24 x i8] c"stac92hd83xxx_core_init\00", align 1
@___asan_gen_.1337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1004, i32 30 }
@___asan_gen_.1338 = private unnamed_addr constant [21 x i8] c"stac92hd83xxx_models\00", align 1
@___asan_gen_.1340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2729, i32 37 }
@___asan_gen_.1341 = private unnamed_addr constant [24 x i8] c"stac92hd83xxx_fixup_tbl\00", align 1
@___asan_gen_.1343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2747, i32 35 }
@___asan_gen_.1344 = private unnamed_addr constant [21 x i8] c"stac92hd83xxx_fixups\00", align 1
@___asan_gen_.1346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2630, i32 31 }
@___asan_gen_.1349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2731, i32 42 }
@___asan_gen_.1352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2732, i32 33 }
@___asan_gen_.1355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2733, i32 41 }
@___asan_gen_.1358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2734, i32 51 }
@___asan_gen_.1361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2735, i32 36 }
@___asan_gen_.1364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2736, i32 34 }
@___asan_gen_.1367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2737, i32 41 }
@___asan_gen_.1370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2738, i32 45 }
@___asan_gen_.1373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2739, i32 45 }
@___asan_gen_.1376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2740, i32 47 }
@___asan_gen_.1379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2741, i32 37 }
@___asan_gen_.1382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2742, i32 36 }
@___asan_gen_.1385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2743, i32 40 }
@___asan_gen_.1388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2755, i32 2 }
@___asan_gen_.1391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2757, i32 2 }
@___asan_gen_.1394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2759, i32 2 }
@___asan_gen_.1397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2761, i32 2 }
@___asan_gen_.1400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2763, i32 2 }
@___asan_gen_.1403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2765, i32 2 }
@___asan_gen_.1406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2769, i32 2 }
@___asan_gen_.1409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2771, i32 2 }
@___asan_gen_.1412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2773, i32 2 }
@___asan_gen_.1415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2781, i32 2 }
@___asan_gen_.1418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2787, i32 2 }
@___asan_gen_.1421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2789, i32 2 }
@___asan_gen_.1424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2791, i32 2 }
@___asan_gen_.1427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2793, i32 2 }
@___asan_gen_.1430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2799, i32 2 }
@___asan_gen_.1433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2927, i32 2 }
@___asan_gen_.1436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2929, i32 2 }
@___asan_gen_.1439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2935, i32 2 }
@___asan_gen_.1440 = private unnamed_addr constant [25 x i8] c"ref92hd83xxx_pin_configs\00", align 1
@___asan_gen_.1442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2007, i32 32 }
@___asan_gen_.1443 = private unnamed_addr constant [21 x i8] c"dell_s14_pin_configs\00", align 1
@___asan_gen_.1445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2021, i32 32 }
@___asan_gen_.1446 = private unnamed_addr constant [29 x i8] c"dell_vostro_3500_pin_configs\00", align 1
@___asan_gen_.1448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2035, i32 32 }
@___asan_gen_.1449 = private unnamed_addr constant [29 x i8] c"hp_cNB11_intquad_pin_configs\00", align 1
@___asan_gen_.1451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2075, i32 32 }
@___asan_gen_.1452 = private unnamed_addr constant [24 x i8] c"hp_dv7_4000_pin_configs\00", align 1
@___asan_gen_.1454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2049, i32 32 }
@___asan_gen_.1455 = private unnamed_addr constant [21 x i8] c".compoundliteral.276\00", align 1
@___asan_gen_.1456 = private unnamed_addr constant [18 x i8] c"hp_bnb13_eq_verbs\00", align 1
@___asan_gen_.1458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2202, i32 30 }
@___asan_gen_.1459 = private unnamed_addr constant [21 x i8] c".compoundliteral.277\00", align 1
@___asan_gen_.1460 = private unnamed_addr constant [22 x i8] c"hp_zephyr_pin_configs\00", align 1
@___asan_gen_.1462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2063, i32 32 }
@___asan_gen_.1463 = private unnamed_addr constant [29 x i8] c"stac92hd83xxx_hp_zephyr_init\00", align 1
@___asan_gen_.1465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1010, i32 30 }
@___asan_gen_.1468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2103, i32 3 }
@___asan_gen_.1469 = private unnamed_addr constant [16 x i8] c"preferred_pairs\00", align 1
@___asan_gen_.1471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2191, i32 25 }
@___asan_gen_.1472 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4560, i32 3 }
@___asan_gen_.1487 = private unnamed_addr constant [26 x i8] c"stac92hd73xx_6ch_loopback\00", align 1
@___asan_gen_.1489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1084, i32 38 }
@___asan_gen_.1490 = private unnamed_addr constant [26 x i8] c"stac92hd73xx_8ch_loopback\00", align 1
@___asan_gen_.1492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1087, i32 38 }
@___asan_gen_.1493 = private unnamed_addr constant [27 x i8] c"stac92hd73xx_10ch_loopback\00", align 1
@___asan_gen_.1495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1090, i32 38 }
@___asan_gen_.1496 = private unnamed_addr constant [22 x i8] c"stac92hd73xx_pwr_nids\00", align 1
@___asan_gen_.1498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 222, i32 24 }
@___asan_gen_.1499 = private unnamed_addr constant [20 x i8] c"stac92hd73xx_models\00", align 1
@___asan_gen_.1501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1937, i32 37 }
@___asan_gen_.1502 = private unnamed_addr constant [23 x i8] c"stac92hd73xx_fixup_tbl\00", align 1
@___asan_gen_.1504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1951, i32 35 }
@___asan_gen_.1505 = private unnamed_addr constant [20 x i8] c"stac92hd73xx_fixups\00", align 1
@___asan_gen_.1507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1879, i32 31 }
@___asan_gen_.1508 = private unnamed_addr constant [23 x i8] c"stac92hd73xx_core_init\00", align 1
@___asan_gen_.1510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 998, i32 30 }
@___asan_gen_.1513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1938, i32 39 }
@___asan_gen_.1516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1940, i32 39 }
@___asan_gen_.1519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1941, i32 37 }
@___asan_gen_.1522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1942, i32 37 }
@___asan_gen_.1525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1943, i32 37 }
@___asan_gen_.1528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1944, i32 32 }
@___asan_gen_.1531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1945, i32 39 }
@___asan_gen_.1534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1946, i32 41 }
@___asan_gen_.1537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1947, i32 43 }
@___asan_gen_.1540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1957, i32 2 }
@___asan_gen_.1543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1959, i32 2 }
@___asan_gen_.1546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1961, i32 2 }
@___asan_gen_.1549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1977, i32 2 }
@___asan_gen_.1552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1979, i32 2 }
@___asan_gen_.1555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1981, i32 2 }
@___asan_gen_.1558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1983, i32 2 }
@___asan_gen_.1561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1985, i32 2 }
@___asan_gen_.1564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1987, i32 2 }
@___asan_gen_.1567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1990, i32 2 }
@___asan_gen_.1570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1994, i32 2 }
@___asan_gen_.1573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1996, i32 2 }
@___asan_gen_.1576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1998, i32 2 }
@___asan_gen_.1579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2000, i32 2 }
@___asan_gen_.1582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 2002, i32 2 }
@___asan_gen_.1583 = private unnamed_addr constant [25 x i8] c"intel_dg45id_pin_configs\00", align 1
@___asan_gen_.1585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1759, i32 32 }
@___asan_gen_.1586 = private unnamed_addr constant [39 x i8] c"stac92hd89xx_hp_front_jack_pin_configs\00", align 1
@___asan_gen_.1588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1770, i32 32 }
@___asan_gen_.1589 = private unnamed_addr constant [49 x i8] c"stac92hd89xx_hp_z1_g2_right_mic_jack_pin_configs\00", align 1
@___asan_gen_.1591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1776, i32 32 }
@___asan_gen_.1592 = private unnamed_addr constant [21 x i8] c".compoundliteral.307\00", align 1
@___asan_gen_.1593 = private unnamed_addr constant [24 x i8] c"ref92hd73xx_pin_configs\00", align 1
@___asan_gen_.1595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1708, i32 32 }
@___asan_gen_.1596 = private unnamed_addr constant [20 x i8] c"dell_m6_pin_configs\00", align 1
@___asan_gen_.1598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1725, i32 32 }
@___asan_gen_.1599 = private unnamed_addr constant [18 x i8] c"dell_eq_core_init\00", align 1
@___asan_gen_.1601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 991, i32 30 }
@___asan_gen_.1602 = private unnamed_addr constant [27 x i8] c"alienware_m17x_pin_configs\00", align 1
@___asan_gen_.1604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 1742, i32 32 }
@___asan_gen_.1605 = private unnamed_addr constant [20 x i8] c"stac92hd95_pwr_nids\00", align 1
@___asan_gen_.1607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4689, i32 24 }
@___asan_gen_.1608 = private unnamed_addr constant [18 x i8] c"stac92hd95_models\00", align 1
@___asan_gen_.1610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4254, i32 37 }
@___asan_gen_.1611 = private unnamed_addr constant [21 x i8] c"stac92hd95_fixup_tbl\00", align 1
@___asan_gen_.1613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4249, i32 35 }
@___asan_gen_.1614 = private unnamed_addr constant [18 x i8] c"stac92hd95_fixups\00", align 1
@___asan_gen_.1616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4233, i32 31 }
@___asan_gen_.1619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4256, i32 39 }
@___asan_gen_.1622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4250, i32 2 }
@___asan_gen_.1623 = private unnamed_addr constant [21 x i8] c".compoundliteral.310\00", align 1
@___asan_gen_.1624 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1625 = private constant [34 x i8] c"../sound/pci/hda/patch_sigmatel.c\00", align 1
@___asan_gen_.1626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1625, i32 4228, i32 3 }
@___asan_gen_.1627 = private unnamed_addr constant [32 x i8] c"switch.table.patch_stac92hd73xx\00", align 1
@llvm.compiler.used = appending global [450 x ptr] [ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_sigmatel_driver_exit, ptr @__initcall__kmod_snd_hda_codec_idt__251_5156_sigmatel_driver_init6, ptr @patch_stac92hd73xx._entry, ptr @patch_stac92hd73xx._entry_ptr, ptr @sigmatel_driver_exit, ptr @sigmatel_driver, ptr @.str, ptr @snd_hda_id_sigmatel, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @stac9200_eapd_init, ptr @stac9200_models, ptr @stac9200_fixup_tbl, ptr @stac9200_fixups, ptr @stac_patch_ops, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @ref9200_pin_configs, ptr @oqo9200_pin_configs, ptr @dell9200_d21_pin_configs, ptr @dell9200_d22_pin_configs, ptr @dell9200_d23_pin_configs, ptr @dell9200_m21_pin_configs, ptr @dell9200_m22_pin_configs, ptr @dell9200_m23_pin_configs, ptr @dell9200_m24_pin_configs, ptr @dell9200_m25_pin_configs, ptr @dell9200_m26_pin_configs, ptr @dell9200_m27_pin_configs, ptr @gateway9200_m4_pin_configs, ptr @gateway9200_m4_2_pin_configs, ptr @.compoundliteral, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @stac_auto_create_beep_ctls.abeep_mute_ctl, ptr @stac_auto_create_beep_ctls.dbeep_mute_ctl, ptr @stac_auto_create_beep_ctls.beep_vol_ctl, ptr @.str.137, ptr @.str.138, ptr @stac_dig_beep_ctrl, ptr @stac_spdif_labels, ptr @stac_smux_mixer, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @stac922x_core_init, ptr @stac922x_models, ptr @stac922x_fixup_tbl, ptr @stac922x_fixups, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @ref922x_pin_configs, ptr @d945gtp3_pin_configs, ptr @d945gtp5_pin_configs, ptr @intel_mac_v1_pin_configs, ptr @intel_mac_v2_pin_configs, ptr @intel_mac_v3_pin_configs, ptr @intel_mac_v4_pin_configs, ptr @intel_mac_v5_pin_configs, ptr @ecs202_pin_configs, ptr @dell_922x_d81_pin_configs, ptr @dell_922x_d82_pin_configs, ptr @dell_922x_m81_pin_configs, ptr @dell_922x_m82_pin_configs, ptr @stac922x_intel_mac_fixup_tbl, ptr @.str.168, ptr @stac927x_spdif_labels, ptr @stac927x_loopback, ptr @stac927x_models, ptr @stac927x_fixup_tbl, ptr @stac927x_fixups, ptr @stac927x_core_init, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @d965_3st_pin_configs, ptr @d965_5st_pin_configs, ptr @d965_5st_no_fp_pin_configs, ptr @d965_core_init, ptr @dell_3st_pin_configs, ptr @.compoundliteral.190, ptr @nemo_pin_configs, ptr @.compoundliteral.191, ptr @.compoundliteral.192, ptr @ref927x_pin_configs, ptr @dell_3st_core_init, ptr @stac927x_volknob_core_init, ptr @.str.193, ptr @stac925x_core_init, ptr @stac925x_models, ptr @stac925x_fixup_tbl, ptr @stac925x_fixups, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @ref925x_pin_configs, ptr @stac925xM1_pin_configs, ptr @stac925xM1_2_pin_configs, ptr @stac925xM2_pin_configs, ptr @stac925xM2_2_pin_configs, ptr @stac925xM3_pin_configs, ptr @stac925xM5_pin_configs, ptr @stac925xM6_pin_configs, ptr @stac9872_core_init, ptr @stac9872_models, ptr @stac9872_fixup_tbl, ptr @stac9872_fixups, ptr @.str.208, ptr @.str.209, ptr @stac9872_vaio_pin_configs, ptr @stac9205_core_init, ptr @stac9205_loopback, ptr @stac9205_models, ptr @stac9205_fixup_tbl, ptr @stac9205_fixups, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @dell_9205_m42_pin_configs, ptr @dell_9205_m44_pin_configs, ptr @ref9205_pin_configs, ptr @dell_9205_m43_pin_configs, ptr @stac92hd71bxx_unmute_nids, ptr @stac92hd71bxx_core_init, ptr @stac92hd71bxx_loopback, ptr @stac92hd71bxx_pwr_nids, ptr @stac92hd71bxx_models, ptr @stac92hd71bxx_fixup_tbl, ptr @stac92hd71bxx_fixups, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @dell_m4_1_pin_configs, ptr @dell_m4_2_pin_configs, ptr @dell_m4_3_pin_configs, ptr @ref92hd71bxx_pin_configs, ptr @.str.236, ptr @stac_hp_bass_sw_ctrl, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.244, ptr @stac92hd83xxx_pwr_nids, ptr @stac92hd83xxx_core_init, ptr @stac92hd83xxx_models, ptr @stac92hd83xxx_fixup_tbl, ptr @stac92hd83xxx_fixups, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @ref92hd83xxx_pin_configs, ptr @dell_s14_pin_configs, ptr @dell_vostro_3500_pin_configs, ptr @hp_cNB11_intquad_pin_configs, ptr @hp_dv7_4000_pin_configs, ptr @.compoundliteral.276, ptr @hp_bnb13_eq_verbs, ptr @.compoundliteral.277, ptr @hp_zephyr_pin_configs, ptr @stac92hd83xxx_hp_zephyr_init, ptr @.str.278, ptr @hp_envy_ts_fixup_dac_bind.preferred_pairs, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @stac92hd73xx_6ch_loopback, ptr @stac92hd73xx_8ch_loopback, ptr @stac92hd73xx_10ch_loopback, ptr @stac92hd73xx_pwr_nids, ptr @stac92hd73xx_models, ptr @stac92hd73xx_fixup_tbl, ptr @stac92hd73xx_fixups, ptr @stac92hd73xx_core_init, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @intel_dg45id_pin_configs, ptr @stac92hd89xx_hp_front_jack_pin_configs, ptr @stac92hd89xx_hp_z1_g2_right_mic_jack_pin_configs, ptr @.compoundliteral.307, ptr @ref92hd73xx_pin_configs, ptr @dell_m6_pin_configs, ptr @dell_eq_core_init, ptr @alienware_m17x_pin_configs, ptr @stac92hd95_pwr_nids, ptr @stac92hd95_models, ptr @stac92hd95_fixup_tbl, ptr @stac92hd95_fixups, ptr @.str.308, ptr @.str.309, ptr @.compoundliteral.310, ptr @.str.311, ptr @switch.table.patch_stac92hd73xx], section "llvm.metadata"
@0 = internal global [443 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sigmatel_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hda_id_sigmatel to i32), i32 2020, i32 2528, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9200_eapd_init to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9200_models to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9200_fixup_tbl to i32), i32 608, i32 736, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9200_fixups to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac_patch_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref9200_pin_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oqo9200_pin_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell9200_d21_pin_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell9200_d22_pin_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell9200_d23_pin_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell9200_m21_pin_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell9200_m22_pin_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell9200_m23_pin_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell9200_m24_pin_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell9200_m25_pin_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell9200_m26_pin_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell9200_m27_pin_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gateway9200_m4_pin_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gateway9200_m4_2_pin_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac_auto_create_beep_ctls.abeep_mute_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac_auto_create_beep_ctls.dbeep_mute_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac_auto_create_beep_ctls.beep_vol_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac_dig_beep_ctrl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac_spdif_labels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac_smux_mixer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac922x_core_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac922x_models to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac922x_fixup_tbl to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac922x_fixups to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref922x_pin_configs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d945gtp3_pin_configs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d945gtp5_pin_configs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_mac_v1_pin_configs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_mac_v2_pin_configs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_mac_v3_pin_configs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_mac_v4_pin_configs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_mac_v5_pin_configs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecs202_pin_configs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell_922x_d81_pin_configs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell_922x_d82_pin_configs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell_922x_m81_pin_configs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell_922x_m82_pin_configs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac922x_intel_mac_fixup_tbl to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac927x_spdif_labels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac927x_loopback to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac927x_models to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac927x_fixup_tbl to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac927x_fixups to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac927x_core_init to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d965_3st_pin_configs to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d965_5st_pin_configs to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d965_5st_no_fp_pin_configs to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d965_core_init to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell_3st_pin_configs to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nemo_pin_configs to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.191 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.192 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref927x_pin_configs to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell_3st_core_init to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac927x_volknob_core_init to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac925x_core_init to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac925x_models to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac925x_fixup_tbl to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac925x_fixups to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref925x_pin_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac925xM1_pin_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac925xM1_2_pin_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac925xM2_pin_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac925xM2_2_pin_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac925xM3_pin_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac925xM5_pin_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac925xM6_pin_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9872_core_init to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9872_models to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9872_fixup_tbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9872_fixups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9872_vaio_pin_configs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9205_core_init to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9205_loopback to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9205_models to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9205_fixup_tbl to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9205_fixups to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell_9205_m42_pin_configs to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell_9205_m44_pin_configs to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref9205_pin_configs to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell_9205_m43_pin_configs to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd71bxx_unmute_nids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd71bxx_core_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd71bxx_loopback to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd71bxx_pwr_nids to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd71bxx_models to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd71bxx_fixup_tbl to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd71bxx_fixups to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell_m4_1_pin_configs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell_m4_2_pin_configs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell_m4_3_pin_configs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref92hd71bxx_pin_configs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac_hp_bass_sw_ctrl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd83xxx_pwr_nids to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd83xxx_core_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd83xxx_models to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd83xxx_fixup_tbl to i32), i32 1520, i32 1888, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd83xxx_fixups to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref92hd83xxx_pin_configs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1440 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell_s14_pin_configs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell_vostro_3500_pin_configs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_cNB11_intquad_pin_configs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_dv7_4000_pin_configs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.276 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_bnb13_eq_verbs to i32), i32 5064, i32 6336, i32 ptrtoint (ptr @___asan_gen_.1456 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.277 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_zephyr_pin_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1460 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd83xxx_hp_zephyr_init to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_envy_ts_fixup_dac_bind.preferred_pairs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @patch_stac92hd73xx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd73xx_6ch_loopback to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd73xx_8ch_loopback to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd73xx_10ch_loopback to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd73xx_pwr_nids to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd73xx_models to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd73xx_fixup_tbl to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.1502 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd73xx_fixups to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1505 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd73xx_core_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1508 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_dg45id_pin_configs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1583 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd89xx_hp_front_jack_pin_configs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1586 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd89xx_hp_z1_g2_right_mic_jack_pin_configs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1589 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.307 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1592 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref92hd73xx_pin_configs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.1593 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell_m6_pin_configs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.1596 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell_eq_core_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1599 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alienware_m17x_pin_configs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.1602 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd95_pwr_nids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1605 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd95_models to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1608 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd95_fixup_tbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1611 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac92hd95_fixups to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1614 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.310 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1623 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.patch_stac92hd73xx to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1627 to i32), i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sigmatel_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hda_codec_driver_register(ptr noundef nonnull @sigmatel_driver, ptr noundef nonnull @.str, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sigmatel_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hda_codec_driver_unregister(ptr noundef nonnull @sigmatel_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_codec_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hda_codec_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_stac9200(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 7104) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #8
  %spec2.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec2.i, align 8
  %no_trigger_sense.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %2 = ptrtoint ptr %no_trigger_sense.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %no_trigger_sense.i, align 4
  %bf.set.i = or i32 %bf.load.i, 4194304
  store i32 %bf.set.i, ptr %no_trigger_sense.i, align 4
  %dac_min_mute.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 58
  %3 = ptrtoint ptr %dac_min_mute.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load4.i = load i64, ptr %dac_min_mute.i, align 4
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %patch_ops.i, ptr @stac_patch_ops, i32 40)
  %linear_tone_beep = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %linear_tone_beep to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %linear_tone_beep, align 8
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %linear_tone_beep, align 8
  %bf.set4 = or i64 %bf.load4.i, 550292684800
  store i64 %bf.set4, ptr %dac_min_mute.i, align 4
  %power_filter = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 35
  %6 = ptrtoint ptr %power_filter to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @snd_hda_codec_eapd_power_filter, ptr %power_filter, align 4
  %call5 = tail call i32 @snd_hda_add_verbs(ptr noundef %codec, ptr noundef nonnull @stac9200_eapd_init) #8
  tail call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef nonnull @stac9200_models, ptr noundef nonnull @stac9200_fixup_tbl, ptr noundef nonnull @stac9200_fixups) #8
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 0) #8
  %call6 = tail call fastcc i32 @stac_parse_auto_config(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_hda_gen_free(ptr noundef %codec) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then8 ], [ 0, %if.end9 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_stac922x(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 7104) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #8
  %spec2.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec2.i, align 8
  %no_trigger_sense.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %2 = ptrtoint ptr %no_trigger_sense.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %no_trigger_sense.i, align 4
  %bf.set.i = or i32 %bf.load.i, 4194304
  store i32 %bf.set.i, ptr %no_trigger_sense.i, align 4
  %dac_min_mute.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 58
  %3 = ptrtoint ptr %dac_min_mute.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load4.i = load i64, ptr %dac_min_mute.i, align 4
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %patch_ops.i, ptr @stac_patch_ops, i32 40)
  %linear_tone_beep = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %linear_tone_beep to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %linear_tone_beep, align 8
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %linear_tone_beep, align 8
  %bf.set4 = or i64 %bf.load4.i, 550292684800
  store i64 %bf.set4, ptr %dac_min_mute.i, align 4
  %call5 = tail call i32 @snd_hda_add_verbs(ptr noundef %codec, ptr noundef nonnull @stac922x_core_init) #8
  %call6 = tail call i32 @snd_hda_override_amp_caps(ptr noundef %codec, i16 noundef zeroext 18, i32 noundef 1, i32 noundef 2556416) #8
  tail call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef nonnull @stac922x_models, ptr noundef nonnull @stac922x_fixup_tbl, ptr noundef nonnull @stac922x_fixups) #8
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 0) #8
  %call7 = tail call fastcc i32 @stac_parse_auto_config(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_hda_gen_free(ptr noundef %codec) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then9 ], [ 0, %if.end10 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_stac927x(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 7104) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #8
  %spec2.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec2.i, align 8
  %no_trigger_sense.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %2 = ptrtoint ptr %no_trigger_sense.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %no_trigger_sense.i, align 4
  %bf.set.i = or i32 %bf.load.i, 4194304
  store i32 %bf.set.i, ptr %no_trigger_sense.i, align 4
  %dac_min_mute.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 58
  %3 = ptrtoint ptr %dac_min_mute.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load4.i = load i64, ptr %dac_min_mute.i, align 4
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %patch_ops.i, ptr @stac_patch_ops, i32 40)
  %linear_tone_beep = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %linear_tone_beep to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %linear_tone_beep, align 8
  %bf.set4 = or i64 %bf.load4.i, 550292684800
  store i64 %bf.set4, ptr %dac_min_mute.i, align 4
  %spdif_labels = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 24
  %6 = ptrtoint ptr %spdif_labels to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @stac927x_spdif_labels, ptr %spdif_labels, align 8
  %beep_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 67
  %7 = ptrtoint ptr %beep_nid to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 35, ptr %beep_nid, align 2
  %gpio_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %gpio_mask, align 8
  %eapd_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %eapd_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %eapd_mask, align 4
  %gpio_data = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %gpio_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %gpio_data, align 8
  %gpio_dir = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %gpio_dir, align 4
  %aloopback_ctl = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 15
  %12 = ptrtoint ptr %aloopback_ctl to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @stac927x_loopback, ptr %aloopback_ctl, align 8
  %aloopback_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 17
  %13 = ptrtoint ptr %aloopback_mask to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 64, ptr %aloopback_mask, align 8
  %aloopback_shift = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 18
  %14 = ptrtoint ptr %aloopback_shift to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %aloopback_shift, align 1
  %bf.set11 = or i8 %bf.load, -60
  store i8 %bf.set11, ptr %linear_tone_beep, align 8
  tail call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef nonnull @stac927x_models, ptr noundef nonnull @stac927x_fixup_tbl, ptr noundef nonnull @stac927x_fixups) #8
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 0) #8
  %15 = ptrtoint ptr %linear_tone_beep to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load12 = load i8, ptr %linear_tone_beep, align 8
  %16 = and i8 %bf.load12, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.then14, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 @snd_hda_add_verbs(ptr noundef %codec, ptr noundef nonnull @stac927x_core_init) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end.if.end16_crit_edge
  %call17 = tail call fastcc i32 @stac_parse_auto_config(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_hda_gen_free(ptr noundef %codec) #8
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %proc_widget_hook = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 36
  %17 = ptrtoint ptr %proc_widget_hook to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @stac927x_proc_hook, ptr %proc_widget_hook, align 8
  %bus = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 1
  %18 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus, align 8
  %needs_damn_long_delay = getelementptr inbounds %struct.hdac_bus, ptr %19, i32 0, i32 28
  %20 = ptrtoint ptr %needs_damn_long_delay to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load21 = load i16, ptr %needs_damn_long_delay, align 4
  %bf.set23 = or i16 %bf.load21, 64
  store i16 %bf.set23, ptr %needs_damn_long_delay, align 4
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.then19 ], [ 0, %if.end20 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_stac925x(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 7104) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #8
  %spec2.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec2.i, align 8
  %no_trigger_sense.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %2 = ptrtoint ptr %no_trigger_sense.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %no_trigger_sense.i, align 4
  %bf.set.i = or i32 %bf.load.i, 4194304
  store i32 %bf.set.i, ptr %no_trigger_sense.i, align 4
  %dac_min_mute.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 58
  %3 = ptrtoint ptr %dac_min_mute.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load4.i = load i64, ptr %dac_min_mute.i, align 4
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %patch_ops.i, ptr @stac_patch_ops, i32 40)
  %linear_tone_beep = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %linear_tone_beep to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %linear_tone_beep, align 8
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %linear_tone_beep, align 8
  %bf.set4 = or i64 %bf.load4.i, 550292684800
  store i64 %bf.set4, ptr %dac_min_mute.i, align 4
  %call5 = tail call i32 @snd_hda_add_verbs(ptr noundef %codec, ptr noundef nonnull @stac925x_core_init) #8
  tail call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef nonnull @stac925x_models, ptr noundef nonnull @stac925x_fixup_tbl, ptr noundef nonnull @stac925x_fixups) #8
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 0) #8
  %call6 = tail call fastcc i32 @stac_parse_auto_config(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_hda_gen_free(ptr noundef %codec) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then8 ], [ 0, %if.end9 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_stac9872(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 7104) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #8
  %spec2.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec2.i, align 8
  %no_trigger_sense.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %2 = ptrtoint ptr %no_trigger_sense.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %no_trigger_sense.i, align 4
  %bf.set.i = or i32 %bf.load.i, 4194304
  store i32 %bf.set.i, ptr %no_trigger_sense.i, align 4
  %dac_min_mute.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 58
  %3 = ptrtoint ptr %dac_min_mute.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load4.i = load i64, ptr %dac_min_mute.i, align 4
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %patch_ops.i, ptr @stac_patch_ops, i32 40)
  %linear_tone_beep = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %linear_tone_beep to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %linear_tone_beep, align 8
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %linear_tone_beep, align 8
  %bf.set4 = or i64 %bf.load4.i, 550292684800
  store i64 %bf.set4, ptr %dac_min_mute.i, align 4
  %call5 = tail call i32 @snd_hda_add_verbs(ptr noundef %codec, ptr noundef nonnull @stac9872_core_init) #8
  tail call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef nonnull @stac9872_models, ptr noundef nonnull @stac9872_fixup_tbl, ptr noundef nonnull @stac9872_fixups) #8
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 0) #8
  %call6 = tail call fastcc i32 @stac_parse_auto_config(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_hda_gen_free(ptr noundef %codec) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then8 ], [ 0, %if.end9 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_stac9205(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 7104) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #8
  %spec2.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec2.i, align 8
  %no_trigger_sense.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %2 = ptrtoint ptr %no_trigger_sense.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %no_trigger_sense.i, align 4
  %bf.set.i = or i32 %bf.load.i, 4194304
  store i32 %bf.set.i, ptr %no_trigger_sense.i, align 4
  %dac_min_mute.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 58
  %3 = ptrtoint ptr %dac_min_mute.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load4.i = load i64, ptr %dac_min_mute.i, align 4
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %patch_ops.i, ptr @stac_patch_ops, i32 40)
  %linear_tone_beep = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %linear_tone_beep to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %linear_tone_beep, align 8
  %bf.set4 = or i64 %bf.load4.i, 550292684800
  store i64 %bf.set4, ptr %dac_min_mute.i, align 4
  %bf.set7 = or i8 %bf.load, 68
  store i8 %bf.set7, ptr %linear_tone_beep, align 8
  %beep_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 67
  %6 = ptrtoint ptr %beep_nid to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 35, ptr %beep_nid, align 2
  %call9 = tail call i32 @snd_hda_add_verbs(ptr noundef %codec, ptr noundef nonnull @stac9205_core_init) #8
  %aloopback_ctl = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 15
  %7 = ptrtoint ptr %aloopback_ctl to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @stac9205_loopback, ptr %aloopback_ctl, align 8
  %aloopback_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 17
  %8 = ptrtoint ptr %aloopback_mask to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 64, ptr %aloopback_mask, align 8
  %aloopback_shift = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 18
  %9 = ptrtoint ptr %aloopback_shift to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %aloopback_shift, align 1
  %gpio_dir = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %gpio_dir, align 4
  %gpio_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %gpio_mask, align 8
  %eapd_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %eapd_mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %eapd_mask, align 4
  %gpio_data = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %gpio_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %gpio_data, align 8
  %14 = ptrtoint ptr %linear_tone_beep to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load10 = load i8, ptr %linear_tone_beep, align 8
  %bf.set12 = or i8 %bf.load10, -128
  store i8 %bf.set12, ptr %linear_tone_beep, align 8
  tail call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef nonnull @stac9205_models, ptr noundef nonnull @stac9205_fixup_tbl, ptr noundef nonnull @stac9205_fixups) #8
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 0) #8
  %call13 = tail call fastcc i32 @stac_parse_auto_config(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_hda_gen_free(ptr noundef %codec) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %proc_widget_hook = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 36
  %15 = ptrtoint ptr %proc_widget_hook to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @stac9205_proc_hook, ptr %proc_widget_hook, align 8
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then15 ], [ 0, %if.end16 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_stac92hd71bxx(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 7104) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #8
  %spec2.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec2.i, align 8
  %no_trigger_sense.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %2 = ptrtoint ptr %no_trigger_sense.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %no_trigger_sense.i, align 4
  %bf.set.i = or i32 %bf.load.i, 4194304
  store i32 %bf.set.i, ptr %no_trigger_sense.i, align 4
  %dac_min_mute.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 58
  %3 = ptrtoint ptr %dac_min_mute.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load4.i = load i64, ptr %dac_min_mute.i, align 4
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %patch_ops.i, ptr @stac_patch_ops, i32 40)
  %linear_tone_beep = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %linear_tone_beep to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %linear_tone_beep, align 8
  %bf.clear = and i8 %bf.load, -69
  %bf.set8 = or i64 %bf.load4.i, 551366426624
  store i64 %bf.set8, ptr %dac_min_mute.i, align 4
  %mixer_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 18
  %6 = ptrtoint ptr %mixer_nid to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 23, ptr %mixer_nid, align 2
  %bf.set12 = or i8 %bf.clear, 4
  store i8 %bf.set12, ptr %linear_tone_beep, align 8
  %gpio_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %gpio_mask, align 8
  %gpio_dir = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %gpio_dir, align 4
  %gpio_data = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %gpio_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %gpio_data, align 8
  %vendor_id = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 7
  %10 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vendor_id, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.end.sw.epilog_crit_edge [
    i32 287143606, label %if.end.sw.bb_crit_edge
    i32 287143607, label %if.end.sw.bb_crit_edge129
    i32 287143432, label %sw.bb13
    i32 287143427, label %sw.bb25
  ]

if.end.sw.bb_crit_edge129:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge129
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  %revision_id = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 9
  %13 = ptrtoint ptr %revision_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %revision_id, align 8
  %and = and i32 %14, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %switch = icmp eq i32 %and, 0
  br i1 %switch, label %if.then20, label %sw.bb13.if.end21_crit_edge

sw.bb13.if.end21_crit_edge:                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  %stream_delay = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 14
  %15 = ptrtoint ptr %stream_delay to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 40, ptr %stream_delay, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %sw.bb13.if.end21_crit_edge
  %call23 = tail call i32 @snd_hda_codec_set_pincfg(ptr noundef %codec, i16 noundef zeroext 15, i32 noundef 1089470704) #8
  %call24 = tail call i32 @snd_hda_codec_set_pincfg(ptr noundef %codec, i16 noundef zeroext 25, i32 noundef 1089470707) #8
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end
  %revision_id27 = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 9
  %16 = ptrtoint ptr %revision_id27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %revision_id27, align 8
  %and28 = and i32 %17, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and28)
  %cmp29 = icmp eq i32 %and28, 1
  br i1 %cmp29, label %if.then30, label %sw.bb25.sw.epilog_crit_edge

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then30:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  %stream_delay31 = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 14
  %18 = ptrtoint ptr %stream_delay31 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 40, ptr %stream_delay31, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then30, %sw.bb25.sw.epilog_crit_edge, %if.end21, %sw.bb, %if.end.sw.epilog_crit_edge
  %unmute_nids.0 = phi ptr [ @stac92hd71bxx_unmute_nids, %if.end.sw.epilog_crit_edge ], [ @stac92hd71bxx_unmute_nids, %if.then30 ], [ @stac92hd71bxx_unmute_nids, %sw.bb25.sw.epilog_crit_edge ], [ getelementptr inbounds ([4 x i16], ptr @stac92hd71bxx_unmute_nids, i32 0, i32 1), %if.end21 ], [ getelementptr inbounds ([4 x i16], ptr @stac92hd71bxx_unmute_nids, i32 0, i32 1), %sw.bb ]
  %start_nid.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %19 = ptrtoint ptr %start_nid.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %start_nid.i, align 4
  %conv1.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %20)
  %cmp.i = icmp ugt i16 %20, 40
  br i1 %cmp.i, label %sw.epilog.if.end45_crit_edge, label %lor.lhs.false.i

sw.epilog.if.end45_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

lor.lhs.false.i:                                  ; preds = %sw.epilog
  %num_nodes.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %21 = ptrtoint ptr %num_nodes.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_nodes.i, align 8
  %add.i = add i32 %22, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %add.i)
  %cmp8.not.i = icmp ugt i32 %add.i, 40
  br i1 %cmp8.not.i, label %get_wcaps.exit, label %lor.lhs.false.i.if.end38_crit_edge

lor.lhs.false.i.if.end38_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

get_wcaps.exit:                                   ; preds = %lor.lhs.false.i
  %wcaps.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %23 = ptrtoint ptr %wcaps.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wcaps.i, align 4
  %sub.i = sub nsw i32 40, %conv1.i
  %arrayidx.i = getelementptr i32, ptr %24, i32 %sub.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %27 = and i32 %26, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %27)
  %cmp35 = icmp eq i32 %27, 6291456
  br i1 %cmp35, label %if.then36, label %get_wcaps.exit.if.end38_crit_edge

get_wcaps.exit.if.end38_crit_edge:                ; preds = %get_wcaps.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then36:                                        ; preds = %get_wcaps.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call37 = tail call i32 @snd_hda_add_verbs(ptr noundef %codec, ptr noundef nonnull @stac92hd71bxx_core_init) #8
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %get_wcaps.exit.if.end38_crit_edge, %lor.lhs.false.i.if.end38_crit_edge
  %28 = ptrtoint ptr %start_nid.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %.pr = load i16, ptr %start_nid.i, align 4
  %conv1.i102 = zext i16 %.pr to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %.pr)
  %cmp.i103 = icmp ugt i16 %.pr, 10
  br i1 %cmp.i103, label %if.end38.if.end45_crit_edge, label %lor.lhs.false.i107

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

lor.lhs.false.i107:                               ; preds = %if.end38
  %29 = ptrtoint ptr %num_nodes.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_nodes.i, align 8
  %add.i105 = add i32 %30, %conv1.i102
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %add.i105)
  %cmp8.not.i106 = icmp ugt i32 %add.i105, 10
  br i1 %cmp8.not.i106, label %get_wcaps.exit113, label %lor.lhs.false.i107.if.end45_crit_edge

lor.lhs.false.i107.if.end45_crit_edge:            ; preds = %lor.lhs.false.i107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

get_wcaps.exit113:                                ; preds = %lor.lhs.false.i107
  %wcaps.i108 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %31 = ptrtoint ptr %wcaps.i108 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wcaps.i108, align 4
  %sub.i109 = sub nsw i32 10, %conv1.i102
  %arrayidx.i110 = getelementptr i32, ptr %32, i32 %sub.i109
  %33 = ptrtoint ptr %arrayidx.i110 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i110, align 4
  %and40 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool.not = icmp eq i32 %and40, 0
  br i1 %tobool.not, label %get_wcaps.exit113.if.end45_crit_edge, label %for.cond.preheader

get_wcaps.exit113.if.end45_crit_edge:             ; preds = %get_wcaps.exit113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

for.cond.preheader:                               ; preds = %get_wcaps.exit113
  %35 = ptrtoint ptr %unmute_nids.0 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %unmute_nids.0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool42.not127 = icmp eq i16 %36, 0
  br i1 %tobool42.not127, label %for.cond.preheader.if.end45_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end45_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %37 = phi i16 [ %39, %for.body.for.body_crit_edge ], [ %36, %for.cond.preheader.for.body_crit_edge ]
  %p.0128 = phi ptr [ %incdec.ptr44, %for.body.for.body_crit_edge ], [ %unmute_nids.0, %for.cond.preheader.for.body_crit_edge ]
  %call43 = tail call i32 @snd_hda_codec_amp_init_stereo(ptr noundef %codec, i16 noundef zeroext %37, i32 noundef 0, i32 noundef 0, i32 noundef 255, i32 noundef 0) #8
  %incdec.ptr44 = getelementptr i16, ptr %p.0128, i32 1
  %38 = ptrtoint ptr %incdec.ptr44 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %incdec.ptr44, align 2
  %tobool42.not = icmp eq i16 %39, 0
  br i1 %tobool42.not, label %for.body.if.end45_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.if.end45_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.end45:                                         ; preds = %for.body.if.end45_crit_edge, %for.cond.preheader.if.end45_crit_edge, %get_wcaps.exit113.if.end45_crit_edge, %lor.lhs.false.i107.if.end45_crit_edge, %if.end38.if.end45_crit_edge, %sw.epilog.if.end45_crit_edge
  %aloopback_ctl = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 15
  %40 = ptrtoint ptr %aloopback_ctl to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @stac92hd71bxx_loopback, ptr %aloopback_ctl, align 8
  %aloopback_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 17
  %41 = ptrtoint ptr %aloopback_mask to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 80, ptr %aloopback_mask, align 8
  %aloopback_shift = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 18
  %42 = ptrtoint ptr %aloopback_shift to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %aloopback_shift, align 1
  %43 = ptrtoint ptr %linear_tone_beep to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load46 = load i8, ptr %linear_tone_beep, align 8
  %bf.set48 = or i8 %bf.load46, 8
  store i8 %bf.set48, ptr %linear_tone_beep, align 8
  %beep_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 67
  %44 = ptrtoint ptr %beep_nid to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 38, ptr %beep_nid, align 2
  %num_pwrs = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 20
  %45 = ptrtoint ptr %num_pwrs to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %num_pwrs, align 8
  %pwr_nids = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 21
  %46 = ptrtoint ptr %pwr_nids to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @stac92hd71bxx_pwr_nids, ptr %pwr_nids, align 4
  tail call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef nonnull @stac92hd71bxx_models, ptr noundef nonnull @stac92hd71bxx_fixup_tbl, ptr noundef nonnull @stac92hd71bxx_fixups) #8
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 0) #8
  %47 = ptrtoint ptr %spec2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %spec2.i, align 8
  %eapd_mask.i = getelementptr inbounds %struct.sigmatel_spec, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %eapd_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %eapd_mask.i, align 4
  %gpio_mask.i = getelementptr inbounds %struct.sigmatel_spec, ptr %48, i32 0, i32 3
  %51 = ptrtoint ptr %gpio_mask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %gpio_mask.i, align 8
  %or.i = or i32 %52, %50
  store i32 %or.i, ptr %gpio_mask.i, align 8
  %gpio_led.i = getelementptr inbounds %struct.sigmatel_spec, ptr %48, i32 0, i32 7
  %53 = ptrtoint ptr %gpio_led.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %gpio_led.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i114 = icmp eq i32 %54, 0
  br i1 %tobool.not.i114, label %if.end45.if.end11.i_crit_edge, label %if.then.i

if.end45.if.end11.i_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then.i:                                        ; preds = %if.end45
  %vref_mute_led_nid.i = getelementptr inbounds %struct.sigmatel_spec, ptr %48, i32 0, i32 9
  %55 = ptrtoint ptr %vref_mute_led_nid.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %vref_mute_led_nid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool2.not.i = icmp eq i32 %56, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %or6.i = or i32 %54, %or.i
  %57 = ptrtoint ptr %gpio_mask.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or6.i, ptr %gpio_mask.i, align 8
  %gpio_dir.i = getelementptr inbounds %struct.sigmatel_spec, ptr %48, i32 0, i32 4
  %58 = ptrtoint ptr %gpio_dir.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %gpio_dir.i, align 4
  %or8.i = or i32 %59, %54
  store i32 %or8.i, ptr %gpio_dir.i, align 4
  %gpio_data.i = getelementptr inbounds %struct.sigmatel_spec, ptr %48, i32 0, i32 5
  %60 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %gpio_data.i, align 8
  %or10.i = or i32 %61, %54
  store i32 %or10.i, ptr %gpio_data.i, align 8
  br label %if.end11.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %power_filter.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 35
  %62 = ptrtoint ptr %power_filter.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @stac_vref_led_power_filter, ptr %power_filter.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %if.then3.i, %if.end45.if.end11.i_crit_edge
  %mic_mute_led_gpio.i = getelementptr inbounds %struct.sigmatel_spec, ptr %48, i32 0, i32 12
  %63 = ptrtoint ptr %mic_mute_led_gpio.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mic_mute_led_gpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool12.not.i = icmp eq i32 %64, 0
  br i1 %tobool12.not.i, label %if.end11.i.stac_setup_gpio.exit_crit_edge, label %if.then13.i

if.end11.i.stac_setup_gpio.exit_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stac_setup_gpio.exit

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %gpio_mask.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %gpio_mask.i, align 8
  %or16.i = or i32 %66, %64
  store i32 %or16.i, ptr %gpio_mask.i, align 8
  %gpio_dir18.i = getelementptr inbounds %struct.sigmatel_spec, ptr %48, i32 0, i32 4
  %67 = ptrtoint ptr %gpio_dir18.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %gpio_dir18.i, align 4
  %or19.i = or i32 %68, %64
  store i32 %or19.i, ptr %gpio_dir18.i, align 4
  %mic_enabled.i = getelementptr inbounds %struct.sigmatel_spec, ptr %48, i32 0, i32 13
  %69 = ptrtoint ptr %mic_enabled.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %mic_enabled.i, align 8
  %gpio_data21.i = getelementptr inbounds %struct.sigmatel_spec, ptr %48, i32 0, i32 5
  %70 = ptrtoint ptr %gpio_data21.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %gpio_data21.i, align 8
  %or22.i = or i32 %71, %64
  store i32 %or22.i, ptr %gpio_data21.i, align 8
  %call.i = tail call i32 @snd_hda_gen_add_micmute_led_cdev(ptr noundef %codec, ptr noundef nonnull @stac_capture_led_update) #8
  br label %stac_setup_gpio.exit

stac_setup_gpio.exit:                             ; preds = %if.then13.i, %if.end11.i.stac_setup_gpio.exit_crit_edge
  %call50 = tail call fastcc i32 @stac_parse_auto_config(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %stac_setup_gpio.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_hda_gen_free(ptr noundef %codec) #8
  br label %cleanup

if.end53:                                         ; preds = %stac_setup_gpio.exit
  call void @__sanitizer_cov_trace_pc() #10
  %proc_widget_hook = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 36
  %72 = ptrtoint ptr %proc_widget_hook to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @stac92hd7x_proc_hook, ptr %proc_widget_hook, align 8
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then52, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call50, %if.then52 ], [ 0, %if.end53 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_stac92hd83xxx(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 7104) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #8
  %spec2.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec2.i, align 8
  %no_trigger_sense.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %2 = ptrtoint ptr %no_trigger_sense.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %no_trigger_sense.i, align 4
  %dac_min_mute.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 58
  %3 = ptrtoint ptr %dac_min_mute.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load4.i = load i64, ptr %dac_min_mute.i, align 4
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %patch_ops.i, ptr @stac_patch_ops, i32 40)
  %power_caps = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 13
  %5 = ptrtoint ptr %power_caps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %power_caps, align 8
  %and = and i32 %6, 2147483647
  store i32 %and, ptr %power_caps, align 8
  %bf.set = or i32 %bf.load.i, 4210688
  store i32 %bf.set, ptr %no_trigger_sense.i, align 4
  %linear_tone_beep = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %linear_tone_beep to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load2 = load i8, ptr %linear_tone_beep, align 8
  %bf.clear3 = and i8 %bf.load2, -65
  store i8 %bf.clear3, ptr %linear_tone_beep, align 8
  %bf.set11 = or i64 %bf.load4.i, 551366426624
  store i64 %bf.set11, ptr %dac_min_mute.i, align 4
  %mixer_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 18
  %8 = ptrtoint ptr %mixer_nid to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 27, ptr %mixer_nid, align 2
  %beep_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 67
  %9 = ptrtoint ptr %beep_nid to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 33, ptr %beep_nid, align 2
  %pwr_nids = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 21
  %10 = ptrtoint ptr %pwr_nids to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @stac92hd83xxx_pwr_nids, ptr %pwr_nids, align 4
  %num_pwrs = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 20
  %11 = ptrtoint ptr %num_pwrs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 7, ptr %num_pwrs, align 8
  %default_polarity = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 11
  %12 = ptrtoint ptr %default_polarity to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %default_polarity, align 8
  %call14 = tail call i32 @snd_hda_add_verbs(ptr noundef %codec, ptr noundef nonnull @stac92hd83xxx_core_init) #8
  tail call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef nonnull @stac92hd83xxx_models, ptr noundef nonnull @stac92hd83xxx_fixup_tbl, ptr noundef nonnull @stac92hd83xxx_fixups) #8
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 0) #8
  %13 = ptrtoint ptr %spec2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spec2.i, align 8
  %eapd_mask.i = getelementptr inbounds %struct.sigmatel_spec, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %eapd_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %eapd_mask.i, align 4
  %gpio_mask.i = getelementptr inbounds %struct.sigmatel_spec, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %gpio_mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gpio_mask.i, align 8
  %or.i = or i32 %18, %16
  store i32 %or.i, ptr %gpio_mask.i, align 8
  %gpio_led.i = getelementptr inbounds %struct.sigmatel_spec, ptr %14, i32 0, i32 7
  %19 = ptrtoint ptr %gpio_led.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gpio_led.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i41 = icmp eq i32 %20, 0
  br i1 %tobool.not.i41, label %if.end.if.end11.i_crit_edge, label %if.then.i

if.end.if.end11.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then.i:                                        ; preds = %if.end
  %vref_mute_led_nid.i = getelementptr inbounds %struct.sigmatel_spec, ptr %14, i32 0, i32 9
  %21 = ptrtoint ptr %vref_mute_led_nid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vref_mute_led_nid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool2.not.i = icmp eq i32 %22, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %or6.i = or i32 %20, %or.i
  %23 = ptrtoint ptr %gpio_mask.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or6.i, ptr %gpio_mask.i, align 8
  %gpio_dir.i = getelementptr inbounds %struct.sigmatel_spec, ptr %14, i32 0, i32 4
  %24 = ptrtoint ptr %gpio_dir.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gpio_dir.i, align 4
  %or8.i = or i32 %25, %20
  store i32 %or8.i, ptr %gpio_dir.i, align 4
  %gpio_data.i = getelementptr inbounds %struct.sigmatel_spec, ptr %14, i32 0, i32 5
  %26 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %gpio_data.i, align 8
  %or10.i = or i32 %27, %20
  store i32 %or10.i, ptr %gpio_data.i, align 8
  br label %if.end11.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %power_filter.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 35
  %28 = ptrtoint ptr %power_filter.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @stac_vref_led_power_filter, ptr %power_filter.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %if.then3.i, %if.end.if.end11.i_crit_edge
  %mic_mute_led_gpio.i = getelementptr inbounds %struct.sigmatel_spec, ptr %14, i32 0, i32 12
  %29 = ptrtoint ptr %mic_mute_led_gpio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mic_mute_led_gpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool12.not.i = icmp eq i32 %30, 0
  br i1 %tobool12.not.i, label %if.end11.i.stac_setup_gpio.exit_crit_edge, label %if.then13.i

if.end11.i.stac_setup_gpio.exit_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stac_setup_gpio.exit

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %gpio_mask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %gpio_mask.i, align 8
  %or16.i = or i32 %32, %30
  store i32 %or16.i, ptr %gpio_mask.i, align 8
  %gpio_dir18.i = getelementptr inbounds %struct.sigmatel_spec, ptr %14, i32 0, i32 4
  %33 = ptrtoint ptr %gpio_dir18.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %gpio_dir18.i, align 4
  %or19.i = or i32 %34, %30
  store i32 %or19.i, ptr %gpio_dir18.i, align 4
  %mic_enabled.i = getelementptr inbounds %struct.sigmatel_spec, ptr %14, i32 0, i32 13
  %35 = ptrtoint ptr %mic_enabled.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %mic_enabled.i, align 8
  %gpio_data21.i = getelementptr inbounds %struct.sigmatel_spec, ptr %14, i32 0, i32 5
  %36 = ptrtoint ptr %gpio_data21.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %gpio_data21.i, align 8
  %or22.i = or i32 %37, %30
  store i32 %or22.i, ptr %gpio_data21.i, align 8
  %call.i = tail call i32 @snd_hda_gen_add_micmute_led_cdev(ptr noundef %codec, ptr noundef nonnull @stac_capture_led_update) #8
  br label %stac_setup_gpio.exit

stac_setup_gpio.exit:                             ; preds = %if.then13.i, %if.end11.i.stac_setup_gpio.exit_crit_edge
  %call15 = tail call fastcc i32 @stac_parse_auto_config(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %stac_setup_gpio.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_hda_gen_free(ptr noundef %codec) #8
  br label %cleanup

if.end18:                                         ; preds = %stac_setup_gpio.exit
  call void @__sanitizer_cov_trace_pc() #10
  %proc_widget_hook = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 36
  %38 = ptrtoint ptr %proc_widget_hook to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @stac92hd_proc_hook, ptr %proc_widget_hook, align 8
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.then17 ], [ 0, %if.end18 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_stac92hd73xx(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 7104) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #8
  %spec2.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec2.i, align 8
  %no_trigger_sense.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %2 = ptrtoint ptr %no_trigger_sense.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %no_trigger_sense.i, align 4
  %bf.set.i = or i32 %bf.load.i, 4194304
  store i32 %bf.set.i, ptr %no_trigger_sense.i, align 4
  %dac_min_mute.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 58
  %3 = ptrtoint ptr %dac_min_mute.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load4.i = load i64, ptr %dac_min_mute.i, align 4
  %bf.set6.i = or i64 %bf.load4.i, 536870912
  store i64 %bf.set6.i, ptr %dac_min_mute.i, align 4
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %patch_ops.i, ptr @stac_patch_ops, i32 40)
  %vendor_id = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 7
  %5 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vendor_id, align 8
  %and = and i32 %6, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 287143536, i32 %and)
  %cmp2.not = icmp eq i32 %and, 287143536
  br i1 %cmp2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %no_trigger_sense.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %no_trigger_sense.i, align 4
  %bf.set = or i32 %bf.load, 16384
  store i32 %bf.set, ptr %no_trigger_sense.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %linear_tone_beep = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %linear_tone_beep to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load5 = load i8, ptr %linear_tone_beep, align 8
  %mixer_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 18
  %9 = ptrtoint ptr %mixer_nid to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 29, ptr %mixer_nid, align 2
  %bf.clear9 = and i8 %bf.load5, -69
  %bf.set10 = or i8 %bf.clear9, 4
  store i8 %bf.set10, ptr %linear_tone_beep, align 8
  %call.i = tail call i32 @snd_hda_get_connections(ptr noundef %codec, i16 noundef zeroext 10, ptr noundef null, i32 noundef 0) #8
  %10 = add i32 %call.i, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %10)
  %11 = icmp ult i32 %10, -3
  br i1 %11, label %if.end16.thread, label %if.end16

if.end16.thread:                                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %codec, ptr noundef nonnull @.str.279) #12
  br label %sw.epilog.sink.split

if.end16:                                         ; preds = %if.end4
  %switch.tableidx = add i32 %call.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 3
  br i1 %12, label %switch.lookup, label %if.end16.sw.epilog_crit_edge

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.patch_stac92hd73xx, i32 0, i32 %switch.tableidx
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %switch.lookup, %if.end16.thread
  %stac92hd73xx_10ch_loopback.sink = phi ptr [ @stac92hd73xx_10ch_loopback, %if.end16.thread ], [ %switch.load, %switch.lookup ]
  %aloopback_ctl20 = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 15
  %14 = ptrtoint ptr %aloopback_ctl20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %stac92hd73xx_10ch_loopback.sink, ptr %aloopback_ctl20, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end16.sw.epilog_crit_edge
  %aloopback_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 17
  %15 = ptrtoint ptr %aloopback_mask to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %aloopback_mask, align 8
  %aloopback_shift = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 18
  %16 = ptrtoint ptr %aloopback_shift to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 8, ptr %aloopback_shift, align 1
  %beep_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 67
  %17 = ptrtoint ptr %beep_nid to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 28, ptr %beep_nid, align 2
  %gpio_dir = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %gpio_dir, align 4
  %gpio_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %gpio_mask, align 8
  %eapd_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %eapd_mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %eapd_mask, align 4
  %gpio_data = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %gpio_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %gpio_data, align 8
  %22 = ptrtoint ptr %linear_tone_beep to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load22 = load i8, ptr %linear_tone_beep, align 8
  %bf.set24 = or i8 %bf.load22, -128
  store i8 %bf.set24, ptr %linear_tone_beep, align 8
  %num_pwrs = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 20
  %23 = ptrtoint ptr %num_pwrs to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %num_pwrs, align 8
  %pwr_nids = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 21
  %24 = ptrtoint ptr %pwr_nids to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @stac92hd73xx_pwr_nids, ptr %pwr_nids, align 4
  %25 = ptrtoint ptr %dac_min_mute.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %bf.load26 = load i64, ptr %dac_min_mute.i, align 4
  %bf.set32 = or i64 %bf.load26, 550829555712
  store i64 %bf.set32, ptr %dac_min_mute.i, align 4
  tail call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef nonnull @stac92hd73xx_models, ptr noundef nonnull @stac92hd73xx_fixup_tbl, ptr noundef nonnull @stac92hd73xx_fixups) #8
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 0) #8
  %26 = ptrtoint ptr %linear_tone_beep to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load33 = load i8, ptr %linear_tone_beep, align 8
  %27 = and i8 %bf.load33, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %if.then35, label %sw.epilog.if.end37_crit_edge

sw.epilog.if.end37_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then35:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = tail call i32 @snd_hda_add_verbs(ptr noundef %codec, ptr noundef nonnull @stac92hd73xx_core_init) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %sw.epilog.if.end37_crit_edge
  %call38 = tail call fastcc i32 @stac_parse_auto_config(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_hda_gen_free(ptr noundef %codec) #8
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %28 = ptrtoint ptr %linear_tone_beep to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load43 = load i8, ptr %linear_tone_beep, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load43)
  %tobool46.not = icmp sgt i8 %bf.load43, -1
  br i1 %tobool46.not, label %if.end41.if.end53_crit_edge, label %land.lhs.true

if.end41.if.end53_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end41
  %29 = ptrtoint ptr %spec2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %spec2.i, align 8
  %line_out_type.i = getelementptr inbounds %struct.hda_gen_spec, ptr %30, i32 0, i32 33, i32 5
  %31 = ptrtoint ptr %line_out_type.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %line_out_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.i = icmp eq i32 %32, 1
  %autocfg.i = getelementptr inbounds %struct.hda_gen_spec, ptr %30, i32 0, i32 33
  %line_out_pins.i = getelementptr inbounds %struct.hda_gen_spec, ptr %30, i32 0, i32 33, i32 1
  %speaker_pins.i = getelementptr inbounds %struct.hda_gen_spec, ptr %30, i32 0, i32 33, i32 3
  %speaker_outs.i = getelementptr inbounds %struct.hda_gen_spec, ptr %30, i32 0, i32 33, i32 2
  %nid_pin.0.i = select i1 %cmp.i, ptr %line_out_pins.i, ptr %speaker_pins.i
  %nids.0.in.i = select i1 %cmp.i, ptr %autocfg.i, ptr %speaker_outs.i
  %33 = ptrtoint ptr %nids.0.in.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %nids.0.i = load i32, ptr %nids.0.in.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nids.0.i)
  %cmp1127.i = icmp sgt i32 %nids.0.i, 0
  br i1 %cmp1127.i, label %for.body.i.preheader, label %land.lhs.true.if.then48_crit_edge

land.lhs.true.if.then48_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48

for.body.i.preheader:                             ; preds = %land.lhs.true
  %34 = ptrtoint ptr %nid_pin.0.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %nid_pin.0.i, align 2
  %call.i9499 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %codec, i16 noundef zeroext %35) #8
  %call12.i100 = tail call i32 @snd_hda_get_input_pin_attr(i32 noundef %call.i9499) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i100)
  %cmp13.i101 = icmp eq i32 %call12.i100, 1
  br i1 %cmp13.i101, label %for.body.i.preheader.if.end53_crit_edge, label %for.body.i.preheader.for.cond.i_crit_edge

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.body.i.preheader.if.end53_crit_edge:          ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %i.028.i102 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.028.i102, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %nids.0.i)
  %exitcond.not.i = icmp eq i32 %inc.i, %nids.0.i
  br i1 %exitcond.not.i, label %for.cond.i.has_builtin_speaker.exit_crit_edge, label %for.body.i

for.cond.i.has_builtin_speaker.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %has_builtin_speaker.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr i16, ptr %nid_pin.0.i, i32 %inc.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.i, align 2
  %call.i94 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %codec, i16 noundef zeroext %37) #8
  %call12.i = tail call i32 @snd_hda_get_input_pin_attr(i32 noundef %call.i94) #8
  %cmp13.i = icmp eq i32 %call12.i, 1
  br i1 %cmp13.i, label %for.body.i.has_builtin_speaker.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

for.body.i.has_builtin_speaker.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %has_builtin_speaker.exit

has_builtin_speaker.exit:                         ; preds = %for.body.i.has_builtin_speaker.exit_crit_edge, %for.cond.i.has_builtin_speaker.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %nids.0.i)
  %cmp11.i.le = icmp slt i32 %inc.i, %nids.0.i
  br i1 %cmp11.i.le, label %has_builtin_speaker.exit.if.end53_crit_edge, label %has_builtin_speaker.exit.if.then48_crit_edge

has_builtin_speaker.exit.if.then48_crit_edge:     ; preds = %has_builtin_speaker.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48

has_builtin_speaker.exit.if.end53_crit_edge:      ; preds = %has_builtin_speaker.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then48:                                        ; preds = %has_builtin_speaker.exit.if.then48_crit_edge, %land.lhs.true.if.then48_crit_edge
  %38 = ptrtoint ptr %linear_tone_beep to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load50 = load i8, ptr %linear_tone_beep, align 8
  %bf.clear51 = and i8 %bf.load50, 127
  store i8 %bf.clear51, ptr %linear_tone_beep, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %has_builtin_speaker.exit.if.end53_crit_edge, %for.body.i.preheader.if.end53_crit_edge, %if.end41.if.end53_crit_edge
  %proc_widget_hook = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 36
  %39 = ptrtoint ptr %proc_widget_hook to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @stac92hd7x_proc_hook, ptr %proc_widget_hook, align 8
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then40, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %if.then40 ], [ 0, %if.end53 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_stac92hd95(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 7104) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #8
  %spec2.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec2.i, align 8
  %no_trigger_sense.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %2 = ptrtoint ptr %no_trigger_sense.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %no_trigger_sense.i, align 4
  %dac_min_mute.i = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 58
  %3 = ptrtoint ptr %dac_min_mute.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load4.i = load i64, ptr %dac_min_mute.i, align 4
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %patch_ops.i, ptr @stac_patch_ops, i32 40)
  %power_caps = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 13
  %5 = ptrtoint ptr %power_caps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %power_caps, align 8
  %and = and i32 %6, 2147483647
  store i32 %and, ptr %power_caps, align 8
  %bf.set = or i32 %bf.load.i, 4210688
  store i32 %bf.set, ptr %no_trigger_sense.i, align 4
  %linear_tone_beep = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %linear_tone_beep to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load2 = load i8, ptr %linear_tone_beep, align 8
  %bf.clear3 = and i8 %bf.load2, -65
  store i8 %bf.clear3, ptr %linear_tone_beep, align 8
  %bf.set11 = or i64 %bf.load4.i, 551366426624
  store i64 %bf.set11, ptr %dac_min_mute.i, align 4
  %beep_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i.i, i32 0, i32 67
  %8 = ptrtoint ptr %beep_nid to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 25, ptr %beep_nid, align 2
  %pwr_nids = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 21
  %9 = ptrtoint ptr %pwr_nids to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @stac92hd95_pwr_nids, ptr %pwr_nids, align 4
  %num_pwrs = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 20
  %10 = ptrtoint ptr %num_pwrs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %num_pwrs, align 8
  %default_polarity = getelementptr inbounds %struct.sigmatel_spec, ptr %call7.i.i.i, i32 0, i32 11
  %11 = ptrtoint ptr %default_polarity to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %default_polarity, align 8
  tail call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef nonnull @stac92hd95_models, ptr noundef nonnull @stac92hd95_fixup_tbl, ptr noundef nonnull @stac92hd95_fixups) #8
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 0) #8
  %12 = ptrtoint ptr %spec2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spec2.i, align 8
  %eapd_mask.i = getelementptr inbounds %struct.sigmatel_spec, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %eapd_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %eapd_mask.i, align 4
  %gpio_mask.i = getelementptr inbounds %struct.sigmatel_spec, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %gpio_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gpio_mask.i, align 8
  %or.i = or i32 %17, %15
  store i32 %or.i, ptr %gpio_mask.i, align 8
  %gpio_led.i = getelementptr inbounds %struct.sigmatel_spec, ptr %13, i32 0, i32 7
  %18 = ptrtoint ptr %gpio_led.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gpio_led.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i37 = icmp eq i32 %19, 0
  br i1 %tobool.not.i37, label %if.end.if.end11.i_crit_edge, label %if.then.i

if.end.if.end11.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then.i:                                        ; preds = %if.end
  %vref_mute_led_nid.i = getelementptr inbounds %struct.sigmatel_spec, ptr %13, i32 0, i32 9
  %20 = ptrtoint ptr %vref_mute_led_nid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vref_mute_led_nid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool2.not.i = icmp eq i32 %21, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %or6.i = or i32 %19, %or.i
  %22 = ptrtoint ptr %gpio_mask.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or6.i, ptr %gpio_mask.i, align 8
  %gpio_dir.i = getelementptr inbounds %struct.sigmatel_spec, ptr %13, i32 0, i32 4
  %23 = ptrtoint ptr %gpio_dir.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gpio_dir.i, align 4
  %or8.i = or i32 %24, %19
  store i32 %or8.i, ptr %gpio_dir.i, align 4
  %gpio_data.i = getelementptr inbounds %struct.sigmatel_spec, ptr %13, i32 0, i32 5
  %25 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gpio_data.i, align 8
  %or10.i = or i32 %26, %19
  store i32 %or10.i, ptr %gpio_data.i, align 8
  br label %if.end11.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %power_filter.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 35
  %27 = ptrtoint ptr %power_filter.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @stac_vref_led_power_filter, ptr %power_filter.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %if.then3.i, %if.end.if.end11.i_crit_edge
  %mic_mute_led_gpio.i = getelementptr inbounds %struct.sigmatel_spec, ptr %13, i32 0, i32 12
  %28 = ptrtoint ptr %mic_mute_led_gpio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mic_mute_led_gpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool12.not.i = icmp eq i32 %29, 0
  br i1 %tobool12.not.i, label %if.end11.i.stac_setup_gpio.exit_crit_edge, label %if.then13.i

if.end11.i.stac_setup_gpio.exit_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stac_setup_gpio.exit

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %gpio_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gpio_mask.i, align 8
  %or16.i = or i32 %31, %29
  store i32 %or16.i, ptr %gpio_mask.i, align 8
  %gpio_dir18.i = getelementptr inbounds %struct.sigmatel_spec, ptr %13, i32 0, i32 4
  %32 = ptrtoint ptr %gpio_dir18.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gpio_dir18.i, align 4
  %or19.i = or i32 %33, %29
  store i32 %or19.i, ptr %gpio_dir18.i, align 4
  %mic_enabled.i = getelementptr inbounds %struct.sigmatel_spec, ptr %13, i32 0, i32 13
  %34 = ptrtoint ptr %mic_enabled.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %mic_enabled.i, align 8
  %gpio_data21.i = getelementptr inbounds %struct.sigmatel_spec, ptr %13, i32 0, i32 5
  %35 = ptrtoint ptr %gpio_data21.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %gpio_data21.i, align 8
  %or22.i = or i32 %36, %29
  store i32 %or22.i, ptr %gpio_data21.i, align 8
  %call.i = tail call i32 @snd_hda_gen_add_micmute_led_cdev(ptr noundef %codec, ptr noundef nonnull @stac_capture_led_update) #8
  br label %stac_setup_gpio.exit

stac_setup_gpio.exit:                             ; preds = %if.then13.i, %if.end11.i.stac_setup_gpio.exit_crit_edge
  %call13 = tail call fastcc i32 @stac_parse_auto_config(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %stac_setup_gpio.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_hda_gen_free(ptr noundef %codec) #8
  br label %cleanup

if.end16:                                         ; preds = %stac_setup_gpio.exit
  call void @__sanitizer_cov_trace_pc() #10
  %proc_widget_hook = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 36
  %37 = ptrtoint ptr %proc_widget_hook to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @stac92hd_proc_hook, ptr %proc_widget_hook, align 8
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then15 ], [ 0, %if.end16 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_eapd_power_filter(ptr noundef, i16 noundef zeroext, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_add_verbs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_pick_fixup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_apply_fixup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stac_parse_auto_config(ptr noundef %codec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %headset_jack = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %headset_jack to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %headset_jack, align 8
  %3 = lshr i8 %bf.load, 3
  %4 = and i8 %3, 4
  %5 = zext i8 %4 to i32
  %autocfg = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 33
  %call = tail call i32 @snd_hda_parse_pin_defcfg(ptr noundef %codec, ptr noundef %autocfg, ptr noundef null, i32 noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup100_crit_edge, label %if.end3

entry.cleanup100_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup100

if.end3:                                          ; preds = %entry
  %pcm_playback_hook = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 79
  %6 = ptrtoint ptr %pcm_playback_hook to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @stac_playback_pcm_hook, ptr %pcm_playback_hook, align 4
  %pcm_capture_hook = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 80
  %7 = ptrtoint ptr %pcm_capture_hook to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @stac_capture_pcm_hook, ptr %pcm_capture_hook, align 8
  %automute_hook = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 77
  %8 = ptrtoint ptr %automute_hook to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @stac_update_outputs, ptr %automute_hook, align 4
  %gpio_led = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %gpio_led to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gpio_led, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %if.end3.if.end10_crit_edge, label %if.then8

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef %codec, ptr noundef nonnull @stac_vmaster_hook) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end3.if.end10_crit_edge
  %call13 = tail call i32 @snd_hda_gen_parse_auto_config(ptr noundef %codec, ptr noundef %autocfg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end10.cleanup100_crit_edge, label %if.end16

if.end10.cleanup100_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup100

if.end16:                                         ; preds = %if.end10
  %vref_mute_led_nid = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %vref_mute_led_nid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vref_mute_led_nid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool17.not = icmp eq i32 %12, 0
  br i1 %tobool17.not, label %if.end16.if.end25_crit_edge, label %if.then18

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then18:                                        ; preds = %if.end16
  %conv = trunc i32 %12 to i16
  %call20 = tail call i32 @snd_hda_gen_fix_pin_power(ptr noundef %codec, i16 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then18.cleanup100_crit_edge, label %if.then18.if.end25_crit_edge

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then18.cleanup100_crit_edge:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup100

if.end25:                                         ; preds = %if.then18.if.end25_crit_edge, %if.end16.if.end25_crit_edge
  %anabeep_nid = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 23
  %13 = ptrtoint ptr %anabeep_nid to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %anabeep_nid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp27.not = icmp eq i16 %14, 0
  br i1 %cmp27.not, label %if.end25.if.end36_crit_edge, label %if.then29

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then29:                                        ; preds = %if.end25
  %15 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spec1, align 8
  %call.i = tail call i32 @query_amp_caps(ptr noundef %codec, i16 noundef zeroext %14, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not.i = icmp sgt i32 %call.i, -1
  br i1 %tobool.not.i, label %if.then29.if.end13.i_crit_edge, label %if.then.i

if.then29.if.end13.i_crit_edge:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then.i:                                        ; preds = %if.then29
  %anabeep_nid.i = getelementptr inbounds %struct.sigmatel_spec, ptr %16, i32 0, i32 23
  %17 = ptrtoint ptr %anabeep_nid.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %anabeep_nid.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %14)
  %cmp.i = icmp eq i16 %18, %14
  %stac_auto_create_beep_ctls.abeep_mute_ctl.stac_auto_create_beep_ctls.dbeep_mute_ctl.i = select i1 %cmp.i, ptr @stac_auto_create_beep_ctls.abeep_mute_ctl, ptr @stac_auto_create_beep_ctls.dbeep_mute_ctl
  %call5.i = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %16, ptr noundef nonnull @.str.137, ptr noundef nonnull %stac_auto_create_beep_ctls.abeep_mute_ctl.stac_auto_create_beep_ctls.dbeep_mute_ctl.i) #8
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.then.i.cleanup100_crit_edge, label %if.end8.i

if.then.i.cleanup100_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup100

if.end8.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv2.i = zext i16 %14 to i32
  %or10.i = or i32 %conv2.i, 327680
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %call5.i, i32 0, i32 11
  %19 = ptrtoint ptr %private_value.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or10.i, ptr %private_value.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end8.i, %if.then29.if.end13.i_crit_edge
  %20 = and i32 %call.i, 32512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool16.not.i = icmp eq i32 %20, 0
  br i1 %tobool16.not.i, label %if.end13.i.if.end36_crit_edge, label %if.then17.i

if.end13.i.if.end36_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then17.i:                                      ; preds = %if.end13.i
  %call19.i = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %16, ptr noundef nonnull @.str.138, ptr noundef nonnull @stac_auto_create_beep_ctls.beep_vol_ctl) #8
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %if.then17.i.cleanup100_crit_edge, label %if.end22.i

if.then17.i.cleanup100_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup100

if.end22.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv23.i = zext i16 %14 to i32
  %or25.i = or i32 %conv23.i, 327680
  %private_value28.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %call19.i, i32 0, i32 11
  %21 = ptrtoint ptr %private_value28.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or25.i, ptr %private_value28.i, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end22.i, %if.end13.i.if.end36_crit_edge, %if.end25.if.end36_crit_edge
  %beep_nid = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 67
  %22 = ptrtoint ptr %beep_nid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %beep_nid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool38.not = icmp eq i16 %23, 0
  br i1 %tobool38.not, label %if.end36.if.end67_crit_edge, label %if.then39

if.end36.if.end67_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then39:                                        ; preds = %if.end36
  %24 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spec1, align 8
  %call.i155 = tail call i32 @query_amp_caps(ptr noundef %codec, i16 noundef zeroext %23, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i155)
  %tobool.not.i156 = icmp sgt i32 %call.i155, -1
  br i1 %tobool.not.i156, label %if.then39.if.end13.i168_crit_edge, label %if.then.i162

if.then39.if.end13.i168_crit_edge:                ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i168

if.then.i162:                                     ; preds = %if.then39
  %anabeep_nid.i157 = getelementptr inbounds %struct.sigmatel_spec, ptr %25, i32 0, i32 23
  %26 = ptrtoint ptr %anabeep_nid.i157 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %anabeep_nid.i157, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %23)
  %cmp.i158 = icmp eq i16 %27, %23
  %stac_auto_create_beep_ctls.abeep_mute_ctl.stac_auto_create_beep_ctls.dbeep_mute_ctl.i159 = select i1 %cmp.i158, ptr @stac_auto_create_beep_ctls.abeep_mute_ctl, ptr @stac_auto_create_beep_ctls.dbeep_mute_ctl
  %call5.i160 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %25, ptr noundef nonnull @.str.137, ptr noundef nonnull %stac_auto_create_beep_ctls.abeep_mute_ctl.stac_auto_create_beep_ctls.dbeep_mute_ctl.i159) #8
  %tobool6.not.i161 = icmp eq ptr %call5.i160, null
  br i1 %tobool6.not.i161, label %if.then.i162.cleanup100_crit_edge, label %if.end8.i166

if.then.i162.cleanup100_crit_edge:                ; preds = %if.then.i162
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup100

if.end8.i166:                                     ; preds = %if.then.i162
  call void @__sanitizer_cov_trace_pc() #10
  %conv2.i163 = zext i16 %23 to i32
  %or10.i164 = or i32 %conv2.i163, 327680
  %private_value.i165 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %call5.i160, i32 0, i32 11
  %28 = ptrtoint ptr %private_value.i165 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or10.i164, ptr %private_value.i165, align 4
  br label %if.end13.i168

if.end13.i168:                                    ; preds = %if.end8.i166, %if.then39.if.end13.i168_crit_edge
  %29 = and i32 %call.i155, 32512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool16.not.i167 = icmp eq i32 %29, 0
  br i1 %tobool16.not.i167, label %if.end13.i168.if.end46_crit_edge, label %if.then17.i171

if.end13.i168.if.end46_crit_edge:                 ; preds = %if.end13.i168
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then17.i171:                                   ; preds = %if.end13.i168
  %call19.i169 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %25, ptr noundef nonnull @.str.138, ptr noundef nonnull @stac_auto_create_beep_ctls.beep_vol_ctl) #8
  %tobool20.not.i170 = icmp eq ptr %call19.i169, null
  br i1 %tobool20.not.i170, label %if.then17.i171.cleanup100_crit_edge, label %if.end22.i175

if.then17.i171.cleanup100_crit_edge:              ; preds = %if.then17.i171
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup100

if.end22.i175:                                    ; preds = %if.then17.i171
  call void @__sanitizer_cov_trace_pc() #10
  %conv23.i172 = zext i16 %23 to i32
  %or25.i173 = or i32 %conv23.i172, 327680
  %private_value28.i174 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %call19.i169, i32 0, i32 11
  %30 = ptrtoint ptr %private_value28.i174 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or25.i173, ptr %private_value28.i174, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end22.i175, %if.end13.i168.if.end46_crit_edge
  %beep = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 12
  %31 = ptrtoint ptr %beep to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %beep, align 4
  %tobool47.not = icmp eq ptr %32, null
  br i1 %tobool47.not, label %if.end46.if.end67_crit_edge, label %if.then48

if.end46.if.end67_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then48:                                        ; preds = %if.end46
  %33 = ptrtoint ptr %headset_jack to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load49 = load i8, ptr %headset_jack, align 8
  %linear_tone = getelementptr inbounds %struct.hda_beep, ptr %32, i32 0, i32 5
  %34 = ptrtoint ptr %linear_tone to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load54 = load i8, ptr %linear_tone, align 2
  %35 = lshr i8 %bf.load49, 1
  %bf.shl = and i8 %35, 32
  %bf.clear55 = and i8 %bf.load54, -33
  %bf.set = or i8 %bf.clear55, %bf.shl
  store i8 %bf.set, ptr %linear_tone, align 2
  %call56 = tail call i32 @query_amp_caps(ptr noundef %codec, i16 noundef zeroext %23, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call56)
  %tobool57.not = icmp sgt i32 %call56, -1
  br i1 %tobool57.not, label %if.then58, label %if.then48.if.end67_crit_edge

if.then48.if.end67_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then58:                                        ; preds = %if.then48
  %36 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %spec1, align 8
  %call.i179 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %37, ptr noundef null, ptr noundef nonnull @stac_dig_beep_ctrl) #8
  %tobool.not.i180 = icmp eq ptr %call.i179, null
  br i1 %tobool.not.i180, label %if.then58.cleanup100_crit_edge, label %if.then58.if.end67_crit_edge

if.then58.if.end67_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then58.cleanup100_crit_edge:                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup100

if.end67:                                         ; preds = %if.then58.if.end67_crit_edge, %if.then48.if.end67_crit_edge, %if.end46.if.end67_crit_edge, %if.end36.if.end67_crit_edge
  %aloopback_ctl = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 15
  %38 = ptrtoint ptr %aloopback_ctl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %aloopback_ctl, align 8
  %tobool68.not = icmp eq ptr %39, null
  br i1 %tobool68.not, label %if.end67.if.end87_crit_edge, label %land.lhs.true

if.end67.if.end87_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

land.lhs.true:                                    ; preds = %if.end67
  %call69 = tail call i32 @snd_hda_get_bool_hint(ptr noundef %codec, ptr noundef nonnull @.str.134) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call69)
  %cmp70 = icmp eq i32 %call69, 1
  br i1 %cmp70, label %if.then72, label %land.lhs.true.if.end87_crit_edge

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then72:                                        ; preds = %land.lhs.true
  %40 = ptrtoint ptr %aloopback_ctl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %aloopback_ctl, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %43, 16
  %call74 = tail call i32 @snd_hdac_regmap_add_vendor_verb(ptr noundef %codec, i32 noundef %shr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %cleanup84, label %if.then72.cleanup100_crit_edge

if.then72.cleanup100_crit_edge:                   ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup100

cleanup84:                                        ; preds = %if.then72
  %44 = ptrtoint ptr %aloopback_ctl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %aloopback_ctl, align 8
  %call80 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %1, ptr noundef null, ptr noundef %45) #8
  %tobool81.not.not = icmp eq ptr %call80, null
  br i1 %tobool81.not.not, label %cleanup84.cleanup100_crit_edge, label %cleanup84.if.end87_crit_edge

cleanup84.if.end87_crit_edge:                     ; preds = %cleanup84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

cleanup84.cleanup100_crit_edge:                   ; preds = %cleanup84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup100

if.end87:                                         ; preds = %cleanup84.if.end87_crit_edge, %land.lhs.true.if.end87_crit_edge, %if.end67.if.end87_crit_edge
  %46 = ptrtoint ptr %headset_jack to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load88 = load i8, ptr %headset_jack, align 8
  %47 = and i8 %bf.load88, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool92.not = icmp eq i8 %47, 0
  br i1 %tobool92.not, label %if.end87.if.end99_crit_edge, label %if.then93

if.end87.if.end99_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.then93:                                        ; preds = %if.end87
  %48 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %spec1, align 8
  %spdif_labels.i = getelementptr inbounds %struct.sigmatel_spec, ptr %49, i32 0, i32 24
  %50 = ptrtoint ptr %spdif_labels.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %spdif_labels.i, align 8
  %dig_outs.i = getelementptr inbounds %struct.hda_gen_spec, ptr %49, i32 0, i32 33, i32 9
  %52 = ptrtoint ptr %dig_outs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dig_outs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp.i182 = icmp slt i32 %53, 1
  br i1 %cmp.i182, label %if.then93.if.end99_crit_edge, label %if.end.i

if.then93.if.end99_crit_edge:                     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.end.i:                                         ; preds = %if.then93
  %dig_out_pins.i = getelementptr inbounds %struct.hda_gen_spec, ptr %49, i32 0, i32 33, i32 10
  %54 = ptrtoint ptr %dig_out_pins.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %dig_out_pins.i, align 4
  %call.i.i = tail call i32 @snd_hda_get_connections(ptr noundef %codec, i16 noundef zeroext %55, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 2
  br i1 %cmp2.i, label %if.end.i.if.end99_crit_edge, label %for.body.lr.ph.i

if.end.i.if.end99_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %tobool.not.i183 = icmp eq ptr %51, null
  %spec.store.select.i = select i1 %tobool.not.i183, ptr @stac_spdif_labels, ptr %51
  %spdif_mux.i = getelementptr inbounds %struct.sigmatel_spec, ptr %49, i32 0, i32 25
  br label %for.body.i

for.body.i:                                       ; preds = %if.end34.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.065.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end34.i.for.body.i_crit_edge ]
  %arrayidx8.i = getelementptr ptr, ptr %spec.store.select.i, i32 %i.065.i
  %56 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx8.i, align 4
  %tobool9.not.i = icmp eq ptr %57, null
  br i1 %tobool9.not.i, label %do.end.i, label %if.end34.i, !prof !888

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 971, i32 noundef 9, ptr noundef null) #8
  br label %cleanup100

if.end34.i:                                       ; preds = %for.body.i
  %call36.i = tail call i32 @snd_hda_add_imux_item(ptr noundef %codec, ptr noundef %spdif_mux.i, ptr noundef nonnull %57, i32 noundef %i.065.i, ptr noundef null) #8
  %inc.i = add nuw nsw i32 %i.065.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i.i
  br i1 %exitcond.not.i, label %for.end.i, label %if.end34.i.for.body.i_crit_edge

if.end34.i.for.body.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %if.end34.i
  %call38.i = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %49, ptr noundef null, ptr noundef nonnull @stac_smux_mixer) #8
  %tobool39.not.i = icmp eq ptr %call38.i, null
  br i1 %tobool39.not.i, label %for.end.i.cleanup100_crit_edge, label %if.end41.i

for.end.i.cleanup100_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup100

if.end41.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %dig_outs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dig_outs.i, align 4
  %count.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %call38.i, i32 0, i32 6
  %60 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %count.i, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.end41.i, %if.end.i.if.end99_crit_edge, %if.then93.if.end99_crit_edge, %if.end87.if.end99_crit_edge
  %61 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %spec1, align 8
  %num_pwrs.i = getelementptr inbounds %struct.sigmatel_spec, ptr %62, i32 0, i32 20
  %63 = ptrtoint ptr %num_pwrs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_pwrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp54.not.i = icmp eq i32 %64, 0
  br i1 %cmp54.not.i, label %if.end99.cleanup100_crit_edge, label %for.body.lr.ph.i185

if.end99.cleanup100_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup100

for.body.lr.ph.i185:                              ; preds = %if.end99
  %pwr_nids.i = getelementptr inbounds %struct.sigmatel_spec, ptr %62, i32 0, i32 21
  %vref_mute_led_nid.i = getelementptr inbounds %struct.sigmatel_spec, ptr %62, i32 0, i32 9
  br label %for.body.i188

for.body.i188:                                    ; preds = %if.end13.i193.for.body.i188_crit_edge, %for.body.lr.ph.i185
  %i.055.i = phi i32 [ 0, %for.body.lr.ph.i185 ], [ %inc.i191, %if.end13.i193.for.body.i188_crit_edge ]
  %65 = ptrtoint ptr %pwr_nids.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pwr_nids.i, align 4
  %arrayidx.i = getelementptr i16, ptr %66, i32 %i.055.i
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx.i, align 2
  %call.i186 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %codec, i16 noundef zeroext %68) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i186)
  %cmp2.i187 = icmp ult i32 %call.i186, 1073741824
  br i1 %cmp2.i187, label %land.lhs.true.i, label %for.body.i188.if.else.i_crit_edge

for.body.i188.if.else.i_crit_edge:                ; preds = %for.body.i188
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.body.i188
  %69 = ptrtoint ptr %vref_mute_led_nid.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %vref_mute_led_nid.i, align 8
  %conv.i = zext i16 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %conv.i)
  %cmp3.not.i = icmp eq i32 %70, %conv.i
  br i1 %cmp3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %call6.i = tail call zeroext i1 @is_jack_detectable(ptr noundef %codec, i16 noundef zeroext %68) #8
  br i1 %call6.i, label %if.then.i190, label %land.lhs.true5.i.if.else.i_crit_edge

land.lhs.true5.i.if.else.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i190:                                     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i189 = tail call ptr @snd_hda_jack_detect_enable_callback_mst(ptr noundef %codec, i16 noundef zeroext %68, i32 noundef 0, ptr noundef nonnull @jack_update_power) #8
  br label %if.end13.i193

if.else.i:                                        ; preds = %land.lhs.true5.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %for.body.i188.if.else.i_crit_edge
  %shr.mask.i = and i32 %call.i186, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr.mask.i)
  %cmp9.i = icmp eq i32 %shr.mask.i, 1073741824
  %71 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %spec1, align 8
  %num_pwrs.i.i = getelementptr inbounds %struct.sigmatel_spec, ptr %72, i32 0, i32 20
  %73 = ptrtoint ptr %num_pwrs.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_pwrs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp42.not.i.i = icmp eq i32 %74, 0
  br i1 %cmp9.i, label %if.then11.i, label %if.else12.i

if.then11.i:                                      ; preds = %if.else.i
  br i1 %cmp42.not.i.i, label %if.then11.i.if.end13.i193_crit_edge, label %for.body.lr.ph.i.i

if.then11.i.if.end13.i193_crit_edge:              ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i193

for.body.lr.ph.i.i:                               ; preds = %if.then11.i
  %pwr_nids.i.i = getelementptr inbounds %struct.sigmatel_spec, ptr %72, i32 0, i32 21
  %75 = ptrtoint ptr %pwr_nids.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pwr_nids.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %idx.043.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i16, ptr %76, i32 %idx.043.i.i
  %77 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %78, i16 %68)
  %cmp4.i.i = icmp eq i16 %78, %68
  br i1 %cmp4.i.i, label %if.end10.i.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %idx.043.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %74
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end13.i193_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.if.end13.i193_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i193

if.end10.i.i:                                     ; preds = %for.body.i.i
  %shl.i.i = shl nuw i32 1, %idx.043.i.i
  %power_map_bits.i.i = getelementptr inbounds %struct.sigmatel_spec, ptr %72, i32 0, i32 19
  %79 = ptrtoint ptr %power_map_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %power_map_bits.i.i, align 4
  %or.i.i = or i32 %80, %shl.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %80)
  %cmp14.not.i.i = icmp eq i32 %or.i.i, %80
  br i1 %cmp14.not.i.i, label %if.end10.i.i.if.end13.i193_crit_edge, label %if.then16.i.i

if.end10.i.i.if.end13.i193_crit_edge:             ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i193

if.then16.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %power_map_bits.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or.i.i, ptr %power_map_bits.i.i, align 4
  br label %if.end13.i193

if.else12.i:                                      ; preds = %if.else.i
  br i1 %cmp42.not.i.i, label %if.else12.i.if.end13.i193_crit_edge, label %for.body.lr.ph.i34.i

if.else12.i.if.end13.i193_crit_edge:              ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i193

for.body.lr.ph.i34.i:                             ; preds = %if.else12.i
  %pwr_nids.i33.i = getelementptr inbounds %struct.sigmatel_spec, ptr %72, i32 0, i32 21
  %82 = ptrtoint ptr %pwr_nids.i33.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pwr_nids.i33.i, align 4
  br label %for.body.i38.i

for.body.i38.i:                                   ; preds = %for.inc.i41.i.for.body.i38.i_crit_edge, %for.body.lr.ph.i34.i
  %idx.043.i35.i = phi i32 [ 0, %for.body.lr.ph.i34.i ], [ %inc.i39.i, %for.inc.i41.i.for.body.i38.i_crit_edge ]
  %arrayidx.i36.i = getelementptr i16, ptr %83, i32 %idx.043.i35.i
  %84 = ptrtoint ptr %arrayidx.i36.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx.i36.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %85, i16 %68)
  %cmp4.i37.i = icmp eq i16 %85, %68
  br i1 %cmp4.i37.i, label %if.end10.i48.i, label %for.inc.i41.i

for.inc.i41.i:                                    ; preds = %for.body.i38.i
  %inc.i39.i = add nuw i32 %idx.043.i35.i, 1
  %exitcond.not.i40.i = icmp eq i32 %inc.i39.i, %74
  br i1 %exitcond.not.i40.i, label %for.inc.i41.i.if.end13.i193_crit_edge, label %for.inc.i41.i.for.body.i38.i_crit_edge

for.inc.i41.i.for.body.i38.i_crit_edge:           ; preds = %for.inc.i41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i38.i

for.inc.i41.i.if.end13.i193_crit_edge:            ; preds = %for.inc.i41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i193

if.end10.i48.i:                                   ; preds = %for.body.i38.i
  %shl.i42.i = shl nuw i32 1, %idx.043.i35.i
  %power_map_bits.i43.i = getelementptr inbounds %struct.sigmatel_spec, ptr %72, i32 0, i32 19
  %86 = ptrtoint ptr %power_map_bits.i43.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %power_map_bits.i43.i, align 4
  %neg.i44.i = xor i32 %shl.i42.i, -1
  %and.i45.i = and i32 %87, %neg.i44.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i45.i, i32 %87)
  %cmp14.not.i47.i = icmp eq i32 %and.i45.i, %87
  br i1 %cmp14.not.i47.i, label %if.end10.i48.i.if.end13.i193_crit_edge, label %if.then16.i49.i

if.end10.i48.i.if.end13.i193_crit_edge:           ; preds = %if.end10.i48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i193

if.then16.i49.i:                                  ; preds = %if.end10.i48.i
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %power_map_bits.i43.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %and.i45.i, ptr %power_map_bits.i43.i, align 4
  br label %if.end13.i193

if.end13.i193:                                    ; preds = %if.then16.i49.i, %if.end10.i48.i.if.end13.i193_crit_edge, %for.inc.i41.i.if.end13.i193_crit_edge, %if.else12.i.if.end13.i193_crit_edge, %if.then16.i.i, %if.end10.i.i.if.end13.i193_crit_edge, %for.inc.i.i.if.end13.i193_crit_edge, %if.then11.i.if.end13.i193_crit_edge, %if.then.i190
  %inc.i191 = add nuw i32 %i.055.i, 1
  %89 = ptrtoint ptr %num_pwrs.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_pwrs.i, align 8
  %cmp.i192 = icmp ult i32 %inc.i191, %90
  br i1 %cmp.i192, label %if.end13.i193.for.body.i188_crit_edge, label %if.end13.i193.cleanup100_crit_edge

if.end13.i193.cleanup100_crit_edge:               ; preds = %if.end13.i193
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup100

if.end13.i193.for.body.i188_crit_edge:            ; preds = %if.end13.i193
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i188

cleanup100:                                       ; preds = %if.end13.i193.cleanup100_crit_edge, %if.end99.cleanup100_crit_edge, %for.end.i.cleanup100_crit_edge, %do.end.i, %cleanup84.cleanup100_crit_edge, %if.then72.cleanup100_crit_edge, %if.then58.cleanup100_crit_edge, %if.then17.i171.cleanup100_crit_edge, %if.then.i162.cleanup100_crit_edge, %if.then17.i.cleanup100_crit_edge, %if.then.i.cleanup100_crit_edge, %if.then18.cleanup100_crit_edge, %if.end10.cleanup100_crit_edge, %entry.cleanup100_crit_edge
  %retval.3 = phi i32 [ -12, %cleanup84.cleanup100_crit_edge ], [ %call, %entry.cleanup100_crit_edge ], [ %call13, %if.end10.cleanup100_crit_edge ], [ %call20, %if.then18.cleanup100_crit_edge ], [ -22, %do.end.i ], [ -12, %for.end.i.cleanup100_crit_edge ], [ 0, %if.end99.cleanup100_crit_edge ], [ -12, %if.then17.i.cleanup100_crit_edge ], [ -12, %if.then.i.cleanup100_crit_edge ], [ -12, %if.then58.cleanup100_crit_edge ], [ -12, %if.then17.i171.cleanup100_crit_edge ], [ -12, %if.then.i162.cleanup100_crit_edge ], [ -12, %if.then72.cleanup100_crit_edge ], [ 0, %if.end13.i193.cleanup100_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_gen_free(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_spec_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_build_controls(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_build_pcms(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac_init(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %gpio_mask.i = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 3
  %call.i.i = tail call i32 @snd_hda_get_int_hint(ptr noundef %codec, ptr noundef nonnull @.str.92, ptr noundef %gpio_mask.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %gpio_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_mask.i, align 8
  %gpio_data.i = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %gpio_data.i, align 8
  %gpio_dir.i = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %gpio_dir.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %3, ptr %gpio_dir.i, align 4
  %eapd_mask.i = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %eapd_mask.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %eapd_mask.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %gpio_dir3.i = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 4
  %call.i56.i = tail call i32 @snd_hda_get_int_hint(ptr noundef %codec, ptr noundef nonnull @.str.93, ptr noundef %gpio_dir3.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i)
  %tobool.not.i57.i = icmp eq i32 %call.i56.i, 0
  br i1 %tobool.not.i57.i, label %if.then5.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %gpio_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gpio_mask.i, align 8
  %9 = ptrtoint ptr %gpio_dir3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gpio_dir3.i, align 4
  %and.i = and i32 %10, %8
  store i32 %and.i, ptr %gpio_dir3.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %gpio_data9.i = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 5
  %call.i58.i = tail call i32 @snd_hda_get_int_hint(ptr noundef %codec, ptr noundef nonnull @.str.94, ptr noundef %gpio_data9.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i)
  %tobool.not.i59.i = icmp eq i32 %call.i58.i, 0
  br i1 %tobool.not.i59.i, label %if.then11.i, label %if.end8.i.if.end15.i_crit_edge

if.end8.i.if.end15.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %gpio_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gpio_mask.i, align 8
  %13 = ptrtoint ptr %gpio_data9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gpio_data9.i, align 8
  %and14.i = and i32 %14, %12
  store i32 %and14.i, ptr %gpio_data9.i, align 8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end15.i_crit_edge
  %eapd_mask16.i = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 2
  %call.i60.i = tail call i32 @snd_hda_get_int_hint(ptr noundef %codec, ptr noundef nonnull @.str.95, ptr noundef %eapd_mask16.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i)
  %tobool.not.i61.i = icmp eq i32 %call.i60.i, 0
  br i1 %tobool.not.i61.i, label %if.then18.i, label %if.end15.i.if.end22.i_crit_edge

if.end15.i.if.end22.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %gpio_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gpio_mask.i, align 8
  %17 = ptrtoint ptr %eapd_mask16.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %eapd_mask16.i, align 4
  %and21.i = and i32 %18, %16
  store i32 %and21.i, ptr %eapd_mask16.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end22.i_crit_edge
  %gpio_mute.i = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 6
  %call.i62.i = tail call i32 @snd_hda_get_int_hint(ptr noundef %codec, ptr noundef nonnull @.str.96, ptr noundef %gpio_mute.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62.i)
  %tobool.not.i63.i = icmp eq i32 %call.i62.i, 0
  br i1 %tobool.not.i63.i, label %if.then24.i, label %if.end22.i.if.end28.i_crit_edge

if.end22.i.if.end28.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.then24.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %gpio_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gpio_mask.i, align 8
  %21 = ptrtoint ptr %gpio_mute.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gpio_mute.i, align 4
  %and27.i = and i32 %22, %20
  store i32 %and27.i, ptr %gpio_mute.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then24.i, %if.end22.i.if.end28.i_crit_edge
  %call29.i = tail call i32 @snd_hda_get_bool_hint(ptr noundef %codec, ptr noundef nonnull @.str.97) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call29.i)
  %cmp.i = icmp sgt i32 %call29.i, -1
  br i1 %cmp.i, label %if.then30.i, label %if.end28.i.stac_store_hints.exit_crit_edge

if.end28.i.stac_store_hints.exit_crit_edge:       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stac_store_hints.exit

if.then30.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %eapd_switch.i = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 1
  %23 = trunc i32 %call29.i to i8
  %24 = ptrtoint ptr %eapd_switch.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %eapd_switch.i, align 8
  %bf.shl.i = shl i8 %23, 7
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %eapd_switch.i, align 8
  br label %stac_store_hints.exit

stac_store_hints.exit:                            ; preds = %if.then30.i, %if.end28.i.stac_store_hints.exit_crit_edge
  %eapd_switch = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %eapd_switch to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %eapd_switch, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %stac_store_hints.exit.if.end_crit_edge

stac_store_hints.exit.if.end_crit_edge:           ; preds = %stac_store_hints.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %stac_store_hints.exit
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %eapd_mask16.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %eapd_mask16.i, align 4
  %28 = ptrtoint ptr %gpio_data9.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %gpio_data9.i, align 8
  %or = or i32 %29, %27
  store i32 %or, ptr %gpio_data9.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %stac_store_hints.exit.if.end_crit_edge
  %30 = ptrtoint ptr %gpio_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gpio_mask.i, align 8
  %32 = ptrtoint ptr %gpio_dir3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gpio_dir3.i, align 4
  %34 = ptrtoint ptr %gpio_data9.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gpio_data9.i, align 8
  tail call fastcc void @stac_gpio_set(ptr noundef %codec, i32 noundef %31, i32 noundef %33, i32 noundef %35)
  %call = tail call i32 @snd_hda_gen_init(ptr noundef %codec) #8
  %num_pwrs = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 20
  %36 = ptrtoint ptr %num_pwrs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_pwrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool3.not = icmp eq i32 %37, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %afg = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 5
  %38 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %afg, align 4
  %power_map_bits = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 19
  %40 = ptrtoint ptr %power_map_bits to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %power_map_bits, align 4
  %call.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %39, i32 noundef 0, i32 noundef 2028, i32 noundef %41) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %42 = ptrtoint ptr %eapd_switch to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load7 = load i8, ptr %eapd_switch, align 8
  %43 = and i8 %bf.load7, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool10.not = icmp eq i8 %43, 0
  br i1 %tobool10.not, label %if.end6.if.end17_crit_edge, label %for.cond.preheader

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.cond.preheader:                               ; preds = %if.end6
  %num_all_adcs = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 44
  %44 = ptrtoint ptr %num_all_adcs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_all_adcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp39 = icmp sgt i32 %45, 0
  br i1 %cmp39, label %for.body.lr.ph, label %for.cond.preheader.if.end17_crit_edge

for.cond.preheader.if.end17_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %active_adcs = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %46 = ptrtoint ptr %active_adcs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %active_adcs, align 8
  %shl = shl nuw i32 1, %i.040
  %and = and i32 %47, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end14:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.hda_gen_spec, ptr %1, i32 0, i32 45, i32 %i.040
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx, align 2
  %call.i38 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %49, i32 noundef 0, i32 noundef 1797, i32 noundef 3) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.040, 1
  %50 = ptrtoint ptr %num_all_adcs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_all_adcs, align 4
  %cmp = icmp slt i32 %inc, %51
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end17_crit_edge

for.inc.if.end17_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end17:                                         ; preds = %for.inc.if.end17_crit_edge, %for.cond.preheader.if.end17_crit_edge, %if.end6.if.end17_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_jack_unsol_event(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac_suspend(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  tail call void @snd_hda_shutup_pins(ptr noundef %codec) #8
  %eapd_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %eapd_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eapd_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %gpio_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_mask, align 8
  %gpio_dir = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_dir, align 4
  %gpio_data = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %gpio_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_data, align 8
  %neg = xor i32 %3, -1
  %and = and i32 %9, %neg
  tail call fastcc void @stac_gpio_set(ptr noundef %codec, i32 noundef %5, i32 noundef %7, i32 noundef %and)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stac_gpio_set(ptr noundef %codec, i32 noundef %mask, i32 noundef %dir_mask, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %afg = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 5
  %0 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %afg, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stac_gpio_set.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stac_gpio_set, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !889

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stac_gpio_set.__UNIQUE_ID_ddebug243, ptr noundef %codec, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.98, i32 noundef %mask, i32 noundef %dir_mask, i32 noundef %data) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3861, i32 noundef 0) #8
  %neg = xor i32 %dir_mask, -1
  %and = and i32 %call.i, %neg
  %and5 = and i32 %data, %dir_mask
  %or = or i32 %and, %and5
  %call.i36 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3862, i32 noundef 0) #8
  %or7 = or i32 %call.i36, %mask
  %call.i37 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3863, i32 noundef 0) #8
  %or9 = or i32 %call.i37, %dir_mask
  %call.i38 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 2023, i32 noundef 0) #8
  %call.i39 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1814, i32 noundef %or7) #8
  %call.i40 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1815, i32 noundef %or9) #8
  tail call void @msleep(i32 noundef 1) #8
  %call.i41 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1813, i32 noundef %or) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_bool_hint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_int_hint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_read(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_write(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_shutup_pins(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stac9200_fixup_panasonic(ptr nocapture noundef readonly %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #5 align 64 {
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
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %gpio_dir = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 9, ptr %gpio_dir, align 4
  %gpio_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 9, ptr %gpio_mask, align 8
  %gpio_data = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %gpio_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %gpio_data, align 8
  %suppress_auto_mute = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 58
  %5 = ptrtoint ptr %suppress_auto_mute to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %bf.load = load i64, ptr %suppress_auto_mute, align 4
  %bf.set = or i64 %bf.load, 281474976710656
  store i64 %bf.set, ptr %suppress_auto_mute, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_parse_pin_defcfg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac_playback_pcm_hook(ptr nocapture noundef readnone %hinfo, ptr nocapture noundef readonly %codec, ptr nocapture noundef readnone %substream, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp = icmp eq i32 %action, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %stream_delay = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %stream_delay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac_capture_pcm_hook(ptr nocapture noundef readonly %hinfo, ptr noundef %codec, ptr nocapture noundef readnone %substream, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %powerdown_adcs = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %powerdown_adcs to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %powerdown_adcs, align 8
  %3 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_all_adcs = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %num_all_adcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_all_adcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp29 = icmp sgt i32 %5, 0
  br i1 %cmp29, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %nid = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 3
  %6 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nid, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hda_gen_spec, ptr %1, i32 0, i32 45, i32 %i.030
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %7)
  %cmp4 = icmp eq i16 %9, %7
  br i1 %cmp4, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %idx.0 = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.030, %for.body.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %10 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.312)
  switch i32 %action, label %for.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb9
  ]

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 40) #8
  %nid8 = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 3
  %11 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %nid8, align 4
  %call.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %12, i32 noundef 0, i32 noundef 1797, i32 noundef 0) #8
  %shl = shl nuw i32 1, %idx.0
  %active_adcs = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 22
  %13 = ptrtoint ptr %active_adcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %active_adcs, align 8
  %or = or i32 %14, %shl
  store i32 %or, ptr %active_adcs, align 8
  br label %cleanup

sw.bb9:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %nid10 = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 3
  %15 = ptrtoint ptr %nid10 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %nid10, align 4
  %call.i28 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %16, i32 noundef 0, i32 noundef 1797, i32 noundef 3) #8
  %shl12 = shl nuw i32 1, %idx.0
  %neg = xor i32 %shl12, -1
  %active_adcs13 = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 22
  %17 = ptrtoint ptr %active_adcs13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %active_adcs13, align 8
  %and = and i32 %18, %neg
  store i32 %and, ptr %active_adcs13, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb9, %sw.bb, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac_update_outputs(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %gpio_mute = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %gpio_mute to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_mute, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %afg = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 5
  %4 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %afg, align 4
  %call.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %5, i32 noundef 0, i32 noundef 3861, i32 noundef 0) #8
  %6 = ptrtoint ptr %gpio_mute to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_mute, align 4
  %and = and i32 %7, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %master_mute = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 58
  %8 = ptrtoint ptr %master_mute to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load = load i64, ptr %master_mute, align 4
  %bf.shl = select i1 %tobool3.not, i64 4503599627370496, i64 0
  %bf.clear = and i64 %bf.load, -4503599627370497
  %bf.set = or i64 %bf.shl, %bf.clear
  store i64 %bf.set, ptr %master_mute, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @snd_hda_gen_update_outputs(ptr noundef %codec) #8
  %eapd_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %eapd_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %eapd_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %if.end.if.end23_crit_edge, label %land.lhs.true

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end
  %eapd_switch = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %eapd_switch to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load5 = load i8, ptr %eapd_switch, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load5)
  %tobool6.not = icmp sgt i8 %bf.load5, -1
  br i1 %tobool6.not, label %land.lhs.true.if.end23_crit_edge, label %if.then7

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then7:                                         ; preds = %land.lhs.true
  %gpio_data = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %gpio_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gpio_data, align 8
  %speaker_muted = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 58
  %14 = ptrtoint ptr %speaker_muted to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %bf.load9 = load i64, ptr %speaker_muted, align 4
  %15 = and i64 %bf.load9, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool13.not = icmp eq i64 %15, 0
  %neg = xor i32 %10, -1
  %and16 = and i32 %13, %neg
  %or = or i32 %13, %10
  %val.0 = select i1 %tobool13.not, i32 %or, i32 %and16
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %val.0)
  %cmp.not = icmp eq i32 %13, %val.0
  br i1 %cmp.not, label %if.then7.if.end23_crit_edge, label %if.then20

if.then7.if.end23_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then20:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %gpio_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %val.0, ptr %gpio_data, align 8
  %gpio_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gpio_mask, align 8
  %gpio_dir = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gpio_dir, align 4
  tail call fastcc void @stac_gpio_set(ptr noundef %codec, i32 noundef %18, i32 noundef %20, i32 noundef %val.0)
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.then7.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %if.end.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_add_mute_led_cdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac_vmaster_hook(ptr nocapture noundef readonly %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %tobool = icmp ne i32 %brightness, 0
  tail call fastcc void @stac_update_led_status(ptr noundef %3, i1 noundef zeroext %tobool)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_parse_auto_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_fix_pin_power(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @query_amp_caps(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_regmap_add_vendor_verb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_gen_add_kctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_gen_update_outputs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stac_update_led_status(ptr noundef %codec, i1 noundef zeroext %muted) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %gpio_led = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %gpio_led to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_led, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpio_led_polarity = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %gpio_led_polarity to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_led_polarity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp ne i32 %5, 0
  %spec.select = xor i1 %tobool2.not, %muted
  %vref_mute_led_nid = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %vref_mute_led_nid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vref_mute_led_nid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.then8, label %if.else16

if.then8:                                         ; preds = %if.end
  br i1 %spec.select, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %gpio_data = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %gpio_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_data, align 8
  %or = or i32 %9, %3
  store i32 %or, ptr %gpio_data, align 8
  br label %if.end14

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i32 %3, -1
  %gpio_data13 = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %gpio_data13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio_data13, align 8
  %and = and i32 %11, %neg
  store i32 %and, ptr %gpio_data13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then10
  %gpio_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gpio_mask, align 8
  %gpio_dir = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gpio_dir, align 4
  %gpio_data15 = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %gpio_data15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gpio_data15, align 8
  tail call fastcc void @stac_gpio_set(ptr noundef %codec, i32 noundef %13, i32 noundef %15, i32 noundef %17)
  br label %cleanup

if.else16:                                        ; preds = %if.end
  %cond = select i1 %spec.select, i32 1, i32 2
  %vref_led = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %vref_led to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond, ptr %vref_led, align 4
  %conv = trunc i32 %7 to i16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stac_vrefout_set.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stac_update_led_status, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !889

if.then.i:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = and i32 %7, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stac_vrefout_set.__UNIQUE_ID_ddebug244, ptr noundef %codec, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.135, i32 noundef %conv.i, i32 noundef %cond) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.else16
  %call.i.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %conv, i32 noundef 0, i32 noundef 3847, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i.cleanup_crit_edge, label %if.end6.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %and7.i = and i32 %call.i.i, 248
  %or.i = or i32 %and7.i, %cond
  %call.i1.i = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %codec, i16 noundef zeroext %conv, i32 noundef %or.i, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %do.end.i.cleanup_crit_edge, %if.end14, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_hda_set_pin_ctl(ptr noundef, i16 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_switch_info(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_switch_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_switch_put(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_switch_get_beep(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_switch_put_beep(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_volume_info(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_volume_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_volume_put(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_tlv(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stac_dig_beep_switch_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %beep = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %beep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %beep, align 4
  %enabled = getelementptr inbounds %struct.hda_beep, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %enabled, align 2
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %bf.cast, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac_dig_beep_switch_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %call = tail call i32 @snd_hda_enable_beep_device(ptr noundef %1, i32 noundef %3) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_enable_beep_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_add_imux_item(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_connections(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac_smux_enum_info(ptr nocapture noundef readonly %kcontrol, ptr noundef %uinfo) #2 align 64 {
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
  %spdif_mux = getelementptr inbounds %struct.sigmatel_spec, ptr %3, i32 0, i32 25
  %call = tail call i32 @snd_hda_input_mux_info(ptr noundef %spdif_mux, ptr noundef %uinfo) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac_smux_enum_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #2 align 64 {
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
  %10 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %9) #8, !srcloc !890
  %and.i = and i32 %10, %sub.i
  %arrayidx = getelementptr %struct.sigmatel_spec, ptr %3, i32 0, i32 26, i32 %and.i
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac_smux_enum_put(ptr nocapture noundef readonly %kcontrol, ptr noundef %ucontrol) #2 align 64 {
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
  %10 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %9) #8, !srcloc !890
  %and.i = and i32 %10, %sub.i
  %spdif_mux = getelementptr inbounds %struct.sigmatel_spec, ptr %3, i32 0, i32 25
  %arrayidx = getelementptr %struct.hda_gen_spec, ptr %3, i32 0, i32 33, i32 10, i32 %and.i
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx, align 2
  %arrayidx2 = getelementptr %struct.sigmatel_spec, ptr %3, i32 0, i32 26, i32 %and.i
  %call3 = tail call i32 @snd_hda_input_mux_put(ptr noundef %1, ptr noundef %spdif_mux, ptr noundef %ucontrol, i16 noundef zeroext %12, ptr noundef %arrayidx2) #8
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_input_mux_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_input_mux_put(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_get_pincfg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_jack_detectable(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jack_update_power(ptr noundef %codec, ptr noundef readonly %jack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %num_pwrs = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %num_pwrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pwrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup17_crit_edge, label %if.end

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %jack, null
  br i1 %tobool2.not, label %if.end.for.body.lr.ph_crit_edge, label %land.lhs.true

if.end.for.body.lr.ph_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %jack to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %jack, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool3.not = icmp eq i16 %5, 0
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %call.i.i = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %codec, i16 noundef zeroext %5, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i.not = icmp eq i32 %call.i.i, 0
  %6 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spec1, align 8
  %num_pwrs.i = getelementptr inbounds %struct.sigmatel_spec, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %num_pwrs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_pwrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp42.not.i = icmp eq i32 %9, 0
  br i1 %cmp42.not.i, label %if.then4.cleanup17_crit_edge, label %for.body.lr.ph.i

if.then4.cleanup17_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

for.body.lr.ph.i:                                 ; preds = %if.then4
  %pwr_nids.i = getelementptr inbounds %struct.sigmatel_spec, ptr %7, i32 0, i32 21
  %10 = ptrtoint ptr %pwr_nids.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pwr_nids.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %idx.043.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %11, i32 %idx.043.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %5)
  %cmp4.i = icmp eq i16 %13, %5
  br i1 %cmp4.i, label %if.end10.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %idx.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.inc.i.cleanup17_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup17_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.end10.i:                                       ; preds = %for.body.i
  %shl.i = shl nuw i32 1, %idx.043.i
  %power_map_bits.i = getelementptr inbounds %struct.sigmatel_spec, ptr %7, i32 0, i32 19
  %14 = ptrtoint ptr %power_map_bits.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %power_map_bits.i, align 4
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %15, %neg.i
  %or.i = or i32 %15, %shl.i
  %val.0.i = select i1 %cmp.i.i.not, i32 %or.i, i32 %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0.i, i32 %15)
  %cmp14.not.i = icmp eq i32 %val.0.i, %15
  br i1 %cmp14.not.i, label %if.end10.i.cleanup17_crit_edge, label %if.then16.i

if.end10.i.cleanup17_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.then16.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %power_map_bits.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %val.0.i, ptr %power_map_bits.i, align 4
  %afg.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 5
  %17 = ptrtoint ptr %afg.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %afg.i, align 4
  %call.i.i38 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %18, i32 noundef 0, i32 noundef 2028, i32 noundef %val.0.i) #8
  br label %cleanup17

if.end7:                                          ; preds = %land.lhs.true
  %19 = ptrtoint ptr %num_pwrs to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %num_pwrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp66.not = icmp eq i32 %.pr, 0
  br i1 %cmp66.not, label %if.end7.for.end_crit_edge, label %if.end7.for.body.lr.ph_crit_edge

if.end7.for.body.lr.ph_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end7.for.body.lr.ph_crit_edge, %if.end.for.body.lr.ph_crit_edge
  %pwr_nids = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.067 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %20 = ptrtoint ptr %pwr_nids to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pwr_nids, align 4
  %arrayidx = getelementptr i16, ptr %21, i32 %i.067
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx, align 2
  %call.i = tail call ptr @snd_hda_jack_tbl_get_mst(ptr noundef %codec, i16 noundef zeroext %23, i32 noundef 0) #8
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %for.body.cleanup_crit_edge, label %if.end14

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %for.body
  %call.i.i39 = tail call i32 @snd_hda_jack_detect_state_mst(ptr noundef %codec, i16 noundef zeroext %23, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39)
  %cmp.i.i40.not = icmp eq i32 %call.i.i39, 0
  %24 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spec1, align 8
  %num_pwrs.i42 = getelementptr inbounds %struct.sigmatel_spec, ptr %25, i32 0, i32 20
  %26 = ptrtoint ptr %num_pwrs.i42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_pwrs.i42, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp42.not.i43 = icmp eq i32 %27, 0
  br i1 %cmp42.not.i43, label %if.end14.cleanup_crit_edge, label %for.body.lr.ph.i45

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i45:                               ; preds = %if.end14
  %pwr_nids.i44 = getelementptr inbounds %struct.sigmatel_spec, ptr %25, i32 0, i32 21
  %28 = ptrtoint ptr %pwr_nids.i44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pwr_nids.i44, align 4
  br label %for.body.i49

for.body.i49:                                     ; preds = %for.inc.i52.for.body.i49_crit_edge, %for.body.lr.ph.i45
  %idx.043.i46 = phi i32 [ 0, %for.body.lr.ph.i45 ], [ %inc.i50, %for.inc.i52.for.body.i49_crit_edge ]
  %arrayidx.i47 = getelementptr i16, ptr %29, i32 %idx.043.i46
  %30 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.i47, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %23)
  %cmp4.i48 = icmp eq i16 %31, %23
  br i1 %cmp4.i48, label %if.end10.i60, label %for.inc.i52

for.inc.i52:                                      ; preds = %for.body.i49
  %inc.i50 = add nuw i32 %idx.043.i46, 1
  %exitcond.not.i51 = icmp eq i32 %inc.i50, %27
  br i1 %exitcond.not.i51, label %for.inc.i52.cleanup_crit_edge, label %for.inc.i52.for.body.i49_crit_edge

for.inc.i52.for.body.i49_crit_edge:               ; preds = %for.inc.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i49

for.inc.i52.cleanup_crit_edge:                    ; preds = %for.inc.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10.i60:                                     ; preds = %for.body.i49
  %shl.i53 = shl nuw i32 1, %idx.043.i46
  %power_map_bits.i54 = getelementptr inbounds %struct.sigmatel_spec, ptr %25, i32 0, i32 19
  %32 = ptrtoint ptr %power_map_bits.i54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %power_map_bits.i54, align 4
  %neg.i55 = xor i32 %shl.i53, -1
  %and.i56 = and i32 %33, %neg.i55
  %or.i57 = or i32 %33, %shl.i53
  %val.0.i58 = select i1 %cmp.i.i40.not, i32 %or.i57, i32 %and.i56
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0.i58, i32 %33)
  %cmp14.not.i59 = icmp eq i32 %val.0.i58, %33
  br i1 %cmp14.not.i59, label %if.end10.i60.cleanup_crit_edge, label %if.then16.i61

if.end10.i60.cleanup_crit_edge:                   ; preds = %if.end10.i60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16.i61:                                    ; preds = %if.end10.i60
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %power_map_bits.i54 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %val.0.i58, ptr %power_map_bits.i54, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then16.i61, %if.end10.i60.cleanup_crit_edge, %for.inc.i52.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.067, 1
  %35 = ptrtoint ptr %num_pwrs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_pwrs, align 8
  %cmp = icmp ult i32 %inc, %36
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end7.for.end_crit_edge
  %afg = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 5
  %37 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %afg, align 4
  %power_map_bits = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 19
  %39 = ptrtoint ptr %power_map_bits to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %power_map_bits, align 4
  %call.i63 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %38, i32 noundef 0, i32 noundef 2028, i32 noundef %40) #8
  br label %cleanup17

cleanup17:                                        ; preds = %for.end, %if.then16.i, %if.end10.i.cleanup17_crit_edge, %for.inc.i.cleanup17_crit_edge, %if.then4.cleanup17_crit_edge, %entry.cleanup17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_jack_detect_enable_callback_mst(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_jack_detect_state_mst(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_jack_tbl_get_mst(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_override_amp_caps(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac922x_fixup_intel_mac_auto(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp.not = icmp eq i32 %action, 0
  br i1 %cmp.not, label %if.end, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end:                                           ; preds = %entry
  %fixup_id = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 41
  %0 = ptrtoint ptr %fixup_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %fixup_id, align 4
  tail call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef null, ptr noundef nonnull @stac922x_intel_mac_fixup_tbl, ptr noundef nonnull @stac922x_fixups) #8
  %1 = ptrtoint ptr %fixup_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fixup_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp2.not = icmp eq i32 %2, -1
  br i1 %cmp2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 0) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stac922x_fixup_intel_mac_gpio(ptr nocapture noundef readonly %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #5 align 64 {
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
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %gpio_dir = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %gpio_dir, align 4
  %gpio_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %gpio_mask, align 8
  %gpio_data = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %gpio_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %gpio_data, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac927x_proc_hook(ptr nocapture noundef readonly %buffer, ptr noundef %codec, i16 noundef zeroext %nid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %afg = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 5
  %0 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %afg, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %nid)
  %cmp = icmp eq i16 %1, %nid
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %call.i.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 4075, i32 noundef 0) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.193, i32 noundef %call.i.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac_aloopback_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #8, !srcloc !890
  %and.i = and i32 %8, %sub.i
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spec1, align 8
  %aloopback = getelementptr inbounds %struct.sigmatel_spec, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %aloopback to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %aloopback, align 4
  %aloopback_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %10, i32 0, i32 17
  %13 = ptrtoint ptr %aloopback_mask to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %aloopback_mask, align 8
  %conv = zext i8 %14 to i32
  %shl = shl i32 %conv, %and.i
  %and = and i32 %shl, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %lnot.ext, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac_aloopback_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
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
  %10 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %9) #8, !srcloc !890
  %and.i = and i32 %10, %sub.i
  %aloopback_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %3, i32 0, i32 17
  %11 = ptrtoint ptr %aloopback_mask to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %aloopback_mask, align 8
  %conv = zext i8 %12 to i32
  %shl = shl i32 %conv, %and.i
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  %aloopback2 = getelementptr inbounds %struct.sigmatel_spec, ptr %3, i32 0, i32 16
  %15 = ptrtoint ptr %aloopback2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %aloopback2, align 4
  %or = or i32 %16, %shl
  %neg = xor i32 %shl, -1
  %and = and i32 %16, %neg
  %val.0 = select i1 %tobool.not, i32 %and, i32 %or
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %val.0)
  %cmp = icmp eq i32 %16, %val.0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %entry
  %aloopback3 = getelementptr inbounds %struct.sigmatel_spec, ptr %3, i32 0, i32 16
  %17 = ptrtoint ptr %aloopback3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %val.0, ptr %aloopback3, align 4
  %afg = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %afg, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %20 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %private_value, align 4
  %and8 = and i32 %21, 65535
  %call.i = tail call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %19, i32 noundef 0, i32 noundef %and8, i32 noundef 0) #8
  %aloopback_shift = getelementptr inbounds %struct.sigmatel_spec, ptr %3, i32 0, i32 18
  %22 = ptrtoint ptr %aloopback_shift to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %aloopback_shift, align 1
  %conv10 = zext i8 %23 to i32
  %shr = lshr i32 %call.i, %conv10
  %24 = ptrtoint ptr %aloopback3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %aloopback3, align 4
  %and12 = and i32 %25, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else18, label %if.then14

if.then14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 @snd_hdac_power_up(ptr noundef %1) #8
  %or17 = or i32 %shr, %shl
  br label %if.end23

if.else18:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call i32 @snd_hdac_power_down(ptr noundef %1) #8
  %neg21 = xor i32 %shl, -1
  %and22 = and i32 %shr, %neg21
  br label %if.end23

if.end23:                                         ; preds = %if.else18, %if.then14
  %dac_mode.0 = phi i32 [ %or17, %if.then14 ], [ %and22, %if.else18 ]
  %26 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %afg, align 4
  %28 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %private_value, align 4
  %30 = lshr i32 %29, 8
  %shl.i.i = and i32 %30, 16252672
  %conv.i.i = zext i16 %27 to i32
  %shl1.i.i = shl i32 %conv.i.i, 20
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %or2.i.i = or i32 %or.i.i, 524288
  %call.i.i = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %1, i32 noundef %or2.i.i, i32 noundef %dac_mode.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end23 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_down(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_regmap_write_raw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stac927x_fixup_ref_no_jd(ptr nocapture noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #6 align 64 {
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
  %no_jack_detect = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %0 = ptrtoint ptr %no_jack_detect to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %no_jack_detect, align 4
  %bf.set = or i32 %bf.load, 2097152
  store i32 %bf.set, ptr %no_jack_detect, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac927x_fixup_ref(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
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
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  tail call void @snd_hda_apply_pincfgs(ptr noundef %codec, ptr noundef nonnull @ref927x_pin_configs) #8
  %eapd_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 2
  %2 = call ptr @memset(ptr %eapd_mask, i32 0, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac927x_fixup_dell_dmic(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp.not = icmp eq i32 %action, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %subsystem_id = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 8
  %2 = ptrtoint ptr %subsystem_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subsystem_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 271057455, i32 %3)
  %cmp2.not = icmp eq i32 %3, 271057455
  br i1 %cmp2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %gpio_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %gpio_mask, align 8
  %eapd_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %eapd_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %eapd_mask, align 4
  %gpio_data = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %gpio_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %gpio_data, align 8
  %gpio_dir = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %gpio_dir, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call = tail call i32 @snd_hda_add_verbs(ptr noundef %codec, ptr noundef nonnull @dell_3st_core_init) #8
  %volknob_init = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %volknob_init to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %volknob_init, align 8
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %volknob_init, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac927x_fixup_volknob(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
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
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %call = tail call i32 @snd_hda_add_verbs(ptr noundef %codec, ptr noundef nonnull @stac927x_volknob_core_init) #8
  %volknob_init = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %volknob_init to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %volknob_init, align 8
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %volknob_init, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_apply_pincfgs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac9205_proc_hook(ptr nocapture noundef readonly %buffer, ptr noundef %codec, i16 noundef zeroext %nid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %afg = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 5
  %0 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %afg, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %nid)
  %cmp = icmp eq i16 %1, %nid
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %call.i.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 4064, i32 noundef 0) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.193, i32 noundef %call.i.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac9205_fixup_ref(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
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
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  tail call void @snd_hda_apply_pincfgs(ptr noundef %codec, ptr noundef nonnull @ref9205_pin_configs) #8
  %gpio_dir = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %gpio_dir, align 4
  %gpio_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %gpio_mask, align 8
  %eapd_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %eapd_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %eapd_mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac9205_fixup_dell_m43(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp = icmp eq i32 %action, 0
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %entry
  tail call void @snd_hda_apply_pincfgs(ptr noundef %codec, ptr noundef nonnull @dell_9205_m43_pin_configs) #8
  %afg = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 5
  %2 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %afg, align 4
  %conv.i.i = zext i16 %3 to i32
  %shl1.i.i = shl i32 %conv.i.i, 20
  %or2.i.i = or i32 %shl1.i.i, 989440
  %call.i.i = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %codec, i32 noundef %or2.i.i, i32 noundef 16) #8
  %4 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %afg, align 4
  %call.i = tail call ptr @snd_hda_jack_detect_enable_callback_mst(ptr noundef %codec, i16 noundef zeroext %5, i32 noundef 0, ptr noundef nonnull @stac_vref_event) #8
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %private_data = getelementptr inbounds %struct.hda_jack_callback, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %private_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %gpio_dir = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 11, ptr %gpio_dir, align 4
  %eapd_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %eapd_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %eapd_mask, align 4
  %gpio_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 27, ptr %gpio_mask, align 8
  %gpio_mute = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %gpio_mute to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16, ptr %gpio_mute, align 4
  %gpio_data = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %gpio_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %gpio_data, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stac9205_fixup_eapd(ptr nocapture noundef readonly %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #5 align 64 {
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
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %eapd_switch = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %eapd_switch to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %eapd_switch, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %eapd_switch, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac_vref_event(ptr noundef %codec, ptr nocapture noundef readonly %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %afg = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 5
  %0 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %afg, align 4
  %call.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3861, i32 noundef 0) #8
  %2 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %afg, align 4
  %private_data = getelementptr inbounds %struct.hda_jack_callback, ptr %event, i32 0, i32 3
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_data, align 4
  %6 = lshr i32 %call.i, %5
  %7 = and i32 %6, 1
  %call.i8 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %3, i32 noundef 0, i32 noundef 2016, i32 noundef %7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_set_pincfg(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_amp_init_stereo(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac92hd7x_proc_hook(ptr nocapture noundef readonly %buffer, ptr noundef %codec, i16 noundef zeroext %nid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %afg.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 5
  %0 = ptrtoint ptr %afg.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %afg.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %nid)
  %cmp.i = icmp eq i16 %1, %nid
  br i1 %cmp.i, label %if.then.i, label %entry.stac92hd_proc_hook.exit_crit_edge

entry.stac92hd_proc_hook.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %stac92hd_proc_hook.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %call.i.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 4076, i32 noundef 0) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.244, i32 noundef %call.i.i) #8
  br label %stac92hd_proc_hook.exit

stac92hd_proc_hook.exit:                          ; preds = %if.then.i, %entry.stac92hd_proc_hook.exit_crit_edge
  %4 = ptrtoint ptr %afg.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %afg.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %nid)
  %cmp = icmp eq i16 %5, %nid
  br i1 %cmp, label %if.then, label %stac92hd_proc_hook.exit.if.end_crit_edge

stac92hd_proc_hook.exit.if.end_crit_edge:         ; preds = %stac92hd_proc_hook.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %stac92hd_proc_hook.exit
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  %call.i.i8 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 4000, i32 noundef 0) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.193, i32 noundef %call.i.i8) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %stac92hd_proc_hook.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac92hd71bxx_fixup_ref(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp.not = icmp eq i32 %action, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  tail call void @snd_hda_apply_pincfgs(ptr noundef %codec, ptr noundef nonnull @ref92hd71bxx_pin_configs) #8
  %gpio_data = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %gpio_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %gpio_data, align 8
  %gpio_dir = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %gpio_dir, align 4
  %gpio_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %gpio_mask, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac92hd71bxx_fixup_hp_m4(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp.not = icmp eq i32 %action, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %afg = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 5
  %2 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %afg, align 4
  %conv.i.i = zext i16 %3 to i32
  %shl1.i.i = shl i32 %conv.i.i, 20
  %or2.i.i = or i32 %shl1.i.i, 989440
  %call.i.i = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %codec, i32 noundef %or2.i.i, i32 noundef 2) #8
  %4 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %afg, align 4
  %call.i = tail call ptr @snd_hda_jack_detect_enable_callback_mst(ptr noundef %codec, i16 noundef zeroext %5, i32 noundef 0, ptr noundef nonnull @stac_vref_event) #8
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %private_data = getelementptr inbounds %struct.hda_jack_callback, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %private_data, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %gpio_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gpio_mask, align 8
  %or = or i32 %8, 2
  store i32 %or, ptr %gpio_mask, align 8
  %call8 = tail call i32 @snd_hda_codec_set_pincfg(ptr noundef %codec, i16 noundef zeroext 14, i32 noundef 25243712) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stac92hd71bxx_fixup_hp_dv4(ptr nocapture noundef readonly %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp.not = icmp eq i32 %action, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %gpio_led = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %gpio_led to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %gpio_led, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac92hd71bxx_fixup_hp_dv5(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.313)
  switch i32 %action, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @snd_hda_codec_set_pincfg(ptr noundef %codec, i16 noundef zeroext 13, i32 noundef -1877540848) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val.i, align 4, !annotation !891
  %call.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 17, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %snd_hdac_read_parm.exit.thread, label %snd_hdac_read_parm.exit

snd_hdac_read_parm.exit.thread:                   ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %if.then

snd_hdac_read_parm.exit:                          ; preds = %sw.bb1
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %and = and i32 %3, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp = icmp ugt i32 %and, 5
  br i1 %cmp, label %snd_hdac_read_parm.exit.if.then_crit_edge, label %snd_hdac_read_parm.exit.sw.epilog_crit_edge

snd_hdac_read_parm.exit.sw.epilog_crit_edge:      ; preds = %snd_hdac_read_parm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

snd_hdac_read_parm.exit.if.then_crit_edge:        ; preds = %snd_hdac_read_parm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %snd_hdac_read_parm.exit.if.then_crit_edge, %snd_hdac_read_parm.exit.thread
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %4 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec1.i, align 8
  %call.i7 = call ptr @snd_hda_gen_add_kctl(ptr noundef %5, ptr noundef nonnull @.str.236, ptr noundef nonnull @stac_hp_bass_sw_ctrl) #8
  %tobool.not.i = icmp eq ptr %call.i7, null
  br i1 %tobool.not.i, label %if.then.sw.epilog_crit_edge, label %if.end.i

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %gpio_mask.i = getelementptr inbounds %struct.sigmatel_spec, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %gpio_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_mask.i, align 8
  %or.i = or i32 %7, 32
  store i32 %or.i, ptr %gpio_mask.i, align 8
  %gpio_dir.i = getelementptr inbounds %struct.sigmatel_spec, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %gpio_dir.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_dir.i, align 4
  %or2.i = or i32 %9, 32
  store i32 %or2.i, ptr %gpio_dir.i, align 4
  %gpio_data.i = getelementptr inbounds %struct.sigmatel_spec, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio_data.i, align 8
  %or3.i = or i32 %11, 32
  store i32 %or3.i, ptr %gpio_data.i, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i, %if.then.sw.epilog_crit_edge, %snd_hdac_read_parm.exit.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stac92hd71bxx_fixup_hp_hdx(ptr nocapture noundef readonly %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp.not = icmp eq i32 %action, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %gpio_led = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %gpio_led to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %gpio_led, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac92hd71bxx_fixup_hp(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp.not = icmp eq i32 %action, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %codec, i16 noundef zeroext 10) #8
  %shr.mask.i = and i32 %call.i, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr.mask.i)
  %cmp.not.i = icmp ne i32 %shr.mask.i, 1073741824
  %2 = and i32 %call.i, 13631488
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  %4 = and i1 %cmp.not.i, %3
  br i1 %4, label %land.lhs.true, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %call.i21 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %codec, i16 noundef zeroext 15) #8
  %shr.mask.i22 = and i32 %call.i21, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr.mask.i22)
  %cmp.not.i23 = icmp ne i32 %shr.mask.i22, 1073741824
  %5 = and i32 %call.i21, 13631488
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  %7 = and i1 %cmp.not.i23, %6
  br i1 %7, label %if.then3, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call.i24 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %codec, i16 noundef zeroext 10) #8
  %and.i = and i32 %call.i24, -15728896
  %or2.i = or i32 %and.i, 2097183
  %call3.i = tail call i32 @snd_hda_codec_set_pincfg(ptr noundef %codec, i16 noundef zeroext 10, i32 noundef %or2.i) #8
  %call.i25 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %codec, i16 noundef zeroext 15) #8
  %and.i26 = and i32 %call.i25, -15728896
  %or2.i27 = or i32 %and.i26, 2097183
  %call3.i28 = tail call i32 @snd_hda_codec_set_pincfg(ptr noundef %codec, i16 noundef zeroext 15, i32 noundef %or2.i27) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %call5 = tail call fastcc i32 @find_mute_led_cfg(ptr noundef %codec, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %do.body

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stac92hd71bxx_fixup_hp.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stac92hd71bxx_fixup_hp, %if.then11)) #8
          to label %cleanup [label %if.then11], !srcloc !889

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %gpio_led = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %gpio_led to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_led, align 8
  %gpio_led_polarity = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %gpio_led_polarity to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio_led_polarity, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stac92hd71bxx_fixup_hp.__UNIQUE_ID_ddebug246, ptr noundef %codec, ptr noundef nonnull @.str.238, i32 noundef %9, i32 noundef %11) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %do.body, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_hdac_read_parm(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stac_hp_bass_gpio_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
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
  %gpio_data = getelementptr inbounds %struct.sigmatel_spec, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %gpio_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_data, align 8
  %and = lshr i32 %5, 5
  %and.lobit = and i32 %and, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.lobit, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac_hp_bass_gpio_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
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
  %gpio_data2 = getelementptr inbounds %struct.sigmatel_spec, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %gpio_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_data2, align 8
  %and = and i32 %5, -33
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %cond = select i1 %tobool.not, i32 0, i32 32
  %or = or i32 %cond, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %5)
  %cmp = icmp eq i32 %or, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %gpio_data2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %gpio_data2, align 8
  %gpio_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gpio_mask, align 8
  %gpio_dir = getelementptr inbounds %struct.sigmatel_spec, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gpio_dir, align 4
  tail call fastcc void @stac_gpio_set(ptr noundef %1, i32 noundef %10, i32 noundef %12, i32 noundef %or)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_mute_led_cfg(ptr noundef %codec, i32 noundef %default_polarity) unnamed_addr #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %gpio_led = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 7
  %call.i = tail call i32 @snd_hda_get_int_hint(ptr noundef %codec, ptr noundef nonnull @.str.239, ptr noundef %gpio_led) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then, label %while.cond

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %gpio_led_polarity = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 8
  %call.i71 = tail call i32 @snd_hda_get_int_hint(ptr noundef %codec, ptr noundef nonnull @.str.240, ptr noundef %gpio_led_polarity) #8
  br label %cleanup

while.cond:                                       ; preds = %entry
  %subsystem_id = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 8
  %2 = ptrtoint ptr %subsystem_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subsystem_id, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.314)
  switch i32 %3, label %hp_blike_system.exit [
    i32 272372851, label %while.cond.cleanup_crit_edge
    i32 272373024, label %while.cond.cleanup_crit_edge78
    i32 272373025, label %while.cond.cleanup_crit_edge79
    i32 272373027, label %while.cond.cleanup_crit_edge80
    i32 272373028, label %while.cond.cleanup_crit_edge81
    i32 272373029, label %while.cond.cleanup_crit_edge82
    i32 272373538, label %while.cond.cleanup_crit_edge83
    i32 272373539, label %while.cond.cleanup_crit_edge84
    i32 272373540, label %while.cond.cleanup_crit_edge85
    i32 272373541, label %while.cond.cleanup_crit_edge86
    i32 272373542, label %while.cond.cleanup_crit_edge87
    i32 272373543, label %while.cond.cleanup_crit_edge88
    i32 272373544, label %while.cond.cleanup_crit_edge89
    i32 272373545, label %while.cond.cleanup_crit_edge90
    i32 272373546, label %while.cond.cleanup_crit_edge91
    i32 272373547, label %while.cond.cleanup_crit_edge92
    i32 272380030, label %while.cond.cleanup_crit_edge93
    i32 272380031, label %while.cond.cleanup_crit_edge94
    i32 272380032, label %while.cond.cleanup_crit_edge95
    i32 272380033, label %while.cond.cleanup_crit_edge96
    i32 272396295, label %while.cond.cleanup_crit_edge97
    i32 272396296, label %while.cond.cleanup_crit_edge98
  ]

while.cond.cleanup_crit_edge98:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.cleanup_crit_edge97:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.cleanup_crit_edge96:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.cleanup_crit_edge95:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.cleanup_crit_edge94:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.cleanup_crit_edge93:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.cleanup_crit_edge92:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.cleanup_crit_edge91:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.cleanup_crit_edge90:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.cleanup_crit_edge89:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.cleanup_crit_edge88:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.cleanup_crit_edge87:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.cleanup_crit_edge86:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.cleanup_crit_edge85:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.cleanup_crit_edge84:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.cleanup_crit_edge83:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.cleanup_crit_edge82:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.cleanup_crit_edge81:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.cleanup_crit_edge80:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.cleanup_crit_edge79:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.cleanup_crit_edge78:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

hp_blike_system.exit:                             ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %default_polarity)
  %switch = icmp ult i32 %default_polarity, 2
  br i1 %switch, label %if.then39, label %hp_blike_system.exit.cleanup_crit_edge

hp_blike_system.exit.cleanup_crit_edge:           ; preds = %hp_blike_system.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then39:                                        ; preds = %hp_blike_system.exit
  %5 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spec1, align 8
  %gpio_led.i = getelementptr inbounds %struct.sigmatel_spec, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %gpio_led.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gpio_led.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i73 = icmp eq i32 %8, 0
  br i1 %tobool.not.i73, label %if.end.i, label %if.then39.set_hp_led_gpio.exit_crit_edge

if.then39.set_hp_led_gpio.exit_crit_edge:         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_hp_led_gpio.exit

if.end.i:                                         ; preds = %if.then39
  %afg.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 5
  %9 = ptrtoint ptr %afg.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %afg.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #8
  %11 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i.i, align 4, !annotation !891
  %call.i.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %10, i32 noundef 17, ptr noundef nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.snd_hdac_read_parm.exit.i_crit_edge, label %cond.false.i.i

if.end.i.snd_hdac_read_parm.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_hdac_read_parm.exit.i

cond.false.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i.i, align 4
  %phi.bo.i = and i32 %13, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo.i)
  %phi.cmp.i = icmp eq i32 %phi.bo.i, 0
  %phi.sel.i = select i1 %phi.cmp.i, i32 1, i32 8
  br label %snd_hdac_read_parm.exit.i

snd_hdac_read_parm.exit.i:                        ; preds = %cond.false.i.i, %if.end.i.snd_hdac_read_parm.exit.i_crit_edge
  %cond.i.i = phi i32 [ %phi.sel.i, %cond.false.i.i ], [ 8, %if.end.i.snd_hdac_read_parm.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #8
  %14 = ptrtoint ptr %gpio_led.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond.i.i, ptr %gpio_led.i, align 8
  br label %set_hp_led_gpio.exit

set_hp_led_gpio.exit:                             ; preds = %snd_hdac_read_parm.exit.i, %if.then39.set_hp_led_gpio.exit_crit_edge
  %gpio_led_polarity40 = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %gpio_led_polarity40 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %default_polarity, ptr %gpio_led_polarity40, align 4
  br label %cleanup

cleanup:                                          ; preds = %set_hp_led_gpio.exit, %hp_blike_system.exit.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %while.cond.cleanup_crit_edge78, %while.cond.cleanup_crit_edge79, %while.cond.cleanup_crit_edge80, %while.cond.cleanup_crit_edge81, %while.cond.cleanup_crit_edge82, %while.cond.cleanup_crit_edge83, %while.cond.cleanup_crit_edge84, %while.cond.cleanup_crit_edge85, %while.cond.cleanup_crit_edge86, %while.cond.cleanup_crit_edge87, %while.cond.cleanup_crit_edge88, %while.cond.cleanup_crit_edge89, %while.cond.cleanup_crit_edge90, %while.cond.cleanup_crit_edge91, %while.cond.cleanup_crit_edge92, %while.cond.cleanup_crit_edge93, %while.cond.cleanup_crit_edge94, %while.cond.cleanup_crit_edge95, %while.cond.cleanup_crit_edge96, %while.cond.cleanup_crit_edge97, %while.cond.cleanup_crit_edge98, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %set_hp_led_gpio.exit ], [ 0, %hp_blike_system.exit.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge78 ], [ 0, %while.cond.cleanup_crit_edge79 ], [ 0, %while.cond.cleanup_crit_edge80 ], [ 0, %while.cond.cleanup_crit_edge81 ], [ 0, %while.cond.cleanup_crit_edge82 ], [ 0, %while.cond.cleanup_crit_edge83 ], [ 0, %while.cond.cleanup_crit_edge84 ], [ 0, %while.cond.cleanup_crit_edge85 ], [ 0, %while.cond.cleanup_crit_edge86 ], [ 0, %while.cond.cleanup_crit_edge87 ], [ 0, %while.cond.cleanup_crit_edge88 ], [ 0, %while.cond.cleanup_crit_edge89 ], [ 0, %while.cond.cleanup_crit_edge90 ], [ 0, %while.cond.cleanup_crit_edge91 ], [ 0, %while.cond.cleanup_crit_edge92 ], [ 0, %while.cond.cleanup_crit_edge93 ], [ 0, %while.cond.cleanup_crit_edge94 ], [ 0, %while.cond.cleanup_crit_edge95 ], [ 0, %while.cond.cleanup_crit_edge96 ], [ 0, %while.cond.cleanup_crit_edge97 ], [ 0, %while.cond.cleanup_crit_edge98 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac_vref_led_power_filter(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef %power_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %afg = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 5
  %0 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %afg, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %nid)
  %cmp = icmp eq i16 %1, %nid
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %power_state)
  %cmp3 = icmp eq i32 %power_state, 3
  %or.cond = and i1 %cmp3, %cmp
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @snd_hda_gen_path_power_filter(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef %power_state) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_add_micmute_led_cdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac_capture_led_update(ptr nocapture noundef readonly %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %tobool.not = icmp eq i32 %brightness, 0
  %mic_mute_led_gpio2 = getelementptr inbounds %struct.sigmatel_spec, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %mic_mute_led_gpio2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mic_mute_led_gpio2, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %gpio_data = getelementptr inbounds %struct.sigmatel_spec, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %gpio_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_data, align 8
  %or = or i32 %9, %7
  store i32 %or, ptr %gpio_data, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i32 %7, -1
  %gpio_data3 = getelementptr inbounds %struct.sigmatel_spec, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %gpio_data3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio_data3, align 8
  %and = and i32 %11, %neg
  store i32 %and, ptr %gpio_data3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %gpio_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gpio_mask, align 8
  %gpio_dir = getelementptr inbounds %struct.sigmatel_spec, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gpio_dir, align 4
  %gpio_data4 = getelementptr inbounds %struct.sigmatel_spec, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %gpio_data4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gpio_data4, align 8
  tail call fastcc void @stac_gpio_set(ptr noundef %3, i32 noundef %13, i32 noundef %15, i32 noundef %17)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_path_power_filter(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac92hd_proc_hook(ptr nocapture noundef readonly %buffer, ptr noundef %codec, i16 noundef zeroext %nid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %afg = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 5
  %0 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %afg, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %nid)
  %cmp = icmp eq i16 %1, %nid
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %call.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 4076, i32 noundef 0) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.244, i32 noundef %call.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac92hd83xxx_fixup_hp_zephyr(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp.not = icmp eq i32 %action, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_hda_apply_pincfgs(ptr noundef %codec, ptr noundef nonnull @hp_zephyr_pin_configs) #8
  %call = tail call i32 @snd_hda_add_verbs(ptr noundef %codec, ptr noundef nonnull @stac92hd83xxx_hp_zephyr_init) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stac92hd83xxx_fixup_hp_led(ptr nocapture noundef readonly %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #5 align 64 {
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
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %default_polarity = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %default_polarity to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %default_polarity, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stac92hd83xxx_fixup_hp_inv_led(ptr nocapture noundef readonly %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #5 align 64 {
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
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %default_polarity = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %default_polarity to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %default_polarity, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stac92hd83xxx_fixup_hp_mic_led(ptr nocapture noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #5 align 64 {
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
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %mic_mute_led_gpio = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %mic_mute_led_gpio to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %mic_mute_led_gpio, align 4
  %power_caps = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 13
  %3 = ptrtoint ptr %power_caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %power_caps, align 8
  %and = and i32 %4, -1073741825
  store i32 %and, ptr %power_caps, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stac92hd83xxx_fixup_hp_led_gpio10(ptr nocapture noundef readonly %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #5 align 64 {
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
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %gpio_led = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %gpio_led to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16, ptr %gpio_led, align 8
  %default_polarity = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %default_polarity to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %default_polarity, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stac92hd83xxx_fixup_headset_jack(ptr nocapture noundef readonly %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #5 align 64 {
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
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %headset_jack = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %headset_jack to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %headset_jack, align 8
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %headset_jack, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac92hd83xxx_fixup_hp(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp.not = icmp eq i32 %action, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vendor_id.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 7
  %2 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vendor_id.i, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.315)
  switch i32 %3, label %if.end.if.end5_crit_edge [
    i32 287143429, label %if.end.if.end.i_crit_edge
    i32 287143633, label %if.end.if.end.i_crit_edge26
  ]

if.end.if.end.i_crit_edge26:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end.i:                                         ; preds = %if.end.if.end.i_crit_edge, %if.end.if.end.i_crit_edge26
  %subsystem_id.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 8
  %5 = ptrtoint ptr %subsystem_id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %subsystem_id.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.316)
  switch i32 %6, label %if.end.i.if.end5_crit_edge [
    i32 272373272, label %if.end.i.if.then2_crit_edge
    i32 272373273, label %if.end.i.if.then2_crit_edge27
    i32 272373274, label %if.end.i.if.then2_crit_edge28
    i32 272373275, label %if.end.i.if.then2_crit_edge29
    i32 272373276, label %if.end.i.if.then2_crit_edge30
    i32 272373277, label %if.end.i.if.then2_crit_edge31
    i32 272373278, label %if.end.i.if.then2_crit_edge32
    i32 272373279, label %if.end.i.if.then2_crit_edge33
    i32 272373290, label %if.end.i.if.then2_crit_edge34
    i32 272373291, label %if.end.i.if.then2_crit_edge35
    i32 272373296, label %if.end.i.if.then2_crit_edge36
    i32 272373297, label %if.end.i.if.then2_crit_edge37
    i32 272373299, label %if.end.i.if.then2_crit_edge38
    i32 272373300, label %if.end.i.if.then2_crit_edge39
    i32 272373301, label %if.end.i.if.then2_crit_edge40
    i32 272381319, label %if.end.i.if.then2_crit_edge41
    i32 272381320, label %if.end.i.if.then2_crit_edge42
    i32 272381321, label %if.end.i.if.then2_crit_edge43
    i32 272381322, label %if.end.i.if.then2_crit_edge44
    i32 272381543, label %if.end.i.if.then2_crit_edge45
    i32 272381544, label %if.end.i.if.then2_crit_edge46
    i32 272381545, label %if.end.i.if.then2_crit_edge47
  ]

if.end.i.if.then2_crit_edge47:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end.i.if.then2_crit_edge46:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end.i.if.then2_crit_edge45:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end.i.if.then2_crit_edge44:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end.i.if.then2_crit_edge43:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end.i.if.then2_crit_edge42:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end.i.if.then2_crit_edge41:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end.i.if.then2_crit_edge40:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end.i.if.then2_crit_edge39:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end.i.if.then2_crit_edge38:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end.i.if.then2_crit_edge37:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end.i.if.then2_crit_edge36:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end.i.if.then2_crit_edge35:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end.i.if.then2_crit_edge34:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end.i.if.then2_crit_edge33:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end.i.if.then2_crit_edge32:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end.i.if.then2_crit_edge31:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end.i.if.then2_crit_edge30:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end.i.if.then2_crit_edge29:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end.i.if.then2_crit_edge28:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end.i.if.then2_crit_edge27:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end.i.if.then2_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then2:                                         ; preds = %if.end.i.if.then2_crit_edge, %if.end.i.if.then2_crit_edge27, %if.end.i.if.then2_crit_edge28, %if.end.i.if.then2_crit_edge29, %if.end.i.if.then2_crit_edge30, %if.end.i.if.then2_crit_edge31, %if.end.i.if.then2_crit_edge32, %if.end.i.if.then2_crit_edge33, %if.end.i.if.then2_crit_edge34, %if.end.i.if.then2_crit_edge35, %if.end.i.if.then2_crit_edge36, %if.end.i.if.then2_crit_edge37, %if.end.i.if.then2_crit_edge38, %if.end.i.if.then2_crit_edge39, %if.end.i.if.then2_crit_edge40, %if.end.i.if.then2_crit_edge41, %if.end.i.if.then2_crit_edge42, %if.end.i.if.then2_crit_edge43, %if.end.i.if.then2_crit_edge44, %if.end.i.if.then2_crit_edge45, %if.end.i.if.then2_crit_edge46, %if.end.i.if.then2_crit_edge47
  %call3 = tail call i32 @snd_hda_codec_set_pincfg(ptr noundef %codec, i16 noundef zeroext 10, i32 noundef 553721887) #8
  %call4 = tail call i32 @snd_hda_codec_set_pincfg(ptr noundef %codec, i16 noundef zeroext 15, i32 noundef 562110558) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %default_polarity = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %default_polarity to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %default_polarity, align 8
  %call6 = tail call fastcc i32 @find_mute_led_cfg(ptr noundef %codec, i32 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end5.if.end14_crit_edge, label %do.body

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

do.body:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stac92hd83xxx_fixup_hp.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stac92hd83xxx_fixup_hp, %if.then12)) #8
          to label %if.end14 [label %if.then12], !srcloc !889

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %gpio_led = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %gpio_led to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio_led, align 8
  %gpio_led_polarity = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %gpio_led_polarity to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gpio_led_polarity, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stac92hd83xxx_fixup_hp.__UNIQUE_ID_ddebug245, ptr noundef %codec, ptr noundef nonnull @.str.238, i32 noundef %11, i32 noundef %13) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.body, %if.end5.if.end14_crit_edge
  %line_in_auto_switch = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 58
  %14 = ptrtoint ptr %line_in_auto_switch to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %bf.load = load i64, ptr %line_in_auto_switch, align 4
  %bf.set = or i64 %bf.load, 1125899906842624
  store i64 %bf.set, ptr %line_in_auto_switch, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hp_envy_ts_fixup_dac_bind(ptr nocapture noundef readonly %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp.not = icmp eq i32 %action, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %preferred_dacs = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 64
  %2 = ptrtoint ptr %preferred_dacs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @hp_envy_ts_fixup_dac_bind.preferred_pairs, ptr %preferred_dacs, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stac92hd83xxx_fixup_gpio10_eapd(ptr nocapture noundef readonly %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp.not = icmp eq i32 %action, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %gpio_data = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %gpio_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16, ptr %gpio_data, align 8
  %gpio_dir = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16, ptr %gpio_dir, align 4
  %gpio_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %gpio_mask, align 8
  %eapd_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %eapd_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %eapd_mask, align 4
  %eapd_switch = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %eapd_switch to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %eapd_switch, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %eapd_switch, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stac92hd73xx_fixup_no_jd(ptr nocapture noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #6 align 64 {
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
  %no_jack_detect = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %0 = ptrtoint ptr %no_jack_detect to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %no_jack_detect, align 4
  %bf.set = or i32 %bf.load, 2097152
  store i32 %bf.set, ptr %no_jack_detect, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac92hd73xx_fixup_ref(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp.not = icmp eq i32 %action, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  tail call void @snd_hda_apply_pincfgs(ptr noundef %codec, ptr noundef nonnull @ref92hd73xx_pin_configs) #8
  %gpio_data = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %gpio_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %gpio_data, align 8
  %gpio_dir = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %gpio_dir, align 4
  %gpio_mask = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %gpio_mask, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac92hd73xx_fixup_dell_m6_amic(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp.not = icmp eq i32 %action, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1.i, align 8
  tail call void @snd_hda_apply_pincfgs(ptr noundef %codec, ptr noundef nonnull @dell_m6_pin_configs) #8
  %eapd_switch.i = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %eapd_switch.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %eapd_switch.i, align 8
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %eapd_switch.i, align 8
  %call = tail call i32 @snd_hda_codec_set_pincfg(ptr noundef %codec, i16 noundef zeroext 11, i32 noundef -1868103312) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac92hd73xx_fixup_dell_m6_dmic(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp.not = icmp eq i32 %action, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1.i, align 8
  tail call void @snd_hda_apply_pincfgs(ptr noundef %codec, ptr noundef nonnull @dell_m6_pin_configs) #8
  %eapd_switch.i = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %eapd_switch.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %eapd_switch.i, align 8
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %eapd_switch.i, align 8
  %call = tail call i32 @snd_hda_codec_set_pincfg(ptr noundef %codec, i16 noundef zeroext 19, i32 noundef -1868168864) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac92hd73xx_fixup_dell_m6_both(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp.not = icmp eq i32 %action, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1.i, align 8
  tail call void @snd_hda_apply_pincfgs(ptr noundef %codec, ptr noundef nonnull @dell_m6_pin_configs) #8
  %eapd_switch.i = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %eapd_switch.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %eapd_switch.i, align 8
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %eapd_switch.i, align 8
  %call = tail call i32 @snd_hda_codec_set_pincfg(ptr noundef %codec, i16 noundef zeroext 11, i32 noundef -1868103312) #8
  %call1 = tail call i32 @snd_hda_codec_set_pincfg(ptr noundef %codec, i16 noundef zeroext 19, i32 noundef -1868168864) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac92hd73xx_fixup_dell_eq(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp.not = icmp eq i32 %action, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  tail call void @snd_hda_apply_pincfgs(ptr noundef %codec, ptr noundef nonnull @dell_m6_pin_configs) #8
  %eapd_switch.i = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %eapd_switch.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %eapd_switch.i, align 8
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %eapd_switch.i, align 8
  %call = tail call i32 @snd_hda_add_verbs(ptr noundef %codec, ptr noundef nonnull @dell_eq_core_init) #8
  %3 = ptrtoint ptr %eapd_switch.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %eapd_switch.i, align 8
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %eapd_switch.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac92hd73xx_fixup_alienware_m17x(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp.not = icmp eq i32 %action, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  tail call void @snd_hda_apply_pincfgs(ptr noundef %codec, ptr noundef nonnull @alienware_m17x_pin_configs) #8
  %eapd_switch = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %eapd_switch to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %eapd_switch, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %eapd_switch, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stac92hd73xx_disable_automute(ptr nocapture noundef readonly %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp.not = icmp eq i32 %action, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %suppress_auto_mute = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %suppress_auto_mute to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %bf.load = load i64, ptr %suppress_auto_mute, align 4
  %bf.set = or i64 %bf.load, 281474976710656
  store i64 %bf.set, ptr %suppress_auto_mute, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_input_pin_attr(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac92hd95_fixup_hp_led(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp.not = icmp eq i32 %action, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %default_polarity = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %default_polarity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %default_polarity, align 8
  %call = tail call fastcc i32 @find_mute_led_cfg(ptr noundef %codec, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stac92hd95_fixup_hp_led.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stac92hd95_fixup_hp_led, %if.then7)) #8
          to label %cleanup [label %if.then7], !srcloc !889

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %gpio_led = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %gpio_led to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_led, align 8
  %gpio_led_polarity = getelementptr inbounds %struct.sigmatel_spec, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %gpio_led_polarity to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_led_polarity, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stac92hd95_fixup_hp_led.__UNIQUE_ID_ddebug247, ptr noundef %codec, ptr noundef nonnull @.str.238, i32 noundef %5, i32 noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 443)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 443)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !212, !213, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !321, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !673, !674, !676, !678, !680, !682, !684, !686, !688, !690, !692, !694, !696, !698, !700, !702, !704, !706, !708, !710, !712, !714, !716, !718, !720, !722, !724, !726, !728, !730, !732, !734, !736, !738, !740, !742, !744, !746, !748, !750, !752, !754, !756, !758, !760, !762, !764, !766, !768, !770, !772, !774, !775, !777, !779, !781, !782, !783, !784, !785, !786, !788, !790, !792, !794, !796, !798, !800, !802, !804, !806, !808, !810, !812, !814, !816, !818, !820, !822, !824, !826, !828, !830, !832, !834, !836, !838, !840, !842, !844, !846, !848, !850, !852, !854, !856, !858, !860, !862, !864, !866, !868, !870, !872, !874, !876, !878}
!llvm.module.flags = !{!879, !880, !881, !882, !883, !884, !885, !886}
!llvm.ident = !{!887}

!0 = !{ptr @__UNIQUE_ID_file248, !1, !"__UNIQUE_ID_file248", i1 false, i1 false}
!1 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5149, i32 1}
!2 = !{ptr @__UNIQUE_ID_license249, !1, !"__UNIQUE_ID_license249", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description250, !4, !"__UNIQUE_ID_description250", i1 false, i1 false}
!4 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5150, i32 1}
!5 = !{ptr @__initcall__kmod_snd_hda_codec_idt__251_5156_sigmatel_driver_init6, !6, !"__initcall__kmod_snd_hda_codec_idt__251_5156_sigmatel_driver_init6", i1 false, i1 false}
!6 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5156, i32 1}
!7 = !{ptr @__exitcall_sigmatel_driver_exit, !6, !"__exitcall_sigmatel_driver_exit", i1 false, i1 false}
!8 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @sigmatel_driver, !10, !"sigmatel_driver", i1 false, i1 false}
!10 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5152, i32 32}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5041, i32 2}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5042, i32 2}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5043, i32 2}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5044, i32 2}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5045, i32 2}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5046, i32 2}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5047, i32 2}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5048, i32 2}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5050, i32 2}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5051, i32 2}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5053, i32 2}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5055, i32 2}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5056, i32 2}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5057, i32 2}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5058, i32 2}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5059, i32 2}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5060, i32 2}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5061, i32 2}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5062, i32 2}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5063, i32 2}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5064, i32 2}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5065, i32 2}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5066, i32 2}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5067, i32 2}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5068, i32 2}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5069, i32 2}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5071, i32 2}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5072, i32 2}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5077, i32 2}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5078, i32 2}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5079, i32 2}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5080, i32 2}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5082, i32 2}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5083, i32 2}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5084, i32 2}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5085, i32 2}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5086, i32 2}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5087, i32 2}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5088, i32 2}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5089, i32 2}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5090, i32 2}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5091, i32 2}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5092, i32 2}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5093, i32 2}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5094, i32 2}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5095, i32 2}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5096, i32 2}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5097, i32 2}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5098, i32 2}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5099, i32 2}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5100, i32 2}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5101, i32 2}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5102, i32 2}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5103, i32 2}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5104, i32 2}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5105, i32 2}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5107, i32 2}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5109, i32 2}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5111, i32 2}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5113, i32 2}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5114, i32 2}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5115, i32 2}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5116, i32 2}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5117, i32 2}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5118, i32 2}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5119, i32 2}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5120, i32 2}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5121, i32 2}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5122, i32 2}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5123, i32 2}
!151 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5124, i32 2}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5125, i32 2}
!155 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5126, i32 2}
!157 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5127, i32 2}
!159 = !{ptr @.str.75, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5128, i32 2}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5129, i32 2}
!163 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5130, i32 2}
!165 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5131, i32 2}
!167 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5132, i32 2}
!169 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5133, i32 2}
!171 = !{ptr @.str.81, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5134, i32 2}
!173 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5135, i32 2}
!175 = !{ptr @.str.83, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5136, i32 2}
!177 = !{ptr @.str.84, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5137, i32 2}
!179 = !{ptr @.str.85, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5138, i32 2}
!181 = !{ptr @.str.86, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5139, i32 2}
!183 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5140, i32 2}
!185 = !{ptr @.str.88, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5141, i32 2}
!187 = !{ptr @.str.89, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5142, i32 2}
!189 = !{ptr @.str.90, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5143, i32 2}
!191 = !{ptr @.str.91, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5144, i32 2}
!193 = !{ptr @snd_hda_id_sigmatel, !194, !"snd_hda_id_sigmatel", i1 false, i1 false}
!194 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5040, i32 35}
!195 = !{ptr @stac_patch_ops, !196, !"stac_patch_ops", i1 false, i1 false}
!196 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4450, i32 35}
!197 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 548, i32 26}
!199 = !{ptr @.str.93, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 552, i32 26}
!201 = !{ptr @.str.94, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 554, i32 26}
!203 = !{ptr @.str.95, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 556, i32 26}
!205 = !{ptr @.str.96, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 558, i32 26}
!207 = !{ptr @.str.97, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 560, i32 37}
!209 = !{ptr @.str.98, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 294, i32 2}
!211 = !{ptr @.str.99, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.100, !210, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @stac_gpio_set.__UNIQUE_ID_ddebug243, !210, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!214 = !{ptr @stac9200_eapd_init, !215, !"stac9200_eapd_init", i1 false, i1 false}
!215 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 984, i32 30}
!216 = !{ptr @.str.101, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1446, i32 28}
!218 = !{ptr @.str.102, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1447, i32 33}
!220 = !{ptr @.str.103, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1448, i32 38}
!222 = !{ptr @.str.104, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1449, i32 38}
!224 = !{ptr @.str.105, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1450, i32 38}
!226 = !{ptr @.str.106, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1451, i32 38}
!228 = !{ptr @.str.107, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1452, i32 38}
!230 = !{ptr @.str.108, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1453, i32 38}
!232 = !{ptr @.str.109, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1454, i32 38}
!234 = !{ptr @.str.110, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1455, i32 38}
!236 = !{ptr @.str.111, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1456, i32 38}
!238 = !{ptr @.str.112, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1457, i32 38}
!240 = !{ptr @.str.113, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1458, i32 32}
!242 = !{ptr @.str.114, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1459, i32 34}
!244 = !{ptr @.str.115, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1460, i32 39}
!246 = !{ptr @stac9200_models, !247, !"stac9200_models", i1 false, i1 false}
!247 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1445, i32 37}
!248 = !{ptr @.str.116, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1466, i32 2}
!250 = !{ptr @.str.117, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1471, i32 2}
!252 = !{ptr @.str.118, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1473, i32 2}
!254 = !{ptr @.str.119, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1475, i32 2}
!256 = !{ptr @.str.120, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1481, i32 2}
!258 = !{ptr @.str.121, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1493, i32 2}
!260 = !{ptr @.str.122, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1495, i32 2}
!262 = !{ptr @.str.123, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1497, i32 2}
!264 = !{ptr @.str.124, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1499, i32 2}
!266 = !{ptr @.str.125, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1501, i32 2}
!268 = !{ptr @.str.126, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1509, i32 2}
!270 = !{ptr @.str.127, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1525, i32 2}
!272 = !{ptr @.str.128, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1529, i32 2}
!274 = !{ptr @.str.129, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1532, i32 2}
!276 = !{ptr @.str.130, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1534, i32 2}
!278 = !{ptr @.str.131, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1535, i32 2}
!280 = !{ptr @.str.132, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1536, i32 2}
!282 = !{ptr @.str.133, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1538, i32 2}
!284 = !{ptr @stac9200_fixup_tbl, !285, !"stac9200_fixup_tbl", i1 false, i1 false}
!285 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1464, i32 35}
!286 = !{ptr @stac9200_fixups, !287, !"stac9200_fixups", i1 false, i1 false}
!287 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1369, i32 31}
!288 = !{ptr @ref9200_pin_configs, !289, !"ref9200_pin_configs", i1 false, i1 false}
!289 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1102, i32 32}
!290 = !{ptr @oqo9200_pin_configs, !291, !"oqo9200_pin_configs", i1 false, i1 false}
!291 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1319, i32 32}
!292 = !{ptr @dell9200_d21_pin_configs, !293, !"dell9200_d21_pin_configs", i1 false, i1 false}
!293 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1144, i32 32}
!294 = !{ptr @dell9200_d22_pin_configs, !295, !"dell9200_d22_pin_configs", i1 false, i1 false}
!295 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1161, i32 32}
!296 = !{ptr @dell9200_d23_pin_configs, !297, !"dell9200_d23_pin_configs", i1 false, i1 false}
!297 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1182, i32 32}
!298 = !{ptr @dell9200_m21_pin_configs, !299, !"dell9200_m21_pin_configs", i1 false, i1 false}
!299 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1200, i32 32}
!300 = !{ptr @dell9200_m22_pin_configs, !301, !"dell9200_m22_pin_configs", i1 false, i1 false}
!301 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1220, i32 32}
!302 = !{ptr @dell9200_m23_pin_configs, !303, !"dell9200_m23_pin_configs", i1 false, i1 false}
!303 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1237, i32 32}
!304 = !{ptr @dell9200_m24_pin_configs, !305, !"dell9200_m24_pin_configs", i1 false, i1 false}
!305 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1256, i32 32}
!306 = !{ptr @dell9200_m25_pin_configs, !307, !"dell9200_m25_pin_configs", i1 false, i1 false}
!307 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1274, i32 32}
!308 = !{ptr @dell9200_m26_pin_configs, !309, !"dell9200_m26_pin_configs", i1 false, i1 false}
!309 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1291, i32 32}
!310 = !{ptr @dell9200_m27_pin_configs, !311, !"dell9200_m27_pin_configs", i1 false, i1 false}
!311 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1307, i32 32}
!312 = !{ptr @gateway9200_m4_pin_configs, !313, !"gateway9200_m4_pin_configs", i1 false, i1 false}
!313 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1114, i32 32}
!314 = !{ptr @gateway9200_m4_2_pin_configs, !315, !"gateway9200_m4_2_pin_configs", i1 false, i1 false}
!315 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1126, i32 32}
!316 = !{ptr @.str.134, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4325, i32 35}
!318 = !{ptr @.str.135, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 342, i32 2}
!320 = !{ptr @.str.136, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @stac_vrefout_set.__UNIQUE_ID_ddebug244, !319, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!322 = !{ptr @stac_auto_create_beep_ctls.abeep_mute_ctl, !323, !"abeep_mute_ctl", i1 false, i1 false}
!323 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 834, i32 39}
!324 = !{ptr @stac_auto_create_beep_ctls.dbeep_mute_ctl, !325, !"dbeep_mute_ctl", i1 false, i1 false}
!325 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 836, i32 39}
!326 = !{ptr @stac_auto_create_beep_ctls.beep_vol_ctl, !327, !"beep_vol_ctl", i1 false, i1 false}
!327 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 838, i32 39}
!328 = !{ptr @.str.137, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 849, i32 10}
!330 = !{ptr @.str.138, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 859, i32 10}
!332 = !{ptr @stac_dig_beep_ctrl, !333, !"stac_dig_beep_ctrl", i1 false, i1 false}
!333 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 887, i32 38}
!334 = !{ptr @.str.139, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 950, i32 2}
!336 = !{ptr @.str.140, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 950, i32 22}
!338 = !{ptr @.str.141, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 950, i32 38}
!340 = !{ptr @stac_spdif_labels, !341, !"stac_spdif_labels", i1 false, i1 false}
!341 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 949, i32 27}
!342 = !{ptr @.str.142, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 942, i32 10}
!344 = !{ptr @stac_smux_mixer, !345, !"stac_smux_mixer", i1 false, i1 false}
!345 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 940, i32 38}
!346 = !{ptr @stac922x_core_init, !347, !"stac922x_core_init", i1 false, i1 false}
!347 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1036, i32 30}
!348 = !{ptr @.str.143, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3611, i32 33}
!350 = !{ptr @.str.144, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3612, i32 33}
!352 = !{ptr @.str.145, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3613, i32 37}
!354 = !{ptr @.str.146, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3614, i32 37}
!356 = !{ptr @.str.147, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3615, i32 37}
!358 = !{ptr @.str.148, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3616, i32 37}
!360 = !{ptr @.str.149, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3617, i32 37}
!362 = !{ptr @.str.150, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3618, i32 39}
!364 = !{ptr @.str.151, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3619, i32 32}
!366 = !{ptr @.str.152, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3620, i32 38}
!368 = !{ptr @.str.153, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3621, i32 38}
!370 = !{ptr @.str.154, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3622, i32 38}
!372 = !{ptr @.str.155, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3623, i32 38}
!374 = !{ptr @.str.156, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3625, i32 37}
!376 = !{ptr @.str.157, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3626, i32 37}
!378 = !{ptr @.str.158, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3627, i32 37}
!380 = !{ptr @.str.159, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3628, i32 37}
!382 = !{ptr @.str.160, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3629, i32 37}
!384 = !{ptr @.str.161, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3630, i32 37}
!386 = !{ptr @stac922x_models, !387, !"stac922x_models", i1 false, i1 false}
!387 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3609, i32 37}
!388 = !{ptr @.str.162, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3641, i32 2}
!390 = !{ptr @.str.163, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3681, i32 2}
!392 = !{ptr @.str.164, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3694, i32 2}
!394 = !{ptr @.str.165, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3699, i32 2}
!396 = !{ptr @.str.166, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3718, i32 2}
!398 = !{ptr @.str.167, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3721, i32 2}
!400 = !{ptr @stac922x_fixup_tbl, !401, !"stac922x_fixup_tbl", i1 false, i1 false}
!401 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3634, i32 35}
!402 = !{ptr @stac922x_fixups, !403, !"stac922x_fixups", i1 false, i1 false}
!403 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3536, i32 31}
!404 = !{ptr @ref922x_pin_configs, !405, !"ref922x_pin_configs", i1 false, i1 false}
!405 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3286, i32 32}
!406 = !{ptr @d945gtp3_pin_configs, !407, !"d945gtp3_pin_configs", i1 false, i1 false}
!407 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3377, i32 32}
!408 = !{ptr @d945gtp5_pin_configs, !409, !"d945gtp5_pin_configs", i1 false, i1 false}
!409 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3391, i32 32}
!410 = !{ptr @intel_mac_v1_pin_configs, !411, !"intel_mac_v1_pin_configs", i1 false, i1 false}
!411 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3405, i32 32}
!412 = !{ptr @intel_mac_v2_pin_configs, !413, !"intel_mac_v2_pin_configs", i1 false, i1 false}
!413 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3419, i32 32}
!414 = !{ptr @intel_mac_v3_pin_configs, !415, !"intel_mac_v3_pin_configs", i1 false, i1 false}
!415 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3433, i32 32}
!416 = !{ptr @intel_mac_v4_pin_configs, !417, !"intel_mac_v4_pin_configs", i1 false, i1 false}
!417 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3447, i32 32}
!418 = !{ptr @intel_mac_v5_pin_configs, !419, !"intel_mac_v5_pin_configs", i1 false, i1 false}
!419 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3461, i32 32}
!420 = !{ptr @.str.168, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3491, i32 2}
!422 = !{ptr @stac922x_intel_mac_fixup_tbl, !423, !"stac922x_intel_mac_fixup_tbl", i1 false, i1 false}
!423 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3490, i32 35}
!424 = !{ptr @ecs202_pin_configs, !425, !"ecs202_pin_configs", i1 false, i1 false}
!425 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3475, i32 32}
!426 = !{ptr @dell_922x_d81_pin_configs, !427, !"dell_922x_d81_pin_configs", i1 false, i1 false}
!427 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3308, i32 32}
!428 = !{ptr @dell_922x_d82_pin_configs, !429, !"dell_922x_d82_pin_configs", i1 false, i1 false}
!429 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3327, i32 32}
!430 = !{ptr @dell_922x_m81_pin_configs, !431, !"dell_922x_m81_pin_configs", i1 false, i1 false}
!431 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3345, i32 32}
!432 = !{ptr @dell_922x_m82_pin_configs, !433, !"dell_922x_m82_pin_configs", i1 false, i1 false}
!433 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3363, i32 32}
!434 = !{ptr @.str.169, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4857, i32 22}
!436 = !{ptr @.str.170, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4858, i32 18}
!438 = !{ptr @stac927x_spdif_labels, !439, !"stac927x_spdif_labels", i1 false, i1 false}
!439 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4856, i32 27}
!440 = !{ptr @.str.171, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1100, i32 2}
!442 = !{ptr @stac927x_loopback, !443, !"stac927x_loopback", i1 false, i1 false}
!443 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1099, i32 38}
!444 = !{ptr @.str.172, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3949, i32 39}
!446 = !{ptr @.str.173, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3953, i32 39}
!448 = !{ptr @.str.174, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3954, i32 33}
!450 = !{ptr @.str.175, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3955, i32 34}
!452 = !{ptr @.str.176, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3956, i32 37}
!454 = !{ptr @.str.177, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3957, i32 39}
!456 = !{ptr @.str.178, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3958, i32 37}
!458 = !{ptr @stac927x_models, !459, !"stac927x_models", i1 false, i1 false}
!459 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3948, i32 37}
!460 = !{ptr @.str.179, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3969, i32 2}
!462 = !{ptr @.str.180, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3972, i32 2}
!464 = !{ptr @.str.181, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3977, i32 2}
!466 = !{ptr @.str.182, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3978, i32 2}
!468 = !{ptr @.str.183, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3981, i32 2}
!470 = !{ptr @.str.184, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3982, i32 2}
!472 = !{ptr @.str.185, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3983, i32 2}
!474 = !{ptr @.str.186, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3985, i32 2}
!476 = !{ptr @.str.187, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3989, i32 2}
!478 = !{ptr @.str.188, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3996, i32 2}
!480 = !{ptr @.str.189, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3998, i32 2}
!482 = !{ptr @stac927x_fixup_tbl, !483, !"stac927x_fixup_tbl", i1 false, i1 false}
!483 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3962, i32 35}
!484 = !{ptr @stac927x_fixups, !485, !"stac927x_fixups", i1 false, i1 false}
!485 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3865, i32 31}
!486 = !{ptr @ref927x_pin_configs, !487, !"ref927x_pin_configs", i1 false, i1 false}
!487 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3726, i32 32}
!488 = !{ptr @d965_3st_pin_configs, !489, !"d965_3st_pin_configs", i1 false, i1 false}
!489 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3744, i32 32}
!490 = !{ptr @d965_5st_pin_configs, !491, !"d965_5st_pin_configs", i1 false, i1 false}
!491 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3762, i32 32}
!492 = !{ptr @d965_5st_no_fp_pin_configs, !493, !"d965_5st_no_fp_pin_configs", i1 false, i1 false}
!493 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3780, i32 32}
!494 = !{ptr @d965_core_init, !495, !"d965_core_init", i1 false, i1 false}
!495 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1042, i32 30}
!496 = !{ptr @dell_3st_pin_configs, !497, !"dell_3st_pin_configs", i1 false, i1 false}
!497 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3798, i32 32}
!498 = !{ptr @nemo_pin_configs, !499, !"nemo_pin_configs", i1 false, i1 false}
!499 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1335, i32 32}
!500 = !{ptr @dell_3st_core_init, !501, !"dell_3st_core_init", i1 false, i1 false}
!501 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1050, i32 30}
!502 = !{ptr @stac927x_volknob_core_init, !503, !"stac927x_volknob_core_init", i1 false, i1 false}
!503 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1068, i32 30}
!504 = !{ptr @stac927x_core_init, !505, !"stac927x_core_init", i1 false, i1 false}
!505 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1060, i32 30}
!506 = !{ptr @.str.193, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4399, i32 2}
!508 = !{ptr @stac925x_core_init, !509, !"stac925x_core_init", i1 false, i1 false}
!509 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1028, i32 30}
!510 = !{ptr @.str.194, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1675, i32 27}
!512 = !{ptr @.str.195, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1676, i32 29}
!514 = !{ptr @.str.196, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1677, i32 27}
!516 = !{ptr @.str.197, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1678, i32 29}
!518 = !{ptr @.str.198, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1679, i32 27}
!520 = !{ptr @.str.199, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1680, i32 27}
!522 = !{ptr @.str.200, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1681, i32 27}
!524 = !{ptr @stac925x_models, !525, !"stac925x_models", i1 false, i1 false}
!525 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1673, i32 37}
!526 = !{ptr @.str.201, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1689, i32 2}
!528 = !{ptr @.str.202, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1692, i32 2}
!530 = !{ptr @.str.203, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1695, i32 2}
!532 = !{ptr @.str.204, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1696, i32 2}
!534 = !{ptr @.str.205, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1697, i32 2}
!536 = !{ptr @.str.206, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1698, i32 2}
!538 = !{ptr @.str.207, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1699, i32 2}
!540 = !{ptr @stac925x_fixup_tbl, !541, !"stac925x_fixup_tbl", i1 false, i1 false}
!541 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1685, i32 35}
!542 = !{ptr @stac925x_fixups, !543, !"stac925x_fixups", i1 false, i1 false}
!543 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1638, i32 31}
!544 = !{ptr @ref925x_pin_configs, !545, !"ref925x_pin_configs", i1 false, i1 false}
!545 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1542, i32 32}
!546 = !{ptr @stac925xM1_pin_configs, !547, !"stac925xM1_pin_configs", i1 false, i1 false}
!547 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1554, i32 32}
!548 = !{ptr @stac925xM1_2_pin_configs, !549, !"stac925xM1_2_pin_configs", i1 false, i1 false}
!549 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1566, i32 32}
!550 = !{ptr @stac925xM2_pin_configs, !551, !"stac925xM2_pin_configs", i1 false, i1 false}
!551 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1578, i32 32}
!552 = !{ptr @stac925xM2_2_pin_configs, !553, !"stac925xM2_2_pin_configs", i1 false, i1 false}
!553 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1590, i32 32}
!554 = !{ptr @stac925xM3_pin_configs, !555, !"stac925xM3_pin_configs", i1 false, i1 false}
!555 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1602, i32 32}
!556 = !{ptr @stac925xM5_pin_configs, !557, !"stac925xM5_pin_configs", i1 false, i1 false}
!557 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1614, i32 32}
!558 = !{ptr @stac925xM6_pin_configs, !559, !"stac925xM6_pin_configs", i1 false, i1 false}
!559 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1626, i32 32}
!560 = !{ptr @stac9872_core_init, !561, !"stac9872_core_init", i1 false, i1 false}
!561 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4969, i32 30}
!562 = !{ptr @.str.208, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4989, i32 34}
!564 = !{ptr @stac9872_models, !565, !"stac9872_models", i1 false, i1 false}
!565 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4988, i32 37}
!566 = !{ptr @.str.209, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5001, i32 2}
!568 = !{ptr @stac9872_fixup_tbl, !569, !"stac9872_fixup_tbl", i1 false, i1 false}
!569 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 5000, i32 35}
!570 = !{ptr @stac9872_fixups, !571, !"stac9872_fixups", i1 false, i1 false}
!571 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4993, i32 31}
!572 = !{ptr @stac9872_vaio_pin_configs, !573, !"stac9872_vaio_pin_configs", i1 false, i1 false}
!573 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4975, i32 32}
!574 = !{ptr @stac9205_core_init, !575, !"stac9205_core_init", i1 false, i1 false}
!575 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1076, i32 30}
!576 = !{ptr @stac9205_loopback, !577, !"stac9205_loopback", i1 false, i1 false}
!577 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1096, i32 38}
!578 = !{ptr @.str.210, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4165, i32 38}
!580 = !{ptr @.str.211, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4166, i32 38}
!582 = !{ptr @.str.212, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4167, i32 38}
!584 = !{ptr @.str.213, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4168, i32 34}
!586 = !{ptr @stac9205_models, !587, !"stac9205_models", i1 false, i1 false}
!587 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4163, i32 37}
!588 = !{ptr @.str.214, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4176, i32 2}
!590 = !{ptr @.str.215, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4185, i32 2}
!592 = !{ptr @.str.216, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4197, i32 2}
!594 = !{ptr @.str.217, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4207, i32 2}
!596 = !{ptr @.str.218, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4209, i32 2}
!598 = !{ptr @.str.219, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4211, i32 2}
!600 = !{ptr @.str.220, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4214, i32 2}
!602 = !{ptr @.str.221, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4215, i32 2}
!604 = !{ptr @stac9205_fixup_tbl, !605, !"stac9205_fixup_tbl", i1 false, i1 false}
!605 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4172, i32 35}
!606 = !{ptr @stac9205_fixups, !607, !"stac9205_fixups", i1 false, i1 false}
!607 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4139, i32 31}
!608 = !{ptr @ref9205_pin_configs, !609, !"ref9205_pin_configs", i1 false, i1 false}
!609 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4002, i32 32}
!610 = !{ptr @dell_9205_m42_pin_configs, !611, !"dell_9205_m42_pin_configs", i1 false, i1 false}
!611 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4029, i32 32}
!612 = !{ptr @dell_9205_m43_pin_configs, !613, !"dell_9205_m43_pin_configs", i1 false, i1 false}
!613 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4055, i32 32}
!614 = !{ptr @dell_9205_m44_pin_configs, !615, !"dell_9205_m44_pin_configs", i1 false, i1 false}
!615 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4074, i32 32}
!616 = !{ptr @stac92hd71bxx_unmute_nids, !617, !"stac92hd71bxx_unmute_nids", i1 false, i1 false}
!617 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1023, i32 24}
!618 = !{ptr @stac92hd71bxx_core_init, !619, !"stac92hd71bxx_core_init", i1 false, i1 false}
!619 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1017, i32 30}
!620 = !{ptr @stac92hd71bxx_loopback, !621, !"stac92hd71bxx_loopback", i1 false, i1 false}
!621 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1093, i32 38}
!622 = !{ptr @stac92hd71bxx_pwr_nids, !623, !"stac92hd71bxx_pwr_nids", i1 false, i1 false}
!623 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 232, i32 24}
!624 = !{ptr @.str.222, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3219, i32 34}
!626 = !{ptr @.str.223, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3220, i32 34}
!628 = !{ptr @.str.224, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3221, i32 34}
!630 = !{ptr @.str.225, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3222, i32 30}
!632 = !{ptr @.str.226, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3223, i32 31}
!634 = !{ptr @.str.227, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3224, i32 31}
!636 = !{ptr @.str.228, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3225, i32 31}
!638 = !{ptr @.str.229, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3226, i32 31}
!640 = !{ptr @stac92hd71bxx_models, !641, !"stac92hd71bxx_models", i1 false, i1 false}
!641 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3217, i32 37}
!642 = !{ptr @.str.230, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3236, i32 2}
!644 = !{ptr @.str.231, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3240, i32 2}
!646 = !{ptr @.str.232, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3244, i32 2}
!648 = !{ptr @.str.233, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3246, i32 2}
!650 = !{ptr @.str.234, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3250, i32 2}
!652 = !{ptr @.str.235, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3254, i32 2}
!654 = !{ptr @stac92hd71bxx_fixup_tbl, !655, !"stac92hd71bxx_fixup_tbl", i1 false, i1 false}
!655 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3230, i32 35}
!656 = !{ptr @stac92hd71bxx_fixups, !657, !"stac92hd71bxx_fixups", i1 false, i1 false}
!657 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3170, i32 31}
!658 = !{ptr @ref92hd71bxx_pin_configs, !659, !"ref92hd71bxx_pin_configs", i1 false, i1 false}
!659 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2988, i32 32}
!660 = !{ptr @dell_m4_1_pin_configs, !661, !"dell_m4_1_pin_configs", i1 false, i1 false}
!661 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3003, i32 32}
!662 = !{ptr @dell_m4_2_pin_configs, !663, !"dell_m4_2_pin_configs", i1 false, i1 false}
!663 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3018, i32 32}
!664 = !{ptr @dell_m4_3_pin_configs, !665, !"dell_m4_3_pin_configs", i1 false, i1 false}
!665 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3033, i32 32}
!666 = !{ptr @.str.236, !667, !"<string literal>", i1 false, i1 false}
!667 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2978, i32 40}
!668 = !{ptr @stac_hp_bass_sw_ctrl, !669, !"stac_hp_bass_sw_ctrl", i1 false, i1 false}
!669 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2967, i32 38}
!670 = !{ptr @.str.237, !671, !"<string literal>", i1 false, i1 false}
!671 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 3164, i32 3}
!672 = !{ptr @.str.238, !671, !"<string literal>", i1 false, i1 false}
!673 = !{ptr @stac92hd71bxx_fixup_hp.__UNIQUE_ID_ddebug246, !671, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!674 = !{ptr @.str.239, !675, !"<string literal>", i1 false, i1 false}
!675 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 750, i32 26}
!676 = !{ptr @.str.240, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 751, i32 23}
!678 = distinct !{null, !679, !"<string literal>", i1 false, i1 false}
!679 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 757, i32 25}
!680 = distinct !{null, !681, !"<string literal>", i1 false, i1 false}
!681 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 770, i32 25}
!682 = distinct !{null, !683, !"<string literal>", i1 false, i1 false}
!683 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 776, i32 25}
!684 = !{ptr @.str.244, !685, !"<string literal>", i1 false, i1 false}
!685 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4390, i32 3}
!686 = !{ptr @stac92hd83xxx_pwr_nids, !687, !"stac92hd83xxx_pwr_nids", i1 false, i1 false}
!687 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 227, i32 24}
!688 = !{ptr @stac92hd83xxx_core_init, !689, !"stac92hd83xxx_core_init", i1 false, i1 false}
!689 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1004, i32 30}
!690 = !{ptr @.str.245, !691, !"<string literal>", i1 false, i1 false}
!691 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2731, i32 42}
!692 = !{ptr @.str.246, !693, !"<string literal>", i1 false, i1 false}
!693 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2732, i32 33}
!694 = !{ptr @.str.247, !695, !"<string literal>", i1 false, i1 false}
!695 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2733, i32 41}
!696 = !{ptr @.str.248, !697, !"<string literal>", i1 false, i1 false}
!697 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2734, i32 51}
!698 = !{ptr @.str.249, !699, !"<string literal>", i1 false, i1 false}
!699 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2735, i32 36}
!700 = !{ptr @.str.250, !701, !"<string literal>", i1 false, i1 false}
!701 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2736, i32 34}
!702 = !{ptr @.str.251, !703, !"<string literal>", i1 false, i1 false}
!703 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2737, i32 41}
!704 = !{ptr @.str.252, !705, !"<string literal>", i1 false, i1 false}
!705 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2738, i32 45}
!706 = !{ptr @.str.253, !707, !"<string literal>", i1 false, i1 false}
!707 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2739, i32 45}
!708 = !{ptr @.str.254, !709, !"<string literal>", i1 false, i1 false}
!709 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2740, i32 47}
!710 = !{ptr @.str.255, !711, !"<string literal>", i1 false, i1 false}
!711 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2741, i32 37}
!712 = !{ptr @.str.256, !713, !"<string literal>", i1 false, i1 false}
!713 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2742, i32 36}
!714 = !{ptr @.str.257, !715, !"<string literal>", i1 false, i1 false}
!715 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2743, i32 40}
!716 = !{ptr @stac92hd83xxx_models, !717, !"stac92hd83xxx_models", i1 false, i1 false}
!717 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2729, i32 37}
!718 = !{ptr @.str.258, !719, !"<string literal>", i1 false, i1 false}
!719 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2755, i32 2}
!720 = !{ptr @.str.259, !721, !"<string literal>", i1 false, i1 false}
!721 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2757, i32 2}
!722 = !{ptr @.str.260, !723, !"<string literal>", i1 false, i1 false}
!723 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2759, i32 2}
!724 = !{ptr @.str.261, !725, !"<string literal>", i1 false, i1 false}
!725 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2761, i32 2}
!726 = !{ptr @.str.262, !727, !"<string literal>", i1 false, i1 false}
!727 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2763, i32 2}
!728 = !{ptr @.str.263, !729, !"<string literal>", i1 false, i1 false}
!729 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2765, i32 2}
!730 = !{ptr @.str.264, !731, !"<string literal>", i1 false, i1 false}
!731 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2769, i32 2}
!732 = !{ptr @.str.265, !733, !"<string literal>", i1 false, i1 false}
!733 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2771, i32 2}
!734 = !{ptr @.str.266, !735, !"<string literal>", i1 false, i1 false}
!735 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2773, i32 2}
!736 = !{ptr @.str.267, !737, !"<string literal>", i1 false, i1 false}
!737 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2781, i32 2}
!738 = !{ptr @.str.268, !739, !"<string literal>", i1 false, i1 false}
!739 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2787, i32 2}
!740 = !{ptr @.str.269, !741, !"<string literal>", i1 false, i1 false}
!741 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2789, i32 2}
!742 = !{ptr @.str.270, !743, !"<string literal>", i1 false, i1 false}
!743 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2791, i32 2}
!744 = !{ptr @.str.271, !745, !"<string literal>", i1 false, i1 false}
!745 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2793, i32 2}
!746 = !{ptr @.str.272, !747, !"<string literal>", i1 false, i1 false}
!747 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2799, i32 2}
!748 = !{ptr @.str.273, !749, !"<string literal>", i1 false, i1 false}
!749 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2927, i32 2}
!750 = !{ptr @.str.274, !751, !"<string literal>", i1 false, i1 false}
!751 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2929, i32 2}
!752 = !{ptr @.str.275, !753, !"<string literal>", i1 false, i1 false}
!753 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2935, i32 2}
!754 = !{ptr @stac92hd83xxx_fixup_tbl, !755, !"stac92hd83xxx_fixup_tbl", i1 false, i1 false}
!755 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2747, i32 35}
!756 = !{ptr @stac92hd83xxx_fixups, !757, !"stac92hd83xxx_fixups", i1 false, i1 false}
!757 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2630, i32 31}
!758 = !{ptr @ref92hd83xxx_pin_configs, !759, !"ref92hd83xxx_pin_configs", i1 false, i1 false}
!759 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2007, i32 32}
!760 = !{ptr @dell_s14_pin_configs, !761, !"dell_s14_pin_configs", i1 false, i1 false}
!761 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2021, i32 32}
!762 = !{ptr @dell_vostro_3500_pin_configs, !763, !"dell_vostro_3500_pin_configs", i1 false, i1 false}
!763 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2035, i32 32}
!764 = !{ptr @hp_cNB11_intquad_pin_configs, !765, !"hp_cNB11_intquad_pin_configs", i1 false, i1 false}
!765 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2075, i32 32}
!766 = !{ptr @hp_dv7_4000_pin_configs, !767, !"hp_dv7_4000_pin_configs", i1 false, i1 false}
!767 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2049, i32 32}
!768 = !{ptr @hp_zephyr_pin_configs, !769, !"hp_zephyr_pin_configs", i1 false, i1 false}
!769 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2063, i32 32}
!770 = !{ptr @stac92hd83xxx_hp_zephyr_init, !771, !"stac92hd83xxx_hp_zephyr_init", i1 false, i1 false}
!771 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1010, i32 30}
!772 = !{ptr @.str.278, !773, !"<string literal>", i1 false, i1 false}
!773 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2103, i32 3}
!774 = !{ptr @stac92hd83xxx_fixup_hp.__UNIQUE_ID_ddebug245, !773, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!775 = !{ptr @hp_bnb13_eq_verbs, !776, !"hp_bnb13_eq_verbs", i1 false, i1 false}
!776 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2202, i32 30}
!777 = !{ptr @hp_envy_ts_fixup_dac_bind.preferred_pairs, !778, !"preferred_pairs", i1 false, i1 false}
!778 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2191, i32 25}
!779 = !{ptr @.str.279, !780, !"<string literal>", i1 false, i1 false}
!780 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4560, i32 3}
!781 = !{ptr @.str.280, !780, !"<string literal>", i1 false, i1 false}
!782 = !{ptr @.str.281, !780, !"<string literal>", i1 false, i1 false}
!783 = !{ptr @.str.282, !780, !"<string literal>", i1 false, i1 false}
!784 = !{ptr @patch_stac92hd73xx._entry, !780, !"_entry", i1 false, i1 false}
!785 = !{ptr @patch_stac92hd73xx._entry_ptr, !780, !"_entry_ptr", i1 false, i1 false}
!786 = !{ptr @stac92hd73xx_6ch_loopback, !787, !"stac92hd73xx_6ch_loopback", i1 false, i1 false}
!787 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1084, i32 38}
!788 = !{ptr @stac92hd73xx_8ch_loopback, !789, !"stac92hd73xx_8ch_loopback", i1 false, i1 false}
!789 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1087, i32 38}
!790 = !{ptr @stac92hd73xx_10ch_loopback, !791, !"stac92hd73xx_10ch_loopback", i1 false, i1 false}
!791 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1090, i32 38}
!792 = !{ptr @stac92hd73xx_pwr_nids, !793, !"stac92hd73xx_pwr_nids", i1 false, i1 false}
!793 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 222, i32 24}
!794 = !{ptr @.str.283, !795, !"<string literal>", i1 false, i1 false}
!795 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1938, i32 39}
!796 = !{ptr @.str.284, !797, !"<string literal>", i1 false, i1 false}
!797 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1940, i32 39}
!798 = !{ptr @.str.285, !799, !"<string literal>", i1 false, i1 false}
!799 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1941, i32 37}
!800 = !{ptr @.str.286, !801, !"<string literal>", i1 false, i1 false}
!801 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1942, i32 37}
!802 = !{ptr @.str.287, !803, !"<string literal>", i1 false, i1 false}
!803 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1943, i32 37}
!804 = !{ptr @.str.288, !805, !"<string literal>", i1 false, i1 false}
!805 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1944, i32 32}
!806 = !{ptr @.str.289, !807, !"<string literal>", i1 false, i1 false}
!807 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1945, i32 39}
!808 = !{ptr @.str.290, !809, !"<string literal>", i1 false, i1 false}
!809 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1946, i32 41}
!810 = !{ptr @.str.291, !811, !"<string literal>", i1 false, i1 false}
!811 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1947, i32 43}
!812 = !{ptr @stac92hd73xx_models, !813, !"stac92hd73xx_models", i1 false, i1 false}
!813 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1937, i32 37}
!814 = !{ptr @.str.292, !815, !"<string literal>", i1 false, i1 false}
!815 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1957, i32 2}
!816 = !{ptr @.str.293, !817, !"<string literal>", i1 false, i1 false}
!817 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1959, i32 2}
!818 = !{ptr @.str.294, !819, !"<string literal>", i1 false, i1 false}
!819 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1961, i32 2}
!820 = !{ptr @.str.295, !821, !"<string literal>", i1 false, i1 false}
!821 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1977, i32 2}
!822 = !{ptr @.str.296, !823, !"<string literal>", i1 false, i1 false}
!823 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1979, i32 2}
!824 = !{ptr @.str.297, !825, !"<string literal>", i1 false, i1 false}
!825 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1981, i32 2}
!826 = !{ptr @.str.298, !827, !"<string literal>", i1 false, i1 false}
!827 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1983, i32 2}
!828 = !{ptr @.str.299, !829, !"<string literal>", i1 false, i1 false}
!829 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1985, i32 2}
!830 = !{ptr @.str.300, !831, !"<string literal>", i1 false, i1 false}
!831 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1987, i32 2}
!832 = !{ptr @.str.301, !833, !"<string literal>", i1 false, i1 false}
!833 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1990, i32 2}
!834 = !{ptr @.str.302, !835, !"<string literal>", i1 false, i1 false}
!835 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1994, i32 2}
!836 = !{ptr @.str.303, !837, !"<string literal>", i1 false, i1 false}
!837 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1996, i32 2}
!838 = !{ptr @.str.304, !839, !"<string literal>", i1 false, i1 false}
!839 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1998, i32 2}
!840 = !{ptr @.str.305, !841, !"<string literal>", i1 false, i1 false}
!841 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2000, i32 2}
!842 = !{ptr @.str.306, !843, !"<string literal>", i1 false, i1 false}
!843 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 2002, i32 2}
!844 = !{ptr @stac92hd73xx_fixup_tbl, !845, !"stac92hd73xx_fixup_tbl", i1 false, i1 false}
!845 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1951, i32 35}
!846 = !{ptr @stac92hd73xx_fixups, !847, !"stac92hd73xx_fixups", i1 false, i1 false}
!847 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1879, i32 31}
!848 = !{ptr @ref92hd73xx_pin_configs, !849, !"ref92hd73xx_pin_configs", i1 false, i1 false}
!849 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1708, i32 32}
!850 = !{ptr @intel_dg45id_pin_configs, !851, !"intel_dg45id_pin_configs", i1 false, i1 false}
!851 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1759, i32 32}
!852 = !{ptr @dell_m6_pin_configs, !853, !"dell_m6_pin_configs", i1 false, i1 false}
!853 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1725, i32 32}
!854 = !{ptr @dell_eq_core_init, !855, !"dell_eq_core_init", i1 false, i1 false}
!855 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 991, i32 30}
!856 = !{ptr @alienware_m17x_pin_configs, !857, !"alienware_m17x_pin_configs", i1 false, i1 false}
!857 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1742, i32 32}
!858 = !{ptr @stac92hd89xx_hp_front_jack_pin_configs, !859, !"stac92hd89xx_hp_front_jack_pin_configs", i1 false, i1 false}
!859 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1770, i32 32}
!860 = !{ptr @stac92hd89xx_hp_z1_g2_right_mic_jack_pin_configs, !861, !"stac92hd89xx_hp_z1_g2_right_mic_jack_pin_configs", i1 false, i1 false}
!861 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 1776, i32 32}
!862 = !{ptr @stac92hd73xx_core_init, !863, !"stac92hd73xx_core_init", i1 false, i1 false}
!863 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 998, i32 30}
!864 = !{ptr @stac92hd95_pwr_nids, !865, !"stac92hd95_pwr_nids", i1 false, i1 false}
!865 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4689, i32 24}
!866 = !{ptr @.str.308, !867, !"<string literal>", i1 false, i1 false}
!867 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4256, i32 39}
!868 = !{ptr @stac92hd95_models, !869, !"stac92hd95_models", i1 false, i1 false}
!869 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4254, i32 37}
!870 = !{ptr @.str.309, !871, !"<string literal>", i1 false, i1 false}
!871 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4250, i32 2}
!872 = !{ptr @stac92hd95_fixup_tbl, !873, !"stac92hd95_fixup_tbl", i1 false, i1 false}
!873 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4249, i32 35}
!874 = !{ptr @stac92hd95_fixups, !875, !"stac92hd95_fixups", i1 false, i1 false}
!875 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4233, i32 31}
!876 = !{ptr @.str.311, !877, !"<string literal>", i1 false, i1 false}
!877 = !{!"../sound/pci/hda/patch_sigmatel.c", i32 4228, i32 3}
!878 = !{ptr @stac92hd95_fixup_hp_led.__UNIQUE_ID_ddebug247, !877, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!879 = !{i32 1, !"wchar_size", i32 2}
!880 = !{i32 1, !"min_enum_size", i32 4}
!881 = !{i32 8, !"branch-target-enforcement", i32 0}
!882 = !{i32 8, !"sign-return-address", i32 0}
!883 = !{i32 8, !"sign-return-address-all", i32 0}
!884 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!885 = !{i32 7, !"uwtable", i32 1}
!886 = !{i32 7, !"frame-pointer", i32 2}
!887 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!888 = !{!"branch_weights", i32 1, i32 2000}
!889 = !{i64 2148894661, i64 2148894666, i64 2148894679, i64 2148894723, i64 2148894757, i64 2148894778}
!890 = !{i64 787485, i64 787502}
!891 = !{!"auto-init"}
