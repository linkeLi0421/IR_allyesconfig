; ModuleID = '/llk/IR_all_yes/sound/usb/mixer_quirks.c_pt.bc'
source_filename = "../sound/usb/mixer_quirks.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.79, i32 }
%union.anon.79 = type { ptr }
%struct.std_mono_table = type { i32, i32, i32, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rc_config = type { i32, i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sb_jack = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_djm_device = type { ptr, ptr, i32 }
%struct.snd_djm_ctl = type { ptr, ptr, i32, i16, i16 }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.usb_mixer_elem_info = type { %struct.usb_mixer_elem_list, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i8, i8, ptr }
%struct.usb_mixer_elem_list = type { ptr, ptr, ptr, i32, i8, ptr, ptr }
%struct.usb_mixer_interface = type { ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, ptr, ptr, i32, %struct.wait_queue_head, ptr, ptr, [6 x i8], ptr, i8, ptr, ptr, ptr }
%struct.snd_hwdep = type { ptr, %struct.list_head, i32, [32 x i8], [80 x i8], i32, i32, i32, %struct.snd_hwdep_ops, %struct.wait_queue_head, ptr, ptr, %struct.device, %struct.mutex, i32, i32, i8 }
%struct.snd_hwdep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.78, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.78 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.64, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.64 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.73, [128 x i8] }
%union.anon.73 = type { %union.anon.75 }
%union.anon.75 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.69, [64 x i8] }
%union.anon.69 = type { %struct.anon.72, [40 x i8] }
%struct.anon.72 = type { i32, i32, [64 x i8], i64, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audigy2nx\00", [22 x i8] zeroinitializer }, align 32
@snd_nativeinstruments_ta6_mixers = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.79 zeroinitializer, i32 65539 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.79 zeroinitializer, i32 65541 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.79 zeroinitializer, i32 131075 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.79 zeroinitializer, i32 131077 }], [32 x i8] zeroinitializer }, align 32
@snd_nativeinstruments_ta10_mixers = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.79 zeroinitializer, i32 65539 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.79 zeroinitializer, i32 65541 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.79 zeroinitializer, i32 65543 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.79 zeroinitializer, i32 65545 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.79 zeroinitializer, i32 131075 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.79 zeroinitializer, i32 131077 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.79 zeroinitializer, i32 131079 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.79 zeroinitializer, i32 131081 }], [96 x i8] zeroinitializer }, align 32
@ebox44_table = internal constant { [10 x %struct.std_mono_table], [48 x i8] } { [10 x %struct.std_mono_table] [%struct.std_mono_table { i32 4, i32 1, i32 0, i32 1, ptr @.str.64, ptr null }, %struct.std_mono_table { i32 4, i32 2, i32 1, i32 4, ptr @.str.65, ptr null }, %struct.std_mono_table { i32 4, i32 2, i32 2, i32 4, ptr @.str.66, ptr null }, %struct.std_mono_table { i32 7, i32 1, i32 0, i32 1, ptr @.str.67, ptr null }, %struct.std_mono_table { i32 7, i32 2, i32 1, i32 4, ptr @.str.68, ptr null }, %struct.std_mono_table { i32 7, i32 2, i32 2, i32 4, ptr @.str.69, ptr null }, %struct.std_mono_table { i32 10, i32 1, i32 0, i32 1, ptr @.str.70, ptr null }, %struct.std_mono_table { i32 10, i32 2, i32 1, i32 4, ptr @.str.71, ptr null }, %struct.std_mono_table { i32 10, i32 2, i32 2, i32 4, ptr @.str.72, ptr null }, %struct.std_mono_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@snd_usb_mixer_rc_memory_change.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 3, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_usb_audio\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"snd_usb_mixer_rc_memory_change\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/usb/mixer_quirks.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"memory change in unknown unit %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@rc_configs = internal constant { [8 x %struct.rc_config], [32 x i8] } { [8 x %struct.rc_config] [%struct.rc_config { i32 69087232, i8 0, i8 1, i8 2, i8 1, i8 18, i32 19 }, %struct.rc_config { i32 69087264, i8 2, i8 1, i8 6, i8 6, i8 18, i32 19 }, %struct.rc_config { i32 69087296, i8 2, i8 2, i8 6, i8 6, i8 2, i32 28305 }, %struct.rc_config { i32 69087298, i8 0, i8 1, i8 1, i8 1, i8 1, i32 13 }, %struct.rc_config { i32 69087455, i8 0, i8 1, i8 1, i8 1, i8 1, i32 13 }, %struct.rc_config { i32 69087799, i8 0, i8 1, i8 1, i8 1, i8 1, i32 13 }, %struct.rc_config { i32 69087843, i8 0, i8 1, i8 1, i8 1, i8 1, i32 13 }, %struct.rc_config { i32 69087304, i8 2, i8 2, i8 6, i8 6, i8 2, i32 28305 }], [32 x i8] zeroinitializer }, align 32
@snd_usb_soundblaster_remote_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&mixer->rc_waitq\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SB remote control\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s remote control\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@snd_audigy2nx_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_audigy2nx_led_get, ptr @snd_audigy2nx_led_put, %union.anon.79 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CMSS LED Switch\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Power LED Switch\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Dolby Digital LED Switch\00", [39 x i8] zeroinitializer }, align 32
@snd_audigy2nx_proc_read.jacks_audigy2nx = internal constant { [5 x %struct.sb_jack], [56 x i8] } { [5 x %struct.sb_jack] [%struct.sb_jack { i32 4, ptr @.str.12 }, %struct.sb_jack { i32 7, ptr @.str.13 }, %struct.sb_jack { i32 19, ptr @.str.14 }, %struct.sb_jack { i32 20, ptr @.str.15 }, %struct.sb_jack { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dig in \00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"line in\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spk out\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hph out\00", [24 x i8] zeroinitializer }, align 32
@snd_audigy2nx_proc_read.jacks_live24ext = internal constant { [4 x %struct.sb_jack], [32 x i8] } { [4 x %struct.sb_jack] [%struct.sb_jack { i32 4, ptr @.str.13 }, %struct.sb_jack { i32 3, ptr @.str.15 }, %struct.sb_jack { i32 0, ptr @.str.16 }, %struct.sb_jack { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RC     \00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s jacks\0A\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s: \00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%02x %02x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"?\0A\00", [29 x i8] zeroinitializer }, align 32
@snd_emu0204_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_emu0204_ch_switch_info, ptr @snd_emu0204_ch_switch_get, ptr @snd_emu0204_ch_switch_put, %union.anon.79 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Front Jack Channels\00", [44 x i8] zeroinitializer }, align 32
@snd_emu0204_ch_switch_info.texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.22, ptr @.str.23], [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1/2\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3/4\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PCM%d-Out%d Playback Volume\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"In%d-Out%d Playback Volume\00", [37 x i8] zeroinitializer }, align 32
@snd_usb_feature_unit_ctl = external dso_local local_unnamed_addr global ptr, align 4
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Effect Send DOut%d\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Effect Send AIn%d\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Effect Return %d\00", [47 x i8] zeroinitializer }, align 32
@snd_ftu_create_effect_switch.template = internal global { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 3, i32 0, ptr @snd_ftu_eff_switch_info, ptr @snd_ftu_eff_switch_get, ptr @snd_ftu_eff_switch_put, %union.anon.79 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Effect Program Switch\00", [42 x i8] zeroinitializer }, align 32
@snd_ftu_eff_switch_info.texts = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Room 1\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Room 2\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Room 3\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Hall 1\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Hall 2\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Plate\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Delay\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Echo\00", [27 x i8] zeroinitializer }, align 32
@snd_c400_create_effect_volume_ctl.name = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Effect Volume\00", [18 x i8] zeroinitializer }, align 32
@snd_c400_create_effect_duration_ctl.name = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Effect Duration\00", [16 x i8] zeroinitializer }, align 32
@snd_c400_create_effect_feedback_ctl.name = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Effect Feedback Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AIn%d - Out%d Capture Volume\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DIn%d - Out%d Playback Volume\00", [34 x i8] zeroinitializer }, align 32
@snd_ftu_create_effect_volume_ctl.name = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Effect Volume\00", [18 x i8] zeroinitializer }, align 32
@snd_ftu_create_effect_duration_ctl.name = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Effect Duration\00", [16 x i8] zeroinitializer }, align 32
@snd_ftu_create_effect_feedback_ctl.name = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Effect Feedback Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Effect Return %d Volume\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Effect Send AIn%d Volume\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Effect Send DIn%d Volume\00", [39 x i8] zeroinitializer }, align 32
@snd_xonar_u1_output_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_xonar_u1_switch_get, ptr @snd_xonar_u1_switch_put, %union.anon.79 zeroinitializer, i32 5 }, [48 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Playback Switch\00", [40 x i8] zeroinitializer }, align 32
@snd_microii_mixer_spdif = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_microii_spdif_info, ptr @snd_microii_spdif_default_get, ptr @snd_microii_spdif_default_put, %union.anon.79 zeroinitializer, i32 256 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.45, i32 0, i32 1, i32 0, ptr @snd_microii_spdif_info, ptr @snd_microii_spdif_mask_get, ptr null, %union.anon.79 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_microii_spdif_switch_get, ptr @snd_microii_spdif_switch_put, %union.anon.79 zeroinitializer, i32 40 }], [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 Playback Mask\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@snd_mbox1_clk_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 3, i32 0, ptr @snd_mbox1_clk_switch_info, ptr @snd_mbox1_clk_switch_get, ptr @snd_mbox1_clk_switch_put, %union.anon.79 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_mbox1_src_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 1, i32 3, i32 0, ptr @snd_mbox1_src_switch_info, ptr @snd_mbox1_src_switch_get, ptr @snd_mbox1_src_switch_put, %union.anon.79 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Clock Source\00", [19 x i8] zeroinitializer }, align 32
@snd_mbox1_clk_switch_info.texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.48, ptr @.str.49], [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Internal\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"S/PDIF\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Input Source\00", [19 x i8] zeroinitializer }, align 32
@snd_mbox1_src_switch_info.texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.51, ptr @.str.49], [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Analog\00", [25 x i8] zeroinitializer }, align 32
@__const.snd_nativeinstruments_create_mixer.template = private unnamed_addr constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_nativeinstruments_control_get, ptr @snd_nativeinstruments_control_put, %union.anon.79 zeroinitializer, i32 0 }, align 4
@snd_ni_control_init_val._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 885, ptr @.str.54, ptr @.str.55 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unable to issue vendor read request (ret = %d)\00", [49 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_ni_control_init_val\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_ni_control_init_val._entry_ptr = internal global ptr @snd_ni_control_init_val._entry, section ".printk_index", align 4
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Direct Thru Channel A\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Direct Thru Channel B\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Phono Input Channel A\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Phono Input Channel B\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Direct Thru Channel C\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Direct Thru Channel D\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Phono Input Channel C\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Phono Input Channel D\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Headphone Playback Switch\00", [38 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Headphone A Mix Playback Volume\00", [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Headphone B Mix Playback Volume\00", [32 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Output Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Output A Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Output B Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Input Capture Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Input A Capture Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Input B Capture Volume\00", [41 x i8] zeroinitializer }, align 32
@snd_soundblaster_e1_input_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soundblaster_e1_switch_info, ptr @snd_soundblaster_e1_switch_get, ptr @snd_soundblaster_e1_switch_put, %union.anon.79 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_soundblaster_e1_switch_info.texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.73, ptr @.str.74], [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Aux\00", [28 x i8] zeroinitializer }, align 32
@snd_rme_controls = internal constant { [9 x %struct.snd_kcontrol_new], [112 x i8] } { [9 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 5, i32 0, ptr @snd_rme_rate_info, ptr @snd_rme_rate_get, ptr null, %union.anon.79 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 5, i32 0, ptr @snd_rme_sync_state_info, ptr @snd_rme_sync_state_get, ptr null, %union.anon.79 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 5, i32 0, ptr @snd_rme_rate_info, ptr @snd_rme_rate_get, ptr null, %union.anon.79 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 5, i32 0, ptr @snd_rme_sync_state_info, ptr @snd_rme_sync_state_get, ptr null, %union.anon.79 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 5, i32 0, ptr @snd_rme_spdif_if_info, ptr @snd_rme_spdif_if_get, ptr null, %union.anon.79 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 5, i32 0, ptr @snd_rme_spdif_format_info, ptr @snd_rme_spdif_format_get, ptr null, %union.anon.79 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 5, i32 0, ptr @snd_rme_sync_source_info, ptr @snd_rme_sync_source_get, ptr null, %union.anon.79 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 5, i32 0, ptr @snd_rme_rate_info, ptr @snd_rme_rate_get, ptr null, %union.anon.79 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 5, i32 0, ptr @snd_rme_rate_info, ptr @snd_rme_current_freq_get, ptr null, %union.anon.79 zeroinitializer, i32 0 }], [112 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AES Rate\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AES Sync\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SPDIF Rate\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SPDIF Sync\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SPDIF Interface\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SPDIF Format\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Sync Source\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"System Rate\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Current Frequency\00", [46 x i8] zeroinitializer }, align 32
@snd_rme_rate_table = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 32000, i32 44100, i32 48000, i32 50000, i32 64000, i32 88200, i32 96000, i32 100000, i32 128000, i32 176400, i32 192000, i32 200000, i32 256000, i32 352800, i32 384000, i32 400000, i32 512000, i32 705600, i32 768000, i32 800000], [48 x i8] zeroinitializer }, align 32
@snd_rme_read_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.3, i32 2029, ptr @.str.54, ptr @.str.55 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"unable to issue vendor read request %d (ret = %d)\00", [46 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_rme_read_value\00", [45 x i8] zeroinitializer }, align 32
@snd_rme_read_value._entry_ptr = internal global ptr @snd_rme_read_value._entry, section ".printk_index", align 4
@snd_rme_sync_state_info.sync_states = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.86, ptr @.str.87, ptr @.str.88], [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"No Lock\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Lock\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Sync\00", [27 x i8] zeroinitializer }, align 32
@snd_rme_spdif_if_info.spdif_if = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.89, ptr @.str.90], [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Coaxial\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Optical\00", [24 x i8] zeroinitializer }, align 32
@snd_rme_spdif_format_info.optical_type = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.91, ptr @.str.92], [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Consumer\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Professional\00", [19 x i8] zeroinitializer }, align 32
@snd_rme_sync_source_info.sync_sources = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.48, ptr @.str.93, ptr @.str.94, ptr @.str.48], [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AES\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SPDIF\00", [26 x i8] zeroinitializer }, align 32
@snd_bbfpro_controls_create.input = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106], [48 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AN1\00", [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AN2\00", [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IN3\00", [28 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IN4\00", [28 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AS1\00", [28 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AS2\00", [28 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADAT3\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADAT4\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADAT5\00", [26 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADAT6\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADAT7\00", [26 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADAT8\00", [26 x i8] zeroinitializer }, align 32
@snd_bbfpro_controls_create.output = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.95, ptr @.str.96, ptr @.str.107, ptr @.str.108, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106], [48 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PH3\00", [28 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PH4\00", [28 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s-%s-%s Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Line\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PCM-%s-%s Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Sample Clock Source\00", [44 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IEC958 Pro Mask\00", [16 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IEC958 Emphasis\00", [16 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IEC958 Switch\00", [18 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mic-AN1 48V\00", [20 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mic-AN2 48V\00", [20 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Line-IN3 Sens.\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Line-IN4 Sens.\00", [17 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mic-AN1 PAD\00", [20 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mic-AN2 PAD\00", [20 x i8] zeroinitializer }, align 32
@snd_bbfpro_vol_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 0, ptr @snd_bbfpro_vol_info, ptr @snd_bbfpro_vol_get, ptr @snd_bbfpro_vol_put, %union.anon.79 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_bbfpro_ctl_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 0, ptr @snd_bbfpro_ctl_info, ptr @snd_bbfpro_ctl_get, ptr @snd_bbfpro_ctl_put, %union.anon.79 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_bbfpro_ctl_info.texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.122, ptr @.str.48], [24 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AutoSync\00", [23 x i8] zeroinitializer }, align 32
@snd_bbfpro_ctl_info.texts.123 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.124, ptr @.str.125], [24 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"-10dBV\00", [25 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"+4dBu\00", [26 x i8] zeroinitializer }, align 32
@snd_djm_devices = internal constant { [5 x %struct.snd_djm_device], [36 x i8] } { [5 x %struct.snd_djm_device] [%struct.snd_djm_device { ptr null, ptr @snd_djm_ctls_250mk2, i32 7 }, %struct.snd_djm_device { ptr null, ptr @snd_djm_ctls_750, i32 5 }, %struct.snd_djm_device { ptr null, ptr @snd_djm_ctls_850, i32 5 }, %struct.snd_djm_device { ptr null, ptr @snd_djm_ctls_900nxs2, i32 6 }, %struct.snd_djm_device { ptr null, ptr @snd_djm_ctls_750mk2, i32 9 }], [36 x i8] zeroinitializer }, align 32
@__const.snd_djm_controls_create.knew = private unnamed_addr constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 0, ptr @snd_djm_controls_info, ptr @snd_djm_controls_get, ptr @snd_djm_controls_put, %union.anon.79 zeroinitializer, i32 0 }, align 4
@snd_djm_ctls_250mk2 = internal constant { [7 x %struct.snd_djm_ctl], [48 x i8] } { [7 x %struct.snd_djm_ctl] [%struct.snd_djm_ctl { ptr @.str.126, ptr @snd_djm_opts_cap_level, i32 4, i16 0, i16 -32765 }, %struct.snd_djm_ctl { ptr @.str.127, ptr @snd_djm_opts_250mk2_cap1, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.128, ptr @snd_djm_opts_250mk2_cap2, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.129, ptr @snd_djm_opts_250mk2_cap3, i32 7, i16 0, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.130, ptr @snd_djm_opts_250mk2_pb1, i32 3, i16 0, i16 -32746 }, %struct.snd_djm_ctl { ptr @.str.131, ptr @snd_djm_opts_250mk2_pb2, i32 3, i16 1, i16 -32746 }, %struct.snd_djm_ctl { ptr @.str.132, ptr @snd_djm_opts_250mk2_pb3, i32 3, i16 2, i16 -32746 }], [48 x i8] zeroinitializer }, align 32
@snd_djm_ctls_750 = internal constant { [5 x %struct.snd_djm_ctl], [48 x i8] } { [5 x %struct.snd_djm_ctl] [%struct.snd_djm_ctl { ptr @.str.126, ptr @snd_djm_opts_cap_level, i32 4, i16 0, i16 -32765 }, %struct.snd_djm_ctl { ptr @.str.127, ptr @snd_djm_opts_750_cap1, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.128, ptr @snd_djm_opts_750_cap2, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.129, ptr @snd_djm_opts_750_cap3, i32 8, i16 0, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.133, ptr @snd_djm_opts_750_cap4, i32 8, i16 0, i16 -32766 }], [48 x i8] zeroinitializer }, align 32
@snd_djm_ctls_850 = internal constant { [5 x %struct.snd_djm_ctl], [48 x i8] } { [5 x %struct.snd_djm_ctl] [%struct.snd_djm_ctl { ptr @.str.126, ptr @snd_djm_opts_cap_level, i32 4, i16 0, i16 -32765 }, %struct.snd_djm_ctl { ptr @.str.127, ptr @snd_djm_opts_850_cap1, i32 8, i16 1, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.128, ptr @snd_djm_opts_850_cap2, i32 8, i16 0, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.129, ptr @snd_djm_opts_850_cap3, i32 8, i16 0, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.133, ptr @snd_djm_opts_850_cap4, i32 8, i16 1, i16 -32766 }], [48 x i8] zeroinitializer }, align 32
@snd_djm_ctls_900nxs2 = internal constant { [6 x %struct.snd_djm_ctl], [32 x i8] } { [6 x %struct.snd_djm_ctl] [%struct.snd_djm_ctl { ptr @.str.126, ptr @snd_djm_opts_cap_level, i32 4, i16 0, i16 -32765 }, %struct.snd_djm_ctl { ptr @.str.127, ptr @snd_djm_opts_900nxs2_cap1, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.128, ptr @snd_djm_opts_900nxs2_cap2, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.129, ptr @snd_djm_opts_900nxs2_cap3, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.133, ptr @snd_djm_opts_900nxs2_cap4, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.134, ptr @snd_djm_opts_900nxs2_cap5, i32 8, i16 3, i16 -32766 }], [32 x i8] zeroinitializer }, align 32
@snd_djm_ctls_750mk2 = internal constant { [9 x %struct.snd_djm_ctl], [48 x i8] } { [9 x %struct.snd_djm_ctl] [%struct.snd_djm_ctl { ptr @.str.126, ptr @snd_djm_opts_cap_level, i32 4, i16 0, i16 -32765 }, %struct.snd_djm_ctl { ptr @.str.127, ptr @snd_djm_opts_750mk2_cap1, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.128, ptr @snd_djm_opts_750mk2_cap2, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.129, ptr @snd_djm_opts_750mk2_cap3, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.133, ptr @snd_djm_opts_750mk2_cap4, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.134, ptr @snd_djm_opts_750mk2_cap5, i32 8, i16 3, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.130, ptr @snd_djm_opts_750mk2_pb1, i32 3, i16 0, i16 -32746 }, %struct.snd_djm_ctl { ptr @.str.131, ptr @snd_djm_opts_750mk2_pb2, i32 3, i16 1, i16 -32746 }, %struct.snd_djm_ctl { ptr @.str.132, ptr @snd_djm_opts_750mk2_pb3, i32 3, i16 2, i16 -32746 }], [48 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Capture Level\00", [18 x i8] zeroinitializer }, align 32
@snd_djm_opts_cap_level = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 0, i16 256, i16 512, i16 768], [24 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Ch1 Input\00", [22 x i8] zeroinitializer }, align 32
@snd_djm_opts_250mk2_cap1 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 259, i16 256, i16 262, i16 263, i16 264, i16 265, i16 269, i16 266], [16 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Ch2 Input\00", [22 x i8] zeroinitializer }, align 32
@snd_djm_opts_250mk2_cap2 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 515, i16 512, i16 518, i16 519, i16 520, i16 521, i16 525, i16 522], [16 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Ch3 Input\00", [22 x i8] zeroinitializer }, align 32
@snd_djm_opts_250mk2_cap3 = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 778, i16 785, i16 786, i16 775, i16 776, i16 777, i16 781], [18 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ch1 Output\00", [21 x i8] zeroinitializer }, align 32
@snd_djm_opts_250mk2_pb1 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 256, i16 257, i16 260], [26 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ch2 Output\00", [21 x i8] zeroinitializer }, align 32
@snd_djm_opts_250mk2_pb2 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 512, i16 513, i16 516], [26 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ch3 Output\00", [21 x i8] zeroinitializer }, align 32
@snd_djm_opts_250mk2_pb3 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 768, i16 769, i16 772], [26 x i8] zeroinitializer }, align 32
@snd_djm_opts_750_cap1 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 257, i16 259, i16 262, i16 263, i16 264, i16 265, i16 266, i16 271], [16 x i8] zeroinitializer }, align 32
@snd_djm_opts_750_cap2 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 512, i16 513, i16 518, i16 519, i16 520, i16 521, i16 522, i16 527], [16 x i8] zeroinitializer }, align 32
@snd_djm_opts_750_cap3 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 768, i16 769, i16 774, i16 775, i16 776, i16 777, i16 778, i16 783], [16 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Ch4 Input\00", [22 x i8] zeroinitializer }, align 32
@snd_djm_opts_750_cap4 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 1025, i16 1027, i16 1030, i16 1031, i16 1032, i16 1033, i16 1034, i16 1039], [16 x i8] zeroinitializer }, align 32
@snd_djm_opts_850_cap1 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 256, i16 259, i16 262, i16 263, i16 264, i16 265, i16 266, i16 271], [16 x i8] zeroinitializer }, align 32
@snd_djm_opts_850_cap2 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 512, i16 513, i16 518, i16 519, i16 520, i16 521, i16 522, i16 527], [16 x i8] zeroinitializer }, align 32
@snd_djm_opts_850_cap3 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 768, i16 769, i16 774, i16 775, i16 776, i16 777, i16 778, i16 783], [16 x i8] zeroinitializer }, align 32
@snd_djm_opts_850_cap4 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 1024, i16 1027, i16 1030, i16 1031, i16 1032, i16 1033, i16 1034, i16 1039], [16 x i8] zeroinitializer }, align 32
@snd_djm_opts_900nxs2_cap1 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 256, i16 258, i16 259, i16 262, i16 263, i16 264, i16 265, i16 266], [16 x i8] zeroinitializer }, align 32
@snd_djm_opts_900nxs2_cap2 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 512, i16 514, i16 515, i16 518, i16 519, i16 520, i16 521, i16 522], [16 x i8] zeroinitializer }, align 32
@snd_djm_opts_900nxs2_cap3 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 768, i16 770, i16 771, i16 774, i16 775, i16 776, i16 777, i16 778], [16 x i8] zeroinitializer }, align 32
@snd_djm_opts_900nxs2_cap4 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 1024, i16 1026, i16 1027, i16 1030, i16 1031, i16 1032, i16 1033, i16 1034], [16 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Ch5 Input\00", [22 x i8] zeroinitializer }, align 32
@snd_djm_opts_900nxs2_cap5 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 1287, i16 1288, i16 1289, i16 1290, i16 1297, i16 1298, i16 1299, i16 1300], [16 x i8] zeroinitializer }, align 32
@snd_djm_opts_750mk2_cap1 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 256, i16 258, i16 259, i16 262, i16 263, i16 264, i16 265, i16 266], [16 x i8] zeroinitializer }, align 32
@snd_djm_opts_750mk2_cap2 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 512, i16 514, i16 515, i16 518, i16 519, i16 520, i16 521, i16 522], [16 x i8] zeroinitializer }, align 32
@snd_djm_opts_750mk2_cap3 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 768, i16 770, i16 771, i16 774, i16 775, i16 776, i16 777, i16 778], [16 x i8] zeroinitializer }, align 32
@snd_djm_opts_750mk2_cap4 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 1024, i16 1026, i16 1027, i16 1030, i16 1031, i16 1032, i16 1033, i16 1034], [16 x i8] zeroinitializer }, align 32
@snd_djm_opts_750mk2_cap5 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 1287, i16 1288, i16 1289, i16 1290, i16 1297, i16 1298, i16 1299, i16 1300], [16 x i8] zeroinitializer }, align 32
@snd_djm_opts_750mk2_pb1 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 256, i16 257, i16 260], [26 x i8] zeroinitializer }, align 32
@snd_djm_opts_750mk2_pb2 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 512, i16 513, i16 516], [26 x i8] zeroinitializer }, align 32
@snd_djm_opts_750mk2_pb3 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 768, i16 769, i16 772], [26 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-19dB\00", [26 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-15dB\00", [26 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-10dB\00", [26 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"-5dB\00", [27 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Control Tone CD/LINE\00", [43 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Control Tone LINE\00", [46 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Control Tone DIGITAL\00", [43 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Control Tone PHONO\00", [45 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Post Fader\00", [21 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Cross Fader A\00", [18 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Cross Fader B\00", [18 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Rec Out\00", [24 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Post Fader Ch1\00", [17 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Post Fader Ch2\00", [17 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Post Fader Ch3\00", [17 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Post Fader Ch4\00", [17 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Ch1\00", [28 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Ch2\00", [28 x i8] zeroinitializer }, align 32
@snd_dragonfly_quirk_db_scale.scale = internal constant { [62 x i32], [40 x i8] } { [62 x i32] [i32 3, i32 240, i32 0, i32 1, i32 4, i32 8, i32 -5300, i32 -4970, i32 2, i32 5, i32 4, i32 8, i32 -4710, i32 -4160, i32 6, i32 7, i32 4, i32 8, i32 -3884, i32 -3710, i32 8, i32 14, i32 4, i32 8, i32 -3443, i32 -2560, i32 15, i32 16, i32 4, i32 8, i32 -2475, i32 -2324, i32 17, i32 19, i32 4, i32 8, i32 -2228, i32 -2031, i32 20, i32 26, i32 4, i32 8, i32 -1910, i32 -1393, i32 27, i32 31, i32 4, i32 8, i32 -1322, i32 -1032, i32 32, i32 40, i32 4, i32 8, i32 -968, i32 -490, i32 41, i32 50, i32 4, i32 8, i32 -441, i32 0], [40 x i8] zeroinitializer }, align 32
@snd_dragonfly_quirk_db_scale._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.3, i32 3340, ptr @.str.156, ptr @.str.55 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"applying DragonFly dB scale quirk (0-50 variant)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snd_dragonfly_quirk_db_scale\00", [35 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@snd_dragonfly_quirk_db_scale._entry_ptr = internal global ptr @snd_dragonfly_quirk_db_scale._entry, section ".printk_index", align 4
@snd_dragonfly_quirk_db_scale._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.155, ptr @.str.3, i32 3349, ptr @.str.156, ptr @.str.55 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ignoring too narrow dB range on a DragonFly device\00", [45 x i8] zeroinitializer }, align 32
@snd_dragonfly_quirk_db_scale._entry_ptr.159 = internal global ptr @snd_dragonfly_quirk_db_scale._entry.157, section ".printk_index", align 4
@switch.table.snd_djm_controls_info = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138], [16 x i8] zeroinitializer }, align 32
@switch.table.snd_djm_controls_info.160 = internal constant { [21 x ptr], [44 x i8] } { [21 x ptr] [ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.139, ptr @.str.139, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.73, ptr @.str.146, ptr @.str.139, ptr @.str.139, ptr @.str.74, ptr @.str.139, ptr @.str.147, ptr @.str.139, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151], [44 x i8] zeroinitializer }, align 32
@switch.table.snd_djm_controls_info.161 = internal constant { [21 x ptr], [44 x i8] } { [21 x ptr] [ptr @.str.140, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.140, ptr @.str.140, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.73, ptr @.str.146, ptr @.str.140, ptr @.str.140, ptr @.str.74, ptr @.str.140, ptr @.str.147, ptr @.str.140, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 69087232, i64 69087264, i64 69087296, i64 69087298, i64 69087304, i64 69087455, i64 69087799, i64 69087843]
@__sancov_gen_cov_switch_values.162 = internal global [47 x i64] [i64 45, i64 32, i64 69087264, i64 69087296, i64 69087298, i64 69087304, i64 69087455, i64 69087803, i64 69091097, i64 105152583, i64 123936816, i64 123936817, i64 123936896, i64 123936897, i64 149160291, i64 149160319, i64 184883001, i64 184883011, i64 184883104, i64 198852628, i64 227279107, i64 230297600, i64 305496066, i64 305496068, i64 305496076, i64 305496082, i64 305496084, i64 305496577, i64 305496579, i64 305496580, i64 305496592, i64 305496593, i64 305496594, i64 305496595, i64 305496596, i64 305496597, i64 399249425, i64 399249441, i64 424608012, i64 537661464, i64 708394928, i64 708394962, i64 708394963, i64 708394964, i64 728956938, i64 728956951, i64 728956955]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 32, i64 69087298, i64 69087455]
@__sancov_gen_cov_switch_values.164 = internal global [6 x i64] [i64 4, i64 32, i64 69087296, i64 69087298, i64 69087304, i64 69087455]
@__sancov_gen_cov_switch_values.165 = internal global [4 x i64] [i64 2, i64 32, i64 123936816, i64 123936817]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 123936816, i64 123936817]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 32, i64 123936816, i64 123936817]
@__sancov_gen_cov_switch_values.168 = internal global [5 x i64] [i64 3, i64 32, i64 69087264, i64 69087296, i64 69087304]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.170 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 3, i64 4, i64 7, i64 19, i64 20]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 32, i64 69087296, i64 69087304]
@__sancov_gen_cov_switch_values.172 = internal global [5 x i64] [i64 3, i64 32, i64 227278860, i64 227278868, i64 565444737]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.174 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.176 = internal global [5 x i64] [i64 3, i64 16, i64 32770, i64 32771, i64 32790]
@__sancov_gen_cov_switch_values.177 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 4]
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 3174, i32 43 }
@___asan_gen_.181 = private unnamed_addr constant [33 x i8] c"snd_nativeinstruments_ta6_mixers\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 934, i32 38 }
@___asan_gen_.184 = private unnamed_addr constant [34 x i8] c"snd_nativeinstruments_ta10_mixers\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 953, i32 38 }
@___asan_gen_.187 = private unnamed_addr constant [13 x i8] c"ebox44_table\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1533, i32 36 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 3315, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 3366, i32 29 }
@___asan_gen_.205 = private unnamed_addr constant [11 x i8] c"rc_configs\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 181, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 256, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 257, i32 41 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 261, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant [22 x i8] c"snd_audigy2nx_control\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 356, i32 38 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 364, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 365, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 366, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant [16 x i8] c"jacks_audigy2nx\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 407, i32 5 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 408, i32 8 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 409, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 410, i32 8 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 411, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant [16 x i8] c"jacks_live24ext\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 413, i32 5 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 416, i32 8 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 424, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 434, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 445, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 447, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant [20 x i8] c"snd_emu0204_control\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 513, i32 38 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 515, i32 10 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 455, i32 28 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 455, i32 40 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 455, i32 47 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1346, i32 6 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1350, i32 6 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1432, i32 5 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1436, i32 5 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1478, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant [9 x i8] c"template\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1106, i32 33 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1108, i32 11 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1023, i32 27 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1024, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1024, i32 13 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1024, i32 23 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1024, i32 33 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1025, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1025, i32 13 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1025, i32 22 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1025, i32 31 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1370, i32 20 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1383, i32 20 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1396, i32 20 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1143, i32 5 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1154, i32 5 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1170, i32 20 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1183, i32 20 }
@___asan_gen_.349 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1196, i32 20 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1219, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1243, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1253, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant [27 x i8] c"snd_xonar_u1_output_switch\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 581, i32 38 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 583, i32 10 }
@___asan_gen_.367 = private unnamed_addr constant [24 x i8] c"snd_microii_mixer_spdif\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1813, i32 38 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1816, i32 15 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1825, i32 15 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1831, i32 15 }
@___asan_gen_.379 = private unnamed_addr constant [21 x i8] c"snd_mbox1_clk_switch\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 831, i32 38 }
@___asan_gen_.382 = private unnamed_addr constant [21 x i8] c"snd_mbox1_src_switch\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 842, i32 38 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 833, i32 10 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 748, i32 27 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 749, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 750, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 844, i32 10 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 818, i32 27 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 819, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 884, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 936, i32 11 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 940, i32 11 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 944, i32 11 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 948, i32 11 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 963, i32 11 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 967, i32 11 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 979, i32 11 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 983, i32 11 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1539, i32 11 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1546, i32 11 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1553, i32 11 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1561, i32 11 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1568, i32 11 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1575, i32 11 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1583, i32 11 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1590, i32 11 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1597, i32 11 }
@___asan_gen_.472 = private unnamed_addr constant [33 x i8] c"snd_soundblaster_e1_input_switch\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1920, i32 38 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1913, i32 27 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1914, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1914, i32 10 }
@___asan_gen_.484 = private unnamed_addr constant [17 x i8] c"snd_rme_controls\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2244, i32 38 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2247, i32 11 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2255, i32 11 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2263, i32 11 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2271, i32 11 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2279, i32 11 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2286, i32 11 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2293, i32 11 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2300, i32 11 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2308, i32 11 }
@___asan_gen_.514 = private unnamed_addr constant [19 x i8] c"snd_rme_rate_table\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 1992, i32 18 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2027, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant [12 x i8] c"sync_states\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2203, i32 27 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2204, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2204, i32 14 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2204, i32 22 }
@___asan_gen_.538 = private unnamed_addr constant [9 x i8] c"spdif_if\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2214, i32 27 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2215, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2215, i32 14 }
@___asan_gen_.547 = private unnamed_addr constant [13 x i8] c"optical_type\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2225, i32 27 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2226, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2226, i32 15 }
@___asan_gen_.556 = private unnamed_addr constant [13 x i8] c"sync_sources\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2236, i32 27 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2237, i32 15 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2237, i32 22 }
@___asan_gen_.565 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2651, i32 28 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2652, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2652, i32 10 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2652, i32 17 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2652, i32 24 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2652, i32 31 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2652, i32 38 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2652, i32 45 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2653, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2653, i32 12 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2653, i32 21 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2653, i32 30 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2653, i32 39 }
@___asan_gen_.604 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2655, i32 28 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2656, i32 17 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2656, i32 24 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2663, i32 6 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2664, i32 23 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2672, i32 6 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2684, i32 6 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2690, i32 6 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2696, i32 6 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2702, i32 6 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2709, i32 6 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2715, i32 6 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2721, i32 6 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2727, i32 6 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2733, i32 6 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2739, i32 6 }
@___asan_gen_.652 = private unnamed_addr constant [23 x i8] c"snd_bbfpro_vol_control\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2611, i32 38 }
@___asan_gen_.655 = private unnamed_addr constant [23 x i8] c"snd_bbfpro_ctl_control\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2602, i32 38 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2442, i32 29 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2443, i32 4 }
@___asan_gen_.664 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2450, i32 29 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2451, i32 4 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2452, i32 4 }
@___asan_gen_.673 = private unnamed_addr constant [16 x i8] c"snd_djm_devices\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 3018, i32 36 }
@___asan_gen_.676 = private unnamed_addr constant [20 x i8] c"snd_djm_ctls_250mk2\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2918, i32 33 }
@___asan_gen_.679 = private unnamed_addr constant [17 x i8] c"snd_djm_ctls_750\00", align 1
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2939, i32 33 }
@___asan_gen_.682 = private unnamed_addr constant [17 x i8] c"snd_djm_ctls_850\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2958, i32 33 }
@___asan_gen_.685 = private unnamed_addr constant [21 x i8] c"snd_djm_ctls_900nxs2\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2979, i32 33 }
@___asan_gen_.688 = private unnamed_addr constant [20 x i8] c"snd_djm_ctls_750mk2\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 3005, i32 33 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2919, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant [23 x i8] c"snd_djm_opts_cap_level\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2900, i32 18 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2920, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant [25 x i8] c"snd_djm_opts_250mk2_cap1\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2905, i32 18 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2921, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant [25 x i8] c"snd_djm_opts_250mk2_cap2\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2908, i32 18 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2922, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant [25 x i8] c"snd_djm_opts_250mk2_cap3\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2911, i32 18 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2923, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant [24 x i8] c"snd_djm_opts_250mk2_pb1\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2914, i32 18 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2924, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant [24 x i8] c"snd_djm_opts_250mk2_pb2\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2915, i32 18 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2925, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant [24 x i8] c"snd_djm_opts_250mk2_pb3\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2916, i32 18 }
@___asan_gen_.733 = private unnamed_addr constant [22 x i8] c"snd_djm_opts_750_cap1\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2930, i32 18 }
@___asan_gen_.736 = private unnamed_addr constant [22 x i8] c"snd_djm_opts_750_cap2\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2932, i32 18 }
@___asan_gen_.739 = private unnamed_addr constant [22 x i8] c"snd_djm_opts_750_cap3\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2934, i32 18 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2944, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant [22 x i8] c"snd_djm_opts_750_cap4\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2936, i32 18 }
@___asan_gen_.748 = private unnamed_addr constant [22 x i8] c"snd_djm_opts_850_cap1\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2949, i32 18 }
@___asan_gen_.751 = private unnamed_addr constant [22 x i8] c"snd_djm_opts_850_cap2\00", align 1
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2951, i32 18 }
@___asan_gen_.754 = private unnamed_addr constant [22 x i8] c"snd_djm_opts_850_cap3\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2953, i32 18 }
@___asan_gen_.757 = private unnamed_addr constant [22 x i8] c"snd_djm_opts_850_cap4\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2955, i32 18 }
@___asan_gen_.760 = private unnamed_addr constant [26 x i8] c"snd_djm_opts_900nxs2_cap1\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2968, i32 18 }
@___asan_gen_.763 = private unnamed_addr constant [26 x i8] c"snd_djm_opts_900nxs2_cap2\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2970, i32 18 }
@___asan_gen_.766 = private unnamed_addr constant [26 x i8] c"snd_djm_opts_900nxs2_cap3\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2972, i32 18 }
@___asan_gen_.769 = private unnamed_addr constant [26 x i8] c"snd_djm_opts_900nxs2_cap4\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2974, i32 18 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2985, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant [26 x i8] c"snd_djm_opts_900nxs2_cap5\00", align 1
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2976, i32 18 }
@___asan_gen_.778 = private unnamed_addr constant [25 x i8] c"snd_djm_opts_750mk2_cap1\00", align 1
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2989, i32 18 }
@___asan_gen_.781 = private unnamed_addr constant [25 x i8] c"snd_djm_opts_750mk2_cap2\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2991, i32 18 }
@___asan_gen_.784 = private unnamed_addr constant [25 x i8] c"snd_djm_opts_750mk2_cap3\00", align 1
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2993, i32 18 }
@___asan_gen_.787 = private unnamed_addr constant [25 x i8] c"snd_djm_opts_750mk2_cap4\00", align 1
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2995, i32 18 }
@___asan_gen_.790 = private unnamed_addr constant [25 x i8] c"snd_djm_opts_750mk2_cap5\00", align 1
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2997, i32 18 }
@___asan_gen_.793 = private unnamed_addr constant [24 x i8] c"snd_djm_opts_750mk2_pb1\00", align 1
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 3000, i32 18 }
@___asan_gen_.796 = private unnamed_addr constant [24 x i8] c"snd_djm_opts_750mk2_pb2\00", align 1
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 3001, i32 18 }
@___asan_gen_.799 = private unnamed_addr constant [24 x i8] c"snd_djm_opts_750mk2_pb3\00", align 1
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 3002, i32 18 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2830, i32 22 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2831, i32 22 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2832, i32 22 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2833, i32 22 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2865, i32 21 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2866, i32 21 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2843, i32 35 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2844, i32 34 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2845, i32 34 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2846, i32 35 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2847, i32 35 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2849, i32 34 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2851, i32 33 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2852, i32 37 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2853, i32 37 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2854, i32 37 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2855, i32 37 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2882, i32 30 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 2883, i32 30 }
@___asan_gen_.859 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 3326, i32 15 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 3340, i32 3 }
@___asan_gen_.874 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.877 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.878 = private constant [28 x i8] c"../sound/usb/mixer_quirks.c\00", align 1
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.878, i32 3349, i32 3 }
@___asan_gen_.880 = private unnamed_addr constant [35 x i8] c"switch.table.snd_djm_controls_info\00", align 1
@___asan_gen_.881 = private unnamed_addr constant [39 x i8] c"switch.table.snd_djm_controls_info.160\00", align 1
@___asan_gen_.882 = private unnamed_addr constant [39 x i8] c"switch.table.snd_djm_controls_info.161\00", align 1
@llvm.compiler.used = appending global [241 x ptr] [ptr @snd_dragonfly_quirk_db_scale._entry, ptr @snd_dragonfly_quirk_db_scale._entry.157, ptr @snd_dragonfly_quirk_db_scale._entry_ptr, ptr @snd_dragonfly_quirk_db_scale._entry_ptr.159, ptr @snd_ni_control_init_val._entry, ptr @snd_ni_control_init_val._entry_ptr, ptr @snd_rme_read_value._entry, ptr @snd_rme_read_value._entry_ptr, ptr @.str, ptr @snd_nativeinstruments_ta6_mixers, ptr @snd_nativeinstruments_ta10_mixers, ptr @ebox44_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rc_configs, ptr @snd_usb_soundblaster_remote_init.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @snd_audigy2nx_control, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @snd_audigy2nx_proc_read.jacks_audigy2nx, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @snd_audigy2nx_proc_read.jacks_live24ext, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @snd_emu0204_control, ptr @.str.21, ptr @snd_emu0204_ch_switch_info.texts, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @snd_ftu_create_effect_switch.template, ptr @.str.29, ptr @snd_ftu_eff_switch_info.texts, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @snd_c400_create_effect_volume_ctl.name, ptr @snd_c400_create_effect_duration_ctl.name, ptr @snd_c400_create_effect_feedback_ctl.name, ptr @.str.38, ptr @.str.39, ptr @snd_ftu_create_effect_volume_ctl.name, ptr @snd_ftu_create_effect_duration_ctl.name, ptr @snd_ftu_create_effect_feedback_ctl.name, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @snd_xonar_u1_output_switch, ptr @.str.43, ptr @snd_microii_mixer_spdif, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @snd_mbox1_clk_switch, ptr @snd_mbox1_src_switch, ptr @.str.47, ptr @snd_mbox1_clk_switch_info.texts, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @snd_mbox1_src_switch_info.texts, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @snd_soundblaster_e1_input_switch, ptr @snd_soundblaster_e1_switch_info.texts, ptr @.str.73, ptr @.str.74, ptr @snd_rme_controls, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @snd_rme_rate_table, ptr @.str.84, ptr @.str.85, ptr @snd_rme_sync_state_info.sync_states, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @snd_rme_spdif_if_info.spdif_if, ptr @.str.89, ptr @.str.90, ptr @snd_rme_spdif_format_info.optical_type, ptr @.str.91, ptr @.str.92, ptr @snd_rme_sync_source_info.sync_sources, ptr @.str.93, ptr @.str.94, ptr @snd_bbfpro_controls_create.input, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @snd_bbfpro_controls_create.output, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @snd_bbfpro_vol_control, ptr @snd_bbfpro_ctl_control, ptr @snd_bbfpro_ctl_info.texts, ptr @.str.122, ptr @snd_bbfpro_ctl_info.texts.123, ptr @.str.124, ptr @.str.125, ptr @snd_djm_devices, ptr @snd_djm_ctls_250mk2, ptr @snd_djm_ctls_750, ptr @snd_djm_ctls_850, ptr @snd_djm_ctls_900nxs2, ptr @snd_djm_ctls_750mk2, ptr @.str.126, ptr @snd_djm_opts_cap_level, ptr @.str.127, ptr @snd_djm_opts_250mk2_cap1, ptr @.str.128, ptr @snd_djm_opts_250mk2_cap2, ptr @.str.129, ptr @snd_djm_opts_250mk2_cap3, ptr @.str.130, ptr @snd_djm_opts_250mk2_pb1, ptr @.str.131, ptr @snd_djm_opts_250mk2_pb2, ptr @.str.132, ptr @snd_djm_opts_250mk2_pb3, ptr @snd_djm_opts_750_cap1, ptr @snd_djm_opts_750_cap2, ptr @snd_djm_opts_750_cap3, ptr @.str.133, ptr @snd_djm_opts_750_cap4, ptr @snd_djm_opts_850_cap1, ptr @snd_djm_opts_850_cap2, ptr @snd_djm_opts_850_cap3, ptr @snd_djm_opts_850_cap4, ptr @snd_djm_opts_900nxs2_cap1, ptr @snd_djm_opts_900nxs2_cap2, ptr @snd_djm_opts_900nxs2_cap3, ptr @snd_djm_opts_900nxs2_cap4, ptr @.str.134, ptr @snd_djm_opts_900nxs2_cap5, ptr @snd_djm_opts_750mk2_cap1, ptr @snd_djm_opts_750mk2_cap2, ptr @snd_djm_opts_750mk2_cap3, ptr @snd_djm_opts_750mk2_cap4, ptr @snd_djm_opts_750mk2_cap5, ptr @snd_djm_opts_750mk2_pb1, ptr @snd_djm_opts_750mk2_pb2, ptr @snd_djm_opts_750mk2_pb3, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @snd_dragonfly_quirk_db_scale.scale, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.158, ptr @switch.table.snd_djm_controls_info, ptr @switch.table.snd_djm_controls_info.160, ptr @switch.table.snd_djm_controls_info.161], section "llvm.metadata"
@0 = internal global [237 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nativeinstruments_ta6_mixers to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nativeinstruments_ta10_mixers to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebox44_table to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_configs to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_soundblaster_remote_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_audigy2nx_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_audigy2nx_proc_read.jacks_audigy2nx to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_audigy2nx_proc_read.jacks_live24ext to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu0204_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu0204_ch_switch_info.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ftu_create_effect_switch.template to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ftu_eff_switch_info.texts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_c400_create_effect_volume_ctl.name to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_c400_create_effect_duration_ctl.name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_c400_create_effect_feedback_ctl.name to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ftu_create_effect_volume_ctl.name to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ftu_create_effect_duration_ctl.name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ftu_create_effect_feedback_ctl.name to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_xonar_u1_output_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_microii_mixer_spdif to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mbox1_clk_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mbox1_src_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mbox1_clk_switch_info.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mbox1_src_switch_info.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ni_control_init_val._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soundblaster_e1_input_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soundblaster_e1_switch_info.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme_controls to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme_rate_table to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme_read_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme_sync_state_info.sync_states to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme_spdif_if_info.spdif_if to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme_spdif_format_info.optical_type to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme_sync_source_info.sync_sources to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bbfpro_controls_create.input to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bbfpro_controls_create.output to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bbfpro_vol_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bbfpro_ctl_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bbfpro_ctl_info.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bbfpro_ctl_info.texts.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_devices to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_ctls_250mk2 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_ctls_750 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_ctls_850 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_ctls_900nxs2 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_ctls_750mk2 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_cap_level to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_250mk2_cap1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_250mk2_cap2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_250mk2_cap3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_250mk2_pb1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_250mk2_pb2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_250mk2_pb3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_750_cap1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_750_cap2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_750_cap3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_750_cap4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_850_cap1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_850_cap2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_850_cap3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_850_cap4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_900nxs2_cap1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_900nxs2_cap2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_900nxs2_cap3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_900nxs2_cap4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_900nxs2_cap5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_750mk2_cap1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_750mk2_cap2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_750mk2_cap3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_750mk2_cap4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_750mk2_cap5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_750mk2_pb1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_750mk2_pb2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_djm_opts_750mk2_pb3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dragonfly_quirk_db_scale.scale to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dragonfly_quirk_db_scale._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dragonfly_quirk_db_scale._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_djm_controls_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_djm_controls_info.160 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_djm_controls_info.161 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emuusb_set_samplerate(ptr noundef readonly %chip, i8 noundef zeroext %samplerate_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mixer_list = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 23
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %mixer_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %mixer_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond
  %id_elems = getelementptr i8, ptr %.pn, i32 16
  %1 = ptrtoint ptr %id_elems to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %id_elems, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 12
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %if.then

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %mixer.0.le = getelementptr i8, ptr %.pn, i32 -8
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %control, align 4
  %shl = shl i32 %6, 8
  %conv = zext i8 %samplerate_id to i32
  %call = tail call i32 @snd_usb_mixer_set_ctl_value(ptr noundef nonnull %4, i32 noundef 1, i32 noundef %shl, i32 noundef %conv) #12
  tail call void @snd_usb_mixer_notify_id(ptr noundef %mixer.0.le, i32 noundef 12) #12
  br label %for.end

for.end:                                          ; preds = %if.then, %for.cond.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_mixer_set_ctl_value(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_mixer_notify_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_mixer_apply_create_quirk(ptr noundef %mixer) local_unnamed_addr #0 align 64 {
entry:
  %name.i51.i = alloca [48 x i8], align 1
  %name.i47.i = alloca [48 x i8], align 1
  %name.i.i89 = alloca [64 x i8], align 1
  %name.i61.i = alloca [64 x i8], align 1
  %name.i44.i = alloca [64 x i8], align 1
  %name.i.i = alloca [64 x i8], align 1
  %knew.i = alloca %struct.snd_kcontrol_new, align 4
  %hwdep.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwdep.i) #12
  %0 = ptrtoint ptr %hwdep.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %hwdep.i, align 4, !annotation !473
  %1 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mixer, align 4
  %usb_id1.i = getelementptr inbounds %struct.snd_usb_audio, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %usb_id1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usb_id1.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %entry.if.end_crit_edge [
    i32 69087232, label %entry.if.end5.i_crit_edge
    i32 69087264, label %if.end5.fold.split.i
    i32 69087296, label %if.end5.fold.split79.i
    i32 69087298, label %if.end5.fold.split80.i
    i32 69087455, label %if.end5.fold.split81.i
    i32 69087799, label %if.end5.fold.split82.i
    i32 69087843, label %if.end5.fold.split83.i
    i32 69087304, label %if.end5.fold.split84.i
  ]

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end5.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.end5.fold.split79.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.end5.fold.split80.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.end5.fold.split81.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.end5.fold.split82.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.end5.fold.split83.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.end5.fold.split84.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end5.fold.split84.i, %if.end5.fold.split83.i, %if.end5.fold.split82.i, %if.end5.fold.split81.i, %if.end5.fold.split80.i, %if.end5.fold.split79.i, %if.end5.fold.split.i, %entry.if.end5.i_crit_edge
  %i.077.lcssa.i = phi i32 [ 0, %entry.if.end5.i_crit_edge ], [ 1, %if.end5.fold.split.i ], [ 2, %if.end5.fold.split79.i ], [ 3, %if.end5.fold.split80.i ], [ 4, %if.end5.fold.split81.i ], [ 5, %if.end5.fold.split82.i ], [ 6, %if.end5.fold.split83.i ], [ 7, %if.end5.fold.split84.i ]
  %arrayidx6.i = getelementptr [8 x %struct.rc_config], ptr @rc_configs, i32 0, i32 %i.077.lcssa.i
  %rc_cfg.i = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 8
  %6 = ptrtoint ptr %rc_cfg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx6.i, ptr %rc_cfg.i, align 4
  %packet_length.i = getelementptr [8 x %struct.rc_config], ptr @rc_configs, i32 0, i32 %i.077.lcssa.i, i32 3
  %7 = ptrtoint ptr %packet_length.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %packet_length.i, align 2
  %conv.i = zext i8 %8 to i32
  %rc_waitq.i = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %rc_waitq.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @snd_usb_soundblaster_remote_init.__key) #12
  %9 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mixer, align 4
  %card.i = getelementptr inbounds %struct.snd_usb_audio, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card.i, align 4
  %call.i = call i32 @snd_hwdep_new(ptr noundef %12, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull %hwdep.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9.i = icmp slt i32 %call.i, 0
  br i1 %cmp9.i, label %if.end5.i.snd_usb_soundblaster_remote_init.exit.thread_crit_edge, label %if.end12.i

if.end5.i.snd_usb_soundblaster_remote_init.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_usb_soundblaster_remote_init.exit.thread

if.end12.i:                                       ; preds = %if.end5.i
  %13 = ptrtoint ptr %hwdep.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwdep.i, align 4
  %name.i = getelementptr inbounds %struct.snd_hwdep, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mixer, align 4
  %card14.i = getelementptr inbounds %struct.snd_usb_audio, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %card14.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card14.i, align 4
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 3
  %call16.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 80, ptr noundef nonnull @.str.8, ptr noundef %shortname.i) #12
  %19 = ptrtoint ptr %hwdep.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hwdep.i, align 4
  %iface.i = getelementptr inbounds %struct.snd_hwdep, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %iface.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 15, ptr %iface.i, align 8
  %private_data.i = getelementptr inbounds %struct.snd_hwdep, ptr %20, i32 0, i32 10
  %22 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %mixer, ptr %private_data.i, align 4
  %read.i = getelementptr inbounds %struct.snd_hwdep, ptr %20, i32 0, i32 8, i32 1
  %23 = ptrtoint ptr %read.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @snd_usb_sbrc_hwdep_read, ptr %read.i, align 4
  %poll.i = getelementptr inbounds %struct.snd_hwdep, ptr %20, i32 0, i32 8, i32 5
  %24 = ptrtoint ptr %poll.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @snd_usb_sbrc_hwdep_poll, ptr %poll.i, align 4
  %exclusive.i = getelementptr inbounds %struct.snd_hwdep, ptr %20, i32 0, i32 16
  %25 = ptrtoint ptr %exclusive.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i = load i8, ptr %exclusive.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %exclusive.i, align 4
  %call18.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %rc_urb.i = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 11
  %26 = ptrtoint ptr %rc_urb.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call18.i, ptr %rc_urb.i, align 4
  %tobool.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool.not.i, label %if.end12.i.snd_usb_soundblaster_remote_init.exit.thread_crit_edge, label %if.end21.i

if.end12.i.snd_usb_soundblaster_remote_init.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_usb_soundblaster_remote_init.exit.thread

if.end21.i:                                       ; preds = %if.end12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3264, i32 noundef 8) #15
  %rc_setup_packet.i = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 12
  %28 = ptrtoint ptr %rc_setup_packet.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %rc_setup_packet.i, align 4
  %tobool24.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool24.not.i, label %if.then25.i, label %if.end28.i

if.then25.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %rc_urb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rc_urb.i, align 4
  call void @usb_free_urb(ptr noundef %30) #12
  %31 = ptrtoint ptr %rc_urb.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %rc_urb.i, align 4
  br label %snd_usb_soundblaster_remote_init.exit.thread

if.end28.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -95, ptr %call7.i.i, align 8
  %bRequest.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -123, ptr %bRequest.i, align 1
  %wValue.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %wValue.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %wValue.i, align 2
  %wIndex.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %wIndex.i, align 4
  %conv33.i = zext i8 %8 to i16
  %36 = shl nuw i16 %conv33.i, 8
  %wLength.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i, i32 0, i32 4
  %37 = ptrtoint ptr %wLength.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %wLength.i, align 2
  %38 = ptrtoint ptr %rc_urb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rc_urb.i, align 4
  %40 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mixer, align 4
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  %shl.i.i = shl i32 %45, 8
  %or40.i = or i32 %shl.i.i, -2147483520
  %rc_buffer.i = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 13
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 8
  %46 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 10
  %47 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or40.i, ptr %pipe2.i.i, align 4
  %setup_packet3.i.i = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 21
  %48 = ptrtoint ptr %setup_packet3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i, ptr %setup_packet3.i.i, align 4
  %transfer_buffer4.i.i = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 14
  %49 = ptrtoint ptr %transfer_buffer4.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %rc_buffer.i, ptr %transfer_buffer4.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 19
  %50 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv.i, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 28
  %51 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @snd_usb_soundblaster_remote_complete, ptr %complete.i.i, align 4
  %context5.i.i = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 27
  %52 = ptrtoint ptr %context5.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %mixer, ptr %context5.i.i, align 4
  br label %if.end

snd_usb_soundblaster_remote_init.exit.thread:     ; preds = %if.then25.i, %if.end12.i.snd_usb_soundblaster_remote_init.exit.thread_crit_edge, %if.end5.i.snd_usb_soundblaster_remote_init.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end12.i.snd_usb_soundblaster_remote_init.exit.thread_crit_edge ], [ %call.i, %if.end5.i.snd_usb_soundblaster_remote_init.exit.thread_crit_edge ], [ -12, %if.then25.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwdep.i) #12
  br label %cleanup

if.end:                                           ; preds = %if.end28.i, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwdep.i) #12
  %53 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mixer, align 4
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %usb_id, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %56, label %if.end.cleanup_crit_edge [
    i32 105152583, label %sw.bb
    i32 69087264, label %if.end.sw.bb2_crit_edge
    i32 69087296, label %if.end.sw.bb2_crit_edge162
    i32 69087298, label %if.end.sw.bb2_crit_edge163
    i32 69087455, label %if.end.sw.bb2_crit_edge164
    i32 69087304, label %if.end.sw.bb2_crit_edge165
    i32 69091097, label %sw.bb9
    i32 123936816, label %if.end.sw.bb11_crit_edge
    i32 123936817, label %if.end.sw.bb11_crit_edge166
    i32 123936896, label %if.end.sw.bb13_crit_edge
    i32 123936897, label %if.end.sw.bb13_crit_edge167
    i32 184883001, label %if.end.sw.bb15_crit_edge
    i32 184883011, label %if.end.sw.bb15_crit_edge168
    i32 184883104, label %if.end.sw.bb15_crit_edge169
    i32 227279107, label %sw.bb17
    i32 230297600, label %sw.bb19
    i32 399249425, label %sw.bb21
    i32 399249441, label %sw.bb23
    i32 537661464, label %sw.bb25
    i32 305496082, label %if.end.sw.bb27_crit_edge
    i32 305496066, label %if.end.sw.bb27_crit_edge170
    i32 305496068, label %if.end.sw.bb27_crit_edge171
    i32 305496084, label %if.end.sw.bb27_crit_edge172
    i32 305496076, label %if.end.sw.bb27_crit_edge173
    i32 305496579, label %if.end.sw.bb29_crit_edge
    i32 305496580, label %if.end.sw.bb29_crit_edge174
    i32 305496577, label %if.end.sw.bb29_crit_edge175
    i32 305496593, label %if.end.sw.bb29_crit_edge176
    i32 305496592, label %if.end.sw.bb29_crit_edge177
    i32 305496594, label %if.end.sw.bb29_crit_edge178
    i32 305496595, label %if.end.sw.bb29_crit_edge179
    i32 305496596, label %if.end.sw.bb29_crit_edge180
    i32 305496597, label %if.end.sw.bb29_crit_edge181
    i32 69087803, label %sw.bb31
    i32 198852628, label %sw.bb33
    i32 708394962, label %if.end.for.body.i.preheader_crit_edge
    i32 708394963, label %if.end.for.body.i.preheader_crit_edge182
    i32 708394964, label %if.end.for.body.i.preheader_crit_edge183
    i32 424608012, label %sw.bb37
    i32 708394928, label %sw.bb39
    i32 728956951, label %sw.bb41
    i32 149160319, label %sw.bb43
    i32 728956955, label %sw.bb45
    i32 149160291, label %sw.bb47
    i32 728956938, label %sw.bb49
  ]

if.end.for.body.i.preheader_crit_edge183:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.preheader

if.end.for.body.i.preheader_crit_edge182:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.preheader

if.end.for.body.i.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.preheader

if.end.sw.bb29_crit_edge181:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb29

if.end.sw.bb29_crit_edge180:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb29

if.end.sw.bb29_crit_edge179:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb29

if.end.sw.bb29_crit_edge178:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb29

if.end.sw.bb29_crit_edge177:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb29

if.end.sw.bb29_crit_edge176:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb29

if.end.sw.bb29_crit_edge175:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb29

if.end.sw.bb29_crit_edge174:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb29

if.end.sw.bb29_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb29

if.end.sw.bb27_crit_edge173:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb27

if.end.sw.bb27_crit_edge172:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb27

if.end.sw.bb27_crit_edge171:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb27

if.end.sw.bb27_crit_edge170:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb27

if.end.sw.bb27_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb27

if.end.sw.bb15_crit_edge169:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb15

if.end.sw.bb15_crit_edge168:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb15

if.end.sw.bb15_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb15

if.end.sw.bb13_crit_edge167:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13

if.end.sw.bb13_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13

if.end.sw.bb11_crit_edge166:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb11

if.end.sw.bb11_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb11

if.end.sw.bb2_crit_edge165:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

if.end.sw.bb2_crit_edge164:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

if.end.sw.bb2_crit_edge163:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

if.end.sw.bb2_crit_edge162:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i.preheader:                             ; preds = %if.end.for.body.i.preheader_crit_edge, %if.end.for.body.i.preheader_crit_edge182, %if.end.for.body.i.preheader_crit_edge183
  br label %for.body.i

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = call i32 @snd_us16x08_controls_create(ptr noundef %mixer) #12
  br label %cleanup

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge162, %if.end.sw.bb2_crit_edge163, %if.end.sw.bb2_crit_edge164, %if.end.sw.bb2_crit_edge165
  %name.i80 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i, i32 0, i32 3
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %knew.i) #12
  %58 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %56, label %if.end27.i [
    i32 69087455, label %sw.bb2.if.end27.1.i_crit_edge
    i32 69087298, label %sw.bb2.if.end27.1.i_crit_edge184
  ]

sw.bb2.if.end27.1.i_crit_edge184:                 ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.1.i

sw.bb2.if.end27.1.i_crit_edge:                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.1.i

if.end27.i:                                       ; preds = %sw.bb2
  %59 = call ptr @memcpy(ptr %knew.i, ptr @snd_audigy2nx_control, i32 44)
  %60 = ptrtoint ptr %name.i80 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.9, ptr %name.i80, align 4
  %61 = ptrtoint ptr %private_value.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 256, ptr %private_value.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %62 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %62, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end27.i.snd_audigy2nx_controls_create.exit_crit_edge, label %if.end.i.i

if.end27.i.snd_audigy2nx_controls_create.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_audigy2nx_controls_create.exit

if.end.i.i:                                       ; preds = %if.end27.i
  %63 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %mixer, ptr %call7.i.i.i.i, align 8
  %id5.i.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.i, i32 0, i32 3
  %64 = ptrtoint ptr %id5.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %id5.i.i, align 4
  %resume6.i.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.i, i32 0, i32 6
  %65 = ptrtoint ptr %resume6.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @snd_audigy2nx_led_resume, ptr %resume6.i.i, align 8
  %call7.i.i81 = call ptr @snd_ctl_new1(ptr noundef nonnull %knew.i, ptr noundef nonnull %call7.i.i.i.i) #12
  %tobool8.not.i.i = icmp eq ptr %call7.i.i81, null
  br i1 %tobool8.not.i.i, label %if.end.i.i.if.then9.i.i_crit_edge, label %add_single_ctl_with_resume.exit.i

if.end.i.i.if.then9.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end.i.2.i.if.then9.i.i_crit_edge, %if.end.i.1.i.if.then9.i.i_crit_edge, %if.end.i.i.if.then9.i.i_crit_edge
  %call7.i.i.i.lcssa60.i = phi ptr [ %call7.i.i.i.i, %if.end.i.i.if.then9.i.i_crit_edge ], [ %call7.i.i.i.1.i, %if.end.i.1.i.if.then9.i.i_crit_edge ], [ %call7.i.i.i.2.i, %if.end.i.2.i.if.then9.i.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.lcssa60.i) #12
  br label %snd_audigy2nx_controls_create.exit

add_single_ctl_with_resume.exit.i:                ; preds = %if.end.i.i
  %private_free.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i.i81, i32 0, i32 9
  %66 = ptrtoint ptr %private_free.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i.i, align 4
  %call11.i.i = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %call7.i.i81, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp28.i = icmp slt i32 %call11.i.i, 0
  br i1 %cmp28.i, label %add_single_ctl_with_resume.exit.i.snd_audigy2nx_controls_create.exit_crit_edge, label %add_single_ctl_with_resume.exit.i.if.end27.1.i_crit_edge

add_single_ctl_with_resume.exit.i.if.end27.1.i_crit_edge: ; preds = %add_single_ctl_with_resume.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.1.i

add_single_ctl_with_resume.exit.i.snd_audigy2nx_controls_create.exit_crit_edge: ; preds = %add_single_ctl_with_resume.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_audigy2nx_controls_create.exit

cleanup.i:                                        ; preds = %land.lhs.true11.2.i.cleanup.i_crit_edge, %land.lhs.true11.2.i.cleanup.i_crit_edge185, %land.lhs.true11.2.i.cleanup.i_crit_edge186, %land.lhs.true11.2.i.cleanup.i_crit_edge187
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew.i) #12
  br label %if.end6

if.end27.1.i:                                     ; preds = %add_single_ctl_with_resume.exit.i.if.end27.1.i_crit_edge, %sw.bb2.if.end27.1.i_crit_edge, %sw.bb2.if.end27.1.i_crit_edge184
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew.i) #12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %knew.i) #12
  %67 = call ptr @memcpy(ptr %knew.i, ptr @snd_audigy2nx_control, i32 44)
  %68 = ptrtoint ptr %name.i80 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.10, ptr %name.i80, align 4
  %69 = ptrtoint ptr %private_value.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 257, ptr %private_value.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %70 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.1.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.1.i = icmp eq ptr %call7.i.i.i.1.i, null
  br i1 %tobool.not.i.1.i, label %if.end27.1.i.snd_audigy2nx_controls_create.exit_crit_edge, label %if.end.i.1.i

if.end27.1.i.snd_audigy2nx_controls_create.exit_crit_edge: ; preds = %if.end27.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_audigy2nx_controls_create.exit

if.end.i.1.i:                                     ; preds = %if.end27.1.i
  %71 = ptrtoint ptr %call7.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %mixer, ptr %call7.i.i.i.1.i, align 8
  %id5.i.1.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.1.i, i32 0, i32 3
  %72 = ptrtoint ptr %id5.i.1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %id5.i.1.i, align 4
  %resume6.i.1.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.1.i, i32 0, i32 6
  %73 = ptrtoint ptr %resume6.i.1.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @snd_audigy2nx_led_resume, ptr %resume6.i.1.i, align 8
  %call7.i.1.i = call ptr @snd_ctl_new1(ptr noundef nonnull %knew.i, ptr noundef nonnull %call7.i.i.i.1.i) #12
  %tobool8.not.i.1.i = icmp eq ptr %call7.i.1.i, null
  br i1 %tobool8.not.i.1.i, label %if.end.i.1.i.if.then9.i.i_crit_edge, label %add_single_ctl_with_resume.exit.1.i

if.end.i.1.i.if.then9.i.i_crit_edge:              ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9.i.i

add_single_ctl_with_resume.exit.1.i:              ; preds = %if.end.i.1.i
  %private_free.i.1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i.1.i, i32 0, i32 9
  %74 = ptrtoint ptr %private_free.i.1.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i.1.i, align 4
  %call11.i.1.i = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i.1.i, ptr noundef nonnull %call7.i.1.i, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.1.i)
  %cmp28.1.i = icmp slt i32 %call11.i.1.i, 0
  br i1 %cmp28.1.i, label %add_single_ctl_with_resume.exit.1.i.snd_audigy2nx_controls_create.exit_crit_edge, label %land.lhs.true11.2.i

add_single_ctl_with_resume.exit.1.i.snd_audigy2nx_controls_create.exit_crit_edge: ; preds = %add_single_ctl_with_resume.exit.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_audigy2nx_controls_create.exit

land.lhs.true11.2.i:                              ; preds = %add_single_ctl_with_resume.exit.1.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew.i) #12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %knew.i) #12
  %75 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mixer, align 4
  %usb_id.2.i = getelementptr inbounds %struct.snd_usb_audio, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %usb_id.2.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %usb_id.2.i, align 4
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %78, label %if.end27.2.i [
    i32 69087296, label %land.lhs.true11.2.i.cleanup.i_crit_edge
    i32 69087298, label %land.lhs.true11.2.i.cleanup.i_crit_edge185
    i32 69087455, label %land.lhs.true11.2.i.cleanup.i_crit_edge186
    i32 69087304, label %land.lhs.true11.2.i.cleanup.i_crit_edge187
  ]

land.lhs.true11.2.i.cleanup.i_crit_edge187:       ; preds = %land.lhs.true11.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

land.lhs.true11.2.i.cleanup.i_crit_edge186:       ; preds = %land.lhs.true11.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

land.lhs.true11.2.i.cleanup.i_crit_edge185:       ; preds = %land.lhs.true11.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

land.lhs.true11.2.i.cleanup.i_crit_edge:          ; preds = %land.lhs.true11.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end27.2.i:                                     ; preds = %land.lhs.true11.2.i
  %80 = call ptr @memcpy(ptr %knew.i, ptr @snd_audigy2nx_control, i32 44)
  %81 = ptrtoint ptr %name.i80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @.str.11, ptr %name.i80, align 4
  %82 = ptrtoint ptr %private_value.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 258, ptr %private_value.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %83 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.2.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %83, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.2.i = icmp eq ptr %call7.i.i.i.2.i, null
  br i1 %tobool.not.i.2.i, label %if.end27.2.i.snd_audigy2nx_controls_create.exit_crit_edge, label %if.end.i.2.i

if.end27.2.i.snd_audigy2nx_controls_create.exit_crit_edge: ; preds = %if.end27.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_audigy2nx_controls_create.exit

if.end.i.2.i:                                     ; preds = %if.end27.2.i
  %84 = ptrtoint ptr %call7.i.i.i.2.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %mixer, ptr %call7.i.i.i.2.i, align 8
  %id5.i.2.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.2.i, i32 0, i32 3
  %85 = ptrtoint ptr %id5.i.2.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %id5.i.2.i, align 4
  %resume6.i.2.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.2.i, i32 0, i32 6
  %86 = ptrtoint ptr %resume6.i.2.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @snd_audigy2nx_led_resume, ptr %resume6.i.2.i, align 8
  %call7.i.2.i = call ptr @snd_ctl_new1(ptr noundef nonnull %knew.i, ptr noundef nonnull %call7.i.i.i.2.i) #12
  %tobool8.not.i.2.i = icmp eq ptr %call7.i.2.i, null
  br i1 %tobool8.not.i.2.i, label %if.end.i.2.i.if.then9.i.i_crit_edge, label %add_single_ctl_with_resume.exit.2.i

if.end.i.2.i.if.then9.i.i_crit_edge:              ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9.i.i

add_single_ctl_with_resume.exit.2.i:              ; preds = %if.end.i.2.i
  %private_free.i.2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i.2.i, i32 0, i32 9
  %87 = ptrtoint ptr %private_free.i.2.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i.2.i, align 4
  %call11.i.2.i = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i.2.i, ptr noundef nonnull %call7.i.2.i, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.2.i)
  %cmp28.2.i = icmp slt i32 %call11.i.2.i, 0
  br i1 %cmp28.2.i, label %add_single_ctl_with_resume.exit.2.i.snd_audigy2nx_controls_create.exit_crit_edge, label %for.inc.2.i

add_single_ctl_with_resume.exit.2.i.snd_audigy2nx_controls_create.exit_crit_edge: ; preds = %add_single_ctl_with_resume.exit.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_audigy2nx_controls_create.exit

for.inc.2.i:                                      ; preds = %add_single_ctl_with_resume.exit.2.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew.i) #12
  br label %if.end6

snd_audigy2nx_controls_create.exit:               ; preds = %add_single_ctl_with_resume.exit.2.i.snd_audigy2nx_controls_create.exit_crit_edge, %if.end27.2.i.snd_audigy2nx_controls_create.exit_crit_edge, %add_single_ctl_with_resume.exit.1.i.snd_audigy2nx_controls_create.exit_crit_edge, %if.end27.1.i.snd_audigy2nx_controls_create.exit_crit_edge, %add_single_ctl_with_resume.exit.i.snd_audigy2nx_controls_create.exit_crit_edge, %if.then9.i.i, %if.end27.i.snd_audigy2nx_controls_create.exit_crit_edge
  %call.retval.056.i = phi i32 [ -12, %if.then9.i.i ], [ %call11.i.i, %add_single_ctl_with_resume.exit.i.snd_audigy2nx_controls_create.exit_crit_edge ], [ -12, %if.end27.i.snd_audigy2nx_controls_create.exit_crit_edge ], [ -12, %if.end27.1.i.snd_audigy2nx_controls_create.exit_crit_edge ], [ %call11.i.1.i, %add_single_ctl_with_resume.exit.1.i.snd_audigy2nx_controls_create.exit_crit_edge ], [ -12, %if.end27.2.i.snd_audigy2nx_controls_create.exit_crit_edge ], [ %call11.i.2.i, %add_single_ctl_with_resume.exit.2.i.snd_audigy2nx_controls_create.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew.i) #12
  br label %cleanup

if.end6:                                          ; preds = %for.inc.2.i, %cleanup.i
  %88 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mixer, align 4
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %card, align 4
  %call.i82 = call i32 @snd_card_rw_proc_new(ptr noundef %91, ptr noundef nonnull @.str, ptr noundef %mixer, ptr noundef nonnull @snd_audigy2nx_proc_read, ptr noundef null) #12
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = call fastcc i32 @snd_emu0204_controls_create(ptr noundef %mixer)
  br label %cleanup

sw.bb11:                                          ; preds = %if.end.sw.bb11_crit_edge, %if.end.sw.bb11_crit_edge166
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %name.i.i) #12
  %92 = call ptr @memset(ptr %name.i.i, i32 255, i32 64)
  %93 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %56, label %sw.bb11.sw.epilog.i.i_crit_edge [
    i32 123936816, label %sw.bb.i.i
    i32 123936817, label %sw.bb1.i.i
  ]

sw.bb11.sw.epilog.i.i_crit_edge:                  ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i, %sw.bb.i.i, %sw.bb11.sw.epilog.i.i_crit_edge
  %cmp349.i.i = phi i1 [ false, %sw.bb11.sw.epilog.i.i_crit_edge ], [ true, %sw.bb1.i.i ], [ true, %sw.bb.i.i ]
  %num_outs.0.i.i = phi i32 [ 0, %sw.bb11.sw.epilog.i.i_crit_edge ], [ 8, %sw.bb1.i.i ], [ 6, %sw.bb.i.i ]
  %num_ins.0.i.i = phi i32 [ 0, %sw.bb11.sw.epilog.i.i_crit_edge ], [ 6, %sw.bb1.i.i ], [ 4, %sw.bb.i.i ]
  %add.i.i = add nuw nsw i32 %num_ins.0.i.i, %num_outs.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp51.not.i.i = icmp eq i32 %add.i.i, 0
  br i1 %cmp51.not.i.i, label %sw.epilog.i.i.if.end.i_crit_edge, label %for.cond2.preheader.lr.ph.i.i

sw.epilog.i.i.if.end.i_crit_edge:                 ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

for.cond2.preheader.lr.ph.i.i:                    ; preds = %sw.epilog.i.i
  %umax.i.i = call i32 @llvm.umax.i32(i32 %num_outs.0.i.i, i32 1) #12
  br label %for.cond2.preheader.i.i

for.cond2.preheader.i.i:                          ; preds = %for.inc19.i.i.for.cond2.preheader.i.i_crit_edge, %for.cond2.preheader.lr.ph.i.i
  %chan.052.i.i = phi i32 [ 0, %for.cond2.preheader.lr.ph.i.i ], [ %inc20.pre-phi.i.i, %for.inc19.i.i.for.cond2.preheader.i.i_crit_edge ]
  br i1 %cmp349.i.i, label %for.body4.lr.ph.i.i, label %for.cond2.preheader.for.inc19_crit_edge.i.i

for.cond2.preheader.for.inc19_crit_edge.i.i:      ; preds = %for.cond2.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %.pre.i.i = add nuw nsw i32 %chan.052.i.i, 1
  br label %for.inc19.i.i

for.body4.lr.ph.i.i:                              ; preds = %for.cond2.preheader.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %chan.052.i.i, i32 %num_outs.0.i.i)
  %cmp5.i.i = icmp ult i32 %chan.052.i.i, %num_outs.0.i.i
  %sub.i.i = add nuw nsw i32 %chan.052.i.i, 1
  %add9.i.i = sub i32 %sub.i.i, %num_outs.0.i.i
  %mul.i.i = mul nuw nsw i32 %chan.052.i.i, %num_outs.0.i.i
  br label %for.body4.i.i

for.cond2.i.i:                                    ; preds = %if.end.i.i85
  %exitcond.not.i.i = icmp eq i32 %add7.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.cond2.i.i.for.inc19.i.i_crit_edge, label %for.cond2.i.i.for.body4.i.i_crit_edge

for.cond2.i.i.for.body4.i.i_crit_edge:            ; preds = %for.cond2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body4.i.i

for.cond2.i.i.for.inc19.i.i_crit_edge:            ; preds = %for.cond2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc19.i.i

for.body4.i.i:                                    ; preds = %for.cond2.i.i.for.body4.i.i_crit_edge, %for.body4.lr.ph.i.i
  %out.050.i.i = phi i32 [ 0, %for.body4.lr.ph.i.i ], [ %add7.i.i, %for.cond2.i.i.for.body4.i.i_crit_edge ]
  %add7.i.i = add nuw nsw i32 %out.050.i.i, 1
  br i1 %cmp5.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i.i, i32 noundef 64, ptr noundef nonnull @.str.24, i32 noundef %sub.i.i, i32 noundef %add7.i.i) #12
  br label %if.end.i.i85

if.else.i.i:                                      ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call11.i.i83 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i.i, i32 noundef 64, ptr noundef nonnull @.str.25, i32 noundef %add9.i.i, i32 noundef %add7.i.i) #12
  br label %if.end.i.i85

if.end.i.i85:                                     ; preds = %if.else.i.i, %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out.050.i.i)
  %cmp12.i.i = icmp eq i32 %out.050.i.i, 0
  %sub13.i.i = add nsw i32 %out.050.i.i, -1
  %shl.i.i84 = shl nuw i32 1, %sub13.i.i
  %cond.i.i = select i1 %cmp12.i.i, i32 0, i32 %shl.i.i84
  %call15.i.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 64, i32 noundef 1, i32 noundef %cond.i.i, i32 noundef 4, i32 noundef %mul.i.i, ptr noundef nonnull %name.i.i, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %cmp16.i.i = icmp slt i32 %call15.i.i, 0
  br i1 %cmp16.i.i, label %snd_c400_create_vol_ctls.exit.i, label %for.cond2.i.i

for.inc19.i.i:                                    ; preds = %for.cond2.i.i.for.inc19.i.i_crit_edge, %for.cond2.preheader.for.inc19_crit_edge.i.i
  %inc20.pre-phi.i.i = phi i32 [ %.pre.i.i, %for.cond2.preheader.for.inc19_crit_edge.i.i ], [ %sub.i.i, %for.cond2.i.i.for.inc19.i.i_crit_edge ]
  %exitcond56.not.i.i = icmp eq i32 %inc20.pre-phi.i.i, %add.i.i
  br i1 %exitcond56.not.i.i, label %for.inc19.i.i.if.end.i_crit_edge, label %for.inc19.i.i.for.cond2.preheader.i.i_crit_edge

for.inc19.i.i.for.cond2.preheader.i.i_crit_edge:  ; preds = %for.inc19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond2.preheader.i.i

for.inc19.i.i.if.end.i_crit_edge:                 ; preds = %for.inc19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

snd_c400_create_vol_ctls.exit.i:                  ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name.i.i) #12
  br label %cleanup

if.end.i:                                         ; preds = %for.inc19.i.i.if.end.i_crit_edge, %sw.epilog.i.i.if.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name.i.i) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %name.i44.i) #12
  %94 = call ptr @memset(ptr %name.i44.i, i32 255, i32 64)
  %95 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mixer, align 4
  %usb_id.i45.i = getelementptr inbounds %struct.snd_usb_audio, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %usb_id.i45.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %usb_id.i45.i, align 4
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %98, label %if.end.i.sw.epilog.i51.i_crit_edge [
    i32 123936816, label %sw.bb.i46.i
    i32 123936817, label %sw.bb1.i47.i
  ]

if.end.i.sw.epilog.i51.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i51.i

sw.bb.i46.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i51.i

sw.bb1.i47.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i51.i

sw.epilog.i51.i:                                  ; preds = %sw.bb1.i47.i, %sw.bb.i46.i, %if.end.i.sw.epilog.i51.i_crit_edge
  %num_outs.0.i48.i = phi i32 [ 0, %if.end.i.sw.epilog.i51.i_crit_edge ], [ 8, %sw.bb1.i47.i ], [ 6, %sw.bb.i46.i ]
  %num_ins.0.i49.i = phi i32 [ 0, %if.end.i.sw.epilog.i51.i_crit_edge ], [ 6, %sw.bb1.i47.i ], [ 4, %sw.bb.i46.i ]
  %add.i50.i = add nuw nsw i32 %num_ins.0.i49.i, %num_outs.0.i48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i50.i)
  %cmp32.not.i.i = icmp eq i32 %add.i50.i, 0
  br i1 %cmp32.not.i.i, label %sw.epilog.i51.i.if.end4.i_crit_edge, label %sw.epilog.i51.i.for.body.i.i_crit_edge

sw.epilog.i51.i.for.body.i.i_crit_edge:           ; preds = %sw.epilog.i51.i
  br label %for.body.i.i

sw.epilog.i51.i.if.end4.i_crit_edge:              ; preds = %sw.epilog.i51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

for.cond.i.i:                                     ; preds = %if.end.i59.i
  %exitcond.not.i53.i = icmp eq i32 %add3.i.i, %add.i50.i
  br i1 %exitcond.not.i53.i, label %for.cond.i.i.if.end4.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.cond.i.i.if.end4.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %sw.epilog.i51.i.for.body.i.i_crit_edge
  %chan.033.i.i = phi i32 [ %add3.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %sw.epilog.i51.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %chan.033.i.i, i32 %num_outs.0.i48.i)
  %cmp2.i.i = icmp ult i32 %chan.033.i.i, %num_outs.0.i48.i
  %add3.i.i = add nuw nsw i32 %chan.033.i.i, 1
  br i1 %cmp2.i.i, label %if.then.i55.i, label %if.else.i56.i

if.then.i55.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i54.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i44.i, i32 noundef 64, ptr noundef nonnull @.str.26, i32 noundef %add3.i.i) #12
  br label %if.end.i59.i

if.else.i56.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add5.i.i = sub nsw i32 %add3.i.i, %num_outs.0.i48.i
  %call6.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i44.i, i32 noundef 64, ptr noundef nonnull @.str.27, i32 noundef %add5.i.i) #12
  br label %if.end.i59.i

if.end.i59.i:                                     ; preds = %if.else.i56.i, %if.then.i55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chan.033.i.i)
  %cmp7.i.i = icmp eq i32 %chan.033.i.i, 0
  %sub8.i.i = add nsw i32 %chan.033.i.i, -1
  %shl.i57.i = shl nuw i32 1, %sub8.i.i
  %cond.i58.i = select i1 %cmp7.i.i, i32 0, i32 %shl.i57.i
  %call.i.i.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 66, i32 noundef 1, i32 noundef %cond.i58.i, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %name.i44.i, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp11.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp11.i.i, label %snd_c400_create_effect_vol_ctls.exit.i, label %for.cond.i.i

snd_c400_create_effect_vol_ctls.exit.i:           ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name.i44.i) #12
  br label %cleanup

if.end4.i:                                        ; preds = %for.cond.i.i.if.end4.i_crit_edge, %sw.epilog.i51.i.if.end4.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name.i44.i) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %name.i61.i) #12
  %100 = call ptr @memset(ptr %name.i61.i, i32 255, i32 64)
  %101 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mixer, align 4
  %usb_id.i62.i = getelementptr inbounds %struct.snd_usb_audio, ptr %102, i32 0, i32 4
  %103 = ptrtoint ptr %usb_id.i62.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %usb_id.i62.i, align 4
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %104, label %if.end4.i.sw.epilog.i66.i_crit_edge [
    i32 123936816, label %sw.bb.i63.i
    i32 123936817, label %sw.bb1.i64.i
  ]

if.end4.i.sw.epilog.i66.i_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i66.i

sw.bb.i63.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i66.i

sw.bb1.i64.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i66.i

sw.epilog.i66.i:                                  ; preds = %sw.bb1.i64.i, %sw.bb.i63.i, %if.end4.i.sw.epilog.i66.i_crit_edge
  %num_outs.0.i65.i = phi i32 [ 0, %if.end4.i.sw.epilog.i66.i_crit_edge ], [ 8, %sw.bb1.i64.i ], [ 6, %sw.bb.i63.i ]
  %offset.0.i.i = phi i32 [ 0, %if.end4.i.sw.epilog.i66.i_crit_edge ], [ 112, %sw.bb1.i64.i ], [ 60, %sw.bb.i63.i ]
  br label %for.cond.i68.i

for.cond.i68.i:                                   ; preds = %cond.end.i.i.for.cond.i68.i_crit_edge, %sw.epilog.i66.i
  %chan.0.i.i = phi i32 [ 0, %sw.epilog.i66.i ], [ %add.i69.i, %cond.end.i.i.for.cond.i68.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %chan.0.i.i, i32 %num_outs.0.i65.i)
  %exitcond.not.i67.i = icmp eq i32 %chan.0.i.i, %num_outs.0.i65.i
  br i1 %exitcond.not.i67.i, label %if.end8.i, label %for.body.i72.i

for.body.i72.i:                                   ; preds = %for.cond.i68.i
  %add.i69.i = add nuw nsw i32 %chan.0.i.i, 1
  %call.i70.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i61.i, i32 noundef 64, ptr noundef nonnull @.str.28, i32 noundef %add.i69.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chan.0.i.i)
  %cmp2.i71.i = icmp eq i32 %chan.0.i.i, 0
  br i1 %cmp2.i71.i, label %for.body.i72.i.cond.end.i.i_crit_edge, label %cond.false.i.i

for.body.i72.i.cond.end.i.i_crit_edge:            ; preds = %for.body.i72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %for.body.i72.i
  call void @__sanitizer_cov_trace_pc() #14
  %rem.i.i = and i32 %chan.0.i.i, 1
  %mul.i73.i = mul nuw nsw i32 %rem.i.i, %num_outs.0.i65.i
  %add3.i74.i = add nsw i32 %chan.0.i.i, -1
  %sub.i75.i = add i32 %add3.i74.i, %mul.i73.i
  %shl.i76.i = shl nuw i32 1, %sub.i75.i
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %for.body.i72.i.cond.end.i.i_crit_edge
  %cond.i77.i = phi i32 [ %shl.i76.i, %cond.false.i.i ], [ 0, %for.body.i72.i.cond.end.i.i_crit_edge ]
  %call5.i.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 64, i32 noundef 1, i32 noundef %cond.i77.i, i32 noundef 4, i32 noundef %offset.0.i.i, ptr noundef nonnull %name.i61.i, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  %cmp6.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp6.i.i, label %snd_c400_create_effect_ret_vol_ctls.exit.thread.i, label %cond.end.i.i.for.cond.i68.i_crit_edge

cond.end.i.i.for.cond.i68.i_crit_edge:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i68.i

snd_c400_create_effect_ret_vol_ctls.exit.thread.i: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name.i61.i) #12
  br label %cleanup

if.end8.i:                                        ; preds = %for.cond.i68.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name.i61.i) #12
  %call9.i = call fastcc i32 @snd_ftu_create_effect_switch(ptr noundef %mixer, i32 noundef 2, i32 noundef 67) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end8.i.cleanup_crit_edge, label %if.end12.i86

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12.i86:                                     ; preds = %if.end8.i
  %call.i.i79.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 67, i32 noundef 3, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef nonnull @snd_c400_create_effect_volume_ctl.name, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i79.i)
  %cmp14.i = icmp slt i32 %call.i.i79.i, 0
  br i1 %cmp14.i, label %if.end12.i86.cleanup_crit_edge, label %if.end16.i

if.end12.i86.cleanup_crit_edge:                   ; preds = %if.end12.i86
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16.i:                                       ; preds = %if.end12.i86
  %call.i.i80.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 67, i32 noundef 4, i32 noundef 0, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @snd_c400_create_effect_duration_ctl.name, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i80.i)
  %cmp18.i = icmp slt i32 %call.i.i80.i, 0
  br i1 %cmp18.i, label %if.end16.i.cleanup_crit_edge, label %if.end20.i

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i81.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 67, i32 noundef 5, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef nonnull @snd_c400_create_effect_feedback_ctl.name, ptr noundef null) #12
  %106 = call i32 @llvm.smin.i32(i32 %call.i.i81.i, i32 0) #12
  br label %cleanup

sw.bb13:                                          ; preds = %if.end.sw.bb13_crit_edge, %if.end.sw.bb13_crit_edge167
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %name.i.i89) #12
  %107 = call ptr @memset(ptr %name.i.i89, i32 255, i32 64)
  br label %for.body.i.i91

for.body.i.i91:                                   ; preds = %for.cond9.7.i.i.for.body.i.i91_crit_edge, %sw.bb13
  %out.055.i.i = phi i32 [ 0, %sw.bb13 ], [ %add.i.i90, %for.cond9.7.i.i.for.body.i.i91_crit_edge ]
  %add.i.i90 = add nuw nsw i32 %out.055.i.i, 1
  br label %for.cond1.i.i

for.cond1.i.i:                                    ; preds = %for.body3.i.i.for.cond1.i.i_crit_edge, %for.body.i.i91
  %in.0.i.i = phi i32 [ 0, %for.body.i.i91 ], [ %add4.i.i, %for.body3.i.i.for.cond1.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %in.0.i.i)
  %exitcond.not.i.i92 = icmp eq i32 %in.0.i.i, 8
  br i1 %exitcond.not.i.i92, label %for.body11.preheader.i.i, label %for.body3.i.i

for.body11.preheader.i.i:                         ; preds = %for.cond1.i.i
  %call15.i.i93 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i.i89, i32 noundef 64, ptr noundef nonnull @.str.39, i32 noundef 1, i32 noundef %add.i.i90) #12
  %call.i51.i.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 5, i32 noundef %add.i.i90, i32 noundef 256, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %name.i.i89, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i.i)
  %cmp18.i.i = icmp slt i32 %call.i51.i.i, 0
  br i1 %cmp18.i.i, label %for.body11.preheader.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge, label %for.cond9.i.i

for.body11.preheader.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge: ; preds = %for.body11.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_ftu_create_volume_ctls.exit.thread.i

for.body3.i.i:                                    ; preds = %for.cond1.i.i
  %shl.i.i94 = shl nuw nsw i32 1, %in.0.i.i
  %add4.i.i = add nuw nsw i32 %in.0.i.i, 1
  %call.i.i95 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i.i89, i32 noundef 64, ptr noundef nonnull @.str.38, i32 noundef %add4.i.i, i32 noundef %add.i.i90) #12
  %call.i.i.i96 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 5, i32 noundef %add.i.i90, i32 noundef %shl.i.i94, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %name.i.i89, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  %cmp8.i.i = icmp slt i32 %call.i.i.i96, 0
  br i1 %cmp8.i.i, label %for.body3.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge, label %for.body3.i.i.for.cond1.i.i_crit_edge

for.body3.i.i.for.cond1.i.i_crit_edge:            ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.i.i

for.body3.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge: ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_ftu_create_volume_ctls.exit.thread.i

for.cond9.i.i:                                    ; preds = %for.body11.preheader.i.i
  %call15.1.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i.i89, i32 noundef 64, ptr noundef nonnull @.str.39, i32 noundef 2, i32 noundef %add.i.i90) #12
  %call.i51.1.i.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 5, i32 noundef %add.i.i90, i32 noundef 512, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %name.i.i89, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.1.i.i)
  %cmp18.1.i.i = icmp slt i32 %call.i51.1.i.i, 0
  br i1 %cmp18.1.i.i, label %for.cond9.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge, label %for.cond9.1.i.i

for.cond9.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge: ; preds = %for.cond9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_ftu_create_volume_ctls.exit.thread.i

for.cond9.1.i.i:                                  ; preds = %for.cond9.i.i
  %call15.2.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i.i89, i32 noundef 64, ptr noundef nonnull @.str.39, i32 noundef 3, i32 noundef %add.i.i90) #12
  %call.i51.2.i.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 5, i32 noundef %add.i.i90, i32 noundef 1024, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %name.i.i89, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.2.i.i)
  %cmp18.2.i.i = icmp slt i32 %call.i51.2.i.i, 0
  br i1 %cmp18.2.i.i, label %for.cond9.1.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge, label %for.cond9.2.i.i

for.cond9.1.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge: ; preds = %for.cond9.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_ftu_create_volume_ctls.exit.thread.i

for.cond9.2.i.i:                                  ; preds = %for.cond9.1.i.i
  %call15.3.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i.i89, i32 noundef 64, ptr noundef nonnull @.str.39, i32 noundef 4, i32 noundef %add.i.i90) #12
  %call.i51.3.i.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 5, i32 noundef %add.i.i90, i32 noundef 2048, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %name.i.i89, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.3.i.i)
  %cmp18.3.i.i = icmp slt i32 %call.i51.3.i.i, 0
  br i1 %cmp18.3.i.i, label %for.cond9.2.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge, label %for.cond9.3.i.i

for.cond9.2.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge: ; preds = %for.cond9.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_ftu_create_volume_ctls.exit.thread.i

for.cond9.3.i.i:                                  ; preds = %for.cond9.2.i.i
  %call15.4.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i.i89, i32 noundef 64, ptr noundef nonnull @.str.39, i32 noundef 5, i32 noundef %add.i.i90) #12
  %call.i51.4.i.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 5, i32 noundef %add.i.i90, i32 noundef 4096, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %name.i.i89, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.4.i.i)
  %cmp18.4.i.i = icmp slt i32 %call.i51.4.i.i, 0
  br i1 %cmp18.4.i.i, label %for.cond9.3.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge, label %for.cond9.4.i.i

for.cond9.3.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge: ; preds = %for.cond9.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_ftu_create_volume_ctls.exit.thread.i

for.cond9.4.i.i:                                  ; preds = %for.cond9.3.i.i
  %call15.5.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i.i89, i32 noundef 64, ptr noundef nonnull @.str.39, i32 noundef 6, i32 noundef %add.i.i90) #12
  %call.i51.5.i.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 5, i32 noundef %add.i.i90, i32 noundef 8192, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %name.i.i89, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.5.i.i)
  %cmp18.5.i.i = icmp slt i32 %call.i51.5.i.i, 0
  br i1 %cmp18.5.i.i, label %for.cond9.4.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge, label %for.cond9.5.i.i

for.cond9.4.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge: ; preds = %for.cond9.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_ftu_create_volume_ctls.exit.thread.i

for.cond9.5.i.i:                                  ; preds = %for.cond9.4.i.i
  %call15.6.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i.i89, i32 noundef 64, ptr noundef nonnull @.str.39, i32 noundef 7, i32 noundef %add.i.i90) #12
  %call.i51.6.i.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 5, i32 noundef %add.i.i90, i32 noundef 16384, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %name.i.i89, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.6.i.i)
  %cmp18.6.i.i = icmp slt i32 %call.i51.6.i.i, 0
  br i1 %cmp18.6.i.i, label %for.cond9.5.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge, label %for.cond9.6.i.i

for.cond9.5.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge: ; preds = %for.cond9.5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_ftu_create_volume_ctls.exit.thread.i

for.cond9.6.i.i:                                  ; preds = %for.cond9.5.i.i
  %call15.7.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i.i89, i32 noundef 64, ptr noundef nonnull @.str.39, i32 noundef 8, i32 noundef %add.i.i90) #12
  %call.i51.7.i.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 5, i32 noundef %add.i.i90, i32 noundef 32768, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %name.i.i89, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.7.i.i)
  %cmp18.7.i.i = icmp slt i32 %call.i51.7.i.i, 0
  br i1 %cmp18.7.i.i, label %for.cond9.6.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge, label %for.cond9.7.i.i

for.cond9.6.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge: ; preds = %for.cond9.6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_ftu_create_volume_ctls.exit.thread.i

for.cond9.7.i.i:                                  ; preds = %for.cond9.6.i.i
  %exitcond60.not.i.i = icmp eq i32 %add.i.i90, 8
  br i1 %exitcond60.not.i.i, label %if.end.i97, label %for.cond9.7.i.i.for.body.i.i91_crit_edge

for.cond9.7.i.i.for.body.i.i91_crit_edge:         ; preds = %for.cond9.7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i91

snd_ftu_create_volume_ctls.exit.thread.i:         ; preds = %for.cond9.6.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge, %for.cond9.5.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge, %for.cond9.4.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge, %for.cond9.3.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge, %for.cond9.2.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge, %for.cond9.1.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge, %for.cond9.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge, %for.body3.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge, %for.body11.preheader.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i.i96, %for.body3.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge ], [ %call.i51.i.i, %for.body11.preheader.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge ], [ %call.i51.1.i.i, %for.cond9.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge ], [ %call.i51.2.i.i, %for.cond9.1.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge ], [ %call.i51.3.i.i, %for.cond9.2.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge ], [ %call.i51.4.i.i, %for.cond9.3.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge ], [ %call.i51.5.i.i, %for.cond9.4.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge ], [ %call.i51.6.i.i, %for.cond9.5.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge ], [ %call.i51.7.i.i, %for.cond9.6.i.i.snd_ftu_create_volume_ctls.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name.i.i89) #12
  br label %cleanup

if.end.i97:                                       ; preds = %for.cond9.7.i.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name.i.i89) #12
  %call1.i = call fastcc i32 @snd_ftu_create_effect_switch(ptr noundef %mixer, i32 noundef 1, i32 noundef 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i97.cleanup_crit_edge, label %if.end4.i98

if.end.i97.cleanup_crit_edge:                     ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.i98:                                      ; preds = %if.end.i97
  %call.i.i44.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 6, i32 noundef 2, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef nonnull @snd_ftu_create_effect_volume_ctl.name, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44.i)
  %cmp6.i = icmp slt i32 %call.i.i44.i, 0
  br i1 %cmp6.i, label %if.end4.i98.cleanup_crit_edge, label %if.end8.i100

if.end4.i98.cleanup_crit_edge:                    ; preds = %if.end4.i98
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i100:                                     ; preds = %if.end4.i98
  %call.i.i45.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 6, i32 noundef 3, i32 noundef 0, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @snd_ftu_create_effect_duration_ctl.name, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i45.i)
  %cmp10.i99 = icmp slt i32 %call.i.i45.i, 0
  br i1 %cmp10.i99, label %if.end8.i100.cleanup_crit_edge, label %if.end12.i102

if.end8.i100.cleanup_crit_edge:                   ; preds = %if.end8.i100
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12.i102:                                    ; preds = %if.end8.i100
  %call.i.i46.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 6, i32 noundef 4, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef nonnull @snd_ftu_create_effect_feedback_ctl.name, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i46.i)
  %cmp14.i101 = icmp slt i32 %call.i.i46.i, 0
  br i1 %cmp14.i101, label %if.end12.i102.cleanup_crit_edge, label %if.end16.i103

if.end12.i102.cleanup_crit_edge:                  ; preds = %if.end12.i102
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16.i103:                                    ; preds = %if.end12.i102
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %name.i47.i) #12
  %108 = call ptr @memset(ptr %name.i47.i, i32 255, i32 48)
  %call.i48.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i47.i, i32 noundef 48, ptr noundef nonnull @.str.40, i32 noundef 1) #12
  %call.i.i49.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 7, i32 noundef 7, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %name.i47.i, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49.i)
  %cmp3.i.i = icmp slt i32 %call.i.i49.i, 0
  br i1 %cmp3.i.i, label %if.end16.i103.snd_ftu_create_effect_return_ctls.exit.thread.i_crit_edge, label %for.cond.1.i.i

if.end16.i103.snd_ftu_create_effect_return_ctls.exit.thread.i_crit_edge: ; preds = %if.end16.i103
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_ftu_create_effect_return_ctls.exit.thread.i

for.cond.1.i.i:                                   ; preds = %if.end16.i103
  %call.1.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i47.i, i32 noundef 48, ptr noundef nonnull @.str.40, i32 noundef 2) #12
  %call.i.1.i.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 7, i32 noundef 7, i32 noundef 2, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %name.i47.i, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i.i)
  %cmp3.1.i.i = icmp slt i32 %call.i.1.i.i, 0
  br i1 %cmp3.1.i.i, label %for.cond.1.i.i.snd_ftu_create_effect_return_ctls.exit.thread.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.snd_ftu_create_effect_return_ctls.exit.thread.i_crit_edge: ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_ftu_create_effect_return_ctls.exit.thread.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %call.2.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i47.i, i32 noundef 48, ptr noundef nonnull @.str.40, i32 noundef 3) #12
  %call.i.2.i.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 7, i32 noundef 7, i32 noundef 4, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %name.i47.i, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i.i)
  %cmp3.2.i.i = icmp slt i32 %call.i.2.i.i, 0
  br i1 %cmp3.2.i.i, label %for.cond.2.i.i.snd_ftu_create_effect_return_ctls.exit.thread.i_crit_edge, label %snd_ftu_create_effect_return_ctls.exit.i

for.cond.2.i.i.snd_ftu_create_effect_return_ctls.exit.thread.i_crit_edge: ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_ftu_create_effect_return_ctls.exit.thread.i

snd_ftu_create_effect_return_ctls.exit.thread.i:  ; preds = %for.cond.2.i.i.snd_ftu_create_effect_return_ctls.exit.thread.i_crit_edge, %for.cond.1.i.i.snd_ftu_create_effect_return_ctls.exit.thread.i_crit_edge, %if.end16.i103.snd_ftu_create_effect_return_ctls.exit.thread.i_crit_edge
  %retval.0.i50.ph.i = phi i32 [ %call.i.2.i.i, %for.cond.2.i.i.snd_ftu_create_effect_return_ctls.exit.thread.i_crit_edge ], [ %call.i.1.i.i, %for.cond.1.i.i.snd_ftu_create_effect_return_ctls.exit.thread.i_crit_edge ], [ %call.i.i49.i, %if.end16.i103.snd_ftu_create_effect_return_ctls.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %name.i47.i) #12
  br label %cleanup

snd_ftu_create_effect_return_ctls.exit.i:         ; preds = %for.cond.2.i.i
  %call.3.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i47.i, i32 noundef 48, ptr noundef nonnull @.str.40, i32 noundef 4) #12
  %call.i.3.i.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 7, i32 noundef 7, i32 noundef 8, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %name.i47.i, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  %109 = call i32 @llvm.smin.i32(i32 %call.i.3.i.i, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %name.i47.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i.i)
  %cmp18.i104 = icmp slt i32 %call.i.3.i.i, 0
  br i1 %cmp18.i104, label %snd_ftu_create_effect_return_ctls.exit.i.cleanup_crit_edge, label %if.end20.i105

snd_ftu_create_effect_return_ctls.exit.i.cleanup_crit_edge: ; preds = %snd_ftu_create_effect_return_ctls.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20.i105:                                    ; preds = %snd_ftu_create_effect_return_ctls.exit.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %name.i51.i) #12
  %110 = call ptr @memset(ptr %name.i51.i, i32 255, i32 48)
  br label %for.cond.i.i106

for.cond.i.i106:                                  ; preds = %for.body.i58.i.for.cond.i.i106_crit_edge, %if.end20.i105
  %ch.0.i.i = phi i32 [ 0, %if.end20.i105 ], [ %add.i54.i, %for.body.i58.i.for.cond.i.i106_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %ch.0.i.i)
  %exitcond.not.i52.i = icmp eq i32 %ch.0.i.i, 8
  br i1 %exitcond.not.i52.i, label %for.body6.preheader.i.i, label %for.body.i58.i

for.body6.preheader.i.i:                          ; preds = %for.cond.i.i106
  %call9.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i51.i, i32 noundef 48, ptr noundef nonnull @.str.42, i32 noundef 1) #12
  %call.i36.i.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 5, i32 noundef 9, i32 noundef 256, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %name.i51.i, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i.i)
  %cmp12.i.i107 = icmp slt i32 %call.i36.i.i, 0
  br i1 %cmp12.i.i107, label %for.body6.preheader.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge, label %for.cond4.i.i

for.body6.preheader.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge: ; preds = %for.body6.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_ftu_create_effect_send_ctls.exit.i

for.body.i58.i:                                   ; preds = %for.cond.i.i106
  %shl.i53.i = shl nuw nsw i32 1, %ch.0.i.i
  %add.i54.i = add nuw nsw i32 %ch.0.i.i, 1
  %call.i55.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i51.i, i32 noundef 48, ptr noundef nonnull @.str.41, i32 noundef %add.i54.i) #12
  %call.i.i56.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 5, i32 noundef 9, i32 noundef %shl.i53.i, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %name.i51.i, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  %cmp3.i57.i = icmp slt i32 %call.i.i56.i, 0
  br i1 %cmp3.i57.i, label %for.body.i58.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge, label %for.body.i58.i.for.cond.i.i106_crit_edge

for.body.i58.i.for.cond.i.i106_crit_edge:         ; preds = %for.body.i58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i106

for.body.i58.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge: ; preds = %for.body.i58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_ftu_create_effect_send_ctls.exit.i

for.cond4.i.i:                                    ; preds = %for.body6.preheader.i.i
  %call9.1.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i51.i, i32 noundef 48, ptr noundef nonnull @.str.42, i32 noundef 2) #12
  %call.i36.1.i.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 5, i32 noundef 9, i32 noundef 512, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %name.i51.i, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.1.i.i)
  %cmp12.1.i.i = icmp slt i32 %call.i36.1.i.i, 0
  br i1 %cmp12.1.i.i, label %for.cond4.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge, label %for.cond4.1.i.i

for.cond4.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge: ; preds = %for.cond4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_ftu_create_effect_send_ctls.exit.i

for.cond4.1.i.i:                                  ; preds = %for.cond4.i.i
  %call9.2.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i51.i, i32 noundef 48, ptr noundef nonnull @.str.42, i32 noundef 3) #12
  %call.i36.2.i.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 5, i32 noundef 9, i32 noundef 1024, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %name.i51.i, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.2.i.i)
  %cmp12.2.i.i = icmp slt i32 %call.i36.2.i.i, 0
  br i1 %cmp12.2.i.i, label %for.cond4.1.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge, label %for.cond4.2.i.i

for.cond4.1.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge: ; preds = %for.cond4.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_ftu_create_effect_send_ctls.exit.i

for.cond4.2.i.i:                                  ; preds = %for.cond4.1.i.i
  %call9.3.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i51.i, i32 noundef 48, ptr noundef nonnull @.str.42, i32 noundef 4) #12
  %call.i36.3.i.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 5, i32 noundef 9, i32 noundef 2048, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %name.i51.i, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.3.i.i)
  %cmp12.3.i.i = icmp slt i32 %call.i36.3.i.i, 0
  br i1 %cmp12.3.i.i, label %for.cond4.2.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge, label %for.cond4.3.i.i

for.cond4.2.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge: ; preds = %for.cond4.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_ftu_create_effect_send_ctls.exit.i

for.cond4.3.i.i:                                  ; preds = %for.cond4.2.i.i
  %call9.4.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i51.i, i32 noundef 48, ptr noundef nonnull @.str.42, i32 noundef 5) #12
  %call.i36.4.i.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 5, i32 noundef 9, i32 noundef 4096, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %name.i51.i, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.4.i.i)
  %cmp12.4.i.i = icmp slt i32 %call.i36.4.i.i, 0
  br i1 %cmp12.4.i.i, label %for.cond4.3.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge, label %for.cond4.4.i.i

for.cond4.3.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge: ; preds = %for.cond4.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_ftu_create_effect_send_ctls.exit.i

for.cond4.4.i.i:                                  ; preds = %for.cond4.3.i.i
  %call9.5.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i51.i, i32 noundef 48, ptr noundef nonnull @.str.42, i32 noundef 6) #12
  %call.i36.5.i.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 5, i32 noundef 9, i32 noundef 8192, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %name.i51.i, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.5.i.i)
  %cmp12.5.i.i = icmp slt i32 %call.i36.5.i.i, 0
  br i1 %cmp12.5.i.i, label %for.cond4.4.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge, label %for.cond4.5.i.i

for.cond4.4.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge: ; preds = %for.cond4.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_ftu_create_effect_send_ctls.exit.i

for.cond4.5.i.i:                                  ; preds = %for.cond4.4.i.i
  %call9.6.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i51.i, i32 noundef 48, ptr noundef nonnull @.str.42, i32 noundef 7) #12
  %call.i36.6.i.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 5, i32 noundef 9, i32 noundef 16384, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %name.i51.i, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.6.i.i)
  %cmp12.6.i.i = icmp slt i32 %call.i36.6.i.i, 0
  br i1 %cmp12.6.i.i, label %for.cond4.5.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge, label %for.cond4.6.i.i

for.cond4.5.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge: ; preds = %for.cond4.5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_ftu_create_effect_send_ctls.exit.i

for.cond4.6.i.i:                                  ; preds = %for.cond4.5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call9.7.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i51.i, i32 noundef 48, ptr noundef nonnull @.str.42, i32 noundef 8) #12
  %call.i36.7.i.i = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef 5, i32 noundef 9, i32 noundef 32768, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %name.i51.i, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #12
  %111 = call i32 @llvm.smin.i32(i32 %call.i36.7.i.i, i32 0) #12
  br label %snd_ftu_create_effect_send_ctls.exit.i

snd_ftu_create_effect_send_ctls.exit.i:           ; preds = %for.cond4.6.i.i, %for.cond4.5.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge, %for.cond4.4.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge, %for.cond4.3.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge, %for.cond4.2.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge, %for.cond4.1.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge, %for.cond4.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge, %for.body.i58.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge, %for.body6.preheader.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge
  %retval.0.i59.i = phi i32 [ %call.i36.i.i, %for.body6.preheader.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge ], [ %call.i36.1.i.i, %for.cond4.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge ], [ %call.i36.2.i.i, %for.cond4.1.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge ], [ %call.i36.3.i.i, %for.cond4.2.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge ], [ %call.i36.4.i.i, %for.cond4.3.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge ], [ %call.i36.5.i.i, %for.cond4.4.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge ], [ %call.i36.6.i.i, %for.cond4.5.i.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge ], [ %111, %for.cond4.6.i.i ], [ %call.i.i56.i, %for.body.i58.i.snd_ftu_create_effect_send_ctls.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %name.i51.i) #12
  br label %cleanup

sw.bb15:                                          ; preds = %if.end.sw.bb15_crit_edge, %if.end.sw.bb15_crit_edge168, %if.end.sw.bb15_crit_edge169
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %112 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i110 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %112, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i111 = icmp eq ptr %call7.i.i.i.i110, null
  br i1 %tobool.not.i.i111, label %sw.bb15.cleanup_crit_edge, label %if.end.i.i116

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i116:                                    ; preds = %sw.bb15
  %113 = ptrtoint ptr %call7.i.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %mixer, ptr %call7.i.i.i.i110, align 8
  %id5.i.i112 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.i110, i32 0, i32 3
  %114 = ptrtoint ptr %id5.i.i112 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %id5.i.i112, align 4
  %resume6.i.i113 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.i110, i32 0, i32 6
  %115 = ptrtoint ptr %resume6.i.i113 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @snd_xonar_u1_switch_resume, ptr %resume6.i.i113, align 8
  %call7.i.i114 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_xonar_u1_output_switch, ptr noundef nonnull %call7.i.i.i.i110) #12
  %tobool8.not.i.i115 = icmp eq ptr %call7.i.i114, null
  br i1 %tobool8.not.i.i115, label %if.then9.i.i117, label %if.end10.i.i

if.then9.i.i117:                                  ; preds = %if.end.i.i116
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i110) #12
  br label %cleanup

if.end10.i.i:                                     ; preds = %if.end.i.i116
  call void @__sanitizer_cov_trace_pc() #14
  %private_free.i.i118 = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i.i114, i32 0, i32 9
  %116 = ptrtoint ptr %private_free.i.i118 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i.i118, align 4
  %call11.i.i119 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i.i110, ptr noundef nonnull %call7.i.i114, i1 noundef zeroext false) #12
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call18 = call fastcc i32 @snd_microii_controls_create(ptr noundef %mixer)
  br label %cleanup

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call20 = call fastcc i32 @snd_mbox1_controls_create(ptr noundef %mixer)
  br label %cleanup

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = call fastcc i32 @snd_nativeinstruments_create_mixer(ptr noundef %mixer, ptr noundef nonnull @snd_nativeinstruments_ta6_mixers, i32 noundef 4)
  br label %cleanup

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call24 = call fastcc i32 @snd_nativeinstruments_create_mixer(ptr noundef %mixer, ptr noundef nonnull @snd_nativeinstruments_ta10_mixers, i32 noundef 8)
  br label %cleanup

sw.bb25:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = call fastcc i32 @snd_create_std_mono_table(ptr noundef %mixer)
  br label %cleanup

sw.bb27:                                          ; preds = %if.end.sw.bb27_crit_edge, %if.end.sw.bb27_crit_edge170, %if.end.sw.bb27_crit_edge171, %if.end.sw.bb27_crit_edge172, %if.end.sw.bb27_crit_edge173
  %call28 = call i32 @snd_scarlett_controls_create(ptr noundef %mixer) #12
  br label %cleanup

sw.bb29:                                          ; preds = %if.end.sw.bb29_crit_edge, %if.end.sw.bb29_crit_edge174, %if.end.sw.bb29_crit_edge175, %if.end.sw.bb29_crit_edge176, %if.end.sw.bb29_crit_edge177, %if.end.sw.bb29_crit_edge178, %if.end.sw.bb29_crit_edge179, %if.end.sw.bb29_crit_edge180, %if.end.sw.bb29_crit_edge181
  %call30 = call i32 @snd_scarlett_gen2_init(ptr noundef %mixer) #12
  br label %cleanup

sw.bb31:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call32 = call fastcc i32 @snd_soundblaster_e1_switch_create(ptr noundef %mixer)
  br label %cleanup

sw.bb33:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @dell_dock_mixer_init(ptr noundef %mixer)
  br label %cleanup

for.cond.i:                                       ; preds = %add_single_ctl_with_resume.exit.i131
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.08.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %117 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i121 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %117, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i122 = icmp eq ptr %call7.i.i.i.i121, null
  br i1 %tobool.not.i.i122, label %for.body.i.cleanup_crit_edge, label %if.end.i.i127

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i127:                                    ; preds = %for.body.i
  %arrayidx.i = getelementptr [9 x %struct.snd_kcontrol_new], ptr @snd_rme_controls, i32 0, i32 %i.08.i
  %118 = ptrtoint ptr %call7.i.i.i.i121 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %mixer, ptr %call7.i.i.i.i121, align 8
  %id5.i.i123 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.i121, i32 0, i32 3
  %119 = ptrtoint ptr %id5.i.i123 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %id5.i.i123, align 4
  %resume6.i.i124 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.i121, i32 0, i32 6
  %120 = ptrtoint ptr %resume6.i.i124 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %resume6.i.i124, align 8
  %call7.i.i125 = call ptr @snd_ctl_new1(ptr noundef %arrayidx.i, ptr noundef nonnull %call7.i.i.i.i121) #12
  %tobool8.not.i.i126 = icmp eq ptr %call7.i.i125, null
  br i1 %tobool8.not.i.i126, label %if.then9.i.i128, label %add_single_ctl_with_resume.exit.i131

if.then9.i.i128:                                  ; preds = %if.end.i.i127
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i121) #12
  br label %cleanup

add_single_ctl_with_resume.exit.i131:             ; preds = %if.end.i.i127
  %private_free.i.i129 = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i.i125, i32 0, i32 9
  %121 = ptrtoint ptr %private_free.i.i129 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i.i129, align 4
  %call11.i.i130 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i.i121, ptr noundef nonnull %call7.i.i125, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i130)
  %cmp1.i = icmp slt i32 %call11.i.i130, 0
  br i1 %cmp1.i, label %add_single_ctl_with_resume.exit.i131.cleanup_crit_edge, label %for.cond.i

add_single_ctl_with_resume.exit.i131.cleanup_crit_edge: ; preds = %add_single_ctl_with_resume.exit.i131
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb37:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call38 = call i32 @snd_sc1810_init_mixer(ptr noundef %mixer) #12
  br label %cleanup

sw.bb39:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call40 = call fastcc i32 @snd_bbfpro_controls_create(ptr noundef %mixer)
  br label %cleanup

sw.bb41:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call42 = call fastcc i32 @snd_djm_controls_create(ptr noundef %mixer, i8 noundef zeroext 0)
  br label %cleanup

sw.bb43:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call44 = call fastcc i32 @snd_djm_controls_create(ptr noundef %mixer, i8 noundef zeroext 1)
  br label %cleanup

sw.bb45:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call46 = call fastcc i32 @snd_djm_controls_create(ptr noundef %mixer, i8 noundef zeroext 4)
  br label %cleanup

sw.bb47:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call48 = call fastcc i32 @snd_djm_controls_create(ptr noundef %mixer, i8 noundef zeroext 2)
  br label %cleanup

sw.bb49:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call50 = call fastcc i32 @snd_djm_controls_create(ptr noundef %mixer, i8 noundef zeroext 3)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37, %add_single_ctl_with_resume.exit.i131.cleanup_crit_edge, %if.then9.i.i128, %for.body.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %if.end10.i.i, %if.then9.i.i117, %sw.bb15.cleanup_crit_edge, %snd_ftu_create_effect_send_ctls.exit.i, %snd_ftu_create_effect_return_ctls.exit.i.cleanup_crit_edge, %snd_ftu_create_effect_return_ctls.exit.thread.i, %if.end12.i102.cleanup_crit_edge, %if.end8.i100.cleanup_crit_edge, %if.end4.i98.cleanup_crit_edge, %if.end.i97.cleanup_crit_edge, %snd_ftu_create_volume_ctls.exit.thread.i, %if.end20.i, %if.end16.i.cleanup_crit_edge, %if.end12.i86.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %snd_c400_create_effect_ret_vol_ctls.exit.thread.i, %snd_c400_create_effect_vol_ctls.exit.i, %snd_c400_create_vol_ctls.exit.i, %sw.bb9, %if.end6, %snd_audigy2nx_controls_create.exit, %sw.bb, %if.end.cleanup_crit_edge, %snd_usb_soundblaster_remote_init.exit.thread
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call50, %sw.bb49 ], [ %call48, %sw.bb47 ], [ %call46, %sw.bb45 ], [ %call44, %sw.bb43 ], [ %call42, %sw.bb41 ], [ %call40, %sw.bb39 ], [ %call38, %sw.bb37 ], [ 0, %sw.bb33 ], [ %call32, %sw.bb31 ], [ %call30, %sw.bb29 ], [ %call28, %sw.bb27 ], [ %call26, %sw.bb25 ], [ %call24, %sw.bb23 ], [ %call22, %sw.bb21 ], [ %call20, %sw.bb19 ], [ %call18, %sw.bb17 ], [ %call10, %sw.bb9 ], [ %call.retval.056.i, %snd_audigy2nx_controls_create.exit ], [ 0, %if.end6 ], [ %call1, %sw.bb ], [ %retval.0.i.ph, %snd_usb_soundblaster_remote_init.exit.thread ], [ %call15.i.i, %snd_c400_create_vol_ctls.exit.i ], [ %call.i.i.i, %snd_c400_create_effect_vol_ctls.exit.i ], [ %call9.i, %if.end8.i.cleanup_crit_edge ], [ %call.i.i79.i, %if.end12.i86.cleanup_crit_edge ], [ %call.i.i80.i, %if.end16.i.cleanup_crit_edge ], [ %106, %if.end20.i ], [ %call5.i.i, %snd_c400_create_effect_ret_vol_ctls.exit.thread.i ], [ %call1.i, %if.end.i97.cleanup_crit_edge ], [ %call.i.i44.i, %if.end4.i98.cleanup_crit_edge ], [ %call.i.i45.i, %if.end8.i100.cleanup_crit_edge ], [ %call.i.i46.i, %if.end12.i102.cleanup_crit_edge ], [ %109, %snd_ftu_create_effect_return_ctls.exit.i.cleanup_crit_edge ], [ %retval.0.i59.i, %snd_ftu_create_effect_send_ctls.exit.i ], [ %retval.0.i.ph.i, %snd_ftu_create_volume_ctls.exit.thread.i ], [ %retval.0.i50.ph.i, %snd_ftu_create_effect_return_ctls.exit.thread.i ], [ %call11.i.i119, %if.end10.i.i ], [ -12, %if.then9.i.i117 ], [ -12, %sw.bb15.cleanup_crit_edge ], [ -12, %if.then9.i.i128 ], [ %call11.i.i130, %add_single_ctl_with_resume.exit.i131.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ], [ -12, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_us16x08_controls_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_audigy2nx_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #12
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !473
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !473
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !473
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %shortname = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef nonnull @.str.17, ptr noundef %shortname) #12
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %usb_id, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %16, label %entry.cleanup_crit_edge [
    i32 69087264, label %entry.if.end12_crit_edge
    i32 69087296, label %entry.if.then10_crit_edge
    i32 69087304, label %entry.if.then10_crit_edge74
  ]

entry.if.then10_crit_edge74:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10:                                        ; preds = %entry.if.then10_crit_edge, %entry.if.then10_crit_edge74
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %entry.if.end12_crit_edge
  %jacks.0 = phi ptr [ @snd_audigy2nx_proc_read.jacks_live24ext, %if.then10 ], [ @snd_audigy2nx_proc_read.jacks_audigy2nx, %entry.if.end12_crit_edge ]
  %name70 = getelementptr %struct.sb_jack, ptr %jacks.0, i32 0, i32 1
  %18 = ptrtoint ptr %name70 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name70, align 4
  %tobool.not71 = icmp eq ptr %19, null
  br i1 %tobool.not71, label %if.end12.cleanup_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end12.for.body_crit_edge
  %20 = phi ptr [ %47, %for.inc.for.body_crit_edge ], [ %19, %if.end12.for.body_crit_edge ]
  %arrayidx73 = phi ptr [ %arrayidx, %for.inc.for.body_crit_edge ], [ %jacks.0, %if.end12.for.body_crit_edge ]
  %i.072 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %22, ptr noundef nonnull @.str.18, ptr noundef nonnull %20) #12
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call = call i32 @snd_usb_lock_shutdown(ptr noundef %24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp17 = icmp slt i32 %call, 0
  br i1 %cmp17, label %for.body.cleanup_crit_edge, label %if.end19

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %for.body
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %shl.i = shl i32 %30, 8
  %or24 = or i32 %shl.i, -2147483520
  %31 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx73, align 4
  %.tr = trunc i32 %32 to i16
  %conv = shl i16 %.tr, 8
  %call27 = call i32 @snd_usb_ctl_msg(ptr noundef %28, i32 noundef %or24, i8 noundef zeroext -123, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef nonnull %buf, i16 noundef zeroext 3) #12
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  call void @snd_usb_unlock_shutdown(ptr noundef %34) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call27)
  %cmp29 = icmp eq i32 %call27, 3
  br i1 %cmp29, label %land.lhs.true, label %if.end19.if.else46_crit_edge

if.end19.if.else46_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else46

land.lhs.true:                                    ; preds = %if.end19
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %buf, align 1
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.169)
  switch i8 %36, label %land.lhs.true.if.else46_crit_edge [
    i8 3, label %land.lhs.true.if.then40_crit_edge
    i8 6, label %land.lhs.true.if.then40_crit_edge75
  ]

land.lhs.true.if.then40_crit_edge75:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then40

land.lhs.true.if.then40_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then40

land.lhs.true.if.else46_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else46

if.then40:                                        ; preds = %land.lhs.true.if.then40_crit_edge, %land.lhs.true.if.then40_crit_edge75
  %38 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buffer, align 4
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %3, align 1
  %conv43 = zext i8 %41 to i32
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %5, align 1
  %conv45 = zext i8 %43 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %39, ptr noundef nonnull @.str.19, i32 noundef %conv43, i32 noundef %conv45) #12
  br label %for.inc

if.else46:                                        ; preds = %land.lhs.true.if.else46_crit_edge, %if.end19.if.else46_crit_edge
  %44 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %45, ptr noundef nonnull @.str.20) #12
  br label %for.inc

for.inc:                                          ; preds = %if.else46, %if.then40
  %inc = add i32 %i.072, 1
  %arrayidx = getelementptr %struct.sb_jack, ptr %jacks.0, i32 %inc
  %name = getelementptr %struct.sb_jack, ptr %jacks.0, i32 %inc, i32 1
  %46 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %47, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_emu0204_controls_create(ptr noundef %mixer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.add_single_ctl_with_resume.exit_crit_edge, label %if.end.i

entry.add_single_ctl_with_resume.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %add_single_ctl_with_resume.exit

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mixer, ptr %call7.i.i.i, align 8
  %id5.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %id5.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %id5.i, align 4
  %resume6.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %resume6.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @snd_emu0204_ch_switch_resume, ptr %resume6.i, align 8
  %call7.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu0204_control, ptr noundef nonnull %call7.i.i.i) #12
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %add_single_ctl_with_resume.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %private_free.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i, i32 0, i32 9
  %4 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i, align 4
  %call11.i = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i, i1 noundef zeroext false) #12
  br label %add_single_ctl_with_resume.exit

add_single_ctl_with_resume.exit:                  ; preds = %if.end10.i, %if.then9.i, %entry.add_single_ctl_with_resume.exit_crit_edge
  %retval.0.i = phi i32 [ %call11.i, %if.end10.i ], [ -12, %if.then9.i ], [ -12, %entry.add_single_ctl_with_resume.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_microii_controls_create(ptr noundef %mixer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond:                                         ; preds = %add_single_ctl_with_resume.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.1 = icmp eq ptr %call7.i.i.i.1, null
  br i1 %tobool.not.i.1, label %for.cond.cleanup_crit_edge, label %if.end.i.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.1:                                       ; preds = %for.cond
  %2 = ptrtoint ptr %call7.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mixer, ptr %call7.i.i.i.1, align 8
  %id5.i.1 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.1, i32 0, i32 3
  %3 = ptrtoint ptr %id5.i.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %id5.i.1, align 4
  %resume6.i.1 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.1, i32 0, i32 6
  %4 = ptrtoint ptr %resume6.i.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %resume6.i.1, align 8
  %call7.i.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @snd_microii_mixer_spdif, i32 0, i32 1), ptr noundef nonnull %call7.i.i.i.1) #12
  %tobool8.not.i.1 = icmp eq ptr %call7.i.1, null
  br i1 %tobool8.not.i.1, label %if.end.i.1.if.then9.i_crit_edge, label %add_single_ctl_with_resume.exit.1

if.end.i.1.if.then9.i_crit_edge:                  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9.i

add_single_ctl_with_resume.exit.1:                ; preds = %if.end.i.1
  %private_free.i.1 = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i.1, i32 0, i32 9
  %5 = ptrtoint ptr %private_free.i.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i.1, align 4
  %call11.i.1 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i.1, ptr noundef nonnull %call7.i.1, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.1)
  %cmp2.1 = icmp slt i32 %call11.i.1, 0
  br i1 %cmp2.1, label %add_single_ctl_with_resume.exit.1.cleanup_crit_edge, label %for.cond.1

add_single_ctl_with_resume.exit.1.cleanup_crit_edge: ; preds = %add_single_ctl_with_resume.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.1:                                       ; preds = %add_single_ctl_with_resume.exit.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.2 = icmp eq ptr %call7.i.i.i.2, null
  br i1 %tobool.not.i.2, label %for.cond.1.cleanup_crit_edge, label %if.end.i.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.2:                                       ; preds = %for.cond.1
  %7 = ptrtoint ptr %call7.i.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mixer, ptr %call7.i.i.i.2, align 8
  %id5.i.2 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.2, i32 0, i32 3
  %8 = ptrtoint ptr %id5.i.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %id5.i.2, align 4
  %resume6.i.2 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.2, i32 0, i32 6
  %9 = ptrtoint ptr %resume6.i.2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @snd_microii_spdif_switch_update, ptr %resume6.i.2, align 8
  %call7.i.2 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @snd_microii_mixer_spdif, i32 0, i32 2), ptr noundef nonnull %call7.i.i.i.2) #12
  %tobool8.not.i.2 = icmp eq ptr %call7.i.2, null
  br i1 %tobool8.not.i.2, label %if.end.i.2.if.then9.i_crit_edge, label %add_single_ctl_with_resume.exit.2

if.end.i.2.if.then9.i_crit_edge:                  ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9.i

add_single_ctl_with_resume.exit.2:                ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #14
  %private_free.i.2 = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i.2, i32 0, i32 9
  %10 = ptrtoint ptr %private_free.i.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i.2, align 4
  %call11.i.2 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i.2, ptr noundef nonnull %call7.i.2, i1 noundef zeroext false) #12
  %11 = call i32 @llvm.smin.i32(i32 %call11.i.2, i32 0)
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %12 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mixer, ptr %call7.i.i.i, align 8
  %id5.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %id5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %id5.i, align 4
  %resume6.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %resume6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @snd_microii_spdif_default_update, ptr %resume6.i, align 8
  %call7.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_microii_mixer_spdif, ptr noundef nonnull %call7.i.i.i) #12
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end.i.if.then9.i_crit_edge, label %add_single_ctl_with_resume.exit

if.end.i.if.then9.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i.if.then9.i_crit_edge, %if.end.i.2.if.then9.i_crit_edge, %if.end.i.1.if.then9.i_crit_edge
  %call7.i.i.i.lcssa11 = phi ptr [ %call7.i.i.i, %if.end.i.if.then9.i_crit_edge ], [ %call7.i.i.i.1, %if.end.i.1.if.then9.i_crit_edge ], [ %call7.i.i.i.2, %if.end.i.2.if.then9.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.lcssa11) #12
  br label %cleanup

add_single_ctl_with_resume.exit:                  ; preds = %if.end.i
  %private_free.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i, i32 0, i32 9
  %15 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i, align 4
  %call11.i = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp2 = icmp slt i32 %call11.i, 0
  br i1 %cmp2, label %add_single_ctl_with_resume.exit.cleanup_crit_edge, label %for.cond

add_single_ctl_with_resume.exit.cleanup_crit_edge: ; preds = %add_single_ctl_with_resume.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %add_single_ctl_with_resume.exit.cleanup_crit_edge, %if.then9.i, %add_single_ctl_with_resume.exit.2, %for.cond.1.cleanup_crit_edge, %add_single_ctl_with_resume.exit.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then9.i ], [ %call11.i, %add_single_ctl_with_resume.exit.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %for.cond.cleanup_crit_edge ], [ %call11.i.1, %add_single_ctl_with_resume.exit.1.cleanup_crit_edge ], [ -12, %for.cond.1.cleanup_crit_edge ], [ %11, %add_single_ctl_with_resume.exit.2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_mbox1_controls_create(ptr noundef %mixer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mixer, ptr %call7.i.i.i, align 8
  %id5.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %id5.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %id5.i, align 4
  %resume6.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %resume6.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @snd_mbox1_clk_switch_resume, ptr %resume6.i, align 8
  %call7.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_mbox1_clk_switch, ptr noundef nonnull %call7.i.i.i) #12
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.then9.i, label %add_single_ctl_with_resume.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

add_single_ctl_with_resume.exit:                  ; preds = %if.end.i
  %private_free.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i, i32 0, i32 9
  %4 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i, align 4
  %call11.i = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp = icmp slt i32 %call11.i, 0
  br i1 %cmp, label %add_single_ctl_with_resume.exit.cleanup_crit_edge, label %if.end

add_single_ctl_with_resume.exit.cleanup_crit_edge: ; preds = %add_single_ctl_with_resume.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %add_single_ctl_with_resume.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i5 = icmp eq ptr %call7.i.i.i4, null
  br i1 %tobool.not.i5, label %if.end.cleanup_crit_edge, label %if.end.i6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i6:                                        ; preds = %if.end
  %6 = ptrtoint ptr %call7.i.i.i4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mixer, ptr %call7.i.i.i4, align 8
  %id5.i7 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i4, i32 0, i32 3
  %7 = ptrtoint ptr %id5.i7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %id5.i7, align 4
  %resume6.i8 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i4, i32 0, i32 6
  %8 = ptrtoint ptr %resume6.i8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @snd_mbox1_src_switch_resume, ptr %resume6.i8, align 8
  %call7.i9 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_mbox1_src_switch, ptr noundef nonnull %call7.i.i.i4) #12
  %tobool8.not.i10 = icmp eq ptr %call7.i9, null
  br i1 %tobool8.not.i10, label %if.then9.i11, label %if.end10.i14

if.then9.i11:                                     ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i4) #12
  br label %cleanup

if.end10.i14:                                     ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #14
  %private_free.i12 = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i9, i32 0, i32 9
  %9 = ptrtoint ptr %private_free.i12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i12, align 4
  %call11.i13 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i4, ptr noundef nonnull %call7.i9, i1 noundef zeroext false) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end10.i14, %if.then9.i11, %if.end.cleanup_crit_edge, %add_single_ctl_with_resume.exit.cleanup_crit_edge, %if.then9.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11.i, %add_single_ctl_with_resume.exit.cleanup_crit_edge ], [ %call11.i13, %if.end10.i14 ], [ -12, %if.then9.i11 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.then9.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_nativeinstruments_create_mixer(ptr noundef %mixer, ptr nocapture noundef readonly %kc, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %value.i = alloca i8, align 1
  %template = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %template) #12
  %0 = call ptr @memcpy(ptr %template, ptr @__const.snd_nativeinstruments_create_mixer.template, i32 44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp23.not = icmp eq i32 %count, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %name1 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %template, i32 0, i32 3
  %private_value3 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %template, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %name = getelementptr %struct.snd_kcontrol_new, ptr %kc, i32 %i.024, i32 3
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %3 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %name1, align 4
  %private_value = getelementptr %struct.snd_kcontrol_new, ptr %kc, i32 %i.024, i32 11
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %6 = ptrtoint ptr %private_value3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %private_value3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.for.end_crit_edge, label %if.end.i

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.i:                                         ; preds = %for.body
  %8 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %mixer, ptr %call7.i.i.i, align 8
  %id5.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %id5.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %id5.i, align 4
  %resume6.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %resume6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @snd_ni_update_cur_val, ptr %resume6.i, align 8
  %call7.i = call ptr @snd_ctl_new1(ptr noundef nonnull %template, ptr noundef nonnull %call7.i.i.i) #12
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.then9.i, label %add_single_ctl_with_resume.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %for.end

add_single_ctl_with_resume.exit:                  ; preds = %if.end.i
  %private_free.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i, i32 0, i32 9
  %11 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i, align 4
  %call11.i = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp4 = icmp slt i32 %call11.i, 0
  br i1 %cmp4, label %add_single_ctl_with_resume.exit.for.end_crit_edge, label %if.end

add_single_ctl_with_resume.exit.for.end_crit_edge: ; preds = %add_single_ctl_with_resume.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end:                                           ; preds = %add_single_ctl_with_resume.exit
  %kctl = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %kctl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kctl, align 8
  %14 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mixer, align 4
  %dev1.i = getelementptr inbounds %struct.snd_usb_audio, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1.i, align 4
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol, ptr %13, i32 0, i32 7
  %18 = ptrtoint ptr %private_value.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %private_value.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #12
  %20 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %value.i, align 1, !annotation !473
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %17, align 8
  %shl.i.i = shl i32 %22, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %shr.i = lshr i32 %19, 16
  %conv.i = trunc i32 %shr.i to i8
  %conv4.i = trunc i32 %19 to i16
  %call5.i = call i32 @snd_usb_ctl_msg(ptr noundef %17, i32 noundef %or2.i, i8 noundef zeroext %conv.i, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %conv4.i, ptr noundef nonnull %value.i, i16 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i15

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.52, i32 noundef %call5.i) #16
  br label %for.inc

if.end.i15:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %value.i, align 1
  %conv8.i = zext i8 %24 to i32
  %shl.i = shl nuw i32 %conv8.i, 24
  %25 = ptrtoint ptr %private_value.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %private_value.i, align 4
  %or10.i = or i32 %shl.i, %26
  store i32 %or10.i, ptr %private_value.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i15, %do.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #12
  %inc = add nuw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %add_single_ctl_with_resume.exit.for.end_crit_edge, %if.then9.i, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %err.1 = phi i32 [ -12, %if.then9.i ], [ 0, %entry.for.end_crit_edge ], [ %call11.i, %for.inc.for.end_crit_edge ], [ %call11.i, %add_single_ctl_with_resume.exit.for.end_crit_edge ], [ -12, %for.body.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %template) #12
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_create_std_mono_table(ptr noundef %mixer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.body

while.cond:                                       ; preds = %while.body
  %incdec.ptr = getelementptr %struct.std_mono_table, ptr %t.addr.01, i32 1
  %name = getelementptr %struct.std_mono_table, ptr %t.addr.01, i32 1, i32 4
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %while.cond.cleanup_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %entry
  %2 = phi ptr [ @.str.64, %entry ], [ %1, %while.cond.while.body_crit_edge ]
  %t.addr.01 = phi ptr [ @ebox44_table, %entry ], [ %incdec.ptr, %while.cond.while.body_crit_edge ]
  %3 = ptrtoint ptr %t.addr.01 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %t.addr.01, align 4
  %control = getelementptr inbounds %struct.std_mono_table, ptr %t.addr.01, i32 0, i32 1
  %5 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %control, align 4
  %cmask = getelementptr inbounds %struct.std_mono_table, ptr %t.addr.01, i32 0, i32 2
  %7 = ptrtoint ptr %cmask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmask, align 4
  %val_type = getelementptr inbounds %struct.std_mono_table, ptr %t.addr.01, i32 0, i32 3
  %9 = ptrtoint ptr %val_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val_type, align 4
  %tlv_callback = getelementptr inbounds %struct.std_mono_table, ptr %t.addr.01, i32 0, i32 5
  %11 = ptrtoint ptr %tlv_callback to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tlv_callback, align 4
  %call.i = tail call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef 0, ptr noundef nonnull %2, ptr noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %while.body.cleanup_crit_edge, label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %while.body.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_scarlett_controls_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_scarlett_gen2_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_soundblaster_e1_switch_create(ptr noundef %mixer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.add_single_ctl_with_resume.exit_crit_edge, label %if.end.i

entry.add_single_ctl_with_resume.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %add_single_ctl_with_resume.exit

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mixer, ptr %call7.i.i.i, align 8
  %id5.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %id5.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %id5.i, align 4
  %resume6.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %resume6.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @snd_soundblaster_e1_switch_resume, ptr %resume6.i, align 8
  %call7.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_soundblaster_e1_input_switch, ptr noundef nonnull %call7.i.i.i) #12
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %add_single_ctl_with_resume.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %private_free.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i, i32 0, i32 9
  %4 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i, align 4
  %call11.i = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i, i1 noundef zeroext false) #12
  br label %add_single_ctl_with_resume.exit

add_single_ctl_with_resume.exit:                  ; preds = %if.end10.i, %if.then9.i, %entry.add_single_ctl_with_resume.exit_crit_edge
  %retval.0.i = phi i32 [ %call11.i, %if.end10.i ], [ -12, %if.then9.i ], [ -12, %entry.add_single_ctl_with_resume.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dell_dock_mixer_init(ptr nocapture noundef readonly %mixer) unnamed_addr #0 align 64 {
entry:
  %buf.i21 = alloca i16, align 2
  %buf.i11 = alloca i16, align 2
  %buf.i1 = alloca i16, align 2
  %buf.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mixer, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #12
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %buf.i, align 2
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i.i = shl i32 %6, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %ctrl_intf.i.i = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 28
  %7 = ptrtoint ptr %ctrl_intf.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl_intf.i.i, align 4
  %bInterfaceNumber.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %bInterfaceNumber.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bInterfaceNumber.i.i, align 2
  %conv.i.i = zext i8 %10 to i16
  %or3.i = or i16 %conv.i.i, 4096
  %call5.i = call i32 @snd_usb_ctl_msg(ptr noundef %4, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 1, i16 noundef zeroext %or3.i, ptr noundef nonnull %buf.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #12
  %11 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mixer, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1) #12
  %13 = ptrtoint ptr %buf.i1 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %buf.i1, align 2
  %dev.i2 = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %dev.i2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i2, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i3 = shl i32 %17, 8
  %or.i4 = or i32 %shl.i.i3, -2147483648
  %ctrl_intf.i.i5 = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 28
  %18 = ptrtoint ptr %ctrl_intf.i.i5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctrl_intf.i.i5, align 4
  %bInterfaceNumber.i.i6 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %bInterfaceNumber.i.i6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bInterfaceNumber.i.i6, align 2
  %conv.i.i7 = zext i8 %21 to i16
  %or3.i8 = or i16 %conv.i.i7, 4096
  %call5.i10 = call i32 @snd_usb_ctl_msg(ptr noundef %15, i32 noundef %or.i4, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 2, i16 noundef zeroext %or3.i8, ptr noundef nonnull %buf.i1, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1) #12
  %22 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mixer, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i11) #12
  %24 = ptrtoint ptr %buf.i11 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %buf.i11, align 2
  %dev.i12 = getelementptr inbounds %struct.snd_usb_audio, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %dev.i12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i12, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl.i.i13 = shl i32 %28, 8
  %or.i14 = or i32 %shl.i.i13, -2147483648
  %ctrl_intf.i.i15 = getelementptr inbounds %struct.snd_usb_audio, ptr %23, i32 0, i32 28
  %29 = ptrtoint ptr %ctrl_intf.i.i15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctrl_intf.i.i15, align 4
  %bInterfaceNumber.i.i16 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %bInterfaceNumber.i.i16 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bInterfaceNumber.i.i16, align 2
  %conv.i.i17 = zext i8 %32 to i16
  %or3.i18 = or i16 %conv.i.i17, 4864
  %call5.i20 = call i32 @snd_usb_ctl_msg(ptr noundef %26, i32 noundef %or.i14, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 1, i16 noundef zeroext %or3.i18, ptr noundef nonnull %buf.i11, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i11) #12
  %33 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mixer, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i21) #12
  %35 = ptrtoint ptr %buf.i21 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %buf.i21, align 2
  %dev.i22 = getelementptr inbounds %struct.snd_usb_audio, ptr %34, i32 0, i32 1
  %36 = ptrtoint ptr %dev.i22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i22, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  %shl.i.i23 = shl i32 %39, 8
  %or.i24 = or i32 %shl.i.i23, -2147483648
  %ctrl_intf.i.i25 = getelementptr inbounds %struct.snd_usb_audio, ptr %34, i32 0, i32 28
  %40 = ptrtoint ptr %ctrl_intf.i.i25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctrl_intf.i.i25, align 4
  %bInterfaceNumber.i.i26 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %bInterfaceNumber.i.i26 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bInterfaceNumber.i.i26, align 2
  %conv.i.i27 = zext i8 %43 to i16
  %or3.i28 = or i16 %conv.i.i27, 4864
  %call5.i30 = call i32 @snd_usb_ctl_msg(ptr noundef %37, i32 noundef %or.i24, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 2, i16 noundef zeroext %or3.i28, ptr noundef nonnull %buf.i21, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i21) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sc1810_init_mixer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_bbfpro_controls_create(ptr noundef %mixer) unnamed_addr #0 align 64 {
entry:
  %knew.i157 = alloca %struct.snd_kcontrol_new, align 4
  %knew.i142 = alloca %struct.snd_kcontrol_new, align 4
  %knew.i125 = alloca %struct.snd_kcontrol_new, align 4
  %knew.i = alloca %struct.snd_kcontrol_new, align 4
  %name = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %name) #12
  %0 = call ptr @memset(ptr %name, i32 255, i32 48)
  %name1.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i, i32 0, i32 3
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i, i32 0, i32 11
  %name1.i126 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i125, i32 0, i32 3
  %private_value.i128 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i125, i32 0, i32 11
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc24.for.cond1.preheader_crit_edge, %entry
  %o.0187 = phi i32 [ 0, %entry ], [ %inc25, %for.inc24.for.cond1.preheader_crit_edge ]
  %arrayidx5 = getelementptr [12 x ptr], ptr @snd_bbfpro_controls_create.output, i32 0, i32 %o.0187
  %1 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx5, align 4
  %mul = mul nuw nsw i32 %o.0187, 26
  br label %for.body3

for.cond1:                                        ; preds = %snd_bbfpro_vol_add.exit141
  %inc = add nuw nsw i32 %i.0186, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.inc24, label %for.cond1.for.body3_crit_edge

for.cond1.for.body3_crit_edge:                    ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3

for.body3:                                        ; preds = %for.cond1.for.body3_crit_edge, %for.cond1.preheader
  %i.0186 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %for.cond1.for.body3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0186)
  %cmp4 = icmp ult i32 %i.0186, 2
  %cond = select i1 %cmp4, ptr @.str.73, ptr @.str.110
  %arrayidx = getelementptr [12 x ptr], ptr @snd_bbfpro_controls_create.input, i32 0, i32 %i.0186
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 48, ptr noundef nonnull @.str.109, ptr noundef nonnull %cond, ptr noundef %4, ptr noundef %2)
  %add = add nuw nsw i32 %i.0186, %mul
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %knew.i) #12
  %5 = call ptr @memcpy(ptr %knew.i, ptr @snd_bbfpro_vol_control, i32 44)
  %6 = ptrtoint ptr %name1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %name, ptr %name1.i, align 4
  %7 = ptrtoint ptr %private_value.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %private_value.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body3.snd_bbfpro_vol_add.exit.thread_crit_edge, label %if.end.i.i

for.body3.snd_bbfpro_vol_add.exit.thread_crit_edge: ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_bbfpro_vol_add.exit.thread

if.end.i.i:                                       ; preds = %for.body3
  %9 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mixer, ptr %call7.i.i.i.i, align 8
  %id5.i.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %id5.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %id5.i.i, align 4
  %resume6.i.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %resume6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @snd_bbfpro_vol_resume, ptr %resume6.i.i, align 8
  %call7.i.i = call ptr @snd_ctl_new1(ptr noundef nonnull %knew.i, ptr noundef nonnull %call7.i.i.i.i) #12
  %tobool8.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not.i.i, label %if.then9.i.i, label %snd_bbfpro_vol_add.exit

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #12
  br label %snd_bbfpro_vol_add.exit.thread

snd_bbfpro_vol_add.exit.thread:                   ; preds = %if.then9.i.i, %for.body3.snd_bbfpro_vol_add.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew.i) #12
  br label %cleanup

snd_bbfpro_vol_add.exit:                          ; preds = %if.end.i.i
  %private_free.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i.i, i32 0, i32 9
  %12 = ptrtoint ptr %private_free.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i.i, align 4
  %call11.i.i = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %call7.i.i, i1 noundef zeroext false) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp8 = icmp slt i32 %call11.i.i, 0
  br i1 %cmp8, label %snd_bbfpro_vol_add.exit.cleanup_crit_edge, label %if.end

snd_bbfpro_vol_add.exit.cleanup_crit_edge:        ; preds = %snd_bbfpro_vol_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %snd_bbfpro_vol_add.exit
  %arrayidx11 = getelementptr [12 x ptr], ptr @snd_bbfpro_controls_create.output, i32 0, i32 %i.0186
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx11, align 4
  %call13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 48, ptr noundef nonnull @.str.111, ptr noundef %14, ptr noundef %2)
  %add16 = add nuw nsw i32 %add, 12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %knew.i125) #12
  %15 = call ptr @memcpy(ptr %knew.i125, ptr @snd_bbfpro_vol_control, i32 44)
  %16 = ptrtoint ptr %name1.i126 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %name, ptr %name1.i126, align 4
  %17 = ptrtoint ptr %private_value.i128 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add16, ptr %private_value.i128, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i129 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i130 = icmp eq ptr %call7.i.i.i.i129, null
  br i1 %tobool.not.i.i130, label %if.end.snd_bbfpro_vol_add.exit141.thread_crit_edge, label %if.end.i.i135

if.end.snd_bbfpro_vol_add.exit141.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_bbfpro_vol_add.exit141.thread

if.end.i.i135:                                    ; preds = %if.end
  %19 = ptrtoint ptr %call7.i.i.i.i129 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %mixer, ptr %call7.i.i.i.i129, align 8
  %id5.i.i131 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.i129, i32 0, i32 3
  %20 = ptrtoint ptr %id5.i.i131 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %id5.i.i131, align 4
  %resume6.i.i132 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.i129, i32 0, i32 6
  %21 = ptrtoint ptr %resume6.i.i132 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @snd_bbfpro_vol_resume, ptr %resume6.i.i132, align 8
  %call7.i.i133 = call ptr @snd_ctl_new1(ptr noundef nonnull %knew.i125, ptr noundef nonnull %call7.i.i.i.i129) #12
  %tobool8.not.i.i134 = icmp eq ptr %call7.i.i133, null
  br i1 %tobool8.not.i.i134, label %if.then9.i.i136, label %snd_bbfpro_vol_add.exit141

if.then9.i.i136:                                  ; preds = %if.end.i.i135
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i129) #12
  br label %snd_bbfpro_vol_add.exit141.thread

snd_bbfpro_vol_add.exit141.thread:                ; preds = %if.then9.i.i136, %if.end.snd_bbfpro_vol_add.exit141.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew.i125) #12
  br label %cleanup

snd_bbfpro_vol_add.exit141:                       ; preds = %if.end.i.i135
  %private_free.i.i137 = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i.i133, i32 0, i32 9
  %22 = ptrtoint ptr %private_free.i.i137 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i.i137, align 4
  %call11.i.i138 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i.i129, ptr noundef nonnull %call7.i.i133, i1 noundef zeroext false) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew.i125) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i138)
  %cmp20 = icmp slt i32 %call11.i.i138, 0
  br i1 %cmp20, label %snd_bbfpro_vol_add.exit141.cleanup_crit_edge, label %for.cond1

snd_bbfpro_vol_add.exit141.cleanup_crit_edge:     ; preds = %snd_bbfpro_vol_add.exit141
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc24:                                        ; preds = %for.cond1
  %inc25 = add nuw nsw i32 %o.0187, 1
  %exitcond195.not = icmp eq i32 %inc25, 12
  br i1 %exitcond195.not, label %for.end26, label %for.inc24.for.cond1.preheader_crit_edge

for.inc24.for.cond1.preheader_crit_edge:          ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.preheader

for.end26:                                        ; preds = %for.inc24
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %knew.i142) #12
  %23 = call ptr @memcpy(ptr %knew.i142, ptr @snd_bbfpro_ctl_control, i32 44)
  %name1.i143 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i142, i32 0, i32 3
  %24 = ptrtoint ptr %name1.i143 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.112, ptr %name1.i143, align 4
  %private_value.i144 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i142, i32 0, i32 11
  %25 = ptrtoint ptr %private_value.i144 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %private_value.i144, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i145 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i146 = icmp eq ptr %call7.i.i.i.i145, null
  br i1 %tobool.not.i.i146, label %for.end26.snd_bbfpro_ctl_add.exit.thread_crit_edge, label %if.end.i.i151

for.end26.snd_bbfpro_ctl_add.exit.thread_crit_edge: ; preds = %for.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_bbfpro_ctl_add.exit.thread

if.end.i.i151:                                    ; preds = %for.end26
  %27 = ptrtoint ptr %call7.i.i.i.i145 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %mixer, ptr %call7.i.i.i.i145, align 8
  %id5.i.i147 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.i145, i32 0, i32 3
  %28 = ptrtoint ptr %id5.i.i147 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %id5.i.i147, align 4
  %resume6.i.i148 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.i145, i32 0, i32 6
  %29 = ptrtoint ptr %resume6.i.i148 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @snd_bbfpro_ctl_resume, ptr %resume6.i.i148, align 8
  %call7.i.i149 = call ptr @snd_ctl_new1(ptr noundef nonnull %knew.i142, ptr noundef nonnull %call7.i.i.i.i145) #12
  %tobool8.not.i.i150 = icmp eq ptr %call7.i.i149, null
  br i1 %tobool8.not.i.i150, label %if.then9.i.i152, label %snd_bbfpro_ctl_add.exit

if.then9.i.i152:                                  ; preds = %if.end.i.i151
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i145) #12
  br label %snd_bbfpro_ctl_add.exit.thread

snd_bbfpro_ctl_add.exit.thread:                   ; preds = %if.then9.i.i152, %for.end26.snd_bbfpro_ctl_add.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew.i142) #12
  br label %cleanup

snd_bbfpro_ctl_add.exit:                          ; preds = %if.end.i.i151
  %private_free.i.i153 = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i.i149, i32 0, i32 9
  %30 = ptrtoint ptr %private_free.i.i153 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i.i153, align 4
  %call11.i.i154 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i.i145, ptr noundef nonnull %call7.i.i149, i1 noundef zeroext false) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew.i142) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i154)
  %cmp28 = icmp slt i32 %call11.i.i154, 0
  br i1 %cmp28, label %snd_bbfpro_ctl_add.exit.cleanup_crit_edge, label %if.end31

snd_bbfpro_ctl_add.exit.cleanup_crit_edge:        ; preds = %snd_bbfpro_ctl_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31:                                         ; preds = %snd_bbfpro_ctl_add.exit
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %knew.i157) #12
  %31 = call ptr @memcpy(ptr %knew.i157, ptr @snd_bbfpro_ctl_control, i32 44)
  %name1.i158 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i157, i32 0, i32 3
  %32 = ptrtoint ptr %name1.i158 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.113, ptr %name1.i158, align 4
  %private_value.i159 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i157, i32 0, i32 11
  %33 = ptrtoint ptr %private_value.i159 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 14, ptr %private_value.i159, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i160 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i161 = icmp eq ptr %call7.i.i.i.i160, null
  br i1 %tobool.not.i.i161, label %if.end31.snd_bbfpro_ctl_add.exit172.thread_crit_edge, label %if.end.i.i166

if.end31.snd_bbfpro_ctl_add.exit172.thread_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_bbfpro_ctl_add.exit172.thread

if.end.i.i166:                                    ; preds = %if.end31
  %35 = ptrtoint ptr %call7.i.i.i.i160 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %mixer, ptr %call7.i.i.i.i160, align 8
  %id5.i.i162 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.i160, i32 0, i32 3
  %36 = ptrtoint ptr %id5.i.i162 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %id5.i.i162, align 4
  %resume6.i.i163 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.i160, i32 0, i32 6
  %37 = ptrtoint ptr %resume6.i.i163 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @snd_bbfpro_ctl_resume, ptr %resume6.i.i163, align 8
  %call7.i.i164 = call ptr @snd_ctl_new1(ptr noundef nonnull %knew.i157, ptr noundef nonnull %call7.i.i.i.i160) #12
  %tobool8.not.i.i165 = icmp eq ptr %call7.i.i164, null
  br i1 %tobool8.not.i.i165, label %if.then9.i.i167, label %snd_bbfpro_ctl_add.exit172

if.then9.i.i167:                                  ; preds = %if.end.i.i166
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i160) #12
  br label %snd_bbfpro_ctl_add.exit172.thread

snd_bbfpro_ctl_add.exit172.thread:                ; preds = %if.then9.i.i167, %if.end31.snd_bbfpro_ctl_add.exit172.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew.i157) #12
  br label %cleanup

snd_bbfpro_ctl_add.exit172:                       ; preds = %if.end.i.i166
  %private_free.i.i168 = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i.i164, i32 0, i32 9
  %38 = ptrtoint ptr %private_free.i.i168 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i.i168, align 4
  %call11.i.i169 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i.i160, ptr noundef nonnull %call7.i.i164, i1 noundef zeroext false) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew.i157) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i169)
  %cmp33 = icmp slt i32 %call11.i.i169, 0
  br i1 %cmp33, label %snd_bbfpro_ctl_add.exit172.cleanup_crit_edge, label %if.end36

snd_bbfpro_ctl_add.exit172.cleanup_crit_edge:     ; preds = %snd_bbfpro_ctl_add.exit172
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end36:                                         ; preds = %snd_bbfpro_ctl_add.exit172
  %call37 = call fastcc i32 @snd_bbfpro_ctl_add(ptr noundef %mixer, i8 noundef zeroext 0, i8 noundef zeroext 8, ptr noundef nonnull @.str.114)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end36.cleanup_crit_edge, label %if.end41

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  %call42 = call fastcc i32 @snd_bbfpro_ctl_add(ptr noundef %mixer, i8 noundef zeroext 0, i8 noundef zeroext 10, ptr noundef nonnull @.str.115)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.end41.cleanup_crit_edge, label %if.end46

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end46:                                         ; preds = %if.end41
  %call47 = call fastcc i32 @snd_bbfpro_ctl_add(ptr noundef %mixer, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @.str.116)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.end46.cleanup_crit_edge, label %if.end51

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end51:                                         ; preds = %if.end46
  %call52 = call fastcc i32 @snd_bbfpro_ctl_add(ptr noundef %mixer, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull @.str.117)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end51.cleanup_crit_edge, label %if.end56

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end56:                                         ; preds = %if.end51
  %call57 = call fastcc i32 @snd_bbfpro_ctl_add(ptr noundef %mixer, i8 noundef zeroext 1, i8 noundef zeroext 2, ptr noundef nonnull @.str.118)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end56.cleanup_crit_edge, label %if.end61

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end61:                                         ; preds = %if.end56
  %call62 = call fastcc i32 @snd_bbfpro_ctl_add(ptr noundef %mixer, i8 noundef zeroext 1, i8 noundef zeroext 3, ptr noundef nonnull @.str.119)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.end61.cleanup_crit_edge, label %if.end66

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end66:                                         ; preds = %if.end61
  %call67 = call fastcc i32 @snd_bbfpro_ctl_add(ptr noundef %mixer, i8 noundef zeroext 1, i8 noundef zeroext 4, ptr noundef nonnull @.str.120)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.end66.cleanup_crit_edge, label %if.end71

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end71:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  %call72 = call fastcc i32 @snd_bbfpro_ctl_add(ptr noundef %mixer, i8 noundef zeroext 1, i8 noundef zeroext 5, ptr noundef nonnull @.str.121)
  %39 = call i32 @llvm.smin.i32(i32 %call72, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.end66.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %snd_bbfpro_ctl_add.exit172.cleanup_crit_edge, %snd_bbfpro_ctl_add.exit172.thread, %snd_bbfpro_ctl_add.exit.cleanup_crit_edge, %snd_bbfpro_ctl_add.exit.thread, %snd_bbfpro_vol_add.exit141.cleanup_crit_edge, %snd_bbfpro_vol_add.exit141.thread, %snd_bbfpro_vol_add.exit.cleanup_crit_edge, %snd_bbfpro_vol_add.exit.thread
  %retval.0 = phi i32 [ %call11.i.i154, %snd_bbfpro_ctl_add.exit.cleanup_crit_edge ], [ %call11.i.i169, %snd_bbfpro_ctl_add.exit172.cleanup_crit_edge ], [ %call37, %if.end36.cleanup_crit_edge ], [ %call42, %if.end41.cleanup_crit_edge ], [ %call47, %if.end46.cleanup_crit_edge ], [ %call52, %if.end51.cleanup_crit_edge ], [ %call57, %if.end56.cleanup_crit_edge ], [ %call62, %if.end61.cleanup_crit_edge ], [ %call67, %if.end66.cleanup_crit_edge ], [ %39, %if.end71 ], [ -12, %snd_bbfpro_vol_add.exit.thread ], [ -12, %snd_bbfpro_vol_add.exit141.thread ], [ -12, %snd_bbfpro_ctl_add.exit.thread ], [ -12, %snd_bbfpro_ctl_add.exit172.thread ], [ %call11.i.i138, %snd_bbfpro_vol_add.exit141.cleanup_crit_edge ], [ %call11.i.i, %snd_bbfpro_vol_add.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %name) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_djm_controls_create(ptr noundef %mixer, i8 noundef zeroext %device_idx) unnamed_addr #0 align 64 {
for.body.lr.ph:
  %knew = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %knew) #12
  %0 = call ptr @memcpy(ptr %knew, ptr @__const.snd_djm_controls_create.knew, i32 44)
  %idxprom = zext i8 %device_idx to i32
  %ncontrols = getelementptr [5 x %struct.snd_djm_device], ptr @snd_djm_devices, i32 0, i32 %idxprom, i32 2
  %1 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ncontrols, align 4
  %controls = getelementptr [5 x %struct.snd_djm_device], ptr @snd_djm_devices, i32 0, i32 %idxprom, i32 1
  %3 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %controls, align 4
  %name4 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 3
  %shl = shl nuw i32 %idxprom, 24
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 11
  %umax = call i32 @llvm.umax.i32(i32 %2, i32 1)
  br label %for.body

for.cond:                                         ; preds = %add_single_ctl_with_resume.exit
  %inc = add nuw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx1 = getelementptr %struct.snd_djm_ctl, ptr %4, i32 %i.034
  %default_value = getelementptr %struct.snd_djm_ctl, ptr %4, i32 %i.034, i32 3
  %5 = ptrtoint ptr %default_value to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %default_value, align 4
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx1, align 4
  %9 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %name4, align 4
  %shl5 = shl i32 %i.034, 16
  %or = or i32 %shl5, %shl
  %conv6 = zext i16 %6 to i32
  %or7 = or i32 %or, %conv6
  %10 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or7, ptr %private_value, align 4
  %conv8 = trunc i32 %i.034 to i8
  %call = call fastcc i32 @snd_djm_controls_update(ptr noundef %mixer, i8 noundef zeroext %device_idx, i8 noundef zeroext %conv8, i16 noundef zeroext %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %12 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mixer, ptr %call7.i.i.i, align 8
  %id5.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %id5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %id5.i, align 4
  %resume6.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %resume6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @snd_djm_controls_resume, ptr %resume6.i, align 8
  %call7.i = call ptr @snd_ctl_new1(ptr noundef nonnull %knew, ptr noundef nonnull %call7.i.i.i) #12
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.then9.i, label %add_single_ctl_with_resume.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

add_single_ctl_with_resume.exit:                  ; preds = %if.end.i
  %private_free.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i, i32 0, i32 9
  %15 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i, align 4
  %call11.i = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool10.not = icmp eq i32 %call11.i, 0
  br i1 %tobool10.not, label %for.cond, label %add_single_ctl_with_resume.exit.cleanup_crit_edge

add_single_ctl_with_resume.exit.cleanup_crit_edge: ; preds = %add_single_ctl_with_resume.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %add_single_ctl_with_resume.exit.cleanup_crit_edge, %if.then9.i, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then9.i ], [ %call, %for.body.cleanup_crit_edge ], [ %call11.i, %add_single_ctl_with_resume.exit.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_mixer_resume_quirk(ptr nocapture noundef readonly %mixer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mixer, align 4
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 198852628, i32 %3)
  %cond = icmp eq i32 %3, 198852628
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dell_dock_mixer_init(ptr noundef %mixer)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_mixer_rc_memory_change(ptr noundef %mixer, i32 noundef %unitid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rc_cfg = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 8
  %0 = ptrtoint ptr %rc_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rc_cfg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.sw.epilog_crit_edge, label %if.end

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %2 = zext i32 %unitid to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %unitid, label %do.body [
    i32 0, label %sw.bb
    i32 4, label %if.end.sw.epilog_crit_edge
    i32 7, label %if.end.sw.epilog_crit_edge31
    i32 19, label %if.end.sw.epilog_crit_edge32
    i32 20, label %if.end.sw.epilog_crit_edge33
    i32 3, label %sw.bb4
  ]

if.end.sw.epilog_crit_edge33:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.sw.epilog_crit_edge32:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.sw.epilog_crit_edge31:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mixer, align 4
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %rc_urb = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 11
  %7 = ptrtoint ptr %rc_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rc_urb, align 4
  %dev1 = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %dev1, align 4
  %10 = load ptr, ptr %rc_urb, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %10, i32 noundef 2592) #12
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %11 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mixer, align 4
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usb_id, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %14, label %sw.bb4.sw.epilog_crit_edge [
    i32 69087296, label %sw.bb4.if.then9_crit_edge
    i32 69087304, label %sw.bb4.if.then9_crit_edge34
  ]

sw.bb4.if.then9_crit_edge34:                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

sw.bb4.if.then9_crit_edge:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then9:                                         ; preds = %sw.bb4.if.then9_crit_edge, %sw.bb4.if.then9_crit_edge34
  %mute_mixer_id = getelementptr inbounds %struct.rc_config, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %mute_mixer_id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mute_mixer_id, align 4
  %conv = zext i8 %17 to i32
  tail call void @snd_usb_mixer_notify_id(ptr noundef %mixer, i32 noundef %conv) #12
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_mixer_rc_memory_change.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_mixer_rc_memory_change, %if.then16)) #12
          to label %sw.epilog [label %if.then16], !srcloc !474

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mixer, align 4
  %dev18 = getelementptr inbounds %struct.snd_usb_audio, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev18, align 4
  %dev19 = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_mixer_rc_memory_change.__UNIQUE_ID_ddebug238, ptr noundef %dev19, ptr noundef nonnull @.str.4, i32 noundef %unitid) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then16, %do.body, %if.then9, %sw.bb4.sw.epilog_crit_edge, %sw.bb, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge31, %if.end.sw.epilog_crit_edge32, %if.end.sw.epilog_crit_edge33, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_mixer_fu_apply_quirk(ptr nocapture noundef readonly %mixer, ptr nocapture noundef %cval, i32 noundef %unitid, ptr noundef %kctl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mixer, align 4
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb_id, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 565444737, label %sw.bb
    i32 227278860, label %entry.sw.bb2_crit_edge
    i32 227278868, label %entry.sw.bb2_crit_edge9
  ]

entry.sw.bb2_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %unitid)
  %cmp = icmp eq i32 %unitid, 7
  br i1 %cmp, label %land.lhs.true, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %cval, i32 0, i32 1
  %5 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp1 = icmp eq i32 %6, 2
  br i1 %cmp1, label %if.then, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then:                                          ; preds = %land.lhs.true
  %min.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %cval, i32 0, i32 8
  %7 = ptrtoint ptr %min.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %min.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.sw.epilog_crit_edge

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true.i:                                  ; preds = %if.then
  %max.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %cval, i32 0, i32 9
  %9 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %10)
  %cmp1.i = icmp eq i32 %10, 50
  br i1 %cmp1.i, label %do.end.i, label %land.lhs.true8.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %dev2.i = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.154) #16
  %tlv.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 6
  %13 = ptrtoint ptr %tlv.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @snd_dragonfly_quirk_db_scale.scale, ptr %tlv.i, align 4
  %access.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %access.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %access.i, align 4
  %or.i = and i32 %15, -268435473
  %and.i = or i32 %or.i, 16
  store i32 %and.i, ptr %access.i, align 4
  br label %sw.epilog

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %10)
  %cmp10.i = icmp slt i32 %10, 1001
  br i1 %cmp10.i, label %do.end13.i, label %land.lhs.true8.i.sw.epilog_crit_edge

land.lhs.true8.i.sw.epilog_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end13.i:                                       ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev15.i = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev15.i, align 4
  %dev16.i = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16.i, ptr noundef nonnull @.str.158) #16
  %access19.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %access19.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %access19.i, align 4
  %and20.i = and i32 %19, -268435457
  store i32 %and20.i, ptr %access19.i, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge9
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 1, i32 4
  %call = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.5)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %sw.bb2.sw.epilog_crit_edge, label %if.then3

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then3:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  %min_mute = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %cval, i32 0, i32 16
  %20 = ptrtoint ptr %min_mute to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %min_mute, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then3, %sw.bb2.sw.epilog_crit_edge, %do.end13.i, %land.lhs.true8.i.sw.epilog_crit_edge, %do.end.i, %if.then.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hwdep_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usb_sbrc_hwdep_read(ptr nocapture noundef readonly %hw, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %offset) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %count to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %count, label %entry.cleanup88_crit_edge [
    i32 1, label %entry.if.end_crit_edge
    i32 4, label %entry.if.end_crit_edge137
  ]

entry.if.end_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.cleanup88_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup88

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge137
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 223) #12
  %rc_code5 = getelementptr inbounds %struct.usb_mixer_interface, ptr %1, i32 0, i32 9
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rc_code5, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !475
  tail call void @llvm.prefetch.p0(ptr %rc_code5, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %rc_code5) #12, !srcloc !476
  %asmresult.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !477
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp24.not = icmp eq i32 %asmresult.i, 0
  br i1 %cmp24.not, label %if.then25, label %if.end.if.then60_crit_edge

if.end.if.then60_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then60

if.then25:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %rc_waitq = getelementptr inbounds %struct.usb_mixer_interface, ptr %1, i32 0, i32 10
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then25
  %call27 = call i32 @prepare_to_wait_event(ptr noundef %rc_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %call.i104 = call zeroext i1 @__kasan_check_write(ptr noundef %rc_code5, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !478
  call void @llvm.prefetch.p0(ptr %rc_code5, i32 1, i32 3, i32 1) #12
  %5 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %rc_code5) #12, !srcloc !476
  %asmresult.i109 = extractvalue { i32, i32 } %5, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !479
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i109)
  %cmp50.not = icmp eq i32 %asmresult.i109, 0
  br i1 %cmp50.not, label %if.end52, label %if.end57.thread121

if.end52:                                         ; preds = %for.cond
  %tobool.not = icmp eq i32 %call27, 0
  br i1 %tobool.not, label %cleanup, label %if.end57

cleanup:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  call void @schedule() #12
  br label %for.cond

if.end57.thread121:                               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %asmresult.i109.le = extractvalue { i32, i32 } %5, 0
  call void @finish_wait(ptr noundef %rc_waitq, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.then60

if.end57:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end85

if.then60:                                        ; preds = %if.end57.thread121, %if.end.if.then60_crit_edge
  %rc_code.0120 = phi i32 [ %asmresult.i109.le, %if.end57.thread121 ], [ %asmresult.i, %if.end.if.then60_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp61 = icmp eq i32 %count, 1
  br i1 %cmp61, label %if.then62, label %if.else

if.then62:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  %conv = trunc i32 %rc_code.0120 to i8
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 226) #12
  %6 = call i32 @llvm.read_register.i32(metadata !463) #12
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !480
  %and.i = and i32 %8, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !481
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !482
  %9 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf, i8 %conv, i32 -1226833921) #12, !srcloc !483
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #12, !srcloc !481
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !482
  br label %if.end85

if.else:                                          ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 228) #12
  %10 = call i32 @llvm.read_register.i32(metadata !463) #12
  %and.i.i.i105 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i105 to ptr
  %cpu_domain.i.i106 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i106) #6, !srcloc !480
  %and.i107 = and i32 %12, -13
  %or.i108 = or i32 %and.i107, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i108) #12, !srcloc !481
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !482
  %13 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf, i32 %rc_code.0120, i32 -1226833921) #12, !srcloc !484
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #12, !srcloc !481
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !482
  br label %if.end85

if.end85:                                         ; preds = %if.else, %if.then62, %if.end57
  %err.0 = phi i32 [ %9, %if.then62 ], [ %13, %if.else ], [ %call27, %if.end57 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp86 = icmp slt i32 %err.0, 0
  %err.0.count = select i1 %cmp86, i32 %err.0, i32 %count
  br label %cleanup88

cleanup88:                                        ; preds = %if.end85, %entry.cleanup88_crit_edge
  %retval.0 = phi i32 [ %err.0.count, %if.end85 ], [ -22, %entry.cleanup88_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usb_sbrc_hwdep_poll(ptr nocapture noundef readonly %hw, ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %rc_waitq = getelementptr inbounds %struct.usb_mixer_interface, ptr %1, i32 0, i32 10
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %rc_waitq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %3(ptr noundef %file, ptr noundef nonnull %rc_waitq, ptr noundef nonnull %wait) #12
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %rc_code = getelementptr inbounds %struct.usb_mixer_interface, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %rc_code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rc_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 0, i32 65
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usb_soundblaster_remote_complete(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %rc_cfg = getelementptr inbounds %struct.usb_mixer_interface, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rc_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rc_cfg, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  %min_packet_length = getelementptr inbounds %struct.rc_config, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %min_packet_length to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %min_packet_length, align 1
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp1 = icmp ult i32 %7, %conv
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %offset = getelementptr inbounds %struct.rc_config, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %offset, align 4
  %idxprom = zext i8 %11 to i32
  %arrayidx = getelementptr %struct.usb_mixer_interface, ptr %1, i32 0, i32 13, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %13 to i32
  %length = getelementptr inbounds %struct.rc_config, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp5 = icmp eq i8 %15, 2
  br i1 %cmp5, label %if.then7, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add = add nuw nsw i32 %idxprom, 1
  %arrayidx11 = getelementptr %struct.usb_mixer_interface, ptr %1, i32 0, i32 13, i32 %add
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %conv12, 8
  %or = or i32 %shl, %conv3
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.end.if.end13_crit_edge
  %code.0 = phi i32 [ %or, %if.then7 ], [ %conv3, %if.end.if.end13_crit_edge ]
  %mute_code = getelementptr inbounds %struct.rc_config, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %mute_code to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mute_code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %code.0, i32 %19)
  %cmp14 = icmp eq i32 %code.0, %19
  br i1 %cmp14, label %if.then16, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %mute_mixer_id = getelementptr inbounds %struct.rc_config, ptr %3, i32 0, i32 5
  %20 = ptrtoint ptr %mute_mixer_id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mute_mixer_id, align 4
  %conv17 = zext i8 %21 to i32
  tail call void @snd_usb_mixer_notify_id(ptr noundef %1, i32 noundef %conv17) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13.if.end18_crit_edge
  %rc_code = getelementptr inbounds %struct.usb_mixer_interface, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %rc_code to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %code.0, ptr %rc_code, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !485
  tail call void @arm_heavy_mb() #12
  %rc_waitq = getelementptr inbounds %struct.usb_mixer_interface, ptr %1, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %rc_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_audigy2nx_led_resume(ptr nocapture noundef readonly %list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %kctl = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %list, i32 0, i32 2
  %0 = ptrtoint ptr %kctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kctl, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %shr = ashr i32 %3, 8
  %and = and i32 %3, 255
  %call = tail call fastcc i32 @snd_audigy2nx_led_update(ptr noundef %5, i32 noundef %shr, i32 noundef %and)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_audigy2nx_led_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %1, 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_audigy2nx_led_put(ptr nocapture noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %and = and i32 %5, 255
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp ugt i32 %7, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i32 %5, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %shr)
  %cmp4 = icmp eq i32 %7, %shr
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %shl = shl nuw nsw i32 %7, 8
  %or = or i32 %shl, %and
  %8 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %private_value, align 4
  %call = tail call fastcc i32 @snd_audigy2nx_led_update(ptr noundef %3, i32 noundef %7, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp8, i32 %call, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_audigy2nx_led_update(ptr nocapture noundef readonly %mixer, i32 noundef %value, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mixer, align 4
  %call = tail call i32 @snd_usb_lock_shutdown(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 69087298, i32 %3)
  %cmp2 = icmp eq i32 %3, 69087298
  br i1 %cmp2, label %if.then3, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i = shl i32 %7, 8
  %or = or i32 %shl.i, -2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %conv = zext i1 %tobool.not to i16
  %call6 = tail call i32 @snd_usb_ctl_msg(ptr noundef %5, i32 noundef %or, i8 noundef zeroext 36, i8 noundef zeroext 67, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #12
  %8 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %usb_id, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %9 = phi i32 [ %.pr, %if.then3 ], [ %3, %if.end.if.end7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 69087455, i32 %9)
  %cmp9 = icmp eq i32 %9, 69087455
  %dev12 = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev12, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i43 = shl i32 %13, 8
  %or15 = or i32 %shl.i43, -2147483648
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool16.not = icmp eq i32 %value, 0
  %conv19 = zext i1 %tobool16.not to i16
  %call20 = tail call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or15, i8 noundef zeroext 36, i8 noundef zeroext 67, i16 noundef zeroext %conv19, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #12
  br label %if.end28

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %conv25 = trunc i32 %value to i16
  %14 = trunc i32 %index to i16
  %conv26 = add i16 %14, 2
  %call27 = tail call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or15, i8 noundef zeroext 36, i8 noundef zeroext 67, i16 noundef zeroext %conv25, i16 noundef zeroext %conv26, ptr noundef null, i16 noundef zeroext 0) #12
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then11
  %err.0 = phi i32 [ %call20, %if.then11 ], [ %call27, %if.else ]
  tail call void @snd_usb_unlock_shutdown(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end28 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_lock_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_ctl_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_unlock_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_mixer_elem_free(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_mixer_add_list(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu0204_ch_switch_resume(ptr nocapture noundef readonly %list) #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %kctl = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %list, i32 0, i32 2
  %2 = ptrtoint ptr %kctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kctl, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #12
  %call.i = tail call i32 @snd_usb_lock_shutdown(ptr noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.snd_emu0204_ch_switch_update.exit_crit_edge, label %if.end.i

entry.snd_emu0204_ch_switch_update.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_emu0204_ch_switch_update.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %buf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %conv.i = select i1 %tobool.not.i, i8 1, i8 2
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %8, align 1
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i = shl i32 %14, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call5.i = call i32 @snd_usb_ctl_msg(ptr noundef %12, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 1024, i16 noundef zeroext 3584, ptr noundef nonnull %buf.i, i16 noundef zeroext 2) #12
  call void @snd_usb_unlock_shutdown(ptr noundef %7) #12
  br label %snd_emu0204_ch_switch_update.exit

snd_emu0204_ch_switch_update.exit:                ; preds = %if.end.i, %entry.snd_emu0204_ch_switch_update.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end.i ], [ %call.i, %entry.snd_emu0204_ch_switch_update.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu0204_ch_switch_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_emu0204_ch_switch_info.texts) #12
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_emu0204_ch_switch_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu0204_ch_switch_put(ptr nocapture noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp ugt i32 %5, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3 = icmp eq i32 %5, %7
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %private_value, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #12
  %call.i = tail call i32 @snd_usb_lock_shutdown(ptr noundef %10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end5.snd_emu0204_ch_switch_update.exit_crit_edge, label %if.end.i

if.end5.snd_emu0204_ch_switch_update.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_emu0204_ch_switch_update.exit

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %11 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %buf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %conv.i = select i1 %tobool.not.i, i8 1, i8 2
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %11, align 1
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i = shl i32 %17, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call5.i = call i32 @snd_usb_ctl_msg(ptr noundef %15, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 1024, i16 noundef zeroext 3584, ptr noundef nonnull %buf.i, i16 noundef zeroext 2) #12
  call void @snd_usb_unlock_shutdown(ptr noundef %10) #12
  br label %snd_emu0204_ch_switch_update.exit

snd_emu0204_ch_switch_update.exit:                ; preds = %if.end.i, %if.end5.snd_emu0204_ch_switch_update.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end.i ], [ %call.i, %if.end5.snd_emu0204_ch_switch_update.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp7 = icmp slt i32 %retval.0.i, 0
  %spec.select = select i1 %cmp7, i32 %retval.0.i, i32 1
  br label %cleanup

cleanup:                                          ; preds = %snd_emu0204_ch_switch_update.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %snd_emu0204_ch_switch_update.exit ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_ftu_create_effect_switch(ptr noundef %mixer, i32 noundef %validx, i32 noundef %bUnitID) unnamed_addr #0 align 64 {
entry:
  %value.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mixer, ptr %call7.i.i.i, align 8
  %id5.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %id5.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %bUnitID, ptr %id5.i, align 4
  %resume6.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %resume6.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @snd_ftu_eff_switch_update, ptr %resume6.i, align 8
  %call7.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ftu_create_effect_switch.template, ptr noundef nonnull %call7.i.i.i) #12
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.then9.i, label %add_single_ctl_with_resume.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

add_single_ctl_with_resume.exit:                  ; preds = %if.end.i
  %private_free.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i, i32 0, i32 9
  %4 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i, align 4
  %call11.i = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp = icmp slt i32 %call11.i, 0
  br i1 %cmp, label %add_single_ctl_with_resume.exit.cleanup_crit_edge, label %if.end

add_single_ctl_with_resume.exit.cleanup_crit_edge: ; preds = %add_single_ctl_with_resume.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %add_single_ctl_with_resume.exit
  %shl = shl i32 %validx, 8
  %or = or i32 %shl, %bUnitID
  %kctl = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %kctl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kctl, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %private_value, align 4
  %8 = load ptr, ptr %kctl, align 8
  %9 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mixer, align 4
  %dev1.i = getelementptr inbounds %struct.snd_usb_audio, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1.i, align 4
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol, ptr %8, i32 0, i32 7
  %13 = ptrtoint ptr %private_value.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %private_value.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i) #12
  %15 = getelementptr inbounds [2 x i8], ptr %value.i, i32 0, i32 1
  %16 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %value.i, align 1
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %15, align 1
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %12, align 8
  %shl.i.i = shl i32 %19, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %20 = trunc i32 %14 to i16
  %conv.i = and i16 %20, -256
  %ctrl_intf.i.i = getelementptr inbounds %struct.snd_usb_audio, ptr %10, i32 0, i32 28
  %21 = ptrtoint ptr %ctrl_intf.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctrl_intf.i.i, align 4
  %bInterfaceNumber.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %bInterfaceNumber.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bInterfaceNumber.i.i, align 2
  %conv.i.i = zext i8 %24 to i32
  %and6.i = shl i32 %14, 8
  %or7.i = or i32 %and6.i, %conv.i.i
  %conv8.i = trunc i32 %or7.i to i16
  %call9.i = call i32 @snd_usb_ctl_msg(ptr noundef %12, i32 noundef %or3.i, i8 noundef zeroext -127, i8 noundef zeroext -95, i16 noundef zeroext %conv.i, i16 noundef zeroext %conv8.i, ptr noundef nonnull %value.i, i16 noundef zeroext 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.i = icmp slt i32 %call9.i, 0
  br i1 %cmp.i, label %if.end.snd_ftu_eff_switch_init.exit_crit_edge, label %if.end.i7

if.end.snd_ftu_eff_switch_init.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_ftu_eff_switch_init.exit

if.end.i7:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %value.i, align 1
  %conv12.i = zext i8 %26 to i32
  %shl13.i = shl nuw i32 %conv12.i, 24
  %27 = ptrtoint ptr %private_value.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %private_value.i, align 4
  %or15.i = or i32 %shl13.i, %28
  store i32 %or15.i, ptr %private_value.i, align 4
  br label %snd_ftu_eff_switch_init.exit

snd_ftu_eff_switch_init.exit:                     ; preds = %if.end.i7, %if.end.snd_ftu_eff_switch_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #12
  br label %cleanup

cleanup:                                          ; preds = %snd_ftu_eff_switch_init.exit, %add_single_ctl_with_resume.exit.cleanup_crit_edge, %if.then9.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %snd_ftu_eff_switch_init.exit ], [ %call11.i, %add_single_ctl_with_resume.exit.cleanup_crit_edge ], [ -12, %if.then9.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %mixer, i32 noundef %unitid, i32 noundef %control, i32 noundef %cmask, i32 noundef %val_type, i32 noundef %idx_off, ptr nocapture noundef readonly %name, ptr noundef %tlv_callback) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 152) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @snd_usb_mixer_elem_init_std(ptr noundef nonnull %call7.i.i, ptr noundef %mixer, i32 noundef %unitid) #12
  %val_type1 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 7
  %1 = ptrtoint ptr %val_type1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %val_type, ptr %val_type1, align 4
  %channels = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 6
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %channels, align 8
  %control2 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %control2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %control, ptr %control2, align 4
  %cmask3 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %cmask3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cmask, ptr %cmask3, align 8
  %idx_off4 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %idx_off4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %idx_off, ptr %idx_off4, align 4
  %min = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 8
  %6 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %min, align 8
  %max = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %max, align 4
  %res = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %res, align 8
  %dBmin = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 11
  %9 = ptrtoint ptr %dBmin to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %dBmin, align 4
  %dBmax = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 12
  %10 = ptrtoint ptr %dBmax to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dBmax, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_usb_feature_unit_ctl to i32))
  %11 = load ptr, ptr @snd_usb_feature_unit_ctl, align 4
  %call5 = tail call ptr @snd_ctl_new1(ptr noundef %11, ptr noundef nonnull %call7.i.i) #12
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %name9 = getelementptr inbounds %struct.snd_kcontrol, ptr %call5, i32 0, i32 1, i32 4
  %call10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name9, i32 noundef 44, ptr noundef %name)
  %private_free = getelementptr inbounds %struct.snd_kcontrol, ptr %call5, i32 0, i32 9
  %12 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free, align 4
  %tobool11.not = icmp eq ptr %tlv_callback, null
  br i1 %tobool11.not, label %if.end8.if.end13_crit_edge, label %if.then12

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %tlv = getelementptr inbounds %struct.snd_kcontrol, ptr %call5, i32 0, i32 6
  %13 = ptrtoint ptr %tlv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tlv_callback, ptr %tlv, align 4
  %access = getelementptr inbounds %struct.snd_kcontrol, ptr %call5, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %access, align 4
  %or = or i32 %15, 268435472
  store i32 %or, ptr %access, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end8.if.end13_crit_edge
  %call15 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call5, i1 noundef zeroext true) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end13 ], [ -12, %if.then7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_mixer_vol_tlv(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_mixer_elem_init_std(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ftu_eff_switch_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 8, ptr noundef nonnull @snd_ftu_eff_switch_info.texts) #12
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ftu_eff_switch_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %1, 24
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ftu_eff_switch_put(ptr nocapture noundef %kctl, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %value.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %kctl1 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %kctl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kctl1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %5, 24
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %7)
  %cmp = icmp eq i32 %shr, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_value2 = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 7
  %8 = ptrtoint ptr %private_value2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private_value2, align 4
  %and = and i32 %9, 16777215
  %shl = shl i32 %7, 24
  %or = or i32 %and, %shl
  store i32 %or, ptr %private_value2, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %kctl1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kctl1, align 4
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %private_value.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %private_value.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i) #12
  %18 = getelementptr inbounds [2 x i8], ptr %value.i, i32 0, i32 1
  %shr.i = lshr i32 %17, 24
  %conv.i = trunc i32 %shr.i to i8
  %19 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i, ptr %value.i, align 1
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %18, align 1
  %call.i = tail call i32 @snd_usb_lock_shutdown(ptr noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.snd_ftu_eff_switch_update.exit_crit_edge, label %if.end.i

if.end.snd_ftu_eff_switch_update.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_ftu_eff_switch_update.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %13, i32 0, i32 1
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i = shl i32 %24, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %25 = trunc i32 %17 to i16
  %conv6.i = and i16 %25, -256
  %ctrl_intf.i.i = getelementptr inbounds %struct.snd_usb_audio, ptr %13, i32 0, i32 28
  %26 = ptrtoint ptr %ctrl_intf.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctrl_intf.i.i, align 4
  %bInterfaceNumber.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %bInterfaceNumber.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bInterfaceNumber.i.i, align 2
  %conv.i.i = zext i8 %29 to i32
  %and8.i = shl i32 %17, 8
  %or9.i = or i32 %and8.i, %conv.i.i
  %conv10.i = trunc i32 %or9.i to i16
  %call11.i = call i32 @snd_usb_ctl_msg(ptr noundef %22, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext %conv6.i, i16 noundef zeroext %conv10.i, ptr noundef nonnull %value.i, i16 noundef zeroext 2) #12
  call void @snd_usb_unlock_shutdown(ptr noundef %13) #12
  br label %snd_ftu_eff_switch_update.exit

snd_ftu_eff_switch_update.exit:                   ; preds = %if.end.i, %if.end.snd_ftu_eff_switch_update.exit_crit_edge
  %retval.0.i = phi i32 [ %call11.i, %if.end.i ], [ %call.i, %if.end.snd_ftu_eff_switch_update.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp4 = icmp slt i32 %retval.0.i, 0
  %spec.select = select i1 %cmp4, i32 %retval.0.i, i32 1
  br label %cleanup

cleanup:                                          ; preds = %snd_ftu_eff_switch_update.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %snd_ftu_eff_switch_update.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ftu_eff_switch_update(ptr nocapture noundef readonly %list) #0 align 64 {
entry:
  %value = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %kctl = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %list, i32 0, i32 2
  %4 = ptrtoint ptr %kctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kctl, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value) #12
  %8 = getelementptr inbounds [2 x i8], ptr %value, i32 0, i32 1
  %shr = lshr i32 %7, 24
  %conv = trunc i32 %shr to i8
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %value, align 1
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %8, align 1
  %call = tail call i32 @snd_usb_lock_shutdown(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i = shl i32 %14, 8
  %or = or i32 %shl.i, -2147483648
  %15 = trunc i32 %7 to i16
  %conv6 = and i16 %15, -256
  %ctrl_intf.i = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 28
  %16 = ptrtoint ptr %ctrl_intf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl_intf.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv.i = zext i8 %19 to i32
  %and8 = shl i32 %7, 8
  %or9 = or i32 %and8, %conv.i
  %conv10 = trunc i32 %or9 to i16
  %call11 = call i32 @snd_usb_ctl_msg(ptr noundef %12, i32 noundef %or, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext %conv6, i16 noundef zeroext %conv10, ptr noundef nonnull %value, i16 noundef zeroext 2) #12
  call void @snd_usb_unlock_shutdown(ptr noundef %3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_xonar_u1_switch_resume(ptr nocapture noundef readonly %list) #0 align 64 {
entry:
  %status.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %kctl = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %list, i32 0, i32 2
  %2 = ptrtoint ptr %kctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kctl, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %conv = trunc i32 %5 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.addr.i)
  %6 = ptrtoint ptr %status.addr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %status.addr.i, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @snd_usb_lock_shutdown(ptr noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.snd_xonar_u1_switch_update.exit_crit_edge, label %if.end.i

entry.snd_xonar_u1_switch_update.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_xonar_u1_switch_update.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i = shl i32 %12, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call4.i = call i32 @snd_usb_ctl_msg(ptr noundef %10, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 67, i16 noundef zeroext 50, i16 noundef zeroext 0, ptr noundef nonnull %status.addr.i, i16 noundef zeroext 1) #12
  call void @snd_usb_unlock_shutdown(ptr noundef %8) #12
  br label %snd_xonar_u1_switch_update.exit

snd_xonar_u1_switch_update.exit:                  ; preds = %if.end.i, %entry.snd_xonar_u1_switch_update.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ %call.i, %entry.snd_xonar_u1_switch_update.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.addr.i)
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_xonar_u1_switch_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %and = lshr i32 %1, 1
  %and.lobit = and i32 %and, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and.lobit, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_xonar_u1_switch_put(ptr nocapture noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %status.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %4 = trunc i32 %1 to i8
  %conv4 = and i8 %4, -3
  %masksel = select i1 %tobool.not, i8 0, i8 2
  %new_status.0 = or i8 %masksel, %conv4
  %conv5 = zext i8 %new_status.0 to i32
  %conv6 = and i32 %1, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6, i32 %conv5)
  %cmp = icmp eq i32 %conv6, %conv5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 4
  %7 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv5, ptr %private_value, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.addr.i)
  %10 = ptrtoint ptr %status.addr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %new_status.0, ptr %status.addr.i, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %9, align 4
  %call.i = tail call i32 @snd_usb_lock_shutdown(ptr noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end9.snd_xonar_u1_switch_update.exit_crit_edge, label %if.end.i

if.end9.snd_xonar_u1_switch_update.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_xonar_u1_switch_update.exit

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i = shl i32 %16, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call4.i = call i32 @snd_usb_ctl_msg(ptr noundef %14, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 67, i16 noundef zeroext 50, i16 noundef zeroext 0, ptr noundef nonnull %status.addr.i, i16 noundef zeroext 1) #12
  call void @snd_usb_unlock_shutdown(ptr noundef %12) #12
  br label %snd_xonar_u1_switch_update.exit

snd_xonar_u1_switch_update.exit:                  ; preds = %if.end.i, %if.end9.snd_xonar_u1_switch_update.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ %call.i, %if.end9.snd_xonar_u1_switch_update.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp12 = icmp slt i32 %retval.0.i, 0
  %spec.select = select i1 %cmp12, i32 %retval.0.i, i32 1
  br label %cleanup

cleanup:                                          ; preds = %snd_xonar_u1_switch_update.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %snd_xonar_u1_switch_update.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_microii_spdif_default_update(ptr nocapture noundef readonly %list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %kctl = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %list, i32 0, i32 2
  %4 = ptrtoint ptr %kctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kctl, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %call = tail call i32 @snd_usb_lock_shutdown(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i32 %7, 4
  %and = and i32 %shr, 240
  %and2 = and i32 %7, 15
  %or = or i32 %and, %and2
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i = shl i32 %11, 8
  %or5 = or i32 %shl.i, -2147483648
  %12 = trunc i32 %or to i16
  %call7 = tail call i32 @snd_usb_ctl_msg(ptr noundef %9, i32 noundef %or5, i8 noundef zeroext 1, i8 noundef zeroext 67, i16 noundef zeroext %12, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end.end_crit_edge, label %if.end11

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %and12 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  %shr14 = lshr i32 %7, 12
  %and15 = and i32 %shr14, 15
  %conv16 = select i1 %tobool.not, i32 32, i32 160
  %or17 = or i32 %conv16, %and15
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i46 = shl i32 %16, 8
  %or22 = or i32 %shl.i46, -2147483648
  %17 = trunc i32 %or17 to i16
  %call24 = tail call i32 @snd_usb_ctl_msg(ptr noundef %14, i32 noundef %or22, i8 noundef zeroext 1, i8 noundef zeroext 67, i16 noundef zeroext %17, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0) #12
  br label %end

end:                                              ; preds = %if.end11, %if.end.end_crit_edge
  %err.0 = phi i32 [ %call7, %if.end.end_crit_edge ], [ %call24, %if.end11 ]
  tail call void @snd_usb_unlock_shutdown(ptr noundef %3) #12
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_microii_spdif_switch_update(ptr nocapture noundef readonly %list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %kctl = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %list, i32 0, i32 2
  %4 = ptrtoint ptr %kctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kctl, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %call = tail call i32 @snd_usb_lock_shutdown(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i = shl i32 %11, 8
  %or = or i32 %shl.i, -2147483648
  %12 = trunc i32 %7 to i16
  %conv5 = and i16 %12, 255
  %call6 = tail call i32 @snd_usb_ctl_msg(ptr noundef %9, i32 noundef %or, i8 noundef zeroext 1, i8 noundef zeroext 67, i16 noundef zeroext %conv5, i16 noundef zeroext 9, ptr noundef null, i16 noundef zeroext 0) #12
  tail call void @snd_usb_unlock_shutdown(ptr noundef %3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_microii_spdif_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_microii_spdif_default_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %data = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data) #12
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %data, align 1, !annotation !473
  %7 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !473
  %9 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !473
  %call = tail call i32 @snd_usb_lock_shutdown(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %11 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %private_value, align 4
  %conv = trunc i32 %12 to i8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %value, align 8
  %14 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %14, 8
  %conv4 = trunc i32 %shr to i8
  %arrayidx7 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv4, ptr %arrayidx7, align 1
  %arrayidx10 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx10, align 2
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %call11 = tail call ptr @usb_ifnum_to_if(ptr noundef %18, i32 noundef 1) #12
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %if.end.end_crit_edge, label %lor.lhs.false

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

lor.lhs.false:                                    ; preds = %if.end
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %call11, i32 0, i32 2
  %19 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp12 = icmp ult i32 %20, 2
  br i1 %cmp12, label %lor.lhs.false.end_crit_edge, label %if.end15

lor.lhs.false.end_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end15:                                         ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call11, align 8
  %bNumEndpoints = getelementptr %struct.usb_host_interface, ptr %22, i32 1, i32 0, i32 4
  %23 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp18 = icmp eq i8 %24, 0
  br i1 %cmp18, label %if.end15.end_crit_edge, label %if.end21

if.end15.end_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end21:                                         ; preds = %if.end15
  %endpoint = getelementptr %struct.usb_host_interface, ptr %22, i32 1, i32 3
  %25 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bEndpointAddress, align 2
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i = shl i32 %32, 8
  %or28 = or i32 %shl.i, -2147483520
  %conv29 = zext i8 %28 to i16
  %call30 = call i32 @snd_usb_ctl_msg(ptr noundef %30, i32 noundef %or28, i8 noundef zeroext -127, i8 noundef zeroext -94, i16 noundef zeroext 256, i16 noundef zeroext %conv29, ptr noundef nonnull %data, i16 noundef zeroext 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end21.end_crit_edge, label %if.end34

if.end21.end_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end34:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %data, align 1
  %conv36 = zext i8 %34 to i32
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %7, align 1
  %conv38 = zext i8 %36 to i32
  %shl = shl nuw nsw i32 %conv38, 8
  %or39 = or i32 %shl, %conv36
  %37 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %9, align 1
  %conv41 = zext i8 %38 to i32
  %shl42 = shl nuw nsw i32 %conv41, 16
  %or43 = or i32 %or39, %shl42
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %or43)
  %cmp44 = icmp eq i32 %or43, 48000
  %conv46 = select i1 %cmp44, i8 2, i8 0
  %arrayidx49 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %39 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv46, ptr %arrayidx49, align 1
  br label %end

end:                                              ; preds = %if.end34, %if.end21.end_crit_edge, %if.end15.end_crit_edge, %lor.lhs.false.end_crit_edge, %if.end.end_crit_edge
  %err.0 = phi i32 [ %call30, %if.end21.end_crit_edge ], [ 0, %if.end34 ], [ -22, %lor.lhs.false.end_crit_edge ], [ -22, %if.end.end_crit_edge ], [ -22, %if.end15.end_crit_edge ]
  call void @snd_usb_unlock_shutdown(ptr noundef %5) #12
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_microii_spdif_default_put(ptr nocapture noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %and = and i32 %1, -65296
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %and1 = shl nuw nsw i32 %conv, 8
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %value, align 8
  %6 = and i8 %5, 15
  %and6 = zext i8 %6 to i32
  %and1.masked = and i32 %and1, 3840
  %or.masked = or i32 %and1.masked, %and
  %and8 = or i32 %or.masked, %and6
  %shl14 = and i32 %and1, 61440
  %or15 = or i32 %and8, %shl14
  call void @__sanitizer_cov_trace_cmp4(i32 %or15, i32 %1)
  %cmp = icmp eq i32 %or15, %1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data, align 4
  %9 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or15, ptr %private_value, align 4
  %call = tail call i32 @snd_microii_spdif_default_update(ptr noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp18 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp18, i32 %call, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_microii_spdif_mask_get(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 15, ptr %value, align 8
  %arrayidx3 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %arrayidx3, align 1
  %arrayidx6 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx6, align 2
  %arrayidx9 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %3 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx9, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_microii_spdif_switch_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %and = lshr i32 %1, 1
  %and.lobit = and i32 %and, 1
  %2 = xor i32 %and.lobit, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %3 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_microii_spdif_switch_put(ptr nocapture noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %conv1 = select i1 %tobool.not, i32 42, i32 40
  %kctl = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %kctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kctl, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1, i32 %7)
  %cmp.not = icmp eq i32 %conv1, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_value4 = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %8 = ptrtoint ptr %private_value4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv1, ptr %private_value4, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %kctl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %kctl, align 4
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %private_value.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %private_value.i, align 4
  %call.i = tail call i32 @snd_usb_lock_shutdown(ptr noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.snd_microii_spdif_switch_update.exit_crit_edge, label %if.end.i

if.end.snd_microii_spdif_switch_update.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_microii_spdif_switch_update.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i = shl i32 %20, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %21 = trunc i32 %16 to i16
  %conv5.i = and i16 %21, 255
  %call6.i = tail call i32 @snd_usb_ctl_msg(ptr noundef %18, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 67, i16 noundef zeroext %conv5.i, i16 noundef zeroext 9, ptr noundef null, i16 noundef zeroext 0) #12
  tail call void @snd_usb_unlock_shutdown(ptr noundef %12) #12
  br label %snd_microii_spdif_switch_update.exit

snd_microii_spdif_switch_update.exit:             ; preds = %if.end.i, %if.end.snd_microii_spdif_switch_update.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.end.i ], [ %call.i, %if.end.snd_microii_spdif_switch_update.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp5 = icmp slt i32 %retval.0.i, 0
  %spec.select = select i1 %cmp5, i32 %retval.0.i, i32 1
  br label %cleanup

cleanup:                                          ; preds = %snd_microii_spdif_switch_update.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %snd_microii_spdif_switch_update.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mbox1_clk_switch_resume(ptr nocapture noundef readonly %list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %kctl = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %list, i32 0, i32 2
  %2 = ptrtoint ptr %kctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kctl, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %call = tail call fastcc i32 @snd_mbox1_clk_switch_update(ptr noundef %1, i32 noundef %5)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mbox1_src_switch_resume(ptr nocapture noundef readonly %list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %kctl = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %list, i32 0, i32 2
  %2 = ptrtoint ptr %kctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kctl, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %call = tail call fastcc i32 @snd_mbox1_src_switch_update(ptr noundef %1, i32 noundef %5)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_mbox1_clk_switch_update(ptr nocapture noundef readonly %mixer, i32 noundef %is_spdif_sync) unnamed_addr #0 align 64 {
entry:
  %buff.i37 = alloca [3 x i8], align 1
  %buff.i34 = alloca [3 x i8], align 1
  %buff.i = alloca [3 x i8], align 1
  %source.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mixer, align 4
  %call = tail call i32 @snd_usb_lock_shutdown(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %source.i) #12
  %2 = ptrtoint ptr %source.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %source.i, align 1, !annotation !473
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i.i = shl i32 %6, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %call3.i = call i32 @snd_usb_ctl_msg(ptr noundef %4, i32 noundef %or2.i, i8 noundef zeroext -127, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext 1280, ptr noundef nonnull %source.i, i16 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %source.i) #12
  br i1 %cmp.i, label %if.end.err15_crit_edge, label %snd_mbox1_is_spdif_input.exit

if.end.err15_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err15

snd_mbox1_is_spdif_input.exit:                    ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buff.i) #12
  %7 = ptrtoint ptr %buff.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %buff.i, align 1, !annotation !473
  %8 = getelementptr inbounds [3 x i8], ptr %buff.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !473
  %10 = getelementptr inbounds [3 x i8], ptr %buff.i, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %10, align 1, !annotation !473
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i28 = shl i32 %15, 8
  %or2.i29 = or i32 %shl.i.i28, -2147483520
  %call3.i30 = call i32 @snd_usb_ctl_msg(ptr noundef %13, i32 noundef %or2.i29, i8 noundef zeroext -127, i8 noundef zeroext -94, i16 noundef zeroext 256, i16 noundef zeroext 129, ptr noundef nonnull %buff.i, i16 noundef zeroext 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i30)
  %cmp.i31 = icmp slt i32 %call3.i30, 0
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buff.i) #12
  br i1 %cmp.i31, label %snd_mbox1_is_spdif_input.exit.err15_crit_edge, label %snd_mbox1_is_spdif_synced.exit

snd_mbox1_is_spdif_input.exit.err15_crit_edge:    ; preds = %snd_mbox1_is_spdif_input.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err15

snd_mbox1_is_spdif_synced.exit:                   ; preds = %snd_mbox1_is_spdif_input.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_spdif_sync)
  %tobool.not = icmp eq i32 %is_spdif_sync, 0
  %cond = select i1 %tobool.not, i32 48000, i32 0
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buff.i34) #12
  %16 = getelementptr inbounds [3 x i8], ptr %buff.i34, i32 0, i32 1
  %17 = getelementptr inbounds [3 x i8], ptr %buff.i34, i32 0, i32 2
  %conv.i = trunc i32 %cond to i8
  %18 = ptrtoint ptr %buff.i34 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i, ptr %buff.i34, align 1
  %19 = lshr i32 %cond, 8
  %conv3.i = trunc i32 %19 to i8
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv3.i, ptr %16, align 1
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %17, align 1
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i.i36 = shl i32 %25, 8
  %or.i = or i32 %shl.i.i36, -2147483648
  %call10.i = call i32 @snd_usb_ctl_msg(ptr noundef %23, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 34, i16 noundef zeroext 256, i16 noundef zeroext 129, ptr noundef nonnull %buff.i34, i16 noundef zeroext 3) #12
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buff.i34) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11 = icmp slt i32 %call10.i, 0
  br i1 %cmp11, label %snd_mbox1_is_spdif_synced.exit.err15_crit_edge, label %if.end13

snd_mbox1_is_spdif_synced.exit.err15_crit_edge:   ; preds = %snd_mbox1_is_spdif_synced.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err15

if.end13:                                         ; preds = %snd_mbox1_is_spdif_synced.exit
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buff.i37) #12
  %26 = ptrtoint ptr %buff.i37 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %buff.i37, align 1, !annotation !473
  %27 = getelementptr inbounds [3 x i8], ptr %buff.i37, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %27, align 1, !annotation !473
  %29 = getelementptr inbounds [3 x i8], ptr %buff.i37, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %29, align 1, !annotation !473
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %shl.i.i39 = shl i32 %34, 8
  %or2.i40 = or i32 %shl.i.i39, -2147483520
  %call3.i41 = call i32 @snd_usb_ctl_msg(ptr noundef %32, i32 noundef %or2.i40, i8 noundef zeroext -127, i8 noundef zeroext -94, i16 noundef zeroext 256, i16 noundef zeroext 129, ptr noundef nonnull %buff.i37, i16 noundef zeroext 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i41)
  %cmp.i42 = icmp slt i32 %call3.i41, 0
  br i1 %cmp.i42, label %if.end13.snd_mbox1_is_spdif_synced.exit49_crit_edge, label %if.end.i47

if.end13.snd_mbox1_is_spdif_synced.exit49_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_mbox1_is_spdif_synced.exit49

if.end.i47:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %buff.i37 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %buff.i37, align 1
  %37 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %27, align 1
  %or614.i43 = or i8 %38, %36
  %39 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %29, align 1
  %or915.i44 = or i8 %or614.i43, %40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or915.i44)
  %tobool.not.i45 = icmp eq i8 %or915.i44, 0
  %lnot.ext.i46 = zext i1 %tobool.not.i45 to i32
  br label %snd_mbox1_is_spdif_synced.exit49

snd_mbox1_is_spdif_synced.exit49:                 ; preds = %if.end.i47, %if.end13.snd_mbox1_is_spdif_synced.exit49_crit_edge
  %retval.0.i48 = phi i32 [ %lnot.ext.i46, %if.end.i47 ], [ %call3.i41, %if.end13.snd_mbox1_is_spdif_synced.exit49_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buff.i37) #12
  br label %err15

err15:                                            ; preds = %snd_mbox1_is_spdif_synced.exit49, %snd_mbox1_is_spdif_synced.exit.err15_crit_edge, %snd_mbox1_is_spdif_input.exit.err15_crit_edge, %if.end.err15_crit_edge
  %err.0 = phi i32 [ %call10.i, %snd_mbox1_is_spdif_synced.exit.err15_crit_edge ], [ %retval.0.i48, %snd_mbox1_is_spdif_synced.exit49 ], [ %call3.i, %if.end.err15_crit_edge ], [ %call3.i30, %snd_mbox1_is_spdif_input.exit.err15_crit_edge ]
  call void @snd_usb_unlock_shutdown(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %err15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err15 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mbox1_clk_switch_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_mbox1_clk_switch_info.texts) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mbox1_clk_switch_get(ptr nocapture noundef %kctl, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %buff.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 @snd_usb_lock_shutdown(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.err7_crit_edge, label %if.end

entry.err7_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %err7

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buff.i) #12
  %6 = ptrtoint ptr %buff.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %buff.i, align 1, !annotation !473
  %7 = getelementptr inbounds [3 x i8], ptr %buff.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !473
  %9 = getelementptr inbounds [3 x i8], ptr %buff.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !473
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i = shl i32 %14, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %call3.i = call i32 @snd_usb_ctl_msg(ptr noundef %12, i32 noundef %or2.i, i8 noundef zeroext -127, i8 noundef zeroext -94, i16 noundef zeroext 256, i16 noundef zeroext 129, ptr noundef nonnull %buff.i, i16 noundef zeroext 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %snd_mbox1_is_spdif_synced.exit.thread, label %snd_mbox1_is_spdif_synced.exit

snd_mbox1_is_spdif_synced.exit.thread:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buff.i) #12
  br label %err7

snd_mbox1_is_spdif_synced.exit:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %buff.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buff.i, align 1
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %7, align 1
  %or614.i = or i8 %18, %16
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %9, align 1
  %or915.i = or i8 %or614.i, %20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or915.i)
  %tobool.not.i = icmp eq i8 %or915.i, 0
  %lnot.ext.i = zext i1 %tobool.not.i to i32
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buff.i) #12
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 7
  %21 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %lnot.ext.i, ptr %private_value, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %22 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %lnot.ext.i, ptr %value, align 8
  br label %err7

err7:                                             ; preds = %snd_mbox1_is_spdif_synced.exit, %snd_mbox1_is_spdif_synced.exit.thread, %entry.err7_crit_edge
  %err.0 = phi i32 [ %call, %entry.err7_crit_edge ], [ 0, %snd_mbox1_is_spdif_synced.exit ], [ %call3.i, %snd_mbox1_is_spdif_synced.exit.thread ]
  call void @snd_usb_unlock_shutdown(ptr noundef %5) #12
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mbox1_clk_switch_put(ptr nocapture noundef %kctl, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool = icmp eq i32 %1, 0
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2 = icmp ne i32 %3, 0
  %cmp = xor i1 %tobool, %tobool2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv6 = zext i1 %tobool2 to i32
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv6, ptr %private_value, align 4
  %call = tail call fastcc i32 @snd_mbox1_clk_switch_update(ptr noundef %7, i32 noundef %conv6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp13 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp13, i32 %call, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_mbox1_src_switch_update(ptr nocapture noundef readonly %mixer, i32 noundef %is_spdif_input) unnamed_addr #0 align 64 {
entry:
  %buff.i40 = alloca [3 x i8], align 1
  %source.i29 = alloca [1 x i8], align 1
  %buff.i = alloca [1 x i8], align 1
  %source.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mixer, align 4
  %call = tail call i32 @snd_usb_lock_shutdown(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %source.i) #12
  %2 = ptrtoint ptr %source.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %source.i, align 1, !annotation !473
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i.i = shl i32 %6, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %call3.i = call i32 @snd_usb_ctl_msg(ptr noundef %4, i32 noundef %or2.i, i8 noundef zeroext -127, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext 1280, ptr noundef nonnull %source.i, i16 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %source.i) #12
  br i1 %cmp.i, label %if.end.err15_crit_edge, label %snd_mbox1_is_spdif_input.exit

if.end.err15_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err15

snd_mbox1_is_spdif_input.exit:                    ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buff.i) #12
  %7 = trunc i32 %is_spdif_input to i8
  %8 = and i8 %7, 1
  %conv.i = add nuw nsw i8 %8, 1
  %9 = ptrtoint ptr %buff.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %buff.i, align 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i28 = shl i32 %13, 8
  %or.i = or i32 %shl.i.i28, -2147483648
  %call2.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext 1280, ptr noundef nonnull %buff.i, i16 noundef zeroext 1) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buff.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp7 = icmp slt i32 %call2.i, 0
  br i1 %cmp7, label %snd_mbox1_is_spdif_input.exit.err15_crit_edge, label %if.end9

snd_mbox1_is_spdif_input.exit.err15_crit_edge:    ; preds = %snd_mbox1_is_spdif_input.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err15

if.end9:                                          ; preds = %snd_mbox1_is_spdif_input.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %source.i29) #12
  %14 = ptrtoint ptr %source.i29 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %source.i29, align 1, !annotation !473
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i.i31 = shl i32 %18, 8
  %or2.i32 = or i32 %shl.i.i31, -2147483520
  %call3.i33 = call i32 @snd_usb_ctl_msg(ptr noundef %16, i32 noundef %or2.i32, i8 noundef zeroext -127, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext 1280, ptr noundef nonnull %source.i29, i16 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i33)
  %cmp.i34 = icmp slt i32 %call3.i33, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %source.i29) #12
  br i1 %cmp.i34, label %if.end9.err15_crit_edge, label %snd_mbox1_is_spdif_input.exit39

if.end9.err15_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %err15

snd_mbox1_is_spdif_input.exit39:                  ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buff.i40) #12
  %19 = ptrtoint ptr %buff.i40 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %buff.i40, align 1, !annotation !473
  %20 = getelementptr inbounds [3 x i8], ptr %buff.i40, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %20, align 1, !annotation !473
  %22 = getelementptr inbounds [3 x i8], ptr %buff.i40, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %22, align 1, !annotation !473
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i42 = shl i32 %27, 8
  %or2.i43 = or i32 %shl.i.i42, -2147483520
  %call3.i44 = call i32 @snd_usb_ctl_msg(ptr noundef %25, i32 noundef %or2.i43, i8 noundef zeroext -127, i8 noundef zeroext -94, i16 noundef zeroext 256, i16 noundef zeroext 129, ptr noundef nonnull %buff.i40, i16 noundef zeroext 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i44)
  %cmp.i45 = icmp slt i32 %call3.i44, 0
  br i1 %cmp.i45, label %snd_mbox1_is_spdif_input.exit39.snd_mbox1_is_spdif_synced.exit_crit_edge, label %if.end.i46

snd_mbox1_is_spdif_input.exit39.snd_mbox1_is_spdif_synced.exit_crit_edge: ; preds = %snd_mbox1_is_spdif_input.exit39
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_mbox1_is_spdif_synced.exit

if.end.i46:                                       ; preds = %snd_mbox1_is_spdif_input.exit39
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %buff.i40 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %buff.i40, align 1
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %20, align 1
  %or614.i = or i8 %31, %29
  %32 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %22, align 1
  %or915.i = or i8 %or614.i, %33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or915.i)
  %tobool.not.i = icmp eq i8 %or915.i, 0
  %lnot.ext.i = zext i1 %tobool.not.i to i32
  br label %snd_mbox1_is_spdif_synced.exit

snd_mbox1_is_spdif_synced.exit:                   ; preds = %if.end.i46, %snd_mbox1_is_spdif_input.exit39.snd_mbox1_is_spdif_synced.exit_crit_edge
  %retval.0.i47 = phi i32 [ %lnot.ext.i, %if.end.i46 ], [ %call3.i44, %snd_mbox1_is_spdif_input.exit39.snd_mbox1_is_spdif_synced.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buff.i40) #12
  br label %err15

err15:                                            ; preds = %snd_mbox1_is_spdif_synced.exit, %if.end9.err15_crit_edge, %snd_mbox1_is_spdif_input.exit.err15_crit_edge, %if.end.err15_crit_edge
  %err.0 = phi i32 [ %call2.i, %snd_mbox1_is_spdif_input.exit.err15_crit_edge ], [ %retval.0.i47, %snd_mbox1_is_spdif_synced.exit ], [ %call3.i, %if.end.err15_crit_edge ], [ %call3.i33, %if.end9.err15_crit_edge ]
  call void @snd_usb_unlock_shutdown(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %err15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err15 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mbox1_src_switch_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_mbox1_src_switch_info.texts) #12
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_mbox1_src_switch_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mbox1_src_switch_put(ptr nocapture noundef %kctl, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool = icmp eq i32 %1, 0
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2 = icmp ne i32 %3, 0
  %cmp = xor i1 %tobool, %tobool2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv6 = zext i1 %tobool2 to i32
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv6, ptr %private_value, align 4
  %call = tail call fastcc i32 @snd_mbox1_src_switch_update(ptr noundef %7, i32 noundef %conv6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp13 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp13, i32 %call, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_nativeinstruments_control_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %1, 24
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_nativeinstruments_control_put(ptr nocapture noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %1, 24
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %conv3 = and i32 %3, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv3)
  %cmp = icmp eq i32 %shr, %conv3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %and6 = and i32 %1, 16777215
  %shl = shl i32 %3, 24
  %or = or i32 %shl, %and6
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %private_value, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %kctl.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %kctl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %kctl.i, align 4
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %private_value.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %private_value.i, align 4
  %call.i = tail call i32 @snd_usb_lock_shutdown(ptr noundef %10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.snd_ni_update_cur_val.exit_crit_edge, label %if.end.i

if.end.snd_ni_update_cur_val.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_ni_update_cur_val.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i.i = shl i32 %18, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %shr.i = lshr i32 %14, 16
  %conv.i = trunc i32 %shr.i to i8
  %shr4.i = lshr i32 %14, 24
  %conv5.i = trunc i32 %shr4.i to i16
  %conv7.i = trunc i32 %14 to i16
  %call8.i = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or.i, i8 noundef zeroext %conv.i, i8 noundef zeroext 64, i16 noundef zeroext %conv5.i, i16 noundef zeroext %conv7.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #12
  tail call void @snd_usb_unlock_shutdown(ptr noundef %10) #12
  br label %snd_ni_update_cur_val.exit

snd_ni_update_cur_val.exit:                       ; preds = %if.end.i, %if.end.snd_ni_update_cur_val.exit_crit_edge
  %retval.0.i = phi i32 [ %call8.i, %if.end.i ], [ %call.i, %if.end.snd_ni_update_cur_val.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp9 = icmp slt i32 %retval.0.i, 0
  %spec.select = select i1 %cmp9, i32 %retval.0.i, i32 1
  br label %cleanup

cleanup:                                          ; preds = %snd_ni_update_cur_val.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %snd_ni_update_cur_val.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ni_update_cur_val(ptr nocapture noundef readonly %list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %kctl = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %list, i32 0, i32 2
  %4 = ptrtoint ptr %kctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kctl, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %call = tail call i32 @snd_usb_lock_shutdown(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i = shl i32 %11, 8
  %or = or i32 %shl.i, -2147483648
  %shr = lshr i32 %7, 16
  %conv = trunc i32 %shr to i8
  %shr4 = lshr i32 %7, 24
  %conv5 = trunc i32 %shr4 to i16
  %conv7 = trunc i32 %7 to i16
  %call8 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or, i8 noundef zeroext %conv, i8 noundef zeroext 64, i16 noundef zeroext %conv5, i16 noundef zeroext %conv7, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #12
  tail call void @snd_usb_unlock_shutdown(ptr noundef %3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_soundblaster_e1_switch_resume(ptr nocapture noundef readonly %list) #0 align 64 {
entry:
  %buff.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %kctl = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %list, i32 0, i32 2
  %2 = ptrtoint ptr %kctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kctl, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %conv = trunc i32 %5 to i8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buff.i) #12
  %8 = getelementptr inbounds [2 x i8], ptr %buff.i, i32 0, i32 1
  %9 = ptrtoint ptr %buff.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %buff.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not.i = icmp eq i8 %conv, 0
  %conv2.i = select i1 %tobool.not.i, i8 0, i8 2
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv2.i, ptr %8, align 1
  %call.i = tail call i32 @snd_usb_lock_shutdown(ptr noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.snd_soundblaster_e1_switch_update.exit_crit_edge, label %if.end.i

entry.snd_soundblaster_e1_switch_update.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_soundblaster_e1_switch_update.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i = shl i32 %14, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call7.i = call i32 @snd_usb_ctl_msg(ptr noundef %12, i32 noundef %or.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 514, i16 noundef zeroext 3, ptr noundef nonnull %buff.i, i16 noundef zeroext 2) #12
  call void @snd_usb_unlock_shutdown(ptr noundef %7) #12
  br label %snd_soundblaster_e1_switch_update.exit

snd_soundblaster_e1_switch_update.exit:           ; preds = %if.end.i, %entry.snd_soundblaster_e1_switch_update.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %if.end.i ], [ %call.i, %entry.snd_soundblaster_e1_switch_update.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buff.i) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_soundblaster_e1_switch_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_soundblaster_e1_switch_info.texts) #12
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_soundblaster_e1_switch_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_soundblaster_e1_switch_put(ptr nocapture noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %buff.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool = icmp ne i32 %1, 0
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %conv3 = zext i1 %tobool to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv3)
  %cmp = icmp eq i32 %3, %conv3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv3, ptr %private_value, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buff.i) #12
  %11 = getelementptr inbounds [2 x i8], ptr %buff.i, i32 0, i32 1
  %12 = ptrtoint ptr %buff.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %buff.i, align 1
  %conv2.i = select i1 %tobool, i8 2, i8 0
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv2.i, ptr %11, align 1
  %call.i = tail call i32 @snd_usb_lock_shutdown(ptr noundef %10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.snd_soundblaster_e1_switch_update.exit_crit_edge, label %if.end.i

if.end.snd_soundblaster_e1_switch_update.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_soundblaster_e1_switch_update.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i = shl i32 %17, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call7.i = call i32 @snd_usb_ctl_msg(ptr noundef %15, i32 noundef %or.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 514, i16 noundef zeroext 3, ptr noundef nonnull %buff.i, i16 noundef zeroext 2) #12
  call void @snd_usb_unlock_shutdown(ptr noundef %10) #12
  br label %snd_soundblaster_e1_switch_update.exit

snd_soundblaster_e1_switch_update.exit:           ; preds = %if.end.i, %if.end.snd_soundblaster_e1_switch_update.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %if.end.i ], [ %call.i, %if.end.snd_soundblaster_e1_switch_update.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buff.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp7 = icmp slt i32 %retval.0.i, 0
  %spec.select = select i1 %cmp7, i32 %retval.0.i, i32 1
  br label %cleanup

cleanup:                                          ; preds = %snd_soundblaster_e1_switch_update.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %snd_soundblaster_e1_switch_update.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_rme_rate_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cond = icmp eq i32 %3, 0
  %spec.select = select i1 %cond, i32 32000, i32 0
  %spec.select15 = select i1 %cond, i32 800000, i32 200000
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select15, ptr %6, align 4
  %step = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 2
  %8 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %step, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme_rate_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %status1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status1) #12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status1, align 4, !annotation !473
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %1 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call.i = tail call i32 @snd_usb_lock_shutdown(ptr noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %dev1.i.i = getelementptr inbounds %struct.snd_usb_audio, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i.i = shl i32 %10, 8
  %or2.i.i = or i32 %shl.i.i.i, -2147483520
  %call3.i.i = call i32 @snd_usb_ctl_msg(ptr noundef %8, i32 noundef %or2.i.i, i8 noundef zeroext 23, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %status1, i16 noundef zeroext 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %snd_rme_get_status1.exit.thread31, label %if.end

snd_rme_get_status1.exit.thread31:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev5.i.i = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i.i, ptr noundef nonnull @.str.84, i32 noundef 23, i32 noundef %call3.i.i) #16
  call void @snd_usb_unlock_shutdown(ptr noundef %6) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @snd_usb_unlock_shutdown(ptr noundef %6) #12
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %11 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %private_value, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %12, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb11
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %14 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status1, align 4
  %shr = lshr i32 %15, 16
  %and = and i32 %shr, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %and)
  %cmp1 = icmp ult i32 %and, 20
  br i1 %cmp1, label %sw.bb.sw.epilog.sink.split_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %if.end
  %16 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status1, align 4
  %shr5 = lshr i32 %17, 8
  %and6 = and i32 %shr5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and6)
  %cmp7 = icmp ult i32 %and6, 12
  br i1 %cmp7, label %sw.bb4.sw.epilog.sink.split_crit_edge, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb4.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %if.end
  %18 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status1, align 4
  %shr12 = lshr i32 %19, 12
  %and13 = and i32 %shr12, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and13)
  %cmp14 = icmp ult i32 %and13, 12
  br i1 %cmp14, label %sw.bb11.sw.epilog.sink.split_crit_edge, label %sw.bb11.sw.epilog_crit_edge

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb11.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb11.sw.epilog.sink.split_crit_edge, %sw.bb4.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %and13.sink = phi i32 [ %and, %sw.bb.sw.epilog.sink.split_crit_edge ], [ %and6, %sw.bb4.sw.epilog.sink.split_crit_edge ], [ %and13, %sw.bb11.sw.epilog.sink.split_crit_edge ]
  %arrayidx16 = getelementptr [20 x i32], ptr @snd_rme_rate_table, i32 0, i32 %and13.sink
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx16, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb11.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %rate.0 = phi i32 [ 0, %sw.bb11.sw.epilog_crit_edge ], [ 0, %sw.bb4.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ %21, %sw.epilog.sink.split ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %22 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %rate.0, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %snd_rme_get_status1.exit.thread31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %if.end.cleanup_crit_edge ], [ %call3.i.i, %snd_rme_get_status1.exit.thread31 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status1) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme_sync_state_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @snd_rme_sync_state_info.sync_states) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme_sync_state_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %status1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status1) #12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status1, align 4, !annotation !473
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %1 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call.i = tail call i32 @snd_usb_lock_shutdown(ptr noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %dev1.i.i = getelementptr inbounds %struct.snd_usb_audio, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i.i = shl i32 %10, 8
  %or2.i.i = or i32 %shl.i.i.i, -2147483520
  %call3.i.i = call i32 @snd_usb_ctl_msg(ptr noundef %8, i32 noundef %or2.i.i, i8 noundef zeroext 23, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %status1, i16 noundef zeroext 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %snd_rme_get_status1.exit.thread24, label %if.end

snd_rme_get_status1.exit.thread24:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev5.i.i = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i.i, ptr noundef nonnull @.str.84, i32 noundef 23, i32 noundef %call3.i.i) #16
  call void @snd_usb_unlock_shutdown(ptr noundef %6) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @snd_usb_unlock_shutdown(ptr noundef %6) #12
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %11 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %private_value, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %12, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status1, align 4
  %and = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %15, 1
  %spec.select = select i1 %tobool.not, i32 %and2, i32 2
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %16 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status1, align 4
  %and8 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else11, label %sw.bb7.sw.epilog_crit_edge

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.else11:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #14
  %and12 = lshr i32 %17, 1
  %and12.lobit = and i32 %and12, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else11, %sw.bb7.sw.epilog_crit_edge, %sw.bb
  %idx.0 = phi i32 [ 2, %sw.bb7.sw.epilog_crit_edge ], [ %and12.lobit, %if.else11 ], [ %spec.select, %sw.bb ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %idx.0, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %snd_rme_get_status1.exit.thread24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %if.end.cleanup_crit_edge ], [ %call3.i.i, %snd_rme_get_status1.exit.thread24 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status1) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme_spdif_if_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_rme_spdif_if_info.spdif_if) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme_spdif_if_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %status1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status1) #12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status1, align 4, !annotation !473
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %1 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call.i = tail call i32 @snd_usb_lock_shutdown(ptr noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %dev1.i.i = getelementptr inbounds %struct.snd_usb_audio, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i.i = shl i32 %10, 8
  %or2.i.i = or i32 %shl.i.i.i, -2147483520
  %call3.i.i = call i32 @snd_usb_ctl_msg(ptr noundef %8, i32 noundef %or2.i.i, i8 noundef zeroext 23, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %status1, i16 noundef zeroext 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %snd_rme_get_status1.exit.thread5, label %if.end

snd_rme_get_status1.exit.thread5:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev5.i.i = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i.i, ptr noundef nonnull @.str.84, i32 noundef 23, i32 noundef %call3.i.i) #16
  call void @snd_usb_unlock_shutdown(ptr noundef %6) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @snd_usb_unlock_shutdown(ptr noundef %6) #12
  %11 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status1, align 4
  %shr = lshr i32 %12, 4
  %and = and i32 %shr, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %snd_rme_get_status1.exit.thread5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call3.i.i, %snd_rme_get_status1.exit.thread5 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status1) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme_spdif_format_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_rme_spdif_format_info.optical_type) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme_spdif_format_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %status1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status1) #12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status1, align 4, !annotation !473
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %1 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call.i = tail call i32 @snd_usb_lock_shutdown(ptr noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %dev1.i.i = getelementptr inbounds %struct.snd_usb_audio, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i.i = shl i32 %10, 8
  %or2.i.i = or i32 %shl.i.i.i, -2147483520
  %call3.i.i = call i32 @snd_usb_ctl_msg(ptr noundef %8, i32 noundef %or2.i.i, i8 noundef zeroext 23, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %status1, i16 noundef zeroext 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %snd_rme_get_status1.exit.thread5, label %if.end

snd_rme_get_status1.exit.thread5:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev5.i.i = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i.i, ptr noundef nonnull @.str.84, i32 noundef 23, i32 noundef %call3.i.i) #16
  call void @snd_usb_unlock_shutdown(ptr noundef %6) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @snd_usb_unlock_shutdown(ptr noundef %6) #12
  %11 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status1, align 4
  %shr = lshr i32 %12, 5
  %and = and i32 %shr, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %snd_rme_get_status1.exit.thread5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call3.i.i, %snd_rme_get_status1.exit.thread5 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status1) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme_sync_source_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 4, ptr noundef nonnull @snd_rme_sync_source_info.sync_sources) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme_sync_source_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %status1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status1) #12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status1, align 4, !annotation !473
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %1 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call.i = tail call i32 @snd_usb_lock_shutdown(ptr noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %dev1.i.i = getelementptr inbounds %struct.snd_usb_audio, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i.i = shl i32 %10, 8
  %or2.i.i = or i32 %shl.i.i.i, -2147483520
  %call3.i.i = call i32 @snd_usb_ctl_msg(ptr noundef %8, i32 noundef %or2.i.i, i8 noundef zeroext 23, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %status1, i16 noundef zeroext 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %snd_rme_get_status1.exit.thread5, label %if.end

snd_rme_get_status1.exit.thread5:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev5.i.i = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i.i, ptr noundef nonnull @.str.84, i32 noundef 23, i32 noundef %call3.i.i) #16
  call void @snd_usb_unlock_shutdown(ptr noundef %6) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @snd_usb_unlock_shutdown(ptr noundef %6) #12
  %11 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status1, align 4
  %shr = lshr i32 %12, 6
  %and = and i32 %shr, 3
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %snd_rme_get_status1.exit.thread5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call3.i.i, %snd_rme_get_status1.exit.thread5 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status1) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme_current_freq_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %status1 = alloca i32, align 4
  %den = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status1) #12
  %6 = ptrtoint ptr %status1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %status1, align 4, !annotation !473
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %den) #12
  %7 = ptrtoint ptr %den to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %den, align 4, !annotation !473
  %call = tail call i32 @snd_usb_lock_shutdown(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i = shl i32 %11, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %call3.i = call i32 @snd_usb_ctl_msg(ptr noundef %9, i32 noundef %or2.i, i8 noundef zeroext 23, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %status1, i16 noundef zeroext 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %snd_rme_read_value.exit.thread, label %if.end5

snd_rme_read_value.exit.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i, ptr noundef nonnull @.str.84, i32 noundef 23, i32 noundef %call3.i) #16
  br label %end

if.end5:                                          ; preds = %if.end
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i28 = shl i32 %15, 8
  %or2.i29 = or i32 %shl.i.i28, -2147483520
  %call3.i30 = call i32 @snd_usb_ctl_msg(ptr noundef %13, i32 noundef %or2.i29, i8 noundef zeroext 17, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %den, i16 noundef zeroext 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i30)
  %cmp.i31 = icmp slt i32 %call3.i30, 0
  br i1 %cmp.i31, label %snd_rme_read_value.exit34.thread, label %if.end9

snd_rme_read_value.exit34.thread:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %dev5.i32 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i32, ptr noundef nonnull @.str.84, i32 noundef 17, i32 noundef %call3.i30) #16
  br label %end

if.end9:                                          ; preds = %if.end5
  %16 = ptrtoint ptr %den to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %den, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp10 = icmp eq i32 %17, 0
  br i1 %cmp10, label %if.end9.cond.end_crit_edge, label %cond.false

if.end9.cond.end_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i32 %17 to i64
  %call11 = call i64 @div64_u64(i64 noundef 104857600000000, i64 noundef %conv) #12
  %extract.t = trunc i64 %call11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end9.cond.end_crit_edge
  %cond.off0 = phi i32 [ %extract.t, %cond.false ], [ 0, %if.end9.cond.end_crit_edge ]
  %18 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status1, align 4
  %shr = lshr i32 %19, 18
  %and = and i32 %shr, 7
  %shl = shl i32 %cond.off0, %and
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %20 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shl, ptr %value, align 8
  br label %end

end:                                              ; preds = %cond.end, %snd_rme_read_value.exit34.thread, %snd_rme_read_value.exit.thread
  %err.0 = phi i32 [ %call3.i30, %cond.end ], [ %call3.i, %snd_rme_read_value.exit.thread ], [ %call3.i30, %snd_rme_read_value.exit34.thread ]
  call void @snd_usb_unlock_shutdown(ptr noundef %5) #12
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %den) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status1) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_bbfpro_ctl_add(ptr noundef %mixer, i8 noundef zeroext %reg, i8 noundef zeroext %index, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  %knew = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %knew) #12
  %0 = call ptr @memcpy(ptr %knew, ptr @snd_bbfpro_ctl_control, i32 44)
  %name1 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 3
  %1 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %name, ptr %name1, align 4
  %2 = and i8 %reg, 1
  %and = zext i8 %2 to i32
  %conv2 = zext i8 %index to i32
  %shl = shl nuw nsw i32 %conv2, 1
  %or = or i32 %shl, %and
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 11
  %3 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or, ptr %private_value, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.add_single_ctl_with_resume.exit_crit_edge, label %if.end.i

entry.add_single_ctl_with_resume.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %add_single_ctl_with_resume.exit

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mixer, ptr %call7.i.i.i, align 8
  %id5.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %id5.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %id5.i, align 4
  %resume6.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %resume6.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @snd_bbfpro_ctl_resume, ptr %resume6.i, align 8
  %call7.i = call ptr @snd_ctl_new1(ptr noundef nonnull %knew, ptr noundef nonnull %call7.i.i.i) #12
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %add_single_ctl_with_resume.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %private_free.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.i, i32 0, i32 9
  %8 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i, align 4
  %call11.i = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i, i1 noundef zeroext false) #12
  br label %add_single_ctl_with_resume.exit

add_single_ctl_with_resume.exit:                  ; preds = %if.end10.i, %if.then9.i, %entry.add_single_ctl_with_resume.exit_crit_edge
  %retval.0.i = phi i32 [ %call11.i, %if.end10.i ], [ -12, %if.then9.i ], [ -12, %entry.add_single_ctl_with_resume.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bbfpro_vol_resume(ptr nocapture noundef readonly %list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %kctl = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %list, i32 0, i32 2
  %0 = ptrtoint ptr %kctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kctl, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @snd_usb_lock_shutdown(ptr noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.snd_bbfpro_vol_update.exit_crit_edge, label %if.end.i

entry.snd_bbfpro_vol_update.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_bbfpro_vol_update.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = trunc i32 %3 to i16
  %conv = and i16 %8, 511
  %9 = shl i16 %8, 5
  %10 = and i16 %9, -16384
  %conv6.i = or i16 %10, %conv
  %and1 = lshr i32 %3, 11
  %conv8.i = trunc i32 %and1 to i16
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i = shl i32 %14, 8
  %or11.i = or i32 %shl.i.i, -2147483648
  %call12.i = tail call i32 @snd_usb_ctl_msg(ptr noundef %12, i32 noundef %or11.i, i8 noundef zeroext 18, i8 noundef zeroext 64, i16 noundef zeroext %conv8.i, i16 noundef zeroext %conv6.i, ptr noundef null, i16 noundef zeroext 0) #12
  tail call void @snd_usb_unlock_shutdown(ptr noundef %7) #12
  br label %snd_bbfpro_vol_update.exit

snd_bbfpro_vol_update.exit:                       ; preds = %if.end.i, %entry.snd_bbfpro_vol_update.exit_crit_edge
  %retval.0.i = phi i32 [ %call12.i, %if.end.i ], [ %call.i, %entry.snd_bbfpro_vol_update.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_bbfpro_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  store i32 65536, ptr %max, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_bbfpro_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %1, 9
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bbfpro_vol_put(ptr nocapture noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = trunc i32 %7 to i16
  %conv = and i16 %8, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %5)
  %cmp = icmp ugt i32 %5, 65536
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i32 %7, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %shr)
  %cmp4 = icmp eq i32 %5, %shr
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %conv9 = zext i16 %conv to i32
  %shl = shl nuw nsw i32 %5, 9
  %or = or i32 %shl, %conv9
  %9 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %private_value, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @snd_usb_lock_shutdown(ptr noundef %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.snd_bbfpro_vol_update.exit_crit_edge, label %if.end.i

if.end7.snd_bbfpro_vol_update.exit_crit_edge:     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_bbfpro_vol_update.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %value.tr.i = trunc i32 %5 to i16
  %12 = shl i16 %value.tr.i, 14
  %conv6.i = or i16 %conv, %12
  %and3.i = lshr i32 %5, 2
  %conv8.i = trunc i32 %and3.i to i16
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i = shl i32 %16, 8
  %or11.i = or i32 %shl.i.i, -2147483648
  %call12.i = tail call i32 @snd_usb_ctl_msg(ptr noundef %14, i32 noundef %or11.i, i8 noundef zeroext 18, i8 noundef zeroext 64, i16 noundef zeroext %conv8.i, i16 noundef zeroext %conv6.i, ptr noundef null, i16 noundef zeroext 0) #12
  tail call void @snd_usb_unlock_shutdown(ptr noundef %11) #12
  br label %snd_bbfpro_vol_update.exit

snd_bbfpro_vol_update.exit:                       ; preds = %if.end.i, %if.end7.snd_bbfpro_vol_update.exit_crit_edge
  %retval.0.i = phi i32 [ %call12.i, %if.end.i ], [ %call.i, %if.end7.snd_bbfpro_vol_update.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp11 = icmp slt i32 %retval.0.i, 0
  %spec.select = select i1 %cmp11, i32 %retval.0.i, i32 1
  br label %cleanup

cleanup:                                          ; preds = %snd_bbfpro_vol_update.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %snd_bbfpro_vol_update.exit ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bbfpro_ctl_resume(ptr nocapture noundef readonly %list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %kctl = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %list, i32 0, i32 2
  %0 = ptrtoint ptr %kctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kctl, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = lshr i32 %3, 1
  %conv2 = trunc i32 %4 to i8
  %5 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call.i = tail call i32 @snd_usb_lock_shutdown(ptr noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.snd_bbfpro_ctl_update.exit_crit_edge, label %if.end.i

entry.snd_bbfpro_ctl_update.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_bbfpro_ctl_update.exit

if.end.i:                                         ; preds = %entry
  %conv10 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv10)
  %cmp2.i = icmp eq i32 %conv10, 0
  br i1 %cmp2.i, label %if.then4.i, label %if.else19.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv2)
  %cmp6.i = icmp eq i8 %conv2, 1
  br i1 %cmp6.i, label %if.then4.i.if.end31.i_crit_edge, label %if.else.i

if.then4.i.if.end31.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.else.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv5.i = and i32 %4, 255
  %shl.i = shl nuw i32 1, %conv5.i
  %conv12.i = trunc i32 %shl.i to i16
  br label %if.end31.i

if.else19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv20.i = and i32 %4, 255
  %shl21.i = shl nuw i32 1, %conv20.i
  %conv22.i = trunc i32 %shl21.i to i16
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else19.i, %if.else.i, %if.then4.i.if.end31.i_crit_edge
  %.sink.i = phi i16 [ %conv12.i, %if.else.i ], [ %conv22.i, %if.else19.i ], [ 3, %if.then4.i.if.end31.i_crit_edge ]
  %usb_req.0.off0.i = phi i8 [ 16, %if.else.i ], [ 23, %if.else19.i ], [ 16, %if.then4.i.if.end31.i_crit_edge ]
  %9 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  %conv10.i = select i1 %tobool.not.i, i16 0, i16 %.sink.i
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i = shl i32 %13, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call35.i = tail call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i, i8 noundef zeroext %usb_req.0.off0.i, i8 noundef zeroext 64, i16 noundef zeroext %conv10.i, i16 noundef zeroext %.sink.i, ptr noundef null, i16 noundef zeroext 0) #12
  tail call void @snd_usb_unlock_shutdown(ptr noundef %8) #12
  br label %snd_bbfpro_ctl_update.exit

snd_bbfpro_ctl_update.exit:                       ; preds = %if.end31.i, %entry.snd_bbfpro_ctl_update.exit_crit_edge
  %retval.0.i = phi i32 [ %call35.i, %if.end31.i ], [ %call.i, %entry.snd_bbfpro_ctl_update.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bbfpro_ctl_info(ptr nocapture noundef readonly %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = and i32 %1, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_bbfpro_ctl_info.texts) #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %4 = and i32 %1, 509
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call19 = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_bbfpro_ctl_info.texts.123) #12
  br label %cleanup

if.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %6 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %8 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %max, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %type, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then18, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call19, %if.then18 ], [ 0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_bbfpro_ctl_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr4 = lshr i32 %1, 9
  %conv23 = and i32 %shr4, 255
  %value24 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value24 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv23, ptr %value24, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bbfpro_ctl_put(ptr nocapture noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %6 = trunc i32 %5 to i8
  %conv = and i8 %6, 1
  %7 = lshr i32 %5, 1
  %conv3 = trunc i32 %7 to i8
  %conv6 = zext i8 %conv to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %cmp = icmp eq i8 %conv, 0
  %8 = and i32 %5, 510
  %val.0.in = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %val.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %val.0 = load i32, ptr %val.0.in, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val.0)
  %cmp24 = icmp sgt i32 %val.0, 1
  br i1 %cmp24, label %entry.cleanup_crit_edge, label %if.end27

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end27:                                         ; preds = %entry
  %shr465 = lshr i32 %5, 9
  %and5 = and i32 %shr465, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0, i32 %and5)
  %cmp28 = icmp eq i32 %val.0, %and5
  br i1 %cmp28, label %if.end27.cleanup_crit_edge, label %if.end31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %or = or i32 %8, %conv6
  %and35 = shl i32 %val.0, 9
  %shl36 = and i32 %and35, 512
  %or37 = or i32 %or, %shl36
  %10 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or37, ptr %private_value, align 4
  %conv39 = trunc i32 %val.0 to i8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @snd_usb_lock_shutdown(ptr noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end31.snd_bbfpro_ctl_update.exit_crit_edge, label %if.end.i

if.end31.snd_bbfpro_ctl_update.exit_crit_edge:    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_bbfpro_ctl_update.exit

if.end.i:                                         ; preds = %if.end31
  br i1 %cmp, label %if.then4.i, label %if.else19.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv3)
  %cmp6.i = icmp eq i8 %conv3, 1
  br i1 %cmp6.i, label %if.then4.i.if.end31.i_crit_edge, label %if.else.i

if.then4.i.if.end31.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.else.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv5.i = and i32 %7, 255
  %shl.i = shl nuw i32 1, %conv5.i
  %conv12.i = trunc i32 %shl.i to i16
  br label %if.end31.i

if.else19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv20.i = and i32 %7, 255
  %shl21.i = shl nuw i32 1, %conv20.i
  %conv22.i = trunc i32 %shl21.i to i16
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else19.i, %if.else.i, %if.then4.i.if.end31.i_crit_edge
  %.sink.i = phi i16 [ %conv12.i, %if.else.i ], [ %conv22.i, %if.else19.i ], [ 3, %if.then4.i.if.end31.i_crit_edge ]
  %usb_req.0.off0.i = phi i8 [ 16, %if.else.i ], [ 23, %if.else19.i ], [ 16, %if.then4.i.if.end31.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv39)
  %tobool.not.i = icmp eq i8 %conv39, 0
  %conv10.i = select i1 %tobool.not.i, i16 0, i16 %.sink.i
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i = shl i32 %16, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call35.i = tail call i32 @snd_usb_ctl_msg(ptr noundef %14, i32 noundef %or.i, i8 noundef zeroext %usb_req.0.off0.i, i8 noundef zeroext 64, i16 noundef zeroext %conv10.i, i16 noundef zeroext %.sink.i, ptr noundef null, i16 noundef zeroext 0) #12
  tail call void @snd_usb_unlock_shutdown(ptr noundef %12) #12
  br label %snd_bbfpro_ctl_update.exit

snd_bbfpro_ctl_update.exit:                       ; preds = %if.end31.i, %if.end31.snd_bbfpro_ctl_update.exit_crit_edge
  %retval.0.i = phi i32 [ %call35.i, %if.end31.i ], [ %call.i, %if.end31.snd_bbfpro_ctl_update.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp40 = icmp slt i32 %retval.0.i, 0
  %spec.select = select i1 %cmp40, i32 %retval.0.i, i32 1
  br label %cleanup

cleanup:                                          ; preds = %snd_bbfpro_ctl_update.exit, %if.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %snd_bbfpro_ctl_update.exit ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_djm_controls_info(ptr nocapture noundef readonly %kctl, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value1 = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 7
  %0 = ptrtoint ptr %private_value1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value1, align 4
  %shr = lshr i32 %1, 24
  %and2 = lshr i32 %1, 16
  %conv5 = and i32 %and2, 255
  %ncontrols = getelementptr [5 x %struct.snd_djm_device], ptr @snd_djm_devices, i32 0, i32 %shr, i32 2
  %2 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ncontrols, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5, i32 %3)
  %cmp.not = icmp ult i32 %conv5, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %controls = getelementptr [5 x %struct.snd_djm_device], ptr @snd_djm_devices, i32 0, i32 %shr, i32 1
  %4 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controls, align 4
  %noptions9 = getelementptr %struct.snd_djm_ctl, ptr %5, i32 %conv5, i32 2
  %6 = ptrtoint ptr %noptions9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %noptions9, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5
  %item = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5, i32 0, i32 1
  %8 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %item, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp10.not = icmp ult i32 %9, %7
  br i1 %cmp10.not, label %if.end.if.end15_crit_edge, label %if.then12

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add i32 %7, -1
  %10 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %item, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end.if.end15_crit_edge
  %options = getelementptr %struct.snd_djm_ctl, ptr %5, i32 %conv5, i32 1
  %11 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %options, align 4
  %13 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %item, align 4
  %arrayidx18 = getelementptr i16, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx18, align 2
  %wIndex = getelementptr %struct.snd_djm_ctl, ptr %5, i32 %conv5, i32 4
  %17 = ptrtoint ptr %wIndex to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %wIndex, align 2
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.176)
  switch i16 %18, label %if.end15.cleanup_crit_edge [
    i16 -32765, label %sw.bb.i
    i16 -32766, label %sw.bb1.i
    i16 -32746, label %sw.bb3.i
  ]

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end15
  %conv.i.i = zext i16 %16 to i32
  %20 = tail call i32 @llvm.fshl.i32(i32 %conv.i.i, i32 %conv.i.i, i32 24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %switch.lookup, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr)
  %cond.i.i = icmp eq i32 %shr, 2
  %trunc.i.i.i = trunc i16 %16 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %trunc.i.i.i)
  %22 = icmp ult i8 %trunc.i.i.i, 21
  br i1 %cond.i.i, label %sw.bb.i.i, label %sw.default.i7.i

sw.bb.i.i:                                        ; preds = %sw.bb1.i
  br i1 %22, label %switch.hole_check, label %sw.bb.i.i.cleanup_crit_edge

sw.bb.i.i.cleanup_crit_edge:                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.default.i7.i:                                  ; preds = %sw.bb1.i
  br i1 %22, label %switch.hole_check54, label %sw.default.i7.i.cleanup_crit_edge

sw.default.i7.i.cleanup_crit_edge:                ; preds = %sw.default.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.end15
  %trunc.i.i = trunc i16 %16 to i8
  %23 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.177)
  switch i8 %trunc.i.i, label %sw.bb3.i.cleanup_crit_edge [
    i8 0, label %sw.bb3.i.if.end20_crit_edge
    i8 1, label %sw.bb1.i9.i
    i8 4, label %sw.bb2.i10.i
  ]

sw.bb3.i.if.end20_crit_edge:                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

sw.bb3.i.cleanup_crit_edge:                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb1.i9.i:                                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

sw.bb2.i10.i:                                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

switch.lookup:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.snd_djm_controls_info, i32 0, i32 %20
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %if.end20

switch.hole_check:                                ; preds = %sw.bb.i.i
  %trunc.i.i.i.mask61 = and i16 %16, 255
  %switch.maskindex = zext i16 %trunc.i.i.i.mask61 to i32
  %switch.shifted = lshr i32 2009039, %switch.maskindex
  %25 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %switch.lobit.not = icmp eq i32 %25, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup50

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.lookup50:                                  ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  %26 = sext i8 %trunc.i.i.i to i32
  %switch.gep51 = getelementptr inbounds [21 x ptr], ptr @switch.table.snd_djm_controls_info.160, i32 0, i32 %26
  %27 = ptrtoint ptr %switch.gep51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load52 = load ptr, ptr %switch.gep51, align 4
  br label %if.end20

switch.hole_check54:                              ; preds = %sw.default.i7.i
  %trunc.i.i.i.mask = and i16 %16, 255
  %switch.maskindex56 = zext i16 %trunc.i.i.i.mask to i32
  %switch.shifted57 = lshr i32 2009039, %switch.maskindex56
  %28 = and i32 %switch.shifted57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %switch.lobit58.not = icmp eq i32 %28, 0
  br i1 %switch.lobit58.not, label %switch.hole_check54.cleanup_crit_edge, label %switch.lookup55

switch.hole_check54.cleanup_crit_edge:            ; preds = %switch.hole_check54
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.lookup55:                                  ; preds = %switch.hole_check54
  call void @__sanitizer_cov_trace_pc() #14
  %29 = sext i8 %trunc.i.i.i to i32
  %switch.gep59 = getelementptr inbounds [21 x ptr], ptr @switch.table.snd_djm_controls_info.161, i32 0, i32 %29
  %30 = ptrtoint ptr %switch.gep59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load60 = load ptr, ptr %switch.gep59, align 4
  br label %if.end20

if.end20:                                         ; preds = %switch.lookup55, %switch.lookup50, %switch.lookup, %sw.bb2.i10.i, %sw.bb1.i9.i, %sw.bb3.i.if.end20_crit_edge
  %retval.0.i.ph = phi ptr [ @.str.152, %sw.bb3.i.if.end20_crit_edge ], [ @.str.153, %sw.bb1.i9.i ], [ @.str.74, %sw.bb2.i10.i ], [ %switch.load, %switch.lookup ], [ %switch.load52, %switch.lookup50 ], [ %switch.load60, %switch.lookup55 ]
  %name22 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5, i32 0, i32 2
  %call23 = tail call i32 @strscpy(ptr noundef %name22, ptr noundef nonnull %retval.0.i.ph, i32 noundef 64) #12
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 1
  %31 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 3
  %32 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %count, align 8
  %33 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %7, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %switch.hole_check54.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %sw.bb3.i.cleanup_crit_edge, %sw.default.i7.i.cleanup_crit_edge, %sw.bb.i.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ -22, %sw.bb.i.i.cleanup_crit_edge ], [ -22, %sw.default.i7.i.cleanup_crit_edge ], [ -22, %sw.bb3.i.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ], [ -22, %switch.hole_check54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_djm_controls_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %elem) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %and = and i32 %1, 65535
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %elem, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_djm_controls_put(ptr nocapture noundef %kctl, ptr nocapture noundef readonly %elem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %private_value2 = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 7
  %4 = ptrtoint ptr %private_value2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value2, align 4
  %shr = lshr i32 %5, 24
  %conv = trunc i32 %shr to i8
  %and3 = lshr i32 %5, 16
  %conv5 = trunc i32 %and3 to i8
  %value6 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %elem, i32 0, i32 2
  %6 = ptrtoint ptr %value6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value6, align 8
  %conv7 = trunc i32 %7 to i16
  %or = and i32 %5, -65536
  %conv11 = and i32 %7, 65535
  %or12 = or i32 %conv11, %or
  store i32 %or12, ptr %private_value2, align 4
  %call = tail call fastcc i32 @snd_djm_controls_update(ptr noundef %3, i8 noundef zeroext %conv, i8 noundef zeroext %conv5, i16 noundef zeroext %conv7)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_djm_controls_update(ptr nocapture noundef readonly %mixer, i8 noundef zeroext %device_idx, i8 noundef zeroext %group, i16 noundef zeroext %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %device_idx to i32
  %conv = zext i8 %group to i32
  %ncontrols = getelementptr [5 x %struct.snd_djm_device], ptr @snd_djm_devices, i32 0, i32 %idxprom, i32 2
  %0 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ncontrols, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp ugt i32 %1, %conv
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conv2 = zext i16 %value to i32
  %controls = getelementptr [5 x %struct.snd_djm_device], ptr @snd_djm_devices, i32 0, i32 %idxprom, i32 1
  %2 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controls, align 4
  %noptions = getelementptr %struct.snd_djm_ctl, ptr %3, i32 %conv, i32 2
  %4 = ptrtoint ptr %noptions to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %noptions, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv2)
  %cmp5.not = icmp ugt i32 %5, %conv2
  br i1 %cmp5.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mixer, align 4
  %call = tail call i32 @snd_usb_lock_shutdown(ptr noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mixer, align 4
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i = shl i32 %13, 8
  %or = or i32 %shl.i, -2147483648
  %options = getelementptr %struct.snd_djm_ctl, ptr %3, i32 %conv, i32 1
  %14 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %options, align 4
  %arrayidx17 = getelementptr i16, ptr %15, i32 %conv2
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx17, align 2
  %wIndex = getelementptr %struct.snd_djm_ctl, ptr %3, i32 %conv, i32 4
  %18 = ptrtoint ptr %wIndex to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %wIndex, align 2
  %call21 = tail call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext %17, i16 noundef zeroext %19, ptr noundef null, i16 noundef zeroext 0) #12
  %20 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mixer, align 4
  tail call void @snd_usb_unlock_shutdown(ptr noundef %21) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end8 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_djm_controls_resume(ptr nocapture noundef readonly %list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %kctl = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %list, i32 0, i32 2
  %0 = ptrtoint ptr %kctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kctl, align 4
  %private_value1 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %private_value1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value1, align 4
  %shr = lshr i32 %3, 24
  %conv = trunc i32 %shr to i8
  %and2 = lshr i32 %3, 16
  %conv4 = trunc i32 %and2 to i8
  %conv6 = trunc i32 %3 to i16
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %call = tail call fastcc i32 @snd_djm_controls_update(ptr noundef %5, i8 noundef zeroext %conv, i8 noundef zeroext %conv4, i16 noundef zeroext %conv6)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 237)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 237)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !150, !151, !152, !153, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !225, !226, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !456, !457, !458, !459, !461, !462}
!llvm.named.register.sp = !{!463}
!llvm.module.flags = !{!464, !465, !466, !467, !468, !469, !470, !471}
!llvm.ident = !{!472}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/usb/mixer_quirks.c", i32 3174, i32 43}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/usb/mixer_quirks.c", i32 3315, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @snd_usb_mixer_rc_memory_change.__UNIQUE_ID_ddebug238, !3, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/usb/mixer_quirks.c", i32 3366, i32 29}
!10 = !{ptr @snd_usb_soundblaster_remote_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../sound/usb/mixer_quirks.c", i32 256, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/usb/mixer_quirks.c", i32 257, i32 41}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/usb/mixer_quirks.c", i32 261, i32 4}
!17 = !{ptr @rc_configs, !18, !"rc_configs", i1 false, i1 false}
!18 = !{!"../sound/usb/mixer_quirks.c", i32 181, i32 3}
!19 = !{ptr @snd_audigy2nx_control, !20, !"snd_audigy2nx_control", i1 false, i1 false}
!20 = !{!"../sound/usb/mixer_quirks.c", i32 356, i32 38}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/usb/mixer_quirks.c", i32 364, i32 2}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/usb/mixer_quirks.c", i32 365, i32 2}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/usb/mixer_quirks.c", i32 366, i32 2}
!27 = distinct !{null, !28, !"snd_audigy2nx_led_names", i1 false, i1 false}
!28 = !{!"../sound/usb/mixer_quirks.c", i32 363, i32 27}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/usb/mixer_quirks.c", i32 408, i32 8}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/usb/mixer_quirks.c", i32 409, i32 8}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/usb/mixer_quirks.c", i32 410, i32 8}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/usb/mixer_quirks.c", i32 411, i32 8}
!37 = !{ptr @snd_audigy2nx_proc_read.jacks_audigy2nx, !38, !"jacks_audigy2nx", i1 false, i1 false}
!38 = !{!"../sound/usb/mixer_quirks.c", i32 407, i32 5}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/usb/mixer_quirks.c", i32 416, i32 8}
!41 = !{ptr @snd_audigy2nx_proc_read.jacks_live24ext, !42, !"jacks_live24ext", i1 false, i1 false}
!42 = !{!"../sound/usb/mixer_quirks.c", i32 413, i32 5}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/usb/mixer_quirks.c", i32 424, i32 2}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/usb/mixer_quirks.c", i32 434, i32 3}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/usb/mixer_quirks.c", i32 445, i32 4}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/usb/mixer_quirks.c", i32 447, i32 4}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/usb/mixer_quirks.c", i32 515, i32 10}
!53 = !{ptr @snd_emu0204_control, !54, !"snd_emu0204_control", i1 false, i1 false}
!54 = !{!"../sound/usb/mixer_quirks.c", i32 513, i32 38}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/usb/mixer_quirks.c", i32 455, i32 40}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/usb/mixer_quirks.c", i32 455, i32 47}
!59 = !{ptr @snd_emu0204_ch_switch_info.texts, !60, !"texts", i1 false, i1 false}
!60 = !{!"../sound/usb/mixer_quirks.c", i32 455, i32 28}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/usb/mixer_quirks.c", i32 1346, i32 6}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/usb/mixer_quirks.c", i32 1350, i32 6}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/usb/mixer_quirks.c", i32 1432, i32 5}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/usb/mixer_quirks.c", i32 1436, i32 5}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/usb/mixer_quirks.c", i32 1478, i32 4}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/usb/mixer_quirks.c", i32 1108, i32 11}
!73 = !{ptr @snd_ftu_create_effect_switch.template, !74, !"template", i1 false, i1 false}
!74 = !{!"../sound/usb/mixer_quirks.c", i32 1106, i32 33}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/usb/mixer_quirks.c", i32 1024, i32 3}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/usb/mixer_quirks.c", i32 1024, i32 13}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/usb/mixer_quirks.c", i32 1024, i32 23}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/usb/mixer_quirks.c", i32 1024, i32 33}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/usb/mixer_quirks.c", i32 1025, i32 3}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/usb/mixer_quirks.c", i32 1025, i32 13}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/usb/mixer_quirks.c", i32 1025, i32 22}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/usb/mixer_quirks.c", i32 1025, i32 31}
!91 = !{ptr @snd_ftu_eff_switch_info.texts, !92, !"texts", i1 false, i1 false}
!92 = !{!"../sound/usb/mixer_quirks.c", i32 1023, i32 27}
!93 = !{ptr @snd_c400_create_effect_volume_ctl.name, !94, !"name", i1 false, i1 false}
!94 = !{!"../sound/usb/mixer_quirks.c", i32 1370, i32 20}
!95 = !{ptr @snd_c400_create_effect_duration_ctl.name, !96, !"name", i1 false, i1 false}
!96 = !{!"../sound/usb/mixer_quirks.c", i32 1383, i32 20}
!97 = !{ptr @snd_c400_create_effect_feedback_ctl.name, !98, !"name", i1 false, i1 false}
!98 = !{!"../sound/usb/mixer_quirks.c", i32 1396, i32 20}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/usb/mixer_quirks.c", i32 1143, i32 5}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/usb/mixer_quirks.c", i32 1154, i32 5}
!103 = !{ptr @snd_ftu_create_effect_volume_ctl.name, !104, !"name", i1 false, i1 false}
!104 = !{!"../sound/usb/mixer_quirks.c", i32 1170, i32 20}
!105 = !{ptr @snd_ftu_create_effect_duration_ctl.name, !106, !"name", i1 false, i1 false}
!106 = !{!"../sound/usb/mixer_quirks.c", i32 1183, i32 20}
!107 = !{ptr @snd_ftu_create_effect_feedback_ctl.name, !108, !"name", i1 false, i1 false}
!108 = !{!"../sound/usb/mixer_quirks.c", i32 1196, i32 20}
!109 = !{ptr @.str.40, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/usb/mixer_quirks.c", i32 1219, i32 4}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/usb/mixer_quirks.c", i32 1243, i32 4}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/usb/mixer_quirks.c", i32 1253, i32 4}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/usb/mixer_quirks.c", i32 583, i32 10}
!117 = !{ptr @snd_xonar_u1_output_switch, !118, !"snd_xonar_u1_output_switch", i1 false, i1 false}
!118 = !{!"../sound/usb/mixer_quirks.c", i32 581, i32 38}
!119 = distinct !{null, !120, !"resume_funcs", i1 false, i1 false}
!120 = !{!"../sound/usb/mixer_quirks.c", i32 1842, i32 44}
!121 = !{ptr @.str.44, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/usb/mixer_quirks.c", i32 1816, i32 15}
!123 = !{ptr @.str.45, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/usb/mixer_quirks.c", i32 1825, i32 15}
!125 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/usb/mixer_quirks.c", i32 1831, i32 15}
!127 = !{ptr @snd_microii_mixer_spdif, !128, !"snd_microii_mixer_spdif", i1 false, i1 false}
!128 = !{!"../sound/usb/mixer_quirks.c", i32 1813, i32 38}
!129 = !{ptr @.str.47, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/usb/mixer_quirks.c", i32 833, i32 10}
!131 = !{ptr @snd_mbox1_clk_switch, !132, !"snd_mbox1_clk_switch", i1 false, i1 false}
!132 = !{!"../sound/usb/mixer_quirks.c", i32 831, i32 38}
!133 = !{ptr @.str.48, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/usb/mixer_quirks.c", i32 749, i32 3}
!135 = !{ptr @.str.49, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/usb/mixer_quirks.c", i32 750, i32 3}
!137 = !{ptr @snd_mbox1_clk_switch_info.texts, !138, !"texts", i1 false, i1 false}
!138 = !{!"../sound/usb/mixer_quirks.c", i32 748, i32 27}
!139 = !{ptr @.str.50, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/usb/mixer_quirks.c", i32 844, i32 10}
!141 = !{ptr @snd_mbox1_src_switch, !142, !"snd_mbox1_src_switch", i1 false, i1 false}
!142 = !{!"../sound/usb/mixer_quirks.c", i32 842, i32 38}
!143 = !{ptr @.str.51, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/usb/mixer_quirks.c", i32 819, i32 3}
!145 = !{ptr @snd_mbox1_src_switch_info.texts, !146, !"texts", i1 false, i1 false}
!146 = !{!"../sound/usb/mixer_quirks.c", i32 818, i32 27}
!147 = !{ptr @.str.52, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/usb/mixer_quirks.c", i32 884, i32 3}
!149 = !{ptr @.str.53, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.54, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.55, !148, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @snd_ni_control_init_val._entry, !148, !"_entry", i1 false, i1 false}
!153 = !{ptr @snd_ni_control_init_val._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.56, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/usb/mixer_quirks.c", i32 936, i32 11}
!156 = !{ptr @.str.57, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/usb/mixer_quirks.c", i32 940, i32 11}
!158 = !{ptr @.str.58, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/usb/mixer_quirks.c", i32 944, i32 11}
!160 = !{ptr @.str.59, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/usb/mixer_quirks.c", i32 948, i32 11}
!162 = !{ptr @snd_nativeinstruments_ta6_mixers, !163, !"snd_nativeinstruments_ta6_mixers", i1 false, i1 false}
!163 = !{!"../sound/usb/mixer_quirks.c", i32 934, i32 38}
!164 = !{ptr @.str.60, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/usb/mixer_quirks.c", i32 963, i32 11}
!166 = !{ptr @.str.61, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/usb/mixer_quirks.c", i32 967, i32 11}
!168 = !{ptr @.str.62, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/usb/mixer_quirks.c", i32 979, i32 11}
!170 = !{ptr @.str.63, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/usb/mixer_quirks.c", i32 983, i32 11}
!172 = !{ptr @snd_nativeinstruments_ta10_mixers, !173, !"snd_nativeinstruments_ta10_mixers", i1 false, i1 false}
!173 = !{!"../sound/usb/mixer_quirks.c", i32 953, i32 38}
!174 = !{ptr @.str.64, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/usb/mixer_quirks.c", i32 1539, i32 11}
!176 = !{ptr @.str.65, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/usb/mixer_quirks.c", i32 1546, i32 11}
!178 = !{ptr @.str.66, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/usb/mixer_quirks.c", i32 1553, i32 11}
!180 = !{ptr @.str.67, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/usb/mixer_quirks.c", i32 1561, i32 11}
!182 = !{ptr @.str.68, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/usb/mixer_quirks.c", i32 1568, i32 11}
!184 = !{ptr @.str.69, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/usb/mixer_quirks.c", i32 1575, i32 11}
!186 = !{ptr @.str.70, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/usb/mixer_quirks.c", i32 1583, i32 11}
!188 = !{ptr @.str.71, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/usb/mixer_quirks.c", i32 1590, i32 11}
!190 = !{ptr @.str.72, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/usb/mixer_quirks.c", i32 1597, i32 11}
!192 = !{ptr @ebox44_table, !193, !"ebox44_table", i1 false, i1 false}
!193 = !{!"../sound/usb/mixer_quirks.c", i32 1533, i32 36}
!194 = !{ptr @snd_soundblaster_e1_input_switch, !195, !"snd_soundblaster_e1_input_switch", i1 false, i1 false}
!195 = !{!"../sound/usb/mixer_quirks.c", i32 1920, i32 38}
!196 = !{ptr @.str.73, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/usb/mixer_quirks.c", i32 1914, i32 3}
!198 = !{ptr @.str.74, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/usb/mixer_quirks.c", i32 1914, i32 10}
!200 = !{ptr @snd_soundblaster_e1_switch_info.texts, !201, !"texts", i1 false, i1 false}
!201 = !{!"../sound/usb/mixer_quirks.c", i32 1913, i32 27}
!202 = !{ptr @.str.75, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/usb/mixer_quirks.c", i32 2247, i32 11}
!204 = !{ptr @.str.76, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/usb/mixer_quirks.c", i32 2255, i32 11}
!206 = !{ptr @.str.77, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/usb/mixer_quirks.c", i32 2263, i32 11}
!208 = !{ptr @.str.78, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/usb/mixer_quirks.c", i32 2271, i32 11}
!210 = !{ptr @.str.79, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/usb/mixer_quirks.c", i32 2279, i32 11}
!212 = !{ptr @.str.80, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/usb/mixer_quirks.c", i32 2286, i32 11}
!214 = !{ptr @.str.81, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/usb/mixer_quirks.c", i32 2293, i32 11}
!216 = !{ptr @.str.82, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/usb/mixer_quirks.c", i32 2300, i32 11}
!218 = !{ptr @.str.83, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/usb/mixer_quirks.c", i32 2308, i32 11}
!220 = !{ptr @snd_rme_controls, !221, !"snd_rme_controls", i1 false, i1 false}
!221 = !{!"../sound/usb/mixer_quirks.c", i32 2244, i32 38}
!222 = !{ptr @.str.84, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/usb/mixer_quirks.c", i32 2027, i32 3}
!224 = !{ptr @.str.85, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @snd_rme_read_value._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @snd_rme_read_value._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @snd_rme_rate_table, !228, !"snd_rme_rate_table", i1 false, i1 false}
!228 = !{!"../sound/usb/mixer_quirks.c", i32 1992, i32 18}
!229 = !{ptr @.str.86, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/usb/mixer_quirks.c", i32 2204, i32 3}
!231 = !{ptr @.str.87, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/usb/mixer_quirks.c", i32 2204, i32 14}
!233 = !{ptr @.str.88, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/usb/mixer_quirks.c", i32 2204, i32 22}
!235 = !{ptr @snd_rme_sync_state_info.sync_states, !236, !"sync_states", i1 false, i1 false}
!236 = !{!"../sound/usb/mixer_quirks.c", i32 2203, i32 27}
!237 = !{ptr @.str.89, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/usb/mixer_quirks.c", i32 2215, i32 3}
!239 = !{ptr @.str.90, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/usb/mixer_quirks.c", i32 2215, i32 14}
!241 = !{ptr @snd_rme_spdif_if_info.spdif_if, !242, !"spdif_if", i1 false, i1 false}
!242 = !{!"../sound/usb/mixer_quirks.c", i32 2214, i32 27}
!243 = !{ptr @.str.91, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/usb/mixer_quirks.c", i32 2226, i32 3}
!245 = !{ptr @.str.92, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/usb/mixer_quirks.c", i32 2226, i32 15}
!247 = !{ptr @snd_rme_spdif_format_info.optical_type, !248, !"optical_type", i1 false, i1 false}
!248 = !{!"../sound/usb/mixer_quirks.c", i32 2225, i32 27}
!249 = !{ptr @.str.93, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/usb/mixer_quirks.c", i32 2237, i32 15}
!251 = !{ptr @.str.94, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/usb/mixer_quirks.c", i32 2237, i32 22}
!253 = !{ptr @snd_rme_sync_source_info.sync_sources, !254, !"sync_sources", i1 false, i1 false}
!254 = !{!"../sound/usb/mixer_quirks.c", i32 2236, i32 27}
!255 = !{ptr @.str.95, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/usb/mixer_quirks.c", i32 2652, i32 3}
!257 = !{ptr @.str.96, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/usb/mixer_quirks.c", i32 2652, i32 10}
!259 = !{ptr @.str.97, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/usb/mixer_quirks.c", i32 2652, i32 17}
!261 = !{ptr @.str.98, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/usb/mixer_quirks.c", i32 2652, i32 24}
!263 = !{ptr @.str.99, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/usb/mixer_quirks.c", i32 2652, i32 31}
!265 = !{ptr @.str.100, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/usb/mixer_quirks.c", i32 2652, i32 38}
!267 = !{ptr @.str.101, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/usb/mixer_quirks.c", i32 2652, i32 45}
!269 = !{ptr @.str.102, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/usb/mixer_quirks.c", i32 2653, i32 3}
!271 = !{ptr @.str.103, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/usb/mixer_quirks.c", i32 2653, i32 12}
!273 = !{ptr @.str.104, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/usb/mixer_quirks.c", i32 2653, i32 21}
!275 = !{ptr @.str.105, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/usb/mixer_quirks.c", i32 2653, i32 30}
!277 = !{ptr @.str.106, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/usb/mixer_quirks.c", i32 2653, i32 39}
!279 = !{ptr @snd_bbfpro_controls_create.input, !280, !"input", i1 false, i1 false}
!280 = !{!"../sound/usb/mixer_quirks.c", i32 2651, i32 28}
!281 = !{ptr @.str.107, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/usb/mixer_quirks.c", i32 2656, i32 17}
!283 = !{ptr @.str.108, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/usb/mixer_quirks.c", i32 2656, i32 24}
!285 = !{ptr @snd_bbfpro_controls_create.output, !286, !"output", i1 false, i1 false}
!286 = !{!"../sound/usb/mixer_quirks.c", i32 2655, i32 28}
!287 = !{ptr @.str.109, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/usb/mixer_quirks.c", i32 2663, i32 6}
!289 = !{ptr @.str.110, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/usb/mixer_quirks.c", i32 2664, i32 23}
!291 = !{ptr @.str.111, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/usb/mixer_quirks.c", i32 2672, i32 6}
!293 = !{ptr @.str.112, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/usb/mixer_quirks.c", i32 2684, i32 6}
!295 = !{ptr @.str.113, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/usb/mixer_quirks.c", i32 2690, i32 6}
!297 = !{ptr @.str.114, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/usb/mixer_quirks.c", i32 2696, i32 6}
!299 = !{ptr @.str.115, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/usb/mixer_quirks.c", i32 2702, i32 6}
!301 = !{ptr @.str.116, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/usb/mixer_quirks.c", i32 2709, i32 6}
!303 = !{ptr @.str.117, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/usb/mixer_quirks.c", i32 2715, i32 6}
!305 = !{ptr @.str.118, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/usb/mixer_quirks.c", i32 2721, i32 6}
!307 = !{ptr @.str.119, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/usb/mixer_quirks.c", i32 2727, i32 6}
!309 = !{ptr @.str.120, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/usb/mixer_quirks.c", i32 2733, i32 6}
!311 = !{ptr @.str.121, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/usb/mixer_quirks.c", i32 2739, i32 6}
!313 = !{ptr @snd_bbfpro_vol_control, !314, !"snd_bbfpro_vol_control", i1 false, i1 false}
!314 = !{!"../sound/usb/mixer_quirks.c", i32 2611, i32 38}
!315 = !{ptr @snd_bbfpro_ctl_control, !316, !"snd_bbfpro_ctl_control", i1 false, i1 false}
!316 = !{!"../sound/usb/mixer_quirks.c", i32 2602, i32 38}
!317 = !{ptr @.str.122, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../sound/usb/mixer_quirks.c", i32 2443, i32 4}
!319 = !{ptr @snd_bbfpro_ctl_info.texts, !320, !"texts", i1 false, i1 false}
!320 = !{!"../sound/usb/mixer_quirks.c", i32 2442, i32 29}
!321 = !{ptr @.str.124, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/usb/mixer_quirks.c", i32 2451, i32 4}
!323 = !{ptr @.str.125, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../sound/usb/mixer_quirks.c", i32 2452, i32 4}
!325 = !{ptr @snd_bbfpro_ctl_info.texts.123, !326, !"texts", i1 false, i1 false}
!326 = !{!"../sound/usb/mixer_quirks.c", i32 2450, i32 29}
!327 = !{ptr @snd_djm_devices, !328, !"snd_djm_devices", i1 false, i1 false}
!328 = !{!"../sound/usb/mixer_quirks.c", i32 3018, i32 36}
!329 = !{ptr @.str.126, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/usb/mixer_quirks.c", i32 2919, i32 2}
!331 = !{ptr @.str.127, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../sound/usb/mixer_quirks.c", i32 2920, i32 2}
!333 = !{ptr @.str.128, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/usb/mixer_quirks.c", i32 2921, i32 2}
!335 = !{ptr @.str.129, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/usb/mixer_quirks.c", i32 2922, i32 2}
!337 = !{ptr @.str.130, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/usb/mixer_quirks.c", i32 2923, i32 2}
!339 = !{ptr @.str.131, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/usb/mixer_quirks.c", i32 2924, i32 2}
!341 = !{ptr @.str.132, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/usb/mixer_quirks.c", i32 2925, i32 2}
!343 = !{ptr @snd_djm_ctls_250mk2, !344, !"snd_djm_ctls_250mk2", i1 false, i1 false}
!344 = !{!"../sound/usb/mixer_quirks.c", i32 2918, i32 33}
!345 = !{ptr @snd_djm_opts_cap_level, !346, !"snd_djm_opts_cap_level", i1 false, i1 false}
!346 = !{!"../sound/usb/mixer_quirks.c", i32 2900, i32 18}
!347 = !{ptr @snd_djm_opts_250mk2_cap1, !348, !"snd_djm_opts_250mk2_cap1", i1 false, i1 false}
!348 = !{!"../sound/usb/mixer_quirks.c", i32 2905, i32 18}
!349 = !{ptr @snd_djm_opts_250mk2_cap2, !350, !"snd_djm_opts_250mk2_cap2", i1 false, i1 false}
!350 = !{!"../sound/usb/mixer_quirks.c", i32 2908, i32 18}
!351 = !{ptr @snd_djm_opts_250mk2_cap3, !352, !"snd_djm_opts_250mk2_cap3", i1 false, i1 false}
!352 = !{!"../sound/usb/mixer_quirks.c", i32 2911, i32 18}
!353 = !{ptr @snd_djm_opts_250mk2_pb1, !354, !"snd_djm_opts_250mk2_pb1", i1 false, i1 false}
!354 = !{!"../sound/usb/mixer_quirks.c", i32 2914, i32 18}
!355 = !{ptr @snd_djm_opts_250mk2_pb2, !356, !"snd_djm_opts_250mk2_pb2", i1 false, i1 false}
!356 = !{!"../sound/usb/mixer_quirks.c", i32 2915, i32 18}
!357 = !{ptr @snd_djm_opts_250mk2_pb3, !358, !"snd_djm_opts_250mk2_pb3", i1 false, i1 false}
!358 = !{!"../sound/usb/mixer_quirks.c", i32 2916, i32 18}
!359 = !{ptr @.str.133, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../sound/usb/mixer_quirks.c", i32 2944, i32 2}
!361 = !{ptr @snd_djm_ctls_750, !362, !"snd_djm_ctls_750", i1 false, i1 false}
!362 = !{!"../sound/usb/mixer_quirks.c", i32 2939, i32 33}
!363 = !{ptr @snd_djm_opts_750_cap1, !364, !"snd_djm_opts_750_cap1", i1 false, i1 false}
!364 = !{!"../sound/usb/mixer_quirks.c", i32 2930, i32 18}
!365 = !{ptr @snd_djm_opts_750_cap2, !366, !"snd_djm_opts_750_cap2", i1 false, i1 false}
!366 = !{!"../sound/usb/mixer_quirks.c", i32 2932, i32 18}
!367 = !{ptr @snd_djm_opts_750_cap3, !368, !"snd_djm_opts_750_cap3", i1 false, i1 false}
!368 = !{!"../sound/usb/mixer_quirks.c", i32 2934, i32 18}
!369 = !{ptr @snd_djm_opts_750_cap4, !370, !"snd_djm_opts_750_cap4", i1 false, i1 false}
!370 = !{!"../sound/usb/mixer_quirks.c", i32 2936, i32 18}
!371 = !{ptr @snd_djm_ctls_850, !372, !"snd_djm_ctls_850", i1 false, i1 false}
!372 = !{!"../sound/usb/mixer_quirks.c", i32 2958, i32 33}
!373 = !{ptr @snd_djm_opts_850_cap1, !374, !"snd_djm_opts_850_cap1", i1 false, i1 false}
!374 = !{!"../sound/usb/mixer_quirks.c", i32 2949, i32 18}
!375 = !{ptr @snd_djm_opts_850_cap2, !376, !"snd_djm_opts_850_cap2", i1 false, i1 false}
!376 = !{!"../sound/usb/mixer_quirks.c", i32 2951, i32 18}
!377 = !{ptr @snd_djm_opts_850_cap3, !378, !"snd_djm_opts_850_cap3", i1 false, i1 false}
!378 = !{!"../sound/usb/mixer_quirks.c", i32 2953, i32 18}
!379 = !{ptr @snd_djm_opts_850_cap4, !380, !"snd_djm_opts_850_cap4", i1 false, i1 false}
!380 = !{!"../sound/usb/mixer_quirks.c", i32 2955, i32 18}
!381 = !{ptr @.str.134, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../sound/usb/mixer_quirks.c", i32 2985, i32 2}
!383 = !{ptr @snd_djm_ctls_900nxs2, !384, !"snd_djm_ctls_900nxs2", i1 false, i1 false}
!384 = !{!"../sound/usb/mixer_quirks.c", i32 2979, i32 33}
!385 = !{ptr @snd_djm_opts_900nxs2_cap1, !386, !"snd_djm_opts_900nxs2_cap1", i1 false, i1 false}
!386 = !{!"../sound/usb/mixer_quirks.c", i32 2968, i32 18}
!387 = !{ptr @snd_djm_opts_900nxs2_cap2, !388, !"snd_djm_opts_900nxs2_cap2", i1 false, i1 false}
!388 = !{!"../sound/usb/mixer_quirks.c", i32 2970, i32 18}
!389 = !{ptr @snd_djm_opts_900nxs2_cap3, !390, !"snd_djm_opts_900nxs2_cap3", i1 false, i1 false}
!390 = !{!"../sound/usb/mixer_quirks.c", i32 2972, i32 18}
!391 = !{ptr @snd_djm_opts_900nxs2_cap4, !392, !"snd_djm_opts_900nxs2_cap4", i1 false, i1 false}
!392 = !{!"../sound/usb/mixer_quirks.c", i32 2974, i32 18}
!393 = !{ptr @snd_djm_opts_900nxs2_cap5, !394, !"snd_djm_opts_900nxs2_cap5", i1 false, i1 false}
!394 = !{!"../sound/usb/mixer_quirks.c", i32 2976, i32 18}
!395 = !{ptr @snd_djm_ctls_750mk2, !396, !"snd_djm_ctls_750mk2", i1 false, i1 false}
!396 = !{!"../sound/usb/mixer_quirks.c", i32 3005, i32 33}
!397 = !{ptr @snd_djm_opts_750mk2_cap1, !398, !"snd_djm_opts_750mk2_cap1", i1 false, i1 false}
!398 = !{!"../sound/usb/mixer_quirks.c", i32 2989, i32 18}
!399 = !{ptr @snd_djm_opts_750mk2_cap2, !400, !"snd_djm_opts_750mk2_cap2", i1 false, i1 false}
!400 = !{!"../sound/usb/mixer_quirks.c", i32 2991, i32 18}
!401 = !{ptr @snd_djm_opts_750mk2_cap3, !402, !"snd_djm_opts_750mk2_cap3", i1 false, i1 false}
!402 = !{!"../sound/usb/mixer_quirks.c", i32 2993, i32 18}
!403 = !{ptr @snd_djm_opts_750mk2_cap4, !404, !"snd_djm_opts_750mk2_cap4", i1 false, i1 false}
!404 = !{!"../sound/usb/mixer_quirks.c", i32 2995, i32 18}
!405 = !{ptr @snd_djm_opts_750mk2_cap5, !406, !"snd_djm_opts_750mk2_cap5", i1 false, i1 false}
!406 = !{!"../sound/usb/mixer_quirks.c", i32 2997, i32 18}
!407 = !{ptr @snd_djm_opts_750mk2_pb1, !408, !"snd_djm_opts_750mk2_pb1", i1 false, i1 false}
!408 = !{!"../sound/usb/mixer_quirks.c", i32 3000, i32 18}
!409 = !{ptr @snd_djm_opts_750mk2_pb2, !410, !"snd_djm_opts_750mk2_pb2", i1 false, i1 false}
!410 = !{!"../sound/usb/mixer_quirks.c", i32 3001, i32 18}
!411 = !{ptr @snd_djm_opts_750mk2_pb3, !412, !"snd_djm_opts_750mk2_pb3", i1 false, i1 false}
!412 = !{!"../sound/usb/mixer_quirks.c", i32 3002, i32 18}
!413 = !{ptr @.str.135, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../sound/usb/mixer_quirks.c", i32 2830, i32 22}
!415 = !{ptr @.str.136, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../sound/usb/mixer_quirks.c", i32 2831, i32 22}
!417 = !{ptr @.str.137, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/usb/mixer_quirks.c", i32 2832, i32 22}
!419 = !{ptr @.str.138, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../sound/usb/mixer_quirks.c", i32 2833, i32 22}
!421 = !{ptr @.str.139, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../sound/usb/mixer_quirks.c", i32 2865, i32 21}
!423 = !{ptr @.str.140, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../sound/usb/mixer_quirks.c", i32 2866, i32 21}
!425 = !{ptr @.str.141, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../sound/usb/mixer_quirks.c", i32 2843, i32 35}
!427 = !{ptr @.str.142, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../sound/usb/mixer_quirks.c", i32 2844, i32 34}
!429 = !{ptr @.str.143, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../sound/usb/mixer_quirks.c", i32 2845, i32 34}
!431 = !{ptr @.str.144, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../sound/usb/mixer_quirks.c", i32 2846, i32 35}
!433 = !{ptr @.str.145, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../sound/usb/mixer_quirks.c", i32 2847, i32 35}
!435 = !{ptr @.str.146, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../sound/usb/mixer_quirks.c", i32 2849, i32 34}
!437 = !{ptr @.str.147, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../sound/usb/mixer_quirks.c", i32 2851, i32 33}
!439 = !{ptr @.str.148, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../sound/usb/mixer_quirks.c", i32 2852, i32 37}
!441 = !{ptr @.str.149, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../sound/usb/mixer_quirks.c", i32 2853, i32 37}
!443 = !{ptr @.str.150, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../sound/usb/mixer_quirks.c", i32 2854, i32 37}
!445 = !{ptr @.str.151, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../sound/usb/mixer_quirks.c", i32 2855, i32 37}
!447 = !{ptr @.str.152, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../sound/usb/mixer_quirks.c", i32 2882, i32 30}
!449 = !{ptr @.str.153, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../sound/usb/mixer_quirks.c", i32 2883, i32 30}
!451 = !{ptr @snd_dragonfly_quirk_db_scale.scale, !452, !"scale", i1 false, i1 false}
!452 = !{!"../sound/usb/mixer_quirks.c", i32 3326, i32 15}
!453 = !{ptr @.str.154, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../sound/usb/mixer_quirks.c", i32 3340, i32 3}
!455 = !{ptr @.str.155, !454, !"<string literal>", i1 false, i1 false}
!456 = !{ptr @.str.156, !454, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @snd_dragonfly_quirk_db_scale._entry, !454, !"_entry", i1 false, i1 false}
!458 = !{ptr @snd_dragonfly_quirk_db_scale._entry_ptr, !454, !"_entry_ptr", i1 false, i1 false}
!459 = !{ptr @.str.158, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../sound/usb/mixer_quirks.c", i32 3349, i32 3}
!461 = !{ptr @snd_dragonfly_quirk_db_scale._entry.157, !460, !"_entry", i1 false, i1 false}
!462 = !{ptr @snd_dragonfly_quirk_db_scale._entry_ptr.159, !460, !"_entry_ptr", i1 false, i1 false}
!463 = !{!"sp"}
!464 = !{i32 1, !"wchar_size", i32 2}
!465 = !{i32 1, !"min_enum_size", i32 4}
!466 = !{i32 8, !"branch-target-enforcement", i32 0}
!467 = !{i32 8, !"sign-return-address", i32 0}
!468 = !{i32 8, !"sign-return-address-all", i32 0}
!469 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!470 = !{i32 7, !"uwtable", i32 1}
!471 = !{i32 7, !"frame-pointer", i32 2}
!472 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!473 = !{!"auto-init"}
!474 = !{i64 2148825336, i64 2148825341, i64 2148825354, i64 2148825398, i64 2148825432, i64 2148825453}
!475 = !{i64 2154382835}
!476 = !{i64 798132, i64 798149, i64 798173, i64 798199, i64 798217}
!477 = !{i64 2154383098}
!478 = !{i64 2154385899}
!479 = !{i64 2154386162}
!480 = !{i64 5758845}
!481 = !{i64 5759042}
!482 = !{i64 2153244275}
!483 = !{i64 2154388389, i64 2154388669, i64 2154389003, i64 2154389337}
!484 = !{i64 2154401163, i64 2154401443, i64 2154401777, i64 2154402111}
!485 = !{i64 2154380951}
