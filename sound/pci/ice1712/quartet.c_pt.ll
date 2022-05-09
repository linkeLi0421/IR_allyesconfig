; ModuleID = '/llk/IR_all_yes/sound/pci/ice1712/quartet.c_pt.bc'
source_filename = "../sound/pci/ice1712/quartet.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_ice1712_card_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, i32, ptr }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_akm4xxx = type { ptr, i32, i32, [64 x i8], [64 x i8], [4 x i32], [4 x ptr], i32, i32, ptr, ptr, %struct.snd_ak4xxx_ops, i32, i32, ptr }
%struct.snd_ak4xxx_ops = type { ptr, ptr, ptr, ptr }
%struct.snd_akm4xxx_dac_channel = type { ptr, i32, ptr }
%struct.snd_akm4xxx_adc_channel = type { ptr, ptr, i32, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.87, i32 }
%union.anon.87 = type { ptr }
%struct.qtet_kcontrol_private = type { i32, ptr, ptr, [2 x ptr] }
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
%struct.qtet_spec = type { ptr, i32, i32, i32 }
%struct.ak4113 = type { ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.mutex, %struct.spinlock, [7 x i8], [13 x ptr], ptr, [4 x i32], i8, i8, i8, %struct.delayed_work, i32, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.68, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.68 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Infrasonic Quartet\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"quartet\00", [24 x i8] zeroinitializer }, align 32
@qtet_eeprom = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(\80x\C3\00\FF\00\FF\00\FF\00}\00", [19 x i8] zeroinitializer }, align 32
@snd_vt1724_qtet_cards = dso_local global { [2 x %struct.snd_ice1712_card_info], [48 x i8] } { [2 x %struct.snd_ice1712_card_info] [%struct.snd_ice1712_card_info { i32 808473417, ptr @.str, ptr @.str.1, ptr null, ptr @qtet_init, ptr null, ptr @qtet_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 13, ptr @qtet_eeprom }, %struct.snd_ice1712_card_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@qtet_init.ak4113_init_vals = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\0F\FAL@\00\00\00", [25 x i8] zeroinitializer }, align 32
@qtet_rates_info = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @qtet_rates, i32 6, i32 0 }, [20 x i8] zeroinitializer }, align 32
@ext_clock_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6], [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@akm_qtet_dac = internal constant { %struct.snd_akm4xxx, [40 x i8] } { %struct.snd_akm4xxx { ptr null, i32 4, i32 4, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, i32 7, ptr @qtet_dac, ptr @qtet_adc, %struct.snd_ak4xxx_ops { ptr null, ptr null, ptr @qtet_akm_write, ptr @qtet_akm_set_rate_val }, i32 0, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qtet_rates = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000], [40 x i8] zeroinitializer }, align 32
@cks_vals = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5], [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/pci/ice1712/quartet.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IEC958 In\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Word Clock 1xFS\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Word Clock 256xFS\00", [46 x i8] zeroinitializer }, align 32
@qtet_dac = internal constant { [2 x %struct.snd_akm4xxx_dac_channel], [40 x i8] } { [2 x %struct.snd_akm4xxx_dac_channel] [%struct.snd_akm4xxx_dac_channel { ptr @.str.7, i32 2, ptr null }, %struct.snd_akm4xxx_dac_channel { ptr @.str.8, i32 2, ptr null }], [40 x i8] zeroinitializer }, align 32
@qtet_adc = internal constant { [2 x %struct.snd_akm4xxx_adc_channel], [56 x i8] } { [2 x %struct.snd_akm4xxx_adc_channel] [%struct.snd_akm4xxx_adc_channel { ptr @.str.9, ptr null, i32 2, ptr null, ptr null }, %struct.snd_akm4xxx_adc_channel { ptr @.str.10, ptr null, i32 2, ptr null, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PCM 1/2 Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PCM 3/4 Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PCM 1/2 Capture Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PCM 3/4 Capture Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SCR:\09%s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MCR:\09%s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CPLD:\09%s\0A\00", [22 x i8] zeroinitializer }, align 32
@qtet_controls = internal constant { [13 x %struct.snd_kcontrol_new], [144 x i8] } { [13 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @qtet_mute_get, ptr @qtet_mute_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @qtet_php_get, ptr @qtet_php_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @qtet_ain12_enum_info, ptr @qtet_ain12_sw_get, ptr @qtet_ain12_sw_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 0, i32 0, ptr @qtet_enum_info, ptr @qtet_sw_get, ptr @qtet_sw_put, %union.anon.87 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 0, i32 0, ptr @qtet_enum_info, ptr @qtet_sw_get, ptr @qtet_sw_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @qtet_enum_info, ptr @qtet_sw_get, ptr @qtet_sw_put, %union.anon.87 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @qtet_enum_info, ptr @qtet_sw_get, ptr @qtet_sw_put, %union.anon.87 zeroinitializer, i32 3 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @qtet_sw_get, ptr @qtet_sw_put, %union.anon.87 zeroinitializer, i32 4 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @qtet_sw_get, ptr @qtet_sw_put, %union.anon.87 zeroinitializer, i32 5 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @qtet_sw_get, ptr @qtet_sw_put, %union.anon.87 zeroinitializer, i32 6 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @qtet_sw_get, ptr @qtet_sw_put, %union.anon.87 zeroinitializer, i32 7 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @qtet_sw_get, ptr @qtet_sw_put, %union.anon.87 zeroinitializer, i32 8 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @qtet_sw_get, ptr @qtet_sw_put, %union.anon.87 zeroinitializer, i32 9 }], [144 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@qtet_master_db_scale = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6350, i32 65586], [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Phantom Power\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Analog In 1/2 Capture Switch\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Analog In 3/4 Capture Switch\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PCM In 1/2 Capture Switch\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PCM In 3/4 Capture Switch\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Coax Output Source\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Analog In 1/2 to Monitor 1/2\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Analog In 1/2 to Monitor 3/4\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Analog In 3/4 to Monitor 1/2\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Analog In 3/4 to Monitor 3/4\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Output 1/2 to Monitor 3/4\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Output 3/4 to Monitor 1/2\00", [38 x i8] zeroinitializer }, align 32
@qtet_ain12_enum_info.texts = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30], [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Line In 1/2\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mic + Low-cut\00", [18 x i8] zeroinitializer }, align 32
@qtet_privates = internal constant { [10 x %struct.qtet_kcontrol_private], [56 x i8] } { [10 x %struct.qtet_kcontrol_private] [%struct.qtet_kcontrol_private { i32 64, ptr @set_cpld, ptr @get_cpld, [2 x ptr] [ptr @.str.31, ptr @.str.32] }, %struct.qtet_kcontrol_private { i32 128, ptr @set_cpld, ptr @get_cpld, [2 x ptr] [ptr @.str.32, ptr @.str.4] }, %struct.qtet_kcontrol_private { i32 64, ptr @set_scr, ptr @get_scr, [2 x ptr] [ptr @.str.33, ptr @.str.34] }, %struct.qtet_kcontrol_private { i32 32, ptr @set_cpld, ptr @get_cpld, [2 x ptr] [ptr @.str.35, ptr @.str.36] }, %struct.qtet_kcontrol_private { i32 1, ptr @set_mcr, ptr @get_mcr, [2 x ptr] zeroinitializer }, %struct.qtet_kcontrol_private { i32 2, ptr @set_mcr, ptr @get_mcr, [2 x ptr] zeroinitializer }, %struct.qtet_kcontrol_private { i32 4, ptr @set_mcr, ptr @get_mcr, [2 x ptr] zeroinitializer }, %struct.qtet_kcontrol_private { i32 8, ptr @set_mcr, ptr @get_mcr, [2 x ptr] zeroinitializer }, %struct.qtet_kcontrol_private { i32 32, ptr @set_mcr, ptr @get_mcr, [2 x ptr] zeroinitializer }, %struct.qtet_kcontrol_private { i32 16, ptr @set_mcr, ptr @get_mcr, [2 x ptr] zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"An In 1/2\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"An In 3/4\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Line In 3/4\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Hi-Z\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IEC958\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I2S\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 10, i64 26]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 10, i64 26]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 10, i64 26]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 48]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 48]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1080, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1081, i32 12 }
@___asan_gen_.49 = private unnamed_addr constant [12 x i8] c"qtet_eeprom\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1056, i32 28 }
@___asan_gen_.52 = private unnamed_addr constant [22 x i8] c"snd_vt1724_qtet_cards\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1077, i32 30 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"ak4113_init_vals\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 970, i32 29 }
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"qtet_rates_info\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 230, i32 48 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"ext_clock_names\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 51, i32 27 }
@___asan_gen_.64 = private unnamed_addr constant [13 x i8] c"akm_qtet_dac\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 375, i32 33 }
@___asan_gen_.67 = private unnamed_addr constant [11 x i8] c"qtet_rates\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 220, i32 27 }
@___asan_gen_.70 = private unnamed_addr constant [9 x i8] c"cks_vals\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 225, i32 27 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 887, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 51, i32 49 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 51, i32 62 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 52, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [9 x i8] c"qtet_dac\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 365, i32 45 }
@___asan_gen_.91 = private unnamed_addr constant [9 x i8] c"qtet_adc\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 370, i32 45 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 366, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 367, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 371, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 372, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 480, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 482, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 484, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [14 x i8] c"qtet_controls\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 723, i32 38 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 805, i32 40 }
@___asan_gen_.121 = private unnamed_addr constant [21 x i8] c"qtet_master_db_scale\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 767, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 726, i32 11 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 734, i32 11 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 742, i32 11 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 748, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 749, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 750, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 751, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 752, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 753, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 754, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 755, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 756, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 757, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 534, i32 28 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 535, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 535, i32 19 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 535, i32 26 }
@___asan_gen_.175 = private unnamed_addr constant [14 x i8] c"qtet_privates\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 660, i32 43 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 661, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 663, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private constant [31 x i8] c"../sound/pci/ice1712/quartet.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 664, i32 2 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @.str, ptr @.str.1, ptr @qtet_eeprom, ptr @snd_vt1724_qtet_cards, ptr @qtet_init.ak4113_init_vals, ptr @qtet_rates_info, ptr @ext_clock_names, ptr @akm_qtet_dac, ptr @qtet_rates, ptr @cks_vals, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @qtet_dac, ptr @qtet_adc, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @qtet_controls, ptr @.str.14, ptr @qtet_master_db_scale, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @qtet_ain12_enum_info.texts, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @qtet_privates, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtet_eeprom to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_qtet_cards to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtet_init.ak4113_init_vals to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtet_rates_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext_clock_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_qtet_dac to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtet_rates to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cks_vals to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtet_dac to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtet_adc to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtet_controls to i32), i32 624, i32 768, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtet_master_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtet_ain12_enum_info.texts to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtet_privates to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtet_init(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 8
  %0 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %profi_port, align 4
  %add = add i32 %1, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #10, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !111
  tail call void @arm_heavy_mb() #10
  %4 = or i8 %3, 16
  %5 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %profi_port, align 4
  %add5 = add i32 %6, 1
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %7 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %4) #10, !srcloc !112
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 16) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_rates = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 38
  %9 = ptrtoint ptr %hw_rates to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @qtet_rates_info, ptr %hw_rates, align 4
  %is_spdif_master = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 50
  %10 = ptrtoint ptr %is_spdif_master to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @qtet_is_spdif_master, ptr %is_spdif_master, align 4
  %get_rate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 51
  %11 = ptrtoint ptr %get_rate to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @qtet_get_rate, ptr %get_rate, align 4
  %set_rate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 52
  %12 = ptrtoint ptr %set_rate to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @qtet_set_rate, ptr %set_rate, align 4
  %set_mclk = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 53
  %13 = ptrtoint ptr %set_mclk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @qtet_set_mclk, ptr %set_mclk, align 4
  %set_spdif_clock = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 54
  %14 = ptrtoint ptr %set_spdif_clock to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @qtet_set_spdif_clock, ptr %set_spdif_clock, align 4
  %get_spdif_master_type = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 55
  %15 = ptrtoint ptr %get_spdif_master_type to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @qtet_get_spdif_master_type, ptr %get_spdif_master_type, align 4
  %ext_clock_names = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 56
  %16 = ptrtoint ptr %ext_clock_names to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ext_clock_names, ptr %ext_clock_names, align 4
  %ext_clock_count = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 57
  %17 = ptrtoint ptr %ext_clock_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %ext_clock_count, align 4
  %pro_open = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 58
  %18 = ptrtoint ptr %pro_open to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @qtet_spdif_in_open, ptr %pro_open, align 4
  %ops = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 3
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @qtet_spdif_in_open, ptr %ops, align 4
  %spec10 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %20 = ptrtoint ptr %spec10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %spec10, align 4
  %gpio_mutex.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i.i, i32 noundef 0) #10
  %set_dir.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 5
  %21 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %22(ptr noundef %ice, i32 noundef 65535) #10
  %set_mask.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 3
  %23 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_mask.i.i, align 4
  tail call void %24(ptr noundef %ice, i32 noundef -65536) #10
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %25 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %26(ptr noundef %ice) #10
  %and.i.i = and i32 %call.i.i, -256
  %or.i.i = or i32 %and.i.i, 8
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %27 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_data.i.i, align 4
  tail call void %28(ptr noundef %ice, i32 noundef %or.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 21474800) #10
  %and4.i.i = and i32 %or.i.i, -4344
  %30 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_data.i.i, align 4
  tail call void %31(ptr noundef %ice, i32 noundef %and4.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 21474800) #10
  %and8.i.i = and i32 %or.i.i, -12536
  %33 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_data.i.i, align 4
  tail call void %34(ptr noundef %ice, i32 noundef %and8.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 21474800) #10
  %or11.i.i = or i32 %and4.i.i, 8192
  %36 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_data.i.i, align 4
  tail call void %37(ptr noundef %ice, i32 noundef %or11.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 21474800) #10
  %or14.i.i = or i32 %and4.i.i, 8447
  %39 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_data.i.i, align 4
  tail call void %40(ptr noundef %ice, i32 noundef %or14.i.i) #10
  %41 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_mask.i.i, align 4
  tail call void %42(ptr noundef %ice, i32 noundef 16777215) #10
  %43 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %44(ptr noundef %ice, i32 noundef 65280) #10
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i.i) #10
  %scr.i = getelementptr inbounds %struct.qtet_spec, ptr %call7.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %scr.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 8, ptr %scr.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #10
  %47 = ptrtoint ptr %spec10 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %spec10, align 4
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i.i, i32 noundef 0) #10
  %49 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %50(ptr noundef %ice, i32 noundef 65535) #10
  %51 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_mask.i.i, align 4
  tail call void %52(ptr noundef %ice, i32 noundef -65536) #10
  %53 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i73 = tail call i32 %54(ptr noundef %ice) #10
  %and.i.i74 = and i32 %call.i.i73, -256
  %or.i.i75 = or i32 %and.i.i74, 136
  %55 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %set_data.i.i, align 4
  tail call void %56(ptr noundef %ice, i32 noundef %or.i.i75) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 21474800) #10
  %and4.i.i77 = and i32 %or.i.i75, -4216
  %58 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %set_data.i.i, align 4
  tail call void %59(ptr noundef %ice, i32 noundef %and4.i.i77) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 21474800) #10
  %and8.i.i78 = and i32 %or.i.i75, -12408
  %61 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_data.i.i, align 4
  tail call void %62(ptr noundef %ice, i32 noundef %and8.i.i78) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 21474800) #10
  %or11.i.i79 = or i32 %and4.i.i77, 8192
  %64 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %set_data.i.i, align 4
  tail call void %65(ptr noundef %ice, i32 noundef %or11.i.i79) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 21474800) #10
  %or14.i.i80 = or i32 %and4.i.i77, 8447
  %67 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %set_data.i.i, align 4
  tail call void %68(ptr noundef %ice, i32 noundef %or14.i.i80) #10
  %69 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %set_mask.i.i, align 4
  tail call void %70(ptr noundef %ice, i32 noundef 16777215) #10
  %71 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %72(ptr noundef %ice, i32 noundef 65280) #10
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i.i) #10
  %scr.i81 = getelementptr inbounds %struct.qtet_spec, ptr %48, i32 0, i32 1
  %73 = ptrtoint ptr %scr.i81 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 136, ptr %scr.i81, align 4
  %74 = ptrtoint ptr %spec10 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %spec10, align 4
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i.i, i32 noundef 0) #10
  %76 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %77(ptr noundef %ice, i32 noundef 65535) #10
  %78 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %set_mask.i.i, align 4
  tail call void %79(ptr noundef %ice, i32 noundef -65536) #10
  %80 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i87 = tail call i32 %81(ptr noundef %ice) #10
  %and.i.i88 = and i32 %call.i.i87, -256
  %82 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %set_data.i.i, align 4
  tail call void %83(ptr noundef %ice, i32 noundef %and.i.i88) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 21474800) #10
  %and4.i.i90 = and i32 %call.i.i87, -4352
  %85 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %set_data.i.i, align 4
  tail call void %86(ptr noundef %ice, i32 noundef %and4.i.i90) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 21474800) #10
  %and8.i.i91 = and i32 %call.i.i87, -20736
  %88 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %set_data.i.i, align 4
  tail call void %89(ptr noundef %ice, i32 noundef %and8.i.i91) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 21474800) #10
  %or11.i.i92 = or i32 %and4.i.i90, 16384
  %91 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %set_data.i.i, align 4
  tail call void %92(ptr noundef %ice, i32 noundef %or11.i.i92) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 21474800) #10
  %or14.i.i93 = or i32 %and4.i.i90, 16639
  %94 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %set_data.i.i, align 4
  tail call void %95(ptr noundef %ice, i32 noundef %or14.i.i93) #10
  %96 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %set_mask.i.i, align 4
  tail call void %97(ptr noundef %ice, i32 noundef 16777215) #10
  %98 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %99(ptr noundef %ice, i32 noundef 65280) #10
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i.i) #10
  %mcr.i = getelementptr inbounds %struct.qtet_spec, ptr %75, i32 0, i32 2
  %100 = ptrtoint ptr %mcr.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %mcr.i, align 4
  %101 = ptrtoint ptr %spec10 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %spec10, align 4
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i.i, i32 noundef 0) #10
  %103 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %104(ptr noundef %ice, i32 noundef 65535) #10
  %105 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %set_mask.i.i, align 4
  tail call void %106(ptr noundef %ice, i32 noundef -65536) #10
  %107 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i99 = tail call i32 %108(ptr noundef %ice) #10
  %and.i.i100 = and i32 %call.i.i99, -256
  %109 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %set_data.i.i, align 4
  tail call void %110(ptr noundef %ice, i32 noundef %and.i.i100) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %111(i32 noundef 21474800) #10
  %and4.i.i102 = and i32 %call.i.i99, -4352
  %112 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %set_data.i.i, align 4
  tail call void %113(ptr noundef %ice, i32 noundef %and4.i.i102) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %114(i32 noundef 21474800) #10
  %and8.i.i103 = and i32 %call.i.i99, -4608
  %115 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %set_data.i.i, align 4
  tail call void %116(ptr noundef %ice, i32 noundef %and8.i.i103) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %117(i32 noundef 21474800) #10
  %or11.i.i104 = or i32 %and4.i.i102, 256
  %118 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %set_data.i.i, align 4
  tail call void %119(ptr noundef %ice, i32 noundef %or11.i.i104) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 21474800) #10
  %or14.i.i105 = or i32 %and4.i.i102, 511
  %121 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %set_data.i.i, align 4
  tail call void %122(ptr noundef %ice, i32 noundef %or14.i.i105) #10
  %123 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %set_mask.i.i, align 4
  tail call void %124(ptr noundef %ice, i32 noundef 16777215) #10
  %125 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %126(ptr noundef %ice, i32 noundef 65280) #10
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i.i) #10
  %cpld.i = getelementptr inbounds %struct.qtet_spec, ptr %102, i32 0, i32 3
  %127 = ptrtoint ptr %cpld.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %cpld.i, align 4
  %num_total_dacs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %128 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 2, ptr %num_total_dacs, align 4
  %num_total_adcs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %129 = ptrtoint ptr %num_total_adcs to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 2, ptr %num_total_adcs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %130 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %130, i32 noundef 3520, i32 noundef 432) #13
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  %131 = ptrtoint ptr %akm to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call7.i.i.i, ptr %akm, align 4
  %tobool13.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %akm_codecs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 39
  %132 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 1, ptr %akm_codecs, align 4
  %call16 = tail call i32 @snd_ice1712_akm4xxx_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @akm_qtet_dac, ptr noundef null, ptr noundef %ice) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %133 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %card, align 4
  %call20 = tail call i32 @snd_ak4113_create(ptr noundef %134, ptr noundef nonnull @qtet_ak4113_read, ptr noundef nonnull @qtet_ak4113_write, ptr noundef nonnull @qtet_init.ak4113_init_vals, ptr noundef %ice, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %135 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %call7.i.i, align 8
  %change_callback = getelementptr inbounds %struct.ak4113, ptr %136, i32 0, i32 17
  %137 = ptrtoint ptr %change_callback to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @qtet_ak4113_change, ptr %change_callback, align 4
  %138 = load ptr, ptr %call7.i.i, align 8
  %change_callback_private = getelementptr inbounds %struct.ak4113, ptr %138, i32 0, i32 16
  %139 = ptrtoint ptr %change_callback_private to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %ice, ptr %change_callback_private, align 4
  %140 = load ptr, ptr %call7.i.i, align 8
  %check_flags = getelementptr inbounds %struct.ak4113, ptr %140, i32 0, i32 15
  %141 = ptrtoint ptr %check_flags to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %check_flags, align 4
  %142 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %card, align 4
  %call.i.i106 = tail call i32 @snd_card_rw_proc_new(ptr noundef %143, ptr noundef nonnull @.str.1, ptr noundef %ice, ptr noundef nonnull @proc_regs_read, ptr noundef null) #10
  tail call void @qtet_set_rate(ptr noundef %ice, i32 noundef 44100)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtet_add_controls(ptr noundef %ice) #0 align 64 {
entry:
  %sid.i.i = alloca %struct.snd_ctl_elem_id, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %call = tail call i32 @snd_ice1712_akm4xxx_build_controls(ptr noundef %ice) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %call3 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @qtet_controls, ptr noundef %ice) #10
  %call4 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %for.cond.preheader.cleanup_crit_edge, label %for.cond

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %for.cond.preheader
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %call3.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([13 x %struct.snd_kcontrol_new], ptr @qtet_controls, i32 0, i32 1), ptr noundef %ice) #10
  %call4.1 = tail call i32 @snd_ctl_add(ptr noundef %5, ptr noundef %call3.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %cmp5.1 = icmp slt i32 %call4.1, 0
  br i1 %cmp5.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %call3.2 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([13 x %struct.snd_kcontrol_new], ptr @qtet_controls, i32 0, i32 2), ptr noundef %ice) #10
  %call4.2 = tail call i32 @snd_ctl_add(ptr noundef %7, ptr noundef %call3.2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %cmp5.2 = icmp slt i32 %call4.2, 0
  br i1 %cmp5.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %call3.3 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([13 x %struct.snd_kcontrol_new], ptr @qtet_controls, i32 0, i32 3), ptr noundef %ice) #10
  %call4.3 = tail call i32 @snd_ctl_add(ptr noundef %9, ptr noundef %call3.3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.3)
  %cmp5.3 = icmp slt i32 %call4.3, 0
  br i1 %cmp5.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %call3.4 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([13 x %struct.snd_kcontrol_new], ptr @qtet_controls, i32 0, i32 4), ptr noundef %ice) #10
  %call4.4 = tail call i32 @snd_ctl_add(ptr noundef %11, ptr noundef %call3.4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.4)
  %cmp5.4 = icmp slt i32 %call4.4, 0
  br i1 %cmp5.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %call3.5 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([13 x %struct.snd_kcontrol_new], ptr @qtet_controls, i32 0, i32 5), ptr noundef %ice) #10
  %call4.5 = tail call i32 @snd_ctl_add(ptr noundef %13, ptr noundef %call3.5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.5)
  %cmp5.5 = icmp slt i32 %call4.5, 0
  br i1 %cmp5.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %call3.6 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([13 x %struct.snd_kcontrol_new], ptr @qtet_controls, i32 0, i32 6), ptr noundef %ice) #10
  %call4.6 = tail call i32 @snd_ctl_add(ptr noundef %15, ptr noundef %call3.6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.6)
  %cmp5.6 = icmp slt i32 %call4.6, 0
  br i1 %cmp5.6, label %for.cond.5.cleanup_crit_edge, label %for.cond.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %call3.7 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([13 x %struct.snd_kcontrol_new], ptr @qtet_controls, i32 0, i32 7), ptr noundef %ice) #10
  %call4.7 = tail call i32 @snd_ctl_add(ptr noundef %17, ptr noundef %call3.7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.7)
  %cmp5.7 = icmp slt i32 %call4.7, 0
  br i1 %cmp5.7, label %for.cond.6.cleanup_crit_edge, label %for.cond.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %18 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card, align 4
  %call3.8 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([13 x %struct.snd_kcontrol_new], ptr @qtet_controls, i32 0, i32 8), ptr noundef %ice) #10
  %call4.8 = tail call i32 @snd_ctl_add(ptr noundef %19, ptr noundef %call3.8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.8)
  %cmp5.8 = icmp slt i32 %call4.8, 0
  br i1 %cmp5.8, label %for.cond.7.cleanup_crit_edge, label %for.cond.8

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %call3.9 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([13 x %struct.snd_kcontrol_new], ptr @qtet_controls, i32 0, i32 9), ptr noundef %ice) #10
  %call4.9 = tail call i32 @snd_ctl_add(ptr noundef %21, ptr noundef %call3.9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.9)
  %cmp5.9 = icmp slt i32 %call4.9, 0
  br i1 %cmp5.9, label %for.cond.8.cleanup_crit_edge, label %for.cond.9

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.9:                                       ; preds = %for.cond.8
  %22 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card, align 4
  %call3.10 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([13 x %struct.snd_kcontrol_new], ptr @qtet_controls, i32 0, i32 10), ptr noundef %ice) #10
  %call4.10 = tail call i32 @snd_ctl_add(ptr noundef %23, ptr noundef %call3.10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.10)
  %cmp5.10 = icmp slt i32 %call4.10, 0
  br i1 %cmp5.10, label %for.cond.9.cleanup_crit_edge, label %for.cond.10

for.cond.9.cleanup_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.10:                                      ; preds = %for.cond.9
  %24 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card, align 4
  %call3.11 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([13 x %struct.snd_kcontrol_new], ptr @qtet_controls, i32 0, i32 11), ptr noundef %ice) #10
  %call4.11 = tail call i32 @snd_ctl_add(ptr noundef %25, ptr noundef %call3.11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.11)
  %cmp5.11 = icmp slt i32 %call4.11, 0
  br i1 %cmp5.11, label %for.cond.10.cleanup_crit_edge, label %for.cond.11

for.cond.10.cleanup_crit_edge:                    ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.11:                                      ; preds = %for.cond.10
  %26 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card, align 4
  %call3.12 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([13 x %struct.snd_kcontrol_new], ptr @qtet_controls, i32 0, i32 12), ptr noundef %ice) #10
  %call4.12 = tail call i32 @snd_ctl_add(ptr noundef %27, ptr noundef %call3.12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.12)
  %cmp5.12 = icmp slt i32 %call4.12, 0
  br i1 %cmp5.12, label %for.cond.11.cleanup_crit_edge, label %for.cond.12

for.cond.11.cleanup_crit_edge:                    ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.12:                                      ; preds = %for.cond.11
  %call8 = tail call ptr @snd_ctl_make_virtual_master(ptr noundef nonnull @.str.14, ptr noundef nonnull @qtet_master_db_scale) #10
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %for.cond.12.cleanup_crit_edge, label %if.end10

for.cond.12.cleanup_crit_edge:                    ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %for.cond.12
  %28 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card, align 4
  %name1.i.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %sid.i.i, i32 0, i32 4
  %iface.i.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %sid.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i) #10
  %30 = call ptr @memset(ptr %sid.i.i, i32 0, i32 64)
  %call.i.i = call i32 @strscpy(ptr noundef %name1.i.i, ptr noundef nonnull @.str.7, i32 noundef 44) #10
  %31 = ptrtoint ptr %iface.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %iface.i.i, align 4
  %call2.i.i = call ptr @snd_ctl_find_id(ptr noundef %29, ptr noundef nonnull %sid.i.i) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i) #10
  %tobool1.not.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool1.not.i, label %if.end10.if.end.i_crit_edge, label %if.then.i

if.end10.if.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call.i1.i = call i32 @_snd_ctl_add_follower(ptr noundef nonnull %call8, ptr noundef nonnull %call2.i.i, i32 noundef 0) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end10.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i) #10
  %32 = call ptr @memset(ptr %sid.i.i, i32 0, i32 64)
  %call.i.1.i = call i32 @strscpy(ptr noundef %name1.i.i, ptr noundef nonnull @.str.8, i32 noundef 44) #10
  %33 = ptrtoint ptr %iface.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %iface.i.i, align 4
  %call2.i.1.i = call ptr @snd_ctl_find_id(ptr noundef %29, ptr noundef nonnull %sid.i.i) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i) #10
  %tobool1.not.1.i = icmp eq ptr %call2.i.1.i, null
  br i1 %tobool1.not.1.i, label %if.end.i.add_followers.exit_crit_edge, label %if.then.1.i

if.end.i.add_followers.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_followers.exit

if.then.1.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i1.1.i = call i32 @_snd_ctl_add_follower(ptr noundef nonnull %call8, ptr noundef nonnull %call2.i.1.i, i32 noundef 0) #10
  br label %add_followers.exit

add_followers.exit:                               ; preds = %if.then.1.i, %if.end.i.add_followers.exit_crit_edge
  %34 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card, align 4
  %call13 = call i32 @snd_ctl_add(ptr noundef %35, ptr noundef nonnull %call8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %add_followers.exit.cleanup_crit_edge, label %if.end16

add_followers.exit.cleanup_crit_edge:             ; preds = %add_followers.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %add_followers.exit
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %pcm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 11
  %38 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pcm, align 4
  %substream = getelementptr %struct.snd_pcm, ptr %39, i32 0, i32 8, i32 1, i32 4
  %40 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %substream, align 8
  %call18 = call i32 @snd_ak4113_build(ptr noundef %37, ptr noundef %41) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %add_followers.exit.cleanup_crit_edge, %for.cond.12.cleanup_crit_edge, %for.cond.11.cleanup_crit_edge, %for.cond.10.cleanup_crit_edge, %for.cond.9.cleanup_crit_edge, %for.cond.8.cleanup_crit_edge, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end16 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %for.cond.12.cleanup_crit_edge ], [ %call13, %add_followers.exit.cleanup_crit_edge ], [ %call4, %for.cond.preheader.cleanup_crit_edge ], [ %call4.1, %for.cond.cleanup_crit_edge ], [ %call4.2, %for.cond.1.cleanup_crit_edge ], [ %call4.3, %for.cond.2.cleanup_crit_edge ], [ %call4.4, %for.cond.3.cleanup_crit_edge ], [ %call4.5, %for.cond.4.cleanup_crit_edge ], [ %call4.6, %for.cond.5.cleanup_crit_edge ], [ %call4.7, %for.cond.6.cleanup_crit_edge ], [ %call4.8, %for.cond.7.cleanup_crit_edge ], [ %call4.9, %for.cond.8.cleanup_crit_edge ], [ %call4.10, %for.cond.9.cleanup_crit_edge ], [ %call4.11, %for.cond.10.cleanup_crit_edge ], [ %call4.12, %for.cond.11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qtet_is_spdif_master(ptr nocapture noundef readonly %ice) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %spec1.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1.i, align 4
  %cpld.i = getelementptr inbounds %struct.qtet_spec, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpld.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpld.i, align 4
  %and = lshr i32 %3, 3
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @qtet_get_rate(ptr nocapture noundef readonly %ice) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1.i, align 4
  %cpld.i = getelementptr inbounds %struct.qtet_spec, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpld.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpld.i, align 4
  %conv = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv)
  %switch = icmp ult i32 %conv, 6
  br i1 %switch, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx5 = getelementptr [6 x i32], ptr @qtet_rates, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtet_set_rate(ptr noundef %ice, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 8
  %0 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %profi_port, align 4
  %add = add i32 %1, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #10, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  tail call void @arm_heavy_mb() #10
  %4 = or i8 %3, 16
  %5 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %profi_port, align 4
  %add5 = add i32 %6, 1
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %7 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %4) #10, !srcloc !112
  %spec1.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %8 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spec1.i, align 4
  %cpld.i = getelementptr inbounds %struct.qtet_spec, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpld.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpld.i, align 4
  %12 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rate, label %entry.get_cks_val.exit_crit_edge [
    i32 44100, label %entry.if.then.i_crit_edge
    i32 48000, label %if.then.fold.split.i
    i32 88200, label %if.then.fold.split9.i
    i32 96000, label %if.then.fold.split10.i
    i32 176400, label %if.then.fold.split11.i
    i32 192000, label %if.then.fold.split12.i
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.get_cks_val.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_cks_val.exit

if.then.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.fold.split9.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.fold.split10.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.fold.split11.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.fold.split12.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split9.i, %if.then.fold.split.i, %entry.if.then.i_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %entry.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split9.i ], [ 3, %if.then.fold.split10.i ], [ 4, %if.then.fold.split11.i ], [ 5, %if.then.fold.split12.i ]
  %arrayidx2.i = getelementptr [6 x i32], ptr @cks_vals, i32 0, i32 %i.07.lcssa.i
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2.i, align 4
  %phi.bo = and i32 %14, -9
  br label %get_cks_val.exit

get_cks_val.exit:                                 ; preds = %if.then.i, %entry.get_cks_val.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo, %if.then.i ], [ 0, %entry.get_cks_val.exit_crit_edge ]
  %and10 = and i32 %11, -16
  %and13 = or i32 %retval.0.i, %and10
  %gpio_mutex.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i.i, i32 noundef 0) #10
  %set_dir.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 5
  %15 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %16(ptr noundef %ice, i32 noundef 65535) #10
  %set_mask.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 3
  %17 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_mask.i.i, align 4
  tail call void %18(ptr noundef %ice, i32 noundef -65536) #10
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %19 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %20(ptr noundef %ice) #10
  %and.i.i = and i32 %call.i.i, -256
  %or.i.i = or i32 %and.i.i, %and13
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %21 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_data.i.i, align 4
  tail call void %22(ptr noundef %ice, i32 noundef %or.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 21474800) #10
  %and4.i.i = and i32 %or.i.i, -4105
  %24 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_data.i.i, align 4
  tail call void %25(ptr noundef %ice, i32 noundef %and4.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 21474800) #10
  %and8.i.i = and i32 %or.i.i, -4361
  %27 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_data.i.i, align 4
  tail call void %28(ptr noundef %ice, i32 noundef %and8.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 21474800) #10
  %or11.i.i = or i32 %and4.i.i, 256
  %30 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_data.i.i, align 4
  tail call void %31(ptr noundef %ice, i32 noundef %or11.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 21474800) #10
  %or14.i.i = or i32 %and4.i.i, 511
  %33 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_data.i.i, align 4
  tail call void %34(ptr noundef %ice, i32 noundef %or14.i.i) #10
  %35 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_mask.i.i, align 4
  tail call void %36(ptr noundef %ice, i32 noundef 16777215) #10
  %37 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %38(ptr noundef %ice, i32 noundef 65280) #10
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i.i) #10
  %39 = ptrtoint ptr %cpld.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and13, ptr %cpld.i, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @qtet_set_mclk(ptr nocapture noundef readnone %ice, i32 noundef %rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  ret i8 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtet_set_spdif_clock(ptr noundef %ice, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1.i, align 4
  %cpld.i = getelementptr inbounds %struct.qtet_spec, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpld.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpld.i, align 4
  %and = and i32 %3, -24
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %type, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %and, 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or2 = or i32 %and, 10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or4 = or i32 %and, 26
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 887, i32 noundef 9, ptr noundef nonnull @.str.3) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb3, %sw.bb1, %sw.bb
  %new.0 = phi i32 [ %and, %do.end ], [ %or4, %sw.bb3 ], [ %or2, %sw.bb1 ], [ %or, %sw.bb ]
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %new.0)
  %cmp.not = icmp eq i32 %3, %new.0
  br i1 %cmp.not, label %sw.epilog.cleanup_crit_edge, label %if.then19

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then19:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spec1.i, align 4
  %gpio_mutex.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i.i, i32 noundef 0) #10
  %set_dir.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 5
  %7 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %8(ptr noundef %ice, i32 noundef 65535) #10
  %set_mask.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 3
  %9 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_mask.i.i, align 4
  tail call void %10(ptr noundef %ice, i32 noundef -65536) #10
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %11 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %12(ptr noundef %ice) #10
  %and.i.i = and i32 %call.i.i, -256
  %or.i.i = or i32 %and.i.i, %new.0
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %13 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_data.i.i, align 4
  tail call void %14(ptr noundef %ice, i32 noundef %or.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 21474800) #10
  %and4.i.i = and i32 %or.i.i, -4097
  %16 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_data.i.i, align 4
  tail call void %17(ptr noundef %ice, i32 noundef %and4.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 21474800) #10
  %and8.i.i = and i32 %or.i.i, -4353
  %19 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_data.i.i, align 4
  tail call void %20(ptr noundef %ice, i32 noundef %and8.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 21474800) #10
  %or11.i.i = or i32 %and4.i.i, 256
  %22 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_data.i.i, align 4
  tail call void %23(ptr noundef %ice, i32 noundef %or11.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 21474800) #10
  %or14.i.i = or i32 %and4.i.i, 511
  %25 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_data.i.i, align 4
  tail call void %26(ptr noundef %ice, i32 noundef %or14.i.i) #10
  %27 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_mask.i.i, align 4
  tail call void %28(ptr noundef %ice, i32 noundef 16777215) #10
  %29 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %30(ptr noundef %ice, i32 noundef 65280) #10
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i.i) #10
  %cpld.i30 = getelementptr inbounds %struct.qtet_spec, ptr %6, i32 0, i32 3
  %31 = ptrtoint ptr %cpld.i30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %new.0, ptr %cpld.i30, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then19 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtet_get_spdif_master_type(ptr nocapture noundef readonly %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1.i, align 4
  %cpld.i = getelementptr inbounds %struct.qtet_spec, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpld.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpld.i, align 4
  %and1 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.else:                                          ; preds = %entry
  %and = and i32 %3, 31
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %and, label %do.end [
    i32 8, label %if.else.if.end20_crit_edge
    i32 10, label %sw.bb2
    i32 26, label %sw.bb3
  ]

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

sw.bb2:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

sw.bb3:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 920, i32 noundef 9, ptr noundef nonnull @.str.3) #10
  br label %if.end20

if.end20:                                         ; preds = %do.end, %sw.bb3, %sw.bb2, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %result.0 = phi i32 [ 0, %do.end ], [ 2, %sw.bb3 ], [ 1, %sw.bb2 ], [ -1, %entry.if.end20_crit_edge ], [ 0, %if.else.if.end20_crit_edge ]
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtet_spdif_in_open(ptr nocapture noundef readonly %ice, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2, align 4
  %cpld.i.i = getelementptr inbounds %struct.qtet_spec, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cpld.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpld.i.i, align 4
  %and1.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.else.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i:                                        ; preds = %entry
  %and.i = and i32 %5, 31
  %6 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %and.i, label %do.end.i [
    i32 8, label %if.else.i.if.end_crit_edge
    i32 10, label %if.else.i.cleanup_crit_edge
    i32 26, label %if.else.i.cleanup_crit_edge24
  ]

if.else.i.cleanup_crit_edge24:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 920, i32 noundef 9, ptr noundef nonnull @.str.3) #10
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.else.i.if.end_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call3 = tail call i32 @snd_ak4113_external_rate(ptr noundef %8) #10
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 3
  %9 = ptrtoint ptr %rate_min to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rate_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %10)
  %cmp4.not = icmp ult i32 %call3, %10
  br i1 %cmp4.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %11 = ptrtoint ptr %rate_max to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rate_max, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %12)
  %cmp6.not = icmp ugt i32 %call3, %12
  br i1 %cmp6.not, label %land.lhs.true.cleanup_crit_edge, label %if.then7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call3, ptr %rate_min, align 4
  %14 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call3, ptr %rate_max, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge24, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_scr(ptr noundef %ice, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #10
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 5
  %2 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_dir.i, align 4
  tail call void %3(ptr noundef %ice, i32 noundef 65535) #10
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 3
  %4 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_mask.i, align 4
  tail call void %5(ptr noundef %ice, i32 noundef -65536) #10
  %get_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %6 = ptrtoint ptr %get_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_data.i, align 4
  %call.i = tail call i32 %7(ptr noundef %ice) #10
  %and.i = and i32 %call.i, -256
  %or.i = or i32 %and.i, %val
  %set_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %8 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_data.i, align 4
  tail call void %9(ptr noundef %ice, i32 noundef %or.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 21474800) #10
  %and4.i = and i32 %or.i, -4097
  %11 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_data.i, align 4
  tail call void %12(ptr noundef %ice, i32 noundef %and4.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 21474800) #10
  %and8.i = and i32 %or.i, -12289
  %14 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_data.i, align 4
  tail call void %15(ptr noundef %ice, i32 noundef %and8.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 21474800) #10
  %or11.i = or i32 %and4.i, 8192
  %17 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_data.i, align 4
  tail call void %18(ptr noundef %ice, i32 noundef %or11.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 21474800) #10
  %or14.i = or i32 %and4.i, 8447
  %20 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_data.i, align 4
  tail call void %21(ptr noundef %ice, i32 noundef %or14.i) #10
  %22 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_mask.i, align 4
  tail call void %23(ptr noundef %ice, i32 noundef 16777215) #10
  %24 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_dir.i, align 4
  tail call void %25(ptr noundef %ice, i32 noundef 65280) #10
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #10
  %scr = getelementptr inbounds %struct.qtet_spec, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %scr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %val, ptr %scr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_mcr(ptr noundef %ice, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #10
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 5
  %2 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_dir.i, align 4
  tail call void %3(ptr noundef %ice, i32 noundef 65535) #10
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 3
  %4 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_mask.i, align 4
  tail call void %5(ptr noundef %ice, i32 noundef -65536) #10
  %get_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %6 = ptrtoint ptr %get_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_data.i, align 4
  %call.i = tail call i32 %7(ptr noundef %ice) #10
  %and.i = and i32 %call.i, -256
  %or.i = or i32 %and.i, %val
  %set_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %8 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_data.i, align 4
  tail call void %9(ptr noundef %ice, i32 noundef %or.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 21474800) #10
  %and4.i = and i32 %or.i, -4097
  %11 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_data.i, align 4
  tail call void %12(ptr noundef %ice, i32 noundef %and4.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 21474800) #10
  %and8.i = and i32 %or.i, -20481
  %14 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_data.i, align 4
  tail call void %15(ptr noundef %ice, i32 noundef %and8.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 21474800) #10
  %or11.i = or i32 %and4.i, 16384
  %17 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_data.i, align 4
  tail call void %18(ptr noundef %ice, i32 noundef %or11.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 21474800) #10
  %or14.i = or i32 %and4.i, 16639
  %20 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_data.i, align 4
  tail call void %21(ptr noundef %ice, i32 noundef %or14.i) #10
  %22 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_mask.i, align 4
  tail call void %23(ptr noundef %ice, i32 noundef 16777215) #10
  %24 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_dir.i, align 4
  tail call void %25(ptr noundef %ice, i32 noundef 65280) #10
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #10
  %mcr = getelementptr inbounds %struct.qtet_spec, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %mcr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %val, ptr %mcr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_cpld(ptr noundef %ice, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #10
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 5
  %2 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_dir.i, align 4
  tail call void %3(ptr noundef %ice, i32 noundef 65535) #10
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 3
  %4 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_mask.i, align 4
  tail call void %5(ptr noundef %ice, i32 noundef -65536) #10
  %get_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %6 = ptrtoint ptr %get_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_data.i, align 4
  %call.i = tail call i32 %7(ptr noundef %ice) #10
  %and.i = and i32 %call.i, -256
  %or.i = or i32 %and.i, %val
  %set_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %8 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_data.i, align 4
  tail call void %9(ptr noundef %ice, i32 noundef %or.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 21474800) #10
  %and4.i = and i32 %or.i, -4097
  %11 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_data.i, align 4
  tail call void %12(ptr noundef %ice, i32 noundef %and4.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 21474800) #10
  %and8.i = and i32 %or.i, -4353
  %14 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_data.i, align 4
  tail call void %15(ptr noundef %ice, i32 noundef %and8.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 21474800) #10
  %or11.i = or i32 %and4.i, 256
  %17 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_data.i, align 4
  tail call void %18(ptr noundef %ice, i32 noundef %or11.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 21474800) #10
  %or14.i = or i32 %and4.i, 511
  %20 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_data.i, align 4
  tail call void %21(ptr noundef %ice, i32 noundef %or14.i) #10
  %22 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_mask.i, align 4
  tail call void %23(ptr noundef %ice, i32 noundef 16777215) #10
  %24 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_dir.i, align 4
  tail call void %25(ptr noundef %ice, i32 noundef 65280) #10
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #10
  %cpld = getelementptr inbounds %struct.qtet_spec, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %cpld to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %val, ptr %cpld, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ice1712_akm4xxx_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ak4113_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @qtet_ak4113_read(ptr noundef %private_data, i8 noundef zeroext %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %private_data, i8 noundef zeroext 38, i8 noundef zeroext %reg) #10
  ret i8 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtet_ak4113_write(ptr noundef %private_data, i8 noundef zeroext %reg, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @snd_vt1724_write_i2c(ptr noundef %private_data, i8 noundef zeroext 38, i8 noundef zeroext %reg, i8 noundef zeroext %val) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtet_ak4113_change(ptr noundef %ak4113, i8 noundef zeroext %c0, i8 noundef zeroext %c1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %change_callback_private = getelementptr inbounds %struct.ak4113, ptr %ak4113, i32 0, i32 16
  %0 = ptrtoint ptr %change_callback_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %change_callback_private, align 4
  %spec1.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1.i.i, align 4
  %cpld.i.i = getelementptr inbounds %struct.qtet_spec, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpld.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpld.i.i, align 4
  %and1.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.else.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else.i:                                        ; preds = %entry
  %and.i = and i32 %5, 31
  %6 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %and.i, label %do.end.i [
    i32 8, label %if.else.i.qtet_get_spdif_master_type.exit_crit_edge
    i32 10, label %if.else.i.if.end_crit_edge
    i32 26, label %if.else.i.if.end_crit_edge8
  ]

if.else.i.if.end_crit_edge8:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else.i.qtet_get_spdif_master_type.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qtet_get_spdif_master_type.exit

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 920, i32 noundef 9, ptr noundef nonnull @.str.3) #10
  br label %qtet_get_spdif_master_type.exit

qtet_get_spdif_master_type.exit:                  ; preds = %do.end.i, %if.else.i.qtet_get_spdif_master_type.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %c1)
  %tobool.not = icmp eq i8 %c1, 0
  br i1 %tobool.not, label %qtet_get_spdif_master_type.exit.if.end_crit_edge, label %if.then

qtet_get_spdif_master_type.exit.if.end_crit_edge: ; preds = %qtet_get_spdif_master_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %qtet_get_spdif_master_type.exit
  %call1 = tail call i32 @snd_ak4113_external_rate(ptr noundef %ak4113) #10
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %7 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %akm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.i = icmp eq i32 %call1, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 108000, i32 %call1)
  %cmp1.i = icmp ugt i32 %call1, 108000
  call void @__sanitizer_cov_trace_const_cmp4(i32 54000, i32 %call1)
  %cmp3.i = icmp ugt i32 %call1, 54000
  %..i = select i1 %cmp3.i, i8 5, i8 0
  %ak4620_dfs.0.i = select i1 %cmp1.i, i8 10, i8 %..i
  %num_chips.i.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %num_chips.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_chips.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp16.not.i.i = icmp eq i32 %10, 0
  br i1 %cmp16.not.i.i, label %if.end.i.if.end_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %chip.017.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %mul.i.i = shl i32 %chip.017.i.i, 4
  %add.i.i = or i32 %mul.i.i, 2
  %arrayidx.i.i = getelementptr %struct.snd_akm4xxx, ptr %8, i32 0, i32 3, i32 %add.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i, align 1
  %and.i.i = and i8 %12, -16
  %or15.i.i = or i8 %and.i.i, %ak4620_dfs.0.i
  tail call void @snd_akm4xxx_write(ptr noundef %8, i32 noundef %chip.017.i.i, i8 noundef zeroext 2, i8 noundef zeroext %or15.i.i) #10
  %inc.i.i = add nuw i32 %chip.017.i.i, 1
  %13 = ptrtoint ptr %num_chips.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_chips.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %14
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end_crit_edge

for.body.i.i.if.end_crit_edge:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.end:                                           ; preds = %for.body.i.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %qtet_get_spdif_master_type.exit.if.end_crit_edge, %if.else.i.if.end_crit_edge, %if.else.i.if.end_crit_edge8, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_cpld(ptr nocapture noundef readonly %ice) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %cpld = getelementptr inbounds %struct.qtet_spec, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpld to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpld, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ak4113_external_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtet_akm_write(ptr nocapture noundef readonly %ak, i32 noundef %chip, i8 noundef zeroext %addr, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 6
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %chip)
  %2 = icmp ugt i32 %chip, 3
  br i1 %2, label %do.end, label %if.end23, !prof !115

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 265, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end23:                                         ; preds = %entry
  %get_dir = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 6
  %3 = ptrtoint ptr %get_dir to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_dir, align 4
  %call = tail call i32 %4(ptr noundef %1) #10
  %set_dir = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %5 = ptrtoint ptr %set_dir to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_dir, align 4
  %or = or i32 %call, 3120
  tail call void %6(ptr noundef %1, i32 noundef %or) #10
  %set_mask = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %7 = ptrtoint ptr %set_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_mask, align 4
  tail call void %8(ptr noundef %1, i32 noundef -3121) #10
  %get_data = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 8
  %9 = ptrtoint ptr %get_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_data, align 4
  %call27 = tail call i32 %10(ptr noundef %1) #10
  %or28 = or i32 %call27, 3120
  %set_data = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 7
  %11 = ptrtoint ptr %set_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_data, align 4
  tail call void %12(ptr noundef %1, i32 noundef %or28) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 21474800) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chip)
  %tobool30.not = icmp eq i32 %chip, 0
  %tmp.0.v = select i1 %tobool30.not, i32 -1025, i32 -2049
  %tmp.0 = and i32 %or28, %tmp.0.v
  %14 = ptrtoint ptr %set_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_data, align 4
  tail call void %15(ptr noundef %1, i32 noundef %tmp.0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 21474800) #10
  %17 = and i8 %addr, 31
  %18 = or i8 %17, -96
  %or37 = zext i8 %18 to i32
  %shl = shl nuw nsw i32 %or37, 8
  %conv38 = zext i8 %data to i32
  %or39 = or i32 %shl, %conv38
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end23
  %tmp.1113 = phi i32 [ %tmp.0, %if.end23 ], [ %or55, %for.body.for.body_crit_edge ]
  %idx.0112 = phi i32 [ 15, %if.end23 ], [ %dec, %for.body.for.body_crit_edge ]
  %and42 = and i32 %tmp.1113, -33
  %19 = ptrtoint ptr %set_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_data, align 4
  tail call void %20(ptr noundef %1, i32 noundef %and42) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 21474800) #10
  %shl45 = shl nuw i32 1, %idx.0112
  %and46 = and i32 %shl45, %or39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %or49 = or i32 %and42, 16
  %and51 = and i32 %tmp.1113, -49
  %tmp.2 = select i1 %tobool47.not, i32 %and51, i32 %or49
  %22 = ptrtoint ptr %set_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_data, align 4
  tail call void %23(ptr noundef %1, i32 noundef %tmp.2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 21474800) #10
  %or55 = or i32 %tmp.2, 32
  %25 = ptrtoint ptr %set_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_data, align 4
  tail call void %26(ptr noundef %1, i32 noundef %or55) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 21474800) #10
  %dec = add nsw i32 %idx.0112, -1
  %cmp40.not = icmp eq i32 %idx.0112, 0
  br i1 %cmp40.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %or58 = or i32 %tmp.2, 3120
  %28 = ptrtoint ptr %set_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_data, align 4
  tail call void %29(ptr noundef %1, i32 noundef %or58) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 21474800) #10
  %31 = ptrtoint ptr %set_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_mask, align 4
  tail call void %32(ptr noundef %1, i32 noundef 16777215) #10
  %33 = ptrtoint ptr %set_dir to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_dir, align 4
  tail call void %34(ptr noundef %1, i32 noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtet_akm_set_rate_val(ptr noundef %ak, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp = icmp eq i32 %rate, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 108000, i32 %rate)
  %cmp1 = icmp ugt i32 %rate, 108000
  call void @__sanitizer_cov_trace_const_cmp4(i32 54000, i32 %rate)
  %cmp3 = icmp ugt i32 %rate, 54000
  %. = select i1 %cmp3, i8 5, i8 0
  %ak4620_dfs.0 = select i1 %cmp1, i8 10, i8 %.
  %num_chips.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 12
  %0 = ptrtoint ptr %num_chips.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_chips.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp16.not.i = icmp eq i32 %1, 0
  br i1 %cmp16.not.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %chip.017.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %mul.i = shl i32 %chip.017.i, 4
  %add.i = or i32 %mul.i, 2
  %arrayidx.i = getelementptr %struct.snd_akm4xxx, ptr %ak, i32 0, i32 3, i32 %add.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %and.i = and i8 %3, -16
  %or15.i = or i8 %and.i, %ak4620_dfs.0
  tail call void @snd_akm4xxx_write(ptr noundef %ak, i32 noundef %chip.017.i, i8 noundef zeroext 2, i8 noundef zeroext %or15.i) #10
  %inc.i = add nuw i32 %chip.017.i, 1
  %4 = ptrtoint ptr %num_chips.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_chips.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %5
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_akm4xxx_write(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @snd_vt1724_read_i2c(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_vt1724_write_i2c(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @proc_regs_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  %bin_buffer = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %bin_buffer) #10
  %2 = call ptr @memset(ptr %bin_buffer, i32 255, i32 36)
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buffer, align 4
  %spec1.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %5 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spec1.i, align 4
  %scr.i = getelementptr inbounds %struct.qtet_spec, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %scr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scr.i, align 4
  %call3 = call fastcc ptr @get_binary(ptr noundef nonnull %bin_buffer, i32 noundef %8)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %4, ptr noundef nonnull @.str.11, ptr noundef nonnull %bin_buffer) #10
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  %11 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spec1.i, align 4
  %mcr.i = getelementptr inbounds %struct.qtet_spec, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %mcr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mcr.i, align 4
  %call7 = call fastcc ptr @get_binary(ptr noundef nonnull %bin_buffer, i32 noundef %14)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %10, ptr noundef nonnull @.str.12, ptr noundef nonnull %bin_buffer) #10
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  %17 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %spec1.i, align 4
  %cpld.i = getelementptr inbounds %struct.qtet_spec, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpld.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpld.i, align 4
  %call11 = call fastcc ptr @get_binary(ptr noundef nonnull %bin_buffer, i32 noundef %20)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.13, ptr noundef nonnull %bin_buffer) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %bin_buffer) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal fastcc ptr @get_binary(ptr noundef returned writeonly %buffer, i32 noundef %value) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %value)
  %tobool.not = icmp sgt i32 %value, -1
  %spec.select = select i1 %tobool.not, i8 48, i8 49
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %spec.select, ptr %buffer, align 1
  %and.1 = and i32 %value, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  %.sink34 = select i1 %tobool.not.1, i8 48, i8 49
  %1 = getelementptr i8, ptr %buffer, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %.sink34, ptr %1, align 1
  %and.2 = and i32 %value, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  %.sink35 = select i1 %tobool.not.2, i8 48, i8 49
  %3 = getelementptr i8, ptr %buffer, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %.sink35, ptr %3, align 1
  %and.3 = and i32 %value, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  %.sink36 = select i1 %tobool.not.3, i8 48, i8 49
  %5 = getelementptr i8, ptr %buffer, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink36, ptr %5, align 1
  %and.4 = and i32 %value, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  %.sink37 = select i1 %tobool.not.4, i8 48, i8 49
  %7 = getelementptr i8, ptr %buffer, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink37, ptr %7, align 1
  %and.5 = and i32 %value, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  %.sink38 = select i1 %tobool.not.5, i8 48, i8 49
  %9 = getelementptr i8, ptr %buffer, i32 5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink38, ptr %9, align 1
  %and.6 = and i32 %value, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  %.sink39 = select i1 %tobool.not.6, i8 48, i8 49
  %11 = getelementptr i8, ptr %buffer, i32 6
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink39, ptr %11, align 1
  %and.7 = and i32 %value, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  %.sink40 = select i1 %tobool.not.7, i8 48, i8 49
  %13 = getelementptr i8, ptr %buffer, i32 7
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink40, ptr %13, align 1
  %arrayidx8 = getelementptr i8, ptr %buffer, i32 8
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 32, ptr %arrayidx8, align 1
  %and.142 = and i32 %value, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.142)
  %tobool.not.143 = icmp eq i32 %and.142, 0
  %spec.select.1 = select i1 %tobool.not.143, i8 48, i8 49
  %16 = getelementptr i8, ptr %buffer, i32 9
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.select.1, ptr %16, align 1
  %inc.144 = add nuw nsw i32 9, 1
  %and.1.1 = and i32 %value, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.1)
  %tobool.not.1.1 = icmp eq i32 %and.1.1, 0
  %.sink34.1 = select i1 %tobool.not.1.1, i8 48, i8 49
  %18 = getelementptr i8, ptr %buffer, i32 %inc.144
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink34.1, ptr %18, align 1
  %inc.1.1 = or i32 9, 2
  %and.2.1 = and i32 %value, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.1)
  %tobool.not.2.1 = icmp eq i32 %and.2.1, 0
  %.sink35.1 = select i1 %tobool.not.2.1, i8 48, i8 49
  %20 = getelementptr i8, ptr %buffer, i32 %inc.1.1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink35.1, ptr %20, align 1
  %inc.2.1 = add nuw nsw i32 9, 3
  %and.3.1 = and i32 %value, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.1)
  %tobool.not.3.1 = icmp eq i32 %and.3.1, 0
  %.sink36.1 = select i1 %tobool.not.3.1, i8 48, i8 49
  %22 = getelementptr i8, ptr %buffer, i32 %inc.2.1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink36.1, ptr %22, align 1
  %inc.3.1 = or i32 9, 4
  %and.4.1 = and i32 %value, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.1)
  %tobool.not.4.1 = icmp eq i32 %and.4.1, 0
  %.sink37.1 = select i1 %tobool.not.4.1, i8 48, i8 49
  %24 = getelementptr i8, ptr %buffer, i32 %inc.3.1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.sink37.1, ptr %24, align 1
  %inc.4.1 = add nuw nsw i32 9, 5
  %and.5.1 = and i32 %value, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.1)
  %tobool.not.5.1 = icmp eq i32 %and.5.1, 0
  %.sink38.1 = select i1 %tobool.not.5.1, i8 48, i8 49
  %26 = getelementptr i8, ptr %buffer, i32 %inc.4.1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.sink38.1, ptr %26, align 1
  %inc.5.1 = or i32 9, 6
  %and.6.1 = and i32 %value, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.1)
  %tobool.not.6.1 = icmp eq i32 %and.6.1, 0
  %.sink39.1 = select i1 %tobool.not.6.1, i8 48, i8 49
  %28 = getelementptr i8, ptr %buffer, i32 %inc.5.1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.sink39.1, ptr %28, align 1
  %inc.6.1 = add nuw nsw i32 9, 7
  %and.7.1 = and i32 %value, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.1)
  %tobool.not.7.1 = icmp eq i32 %and.7.1, 0
  %.sink40.1 = select i1 %tobool.not.7.1, i8 48, i8 49
  %30 = getelementptr i8, ptr %buffer, i32 %inc.6.1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.sink40.1, ptr %30, align 1
  %inc.7.1 = add nuw nsw i32 9, 8
  %arrayidx8.1 = getelementptr i8, ptr %buffer, i32 %inc.7.1
  %32 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 32, ptr %arrayidx8.1, align 1
  %inc9.1 = add nuw nsw i32 9, 9
  %and.246 = and i32 %value, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.246)
  %tobool.not.247 = icmp eq i32 %and.246, 0
  %spec.select.2 = select i1 %tobool.not.247, i8 48, i8 49
  %33 = getelementptr i8, ptr %buffer, i32 %inc9.1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %spec.select.2, ptr %33, align 1
  %inc.248 = add nsw i32 %inc9.1, 1
  %and.1.2 = and i32 %value, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.2)
  %tobool.not.1.2 = icmp eq i32 %and.1.2, 0
  %.sink34.2 = select i1 %tobool.not.1.2, i8 48, i8 49
  %35 = getelementptr i8, ptr %buffer, i32 %inc.248
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.sink34.2, ptr %35, align 1
  %inc.1.2 = add nsw i32 %inc9.1, 2
  %and.2.2 = and i32 %value, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.2)
  %tobool.not.2.2 = icmp eq i32 %and.2.2, 0
  %.sink35.2 = select i1 %tobool.not.2.2, i8 48, i8 49
  %37 = getelementptr i8, ptr %buffer, i32 %inc.1.2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %.sink35.2, ptr %37, align 1
  %inc.2.2 = add nsw i32 %inc9.1, 3
  %and.3.2 = and i32 %value, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.2)
  %tobool.not.3.2 = icmp eq i32 %and.3.2, 0
  %.sink36.2 = select i1 %tobool.not.3.2, i8 48, i8 49
  %39 = getelementptr i8, ptr %buffer, i32 %inc.2.2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %.sink36.2, ptr %39, align 1
  %inc.3.2 = add nsw i32 %inc9.1, 4
  %and.4.2 = and i32 %value, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.2)
  %tobool.not.4.2 = icmp eq i32 %and.4.2, 0
  %.sink37.2 = select i1 %tobool.not.4.2, i8 48, i8 49
  %41 = getelementptr i8, ptr %buffer, i32 %inc.3.2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %.sink37.2, ptr %41, align 1
  %inc.4.2 = add nsw i32 %inc9.1, 5
  %and.5.2 = and i32 %value, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.2)
  %tobool.not.5.2 = icmp eq i32 %and.5.2, 0
  %.sink38.2 = select i1 %tobool.not.5.2, i8 48, i8 49
  %43 = getelementptr i8, ptr %buffer, i32 %inc.4.2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %.sink38.2, ptr %43, align 1
  %inc.5.2 = add nsw i32 %inc9.1, 6
  %and.6.2 = and i32 %value, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.2)
  %tobool.not.6.2 = icmp eq i32 %and.6.2, 0
  %.sink39.2 = select i1 %tobool.not.6.2, i8 48, i8 49
  %45 = getelementptr i8, ptr %buffer, i32 %inc.5.2
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %.sink39.2, ptr %45, align 1
  %inc.6.2 = add nsw i32 %inc9.1, 7
  %and.7.2 = and i32 %value, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.2)
  %tobool.not.7.2 = icmp eq i32 %and.7.2, 0
  %.sink40.2 = select i1 %tobool.not.7.2, i8 48, i8 49
  %47 = getelementptr i8, ptr %buffer, i32 %inc.6.2
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %.sink40.2, ptr %47, align 1
  %inc.7.2 = add nsw i32 %inc9.1, 8
  %arrayidx8.2 = getelementptr i8, ptr %buffer, i32 %inc.7.2
  %49 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 32, ptr %arrayidx8.2, align 1
  %inc9.2 = add nsw i32 %inc9.1, 9
  %and.350 = and i32 %value, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.350)
  %tobool.not.351 = icmp eq i32 %and.350, 0
  %spec.select.3 = select i1 %tobool.not.351, i8 48, i8 49
  %50 = getelementptr i8, ptr %buffer, i32 %inc9.2
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %spec.select.3, ptr %50, align 1
  %inc.352 = add nsw i32 %inc9.2, 1
  %and.1.3 = and i32 %value, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.3)
  %tobool.not.1.3 = icmp eq i32 %and.1.3, 0
  %.sink34.3 = select i1 %tobool.not.1.3, i8 48, i8 49
  %52 = getelementptr i8, ptr %buffer, i32 %inc.352
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %.sink34.3, ptr %52, align 1
  %inc.1.3 = add nsw i32 %inc9.2, 2
  %and.2.3 = and i32 %value, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.3)
  %tobool.not.2.3 = icmp eq i32 %and.2.3, 0
  %.sink35.3 = select i1 %tobool.not.2.3, i8 48, i8 49
  %54 = getelementptr i8, ptr %buffer, i32 %inc.1.3
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %.sink35.3, ptr %54, align 1
  %inc.2.3 = add nsw i32 %inc9.2, 3
  %and.3.3 = and i32 %value, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.3)
  %tobool.not.3.3 = icmp eq i32 %and.3.3, 0
  %.sink36.3 = select i1 %tobool.not.3.3, i8 48, i8 49
  %56 = getelementptr i8, ptr %buffer, i32 %inc.2.3
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %.sink36.3, ptr %56, align 1
  %inc.3.3 = add nsw i32 %inc9.2, 4
  %and.4.3 = and i32 %value, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.3)
  %tobool.not.4.3 = icmp eq i32 %and.4.3, 0
  %.sink37.3 = select i1 %tobool.not.4.3, i8 48, i8 49
  %58 = getelementptr i8, ptr %buffer, i32 %inc.3.3
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %.sink37.3, ptr %58, align 1
  %inc.4.3 = add nsw i32 %inc9.2, 5
  %and.5.3 = and i32 %value, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.3)
  %tobool.not.5.3 = icmp eq i32 %and.5.3, 0
  %.sink38.3 = select i1 %tobool.not.5.3, i8 48, i8 49
  %60 = getelementptr i8, ptr %buffer, i32 %inc.4.3
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %.sink38.3, ptr %60, align 1
  %inc.5.3 = add nsw i32 %inc9.2, 6
  %and.6.3 = and i32 %value, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.3)
  %tobool.not.6.3 = icmp eq i32 %and.6.3, 0
  %.sink39.3 = select i1 %tobool.not.6.3, i8 48, i8 49
  %62 = getelementptr i8, ptr %buffer, i32 %inc.5.3
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %.sink39.3, ptr %62, align 1
  %inc.6.3 = add nsw i32 %inc9.2, 7
  %and.7.3 = and i32 %value, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.3)
  %tobool.not.7.3 = icmp eq i32 %and.7.3, 0
  %.sink40.3 = select i1 %tobool.not.7.3, i8 48, i8 49
  %64 = getelementptr i8, ptr %buffer, i32 %inc.6.3
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %.sink40.3, ptr %64, align 1
  %inc.7.3 = add nsw i32 %inc9.2, 8
  %arrayidx14 = getelementptr i8, ptr %buffer, i32 %inc.7.3
  %66 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %arrayidx14, align 1
  ret ptr %buffer
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_scr(ptr nocapture noundef readonly %ice) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %scr = getelementptr inbounds %struct.qtet_spec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %scr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scr, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_mcr(ptr nocapture noundef readonly %ice) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %mcr = getelementptr inbounds %struct.qtet_spec, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mcr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mcr, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ice1712_akm4xxx_build_controls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_make_virtual_master(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ak4113_build(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qtet_mute_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1.i, align 4
  %scr.i = getelementptr inbounds %struct.qtet_spec, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %scr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scr.i, align 4
  %and = lshr i32 %5, 2
  %and.lobit = and i32 %and, 1
  %6 = xor i32 %and.lobit, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtet_mute_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1.i, align 4
  %scr.i = getelementptr inbounds %struct.qtet_spec, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %scr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scr.i, align 4
  %and = and i32 %5, 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %. = select i1 %tobool.not, i32 4, i32 0
  %.12 = select i1 %tobool.not, i8 -128, i8 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %.)
  %cmp.not = icmp eq i32 %and, %.
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then1:                                         ; preds = %entry
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %8 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %akm, align 4
  %and3 = and i32 %5, -5
  %or = or i32 %., %and3
  %gpio_mutex.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i.i, i32 noundef 0) #10
  %set_dir.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %10 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef 65535) #10
  %set_mask.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %12 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_mask.i.i, align 4
  tail call void %13(ptr noundef %1, i32 noundef -65536) #10
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 8
  %14 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %15(ptr noundef %1) #10
  %and.i.i = and i32 %call.i.i, -256
  %or.i.i = or i32 %and.i.i, %or
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 7
  %16 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_data.i.i, align 4
  tail call void %17(ptr noundef %1, i32 noundef %or.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 21474800) #10
  %and4.i.i = and i32 %or.i.i, -4097
  %19 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_data.i.i, align 4
  tail call void %20(ptr noundef %1, i32 noundef %and4.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 21474800) #10
  %and8.i.i = and i32 %or.i.i, -12289
  %22 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_data.i.i, align 4
  tail call void %23(ptr noundef %1, i32 noundef %and8.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 21474800) #10
  %or11.i.i = or i32 %and4.i.i, 8192
  %25 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_data.i.i, align 4
  tail call void %26(ptr noundef %1, i32 noundef %or11.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 21474800) #10
  %or14.i.i = or i32 %and4.i.i, 8447
  %28 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_data.i.i, align 4
  tail call void %29(ptr noundef %1, i32 noundef %or14.i.i) #10
  %30 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_mask.i.i, align 4
  tail call void %31(ptr noundef %1, i32 noundef 16777215) #10
  %32 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %33(ptr noundef %1, i32 noundef 65280) #10
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i.i) #10
  %34 = ptrtoint ptr %scr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or, ptr %scr.i, align 4
  %num_chips.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %9, i32 0, i32 12
  %35 = ptrtoint ptr %num_chips.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_chips.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp16.not.i = icmp eq i32 %36, 0
  br i1 %cmp16.not.i, label %if.then1.cleanup_crit_edge, label %if.then1.for.body.i_crit_edge

if.then1.for.body.i_crit_edge:                    ; preds = %if.then1
  br label %for.body.i

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then1.for.body.i_crit_edge
  %chip.017.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then1.for.body.i_crit_edge ]
  %mul.i = shl i32 %chip.017.i, 4
  %add.i = or i32 %mul.i, 3
  %arrayidx.i = getelementptr %struct.snd_akm4xxx, ptr %9, i32 0, i32 3, i32 %add.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i, align 1
  %and.i = and i8 %38, 127
  %or15.i = or i8 %and.i, %.12
  tail call void @snd_akm4xxx_write(ptr noundef %9, i32 noundef %chip.017.i, i8 noundef zeroext 3, i8 noundef zeroext %or15.i) #10
  %inc.i = add nuw i32 %chip.017.i, 1
  %39 = ptrtoint ptr %num_chips.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_chips.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %40
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then1.cleanup_crit_edge ], [ 1, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qtet_php_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1.i, align 4
  %scr.i = getelementptr inbounds %struct.qtet_spec, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %scr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scr.i, align 4
  %and = lshr i32 %5, 1
  %and.lobit = and i32 %and, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.lobit, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtet_php_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1.i, align 4
  %scr.i = getelementptr inbounds %struct.qtet_spec, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %scr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scr.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp ne i32 %7, 0
  %neg = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg)
  %tobool1.not.not = icmp eq i32 %neg, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not.not, i1 false
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %5, 2
  %gpio_mutex.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i.i, i32 noundef 0) #10
  %set_dir.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %8 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %9(ptr noundef %1, i32 noundef 65535) #10
  %set_mask.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %10 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_mask.i.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef -65536) #10
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 8
  %12 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %13(ptr noundef %1) #10
  %and.i.i = and i32 %call.i.i, -256
  %or.i.i = or i32 %and.i.i, %or
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 7
  %14 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_data.i.i, align 4
  tail call void %15(ptr noundef %1, i32 noundef %or.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 21474800) #10
  %and4.i.i = and i32 %or.i.i, -4097
  %17 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_data.i.i, align 4
  tail call void %18(ptr noundef %1, i32 noundef %and4.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 21474800) #10
  %and8.i.i = and i32 %or.i.i, -12289
  %20 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_data.i.i, align 4
  tail call void %21(ptr noundef %1, i32 noundef %and8.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 21474800) #10
  %or11.i.i = or i32 %and4.i.i, 8192
  %23 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_data.i.i, align 4
  tail call void %24(ptr noundef %1, i32 noundef %or11.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 21474800) #10
  %or14.i.i = or i32 %and4.i.i, 8447
  %26 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_data.i.i, align 4
  tail call void %27(ptr noundef %1, i32 noundef %or14.i.i) #10
  %28 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_mask.i.i, align 4
  tail call void %29(ptr noundef %1, i32 noundef 16777215) #10
  %30 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %31(ptr noundef %1, i32 noundef 65280) #10
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i.i) #10
  %32 = ptrtoint ptr %scr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or, ptr %scr.i, align 4
  %and2 = and i32 %or, -9
  %33 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spec1.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i.i, i32 noundef 0) #10
  %35 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %36(ptr noundef %1, i32 noundef 65535) #10
  %37 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_mask.i.i, align 4
  tail call void %38(ptr noundef %1, i32 noundef -65536) #10
  %39 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i40 = tail call i32 %40(ptr noundef %1) #10
  %and.i.i41 = and i32 %call.i.i40, -256
  %or.i.i42 = or i32 %and.i.i41, %and2
  %41 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_data.i.i, align 4
  tail call void %42(ptr noundef %1, i32 noundef %or.i.i42) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 21474800) #10
  %and4.i.i44 = and i32 %or.i.i42, -4105
  %44 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_data.i.i, align 4
  tail call void %45(ptr noundef %1, i32 noundef %and4.i.i44) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 21474800) #10
  %and8.i.i45 = and i32 %or.i.i42, -12297
  br label %if.end12.sink.split

if.else:                                          ; preds = %entry
  %or.cond32 = select i1 %tobool.not, i1 true, i1 %tobool1.not.not
  br i1 %or.cond32, label %if.else.if.end12_crit_edge, label %if.then9

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %and10 = and i32 %5, -3
  %gpio_mutex.i.i50 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i.i50, i32 noundef 0) #10
  %set_dir.i.i51 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %47 = ptrtoint ptr %set_dir.i.i51 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_dir.i.i51, align 4
  tail call void %48(ptr noundef %1, i32 noundef 65535) #10
  %set_mask.i.i52 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %49 = ptrtoint ptr %set_mask.i.i52 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %set_mask.i.i52, align 4
  tail call void %50(ptr noundef %1, i32 noundef -65536) #10
  %get_data.i.i53 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 8
  %51 = ptrtoint ptr %get_data.i.i53 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %get_data.i.i53, align 4
  %call.i.i54 = tail call i32 %52(ptr noundef %1) #10
  %and.i.i55 = and i32 %call.i.i54, -256
  %or.i.i56 = or i32 %and.i.i55, %and10
  %set_data.i.i57 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 7
  %53 = ptrtoint ptr %set_data.i.i57 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set_data.i.i57, align 4
  tail call void %54(ptr noundef %1, i32 noundef %or.i.i56) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 21474800) #10
  %and4.i.i58 = and i32 %or.i.i56, -4099
  %56 = ptrtoint ptr %set_data.i.i57 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %set_data.i.i57, align 4
  tail call void %57(ptr noundef %1, i32 noundef %and4.i.i58) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 21474800) #10
  %and8.i.i59 = and i32 %or.i.i56, -12291
  %59 = ptrtoint ptr %set_data.i.i57 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %set_data.i.i57, align 4
  tail call void %60(ptr noundef %1, i32 noundef %and8.i.i59) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 21474800) #10
  %or11.i.i60 = or i32 %and4.i.i58, 8192
  %62 = ptrtoint ptr %set_data.i.i57 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %set_data.i.i57, align 4
  tail call void %63(ptr noundef %1, i32 noundef %or11.i.i60) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 21474800) #10
  %or14.i.i61 = or i32 %and4.i.i58, 8447
  %65 = ptrtoint ptr %set_data.i.i57 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %set_data.i.i57, align 4
  tail call void %66(ptr noundef %1, i32 noundef %or14.i.i61) #10
  %67 = ptrtoint ptr %set_mask.i.i52 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %set_mask.i.i52, align 4
  tail call void %68(ptr noundef %1, i32 noundef 16777215) #10
  %69 = ptrtoint ptr %set_dir.i.i51 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %set_dir.i.i51, align 4
  tail call void %70(ptr noundef %1, i32 noundef 65280) #10
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i.i50) #10
  %71 = ptrtoint ptr %scr.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and10, ptr %scr.i, align 4
  %or11 = or i32 %and10, 8
  %72 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %spec1.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i.i50, i32 noundef 0) #10
  %74 = ptrtoint ptr %set_dir.i.i51 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %set_dir.i.i51, align 4
  tail call void %75(ptr noundef %1, i32 noundef 65535) #10
  %76 = ptrtoint ptr %set_mask.i.i52 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %set_mask.i.i52, align 4
  tail call void %77(ptr noundef %1, i32 noundef -65536) #10
  %78 = ptrtoint ptr %get_data.i.i53 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %get_data.i.i53, align 4
  %call.i.i68 = tail call i32 %79(ptr noundef %1) #10
  %and.i.i69 = and i32 %call.i.i68, -256
  %or.i.i70 = or i32 %and.i.i69, %or11
  %80 = ptrtoint ptr %set_data.i.i57 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %set_data.i.i57, align 4
  tail call void %81(ptr noundef %1, i32 noundef %or.i.i70) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 21474800) #10
  %and4.i.i72 = and i32 %or.i.i70, -4099
  %83 = ptrtoint ptr %set_data.i.i57 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %set_data.i.i57, align 4
  tail call void %84(ptr noundef %1, i32 noundef %and4.i.i72) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 21474800) #10
  %and8.i.i73 = and i32 %or.i.i70, -12291
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.then9, %if.then
  %set_data.i.i57.sink86 = phi ptr [ %set_data.i.i57, %if.then9 ], [ %set_data.i.i, %if.then ]
  %and8.i.i73.sink = phi i32 [ %and8.i.i73, %if.then9 ], [ %and8.i.i45, %if.then ]
  %and4.i.i72.sink83 = phi i32 [ %and4.i.i72, %if.then9 ], [ %and4.i.i44, %if.then ]
  %set_mask.i.i52.sink = phi ptr [ %set_mask.i.i52, %if.then9 ], [ %set_mask.i.i, %if.then ]
  %set_dir.i.i51.sink = phi ptr [ %set_dir.i.i51, %if.then9 ], [ %set_dir.i.i, %if.then ]
  %gpio_mutex.i.i50.sink = phi ptr [ %gpio_mutex.i.i50, %if.then9 ], [ %gpio_mutex.i.i, %if.then ]
  %.sink = phi ptr [ %73, %if.then9 ], [ %34, %if.then ]
  %or11.sink = phi i32 [ %or11, %if.then9 ], [ %and2, %if.then ]
  %86 = ptrtoint ptr %set_data.i.i57.sink86 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %set_data.i.i57.sink86, align 4
  tail call void %87(ptr noundef %1, i32 noundef %and8.i.i73.sink) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 21474800) #10
  %or11.i.i74 = or i32 %and4.i.i72.sink83, 8192
  %89 = ptrtoint ptr %set_data.i.i57.sink86 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %set_data.i.i57.sink86, align 4
  tail call void %90(ptr noundef %1, i32 noundef %or11.i.i74) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 21474800) #10
  %or14.i.i75 = or i32 %and4.i.i72.sink83, 8447
  %92 = ptrtoint ptr %set_data.i.i57.sink86 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %set_data.i.i57.sink86, align 4
  tail call void %93(ptr noundef %1, i32 noundef %or14.i.i75) #10
  %94 = ptrtoint ptr %set_mask.i.i52.sink to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %set_mask.i.i52.sink, align 4
  tail call void %95(ptr noundef %1, i32 noundef 16777215) #10
  %96 = ptrtoint ptr %set_dir.i.i51.sink to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %set_dir.i.i51.sink, align 4
  tail call void %97(ptr noundef %1, i32 noundef 65280) #10
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i.i50.sink) #10
  %scr.i76 = getelementptr inbounds %struct.qtet_spec, ptr %.sink, i32 0, i32 1
  %98 = ptrtoint ptr %scr.i76 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %or11.sink, ptr %scr.i76, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %if.else.if.end12_crit_edge
  %new.0 = phi i32 [ %5, %if.else.if.end12_crit_edge ], [ %or11.sink, %if.end12.sink.split ]
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %new.0)
  %cmp.not = icmp ne i32 %5, %new.0
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtet_ain12_enum_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @qtet_ain12_enum_info.texts) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtet_ain12_sw_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1.i, align 4
  %scr.i = getelementptr inbounds %struct.qtet_spec, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %scr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scr.i, align 4
  %and = and i32 %5, 48
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %and, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 16, label %sw.bb1
    i32 48, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 557, i32 noundef 9, ptr noundef nonnull @.str.3) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %result.0 = phi i32 [ 0, %do.end ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ %and, %entry.sw.epilog_crit_edge ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %result.0, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtet_ain12_sw_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1.i, align 4
  %scr.i = getelementptr inbounds %struct.qtet_spec, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %scr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scr.i, align 4
  %and = and i32 %5, 48
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  %.op = shl i32 %7, 4
  %shl = select i1 %cmp, i32 48, i32 %.op
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %and)
  %cmp1.not = icmp eq i32 %shl, %and
  br i1 %cmp1.not, label %entry.cleanup_crit_edge, label %if.then2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %entry
  %8 = zext i32 %shl to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %shl, label %do.end [
    i32 0, label %sw.bb
    i32 16, label %sw.bb5
    i32 48, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %and3 = and i32 %5, -49
  %gpio_mutex.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i.i, i32 noundef 0) #10
  %set_dir.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %9 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %10(ptr noundef %1, i32 noundef 65535) #10
  %set_mask.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %11 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_mask.i.i, align 4
  tail call void %12(ptr noundef %1, i32 noundef -65536) #10
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 8
  %13 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %14(ptr noundef %1) #10
  %and.i.i = and i32 %call.i.i, -256
  %or.i.i = or i32 %and.i.i, %and3
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 7
  %15 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_data.i.i, align 4
  tail call void %16(ptr noundef %1, i32 noundef %or.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 21474800) #10
  %and4.i.i = and i32 %or.i.i, -4145
  %18 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_data.i.i, align 4
  tail call void %19(ptr noundef %1, i32 noundef %and4.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 21474800) #10
  %and8.i.i = and i32 %or.i.i, -12337
  %21 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_data.i.i, align 4
  tail call void %22(ptr noundef %1, i32 noundef %and8.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 21474800) #10
  %or11.i.i = or i32 %and4.i.i, 8192
  %24 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_data.i.i, align 4
  tail call void %25(ptr noundef %1, i32 noundef %or11.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 21474800) #10
  %or14.i.i = or i32 %and4.i.i, 8447
  %27 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_data.i.i, align 4
  tail call void %28(ptr noundef %1, i32 noundef %or14.i.i) #10
  %29 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_mask.i.i, align 4
  tail call void %30(ptr noundef %1, i32 noundef 16777215) #10
  %31 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %32(ptr noundef %1, i32 noundef 65280) #10
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i.i) #10
  %33 = ptrtoint ptr %scr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and3, ptr %scr.i, align 4
  %and4 = and i32 %5, -50
  %34 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %spec1.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i.i, i32 noundef 0) #10
  %36 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %37(ptr noundef %1, i32 noundef 65535) #10
  %38 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %set_mask.i.i, align 4
  tail call void %39(ptr noundef %1, i32 noundef -65536) #10
  %40 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i61 = tail call i32 %41(ptr noundef %1) #10
  %and.i.i62 = and i32 %call.i.i61, -256
  %or.i.i63 = or i32 %and.i.i62, %and4
  %42 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_data.i.i, align 4
  tail call void %43(ptr noundef %1, i32 noundef %or.i.i63) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 21474800) #10
  %and4.i.i65 = and i32 %or.i.i63, -4146
  %45 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %set_data.i.i, align 4
  tail call void %46(ptr noundef %1, i32 noundef %and4.i.i65) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 21474800) #10
  %and8.i.i66 = and i32 %or.i.i63, -12338
  %48 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %set_data.i.i, align 4
  tail call void %49(ptr noundef %1, i32 noundef %and8.i.i66) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 21474800) #10
  %or11.i.i67 = or i32 %and4.i.i65, 8192
  %51 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_data.i.i, align 4
  tail call void %52(ptr noundef %1, i32 noundef %or11.i.i67) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 21474800) #10
  %or14.i.i68 = or i32 %and4.i.i65, 8447
  %54 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %set_data.i.i, align 4
  tail call void %55(ptr noundef %1, i32 noundef %or14.i.i68) #10
  %56 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %set_mask.i.i, align 4
  tail call void %57(ptr noundef %1, i32 noundef 16777215) #10
  %58 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %59(ptr noundef %1, i32 noundef 65280) #10
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i.i) #10
  %scr.i69 = getelementptr inbounds %struct.qtet_spec, ptr %35, i32 0, i32 1
  %60 = ptrtoint ptr %scr.i69 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and4, ptr %scr.i69, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %5, 1
  %gpio_mutex.i.i71 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i.i71, i32 noundef 0) #10
  %set_dir.i.i72 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %61 = ptrtoint ptr %set_dir.i.i72 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_dir.i.i72, align 4
  tail call void %62(ptr noundef %1, i32 noundef 65535) #10
  %set_mask.i.i73 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %63 = ptrtoint ptr %set_mask.i.i73 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %set_mask.i.i73, align 4
  tail call void %64(ptr noundef %1, i32 noundef -65536) #10
  %get_data.i.i74 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 8
  %65 = ptrtoint ptr %get_data.i.i74 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %get_data.i.i74, align 4
  %call.i.i75 = tail call i32 %66(ptr noundef %1) #10
  %and.i.i76 = and i32 %call.i.i75, -256
  %or.i.i77 = or i32 %and.i.i76, %or
  %set_data.i.i78 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 7
  %67 = ptrtoint ptr %set_data.i.i78 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %set_data.i.i78, align 4
  tail call void %68(ptr noundef %1, i32 noundef %or.i.i77) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 21474800) #10
  %and4.i.i79 = and i32 %or.i.i77, -4097
  %70 = ptrtoint ptr %set_data.i.i78 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %set_data.i.i78, align 4
  tail call void %71(ptr noundef %1, i32 noundef %and4.i.i79) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 21474800) #10
  %and8.i.i80 = and i32 %or.i.i77, -12289
  %73 = ptrtoint ptr %set_data.i.i78 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %set_data.i.i78, align 4
  tail call void %74(ptr noundef %1, i32 noundef %and8.i.i80) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 21474800) #10
  %or11.i.i81 = or i32 %and4.i.i79, 8192
  %76 = ptrtoint ptr %set_data.i.i78 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %set_data.i.i78, align 4
  tail call void %77(ptr noundef %1, i32 noundef %or11.i.i81) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 21474800) #10
  %or14.i.i82 = or i32 %and4.i.i79, 8447
  %79 = ptrtoint ptr %set_data.i.i78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %set_data.i.i78, align 4
  tail call void %80(ptr noundef %1, i32 noundef %or14.i.i82) #10
  %81 = ptrtoint ptr %set_mask.i.i73 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %set_mask.i.i73, align 4
  tail call void %82(ptr noundef %1, i32 noundef 16777215) #10
  %83 = ptrtoint ptr %set_dir.i.i72 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %set_dir.i.i72, align 4
  tail call void %84(ptr noundef %1, i32 noundef 65280) #10
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i.i71) #10
  %85 = ptrtoint ptr %scr.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or, ptr %scr.i, align 4
  %and6 = and i32 %or, -49
  %or7 = or i32 %and6, 16
  %86 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %spec1.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i.i71, i32 noundef 0) #10
  %88 = ptrtoint ptr %set_dir.i.i72 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %set_dir.i.i72, align 4
  tail call void %89(ptr noundef %1, i32 noundef 65535) #10
  %90 = ptrtoint ptr %set_mask.i.i73 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %set_mask.i.i73, align 4
  tail call void %91(ptr noundef %1, i32 noundef -65536) #10
  %92 = ptrtoint ptr %get_data.i.i74 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %get_data.i.i74, align 4
  %call.i.i89 = tail call i32 %93(ptr noundef %1) #10
  %and.i.i90 = and i32 %call.i.i89, -256
  %or.i.i91 = or i32 %and.i.i90, %or7
  %94 = ptrtoint ptr %set_data.i.i78 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %set_data.i.i78, align 4
  tail call void %95(ptr noundef %1, i32 noundef %or.i.i91) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 21474800) #10
  %and4.i.i93 = and i32 %or.i.i91, -4129
  %97 = ptrtoint ptr %set_data.i.i78 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %set_data.i.i78, align 4
  tail call void %98(ptr noundef %1, i32 noundef %and4.i.i93) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %99(i32 noundef 21474800) #10
  %and8.i.i94 = and i32 %or.i.i91, -12321
  %100 = ptrtoint ptr %set_data.i.i78 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %set_data.i.i78, align 4
  tail call void %101(ptr noundef %1, i32 noundef %and8.i.i94) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 21474800) #10
  %or11.i.i95 = or i32 %and4.i.i93, 8192
  %103 = ptrtoint ptr %set_data.i.i78 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %set_data.i.i78, align 4
  tail call void %104(ptr noundef %1, i32 noundef %or11.i.i95) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 21474800) #10
  %or14.i.i96 = or i32 %and4.i.i93, 8447
  %106 = ptrtoint ptr %set_data.i.i78 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %set_data.i.i78, align 4
  tail call void %107(ptr noundef %1, i32 noundef %or14.i.i96) #10
  %108 = ptrtoint ptr %set_mask.i.i73 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %set_mask.i.i73, align 4
  tail call void %109(ptr noundef %1, i32 noundef 16777215) #10
  %110 = ptrtoint ptr %set_dir.i.i72 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %set_dir.i.i72, align 4
  tail call void %111(ptr noundef %1, i32 noundef 65280) #10
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i.i71) #10
  %scr.i97 = getelementptr inbounds %struct.qtet_spec, ptr %87, i32 0, i32 1
  %112 = ptrtoint ptr %scr.i97 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %or7, ptr %scr.i97, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %or9 = or i32 %5, 1
  %gpio_mutex.i.i99 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i.i99, i32 noundef 0) #10
  %set_dir.i.i100 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %113 = ptrtoint ptr %set_dir.i.i100 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %set_dir.i.i100, align 4
  tail call void %114(ptr noundef %1, i32 noundef 65535) #10
  %set_mask.i.i101 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %115 = ptrtoint ptr %set_mask.i.i101 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %set_mask.i.i101, align 4
  tail call void %116(ptr noundef %1, i32 noundef -65536) #10
  %get_data.i.i102 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 8
  %117 = ptrtoint ptr %get_data.i.i102 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %get_data.i.i102, align 4
  %call.i.i103 = tail call i32 %118(ptr noundef %1) #10
  %and.i.i104 = and i32 %call.i.i103, -256
  %or.i.i105 = or i32 %and.i.i104, %or9
  %set_data.i.i106 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 7
  %119 = ptrtoint ptr %set_data.i.i106 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %set_data.i.i106, align 4
  tail call void %120(ptr noundef %1, i32 noundef %or.i.i105) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %121(i32 noundef 21474800) #10
  %and4.i.i107 = and i32 %or.i.i105, -4097
  %122 = ptrtoint ptr %set_data.i.i106 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %set_data.i.i106, align 4
  tail call void %123(ptr noundef %1, i32 noundef %and4.i.i107) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %124(i32 noundef 21474800) #10
  %and8.i.i108 = and i32 %or.i.i105, -12289
  %125 = ptrtoint ptr %set_data.i.i106 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %set_data.i.i106, align 4
  tail call void %126(ptr noundef %1, i32 noundef %and8.i.i108) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %127(i32 noundef 21474800) #10
  %or11.i.i109 = or i32 %and4.i.i107, 8192
  %128 = ptrtoint ptr %set_data.i.i106 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %set_data.i.i106, align 4
  tail call void %129(ptr noundef %1, i32 noundef %or11.i.i109) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %130(i32 noundef 21474800) #10
  %or14.i.i110 = or i32 %and4.i.i107, 8447
  %131 = ptrtoint ptr %set_data.i.i106 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %set_data.i.i106, align 4
  tail call void %132(ptr noundef %1, i32 noundef %or14.i.i110) #10
  %133 = ptrtoint ptr %set_mask.i.i101 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %set_mask.i.i101, align 4
  tail call void %134(ptr noundef %1, i32 noundef 16777215) #10
  %135 = ptrtoint ptr %set_dir.i.i100 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %set_dir.i.i100, align 4
  tail call void %136(ptr noundef %1, i32 noundef 65280) #10
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i.i99) #10
  %137 = ptrtoint ptr %scr.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %or9, ptr %scr.i, align 4
  %or10 = or i32 %5, 49
  %138 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %spec1.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i.i99, i32 noundef 0) #10
  %140 = ptrtoint ptr %set_dir.i.i100 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %set_dir.i.i100, align 4
  tail call void %141(ptr noundef %1, i32 noundef 65535) #10
  %142 = ptrtoint ptr %set_mask.i.i101 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %set_mask.i.i101, align 4
  tail call void %143(ptr noundef %1, i32 noundef -65536) #10
  %144 = ptrtoint ptr %get_data.i.i102 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %get_data.i.i102, align 4
  %call.i.i117 = tail call i32 %145(ptr noundef %1) #10
  %and.i.i118 = and i32 %call.i.i117, -256
  %or.i.i119 = or i32 %and.i.i118, %or10
  %146 = ptrtoint ptr %set_data.i.i106 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %set_data.i.i106, align 4
  tail call void %147(ptr noundef %1, i32 noundef %or.i.i119) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %148(i32 noundef 21474800) #10
  %and4.i.i121 = and i32 %or.i.i119, -4097
  %149 = ptrtoint ptr %set_data.i.i106 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %set_data.i.i106, align 4
  tail call void %150(ptr noundef %1, i32 noundef %and4.i.i121) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %151(i32 noundef 21474800) #10
  %and8.i.i122 = and i32 %or.i.i119, -12289
  %152 = ptrtoint ptr %set_data.i.i106 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %set_data.i.i106, align 4
  tail call void %153(ptr noundef %1, i32 noundef %and8.i.i122) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %154(i32 noundef 21474800) #10
  %or11.i.i123 = or i32 %and4.i.i121, 8192
  %155 = ptrtoint ptr %set_data.i.i106 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %set_data.i.i106, align 4
  tail call void %156(ptr noundef %1, i32 noundef %or11.i.i123) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %157(i32 noundef 21474800) #10
  %or14.i.i124 = or i32 %and4.i.i121, 8447
  %158 = ptrtoint ptr %set_data.i.i106 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %set_data.i.i106, align 4
  tail call void %159(ptr noundef %1, i32 noundef %or14.i.i124) #10
  %160 = ptrtoint ptr %set_mask.i.i101 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %set_mask.i.i101, align 4
  tail call void %161(ptr noundef %1, i32 noundef 16777215) #10
  %162 = ptrtoint ptr %set_dir.i.i100 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %set_dir.i.i100, align 4
  tail call void %163(ptr noundef %1, i32 noundef 65280) #10
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i.i99) #10
  %scr.i125 = getelementptr inbounds %struct.qtet_spec, ptr %139, i32 0, i32 1
  %164 = ptrtoint ptr %scr.i125 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %or10, ptr %scr.i125, align 4
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 600, i32 noundef 9, ptr noundef nonnull @.str.3) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb8, %sw.bb5, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %sw.bb8 ], [ 1, %sw.bb5 ], [ 1, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtet_enum_info(ptr nocapture noundef readonly %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  %private = alloca %struct.qtet_kcontrol_private, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %private) #10
  %0 = getelementptr inbounds %struct.qtet_kcontrol_private, ptr %private, i32 0, i32 3
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %1 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %private_value, align 4
  %arrayidx = getelementptr [10 x %struct.qtet_kcontrol_private], ptr @qtet_privates, i32 0, i32 %2
  %3 = call ptr @memcpy(ptr %private, ptr %arrayidx, i32 20)
  %call = call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef %0) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %private) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtet_sw_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %arrayidx = getelementptr [10 x %struct.qtet_kcontrol_private], ptr @qtet_privates, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %private.sroa.0.0.copyload = load i32, ptr %arrayidx, align 4
  %private.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %3 = ptrtoint ptr %private.sroa.6.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %private.sroa.6.0.copyload = load ptr, ptr %private.sroa.6.0.arrayidx.sroa_idx, align 4
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %call = tail call i32 %private.sroa.6.0.copyload(ptr noundef %5) #10
  %and = and i32 %call, %private.sroa.0.0.copyload
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %cond = zext i1 %tobool.not to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtet_sw_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %arrayidx = getelementptr [10 x %struct.qtet_kcontrol_private], ptr @qtet_privates, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %private.sroa.0.0.copyload = load i32, ptr %arrayidx, align 4
  %private.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %3 = ptrtoint ptr %private.sroa.6.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %private.sroa.6.0.copyload = load ptr, ptr %private.sroa.6.0.arrayidx.sroa_idx, align 4
  %private.sroa.8.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %4 = ptrtoint ptr %private.sroa.8.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %private.sroa.8.0.copyload = load ptr, ptr %private.sroa.8.0.arrayidx.sroa_idx, align 4
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 4
  %call = tail call i32 %private.sroa.8.0.copyload(ptr noundef %6) #10
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %or = or i32 %call, %private.sroa.0.0.copyload
  %neg = xor i32 %private.sroa.0.0.copyload, -1
  %and = and i32 %call, %neg
  %new.0 = select i1 %tobool.not, i32 %and, i32 %or
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %new.0)
  %cmp.not = icmp eq i32 %call, %new.0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %private.sroa.6.0.copyload(ptr noundef %6, i32 noundef %new.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_find_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_ctl_add_follower(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !88, !89, !91, !92, !94, !96, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/ice1712/quartet.c", i32 1080, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ice1712/quartet.c", i32 1081, i32 12}
!4 = !{ptr @snd_vt1724_qtet_cards, !5, !"snd_vt1724_qtet_cards", i1 false, i1 false}
!5 = !{!"../sound/pci/ice1712/quartet.c", i32 1077, i32 30}
!6 = !{ptr @qtet_init.ak4113_init_vals, !7, !"ak4113_init_vals", i1 false, i1 false}
!7 = !{!"../sound/pci/ice1712/quartet.c", i32 970, i32 29}
!8 = !{ptr @qtet_rates_info, !9, !"qtet_rates_info", i1 false, i1 false}
!9 = !{!"../sound/pci/ice1712/quartet.c", i32 230, i32 48}
!10 = !{ptr @qtet_rates, !11, !"qtet_rates", i1 false, i1 false}
!11 = !{!"../sound/pci/ice1712/quartet.c", i32 220, i32 27}
!12 = !{ptr @cks_vals, !13, !"cks_vals", i1 false, i1 false}
!13 = !{!"../sound/pci/ice1712/quartet.c", i32 225, i32 27}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/ice1712/quartet.c", i32 887, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/pci/ice1712/quartet.c", i32 51, i32 49}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/pci/ice1712/quartet.c", i32 51, i32 62}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/pci/ice1712/quartet.c", i32 52, i32 2}
!23 = !{ptr @ext_clock_names, !24, !"ext_clock_names", i1 false, i1 false}
!24 = !{!"../sound/pci/ice1712/quartet.c", i32 51, i32 27}
!25 = !{ptr @akm_qtet_dac, !26, !"akm_qtet_dac", i1 false, i1 false}
!26 = !{!"../sound/pci/ice1712/quartet.c", i32 375, i32 33}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/pci/ice1712/quartet.c", i32 366, i32 2}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/pci/ice1712/quartet.c", i32 367, i32 2}
!31 = !{ptr @qtet_dac, !32, !"qtet_dac", i1 false, i1 false}
!32 = !{!"../sound/pci/ice1712/quartet.c", i32 365, i32 45}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/pci/ice1712/quartet.c", i32 371, i32 2}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/pci/ice1712/quartet.c", i32 372, i32 2}
!37 = !{ptr @qtet_adc, !38, !"qtet_adc", i1 false, i1 false}
!38 = !{!"../sound/pci/ice1712/quartet.c", i32 370, i32 45}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/pci/ice1712/quartet.c", i32 480, i32 2}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/pci/ice1712/quartet.c", i32 482, i32 2}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/pci/ice1712/quartet.c", i32 484, i32 2}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/pci/ice1712/quartet.c", i32 805, i32 40}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/pci/ice1712/quartet.c", i32 726, i32 11}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/pci/ice1712/quartet.c", i32 734, i32 11}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/pci/ice1712/quartet.c", i32 742, i32 11}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/pci/ice1712/quartet.c", i32 748, i32 2}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/pci/ice1712/quartet.c", i32 749, i32 2}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/pci/ice1712/quartet.c", i32 750, i32 2}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/pci/ice1712/quartet.c", i32 751, i32 2}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/pci/ice1712/quartet.c", i32 752, i32 2}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/pci/ice1712/quartet.c", i32 753, i32 2}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/pci/ice1712/quartet.c", i32 754, i32 2}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/pci/ice1712/quartet.c", i32 755, i32 2}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pci/ice1712/quartet.c", i32 756, i32 2}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/pci/ice1712/quartet.c", i32 757, i32 2}
!73 = !{ptr @qtet_controls, !74, !"qtet_controls", i1 false, i1 false}
!74 = !{!"../sound/pci/ice1712/quartet.c", i32 723, i32 38}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/ice1712/quartet.c", i32 535, i32 4}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/pci/ice1712/quartet.c", i32 535, i32 19}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/pci/ice1712/quartet.c", i32 535, i32 26}
!81 = !{ptr @qtet_ain12_enum_info.texts, !82, !"texts", i1 false, i1 false}
!82 = !{!"../sound/pci/ice1712/quartet.c", i32 534, i32 28}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/pci/ice1712/quartet.c", i32 661, i32 2}
!85 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/ice1712/quartet.c", i32 663, i32 2}
!88 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/pci/ice1712/quartet.c", i32 664, i32 2}
!91 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @qtet_privates, !93, !"qtet_privates", i1 false, i1 false}
!93 = !{!"../sound/pci/ice1712/quartet.c", i32 660, i32 43}
!94 = !{ptr @qtet_master_db_scale, !95, !"qtet_master_db_scale", i1 false, i1 false}
!95 = !{!"../sound/pci/ice1712/quartet.c", i32 767, i32 1}
!96 = distinct !{null, !97, !"follower_vols", i1 false, i1 false}
!97 = !{!"../sound/pci/ice1712/quartet.c", i32 760, i32 27}
!98 = !{ptr @qtet_eeprom, !99, !"qtet_eeprom", i1 false, i1 false}
!99 = !{!"../sound/pci/ice1712/quartet.c", i32 1056, i32 28}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{i64 4233290}
!110 = !{i64 2154419829}
!111 = !{i64 2154420136}
!112 = !{i64 4232895}
!113 = !{i64 2154416827}
!114 = !{i64 2154417134}
!115 = !{!"branch_weights", i32 1, i32 2000}
