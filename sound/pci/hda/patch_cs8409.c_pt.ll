; ModuleID = '/llk/IR_all_yes/sound/pci/hda/patch_cs8409.c_pt.bc'
source_filename = "../sound/pci/hda/patch_cs8409.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hda_verb = type { i16, i32, i32 }
%struct.sub_codec = type { ptr, i32, i32, i32, ptr, i32, i8, i32, i32, i8, [4 x i8] }
%struct.hda_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hda_pcm_stream = type { i32, i32, i32, i16, i32, i64, i32, ptr, %struct.hda_pcm_ops }
%struct.hda_pcm_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.85, i32 }
%union.anon.85 = type { ptr }
%struct.hda_codec_driver = type { %struct.hdac_driver, ptr }
%struct.hdac_driver = type { %struct.device_driver, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cs8409_i2c_param = type { i32, i32 }
%struct.cs8409_cir_param = type { i32, i32, i32 }
%struct.hda_device_id = type { i32, i32, i8, ptr, i32 }
%struct.hda_model_fixup = type { i32, ptr }
%struct.snd_pci_quirk = type { i16, i16, i16, i32, ptr }
%struct.hda_fixup = type { i32, i8, i32, %union.anon.84 }
%union.anon.84 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.4, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.list_head = type { ptr, ptr }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.4 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.79, [64 x i8] }
%union.anon.79 = type { %struct.anon.82, [40 x i8] }
%struct.anon.82 = type { i32, i32, [64 x i8], i64, i32 }
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
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.cs8409_spec = type { %struct.hda_gen_spec, ptr, [8 x ptr], i32, i32, i32, i32, %struct.mutex, i32, i32, %struct.delayed_work, i8, ptr, [4 x i8] }
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
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon, [128 x i8] }
%union.anon = type { %union.anon.1 }
%union.anon.1 = type { [64 x i64] }
%struct.hda_jack_tbl = type { i16, i32, i8, ptr, i32, i8, i16, i16, i16, i32, i32, ptr }
%struct.hda_bus = type { %struct.hdac_bus, ptr, ptr, ptr, %struct.mutex, [8 x i32], i8, i32, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }

@cs8409_cs42l42_init_verbs = external dso_local constant [0 x %struct.hda_verb], align 4
@cs8409_cs42l42_codec = external dso_local global %struct.sub_codec, align 4
@cs8409_cs42l42_patch_ops = internal constant { %struct.hda_codec_ops, [56 x i8] } { %struct.hda_codec_ops { ptr @cs8409_build_controls, ptr @snd_hda_gen_build_pcms, ptr @cs8409_init, ptr @cs8409_free, ptr @cs8409_cs42l42_jack_unsol_event, ptr null, ptr @cs8409_cs42l42_suspend, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@cs42l42_48k_pcm_analog_playback = external dso_local constant %struct.hda_pcm_stream, align 8
@cs42l42_48k_pcm_analog_capture = external dso_local constant %struct.hda_pcm_stream, align 8
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Headphone Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@cs42l42_dac_volume_mixer = external dso_local constant %struct.snd_kcontrol_new, align 4
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mic Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@cs42l42_adc_volume_mixer = external dso_local constant %struct.snd_kcontrol_new, align 4
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CS8409/CS42L42\00", [17 x i8] zeroinitializer }, align 32
@dolphin_init_verbs = external dso_local constant [0 x %struct.hda_verb], align 4
@dolphin_cs42l42_0 = external dso_local global %struct.sub_codec, align 4
@dolphin_cs42l42_1 = external dso_local global %struct.sub_codec, align 4
@cs8409_dolphin_patch_ops = internal constant { %struct.hda_codec_ops, [56 x i8] } { %struct.hda_codec_ops { ptr @cs8409_build_controls, ptr @snd_hda_gen_build_pcms, ptr @cs8409_init, ptr @cs8409_free, ptr @dolphin_jack_unsol_event, ptr null, ptr @cs8409_cs42l42_suspend, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Line Out\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Microphone\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Line Out Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_hda_codec_cs8409__244_1307_cs8409_driver_init6 = internal global ptr @cs8409_driver_init, section ".initcall6.init", align 4
@cs8409_driver = internal global { %struct.hda_codec_driver, [52 x i8] } { %struct.hda_codec_driver { %struct.hdac_driver zeroinitializer, ptr @snd_hda_id_cs8409 }, [52 x i8] zeroinitializer }, align 32
@__exitcall_cs8409_driver_exit = internal global ptr @cs8409_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file245 = internal constant [61 x i8] c"snd_hda_codec_cs8409.file=sound/pci/hda/snd-hda-codec-cs8409\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [33 x i8] c"snd_hda_codec_cs8409.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description247 = internal constant [57 x i8] c"snd_hda_codec_cs8409.description=Cirrus Logic HDA bridge\00", section ".modinfo", align 1
@cs8409_i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 313, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s() Failed 0x%02x : 0x%04x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cs8409_i2c_write\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/pci/hda/patch_cs8409.c\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cs8409_i2c_write._entry_ptr = internal global ptr @cs8409_i2c_write._entry, section ".printk_index", align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@cs8409_i2c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.11, ptr @.str.8, i32 228, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cs8409_i2c_read\00", [16 x i8] zeroinitializer }, align 32
@cs8409_i2c_read._entry_ptr = internal global ptr @cs8409_i2c_read._entry, section ".printk_index", align 4
@__const.cs42l42_suspend.cs42l42_pwr_down_seq = private unnamed_addr constant [11 x %struct.cs8409_i2c_param] [%struct.cs8409_i2c_param { i32 7942, i32 2 }, %struct.cs8409_i2c_param { i32 4393, i32 0 }, %struct.cs8409_i2c_param { i32 8961, i32 63 }, %struct.cs8409_i2c_param { i32 8962, i32 63 }, %struct.cs8409_i2c_param { i32 8963, i32 63 }, %struct.cs8409_i2c_param { i32 8193, i32 15 }, %struct.cs8409_i2c_param { i32 10753, i32 0 }, %struct.cs8409_i2c_param { i32 4615, i32 0 }, %struct.cs8409_i2c_param { i32 4353, i32 254 }, %struct.cs8409_i2c_param { i32 4354, i32 140 }, %struct.cs8409_i2c_param { i32 4353, i32 255 }], align 4
@cs42l42_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.8, i32 788, ptr @.str.14, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Timeout waiting for PDN_DONE for CS42L42\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cs42l42_suspend\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cs42l42_suspend._entry_ptr = internal global ptr @cs42l42_suspend._entry, section ".printk_index", align 4
@cs8409_i2c_bulk_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.8, i32 357, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"I2C Bulk Write Failed 0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cs8409_i2c_bulk_write\00", [42 x i8] zeroinitializer }, align 32
@cs8409_i2c_bulk_write._entry_ptr = internal global ptr @cs8409_i2c_bulk_write._entry, section ".printk_index", align 4
@cs8409_cs42l42_hw_cfg = external dso_local local_unnamed_addr constant [0 x %struct.cs8409_cir_param], align 4
@cs8409_cs42l42_bullseye_atn = external dso_local local_unnamed_addr constant [0 x %struct.cs8409_cir_param], align 4
@__const.cs42l42_resume.irq_regs = private unnamed_addr constant [4 x %struct.cs8409_i2c_param] [%struct.cs8409_i2c_param { i32 4872, i32 0 }, %struct.cs8409_i2c_param { i32 4873, i32 0 }, %struct.cs8409_i2c_param { i32 4874, i32 0 }, %struct.cs8409_i2c_param { i32 4879, i32 0 }], align 4
@cs8409_i2c_bulk_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.17, ptr @.str.8, i32 273, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cs8409_i2c_bulk_read\00", [43 x i8] zeroinitializer }, align 32
@cs8409_i2c_bulk_read._entry_ptr = internal global ptr @cs8409_i2c_bulk_read._entry, section ".printk_index", align 4
@dolphin_hw_cfg = external dso_local local_unnamed_addr constant [0 x %struct.cs8409_cir_param], align 4
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_hda_codec_cs8409\00", [43 x i8] zeroinitializer }, align 32
@snd_hda_id_cs8409 = internal constant { [2 x %struct.hda_device_id], [56 x i8] } { [2 x %struct.hda_device_id] [%struct.hda_device_id { i32 269714441, i32 0, i8 1, ptr @.str.19, i32 ptrtoint (ptr @patch_cs8409 to i32) }, %struct.hda_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CS8409\00", [25 x i8] zeroinitializer }, align 32
@cs8409_models = external dso_local constant [0 x %struct.hda_model_fixup], align 4
@cs8409_fixup_tbl = external dso_local constant [0 x %struct.snd_pci_quirk], align 4
@cs8409_fixups = external dso_local constant [0 x %struct.hda_fixup], align 4
@patch_cs8409.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.20, ptr @.str.8, ptr @.str.21, i8 1, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"patch_cs8409\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Picked ID=%d, VID=%08x, DEV=%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@cs8409_alloc_spec.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&spec->i2c_mux\00", [17 x i8] zeroinitializer }, align 32
@cs8409_alloc_spec.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&spec->i2c_clk_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@cs8409_alloc_spec.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&spec->i2c_clk_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 36, i64 52]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 36, i64 37, i64 52]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12]
@___asan_gen_.38 = private unnamed_addr constant [25 x i8] c"cs8409_cs42l42_patch_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 919, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1029, i32 36 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1031, i32 36 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1035, i32 33 }
@___asan_gen_.50 = private unnamed_addr constant [25 x i8] c"cs8409_dolphin_patch_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1136, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1215, i32 52 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1218, i32 54 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1236, i32 44 }
@___asan_gen_.62 = private unnamed_addr constant [14 x i8] c"cs8409_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1304, i32 32 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 313, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 228, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 788, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 357, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 273, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1307, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant [18 x i8] c"snd_hda_id_cs8409\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1298, i32 35 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1299, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1282, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 65, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.147 = private constant [32 x i8] c"../sound/pci/hda/patch_cs8409.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 66, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_cs8409_driver_exit, ptr @__initcall__kmod_snd_hda_codec_cs8409__244_1307_cs8409_driver_init6, ptr @cs42l42_suspend._entry, ptr @cs42l42_suspend._entry_ptr, ptr @cs8409_driver_exit, ptr @cs8409_i2c_bulk_read._entry, ptr @cs8409_i2c_bulk_read._entry_ptr, ptr @cs8409_i2c_bulk_write._entry, ptr @cs8409_i2c_bulk_write._entry_ptr, ptr @cs8409_i2c_read._entry, ptr @cs8409_i2c_read._entry_ptr, ptr @cs8409_i2c_write._entry, ptr @cs8409_i2c_write._entry_ptr, ptr @cs8409_cs42l42_patch_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cs8409_dolphin_patch_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cs8409_driver, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @snd_hda_id_cs8409, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @cs8409_alloc_spec.__key, ptr @.str.22, ptr @cs8409_alloc_spec.__key.23, ptr @.str.24, ptr @cs8409_alloc_spec.__key.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs8409_cs42l42_patch_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs8409_dolphin_patch_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs8409_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs8409_i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs8409_i2c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs8409_i2c_bulk_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs8409_i2c_bulk_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hda_id_cs8409 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs8409_alloc_spec.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs8409_alloc_spec.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs8409_alloc_spec.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cs42l42_volume_info(ptr nocapture noundef readonly %kctrl, ptr nocapture noundef writeonly %uinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kctrl, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %1, 23
  %and = and i32 %shr, 63
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %step = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 2
  %3 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %step, align 8
  %4 = and i32 %1, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %4)
  %cmp = icmp eq i32 %4, 196608
  %cond = select i1 %cmp, i32 2, i32 1
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %count, align 8
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
    i32 0, label %sw.bb8
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb8, %entry.sw.epilog.sink.split_crit_edge
  %.sink20 = phi i32 [ -97, %sw.bb8 ], [ -63, %entry.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i32 [ 12, %sw.bb8 ], [ 0, %entry.sw.epilog.sink.split_crit_edge ]
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink20, ptr %value, align 8
  %max12 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %8 = ptrtoint ptr %max12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %max12, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cs42l42_volume_get(ptr nocapture noundef readonly %kctrl, ptr nocapture noundef writeonly %uctrl) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctrl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kctrl, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %5, 19
  %and = and i32 %shr, 15
  %arrayidx = getelementptr %struct.cs8409_spec, ptr %3, i32 0, i32 2, i32 %and
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %shr6 = lshr i32 %5, 23
  %and7 = and i32 %shr6, 63
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uctrl, i32 0, i32 2
  %8 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %and7, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb17
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %9 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9 = getelementptr %struct.sub_codec, ptr %7, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9, align 1
  %conv = sext i8 %11 to i32
  %incdec.ptr = getelementptr i32, ptr %value, i32 1
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %valp.0 = phi ptr [ %incdec.ptr, %if.then ], [ %value, %sw.bb.if.end_crit_edge ]
  %13 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %if.end.sw.epilog_crit_edge, label %if.then12

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx14 = getelementptr %struct.sub_codec, ptr %7, i32 0, i32 10, i32 2
  br label %sw.epilog.sink.split

sw.bb17:                                          ; preds = %entry
  %14 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool19.not = icmp eq i32 %14, 0
  br i1 %tobool19.not, label %sw.bb17.sw.epilog_crit_edge, label %if.then20

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then20:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  %vol21 = getelementptr inbounds %struct.sub_codec, ptr %7, i32 0, i32 10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then20, %if.then12
  %vol21.sink = phi ptr [ %vol21, %if.then20 ], [ %arrayidx14, %if.then12 ]
  %value.sink = phi ptr [ %value, %if.then20 ], [ %valp.0, %if.then12 ]
  %15 = ptrtoint ptr %vol21.sink to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vol21.sink, align 1
  %conv23 = sext i8 %16 to i32
  %17 = ptrtoint ptr %value.sink to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv23, ptr %value.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb17.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs42l42_volume_put(ptr nocapture noundef readonly %kctrl, ptr nocapture noundef readonly %uctrl) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctrl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kctrl, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %5, 19
  %and = and i32 %shr, 15
  %arrayidx = getelementptr %struct.cs8409_spec, ptr %3, i32 0, i32 2, i32 %and
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %shr6 = lshr i32 %5, 23
  %and7 = and i32 %shr6, 63
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uctrl, i32 0, i32 2
  %8 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %and7, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb20
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %9 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 4
  %conv = trunc i32 %11 to i8
  %arrayidx9 = getelementptr %struct.sub_codec, ptr %7, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx9, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %13 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %if.end.if.end16_crit_edge, label %if.then12

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr = getelementptr i32, ptr %value, i32 1
  %14 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr, align 4
  %conv13 = trunc i32 %15 to i8
  %arrayidx15 = getelementptr %struct.sub_codec, ptr %7, i32 0, i32 10, i32 2
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv13, ptr %arrayidx15, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end.if.end16_crit_edge
  %playback_started = getelementptr inbounds %struct.cs8409_spec, ptr %3, i32 0, i32 11
  %17 = ptrtoint ptr %playback_started to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %playback_started, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool17.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool17.not, label %if.end16.sw.epilog_crit_edge, label %if.then18

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then18:                                        ; preds = %if.end16
  br i1 %tobool.not, label %if.then18.if.end26.i_crit_edge, label %if.then23.i

if.then18.if.end26.i_crit_edge:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then23.i:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.sub_codec, ptr %7, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %20 = sub i8 0, %19
  %21 = and i8 %20, 63
  %and24.i = zext i8 %21 to i32
  tail call fastcc void @cs8409_i2c_write(ptr noundef %7, i32 noundef 8961, i32 noundef %and24.i) #8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %if.then18.if.end26.i_crit_edge
  br i1 %tobool11.not, label %if.end26.i.sw.epilog_crit_edge, label %if.then29.i

if.end26.i.sw.epilog_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx31.i = getelementptr %struct.sub_codec, ptr %7, i32 0, i32 10, i32 2
  %22 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx31.i, align 1
  %24 = sub i8 0, %23
  %25 = and i8 %24, 63
  br label %sw.epilog.sink.split

sw.bb20:                                          ; preds = %entry
  %26 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool22.not = icmp eq i32 %26, 0
  br i1 %tobool22.not, label %sw.bb20.sw.epilog_crit_edge, label %if.end27

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end27:                                         ; preds = %sw.bb20
  %27 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %value, align 4
  %conv24 = trunc i32 %28 to i8
  %vol25 = getelementptr inbounds %struct.sub_codec, ptr %7, i32 0, i32 10
  %29 = ptrtoint ptr %vol25 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv24, ptr %vol25, align 1
  %capture_started = getelementptr inbounds %struct.cs8409_spec, ptr %3, i32 0, i32 11
  %30 = ptrtoint ptr %capture_started to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load28 = load i8, ptr %capture_started, align 4
  %31 = and i8 %bf.load28, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool31.not = icmp eq i8 %31, 0
  %or.cond = select i1 %tobool31.not, i1 true, i1 %tobool22.not
  br i1 %or.cond, label %if.end27.sw.epilog_crit_edge, label %if.then43.i

if.end27.sw.epilog_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then43.i:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %vol44.i = getelementptr inbounds %struct.sub_codec, ptr %7, i32 0, i32 10
  %32 = ptrtoint ptr %vol44.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %vol44.i, align 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then43.i, %if.then29.i
  %.sink60 = phi i8 [ %33, %if.then43.i ], [ %25, %if.then29.i ]
  %.sink = phi i32 [ 7427, %if.then43.i ], [ 8963, %if.then29.i ]
  %conv4669.i = zext i8 %.sink60 to i32
  tail call fastcc void @cs8409_i2c_write(ptr noundef %7, i32 noundef %.sink, i32 noundef %conv4669.i) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end27.sw.epilog_crit_edge, %sw.bb20.sw.epilog_crit_edge, %if.end26.i.sw.epilog_crit_edge, %if.end16.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cs8409_cs42l42_fixups(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) local_unnamed_addr #3 align 64 {
entry:
  %val.i.i166 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %2 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %action, label %entry.sw.epilog118_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb55
    i32 2, label %sw.bb66
    i32 3, label %sw.bb87
  ]

entry.sw.epilog118_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog118

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @snd_hda_add_verbs(ptr noundef %codec, ptr noundef nonnull @cs8409_cs42l42_init_verbs) #8
  %exec_verb = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 16
  %3 = ptrtoint ptr %exec_verb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %exec_verb, align 4
  %exec_verb2 = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %exec_verb2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %exec_verb2, align 8
  store ptr @cs8409_cs42l42_exec_verb, ptr %exec_verb, align 4
  %scodecs = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %scodecs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cs8409_cs42l42_codec, ptr %scodecs, align 4
  %num_scodecs = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %num_scodecs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %num_scodecs, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @cs8409_cs42l42_codec to i32))
  store ptr %codec, ptr @cs8409_cs42l42_codec, align 4
  %patch_ops = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %8 = call ptr @memcpy(ptr %patch_ops, ptr @cs8409_cs42l42_patch_ops, i32 40)
  %suppress_auto_mute = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 58
  %9 = ptrtoint ptr %suppress_auto_mute to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %bf.load = load i64, ptr %suppress_auto_mute, align 4
  %bf.set15 = or i64 %bf.load, 290271338168320
  store i64 %bf.set15, ptr %suppress_auto_mute, align 4
  %10 = load ptr, ptr %scodecs, align 4
  %reset_gpio = getelementptr inbounds %struct.sub_codec, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reset_gpio, align 4
  %gpio_dir = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %gpio_dir, align 4
  %gpio_data = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %gpio_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %gpio_data, align 8
  %gpio_mask = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 63, ptr %gpio_mask, align 8
  tail call void @snd_hda_sequence_write(ptr noundef %codec, ptr noundef nonnull @cs8409_cs42l42_init_verbs) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #8
  %16 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i.i, align 4, !annotation !79
  %call.i.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext 36, i32 noundef 12, ptr noundef nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %snd_hdac_read_parm.exit.thread.i, label %snd_hdac_read_parm.exit.i

snd_hdac_read_parm.exit.thread.i:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #8
  br label %if.end.i

snd_hdac_read_parm.exit.i:                        ; preds = %sw.bb
  %17 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i = icmp sgt i32 %18, -1
  br i1 %cmp.i, label %if.then.i, label %snd_hdac_read_parm.exit.i.if.end.i_crit_edge

snd_hdac_read_parm.exit.i.if.end.i_crit_edge:     ; preds = %snd_hdac_read_parm.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %snd_hdac_read_parm.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %18, 5
  %call4.i = call i32 @snd_hdac_override_parm(ptr noundef %codec, i16 noundef zeroext 36, i32 noundef 12, i32 noundef %or.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %snd_hdac_read_parm.exit.i.if.end.i_crit_edge, %snd_hdac_read_parm.exit.thread.i
  %start_nid.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %19 = ptrtoint ptr %start_nid.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %start_nid.i.i, align 4
  %conv1.i.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 36, i16 %20)
  %cmp.i16.i = icmp ugt i16 %20, 36
  br i1 %cmp.i16.i, label %if.end.i.cs8409_fix_caps.exit_crit_edge, label %lor.lhs.false.i.i

if.end.i.cs8409_fix_caps.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs8409_fix_caps.exit

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %num_nodes.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %21 = ptrtoint ptr %num_nodes.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_nodes.i.i, align 8
  %add.i.i = add i32 %22, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %add.i.i)
  %cmp8.not.i.i = icmp ugt i32 %add.i.i, 36
  br i1 %cmp8.not.i.i, label %if.then.i.i, label %lor.lhs.false.i.i.cs8409_fix_caps.exit_crit_edge

lor.lhs.false.i.i.cs8409_fix_caps.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs8409_fix_caps.exit

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %wcaps.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %23 = ptrtoint ptr %wcaps.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wcaps.i.i, align 4
  %sub.i.i = sub nsw i32 36, %conv1.i.i
  %arrayidx.i.i = getelementptr i32, ptr %24, i32 %sub.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i, align 4
  %phi.bo.i = or i32 %26, 128
  store i32 %phi.bo.i, ptr %arrayidx.i.i, align 4
  br label %cs8409_fix_caps.exit

cs8409_fix_caps.exit:                             ; preds = %if.then.i.i, %lor.lhs.false.i.i.cs8409_fix_caps.exit_crit_edge, %if.end.i.cs8409_fix_caps.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i166) #8
  %27 = ptrtoint ptr %val.i.i166 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %val.i.i166, align 4, !annotation !79
  %call.i.i167 = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext 52, i32 noundef 12, ptr noundef nonnull %val.i.i166) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i167)
  %cmp.i.i168 = icmp slt i32 %call.i.i167, 0
  br i1 %cmp.i.i168, label %snd_hdac_read_parm.exit.thread.i169, label %snd_hdac_read_parm.exit.i171

snd_hdac_read_parm.exit.thread.i169:              ; preds = %cs8409_fix_caps.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i166) #8
  br label %if.end.i178

snd_hdac_read_parm.exit.i171:                     ; preds = %cs8409_fix_caps.exit
  %28 = ptrtoint ptr %val.i.i166 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.i.i166, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i166) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp.i170 = icmp sgt i32 %29, -1
  br i1 %cmp.i170, label %if.then.i174, label %snd_hdac_read_parm.exit.i171.if.end.i178_crit_edge

snd_hdac_read_parm.exit.i171.if.end.i178_crit_edge: ; preds = %snd_hdac_read_parm.exit.i171
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i178

if.then.i174:                                     ; preds = %snd_hdac_read_parm.exit.i171
  call void @__sanitizer_cov_trace_pc() #10
  %or.i172 = or i32 %29, 5
  %call4.i173 = call i32 @snd_hdac_override_parm(ptr noundef %codec, i16 noundef zeroext 52, i32 noundef 12, i32 noundef %or.i172) #8
  br label %if.end.i178

if.end.i178:                                      ; preds = %if.then.i174, %snd_hdac_read_parm.exit.i171.if.end.i178_crit_edge, %snd_hdac_read_parm.exit.thread.i169
  %30 = ptrtoint ptr %start_nid.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %start_nid.i.i, align 4
  %conv1.i.i176 = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 52, i16 %31)
  %cmp.i16.i177 = icmp ugt i16 %31, 52
  br i1 %cmp.i16.i177, label %if.end.i178.cs8409_fix_caps.exit196_crit_edge, label %lor.lhs.false.i.i182

if.end.i178.cs8409_fix_caps.exit196_crit_edge:    ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs8409_fix_caps.exit196

lor.lhs.false.i.i182:                             ; preds = %if.end.i178
  %num_nodes.i.i179 = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %32 = ptrtoint ptr %num_nodes.i.i179 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_nodes.i.i179, align 8
  %add.i.i180 = add i32 %33, %conv1.i.i176
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %add.i.i180)
  %cmp8.not.i.i181 = icmp ugt i32 %add.i.i180, 52
  br i1 %cmp8.not.i.i181, label %if.then.i.i195, label %lor.lhs.false.i.i182.cs8409_fix_caps.exit196_crit_edge

lor.lhs.false.i.i182.cs8409_fix_caps.exit196_crit_edge: ; preds = %lor.lhs.false.i.i182
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs8409_fix_caps.exit196

if.then.i.i195:                                   ; preds = %lor.lhs.false.i.i182
  call void @__sanitizer_cov_trace_pc() #10
  %wcaps.i.i183 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %34 = ptrtoint ptr %wcaps.i.i183 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wcaps.i.i183, align 4
  %sub.i.i184 = sub nsw i32 52, %conv1.i.i176
  %arrayidx.i.i185 = getelementptr i32, ptr %35, i32 %sub.i.i184
  %36 = ptrtoint ptr %arrayidx.i.i185 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i185, align 4
  %phi.bo.i186 = or i32 %37, 128
  store i32 %phi.bo.i186, ptr %arrayidx.i.i185, align 4
  br label %cs8409_fix_caps.exit196

cs8409_fix_caps.exit196:                          ; preds = %if.then.i.i195, %lor.lhs.false.i.i182.cs8409_fix_caps.exit196_crit_edge, %if.end.i178.cs8409_fix_caps.exit196_crit_edge
  %fixup_id = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 41
  %38 = ptrtoint ptr %fixup_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fixup_id, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %39, label %sw.default [
    i32 1, label %sw.bb18
    i32 0, label %sw.bb26
    i32 2, label %sw.bb36
  ]

sw.bb18:                                          ; preds = %cs8409_fix_caps.exit196
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %scodecs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %scodecs, align 4
  %hsbias_hiz = getelementptr inbounds %struct.sub_codec, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %hsbias_hiz to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 32, ptr %hsbias_hiz, align 4
  %44 = load ptr, ptr %scodecs, align 4
  %full_scale_vol = getelementptr inbounds %struct.sub_codec, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %full_scale_vol to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load23 = load i8, ptr %full_scale_vol, align 4
  %bf.set25 = or i8 %bf.load23, -128
  store i8 %bf.set25, ptr %full_scale_vol, align 4
  br label %sw.epilog118

sw.bb26:                                          ; preds = %cs8409_fix_caps.exit196
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %scodecs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %scodecs, align 4
  %hsbias_hiz29 = getelementptr inbounds %struct.sub_codec, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %hsbias_hiz29 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 32, ptr %hsbias_hiz29, align 4
  %49 = load ptr, ptr %scodecs, align 4
  %full_scale_vol32 = getelementptr inbounds %struct.sub_codec, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %full_scale_vol32 to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load33 = load i8, ptr %full_scale_vol32, align 4
  %bf.clear34 = and i8 %bf.load33, 127
  store i8 %bf.clear34, ptr %full_scale_vol32, align 4
  br label %sw.epilog118

sw.bb36:                                          ; preds = %cs8409_fix_caps.exit196
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %scodecs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %scodecs, align 4
  %hsbias_hiz39 = getelementptr inbounds %struct.sub_codec, ptr %52, i32 0, i32 8
  %53 = ptrtoint ptr %hsbias_hiz39 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 160, ptr %hsbias_hiz39, align 4
  %54 = load ptr, ptr %scodecs, align 4
  %full_scale_vol42 = getelementptr inbounds %struct.sub_codec, ptr %54, i32 0, i32 9
  %55 = ptrtoint ptr %full_scale_vol42 to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load43 = load i8, ptr %full_scale_vol42, align 4
  %bf.set45 = or i8 %bf.load43, -128
  store i8 %bf.set45, ptr %full_scale_vol42, align 4
  br label %sw.epilog118

sw.default:                                       ; preds = %cs8409_fix_caps.exit196
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %scodecs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %scodecs, align 4
  %hsbias_hiz48 = getelementptr inbounds %struct.sub_codec, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %hsbias_hiz48 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 3, ptr %hsbias_hiz48, align 4
  %59 = load ptr, ptr %scodecs, align 4
  %full_scale_vol51 = getelementptr inbounds %struct.sub_codec, ptr %59, i32 0, i32 9
  %60 = ptrtoint ptr %full_scale_vol51 to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load52 = load i8, ptr %full_scale_vol51, align 4
  %bf.set54 = or i8 %bf.load52, -128
  store i8 %bf.set54, ptr %full_scale_vol51, align 4
  br label %sw.epilog118

sw.bb55:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %stream_analog_playback = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 1
  %61 = ptrtoint ptr %stream_analog_playback to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @cs42l42_48k_pcm_analog_playback, ptr %stream_analog_playback, align 8
  %stream_analog_capture = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %stream_analog_capture to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @cs42l42_48k_pcm_analog_capture, ptr %stream_analog_capture, align 4
  %pcm_playback_hook = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 79
  %63 = ptrtoint ptr %pcm_playback_hook to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @cs42l42_playback_pcm_hook, ptr %pcm_playback_hook, align 4
  %pcm_capture_hook = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 80
  %64 = ptrtoint ptr %pcm_capture_hook to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @cs42l42_capture_pcm_hook, ptr %pcm_capture_hook, align 8
  %call60 = tail call i32 @snd_hda_codec_amp_init_stereo(ptr noundef %codec, i16 noundef zeroext 34, i32 noundef 0, i32 noundef 0, i32 noundef 255, i32 noundef 25) #8
  %call62 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @cs42l42_dac_volume_mixer) #8
  %call64 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @cs42l42_adc_volume_mixer) #8
  %call.i.i198 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1817, i32 noundef 0) #8
  %call.i13.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1800, i32 noundef 0) #8
  %call65 = tail call i32 @snd_hda_codec_set_name(ptr noundef %codec, ptr noundef nonnull @.str.2) #8
  br label %sw.epilog118

sw.bb66:                                          ; preds = %entry
  %scodecs.i = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 2
  %65 = ptrtoint ptr %scodecs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %scodecs.i, align 4
  %gpio_mask.i = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 4
  %67 = ptrtoint ptr %gpio_mask.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %gpio_mask.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i = icmp eq i32 %68, 0
  br i1 %tobool.not.i, label %sw.bb66.if.end.i202_crit_edge, label %if.then.i201

sw.bb66.if.end.i202_crit_edge:                    ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i202

if.then.i201:                                     ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i200 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1814, i32 noundef %68) #8
  %gpio_dir.i = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 5
  %69 = ptrtoint ptr %gpio_dir.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %gpio_dir.i, align 4
  %call.i44.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1815, i32 noundef %70) #8
  %gpio_data.i = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 6
  %71 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %gpio_data.i, align 8
  %call.i45.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1813, i32 noundef %72) #8
  br label %if.end.i202

if.end.i202:                                      ; preds = %if.then.i201, %sw.bb66.if.end.i202_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cs8409_cs42l42_hw_cfg to i32))
  %73 = load i32, ptr @cs8409_cs42l42_hw_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool5.not51.i = icmp eq i32 %73, 0
  br i1 %tobool5.not51.i, label %if.end.i202.for.end.i_crit_edge, label %if.end.i202.for.body.i203_crit_edge

if.end.i202.for.body.i203_crit_edge:              ; preds = %if.end.i202
  br label %for.body.i203

if.end.i202.for.end.i_crit_edge:                  ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i203:                                    ; preds = %for.body.i203.for.body.i203_crit_edge, %if.end.i202.for.body.i203_crit_edge
  %seq.052.i = phi ptr [ %incdec.ptr.i, %for.body.i203.for.body.i203_crit_edge ], [ @cs8409_cs42l42_hw_cfg, %if.end.i202.for.body.i203_crit_edge ]
  %cir.i = getelementptr inbounds %struct.cs8409_cir_param, ptr %seq.052.i, i32 0, i32 1
  %74 = ptrtoint ptr %cir.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cir.i, align 4
  %coeff.i = getelementptr inbounds %struct.cs8409_cir_param, ptr %seq.052.i, i32 0, i32 2
  %76 = ptrtoint ptr %coeff.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %coeff.i, align 4
  %call.i.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef %75) #8
  %call.i3.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1024, i32 noundef %77) #8
  %incdec.ptr.i = getelementptr %struct.cs8409_cir_param, ptr %seq.052.i, i32 1
  %78 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %incdec.ptr.i, align 4
  %tobool5.not.i = icmp eq i32 %79, 0
  br i1 %tobool5.not.i, label %for.body.i203.for.end.i_crit_edge, label %for.body.i203.for.body.i203_crit_edge

for.body.i203.for.body.i203_crit_edge:            ; preds = %for.body.i203
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i203

for.body.i203.for.end.i_crit_edge:                ; preds = %for.body.i203
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i203.for.end.i_crit_edge, %if.end.i202.for.end.i_crit_edge
  %fixup_id.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 41
  %80 = ptrtoint ptr %fixup_id.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fixup_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp.i204 = icmp eq i32 %81, 0
  br i1 %cmp.i204, label %for.cond7.preheader.i, label %for.end.i.if.end16.i_crit_edge

for.end.i.if.end16.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

for.cond7.preheader.i:                            ; preds = %for.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cs8409_cs42l42_bullseye_atn to i32))
  %82 = load i32, ptr @cs8409_cs42l42_bullseye_atn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool9.not53.i = icmp eq i32 %82, 0
  br i1 %tobool9.not53.i, label %for.cond7.preheader.i.if.end16.i_crit_edge, label %for.cond7.preheader.i.for.body10.i_crit_edge

for.cond7.preheader.i.for.body10.i_crit_edge:     ; preds = %for.cond7.preheader.i
  br label %for.body10.i

for.cond7.preheader.i.if.end16.i_crit_edge:       ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %for.cond7.preheader.i.for.body10.i_crit_edge
  %seq_bullseye.054.i = phi ptr [ %incdec.ptr14.i, %for.body10.i.for.body10.i_crit_edge ], [ @cs8409_cs42l42_bullseye_atn, %for.cond7.preheader.i.for.body10.i_crit_edge ]
  %cir11.i = getelementptr inbounds %struct.cs8409_cir_param, ptr %seq_bullseye.054.i, i32 0, i32 1
  %83 = ptrtoint ptr %cir11.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cir11.i, align 4
  %coeff12.i = getelementptr inbounds %struct.cs8409_cir_param, ptr %seq_bullseye.054.i, i32 0, i32 2
  %85 = ptrtoint ptr %coeff12.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %coeff12.i, align 4
  %call.i.i46.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef %84) #8
  %call.i3.i47.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1024, i32 noundef %86) #8
  %incdec.ptr14.i = getelementptr %struct.cs8409_cir_param, ptr %seq_bullseye.054.i, i32 1
  %87 = ptrtoint ptr %incdec.ptr14.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %incdec.ptr14.i, align 4
  %tobool9.not.i = icmp eq i32 %88, 0
  br i1 %tobool9.not.i, label %for.body10.i.if.end16.i_crit_edge, label %for.body10.i.for.body10.i_crit_edge

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10.i

for.body10.i.if.end16.i_crit_edge:                ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.end16.i:                                       ; preds = %for.body10.i.if.end16.i_crit_edge, %for.cond7.preheader.i.if.end16.i_crit_edge, %for.end.i.if.end16.i_crit_edge
  %89 = ptrtoint ptr %fixup_id.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %fixup_id.i, align 4
  %.off.i = add i32 %90, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then21.i, label %if.end16.i.if.end22.i_crit_edge

if.end16.i.if.end22.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then21.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i48.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef 9) #8
  %call.i3.i49.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1024, i32 noundef 3) #8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %if.end16.i.if.end22.i_crit_edge
  tail call fastcc void @cs42l42_resume(ptr noundef %66) #8
  %91 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %spec1, align 8
  %num_scodecs.i.i = getelementptr inbounds %struct.cs8409_spec, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %num_scodecs.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_scodecs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp14.not.i.i = icmp eq i32 %94, 0
  br i1 %cmp14.not.i.i, label %if.end22.i.cs8409_cs42l42_hw_init.exit_crit_edge, label %if.end22.i.for.body.i.i_crit_edge

if.end22.i.for.body.i.i_crit_edge:                ; preds = %if.end22.i
  br label %for.body.i.i

if.end22.i.cs8409_cs42l42_hw_init.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs8409_cs42l42_hw_init.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end22.i.for.body.i.i_crit_edge
  %i.016.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end22.i.for.body.i.i_crit_edge ]
  %ur_gpios.015.i.i = phi i32 [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end22.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i205 = getelementptr %struct.cs8409_spec, ptr %92, i32 0, i32 2, i32 %i.016.i.i
  %95 = ptrtoint ptr %arrayidx.i.i205 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i.i205, align 4
  %irq_mask.i.i = getelementptr inbounds %struct.sub_codec, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %irq_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %irq_mask.i.i, align 4
  %or.i.i = or i32 %98, %ur_gpios.015.i.i
  %inc.i.i = add nuw i32 %i.016.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %94
  br i1 %exitcond.not.i.i, label %for.body.i.i.cs8409_cs42l42_hw_init.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.cs8409_cs42l42_hw_init.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs8409_cs42l42_hw_init.exit

cs8409_cs42l42_hw_init.exit:                      ; preds = %for.body.i.i.cs8409_cs42l42_hw_init.exit_crit_edge, %if.end22.i.cs8409_cs42l42_hw_init.exit_crit_edge
  %ur_gpios.0.lcssa.i.i = phi i32 [ 0, %if.end22.i.cs8409_cs42l42_hw_init.exit_crit_edge ], [ %or.i.i, %for.body.i.i.cs8409_cs42l42_hw_init.exit_crit_edge ]
  %call.i.i50.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1817, i32 noundef %ur_gpios.0.lcssa.i.i) #8
  %call.i13.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1800, i32 noundef 128) #8
  %init_done = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 11
  %99 = ptrtoint ptr %init_done to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load67 = load i8, ptr %init_done, align 4
  %bf.set69 = or i8 %bf.load67, 32
  store i8 %bf.set69, ptr %init_done, align 4
  %100 = and i8 %bf.load67, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool77.not = icmp eq i8 %100, 0
  br i1 %tobool77.not, label %cs8409_cs42l42_hw_init.exit.sw.epilog118_crit_edge, label %land.lhs.true78

cs8409_cs42l42_hw_init.exit.sw.epilog118_crit_edge: ; preds = %cs8409_cs42l42_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog118

land.lhs.true78:                                  ; preds = %cs8409_cs42l42_hw_init.exit
  %101 = ptrtoint ptr %scodecs.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %scodecs.i, align 4
  %hp_jack_in = getelementptr inbounds %struct.sub_codec, ptr %102, i32 0, i32 6
  %103 = ptrtoint ptr %hp_jack_in to i32
  call void @__asan_load1_noabort(i32 %103)
  %bf.load81 = load i8, ptr %hp_jack_in, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load81)
  %tobool84.not = icmp sgt i8 %bf.load81, -1
  br i1 %tobool84.not, label %if.then, label %land.lhs.true78.sw.epilog118_crit_edge

land.lhs.true78.sw.epilog118_crit_edge:           ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog118

if.then:                                          ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @cs42l42_run_jack_detect(ptr noundef %102)
  br label %sw.epilog118

sw.bb87:                                          ; preds = %entry
  %build_ctrl_done88 = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 11
  %104 = ptrtoint ptr %build_ctrl_done88 to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load89 = load i8, ptr %build_ctrl_done88, align 4
  %bf.set91 = or i8 %bf.load89, 16
  store i8 %bf.set91, ptr %build_ctrl_done88, align 4
  %105 = and i8 %bf.load89, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool97.not = icmp eq i8 %105, 0
  br i1 %tobool97.not, label %sw.bb87.sw.epilog118_crit_edge, label %land.lhs.true105

sw.bb87.sw.epilog118_crit_edge:                   ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog118

land.lhs.true105:                                 ; preds = %sw.bb87
  %scodecs106 = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 2
  %106 = ptrtoint ptr %scodecs106 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %scodecs106, align 4
  %hp_jack_in108 = getelementptr inbounds %struct.sub_codec, ptr %107, i32 0, i32 6
  %108 = ptrtoint ptr %hp_jack_in108 to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load109 = load i8, ptr %hp_jack_in108, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load109)
  %tobool112.not = icmp sgt i8 %bf.load109, -1
  br i1 %tobool112.not, label %if.then113, label %land.lhs.true105.sw.epilog118_crit_edge

land.lhs.true105.sw.epilog118_crit_edge:          ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog118

if.then113:                                       ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @cs42l42_run_jack_detect(ptr noundef %107)
  br label %sw.epilog118

sw.epilog118:                                     ; preds = %if.then113, %land.lhs.true105.sw.epilog118_crit_edge, %sw.bb87.sw.epilog118_crit_edge, %if.then, %land.lhs.true78.sw.epilog118_crit_edge, %cs8409_cs42l42_hw_init.exit.sw.epilog118_crit_edge, %sw.bb55, %sw.default, %sw.bb36, %sw.bb26, %sw.bb18, %entry.sw.epilog118_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_add_verbs(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs8409_cs42l42_exec_verb(ptr noundef %dev, i32 noundef %cmd, i32 noundef %flags, ptr noundef %res) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %scodecs = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %scodecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scodecs, align 4
  %shr = lshr i32 %cmd, 20
  %and = and i32 %shr, 127
  %shr2 = lshr i32 %cmd, 8
  %and3 = and i32 %shr2, 4095
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %and, label %entry.sw.epilog_crit_edge [
    i32 36, label %sw.bb
    i32 52, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3849, i32 %and3)
  %cmp = icmp eq i32 %and3, 3849
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %hp_jack_in = getelementptr inbounds %struct.sub_codec, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %hp_jack_in to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %hp_jack_in, align 4
  %6 = and i8 %bf.load, -128
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 %7, 24
  %9 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %res, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3849, i32 %and3)
  %cmp5 = icmp eq i32 %and3, 3849
  br i1 %cmp5, label %if.then6, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then6:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %mic_jack_in = getelementptr inbounds %struct.sub_codec, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %mic_jack_in to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load7 = load i8, ptr %mic_jack_in, align 4
  %11 = and i8 %bf.load7, 64
  %12 = zext i8 %11 to i32
  %13 = shl nuw i32 %12, 25
  %14 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %res, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %exec_verb = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %exec_verb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %exec_verb, align 8
  %call = tail call i32 %16(ptr noundef %dev, i32 noundef %cmd, i32 noundef %flags, ptr noundef %res) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then6, %if.then
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ 0, %if.then6 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_sequence_write(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs42l42_playback_pcm_hook(ptr nocapture noundef readnone %hinfo, ptr nocapture noundef readonly %codec, ptr nocapture noundef readnone %substream, i32 noundef %action) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %2 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %action, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %playback_started = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %playback_started to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %playback_started, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %playback_started, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %playback_started3 = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %playback_started3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load4 = load i8, ptr %playback_started3, align 4
  %bf.clear5 = and i8 %bf.load4, 127
  store i8 %bf.clear5, ptr %playback_started3, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %mute.0.off0 = phi i1 [ true, %sw.bb2 ], [ false, %sw.bb ]
  %num_scodecs = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %num_scodecs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_scodecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp15.not = icmp eq i32 %6, 0
  br i1 %cmp15.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %cs42l42_mute.exit.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %cs42l42_mute.exit.for.body_crit_edge ], [ 0, %sw.epilog.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cs8409_spec, ptr %1, i32 0, i32 2, i32 %i.016
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  br i1 %mute.0.off0, label %if.then.i, label %if.else18.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @cs8409_i2c_write(ptr noundef %8, i32 noundef 8961, i32 noundef 63) #8
  br label %cs42l42_mute.exit

if.else18.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.sub_codec, ptr %8, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %11 = sub i8 0, %10
  %12 = and i8 %11, 63
  %and24.i = zext i8 %12 to i32
  tail call fastcc void @cs8409_i2c_write(ptr noundef %8, i32 noundef 8961, i32 noundef %and24.i) #8
  %arrayidx31.i = getelementptr %struct.sub_codec, ptr %8, i32 0, i32 10, i32 2
  %13 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx31.i, align 1
  %15 = sub i8 0, %14
  %16 = and i8 %15, 63
  %and34.i = zext i8 %16 to i32
  br label %cs42l42_mute.exit

cs42l42_mute.exit:                                ; preds = %if.else18.i, %if.then.i
  %.sink = phi i32 [ 63, %if.then.i ], [ %and34.i, %if.else18.i ]
  tail call fastcc void @cs8409_i2c_write(ptr noundef %8, i32 noundef 8963, i32 noundef %.sink) #8
  %inc = add nuw i32 %i.016, 1
  %17 = ptrtoint ptr %num_scodecs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_scodecs, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %cs42l42_mute.exit.for.body_crit_edge, label %cs42l42_mute.exit.cleanup_crit_edge

cs42l42_mute.exit.cleanup_crit_edge:              ; preds = %cs42l42_mute.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cs42l42_mute.exit.for.body_crit_edge:             ; preds = %cs42l42_mute.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %cs42l42_mute.exit.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs42l42_capture_pcm_hook(ptr nocapture noundef readnone %hinfo, ptr nocapture noundef readonly %codec, ptr nocapture noundef readnone %substream, i32 noundef %action) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %2 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %action, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %capture_started = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %capture_started to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %capture_started, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %capture_started, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %capture_started3 = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %capture_started3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load4 = load i8, ptr %capture_started3, align 4
  %bf.clear5 = and i8 %bf.load4, -65
  store i8 %bf.clear5, ptr %capture_started3, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %mute.0.off0 = phi i1 [ true, %sw.bb2 ], [ false, %sw.bb ]
  %num_scodecs = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %num_scodecs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_scodecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp15.not = icmp eq i32 %6, 0
  br i1 %cmp15.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %cs42l42_mute.exit.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %cs42l42_mute.exit.for.body_crit_edge ], [ 0, %sw.epilog.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cs8409_spec, ptr %1, i32 0, i32 2, i32 %i.016
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  br i1 %mute.0.off0, label %for.body.cs42l42_mute.exit_crit_edge, label %if.else18.i

for.body.cs42l42_mute.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs42l42_mute.exit

if.else18.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %vol44.i = getelementptr inbounds %struct.sub_codec, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %vol44.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %vol44.i, align 1
  %conv4669.i = zext i8 %10 to i32
  br label %cs42l42_mute.exit

cs42l42_mute.exit:                                ; preds = %if.else18.i, %for.body.cs42l42_mute.exit_crit_edge
  %.sink = phi i32 [ %conv4669.i, %if.else18.i ], [ 159, %for.body.cs42l42_mute.exit_crit_edge ]
  tail call fastcc void @cs8409_i2c_write(ptr noundef %8, i32 noundef 7427, i32 noundef %.sink) #8
  %inc = add nuw i32 %i.016, 1
  %11 = ptrtoint ptr %num_scodecs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_scodecs, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %cs42l42_mute.exit.for.body_crit_edge, label %cs42l42_mute.exit.cleanup_crit_edge

cs42l42_mute.exit.cleanup_crit_edge:              ; preds = %cs42l42_mute.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cs42l42_mute.exit.for.body_crit_edge:             ; preds = %cs42l42_mute.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %cs42l42_mute.exit.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_amp_init_stereo(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_gen_add_kctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_set_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs42l42_run_jack_detect(ptr nocapture noundef %cs42l42) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cs8409_i2c_read(ptr noundef %cs42l42, i32 noundef 4872)
  %call1 = tail call fastcc i32 @cs8409_i2c_read(ptr noundef %cs42l42, i32 noundef 7031)
  tail call fastcc void @cs8409_i2c_write(ptr noundef %cs42l42, i32 noundef 4896, i32 noundef 255)
  %call3 = tail call fastcc i32 @cs8409_i2c_read(ptr noundef %cs42l42, i32 noundef 4879)
  tail call fastcc void @cs8409_i2c_write(ptr noundef %cs42l42, i32 noundef 4354, i32 noundef 135)
  tail call fastcc void @cs8409_i2c_write(ptr noundef %cs42l42, i32 noundef 7942, i32 noundef 134)
  tail call fastcc void @cs8409_i2c_write(ptr noundef %cs42l42, i32 noundef 7028, i32 noundef 7)
  tail call fastcc void @cs8409_i2c_write(ptr noundef %cs42l42, i32 noundef 4891, i32 noundef 253)
  tail call fastcc void @cs8409_i2c_write(ptr noundef %cs42l42, i32 noundef 4384, i32 noundef 128)
  tail call void @usleep_range_state(i32 noundef 20000, i32 noundef 25000, i32 noundef 2) #8
  tail call fastcc void @cs8409_i2c_write(ptr noundef %cs42l42, i32 noundef 4383, i32 noundef 119)
  tail call fastcc void @cs8409_i2c_write(ptr noundef %cs42l42, i32 noundef 4384, i32 noundef 192)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dolphin_fixups(ptr noundef %codec, ptr nocapture noundef readnone %fix, i32 noundef %action) local_unnamed_addr #3 align 64 {
entry:
  %val.i.i172 = alloca i32, align 4
  %val.i.i141 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %2 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %action, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb20
    i32 2, label %sw.bb31
    i32 3, label %sw.bb51
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @snd_hda_add_verbs(ptr noundef %codec, ptr noundef nonnull @dolphin_init_verbs) #8
  %exec_verb = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 16
  %3 = ptrtoint ptr %exec_verb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %exec_verb, align 4
  %exec_verb2 = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %exec_verb2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %exec_verb2, align 8
  store ptr @dolphin_exec_verb, ptr %exec_verb, align 4
  %scodecs = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %scodecs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dolphin_cs42l42_0, ptr %scodecs, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @dolphin_cs42l42_0 to i32))
  store ptr %codec, ptr @dolphin_cs42l42_0, align 4
  %arrayidx9 = getelementptr %struct.cs8409_spec, ptr %1, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dolphin_cs42l42_1, ptr %arrayidx9, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @dolphin_cs42l42_1 to i32))
  store ptr %codec, ptr @dolphin_cs42l42_1, align 4
  %num_scodecs = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %num_scodecs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %num_scodecs, align 4
  %patch_ops = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %9 = call ptr @memcpy(ptr %patch_ops, ptr @cs8409_dolphin_patch_ops, i32 40)
  %10 = load ptr, ptr %scodecs, align 4
  %reset_gpio = getelementptr inbounds %struct.sub_codec, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reset_gpio, align 4
  %13 = load ptr, ptr %arrayidx9, align 4
  %reset_gpio17 = getelementptr inbounds %struct.sub_codec, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %reset_gpio17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reset_gpio17, align 4
  %or = or i32 %15, %12
  %gpio_dir = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %gpio_dir, align 4
  %gpio_data = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %gpio_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %gpio_data, align 8
  %gpio_mask = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 63, ptr %gpio_mask, align 8
  tail call void @snd_hda_sequence_write(ptr noundef %codec, ptr noundef nonnull @dolphin_init_verbs) #8
  %call.i = tail call i32 @snd_hda_jack_add_kctl_mst(ptr noundef %codec, i16 noundef zeroext 37, i32 noundef 0, ptr noundef nonnull @.str.3, i1 noundef zeroext true, i32 noundef 1, ptr noundef null) #8
  %call.i140 = tail call i32 @snd_hda_jack_add_kctl_mst(ptr noundef %codec, i16 noundef zeroext 52, i32 noundef 0, ptr noundef nonnull @.str.4, i1 noundef zeroext true, i32 noundef 2, ptr noundef null) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #8
  %19 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %val.i.i, align 4, !annotation !79
  %call.i.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext 36, i32 noundef 12, ptr noundef nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %snd_hdac_read_parm.exit.thread.i, label %snd_hdac_read_parm.exit.i

snd_hdac_read_parm.exit.thread.i:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #8
  br label %if.end.i

snd_hdac_read_parm.exit.i:                        ; preds = %sw.bb
  %20 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i = icmp sgt i32 %21, -1
  br i1 %cmp.i, label %if.then.i, label %snd_hdac_read_parm.exit.i.if.end.i_crit_edge

snd_hdac_read_parm.exit.i.if.end.i_crit_edge:     ; preds = %snd_hdac_read_parm.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %snd_hdac_read_parm.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %21, 5
  %call4.i = call i32 @snd_hdac_override_parm(ptr noundef %codec, i16 noundef zeroext 36, i32 noundef 12, i32 noundef %or.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %snd_hdac_read_parm.exit.i.if.end.i_crit_edge, %snd_hdac_read_parm.exit.thread.i
  %start_nid.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %22 = ptrtoint ptr %start_nid.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %start_nid.i.i, align 4
  %conv1.i.i = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 36, i16 %23)
  %cmp.i16.i = icmp ugt i16 %23, 36
  br i1 %cmp.i16.i, label %if.end.i.cs8409_fix_caps.exit_crit_edge, label %lor.lhs.false.i.i

if.end.i.cs8409_fix_caps.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs8409_fix_caps.exit

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %num_nodes.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %24 = ptrtoint ptr %num_nodes.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_nodes.i.i, align 8
  %add.i.i = add i32 %25, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %add.i.i)
  %cmp8.not.i.i = icmp ugt i32 %add.i.i, 36
  br i1 %cmp8.not.i.i, label %if.then.i.i, label %lor.lhs.false.i.i.cs8409_fix_caps.exit_crit_edge

lor.lhs.false.i.i.cs8409_fix_caps.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs8409_fix_caps.exit

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %wcaps.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %26 = ptrtoint ptr %wcaps.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wcaps.i.i, align 4
  %sub.i.i = sub nsw i32 36, %conv1.i.i
  %arrayidx.i.i = getelementptr i32, ptr %27, i32 %sub.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i, align 4
  %phi.bo.i = or i32 %29, 128
  store i32 %phi.bo.i, ptr %arrayidx.i.i, align 4
  br label %cs8409_fix_caps.exit

cs8409_fix_caps.exit:                             ; preds = %if.then.i.i, %lor.lhs.false.i.i.cs8409_fix_caps.exit_crit_edge, %if.end.i.cs8409_fix_caps.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i141) #8
  %30 = ptrtoint ptr %val.i.i141 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %val.i.i141, align 4, !annotation !79
  %call.i.i142 = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext 37, i32 noundef 12, ptr noundef nonnull %val.i.i141) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i142)
  %cmp.i.i143 = icmp slt i32 %call.i.i142, 0
  br i1 %cmp.i.i143, label %snd_hdac_read_parm.exit.thread.i144, label %snd_hdac_read_parm.exit.i146

snd_hdac_read_parm.exit.thread.i144:              ; preds = %cs8409_fix_caps.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i141) #8
  br label %if.end.i153

snd_hdac_read_parm.exit.i146:                     ; preds = %cs8409_fix_caps.exit
  %31 = ptrtoint ptr %val.i.i141 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i.i141, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i141) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.i145 = icmp sgt i32 %32, -1
  br i1 %cmp.i145, label %if.then.i149, label %snd_hdac_read_parm.exit.i146.if.end.i153_crit_edge

snd_hdac_read_parm.exit.i146.if.end.i153_crit_edge: ; preds = %snd_hdac_read_parm.exit.i146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i153

if.then.i149:                                     ; preds = %snd_hdac_read_parm.exit.i146
  call void @__sanitizer_cov_trace_pc() #10
  %or.i147 = or i32 %32, 5
  %call4.i148 = call i32 @snd_hdac_override_parm(ptr noundef %codec, i16 noundef zeroext 37, i32 noundef 12, i32 noundef %or.i147) #8
  br label %if.end.i153

if.end.i153:                                      ; preds = %if.then.i149, %snd_hdac_read_parm.exit.i146.if.end.i153_crit_edge, %snd_hdac_read_parm.exit.thread.i144
  %33 = ptrtoint ptr %start_nid.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %start_nid.i.i, align 4
  %conv1.i.i151 = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 37, i16 %34)
  %cmp.i16.i152 = icmp ugt i16 %34, 37
  br i1 %cmp.i16.i152, label %if.end.i153.cs8409_fix_caps.exit171_crit_edge, label %lor.lhs.false.i.i157

if.end.i153.cs8409_fix_caps.exit171_crit_edge:    ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs8409_fix_caps.exit171

lor.lhs.false.i.i157:                             ; preds = %if.end.i153
  %num_nodes.i.i154 = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %35 = ptrtoint ptr %num_nodes.i.i154 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_nodes.i.i154, align 8
  %add.i.i155 = add i32 %36, %conv1.i.i151
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %add.i.i155)
  %cmp8.not.i.i156 = icmp ugt i32 %add.i.i155, 37
  br i1 %cmp8.not.i.i156, label %if.then.i.i170, label %lor.lhs.false.i.i157.cs8409_fix_caps.exit171_crit_edge

lor.lhs.false.i.i157.cs8409_fix_caps.exit171_crit_edge: ; preds = %lor.lhs.false.i.i157
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs8409_fix_caps.exit171

if.then.i.i170:                                   ; preds = %lor.lhs.false.i.i157
  call void @__sanitizer_cov_trace_pc() #10
  %wcaps.i.i158 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %37 = ptrtoint ptr %wcaps.i.i158 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wcaps.i.i158, align 4
  %sub.i.i159 = sub nsw i32 37, %conv1.i.i151
  %arrayidx.i.i160 = getelementptr i32, ptr %38, i32 %sub.i.i159
  %39 = ptrtoint ptr %arrayidx.i.i160 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i160, align 4
  %phi.bo.i161 = or i32 %40, 128
  store i32 %phi.bo.i161, ptr %arrayidx.i.i160, align 4
  br label %cs8409_fix_caps.exit171

cs8409_fix_caps.exit171:                          ; preds = %if.then.i.i170, %lor.lhs.false.i.i157.cs8409_fix_caps.exit171_crit_edge, %if.end.i153.cs8409_fix_caps.exit171_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i172) #8
  %41 = ptrtoint ptr %val.i.i172 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %val.i.i172, align 4, !annotation !79
  %call.i.i173 = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext 52, i32 noundef 12, ptr noundef nonnull %val.i.i172) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i173)
  %cmp.i.i174 = icmp slt i32 %call.i.i173, 0
  br i1 %cmp.i.i174, label %snd_hdac_read_parm.exit.thread.i175, label %snd_hdac_read_parm.exit.i177

snd_hdac_read_parm.exit.thread.i175:              ; preds = %cs8409_fix_caps.exit171
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i172) #8
  br label %if.end.i184

snd_hdac_read_parm.exit.i177:                     ; preds = %cs8409_fix_caps.exit171
  %42 = ptrtoint ptr %val.i.i172 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val.i.i172, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i172) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp.i176 = icmp sgt i32 %43, -1
  br i1 %cmp.i176, label %if.then.i180, label %snd_hdac_read_parm.exit.i177.if.end.i184_crit_edge

snd_hdac_read_parm.exit.i177.if.end.i184_crit_edge: ; preds = %snd_hdac_read_parm.exit.i177
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i184

if.then.i180:                                     ; preds = %snd_hdac_read_parm.exit.i177
  call void @__sanitizer_cov_trace_pc() #10
  %or.i178 = or i32 %43, 5
  %call4.i179 = call i32 @snd_hdac_override_parm(ptr noundef %codec, i16 noundef zeroext 52, i32 noundef 12, i32 noundef %or.i178) #8
  br label %if.end.i184

if.end.i184:                                      ; preds = %if.then.i180, %snd_hdac_read_parm.exit.i177.if.end.i184_crit_edge, %snd_hdac_read_parm.exit.thread.i175
  %44 = ptrtoint ptr %start_nid.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %start_nid.i.i, align 4
  %conv1.i.i182 = zext i16 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 52, i16 %45)
  %cmp.i16.i183 = icmp ugt i16 %45, 52
  br i1 %cmp.i16.i183, label %if.end.i184.sw.epilog_crit_edge, label %lor.lhs.false.i.i188

if.end.i184.sw.epilog_crit_edge:                  ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false.i.i188:                             ; preds = %if.end.i184
  %num_nodes.i.i185 = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %46 = ptrtoint ptr %num_nodes.i.i185 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_nodes.i.i185, align 8
  %add.i.i186 = add i32 %47, %conv1.i.i182
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %add.i.i186)
  %cmp8.not.i.i187 = icmp ugt i32 %add.i.i186, 52
  br i1 %cmp8.not.i.i187, label %if.then.i.i201, label %lor.lhs.false.i.i188.sw.epilog_crit_edge

lor.lhs.false.i.i188.sw.epilog_crit_edge:         ; preds = %lor.lhs.false.i.i188
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i.i201:                                   ; preds = %lor.lhs.false.i.i188
  call void @__sanitizer_cov_trace_pc() #10
  %wcaps.i.i189 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %48 = ptrtoint ptr %wcaps.i.i189 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wcaps.i.i189, align 4
  %sub.i.i190 = sub nsw i32 52, %conv1.i.i182
  %arrayidx.i.i191 = getelementptr i32, ptr %49, i32 %sub.i.i190
  %50 = ptrtoint ptr %arrayidx.i.i191 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i191, align 4
  %phi.bo.i192 = or i32 %51, 128
  store i32 %phi.bo.i192, ptr %arrayidx.i.i191, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %stream_analog_playback = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 1
  %52 = ptrtoint ptr %stream_analog_playback to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @cs42l42_48k_pcm_analog_playback, ptr %stream_analog_playback, align 8
  %stream_analog_capture = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 2
  %53 = ptrtoint ptr %stream_analog_capture to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @cs42l42_48k_pcm_analog_capture, ptr %stream_analog_capture, align 4
  %pcm_playback_hook = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 79
  %54 = ptrtoint ptr %pcm_playback_hook to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @cs42l42_playback_pcm_hook, ptr %pcm_playback_hook, align 4
  %pcm_capture_hook = getelementptr inbounds %struct.hda_gen_spec, ptr %1, i32 0, i32 80
  %55 = ptrtoint ptr %pcm_capture_hook to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @cs42l42_capture_pcm_hook, ptr %pcm_capture_hook, align 8
  %call25 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @cs42l42_dac_volume_mixer) #8
  %call27 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @cs42l42_adc_volume_mixer) #8
  %call29 = tail call ptr @snd_hda_gen_add_kctl(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @cs42l42_dac_volume_mixer) #8
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %call29, i32 0, i32 11
  %56 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 546242596, ptr %private_value, align 4
  %call.i.i204 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1817, i32 noundef 0) #8
  %call.i13.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1800, i32 noundef 0) #8
  %call30 = tail call i32 @snd_hda_codec_set_name(ptr noundef %codec, ptr noundef nonnull @.str.2) #8
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  %gpio_mask.i = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 4
  %57 = ptrtoint ptr %gpio_mask.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %gpio_mask.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i, label %sw.bb31.if.end.i208_crit_edge, label %if.then.i207

sw.bb31.if.end.i208_crit_edge:                    ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i208

if.then.i207:                                     ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i206 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1814, i32 noundef %58) #8
  %gpio_dir.i = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 5
  %59 = ptrtoint ptr %gpio_dir.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %gpio_dir.i, align 4
  %call.i25.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1815, i32 noundef %60) #8
  %gpio_data.i = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 6
  %61 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %gpio_data.i, align 8
  %call.i26.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1813, i32 noundef %62) #8
  br label %if.end.i208

if.end.i208:                                      ; preds = %if.then.i207, %sw.bb31.if.end.i208_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dolphin_hw_cfg to i32))
  %63 = load i32, ptr @dolphin_hw_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool5.not28.i = icmp eq i32 %63, 0
  br i1 %tobool5.not28.i, label %if.end.i208.for.cond6.preheader.i_crit_edge, label %if.end.i208.for.body.i210_crit_edge

if.end.i208.for.body.i210_crit_edge:              ; preds = %if.end.i208
  br label %for.body.i210

if.end.i208.for.cond6.preheader.i_crit_edge:      ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond6.preheader.i

for.cond6.preheader.i:                            ; preds = %for.body.i210.for.cond6.preheader.i_crit_edge, %if.end.i208.for.cond6.preheader.i_crit_edge
  %num_scodecs.i209 = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 3
  %64 = ptrtoint ptr %num_scodecs.i209 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_scodecs.i209, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp30.not.i = icmp eq i32 %65, 0
  br i1 %cmp30.not.i, label %for.cond6.preheader.i.for.end9.i_crit_edge, label %for.cond6.preheader.i.for.body7.i_crit_edge

for.cond6.preheader.i.for.body7.i_crit_edge:      ; preds = %for.cond6.preheader.i
  br label %for.body7.i

for.cond6.preheader.i.for.end9.i_crit_edge:       ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end9.i

for.body.i210:                                    ; preds = %for.body.i210.for.body.i210_crit_edge, %if.end.i208.for.body.i210_crit_edge
  %seq.029.i = phi ptr [ %incdec.ptr.i, %for.body.i210.for.body.i210_crit_edge ], [ @dolphin_hw_cfg, %if.end.i208.for.body.i210_crit_edge ]
  %cir.i = getelementptr inbounds %struct.cs8409_cir_param, ptr %seq.029.i, i32 0, i32 1
  %66 = ptrtoint ptr %cir.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cir.i, align 4
  %coeff.i = getelementptr inbounds %struct.cs8409_cir_param, ptr %seq.029.i, i32 0, i32 2
  %68 = ptrtoint ptr %coeff.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %coeff.i, align 4
  %call.i.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef %67) #8
  %call.i3.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1024, i32 noundef %69) #8
  %incdec.ptr.i = getelementptr %struct.cs8409_cir_param, ptr %seq.029.i, i32 1
  %70 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %incdec.ptr.i, align 4
  %tobool5.not.i = icmp eq i32 %71, 0
  br i1 %tobool5.not.i, label %for.body.i210.for.cond6.preheader.i_crit_edge, label %for.body.i210.for.body.i210_crit_edge

for.body.i210.for.body.i210_crit_edge:            ; preds = %for.body.i210
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i210

for.body.i210.for.cond6.preheader.i_crit_edge:    ; preds = %for.body.i210
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond6.preheader.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.cond6.preheader.i.for.body7.i_crit_edge
  %i.031.i = phi i32 [ %inc.i212, %for.body7.i.for.body7.i_crit_edge ], [ 0, %for.cond6.preheader.i.for.body7.i_crit_edge ]
  %arrayidx.i211 = getelementptr %struct.cs8409_spec, ptr %1, i32 0, i32 2, i32 %i.031.i
  %72 = ptrtoint ptr %arrayidx.i211 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i211, align 4
  tail call fastcc void @cs42l42_resume(ptr noundef %73) #8
  %inc.i212 = add nuw i32 %i.031.i, 1
  %74 = ptrtoint ptr %num_scodecs.i209 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_scodecs.i209, align 4
  %cmp.i213 = icmp ult i32 %inc.i212, %75
  br i1 %cmp.i213, label %for.body7.i.for.body7.i_crit_edge, label %for.body7.i.for.end9.i_crit_edge

for.body7.i.for.end9.i_crit_edge:                 ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end9.i

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7.i

for.end9.i:                                       ; preds = %for.body7.i.for.end9.i_crit_edge, %for.cond6.preheader.i.for.end9.i_crit_edge
  %76 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %spec1, align 8
  %num_scodecs.i.i = getelementptr inbounds %struct.cs8409_spec, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %num_scodecs.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_scodecs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp14.not.i.i = icmp eq i32 %79, 0
  br i1 %cmp14.not.i.i, label %for.end9.i.dolphin_hw_init.exit_crit_edge, label %for.end9.i.for.body.i.i_crit_edge

for.end9.i.for.body.i.i_crit_edge:                ; preds = %for.end9.i
  br label %for.body.i.i

for.end9.i.dolphin_hw_init.exit_crit_edge:        ; preds = %for.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dolphin_hw_init.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.end9.i.for.body.i.i_crit_edge
  %i.016.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.end9.i.for.body.i.i_crit_edge ]
  %ur_gpios.015.i.i = phi i32 [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.end9.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i214 = getelementptr %struct.cs8409_spec, ptr %77, i32 0, i32 2, i32 %i.016.i.i
  %80 = ptrtoint ptr %arrayidx.i.i214 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i.i214, align 4
  %irq_mask.i.i = getelementptr inbounds %struct.sub_codec, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %irq_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %irq_mask.i.i, align 4
  %or.i.i = or i32 %83, %ur_gpios.015.i.i
  %inc.i.i = add nuw i32 %i.016.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %79
  br i1 %exitcond.not.i.i, label %for.body.i.i.dolphin_hw_init.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.dolphin_hw_init.exit_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dolphin_hw_init.exit

dolphin_hw_init.exit:                             ; preds = %for.body.i.i.dolphin_hw_init.exit_crit_edge, %for.end9.i.dolphin_hw_init.exit_crit_edge
  %ur_gpios.0.lcssa.i.i = phi i32 [ 0, %for.end9.i.dolphin_hw_init.exit_crit_edge ], [ %or.i.i, %for.body.i.i.dolphin_hw_init.exit_crit_edge ]
  %call.i.i27.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1817, i32 noundef %ur_gpios.0.lcssa.i.i) #8
  %call.i13.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1800, i32 noundef 128) #8
  %init_done = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 11
  %84 = ptrtoint ptr %init_done to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load = load i8, ptr %init_done, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %init_done, align 4
  %85 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool39.not = icmp eq i8 %85, 0
  br i1 %tobool39.not, label %dolphin_hw_init.exit.sw.epilog_crit_edge, label %for.cond.preheader

dolphin_hw_init.exit.sw.epilog_crit_edge:         ; preds = %dolphin_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.cond.preheader:                               ; preds = %dolphin_hw_init.exit
  %86 = ptrtoint ptr %num_scodecs.i209 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_scodecs.i209, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp224.not = icmp eq i32 %87, 0
  br i1 %cmp224.not, label %for.cond.preheader.sw.epilog_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.sw.epilog_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0225 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx42 = getelementptr %struct.cs8409_spec, ptr %1, i32 0, i32 2, i32 %i.0225
  %88 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx42, align 4
  %hp_jack_in = getelementptr inbounds %struct.sub_codec, ptr %89, i32 0, i32 6
  %90 = ptrtoint ptr %hp_jack_in to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load43 = load i8, ptr %hp_jack_in, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load43)
  %tobool46.not = icmp sgt i8 %bf.load43, -1
  br i1 %tobool46.not, label %if.then47, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then47:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @cs42l42_run_jack_detect(ptr noundef %89)
  br label %for.inc

for.inc:                                          ; preds = %if.then47, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0225, 1
  %91 = ptrtoint ptr %num_scodecs.i209 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_scodecs.i209, align 4
  %cmp = icmp ult i32 %inc, %92
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.sw.epilog_crit_edge

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

sw.bb51:                                          ; preds = %entry
  %build_ctrl_done52 = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 11
  %93 = ptrtoint ptr %build_ctrl_done52 to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load53 = load i8, ptr %build_ctrl_done52, align 4
  %bf.set55 = or i8 %bf.load53, 16
  store i8 %bf.set55, ptr %build_ctrl_done52, align 4
  %94 = and i8 %bf.load53, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool61.not = icmp eq i8 %94, 0
  br i1 %tobool61.not, label %sw.bb51.sw.epilog_crit_edge, label %for.cond70.preheader

sw.bb51.sw.epilog_crit_edge:                      ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.cond70.preheader:                             ; preds = %sw.bb51
  %num_scodecs71 = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 3
  %95 = ptrtoint ptr %num_scodecs71 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_scodecs71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp72222.not = icmp eq i32 %96, 0
  br i1 %cmp72222.not, label %for.cond70.preheader.sw.epilog_crit_edge, label %for.cond70.preheader.for.body73_crit_edge

for.cond70.preheader.for.body73_crit_edge:        ; preds = %for.cond70.preheader
  br label %for.body73

for.cond70.preheader.sw.epilog_crit_edge:         ; preds = %for.cond70.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body73:                                       ; preds = %for.inc85.for.body73_crit_edge, %for.cond70.preheader.for.body73_crit_edge
  %i.1223 = phi i32 [ %inc86, %for.inc85.for.body73_crit_edge ], [ 0, %for.cond70.preheader.for.body73_crit_edge ]
  %arrayidx75 = getelementptr %struct.cs8409_spec, ptr %1, i32 0, i32 2, i32 %i.1223
  %97 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx75, align 4
  %hp_jack_in76 = getelementptr inbounds %struct.sub_codec, ptr %98, i32 0, i32 6
  %99 = ptrtoint ptr %hp_jack_in76 to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load77 = load i8, ptr %hp_jack_in76, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load77)
  %tobool80.not = icmp sgt i8 %bf.load77, -1
  br i1 %tobool80.not, label %if.then81, label %for.body73.for.inc85_crit_edge

for.body73.for.inc85_crit_edge:                   ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc85

if.then81:                                        ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @cs42l42_run_jack_detect(ptr noundef %98)
  br label %for.inc85

for.inc85:                                        ; preds = %if.then81, %for.body73.for.inc85_crit_edge
  %inc86 = add nuw i32 %i.1223, 1
  %100 = ptrtoint ptr %num_scodecs71 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %num_scodecs71, align 4
  %cmp72 = icmp ult i32 %inc86, %101
  br i1 %cmp72, label %for.inc85.for.body73_crit_edge, label %for.inc85.sw.epilog_crit_edge

for.inc85.sw.epilog_crit_edge:                    ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.inc85.for.body73_crit_edge:                   ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body73

sw.epilog:                                        ; preds = %for.inc85.sw.epilog_crit_edge, %for.cond70.preheader.sw.epilog_crit_edge, %sw.bb51.sw.epilog_crit_edge, %for.inc.sw.epilog_crit_edge, %for.cond.preheader.sw.epilog_crit_edge, %dolphin_hw_init.exit.sw.epilog_crit_edge, %sw.bb20, %if.then.i.i201, %lor.lhs.false.i.i188.sw.epilog_crit_edge, %if.end.i184.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dolphin_exec_verb(ptr noundef %dev, i32 noundef %cmd, i32 noundef %flags, ptr noundef %res) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %scodecs = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %scodecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scodecs, align 4
  %shr = lshr i32 %cmd, 20
  %and = and i32 %shr, 127
  %shr2 = lshr i32 %cmd, 8
  %and3 = and i32 %shr2, 4095
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %and, label %entry.sw.epilog_crit_edge [
    i32 52, label %sw.bb9
    i32 37, label %if.then
    i32 36, label %entry.if.end_crit_edge
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5 = getelementptr %struct.cs8409_spec, ptr %1, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cs42l42.0 = phi ptr [ %6, %if.then ], [ %3, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3849, i32 %and3)
  %cmp6 = icmp eq i32 %and3, 3849
  br i1 %cmp6, label %if.then7, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %hp_jack_in = getelementptr inbounds %struct.sub_codec, ptr %cs42l42.0, i32 0, i32 6
  %7 = ptrtoint ptr %hp_jack_in to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %hp_jack_in, align 4
  %8 = and i8 %bf.load, -128
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 %9, 24
  %11 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %res, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3849, i32 %and3)
  %cmp10 = icmp eq i32 %and3, 3849
  br i1 %cmp10, label %if.then11, label %sw.bb9.sw.epilog_crit_edge

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then11:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  %mic_jack_in = getelementptr inbounds %struct.sub_codec, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %mic_jack_in to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load12 = load i8, ptr %mic_jack_in, align 4
  %13 = and i8 %bf.load12, 64
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 %14, 25
  %16 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %res, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb9.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %exec_verb = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %exec_verb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %exec_verb, align 8
  %call = tail call i32 %18(ptr noundef %dev, i32 noundef %cmd, i32 noundef %flags, ptr noundef %res) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then11, %if.then7
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ 0, %if.then11 ], [ 0, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cs8409_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hda_codec_driver_register(ptr noundef nonnull @cs8409_driver, ptr noundef nonnull @.str.18, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cs8409_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hda_codec_driver_unregister(ptr noundef nonnull @cs8409_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_codec_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs8409_i2c_write(ptr nocapture noundef %scodec, i32 noundef %addr, i32 noundef %value) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %scodec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scodec, align 4
  %suspended = getelementptr inbounds %struct.sub_codec, ptr %scodec, i32 0, i32 6
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %suspended, align 4
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec2 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %spec2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec2, align 8
  %i2c_mux = getelementptr inbounds %struct.cs8409_spec, ptr %5, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %i2c_mux, i32 noundef 0) #8
  tail call fastcc void @cs8409_enable_i2c_clock(ptr noundef %1)
  %addr3 = getelementptr inbounds %struct.sub_codec, ptr %scodec, i32 0, i32 1
  %6 = ptrtoint ptr %addr3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr3, align 4
  %8 = ptrtoint ptr %spec2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spec2, align 8
  %dev_addr.i = getelementptr inbounds %struct.cs8409_spec, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dev_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp.not.i = icmp eq i32 %11, %7
  br i1 %cmp.not.i, label %if.end.cs8409_set_i2c_dev_addr.exit_crit_edge, label %if.then.i

if.end.cs8409_set_i2c_dev_addr.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs8409_set_i2c_dev_addr.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef 89) #8
  %call.i3.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1024, i32 noundef %7) #8
  %12 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %7, ptr %dev_addr.i, align 4
  br label %cs8409_set_i2c_dev_addr.exit

cs8409_set_i2c_dev_addr.exit:                     ; preds = %if.then.i, %if.end.cs8409_set_i2c_dev_addr.exit_crit_edge
  %13 = ptrtoint ptr %scodec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %scodec, align 4
  %15 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %suspended, align 4
  %16 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %cs8409_set_i2c_dev_addr.exit.if.end6_crit_edge, label %land.lhs.true.i

cs8409_set_i2c_dev_addr.exit.if.end6_crit_edge:   ; preds = %cs8409_set_i2c_dev_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true.i:                                  ; preds = %cs8409_set_i2c_dev_addr.exit
  %last_page.i = getelementptr inbounds %struct.sub_codec, ptr %scodec, i32 0, i32 7
  %17 = ptrtoint ptr %last_page.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %last_page.i, align 4
  %shr.i = lshr i32 %addr, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %shr.i)
  %cmp.not.i1 = icmp eq i32 %18, %shr.i
  br i1 %cmp.not.i1, label %land.lhs.true.i.if.end6_crit_edge, label %if.then.i4

land.lhs.true.i.if.end6_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then.i4:                                       ; preds = %land.lhs.true.i
  %call.i.i.i2 = tail call i32 @snd_hdac_codec_write(ptr noundef %14, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef 93) #8
  %call.i3.i.i3 = tail call i32 @snd_hdac_codec_write(ptr noundef %14, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1024, i32 noundef %shr.i) #8
  %call.i = tail call fastcc i32 @cs8409_i2c_wait_complete(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %if.then.i4.error_crit_edge, label %if.end.i

if.then.i4.error_crit_edge:                       ; preds = %if.then.i4
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end.i:                                         ; preds = %if.then.i4
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %last_page.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr.i, ptr %last_page.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end.i, %land.lhs.true.i.if.end6_crit_edge, %cs8409_set_i2c_dev_addr.exit.if.end6_crit_edge
  %shl = shl i32 %addr, 8
  %and = and i32 %shl, 65280
  %and7 = and i32 %value, 255
  %or = or i32 %and, %and7
  %call.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef 93) #8
  %call.i3.i = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1024, i32 noundef %or) #8
  %call8 = tail call fastcc i32 @cs8409_i2c_wait_complete(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end6.error_crit_edge, label %if.end10

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %i2c_mux) #8
  br label %cleanup

error:                                            ; preds = %if.end6.error_crit_edge, %if.then.i4.error_crit_edge
  tail call void @mutex_unlock(ptr noundef %i2c_mux) #8
  %20 = ptrtoint ptr %addr3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %21, i32 noundef %addr) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs8409_enable_i2c_clock(ptr noundef %codec) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %i2c_clk_work = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 10
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %i2c_clk_work) #8
  %i2c_clck_enabled = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i2c_clck_enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_clck_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef 0) #8
  %call.i3.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #8
  %or = or i32 %call.i3.i, 8
  %call.i.i12 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef 0) #8
  %call.i3.i13 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1024, i32 noundef %or) #8
  %4 = ptrtoint ptr %i2c_clck_enabled to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %i2c_clck_enabled, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %5 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %i2c_clk_work, i32 noundef 3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cs8409_i2c_wait_complete(ptr noundef %codec) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 151) #8
  %call.i.i33 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef 92) #8
  %call.i3.i34 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #8
  %and35 = and i32 %call.i3.i34, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool.not36 = icmp eq i32 %and35, 0
  br i1 %tobool.not36, label %entry.land.lhs.true_crit_edge, label %entry.for.end.thread_crit_edge

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then20.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then20

if.then20:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #8
  %call.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef 92) #8
  %call.i3.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #8
  %and = and i32 %call.i3.i, 24
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then20.land.lhs.true_crit_edge, label %if.then20.for.end.thread_crit_edge

if.then20.for.end.thread_crit_edge:               ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

if.then20.land.lhs.true_crit_edge:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i30 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef 92) #8
  %call.i3.i31 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #8
  %.pre = and i32 %call.i3.i31, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool23.not = icmp eq i32 %.pre, 0
  %spec.select = select i1 %tobool23.not, i32 -110, i32 0
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %if.then20.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  %0 = phi i32 [ 0, %entry.for.end.thread_crit_edge ], [ %spec.select, %for.end ], [ 0, %if.then20.for.end.thread_crit_edge ]
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_write(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_read(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs8409_build_controls(ptr noundef %codec) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_hda_gen_build_controls(ptr noundef %codec) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_build_pcms(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs8409_init(ptr noundef %codec) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_hda_gen_init(ptr noundef %codec) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs8409_free(ptr noundef %codec) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %i2c_clk_work = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 10
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %i2c_clk_work) #8
  tail call fastcc void @cs8409_disable_i2c_clock(ptr noundef %codec)
  tail call void @snd_hda_gen_free(ptr noundef %codec) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs8409_cs42l42_jack_unsol_event(ptr noundef %codec, i32 noundef %res) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %scodecs = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %scodecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scodecs, align 4
  %irq_mask = getelementptr inbounds %struct.sub_codec, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_mask, align 4
  %and = and i32 %5, %res
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @cs42l42_jack_unsol_event(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %hp_jack_in = getelementptr inbounds %struct.sub_codec, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %hp_jack_in to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %hp_jack_in, align 4
  %7 = lshr i8 %bf.load, 1
  %8 = and i8 %7, 64
  %9 = xor i8 %8, 64
  %10 = zext i8 %9 to i32
  %call.i = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %codec, i16 noundef zeroext 44, i32 noundef %10, i1 noundef zeroext false) #8
  %call6 = tail call ptr @snd_hda_jack_tbl_get_mst(ptr noundef %codec, i16 noundef zeroext 36, i32 noundef 0) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then3.if.end10_crit_edge, label %if.then8

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %tag = getelementptr inbounds %struct.hda_jack_tbl, ptr %call6, i32 0, i32 2
  %11 = ptrtoint ptr %tag to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tag, align 4
  %conv = zext i8 %12 to i32
  %shl = shl i32 %conv, 26
  tail call void @snd_hda_jack_unsol_event(ptr noundef %codec, i32 noundef %shl) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then3.if.end10_crit_edge
  %call11 = tail call ptr @snd_hda_jack_tbl_get_mst(ptr noundef %codec, i16 noundef zeroext 52, i32 noundef 0) #8
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.then13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %tag14 = getelementptr inbounds %struct.hda_jack_tbl, ptr %call11, i32 0, i32 2
  %13 = ptrtoint ptr %tag14 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tag14, align 4
  %conv15 = zext i8 %14 to i32
  %shl16 = shl i32 %conv15, 26
  tail call void @snd_hda_jack_unsol_event(ptr noundef %codec, i32 noundef %shl16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs8409_cs42l42_suspend(ptr noundef %codec) #3 align 64 {
entry:
  %cs42l42_pwr_down_seq.i = alloca [11 x %struct.cs8409_i2c_param], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %init_done = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %init_done to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %init_done, align 4
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %init_done, align 4
  %call.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1817, i32 noundef 0) #8
  %call.i13.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1800, i32 noundef 0) #8
  %num_scodecs = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %num_scodecs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_scodecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp11.not = icmp eq i32 %4, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %cs42l42_suspend.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %cs42l42_suspend.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cs8409_spec, ptr %1, i32 0, i32 2, i32 %i.012
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %cs42l42_pwr_down_seq.i) #8
  %9 = call ptr @memcpy(ptr %cs42l42_pwr_down_seq.i, ptr @__const.cs42l42_suspend.cs42l42_pwr_down_seq, i32 88)
  call fastcc void @cs8409_i2c_bulk_write(ptr noundef %6, ptr noundef nonnull %cs42l42_pwr_down_seq.i, i32 noundef 11) #8
  %call2.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call2.i, 250000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 787) #8
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #8
  %call1272.i = tail call fastcc i32 @cs8409_i2c_read(ptr noundef %6, i32 noundef 4872) #8
  %and73.i = and i32 %call1272.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool13.not74.i = icmp eq i32 %and73.i, 0
  br i1 %tobool13.not74.i, label %for.body.land.lhs.true.i_crit_edge, label %for.body.for.end.i_crit_edge

for.body.for.end.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.land.lhs.true.i_crit_edge:               ; preds = %for.body
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then24.i.land.lhs.true.i_crit_edge, %for.body.land.lhs.true.i_crit_edge
  %call17.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call17.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call17.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then20.i, label %if.then24.i

if.then20.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call21.i = tail call fastcc i32 @cs8409_i2c_read(ptr noundef %6, i32 noundef 4872) #8
  br label %for.end.i

if.then24.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #8
  %call12.i = tail call fastcc i32 @cs8409_i2c_read(ptr noundef %6, i32 noundef 4872) #8
  %and.i = and i32 %call12.i, 1
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %if.then24.i.land.lhs.true.i_crit_edge, label %if.then24.i.for.end.i_crit_edge

if.then24.i.for.end.i_crit_edge:                  ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.then24.i.land.lhs.true.i_crit_edge:            ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %if.then24.i.for.end.i_crit_edge, %if.then20.i, %for.body.for.end.i_crit_edge
  %reg_cdc_status.0.i = phi i32 [ %call21.i, %if.then20.i ], [ %call1272.i, %for.body.for.end.i_crit_edge ], [ %call12.i, %if.then24.i.for.end.i_crit_edge ]
  %and28.i = and i32 %reg_cdc_status.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %do.end34.i, label %for.end.i.cs42l42_suspend.exit_crit_edge

for.end.i.cs42l42_suspend.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs42l42_suspend.exit

do.end34.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.12) #11
  br label %cs42l42_suspend.exit

cs42l42_suspend.exit:                             ; preds = %do.end34.i, %for.end.i.cs42l42_suspend.exit_crit_edge
  tail call fastcc void @cs8409_i2c_write(ptr noundef %6, i32 noundef 4354, i32 noundef 156) #8
  %suspended.i = getelementptr inbounds %struct.sub_codec, ptr %6, i32 0, i32 6
  %10 = ptrtoint ptr %suspended.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %suspended.i, align 4
  %last_page.i = getelementptr inbounds %struct.sub_codec, ptr %6, i32 0, i32 7
  %11 = ptrtoint ptr %last_page.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %last_page.i, align 4
  %bf.set.i = and i8 %bf.load.i, 15
  %bf.set45.i = or i8 %bf.set.i, 48
  store i8 %bf.set45.i, ptr %suspended.i, align 4
  %call.i.i10 = tail call i32 @snd_hdac_codec_read(ptr noundef %8, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3861, i32 noundef 0) #8
  %reset_gpio.i = getelementptr inbounds %struct.sub_codec, ptr %6, i32 0, i32 2
  %12 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reset_gpio.i, align 4
  %neg.i = xor i32 %13, -1
  %and47.i = and i32 %call.i.i10, %neg.i
  %call.i70.i = tail call i32 @snd_hdac_codec_write(ptr noundef %8, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1813, i32 noundef %and47.i) #8
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %cs42l42_pwr_down_seq.i) #8
  %inc = add nuw i32 %i.012, 1
  %14 = ptrtoint ptr %num_scodecs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_scodecs, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %cs42l42_suspend.exit.for.body_crit_edge, label %cs42l42_suspend.exit.for.end_crit_edge

cs42l42_suspend.exit.for.end_crit_edge:           ; preds = %cs42l42_suspend.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cs42l42_suspend.exit.for.body_crit_edge:          ; preds = %cs42l42_suspend.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cs42l42_suspend.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %i2c_clk_work = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 10
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %i2c_clk_work) #8
  tail call fastcc void @cs8409_disable_i2c_clock(ptr noundef %codec)
  tail call void @snd_hda_shutup_pins(ptr noundef %codec) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_build_controls(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_apply_fixup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs8409_disable_i2c_clock(ptr nocapture noundef readonly %codec) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %i2c_mux = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %i2c_mux, i32 noundef 0) #8
  %i2c_clck_enabled = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i2c_clck_enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_clck_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %codec2 = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %codec2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %codec2, align 8
  %call.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %5, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef 0) #8
  %call.i3.i = tail call i32 @snd_hdac_codec_read(ptr noundef %5, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #8
  %and = and i32 %call.i3.i, -9
  %call.i.i11 = tail call i32 @snd_hdac_codec_write(ptr noundef %5, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef 0) #8
  %call.i3.i12 = tail call i32 @snd_hdac_codec_write(ptr noundef %5, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1024, i32 noundef %and) #8
  %6 = ptrtoint ptr %i2c_clck_enabled to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %i2c_clck_enabled, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %i2c_mux) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_gen_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cs42l42_jack_unsol_event(ptr nocapture noundef %cs42l42) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cs8409_i2c_read(ptr noundef %cs42l42, i32 noundef 4872)
  %call1 = tail call fastcc i32 @cs8409_i2c_read(ptr noundef %cs42l42, i32 noundef 4388)
  %call2 = tail call fastcc i32 @cs8409_i2c_read(ptr noundef %cs42l42, i32 noundef 4879)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp3 = icmp slt i32 %call1, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp5 = icmp slt i32 %call2, 0
  %or.cond68 = select i1 %or.cond, i1 true, i1 %cmp5
  br i1 %or.cond68, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else42, label %if.then6

if.then6:                                         ; preds = %if.end
  tail call fastcc void @cs8409_i2c_write(ptr noundef %cs42l42, i32 noundef 4891, i32 noundef 255)
  %and8 = and i32 %call1, 3
  %add = add nuw nsw i32 %and8, 1
  %no_type_dect = getelementptr inbounds %struct.sub_codec, ptr %cs42l42, i32 0, i32 9
  %0 = ptrtoint ptr %no_type_dect to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %no_type_dect, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool9.not = icmp eq i8 %1, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then6
  %force_status_change.i = getelementptr inbounds %struct.sub_codec, ptr %cs42l42, i32 0, i32 6
  %2 = ptrtoint ptr %force_status_change.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %force_status_change.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 5
  %bf.clear.i = and i8 %bf.lshr.i, 1
  %bf.clear3.i = and i8 %bf.load.i, -33
  store i8 %bf.clear3.i, ptr %force_status_change.i, align 4
  %3 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call2, label %if.then10.cs42l42_handle_tip_sense.exit_crit_edge [
    i32 12, label %sw.bb.i
    i32 0, label %sw.bb21.i
  ]

if.then10.cs42l42_handle_tip_sense.exit_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs42l42_handle_tip_sense.exit

sw.bb.i:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then12.i, label %sw.bb.i.cs42l42_handle_tip_sense.exit_crit_edge

sw.bb.i.cs42l42_handle_tip_sense.exit_crit_edge:  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs42l42_handle_tip_sense.exit

if.then12.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear15.i = and i8 %bf.load.i, 31
  %bf.set16.i = or i8 %bf.clear15.i, -128
  br label %cs42l42_handle_tip_sense.exit.sink.split

sw.bb21.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i)
  %4 = icmp ult i8 %bf.load.i, 64
  br i1 %4, label %sw.bb21.i.cs42l42_handle_tip_sense.exit_crit_edge, label %if.then33.i

sw.bb21.i.cs42l42_handle_tip_sense.exit_crit_edge: ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs42l42_handle_tip_sense.exit

if.then33.i:                                      ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear40.i = and i8 %bf.load.i, 31
  br label %cs42l42_handle_tip_sense.exit.sink.split

cs42l42_handle_tip_sense.exit.sink.split:         ; preds = %if.then33.i, %if.then12.i
  %bf.set16.i.sink = phi i8 [ %bf.set16.i, %if.then12.i ], [ %bf.clear40.i, %if.then33.i ]
  %5 = ptrtoint ptr %force_status_change.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %bf.set16.i.sink, ptr %force_status_change.i, align 4
  br label %cs42l42_handle_tip_sense.exit

cs42l42_handle_tip_sense.exit:                    ; preds = %cs42l42_handle_tip_sense.exit.sink.split, %sw.bb21.i.cs42l42_handle_tip_sense.exit_crit_edge, %sw.bb.i.cs42l42_handle_tip_sense.exit_crit_edge, %if.then10.cs42l42_handle_tip_sense.exit_crit_edge
  %status_changed.0.shrunk.i = phi i8 [ %bf.clear.i, %if.then10.cs42l42_handle_tip_sense.exit_crit_edge ], [ %bf.clear.i, %sw.bb.i.cs42l42_handle_tip_sense.exit_crit_edge ], [ %bf.clear.i, %sw.bb21.i.cs42l42_handle_tip_sense.exit_crit_edge ], [ 1, %cs42l42_handle_tip_sense.exit.sink.split ]
  %status_changed.0.i = zext i8 %status_changed.0.shrunk.i to i32
  br label %if.end38

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %cmp12 = icmp eq i32 %add, 4
  %force_status_change.i70 = getelementptr inbounds %struct.sub_codec, ptr %cs42l42, i32 0, i32 6
  %6 = ptrtoint ptr %force_status_change.i70 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i71 = load i8, ptr %force_status_change.i70, align 4
  br i1 %cmp12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %bf.lshr.i72 = lshr i8 %bf.load.i71, 5
  %bf.clear.i73 = and i8 %bf.lshr.i72, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i71)
  %7 = icmp ult i8 %bf.load.i71, 64
  %spec.select.v = select i1 %7, i8 -33, i8 31
  %spec.select = and i8 %bf.load.i71, %spec.select.v
  %spec.select102 = select i1 %7, i8 %bf.clear.i73, i8 1
  %8 = ptrtoint ptr %force_status_change.i70 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %spec.select, ptr %force_status_change.i70, align 4
  %status_changed.0.i79 = zext i8 %spec.select102 to i32
  br label %if.end38

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i71)
  %tobool19.not = icmp sgt i8 %bf.load.i71, -1
  br i1 %tobool19.not, label %if.then20, label %if.else15.if.end24_crit_edge

if.else15.if.end24_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then20:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set = or i8 %bf.load.i71, -128
  %9 = ptrtoint ptr %force_status_change.i70 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %bf.set, ptr %force_status_change.i70, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.else15.if.end24_crit_edge
  %status_changed.0 = phi i32 [ 0, %if.else15.if.end24_crit_edge ], [ 1, %if.then20 ]
  %10 = ptrtoint ptr %force_status_change.i70 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load25 = load i8, ptr %force_status_change.i70, align 4
  %11 = and i8 %bf.load25, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool29.not = icmp ne i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add)
  %cmp30.not = icmp eq i32 %add, 3
  %or.cond69 = select i1 %tobool29.not, i1 true, i1 %cmp30.not
  br i1 %or.cond69, label %if.end24.if.end38_crit_edge, label %if.then31

if.end24.if.end38_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set35 = or i8 %bf.load25, 64
  %12 = ptrtoint ptr %force_status_change.i70 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %bf.set35, ptr %force_status_change.i70, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then31, %if.end24.if.end38_crit_edge, %if.then13, %cs42l42_handle_tip_sense.exit
  %status_changed.1 = phi i32 [ %status_changed.0.i, %cs42l42_handle_tip_sense.exit ], [ %status_changed.0.i79, %if.then13 ], [ %status_changed.0, %if.end24.if.end38_crit_edge ], [ 1, %if.then31 ]
  tail call fastcc void @cs8409_i2c_write(ptr noundef %cs42l42, i32 noundef 4384, i32 noundef 128)
  tail call fastcc void @cs8409_i2c_write(ptr noundef %cs42l42, i32 noundef 7942, i32 noundef 2)
  tail call fastcc void @cs8409_i2c_write(ptr noundef %cs42l42, i32 noundef 4896, i32 noundef 243)
  br label %cleanup

if.else42:                                        ; preds = %if.end
  %force_status_change.i81 = getelementptr inbounds %struct.sub_codec, ptr %cs42l42, i32 0, i32 6
  %13 = ptrtoint ptr %force_status_change.i81 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i82 = load i8, ptr %force_status_change.i81, align 4
  %bf.lshr.i83 = lshr i8 %bf.load.i82, 5
  %bf.clear.i84 = and i8 %bf.lshr.i83, 1
  %bf.clear3.i85 = and i8 %bf.load.i82, -33
  store i8 %bf.clear3.i85, ptr %force_status_change.i81, align 4
  %14 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call2, label %if.else42.cs42l42_handle_tip_sense.exit101_crit_edge [
    i32 12, label %sw.bb.i87
    i32 0, label %sw.bb21.i96
  ]

if.else42.cs42l42_handle_tip_sense.exit101_crit_edge: ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs42l42_handle_tip_sense.exit101

sw.bb.i87:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i82)
  %tobool.not.i86 = icmp sgt i8 %bf.load.i82, -1
  br i1 %tobool.not.i86, label %if.then.i91, label %sw.bb.i87.cs42l42_handle_tip_sense.exit101_crit_edge

sw.bb.i87.cs42l42_handle_tip_sense.exit101_crit_edge: ; preds = %sw.bb.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs42l42_handle_tip_sense.exit101

if.then.i91:                                      ; preds = %sw.bb.i87
  %no_type_dect.i88 = getelementptr inbounds %struct.sub_codec, ptr %cs42l42, i32 0, i32 9
  %15 = ptrtoint ptr %no_type_dect.i88 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load7.i89 = load i8, ptr %no_type_dect.i88, align 4
  %16 = and i8 %bf.load7.i89, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool11.not.i90 = icmp eq i8 %16, 0
  br i1 %tobool11.not.i90, label %if.else.i95, label %if.then12.i94

if.then12.i94:                                    ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear15.i92 = and i8 %bf.load.i82, 31
  %bf.set16.i93 = or i8 %bf.clear15.i92, -128
  %17 = ptrtoint ptr %force_status_change.i81 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %bf.set16.i93, ptr %force_status_change.i81, align 4
  br label %cs42l42_handle_tip_sense.exit101

if.else.i95:                                      ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @cs42l42_run_jack_detect(ptr noundef %cs42l42) #8
  br label %cs42l42_handle_tip_sense.exit101

sw.bb21.i96:                                      ; preds = %if.else42
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i82)
  %18 = icmp ult i8 %bf.load.i82, 64
  br i1 %18, label %sw.bb21.i96.cs42l42_handle_tip_sense.exit101_crit_edge, label %if.then33.i98

sw.bb21.i96.cs42l42_handle_tip_sense.exit101_crit_edge: ; preds = %sw.bb21.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs42l42_handle_tip_sense.exit101

if.then33.i98:                                    ; preds = %sw.bb21.i96
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear40.i97 = and i8 %bf.load.i82, 31
  %19 = ptrtoint ptr %force_status_change.i81 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %bf.clear40.i97, ptr %force_status_change.i81, align 4
  br label %cs42l42_handle_tip_sense.exit101

cs42l42_handle_tip_sense.exit101:                 ; preds = %if.then33.i98, %sw.bb21.i96.cs42l42_handle_tip_sense.exit101_crit_edge, %if.else.i95, %if.then12.i94, %sw.bb.i87.cs42l42_handle_tip_sense.exit101_crit_edge, %if.else42.cs42l42_handle_tip_sense.exit101_crit_edge
  %status_changed.0.shrunk.i99 = phi i8 [ %bf.clear.i84, %if.else42.cs42l42_handle_tip_sense.exit101_crit_edge ], [ 1, %if.then33.i98 ], [ %bf.clear.i84, %sw.bb.i87.cs42l42_handle_tip_sense.exit101_crit_edge ], [ 1, %if.then12.i94 ], [ %bf.clear.i84, %if.else.i95 ], [ %bf.clear.i84, %sw.bb21.i96.cs42l42_handle_tip_sense.exit101_crit_edge ]
  %status_changed.0.i100 = zext i8 %status_changed.0.shrunk.i99 to i32
  br label %cleanup

cleanup:                                          ; preds = %cs42l42_handle_tip_sense.exit101, %if.end38, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %status_changed.1, %if.end38 ], [ %status_changed.0.i100, %cs42l42_handle_tip_sense.exit101 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_jack_tbl_get_mst(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_jack_unsol_event(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cs8409_i2c_read(ptr nocapture noundef %scodec, i32 noundef %addr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %scodec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scodec, align 4
  %suspended = getelementptr inbounds %struct.sub_codec, ptr %scodec, i32 0, i32 6
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %suspended, align 4
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec2 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %spec2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec2, align 8
  %i2c_mux = getelementptr inbounds %struct.cs8409_spec, ptr %5, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %i2c_mux, i32 noundef 0) #8
  tail call fastcc void @cs8409_enable_i2c_clock(ptr noundef %1)
  %addr3 = getelementptr inbounds %struct.sub_codec, ptr %scodec, i32 0, i32 1
  %6 = ptrtoint ptr %addr3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr3, align 4
  %8 = ptrtoint ptr %spec2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spec2, align 8
  %dev_addr.i = getelementptr inbounds %struct.cs8409_spec, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dev_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp.not.i = icmp eq i32 %11, %7
  br i1 %cmp.not.i, label %if.end.cs8409_set_i2c_dev_addr.exit_crit_edge, label %if.then.i

if.end.cs8409_set_i2c_dev_addr.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs8409_set_i2c_dev_addr.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef 89) #8
  %call.i3.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1024, i32 noundef %7) #8
  %12 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %7, ptr %dev_addr.i, align 4
  br label %cs8409_set_i2c_dev_addr.exit

cs8409_set_i2c_dev_addr.exit:                     ; preds = %if.then.i, %if.end.cs8409_set_i2c_dev_addr.exit_crit_edge
  %13 = ptrtoint ptr %scodec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %scodec, align 4
  %15 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %suspended, align 4
  %16 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %cs8409_set_i2c_dev_addr.exit.if.end6_crit_edge, label %land.lhs.true.i

cs8409_set_i2c_dev_addr.exit.if.end6_crit_edge:   ; preds = %cs8409_set_i2c_dev_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true.i:                                  ; preds = %cs8409_set_i2c_dev_addr.exit
  %last_page.i = getelementptr inbounds %struct.sub_codec, ptr %scodec, i32 0, i32 7
  %17 = ptrtoint ptr %last_page.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %last_page.i, align 4
  %shr.i = lshr i32 %addr, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %shr.i)
  %cmp.not.i32 = icmp eq i32 %18, %shr.i
  br i1 %cmp.not.i32, label %land.lhs.true.i.if.end6_crit_edge, label %if.then.i35

land.lhs.true.i.if.end6_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then.i35:                                      ; preds = %land.lhs.true.i
  %call.i.i.i33 = tail call i32 @snd_hdac_codec_write(ptr noundef %14, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef 93) #8
  %call.i3.i.i34 = tail call i32 @snd_hdac_codec_write(ptr noundef %14, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1024, i32 noundef %shr.i) #8
  %call.i = tail call fastcc i32 @cs8409_i2c_wait_complete(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %if.then.i35.error_crit_edge, label %if.end.i

if.then.i35.error_crit_edge:                      ; preds = %if.then.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end.i:                                         ; preds = %if.then.i35
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %last_page.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr.i, ptr %last_page.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end.i, %land.lhs.true.i.if.end6_crit_edge, %cs8409_set_i2c_dev_addr.exit.if.end6_crit_edge
  %shl = shl i32 %addr, 8
  %and = and i32 %shl, 65280
  %call.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef 94) #8
  %call.i3.i = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1024, i32 noundef %and) #8
  %call7 = tail call fastcc i32 @cs8409_i2c_wait_complete(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end6.error_crit_edge, label %if.end9

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i36 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef 94) #8
  %call.i3.i37 = tail call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #8
  tail call void @mutex_unlock(ptr noundef %i2c_mux) #8
  %and12 = and i32 %call.i3.i37, 255
  br label %cleanup

error:                                            ; preds = %if.end6.error_crit_edge, %if.then.i35.error_crit_edge
  tail call void @mutex_unlock(ptr noundef %i2c_mux) #8
  %20 = ptrtoint ptr %addr3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11, i32 noundef %21, i32 noundef %addr) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %error ], [ %and12, %if.end9 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_hda_set_pin_ctl(ptr noundef, i16 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_shutup_pins(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs8409_i2c_bulk_write(ptr nocapture noundef %scodec, ptr nocapture noundef readonly %seq, i32 noundef %count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %scodec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scodec, align 4
  %suspended = getelementptr inbounds %struct.sub_codec, ptr %scodec, i32 0, i32 6
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %suspended, align 4
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec2 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %spec2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec2, align 8
  %i2c_mux = getelementptr inbounds %struct.cs8409_spec, ptr %5, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %i2c_mux, i32 noundef 0) #8
  %addr = getelementptr inbounds %struct.sub_codec, ptr %scodec, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  %8 = ptrtoint ptr %spec2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spec2, align 8
  %dev_addr.i = getelementptr inbounds %struct.cs8409_spec, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dev_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp.not.i = icmp eq i32 %11, %7
  br i1 %cmp.not.i, label %if.end.cs8409_set_i2c_dev_addr.exit_crit_edge, label %if.then.i

if.end.cs8409_set_i2c_dev_addr.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs8409_set_i2c_dev_addr.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef 89) #8
  %call.i3.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1024, i32 noundef %7) #8
  %12 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %7, ptr %dev_addr.i, align 4
  br label %cs8409_set_i2c_dev_addr.exit

cs8409_set_i2c_dev_addr.exit:                     ; preds = %if.then.i, %if.end.cs8409_set_i2c_dev_addr.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp7 = icmp sgt i32 %count, 0
  br i1 %cmp7, label %for.body.lr.ph, label %cs8409_set_i2c_dev_addr.exit.for.end_crit_edge

cs8409_set_i2c_dev_addr.exit.for.end_crit_edge:   ; preds = %cs8409_set_i2c_dev_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %cs8409_set_i2c_dev_addr.exit
  %last_page.i = getelementptr inbounds %struct.sub_codec, ptr %scodec, i32 0, i32 7
  br label %for.body

for.cond:                                         ; preds = %if.end6
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  tail call fastcc void @cs8409_enable_i2c_clock(ptr noundef %1)
  %arrayidx = getelementptr %struct.cs8409_i2c_param, ptr %seq, i32 %i.08
  %13 = ptrtoint ptr %scodec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %scodec, align 4
  %15 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %suspended, align 4
  %16 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %for.body.if.end6_crit_edge, label %land.lhs.true.i

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true.i:                                  ; preds = %for.body
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %last_page.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %last_page.i, align 4
  %shr.i = lshr i32 %18, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %shr.i)
  %cmp.not.i1 = icmp eq i32 %20, %shr.i
  br i1 %cmp.not.i1, label %land.lhs.true.i.if.end6_crit_edge, label %if.then.i4

land.lhs.true.i.if.end6_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then.i4:                                       ; preds = %land.lhs.true.i
  %call.i.i.i2 = tail call i32 @snd_hdac_codec_write(ptr noundef %14, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef 93) #8
  %call.i3.i.i3 = tail call i32 @snd_hdac_codec_write(ptr noundef %14, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1024, i32 noundef %shr.i) #8
  %call.i = tail call fastcc i32 @cs8409_i2c_wait_complete(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %if.then.i4.error_crit_edge, label %if.end.i

if.then.i4.error_crit_edge:                       ; preds = %if.then.i4
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end.i:                                         ; preds = %if.then.i4
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %last_page.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr.i, ptr %last_page.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end.i, %land.lhs.true.i.if.end6_crit_edge, %for.body.if.end6_crit_edge
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %shl = shl i32 %23, 8
  %and = and i32 %shl, 65280
  %value = getelementptr %struct.cs8409_i2c_param, ptr %seq, i32 %i.08, i32 1
  %24 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value, align 4
  %and10 = and i32 %25, 255
  %or = or i32 %and, %and10
  %call.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef 93) #8
  %call.i3.i = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1024, i32 noundef %or) #8
  %call11 = tail call fastcc i32 @cs8409_i2c_wait_complete(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end6.error_crit_edge, label %for.cond

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %cs8409_set_i2c_dev_addr.exit.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %i2c_mux) #8
  br label %cleanup

error:                                            ; preds = %if.end6.error_crit_edge, %if.then.i4.error_crit_edge
  tail call void @mutex_unlock(ptr noundef %i2c_mux) #8
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %27) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_override_parm(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_hdac_read_parm(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs42l42_resume(ptr nocapture noundef %cs42l42) unnamed_addr #3 align 64 {
entry:
  %irq_regs = alloca [4 x %struct.cs8409_i2c_param], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cs42l42, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %irq_regs) #8
  %2 = call ptr @memcpy(ptr %irq_regs, ptr @__const.cs42l42_resume.irq_regs, i32 32)
  %call.i = tail call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3861, i32 noundef 0) #8
  %reset_gpio = getelementptr inbounds %struct.sub_codec, ptr %cs42l42, i32 0, i32 2
  %3 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reset_gpio, align 4
  %or = or i32 %4, %call.i
  %call.i20 = tail call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1813, i32 noundef %or) #8
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #8
  %suspended = getelementptr inbounds %struct.sub_codec, ptr %cs42l42, i32 0, i32 6
  %5 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %suspended, align 4
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, ptr %suspended, align 4
  %init_seq = getelementptr inbounds %struct.sub_codec, ptr %cs42l42, i32 0, i32 4
  %6 = ptrtoint ptr %init_seq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_seq, align 4
  %init_seq_num = getelementptr inbounds %struct.sub_codec, ptr %cs42l42, i32 0, i32 5
  %8 = ptrtoint ptr %init_seq_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %init_seq_num, align 4
  tail call fastcc void @cs8409_i2c_bulk_write(ptr noundef %cs42l42, ptr noundef %7, i32 noundef %9)
  tail call void @usleep_range_state(i32 noundef 20000, i32 noundef 25000, i32 noundef 2) #8
  %10 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cs42l42, align 4
  %12 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %suspended, align 4
  %13 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cs8409_i2c_bulk_read.exit_crit_edge

entry.cs8409_i2c_bulk_read.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs8409_i2c_bulk_read.exit

if.end.i:                                         ; preds = %entry
  %spec2.i = getelementptr inbounds %struct.hda_codec, ptr %11, i32 0, i32 11
  %14 = ptrtoint ptr %spec2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spec2.i, align 8
  %i2c_mux.i = getelementptr inbounds %struct.cs8409_spec, ptr %15, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %i2c_mux.i, i32 noundef 0) #8
  %addr.i = getelementptr inbounds %struct.sub_codec, ptr %cs42l42, i32 0, i32 1
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i, align 4
  %18 = ptrtoint ptr %spec2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spec2.i, align 8
  %dev_addr.i.i = getelementptr inbounds %struct.cs8409_spec, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dev_addr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %17)
  %cmp.not.i.i = icmp eq i32 %21, %17
  br i1 %cmp.not.i.i, label %if.end.i.cs8409_set_i2c_dev_addr.exit.i_crit_edge, label %if.then.i.i

if.end.i.cs8409_set_i2c_dev_addr.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs8409_set_i2c_dev_addr.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %11, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef 89) #8
  %call.i3.i.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %11, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1024, i32 noundef %17) #8
  %22 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %17, ptr %dev_addr.i.i, align 4
  br label %cs8409_set_i2c_dev_addr.exit.i

cs8409_set_i2c_dev_addr.exit.i:                   ; preds = %if.then.i.i, %if.end.i.cs8409_set_i2c_dev_addr.exit.i_crit_edge
  %last_page.i.i = getelementptr inbounds %struct.sub_codec, ptr %cs42l42, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %if.end12.i.for.body.i_crit_edge, %cs8409_set_i2c_dev_addr.exit.i
  %i.09.i = phi i32 [ 0, %cs8409_set_i2c_dev_addr.exit.i ], [ %inc.i, %if.end12.i.for.body.i_crit_edge ]
  tail call fastcc void @cs8409_enable_i2c_clock(ptr noundef %11) #8
  %arrayidx.i = getelementptr %struct.cs8409_i2c_param, ptr %irq_regs, i32 %i.09.i
  %23 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cs42l42, align 4
  %25 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i.i = load i8, ptr %suspended, align 4
  %26 = and i8 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i.i, label %for.body.i.if.end6.i_crit_edge, label %land.lhs.true.i.i

for.body.i.if.end6.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %29 = ptrtoint ptr %last_page.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %last_page.i.i, align 4
  %shr.i.i = lshr i32 %28, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %shr.i.i)
  %cmp.not.i1.i = icmp eq i32 %30, %shr.i.i
  br i1 %cmp.not.i1.i, label %land.lhs.true.i.i.if.end6.i_crit_edge, label %if.then.i4.i

land.lhs.true.i.i.if.end6.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then.i4.i:                                     ; preds = %land.lhs.true.i.i
  %call.i.i.i2.i = tail call i32 @snd_hdac_codec_write(ptr noundef %24, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef 93) #8
  %call.i3.i.i3.i = tail call i32 @snd_hdac_codec_write(ptr noundef %24, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1024, i32 noundef %shr.i.i) #8
  %call.i.i = tail call fastcc i32 @cs8409_i2c_wait_complete(ptr noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %if.then.i4.i.error.i_crit_edge, label %if.end.i.i

if.then.i4.i.error.i_crit_edge:                   ; preds = %if.then.i4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i

if.end.i.i:                                       ; preds = %if.then.i4.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %last_page.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shr.i.i, ptr %last_page.i.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i.i, %land.lhs.true.i.i.if.end6.i_crit_edge, %for.body.i.if.end6.i_crit_edge
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl i32 %33, 8
  %and.i = and i32 %shl.i, 65280
  %call.i.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %11, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef 94) #8
  %call.i3.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %11, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1024, i32 noundef %and.i) #8
  %call9.i = tail call fastcc i32 @cs8409_i2c_wait_complete(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end6.i.error.i_crit_edge, label %if.end12.i

if.end6.i.error.i_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i

if.end12.i:                                       ; preds = %if.end6.i
  %call.i.i5.i = tail call i32 @snd_hdac_codec_write(ptr noundef %11, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 1280, i32 noundef 94) #8
  %call.i3.i6.i = tail call i32 @snd_hdac_codec_read(ptr noundef %11, i16 noundef zeroext 71, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #8
  %and14.i = and i32 %call.i3.i6.i, 255
  %value.i = getelementptr %struct.cs8409_i2c_param, ptr %irq_regs, i32 %i.09.i, i32 1
  %34 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and14.i, ptr %value.i, align 4
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.end.i, label %if.end12.i.for.body.i_crit_edge

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %i2c_mux.i) #8
  br label %cs8409_i2c_bulk_read.exit

error.i:                                          ; preds = %if.end6.i.error.i_crit_edge, %if.then.i4.i.error.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %i2c_mux.i) #8
  %35 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.15, i32 noundef %36) #11
  br label %cs8409_i2c_bulk_read.exit

cs8409_i2c_bulk_read.exit:                        ; preds = %error.i, %for.end.i, %entry.cs8409_i2c_bulk_read.exit_crit_edge
  %full_scale_vol = getelementptr inbounds %struct.sub_codec, ptr %cs42l42, i32 0, i32 9
  %37 = ptrtoint ptr %full_scale_vol to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load5 = load i8, ptr %full_scale_vol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load5)
  %tobool.not = icmp sgt i8 %bf.load5, -1
  br i1 %tobool.not, label %cs8409_i2c_bulk_read.exit.if.end_crit_edge, label %if.then

cs8409_i2c_bulk_read.exit.if.end_crit_edge:       ; preds = %cs8409_i2c_bulk_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %cs8409_i2c_bulk_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @cs8409_i2c_write(ptr noundef %cs42l42, i32 noundef 8193, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %cs8409_i2c_bulk_read.exit.if.end_crit_edge
  %38 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cs42l42, align 4
  %power.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %power.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %power.i, align 8
  %hsbias_hiz.i = getelementptr inbounds %struct.sub_codec, ptr %cs42l42, i32 0, i32 8
  %41 = ptrtoint ptr %hsbias_hiz.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hsbias_hiz.i, align 4
  tail call fastcc void @cs8409_i2c_write(ptr noundef %cs42l42, i32 noundef 7024, i32 noundef %42) #8
  tail call fastcc void @cs8409_i2c_write(ptr noundef %cs42l42, i32 noundef 7025, i32 noundef 193) #8
  tail call void @usleep_range_state(i32 noundef 2500, i32 noundef 3000, i32 noundef 2) #8
  tail call fastcc void @cs8409_i2c_write(ptr noundef %cs42l42, i32 noundef 7025, i32 noundef 192) #8
  %call3.i = tail call fastcc i32 @cs8409_i2c_read(ptr noundef %cs42l42, i32 noundef 4879) #8
  tail call fastcc void @cs8409_i2c_write(ptr noundef %cs42l42, i32 noundef 4896, i32 noundef 243) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %irq_regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dolphin_jack_unsol_event(ptr noundef %codec, i32 noundef %res) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %scodecs = getelementptr inbounds %struct.cs8409_spec, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %scodecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scodecs, align 4
  %suspended = getelementptr inbounds %struct.sub_codec, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %suspended, align 4
  %5 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

land.lhs.true:                                    ; preds = %entry
  %neg = xor i32 %res, -1
  %irq_mask = getelementptr inbounds %struct.sub_codec, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_mask, align 4
  %and = and i32 %7, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true3

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call = tail call fastcc i32 @cs42l42_jack_unsol_event(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %land.lhs.true3.if.end17_crit_edge, label %if.then

land.lhs.true3.if.end17_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then:                                          ; preds = %land.lhs.true3
  %call5 = tail call ptr @snd_hda_jack_tbl_get_mst(ptr noundef %codec, i16 noundef zeroext 36, i32 noundef 0) #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %tag = getelementptr inbounds %struct.hda_jack_tbl, ptr %call5, i32 0, i32 2
  %8 = ptrtoint ptr %tag to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tag, align 4
  %conv = zext i8 %9 to i32
  %shl = shl i32 %conv, 26
  tail call void @snd_hda_jack_unsol_event(ptr noundef %codec, i32 noundef %shl) #8
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %call9 = tail call ptr @snd_hda_jack_tbl_get_mst(ptr noundef %codec, i16 noundef zeroext 52, i32 noundef 0) #8
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end.if.end17_crit_edge, label %if.then11

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %tag12 = getelementptr inbounds %struct.hda_jack_tbl, ptr %call9, i32 0, i32 2
  %10 = ptrtoint ptr %tag12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tag12, align 4
  %conv13 = zext i8 %11 to i32
  %shl14 = shl i32 %conv13, 26
  tail call void @snd_hda_jack_unsol_event(ptr noundef %codec, i32 noundef %shl14) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %if.end.if.end17_crit_edge, %land.lhs.true3.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %entry.if.end17_crit_edge
  %arrayidx19 = getelementptr %struct.cs8409_spec, ptr %1, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx19, align 4
  %suspended20 = getelementptr inbounds %struct.sub_codec, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %suspended20 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load21 = load i8, ptr %suspended20, align 4
  %15 = and i8 %bf.load21, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool25.not = icmp eq i8 %15, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %if.end17.if.end43_crit_edge

if.end17.if.end43_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

land.lhs.true26:                                  ; preds = %if.end17
  %neg27 = xor i32 %res, -1
  %irq_mask28 = getelementptr inbounds %struct.sub_codec, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %irq_mask28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_mask28, align 4
  %and29 = and i32 %17, %neg27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %land.lhs.true26.if.end43_crit_edge, label %land.lhs.true31

land.lhs.true26.if.end43_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

land.lhs.true31:                                  ; preds = %land.lhs.true26
  %call32 = tail call fastcc i32 @cs42l42_jack_unsol_event(ptr noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true31.if.end43_crit_edge, label %if.then34

land.lhs.true31.if.end43_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then34:                                        ; preds = %land.lhs.true31
  %call35 = tail call ptr @snd_hda_jack_tbl_get_mst(ptr noundef %codec, i16 noundef zeroext 37, i32 noundef 0) #8
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.then34.if.end43_crit_edge, label %if.then37

if.then34.if.end43_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then37:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %tag38 = getelementptr inbounds %struct.hda_jack_tbl, ptr %call35, i32 0, i32 2
  %18 = ptrtoint ptr %tag38 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tag38, align 4
  %conv39 = zext i8 %19 to i32
  %shl40 = shl i32 %conv39, 26
  tail call void @snd_hda_jack_unsol_event(ptr noundef %codec, i32 noundef %shl40) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then37, %if.then34.if.end43_crit_edge, %land.lhs.true31.if.end43_crit_edge, %land.lhs.true26.if.end43_crit_edge, %if.end17.if.end43_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_jack_add_kctl_mst(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hda_codec_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_cs8409(ptr noundef %codec) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5968) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %spec1.i, align 8
  %codec2.i = getelementptr inbounds %struct.cs8409_spec, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %codec2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %codec, ptr %codec2.i, align 8
  %power_save_node.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %3 = ptrtoint ptr %power_save_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load.i = load i32, ptr %power_save_node.i, align 4
  %bf.set.i = or i32 %bf.load.i, 16384
  store i32 %bf.set.i, ptr %power_save_node.i, align 4
  %i2c_mux.i = getelementptr inbounds %struct.cs8409_spec, ptr %call7.i.i.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %i2c_mux.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @cs8409_alloc_spec.__key) #8
  %i2c_clk_work.i = getelementptr inbounds %struct.cs8409_spec, ptr %call7.i.i.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %i2c_clk_work.i, i32 noundef 0) #8
  %4 = ptrtoint ptr %i2c_clk_work.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %i2c_clk_work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.cs8409_spec, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @cs8409_alloc_spec.__key.23, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry11.i = getelementptr inbounds %struct.cs8409_spec, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 1
  %5 = ptrtoint ptr %entry11.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry11.i, ptr %entry11.i, align 4
  %prev.i.i = getelementptr inbounds %struct.cs8409_spec, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry11.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.cs8409_spec, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 2
  %7 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @cs8409_disable_i2c_clock_worker, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.cs8409_spec, ptr %call7.i.i.i, i32 0, i32 10, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.26, ptr noundef nonnull @cs8409_alloc_spec.__key.25) #8
  %call22.i = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i.i) #8
  tail call void @snd_hda_pick_fixup(ptr noundef %codec, ptr noundef nonnull @cs8409_models, ptr noundef nonnull @cs8409_fixup_tbl, ptr noundef nonnull @cs8409_fixups) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @patch_cs8409.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@patch_cs8409, %if.then5)) #8
          to label %do.end [label %if.then5], !srcloc !80

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %fixup_id = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 41
  %8 = ptrtoint ptr %fixup_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fixup_id, align 4
  %bus = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 1
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 8
  %pci = getelementptr inbounds %struct.hda_bus, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %subsystem_vendor, align 4
  %conv = zext i16 %15 to i32
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 10
  %16 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %subsystem_device, align 2
  %conv8 = zext i16 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @patch_cs8409.__UNIQUE_ID_ddebug243, ptr noundef %codec, ptr noundef nonnull @.str.21, i32 noundef %9, i32 noundef %conv, i32 noundef %conv8) #8
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 0) #8
  %18 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spec1.i, align 8
  %autocfg.i = getelementptr inbounds %struct.hda_gen_spec, ptr %19, i32 0, i32 33
  %call.i = tail call i32 @snd_hda_parse_pin_defcfg(ptr noundef %codec, ptr noundef %autocfg.i, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.if.then12_crit_edge, label %if.end.i25

do.end.if.then12_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.end.i25:                                       ; preds = %do.end
  %call4.i = tail call i32 @snd_hda_gen_parse_auto_config(ptr noundef %codec, ptr noundef %autocfg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i25.if.then12_crit_edge, label %if.end7.i

if.end.i25.if.then12_crit_edge:                   ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.end7.i:                                        ; preds = %if.end.i25
  %dyn_adc_switch.i = getelementptr inbounds %struct.hda_gen_spec, ptr %19, i32 0, i32 58
  %20 = ptrtoint ptr %dyn_adc_switch.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %bf.load.i26 = load i64, ptr %dyn_adc_switch.i, align 4
  %21 = and i64 %bf.load.i26, 33554432
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool.not.i27 = icmp eq i64 %21, 0
  br i1 %tobool.not.i27, label %if.end7.i.if.end13_crit_edge, label %for.cond.preheader.i

if.end7.i.if.end13_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

for.cond.preheader.i:                             ; preds = %if.end7.i
  %input_mux.i = getelementptr inbounds %struct.hda_gen_spec, ptr %19, i32 0, i32 27
  %22 = ptrtoint ptr %input_mux.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %input_mux.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp1140.not.i = icmp eq i32 %23, 0
  br i1 %cmp1140.not.i, label %for.cond.preheader.i.if.end13_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end13_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %done.042.i = phi i32 [ %done.1.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.041.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hda_gen_spec, ptr %19, i32 0, i32 38, i32 %i.041.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl nuw i32 1, %25
  %and.i = and i32 %shl.i, %done.042.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end15.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx17.i = getelementptr %struct.hda_gen_spec, ptr %19, i32 0, i32 16, i32 %25
  %26 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx17.i, align 2
  %call18.i = tail call i32 @snd_hda_gen_fix_pin_power(ptr noundef %codec, i16 noundef zeroext %27) #8
  %or.i = or i32 %shl.i, %done.042.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end15.i, %for.body.i.cleanup.i_crit_edge
  %done.1.i = phi i32 [ %or.i, %if.end15.i ], [ %done.042.i, %for.body.i.cleanup.i_crit_edge ]
  %inc.i = add nuw i32 %i.041.i, 1
  %28 = ptrtoint ptr %input_mux.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %input_mux.i, align 8
  %cmp11.i = icmp ult i32 %inc.i, %29
  br i1 %cmp11.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.if.end13_crit_edge

cleanup.i.if.end13_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.then12:                                        ; preds = %if.end.i25.if.then12_crit_edge, %do.end.if.then12_crit_edge
  %retval.0.i28 = phi i32 [ %call.i, %do.end.if.then12_crit_edge ], [ %call4.i, %if.end.i25.if.then12_crit_edge ]
  %30 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %spec1.i, align 8
  %i2c_clk_work.i30 = getelementptr inbounds %struct.cs8409_spec, ptr %31, i32 0, i32 10
  %call.i31 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %i2c_clk_work.i30) #8
  tail call fastcc void @cs8409_disable_i2c_clock(ptr noundef %codec) #8
  tail call void @snd_hda_gen_free(ptr noundef %codec) #8
  br label %cleanup

if.end13:                                         ; preds = %cleanup.i.if.end13_crit_edge, %for.cond.preheader.i.if.end13_crit_edge, %if.end7.i.if.end13_crit_edge
  tail call void @snd_hda_apply_fixup(ptr noundef %codec, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i28, %if.then12 ], [ 0, %if.end13 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_pick_fixup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs8409_disable_i2c_clock_worker(ptr nocapture noundef readonly %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %codec = getelementptr i8, ptr %work, i32 -152
  %0 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %codec, align 8
  tail call fastcc void @cs8409_disable_i2c_clock(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_spec_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_parse_pin_defcfg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_parse_auto_config(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_fix_pin_power(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !54, !56, !58, !60, !61, !62, !64, !65, !67, !68, !69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/hda/patch_cs8409.c", i32 1029, i32 36}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/hda/patch_cs8409.c", i32 1031, i32 36}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/hda/patch_cs8409.c", i32 1035, i32 33}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/hda/patch_cs8409.c", i32 1215, i32 52}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/hda/patch_cs8409.c", i32 1218, i32 54}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/hda/patch_cs8409.c", i32 1236, i32 44}
!12 = !{ptr @__initcall__kmod_snd_hda_codec_cs8409__244_1307_cs8409_driver_init6, !13, !"__initcall__kmod_snd_hda_codec_cs8409__244_1307_cs8409_driver_init6", i1 false, i1 false}
!13 = !{!"../sound/pci/hda/patch_cs8409.c", i32 1307, i32 1}
!14 = !{ptr @__exitcall_cs8409_driver_exit, !13, !"__exitcall_cs8409_driver_exit", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_file245, !16, !"__UNIQUE_ID_file245", i1 false, i1 false}
!16 = !{!"../sound/pci/hda/patch_cs8409.c", i32 1309, i32 1}
!17 = !{ptr @__UNIQUE_ID_license246, !16, !"__UNIQUE_ID_license246", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_description247, !19, !"__UNIQUE_ID_description247", i1 false, i1 false}
!19 = !{!"../sound/pci/hda/patch_cs8409.c", i32 1310, i32 1}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/hda/patch_cs8409.c", i32 313, i32 2}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cs8409_i2c_write._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @cs8409_i2c_write._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @cs8409_cs42l42_patch_ops, !29, !"cs8409_cs42l42_patch_ops", i1 false, i1 false}
!29 = !{!"../sound/pci/hda/patch_cs8409.c", i32 919, i32 35}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/hda/patch_cs8409.c", i32 228, i32 2}
!32 = !{ptr @cs8409_i2c_read._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @cs8409_i2c_read._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/pci/hda/patch_cs8409.c", i32 788, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cs42l42_suspend._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @cs42l42_suspend._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/pci/hda/patch_cs8409.c", i32 357, i32 2}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @cs8409_i2c_bulk_write._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @cs8409_i2c_bulk_write._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/pci/hda/patch_cs8409.c", i32 273, i32 2}
!47 = !{ptr @cs8409_i2c_bulk_read._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @cs8409_i2c_bulk_read._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @cs8409_dolphin_patch_ops, !50, !"cs8409_dolphin_patch_ops", i1 false, i1 false}
!50 = !{!"../sound/pci/hda/patch_cs8409.c", i32 1136, i32 35}
!51 = !{ptr @.str.18, !13, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @cs8409_driver, !53, !"cs8409_driver", i1 false, i1 false}
!53 = !{!"../sound/pci/hda/patch_cs8409.c", i32 1304, i32 32}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/hda/patch_cs8409.c", i32 1299, i32 2}
!56 = !{ptr @snd_hda_id_cs8409, !57, !"snd_hda_id_cs8409", i1 false, i1 false}
!57 = !{!"../sound/pci/hda/patch_cs8409.c", i32 1298, i32 35}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/hda/patch_cs8409.c", i32 1282, i32 2}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @patch_cs8409.__UNIQUE_ID_ddebug243, !59, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!62 = !{ptr @cs8409_alloc_spec.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../sound/pci/hda/patch_cs8409.c", i32 65, i32 2}
!64 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @cs8409_alloc_spec.__key.23, !66, !"__key", i1 false, i1 false}
!66 = !{!"../sound/pci/hda/patch_cs8409.c", i32 66, i32 2}
!67 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @cs8409_alloc_spec.__key.25, !66, !"__key", i1 false, i1 false}
!69 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"auto-init"}
!80 = !{i64 2148237229, i64 2148237234, i64 2148237247, i64 2148237291, i64 2148237325, i64 2148237346}
