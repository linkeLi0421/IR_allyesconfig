; ModuleID = '/llk/IR_all_yes/sound/usb/quirks.c_pt.bc'
source_filename = "../sound/usb/quirks.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.registration_quirk = type { i32, i32 }
%struct.usb_audio_quirk_flags_table = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_usb_audio_quirk = type { ptr, ptr, i16, i16, ptr }
%struct.audioformat = type { %struct.list_head, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, i8, ptr, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.snd_usb_midi_endpoint_info = type { i8, i8, i8, i8, i16, i16, [16 x i16], [16 x i16] }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.snd_usb_substream = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i64, i32, %struct.list_head, %struct.spinlock, i32, %struct.anon.83, i8, i8, ptr }
%struct.anon.83 = type { i32, i32, i32 }
%struct.snd_usb_stream = type { ptr, ptr, i32, i32, [2 x %struct.snd_usb_substream], %struct.list_head }
%struct.snd_usb_endpoint = type { ptr, ptr, i32, %struct.atomic_t, i32, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, [12 x %struct.snd_urb_ctx], [12 x %struct.snd_usb_packet_info], i32, i32, %struct.list_head, i32, i32, i32, %struct.atomic_t, ptr, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i8, %struct.spinlock, %struct.list_head }
%struct.snd_urb_ctx = type { ptr, i32, ptr, ptr, i32, i32, i32, [48 x i32], %struct.list_head }
%struct.snd_usb_packet_info = type { [48 x i32], i32 }
%struct.usb_midi_in_jack_descriptor = type { i8, i8, i8, i8, i8, i8 }
%struct.usb_midi_out_jack_descriptor = type { i8, i8, i8, i8, i8, i8, [0 x %struct.usb_midi_source_pin] }
%struct.usb_midi_source_pin = type { i8, i8 }
%struct.usb_ms_header_descriptor = type <{ i8, i8, i8, i16, i16 }>
%struct.usb_ms_endpoint_descriptor = type { i8, i8, i8, i8, [0 x i8] }

@snd_usb_create_quirk.quirk_funcs = internal constant { [20 x ptr], [48 x i8] } { [20 x ptr] [ptr @ignore_interface_quirk, ptr @create_composite_quirk, ptr @create_autodetect_quirks, ptr @create_any_midi_quirk, ptr @create_any_midi_quirk, ptr @create_any_midi_quirk, ptr @create_any_midi_quirk, ptr @create_any_midi_quirk, ptr @create_any_midi_quirk, ptr @create_any_midi_quirk, ptr @create_any_midi_quirk, ptr @create_any_midi_quirk, ptr @create_any_midi_quirk, ptr null, ptr @create_any_midi_quirk, ptr @create_any_midi_quirk, ptr @create_standard_audio_quirk, ptr @create_fixed_stream_quirk, ptr @create_uaxx_quirk, ptr @create_standard_mixer_quirk], [48 x i8] zeroinitializer }, align 32
@snd_usb_create_quirk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 579, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid quirk type %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_usb_create_quirk\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sound/usb/quirks.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_usb_create_quirk._entry_ptr = internal global ptr @snd_usb_create_quirk._entry, section ".printk_index", align 4
@registration_quirks = internal constant { [10 x %struct.registration_quirk], [48 x i8] } { [10 x %struct.registration_quirk] [%struct.registration_quirk { i32 156309208, i32 2 }, %struct.registration_quirk { i32 156309229, i32 2 }, %struct.registration_quirk { i32 156309226, i32 2 }, %struct.registration_quirk { i32 248192838, i32 2 }, %struct.registration_quirk { i32 248192839, i32 2 }, %struct.registration_quirk { i32 248192844, i32 2 }, %struct.registration_quirk { i32 248193081, i32 2 }, %struct.registration_quirk { i32 248193084, i32 2 }, %struct.registration_quirk { i32 248193086, i32 2 }, %struct.registration_quirk zeroinitializer], [48 x i8] zeroinitializer }, align 32
@quirk_flags_table = internal constant { [77 x %struct.usb_audio_quirk_flags_table], [152 x i8] } { [77 x %struct.usb_audio_quirk_flags_table] [%struct.usb_audio_quirk_flags_table { i32 69087232, i32 16384 }, %struct.usb_audio_quirk_flags_table { i32 69091456, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 74254412, i32 513 }, %struct.usb_audio_quirk_flags_table { i32 74254737, i32 16896 }, %struct.usb_audio_quirk_flags_table { i32 74254756, i32 16896 }, %struct.usb_audio_quirk_flags_table { i32 81329898, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 82354257, i32 1056 }, %struct.usb_audio_quirk_flags_table { i32 88869772, i32 65536 }, %struct.usb_audio_quirk_flags_table { i32 89522196, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 94606368, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 94834720, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 98632712, i32 4 }, %struct.usb_audio_quirk_flags_table { i32 98632832, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 105152579, i32 2432 }, %struct.usb_audio_quirk_flags_table { i32 105152580, i32 2432 }, %struct.usb_audio_quirk_flags_table { i32 105152586, i32 2432 }, %struct.usb_audio_quirk_flags_table { i32 116961280, i32 16384 }, %struct.usb_audio_quirk_flags_table { i32 116969474, i32 16384 }, %struct.usb_audio_quirk_flags_table { i32 122500435, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 146482946, i32 16384 }, %struct.usb_audio_quirk_flags_table { i32 156309165, i32 512 }, %struct.usb_audio_quirk_flags_table { i32 185467721, i32 512 }, %struct.usb_audio_quirk_flags_table { i32 265879560, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 328561674, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 333774849, i32 16384 }, %struct.usb_audio_quirk_flags_table { i32 357437442, i32 384 }, %struct.usb_audio_quirk_flags_table { i32 357437443, i32 384 }, %struct.usb_audio_quirk_flags_table { i32 357445637, i32 384 }, %struct.usb_audio_quirk_flags_table { i32 357445638, i32 384 }, %struct.usb_audio_quirk_flags_table { i32 357453838, i32 64 }, %struct.usb_audio_quirk_flags_table { i32 377880797, i32 520 }, %struct.usb_audio_quirk_flags_table { i32 397021254, i32 8192 }, %struct.usb_audio_quirk_flags_table { i32 397021261, i32 8192 }, %struct.usb_audio_quirk_flags_table { i32 408047717, i32 384 }, %struct.usb_audio_quirk_flags_table { i32 419496337, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 541094400, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094401, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094416, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094417, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094419, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094423, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094427, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094430, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094431, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094464, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094496, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094512, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094528, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094529, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541098496, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 565444737, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 654835714, i32 16384 }, %struct.usb_audio_quirk_flags_table { i32 689057992, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 817758465, i32 16384 }, %struct.usb_audio_quirk_flags_table { i32 1094493446, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 1397563657, i32 4 }, %struct.usb_audio_quirk_flags_table { i32 304359973, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 73269248, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 74252288, i32 512 }, %struct.usb_audio_quirk_flags_table { i32 75431936, i32 257 }, %struct.usb_audio_quirk_flags_table { i32 105119744, i32 2304 }, %struct.usb_audio_quirk_flags_table { i32 134021120, i32 4096 }, %struct.usb_audio_quirk_flags_table { i32 305463296, i32 4096 }, %struct.usb_audio_quirk_flags_table { i32 355074048, i32 32768 }, %struct.usb_audio_quirk_flags_table { i32 501678080, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 548470784, i32 32768 }, %struct.usb_audio_quirk_flags_table { i32 584646656, i32 32768 }, %struct.usb_audio_quirk_flags_table { i32 599392256, i32 35072 }, %struct.usb_audio_quirk_flags_table { i32 634257408, i32 32768 }, %struct.usb_audio_quirk_flags_table { i32 663420928, i32 32768 }, %struct.usb_audio_quirk_flags_table { i32 690683904, i32 32768 }, %struct.usb_audio_quirk_flags_table { i32 695336960, i32 32768 }, %struct.usb_audio_quirk_flags_table { i32 716570624, i32 32768 }, %struct.usb_audio_quirk_flags_table { i32 861077504, i32 32768 }, %struct.usb_audio_quirk_flags_table { i32 943849472, i32 32768 }, %struct.usb_audio_quirk_flags_table { i32 -989724672, i32 32768 }, %struct.usb_audio_quirk_flags_table zeroinitializer], [152 x i8] zeroinitializer }, align 32
@snd_usb_init_quirk_flags.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 1, i8 -23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_usb_audio\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_usb_init_quirk_flags\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Set quirk_flags 0x%x for device %04x:%04x\0A\00", [53 x i8] zeroinitializer }, align 32
@create_yamaha_midi_quirk.yamaha_midi_quirk = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@create_roland_midi_quirk.roland_midi_quirk = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 6, ptr null }, [16 x i8] zeroinitializer }, align 32
@create_standard_audio_quirk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 103, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot setup if %d: error %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"create_standard_audio_quirk\00", [36 x i8] zeroinitializer }, align 32
@create_standard_audio_quirk._entry_ptr = internal global ptr @create_standard_audio_quirk._entry, section ".printk_index", align 4
@create_uaxx_quirk.ua_format = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 2, i32 1, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1073741824, i32 0, i32 0, i32 0, ptr null, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@create_uaxx_quirk.ua700_ep = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 3, i16 3, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@create_uaxx_quirk.ua700_quirk = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 4, ptr @create_uaxx_quirk.ua700_ep }, [16 x i8] zeroinitializer }, align 32
@create_uaxx_quirk.uaxx_ep = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@create_uaxx_quirk.uaxx_quirk = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 4, ptr @create_uaxx_quirk.uaxx_ep }, [16 x i8] zeroinitializer }, align 32
@create_uaxx_quirk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 508, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown sample rate\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"create_uaxx_quirk\00", [46 x i8] zeroinitializer }, align 32
@create_uaxx_quirk._entry_ptr = internal global ptr @create_uaxx_quirk._entry, section ".printk_index", align 4
@quattro_skip_setting_quirk.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 1, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"quattro_skip_setting_quirk\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"using altsetting %d for interface %d config %d\0A\00", [48 x i8] zeroinitializer }, align 32
@fasttrackpro_skip_setting_quirk.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.14, ptr @.str.2, ptr @.str.13, i8 1, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fasttrackpro_skip_setting_quirk\00", [32 x i8] zeroinitializer }, align 32
@snd_usb_extigy_boot_quirk.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_usb_extigy_boot_quirk\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sending Extigy boot sequence...\0A\00", [63 x i8] zeroinitializer }, align 32
@snd_usb_extigy_boot_quirk.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 0, i8 -106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error sending boot message: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_usb_extigy_boot_quirk.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.15, ptr @.str.2, ptr @.str.18, i8 0, i8 -104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error usb_get_descriptor: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@snd_usb_extigy_boot_quirk.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.15, ptr @.str.2, ptr @.str.19, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error usb_reset_configuration: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@snd_usb_extigy_boot_quirk.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.15, ptr @.str.2, ptr @.str.20, i8 0, i8 -103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"extigy_boot: new boot length = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@snd_usb_mbox2_boot_quirk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 948, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid firmware size=%d.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_usb_mbox2_boot_quirk\00", [39 x i8] zeroinitializer }, align 32
@snd_usb_mbox2_boot_quirk._entry_ptr = internal global ptr @snd_usb_mbox2_boot_quirk._entry, section ".printk_index", align 4
@snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 -18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Sending Digidesign Mbox 2 boot sequence...\0A\00", [52 x i8] zeroinitializer }, align 32
@snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.22, ptr @.str.2, ptr @.str.24, i8 0, i8 -16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"device not ready, resending boot sequence...\0A\00", [50 x i8] zeroinitializer }, align 32
@snd_usb_mbox2_boot_quirk._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.2, i32 968, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Unknown bootresponse=%d, or timed out, ignoring device.\0A\00", [39 x i8] zeroinitializer }, align 32
@snd_usb_mbox2_boot_quirk._entry_ptr.27 = internal global ptr @snd_usb_mbox2_boot_quirk._entry.25, section ".printk_index", align 4
@snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.22, ptr @.str.2, ptr @.str.28, i8 0, i8 -13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"device initialised!\0A\00", [43 x i8] zeroinitializer }, align 32
@snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.22, ptr @.str.2, ptr @.str.18, i8 0, i8 -12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.22, ptr @.str.2, ptr @.str.19, i8 0, i8 -11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.22, ptr @.str.2, ptr @.str.29, i8 0, i8 -10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mbox2_boot: new boot length = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@snd_usb_mbox2_boot_quirk._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.22, ptr @.str.2, i32 988, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Digidesign Mbox 2: 24bit 48kHz\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@snd_usb_mbox2_boot_quirk._entry_ptr.33 = internal global ptr @snd_usb_mbox2_boot_quirk._entry.30, section ".printk_index", align 4
@snd_usb_accessmusic_boot_quirk.seq = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NsR\01", [28 x i8] zeroinitializer }, align 32
@snd_usb_fasttrackpro_boot_quirk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 641, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Fast Track Pro switching to config #2\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"snd_usb_fasttrackpro_boot_quirk\00", [32 x i8] zeroinitializer }, align 32
@snd_usb_fasttrackpro_boot_quirk._entry_ptr = internal global ptr @snd_usb_fasttrackpro_boot_quirk._entry, section ".printk_index", align 4
@snd_usb_fasttrackpro_boot_quirk.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 -94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error usb_driver_set_configuration: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@snd_usb_fasttrackpro_boot_quirk._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.35, ptr @.str.2, i32 657, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Fast Track Pro config OK\0A\00", [38 x i8] zeroinitializer }, align 32
@snd_usb_fasttrackpro_boot_quirk._entry_ptr.39 = internal global ptr @snd_usb_fasttrackpro_boot_quirk._entry.37, section ".printk_index", align 4
@snd_usb_axefx3_boot_quirk.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 -7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_usb_axefx3_boot_quirk\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Waiting for Axe-Fx III to boot up...\0A\00", [58 x i8] zeroinitializer }, align 32
@snd_usb_axefx3_boot_quirk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 1009, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed waiting for Axe-Fx III to boot: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@snd_usb_axefx3_boot_quirk._entry_ptr = internal global ptr @snd_usb_axefx3_boot_quirk._entry, section ".printk_index", align 4
@snd_usb_axefx3_boot_quirk.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.40, ptr @.str.2, ptr @.str.43, i8 0, i8 -3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Axe-Fx III is now ready\0A\00", [39 x i8] zeroinitializer }, align 32
@snd_usb_axefx3_boot_quirk.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.40, ptr @.str.2, ptr @.str.44, i8 0, i8 -2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error stopping Axe-Fx III interface: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@snd_usb_motu_microbookii_boot_quirk.set_samplerate_seq = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\00\00\00\00\00\00\0B\14\00\00\00\01", [20 x i8] zeroinitializer }, align 32
@snd_usb_motu_microbookii_boot_quirk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 1070, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Waiting for MOTU Microbook II to boot up...\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"snd_usb_motu_microbookii_boot_quirk\00", [60 x i8] zeroinitializer }, align 32
@snd_usb_motu_microbookii_boot_quirk._entry_ptr = internal global ptr @snd_usb_motu_microbookii_boot_quirk._entry, section ".printk_index", align 4
@snd_usb_motu_microbookii_boot_quirk._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 1081, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"failed setting the sample rate for Motu MicroBook II: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@snd_usb_motu_microbookii_boot_quirk._entry_ptr.49 = internal global ptr @snd_usb_motu_microbookii_boot_quirk._entry.47, section ".printk_index", align 4
@snd_usb_motu_microbookii_boot_quirk._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.2, i32 1089, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed booting Motu MicroBook II: timeout\0A\00", [53 x i8] zeroinitializer }, align 32
@snd_usb_motu_microbookii_boot_quirk._entry_ptr.52 = internal global ptr @snd_usb_motu_microbookii_boot_quirk._entry.50, section ".printk_index", align 4
@snd_usb_motu_microbookii_boot_quirk._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.46, ptr @.str.2, i32 1103, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"failed booting Motu MicroBook II: communication error %d\0A\00", [38 x i8] zeroinitializer }, align 32
@snd_usb_motu_microbookii_boot_quirk._entry_ptr.55 = internal global ptr @snd_usb_motu_microbookii_boot_quirk._entry.53, section ".printk_index", align 4
@snd_usb_motu_microbookii_boot_quirk._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.46, ptr @.str.2, i32 1119, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MOTU MicroBook II ready\0A\00", [39 x i8] zeroinitializer }, align 32
@snd_usb_motu_microbookii_boot_quirk._entry_ptr.58 = internal global ptr @snd_usb_motu_microbookii_boot_quirk._entry.56, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MicroBookII snd: \00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MicroBookII rcv: \00", [46 x i8] zeroinitializer }, align 32
@switch.table.snd_usb_is_big_endian_format = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 1, i32 0, i32 1, i32 1], [44 x i8] zeroinitializer }, align 32
@switch.table.snd_usb_is_big_endian_format.62 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 1, i32 0, i32 1, i32 1], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.63 = internal global [7 x i64] [i64 5, i64 16, i64 288, i64 312, i64 320, i64 600, i64 608]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 32, i64 123936769, i64 123936771, i64 123936786, i64 424608012]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 6]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.68 = internal global [18 x i64] [i64 16, i64 32, i64 69087232, i64 69087264, i64 75481104, i64 123936786, i64 134021124, i64 214761649, i64 227279106, i64 230305792, i64 284492288, i64 305463312, i64 305463320, i64 322832405, i64 399249408, i64 399249424, i64 399249440, i64 610697232]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 16, i64 6659, i64 58113]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 123936769, i64 123936771, i64 123936786]
@__sancov_gen_cov_switch_values.71 = internal global [10 x i64] [i64 8, i64 32, i64 69091074, i64 69091076, i64 69091082, i64 69091097, i64 149160291, i64 149160319, i64 728956947, i64 1397563657]
@__sancov_gen_cov_switch_values.72 = internal global [7 x i64] [i64 5, i64 32, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 105152568, i64 408047668]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [24 x i64] [i64 22, i64 32, i64 227279638, i64 281739523, i64 353435703, i64 382731954, i64 382732058, i64 382732083, i64 382732763, i64 382732765, i64 382732835, i64 498401283, i64 585222657, i64 614241062, i64 622985234, i64 638976262, i64 639762497, i64 661783088, i64 670511106, i64 698482822, i64 716570628, i64 716570629, i64 716570630, i64 1799487554]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 16, i64 409, i64 411, i64 515]
@__sancov_gen_cov_switch_values.77 = internal global [11 x i64] [i64 9, i64 32, i64 69087264, i64 75435169, i64 123936769, i64 123936771, i64 123936786, i64 125634479, i64 134021124, i64 177340499, i64 304359973]
@__sancov_gen_cov_switch_values.78 = internal global [11 x i64] [i64 9, i64 32, i64 156309208, i64 156309226, i64 156309229, i64 248192838, i64 248192839, i64 248192844, i64 248193081, i64 248193084, i64 248193086]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 16, i64 1177, i64 1410]
@___asan_gen_.80 = private unnamed_addr constant [12 x i8] c"quirk_funcs\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 554, i32 28 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 579, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [20 x i8] c"registration_quirks\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1746, i32 40 }
@___asan_gen_.104 = private unnamed_addr constant [18 x i8] c"quirk_flags_table\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1784, i32 49 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1956, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [18 x i8] c"yamaha_midi_quirk\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 262, i32 42 }
@___asan_gen_.119 = private unnamed_addr constant [18 x i8] c"roland_midi_quirk\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 294, i32 42 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 102, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [10 x i8] c"ua_format\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 437, i32 34 }
@___asan_gen_.134 = private unnamed_addr constant [9 x i8] c"ua700_ep\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 457, i32 50 }
@___asan_gen_.137 = private unnamed_addr constant [12 x i8] c"ua700_quirk\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 461, i32 43 }
@___asan_gen_.140 = private unnamed_addr constant [8 x i8] c"uaxx_ep\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 465, i32 50 }
@___asan_gen_.143 = private unnamed_addr constant [11 x i8] c"uaxx_quirk\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 469, i32 43 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 508, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1174, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1241, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 598, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 603, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 608, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 611, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 612, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 948, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 952, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 963, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 968, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 972, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 983, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 988, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 860, i32 18 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 640, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 649, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 657, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 997, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1008, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1013, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1017, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant [19 x i8] c"set_samplerate_seq\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1060, i32 18 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1070, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1079, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1088, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1101, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1119, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1038, i32 17 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1038, i32 29 }
@___asan_gen_.299 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.300 = private constant [22 x i8] c"../sound/usb/quirks.c\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1050, i32 29 }
@___asan_gen_.302 = private unnamed_addr constant [42 x i8] c"switch.table.snd_usb_is_big_endian_format\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [45 x i8] c"switch.table.snd_usb_is_big_endian_format.62\00", align 1
@llvm.compiler.used = appending global [90 x ptr] [ptr @create_standard_audio_quirk._entry, ptr @create_standard_audio_quirk._entry_ptr, ptr @create_uaxx_quirk._entry, ptr @create_uaxx_quirk._entry_ptr, ptr @snd_usb_axefx3_boot_quirk._entry, ptr @snd_usb_axefx3_boot_quirk._entry_ptr, ptr @snd_usb_create_quirk._entry, ptr @snd_usb_create_quirk._entry_ptr, ptr @snd_usb_fasttrackpro_boot_quirk._entry, ptr @snd_usb_fasttrackpro_boot_quirk._entry.37, ptr @snd_usb_fasttrackpro_boot_quirk._entry_ptr, ptr @snd_usb_fasttrackpro_boot_quirk._entry_ptr.39, ptr @snd_usb_mbox2_boot_quirk._entry, ptr @snd_usb_mbox2_boot_quirk._entry.25, ptr @snd_usb_mbox2_boot_quirk._entry.30, ptr @snd_usb_mbox2_boot_quirk._entry_ptr, ptr @snd_usb_mbox2_boot_quirk._entry_ptr.27, ptr @snd_usb_mbox2_boot_quirk._entry_ptr.33, ptr @snd_usb_motu_microbookii_boot_quirk._entry, ptr @snd_usb_motu_microbookii_boot_quirk._entry.47, ptr @snd_usb_motu_microbookii_boot_quirk._entry.50, ptr @snd_usb_motu_microbookii_boot_quirk._entry.53, ptr @snd_usb_motu_microbookii_boot_quirk._entry.56, ptr @snd_usb_motu_microbookii_boot_quirk._entry_ptr, ptr @snd_usb_motu_microbookii_boot_quirk._entry_ptr.49, ptr @snd_usb_motu_microbookii_boot_quirk._entry_ptr.52, ptr @snd_usb_motu_microbookii_boot_quirk._entry_ptr.55, ptr @snd_usb_motu_microbookii_boot_quirk._entry_ptr.58, ptr @snd_usb_create_quirk.quirk_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @registration_quirks, ptr @quirk_flags_table, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @create_yamaha_midi_quirk.yamaha_midi_quirk, ptr @create_roland_midi_quirk.roland_midi_quirk, ptr @.str.8, ptr @.str.9, ptr @create_uaxx_quirk.ua_format, ptr @create_uaxx_quirk.ua700_ep, ptr @create_uaxx_quirk.ua700_quirk, ptr @create_uaxx_quirk.uaxx_ep, ptr @create_uaxx_quirk.uaxx_quirk, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @snd_usb_accessmusic_boot_quirk.seq, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @snd_usb_motu_microbookii_boot_quirk.set_samplerate_seq, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @switch.table.snd_usb_is_big_endian_format, ptr @switch.table.snd_usb_is_big_endian_format.62], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_create_quirk.quirk_funcs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_create_quirk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @registration_quirks to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirk_flags_table to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_yamaha_midi_quirk.yamaha_midi_quirk to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_roland_midi_quirk.roland_midi_quirk to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_standard_audio_quirk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_uaxx_quirk.ua_format to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_uaxx_quirk.ua700_ep to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_uaxx_quirk.ua700_quirk to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_uaxx_quirk.uaxx_ep to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_uaxx_quirk.uaxx_quirk to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_uaxx_quirk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_mbox2_boot_quirk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_mbox2_boot_quirk._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_mbox2_boot_quirk._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_accessmusic_boot_quirk.seq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_fasttrackpro_boot_quirk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_fasttrackpro_boot_quirk._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_axefx3_boot_quirk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_motu_microbookii_boot_quirk.set_samplerate_seq to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_motu_microbookii_boot_quirk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_motu_microbookii_boot_quirk._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_motu_microbookii_boot_quirk._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_motu_microbookii_boot_quirk._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_motu_microbookii_boot_quirk._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_usb_is_big_endian_format to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_usb_is_big_endian_format.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_create_quirk(ptr noundef %chip, ptr noundef %iface, ptr noundef %driver, ptr noundef %quirk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %quirk, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 2
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %1)
  %cmp = icmp ult i16 %1, 20
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [20 x ptr], ptr @snd_usb_create_quirk.quirk_funcs, i32 0, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 %3(ptr noundef %chip, ptr noundef %iface, ptr noundef %driver, ptr noundef %quirk) #11
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str, i32 noundef %conv) #14
  br label %return

return:                                           ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -6, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ignore_interface_quirk(ptr nocapture noundef readnone %chip, ptr nocapture noundef readnone %iface, ptr nocapture noundef readnone %driver, ptr nocapture noundef readnone %quirk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @create_composite_quirk(ptr noundef %chip, ptr nocapture noundef readonly %iface, ptr noundef %driver, ptr nocapture noundef readonly %quirk_comp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iface, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %3 to i32
  %data = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %quirk_comp, i32 0, i32 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %ifnum85 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ifnum85 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ifnum85, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp86 = icmp sgt i16 %7, -1
  br i1 %cmp86, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %8 = phi i16 [ %7, %for.body.lr.ph ], [ %22, %for.inc.for.body_crit_edge ]
  %ifnum89 = phi ptr [ %ifnum85, %for.body.lr.ph ], [ %ifnum, %for.inc.for.body_crit_edge ]
  %quirk.087 = phi ptr [ %5, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %conv180 = zext i16 %8 to i32
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call = tail call ptr @usb_ifnum_to_if(ptr noundef %10, i32 noundef %conv180) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %11 = ptrtoint ptr %ifnum89 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ifnum89, align 4
  %conv6 = sext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6, i32 %conv)
  %cmp7.not = icmp eq i32 %conv6, %conv
  br i1 %cmp7.not, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %driver.i = getelementptr inbounds %struct.usb_interface, ptr %call, i32 0, i32 7, i32 6
  %13 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver.i, align 4
  %cmp.i.not = icmp eq ptr %14, null
  br i1 %cmp.i.not, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %type.i = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %quirk.087, i32 0, i32 3
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %16)
  %cmp.i74 = icmp ult i16 %16, 20
  %conv.i73 = zext i16 %16 to i32
  br i1 %cmp.i74, label %snd_usb_create_quirk.exit, label %snd_usb_create_quirk.exit.thread

snd_usb_create_quirk.exit.thread:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i73.le = zext i16 %16 to i32
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %dev3.i = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str, i32 noundef %conv.i73.le) #14
  br label %cleanup

snd_usb_create_quirk.exit:                        ; preds = %if.end12
  %arrayidx.i = getelementptr [20 x ptr], ptr @snd_usb_create_quirk.quirk_funcs, i32 0, i32 %conv.i73
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 %20(ptr noundef %chip, ptr noundef nonnull %call, ptr noundef %driver, ptr noundef %quirk.087) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp14 = icmp slt i32 %call.i, 0
  br i1 %cmp14, label %snd_usb_create_quirk.exit.cleanup_crit_edge, label %snd_usb_create_quirk.exit.for.inc_crit_edge

snd_usb_create_quirk.exit.for.inc_crit_edge:      ; preds = %snd_usb_create_quirk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

snd_usb_create_quirk.exit.cleanup_crit_edge:      ; preds = %snd_usb_create_quirk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %snd_usb_create_quirk.exit.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.snd_usb_audio_quirk, ptr %quirk.087, i32 1
  %ifnum = getelementptr %struct.snd_usb_audio_quirk, ptr %quirk.087, i32 1, i32 2
  %21 = ptrtoint ptr %ifnum to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ifnum, align 4
  %cmp = icmp sgt i16 %22, -1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %ifnum2090 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %ifnum2090 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ifnum2090, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %26)
  %cmp2291 = icmp sgt i16 %26, -1
  br i1 %cmp2291, label %for.body24.lr.ph, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body24.lr.ph:                                 ; preds = %for.end
  %dev25 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  br label %for.body24

for.body24:                                       ; preds = %for.inc46.for.body24_crit_edge, %for.body24.lr.ph
  %27 = phi i16 [ %26, %for.body24.lr.ph ], [ %35, %for.inc46.for.body24_crit_edge ]
  %ifnum2093 = phi ptr [ %ifnum2090, %for.body24.lr.ph ], [ %ifnum20, %for.inc46.for.body24_crit_edge ]
  %quirk.192 = phi ptr [ %24, %for.body24.lr.ph ], [ %incdec.ptr47, %for.inc46.for.body24_crit_edge ]
  %conv2181 = zext i16 %27 to i32
  %28 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev25, align 4
  %call28 = tail call ptr @usb_ifnum_to_if(ptr noundef %29, i32 noundef %conv2181) #11
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %for.body24.for.inc46_crit_edge, label %if.end31

for.body24.for.inc46_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc46

if.end31:                                         ; preds = %for.body24
  %30 = ptrtoint ptr %ifnum2093 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %ifnum2093, align 4
  %conv33 = sext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv33, i32 %conv)
  %cmp34.not = icmp eq i32 %conv33, %conv
  br i1 %cmp34.not, label %if.end31.for.inc46_crit_edge, label %land.lhs.true36

if.end31.for.inc46_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc46

land.lhs.true36:                                  ; preds = %if.end31
  %driver.i75 = getelementptr inbounds %struct.usb_interface, ptr %call28, i32 0, i32 7, i32 6
  %32 = ptrtoint ptr %driver.i75 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %driver.i75, align 4
  %cmp.i76.not = icmp eq ptr %33, null
  br i1 %cmp.i76.not, label %if.then39, label %land.lhs.true36.for.inc46_crit_edge

land.lhs.true36.for.inc46_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc46

if.then39:                                        ; preds = %land.lhs.true36
  %call40 = tail call i32 @usb_driver_claim_interface(ptr noundef %driver, ptr noundef nonnull %call28, ptr noundef nonnull inttoptr (i32 -1 to ptr)) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then39.cleanup_crit_edge, label %if.then39.for.inc46_crit_edge

if.then39.for.inc46_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc46

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc46:                                        ; preds = %if.then39.for.inc46_crit_edge, %land.lhs.true36.for.inc46_crit_edge, %if.end31.for.inc46_crit_edge, %for.body24.for.inc46_crit_edge
  %incdec.ptr47 = getelementptr %struct.snd_usb_audio_quirk, ptr %quirk.192, i32 1
  %ifnum20 = getelementptr %struct.snd_usb_audio_quirk, ptr %quirk.192, i32 1, i32 2
  %34 = ptrtoint ptr %ifnum20 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ifnum20, align 4
  %cmp22 = icmp sgt i16 %35, -1
  br i1 %cmp22, label %for.inc46.for.body24_crit_edge, label %for.inc46.cleanup_crit_edge

for.inc46.cleanup_crit_edge:                      ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc46.for.body24_crit_edge:                   ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body24

cleanup:                                          ; preds = %for.inc46.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %for.end.cleanup_crit_edge, %snd_usb_create_quirk.exit.cleanup_crit_edge, %snd_usb_create_quirk.exit.thread
  %retval.0 = phi i32 [ -6, %snd_usb_create_quirk.exit.thread ], [ 0, %for.end.cleanup_crit_edge ], [ %call40, %if.then39.cleanup_crit_edge ], [ 0, %for.inc46.cleanup_crit_edge ], [ %call.i, %snd_usb_create_quirk.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @create_autodetect_quirks(ptr noundef %chip, ptr noundef %iface, ptr noundef %driver, ptr nocapture noundef readonly %quirk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iface, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %3 to i32
  %call = tail call fastcc i32 @create_autodetect_quirk(ptr noundef %chip, ptr noundef %iface, ptr noundef %driver)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %actconfig = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %actconfig, align 4
  %bNumInterfaces = getelementptr inbounds %struct.usb_config_descriptor, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bNumInterfaces to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bNumInterfaces, align 4
  %conv3 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp458.not = icmp eq i8 %9, 0
  br i1 %cmp458.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %ifnum8 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %quirk, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ifnum.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ifnum.059, i32 %conv)
  %cmp6 = icmp eq i32 %ifnum.059, %conv
  br i1 %cmp6, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %10 = ptrtoint ptr %ifnum8 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ifnum8, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %cmp10 = icmp sgt i16 %11, -1
  br i1 %cmp10, label %lor.lhs.false.for.inc_crit_edge, label %if.end13

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end13:                                         ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %call15 = tail call ptr @usb_ifnum_to_if(ptr noundef %13, i32 noundef %ifnum.059) #11
  %tobool.not = icmp eq ptr %call15, null
  br i1 %tobool.not, label %if.end13.for.inc_crit_edge, label %lor.lhs.false16

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false16:                                  ; preds = %if.end13
  %driver.i = getelementptr inbounds %struct.usb_interface, ptr %call15, i32 0, i32 7, i32 6
  %14 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver.i, align 4
  %cmp.i.not = icmp eq ptr %15, null
  br i1 %cmp.i.not, label %lor.lhs.false19, label %lor.lhs.false16.for.inc_crit_edge

lor.lhs.false16.for.inc_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %16 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call15, align 8
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bInterfaceClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp23.not = icmp eq i8 %19, -1
  br i1 %cmp23.not, label %if.end26, label %lor.lhs.false19.for.inc_crit_edge

lor.lhs.false19.for.inc_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end26:                                         ; preds = %lor.lhs.false19
  %call27 = tail call fastcc i32 @create_autodetect_quirk(ptr noundef %chip, ptr noundef nonnull %call15, ptr noundef %driver)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call27)
  %cmp28 = icmp sgt i32 %call27, -1
  br i1 %cmp28, label %if.then30, label %if.end26.for.inc_crit_edge

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then30:                                        ; preds = %if.end26
  %call31 = tail call i32 @usb_driver_claim_interface(ptr noundef %driver, ptr noundef nonnull %call15, ptr noundef nonnull inttoptr (i32 -1 to ptr)) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then30.cleanup_crit_edge, label %if.then30.for.inc_crit_edge

if.then30.for.inc_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %if.then30.for.inc_crit_edge, %if.end26.for.inc_crit_edge, %lor.lhs.false19.for.inc_crit_edge, %lor.lhs.false16.for.inc_crit_edge, %if.end13.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %ifnum.059, 1
  %exitcond.not = icmp eq i32 %inc, %conv3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call31, %if.then30.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @create_any_midi_quirk(ptr noundef %chip, ptr noundef %intf, ptr nocapture noundef readnone %driver, ptr noundef %quirk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %midi_list = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 22
  %call.i = tail call i32 @__snd_usbmidi_create(ptr noundef %1, ptr noundef %intf, ptr noundef %midi_list, ptr noundef %quirk, i32 noundef 0) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @create_standard_audio_quirk(ptr noundef %chip, ptr nocapture noundef readonly %iface, ptr nocapture noundef readnone %driver, ptr nocapture noundef readnone %quirk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iface, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceNumber, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 @snd_usb_parse_audio_interface(ptr noundef %chip, i32 noundef %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bInterfaceNumber, align 1
  %conv4 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.8, i32 noundef %conv4, i32 noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bInterfaceNumber, align 1
  %conv7 = zext i8 %9 to i32
  %call8 = tail call i32 @usb_set_interface(ptr noundef %5, i32 noundef %conv7, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @create_fixed_stream_quirk(ptr noundef %chip, ptr nocapture noundef readonly %iface, ptr nocapture noundef readnone %driver, ptr nocapture noundef readonly %quirk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %quirk, i32 0, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 88, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call, ptr %call, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %prev.i, align 4
  %nr_rates = getelementptr inbounds %struct.audioformat, ptr %call, i32 0, i32 24
  %4 = ptrtoint ptr %nr_rates to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_rates, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %5)
  %cmp = icmp ugt i32 %5, 1024
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call) #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not = icmp eq i32 %5, 0
  br i1 %cmp4.not, label %if.end2.if.end13_crit_edge, label %if.then5

if.end2.if.end13_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then5:                                         ; preds = %if.end2
  %rate_table6 = getelementptr inbounds %struct.audioformat, ptr %call, i32 0, i32 25
  %6 = ptrtoint ptr %rate_table6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rate_table6, align 4
  %mul = shl nuw nsw i32 %5, 2
  %call8 = tail call ptr @kmemdup(ptr noundef %7, i32 noundef %mul, i32 noundef 3264) #11
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call) #11
  br label %cleanup

if.end11:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %rate_table6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8, ptr %rate_table6, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %if.end2.if.end13_crit_edge
  %rate_table.0 = phi ptr [ %call8, %if.end11 ], [ null, %if.end2.if.end13_crit_edge ]
  %iface14 = getelementptr inbounds %struct.audioformat, ptr %call, i32 0, i32 6
  %9 = ptrtoint ptr %iface14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %iface14, align 8
  %11 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iface, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %14)
  %cmp16.not = icmp eq i8 %10, %14
  br i1 %cmp16.not, label %lor.lhs.false, label %if.end13.error_crit_edge

if.end13.error_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

lor.lhs.false:                                    ; preds = %if.end13
  %altset_idx = getelementptr inbounds %struct.audioformat, ptr %call, i32 0, i32 9
  %15 = ptrtoint ptr %altset_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %altset_idx, align 1
  %conv18 = zext i8 %16 to i32
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 2
  %17 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv18)
  %cmp19.not = icmp ugt i32 %18, %conv18
  br i1 %cmp19.not, label %if.end22, label %lor.lhs.false.error_crit_edge

lor.lhs.false.error_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end22:                                         ; preds = %lor.lhs.false
  %arrayidx25 = getelementptr %struct.usb_host_interface, ptr %12, i32 %conv18
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx25, i32 0, i32 4
  %19 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bNumEndpoints, align 1
  %ep_idx = getelementptr inbounds %struct.audioformat, ptr %call, i32 0, i32 8
  %21 = ptrtoint ptr %ep_idx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ep_idx, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp29.not = icmp ugt i8 %20, %22
  br i1 %cmp29.not, label %if.end32, label %if.end22.error_crit_edge

if.end22.error_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end32:                                         ; preds = %if.end22
  %bInterfaceProtocol = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx25, i32 0, i32 7
  %23 = ptrtoint ptr %bInterfaceProtocol to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bInterfaceProtocol, align 1
  %protocol = getelementptr inbounds %struct.audioformat, ptr %call, i32 0, i32 19
  %25 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %protocol, align 1
  %datainterval = getelementptr inbounds %struct.audioformat, ptr %call, i32 0, i32 18
  %26 = ptrtoint ptr %datainterval to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %datainterval, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp34 = icmp eq i8 %27, 0
  br i1 %cmp34, label %if.then36, label %if.end32.if.end39_crit_edge

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %call37 = tail call zeroext i8 @snd_usb_parse_datainterval(ptr noundef %chip, ptr noundef %arrayidx25) #11
  %28 = ptrtoint ptr %datainterval to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %call37, ptr %datainterval, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end32.if.end39_crit_edge
  %maxpacksize = getelementptr inbounds %struct.audioformat, ptr %call, i32 0, i32 20
  %29 = ptrtoint ptr %maxpacksize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %maxpacksize, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp40 = icmp eq i32 %30, 0
  br i1 %cmp40, label %if.then42, label %if.end39.if.end49_crit_edge

if.end39.if.end49_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %endpoint = getelementptr %struct.usb_host_interface, ptr %12, i32 %conv18, i32 3
  %31 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %endpoint, align 4
  %33 = ptrtoint ptr %ep_idx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ep_idx, align 2
  %idxprom44 = zext i8 %34 to i32
  %wMaxPacketSize = getelementptr %struct.usb_host_endpoint, ptr %32, i32 %idxprom44, i32 0, i32 4
  %35 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %wMaxPacketSize, align 4
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  %conv47 = zext i16 %37 to i32
  %38 = ptrtoint ptr %maxpacksize to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv47, ptr %maxpacksize, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then42, %if.end39.if.end49_crit_edge
  %fmt_type = getelementptr inbounds %struct.audioformat, ptr %call, i32 0, i32 3
  %39 = ptrtoint ptr %fmt_type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fmt_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool50.not = icmp eq i32 %40, 0
  br i1 %tobool50.not, label %if.then51, label %if.end49.if.end53_crit_edge

if.end49.if.end53_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %fmt_type to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %fmt_type, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end49.if.end53_crit_edge
  %endpoint.i = getelementptr inbounds %struct.audioformat, ptr %call, i32 0, i32 11
  %42 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %endpoint.i, align 1
  %.lobit.i = lshr i8 %43, 7
  %44 = zext i8 %.lobit.i to i32
  %call.i = tail call i32 @snd_usb_audioformat_set_sync_ep(ptr noundef %chip, ptr noundef nonnull %call) #11
  %call1.i = tail call i32 @snd_usb_add_audio_stream(ptr noundef %chip, i32 noundef %44, ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end53.error_crit_edge, label %if.end.i

if.end53.error_crit_edge:                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end.i:                                         ; preds = %if.end53
  %45 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %endpoint.i, align 1
  %conv4.i = zext i8 %46 to i32
  %call5.i = tail call i32 @snd_usb_add_endpoint(ptr noundef %chip, i32 noundef %conv4.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i.error_crit_edge, label %if.end9.i

if.end.i.error_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end9.i:                                        ; preds = %if.end.i
  %sync_ep.i = getelementptr inbounds %struct.audioformat, ptr %call, i32 0, i32 14
  %47 = ptrtoint ptr %sync_ep.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %sync_ep.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool10.not.i = icmp eq i8 %48, 0
  br i1 %tobool10.not.i, label %if.end9.i.if.end58_crit_edge, label %if.then11.i

if.end9.i.if.end58_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then11.i:                                      ; preds = %if.end9.i
  %conv13.i = zext i8 %48 to i32
  %implicit_fb.i = getelementptr inbounds %struct.audioformat, ptr %call, i32 0, i32 13
  %49 = ptrtoint ptr %implicit_fb.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %implicit_fb.i, align 1, !range !164
  %51 = xor i8 %50, 1
  %52 = zext i8 %51 to i32
  %call17.i = tail call i32 @snd_usb_add_endpoint(ptr noundef %chip, i32 noundef %conv13.i, i32 noundef %52) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.then11.i.error_crit_edge, label %if.then11.i.if.end58_crit_edge

if.then11.i.if.end58_crit_edge:                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then11.i.error_crit_edge:                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end58:                                         ; preds = %if.then11.i.if.end58_crit_edge, %if.end9.i.if.end58_crit_edge
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  %55 = ptrtoint ptr %iface14 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %iface14, align 8
  %conv60 = zext i8 %56 to i32
  %call61 = tail call i32 @usb_set_interface(ptr noundef %54, i32 noundef %conv60, i32 noundef 0) #11
  %call62 = tail call i32 @snd_usb_init_pitch(ptr noundef %chip, ptr noundef nonnull %call) #11
  %rate_max = getelementptr inbounds %struct.audioformat, ptr %call, i32 0, i32 23
  %57 = ptrtoint ptr %rate_max to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rate_max, align 4
  %call63 = tail call i32 @snd_usb_init_sample_rate(ptr noundef %chip, ptr noundef nonnull %call, i32 noundef %58) #11
  br label %cleanup

error:                                            ; preds = %if.then11.i.error_crit_edge, %if.end.i.error_crit_edge, %if.end53.error_crit_edge, %if.end22.error_crit_edge, %lor.lhs.false.error_crit_edge, %if.end13.error_crit_edge
  %err.0 = phi i32 [ -22, %lor.lhs.false.error_crit_edge ], [ -22, %if.end13.error_crit_edge ], [ -22, %if.end22.error_crit_edge ], [ %call17.i, %if.then11.i.error_crit_edge ], [ %call5.i, %if.end.i.error_crit_edge ], [ %call1.i, %if.end53.error_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call) #11
  br i1 %call.i.i, label %if.end.i.i, label %error.list_del.exit_crit_edge

error.list_del.exit_crit_edge:                    ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i, align 4
  %61 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %error.list_del.exit_crit_edge
  %65 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 256 to ptr), ptr %call, align 4
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %call) #11
  tail call void @kfree(ptr noundef %rate_table.0) #11
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.end58, %if.then10, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then1 ], [ %err.0, %list_del.exit ], [ 0, %if.end58 ], [ -12, %if.then10 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @create_uaxx_quirk(ptr noundef %chip, ptr noundef %iface, ptr nocapture noundef readnone %driver, ptr nocapture noundef readnone %quirk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 2
  %0 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iface, align 8
  %bNumEndpoints = getelementptr %struct.usb_host_interface, ptr %3, i32 1, i32 0, i32 4
  %4 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bNumEndpoints, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %if.end.cleanup_crit_edge [
    i8 2, label %if.then3
    i8 1, label %if.end14
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 4
  %7 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usb_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 92405803, i32 %8)
  %cmp5 = icmp eq i32 %8, 92405803
  %cond = select i1 %cmp5, ptr @create_uaxx_quirk.ua700_quirk, ptr @create_uaxx_quirk.uaxx_quirk
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 2
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %midi_list = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 22
  %call = tail call i32 @__snd_usbmidi_create(ptr noundef %10, ptr noundef %iface, ptr noundef %midi_list, ptr noundef nonnull %cond, i32 noundef %8) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call15 = tail call ptr @kmemdup(ptr noundef nonnull @create_uaxx_quirk.ua_format, i32 noundef 88, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call15, null
  br i1 %tobool.not, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %bInterfaceNumber = getelementptr %struct.usb_host_interface, ptr %3, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bInterfaceNumber, align 1
  %iface18 = getelementptr inbounds %struct.audioformat, ptr %call15, i32 0, i32 6
  %13 = ptrtoint ptr %iface18 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %iface18, align 8
  %endpoint = getelementptr %struct.usb_host_interface, ptr %3, i32 1, i32 3
  %14 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bEndpointAddress, align 2
  %endpoint21 = getelementptr inbounds %struct.audioformat, ptr %call15, i32 0, i32 11
  %18 = ptrtoint ptr %endpoint21 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %endpoint21, align 1
  %19 = load ptr, ptr %endpoint, align 4
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bmAttributes, align 1
  %ep_attr = getelementptr inbounds %struct.audioformat, ptr %call15, i32 0, i32 12
  %22 = ptrtoint ptr %ep_attr to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %ep_attr, align 2
  %datainterval = getelementptr inbounds %struct.audioformat, ptr %call15, i32 0, i32 18
  %23 = ptrtoint ptr %datainterval to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %datainterval, align 4
  %24 = load ptr, ptr %endpoint, align 4
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %wMaxPacketSize, align 4
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %conv28 = zext i16 %27 to i32
  %maxpacksize = getelementptr inbounds %struct.audioformat, ptr %call15, i32 0, i32 20
  %28 = ptrtoint ptr %maxpacksize to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv28, ptr %maxpacksize, align 8
  %29 = ptrtoint ptr %call15 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call15, ptr %call15, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call15, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call15, ptr %prev.i, align 4
  %31 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.63)
  switch i16 %27, label %do.end [
    i16 288, label %if.end17.sw.epilog_crit_edge
    i16 312, label %if.end17.sw.bb30_crit_edge
    i16 320, label %if.end17.sw.bb30_crit_edge87
    i16 600, label %if.end17.sw.bb33_crit_edge
    i16 608, label %if.end17.sw.bb33_crit_edge88
  ]

if.end17.sw.bb33_crit_edge88:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb33

if.end17.sw.bb33_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb33

if.end17.sw.bb30_crit_edge87:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb30

if.end17.sw.bb30_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb30

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end17.sw.bb30_crit_edge, %if.end17.sw.bb30_crit_edge87
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end17.sw.bb33_crit_edge, %if.end17.sw.bb33_crit_edge88
  br label %sw.epilog

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %dev36 = getelementptr inbounds %struct.usb_device, ptr %33, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.10) #14
  tail call void @kfree(ptr noundef nonnull %call15) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb33, %sw.bb30, %if.end17.sw.epilog_crit_edge
  %.sink86 = phi i32 [ 96000, %sw.bb33 ], [ 48000, %sw.bb30 ], [ 44100, %if.end17.sw.epilog_crit_edge ]
  %rate_min34 = getelementptr inbounds %struct.audioformat, ptr %call15, i32 0, i32 22
  %34 = ptrtoint ptr %rate_min34 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink86, ptr %rate_min34, align 8
  %rate_max35 = getelementptr inbounds %struct.audioformat, ptr %call15, i32 0, i32 23
  %35 = ptrtoint ptr %rate_max35 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink86, ptr %rate_max35, align 4
  %36 = ptrtoint ptr %endpoint21 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %endpoint21, align 1
  %.lobit.i = lshr i8 %37, 7
  %38 = zext i8 %.lobit.i to i32
  %call.i = tail call i32 @snd_usb_audioformat_set_sync_ep(ptr noundef %chip, ptr noundef nonnull %call15) #11
  %call1.i = tail call i32 @snd_usb_add_audio_stream(ptr noundef %chip, i32 noundef %38, ptr noundef nonnull %call15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %sw.epilog.if.then40_crit_edge, label %if.end.i

sw.epilog.if.then40_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40

if.end.i:                                         ; preds = %sw.epilog
  %39 = ptrtoint ptr %endpoint21 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %endpoint21, align 1
  %conv4.i = zext i8 %40 to i32
  %call5.i = tail call i32 @snd_usb_add_endpoint(ptr noundef %chip, i32 noundef %conv4.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i.if.then40_crit_edge, label %if.end9.i

if.end.i.if.then40_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40

if.end9.i:                                        ; preds = %if.end.i
  %sync_ep.i = getelementptr inbounds %struct.audioformat, ptr %call15, i32 0, i32 14
  %41 = ptrtoint ptr %sync_ep.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %sync_ep.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool10.not.i = icmp eq i8 %42, 0
  br i1 %tobool10.not.i, label %if.end9.i.if.end42_crit_edge, label %if.then11.i

if.end9.i.if.end42_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then11.i:                                      ; preds = %if.end9.i
  %conv13.i = zext i8 %42 to i32
  %implicit_fb.i = getelementptr inbounds %struct.audioformat, ptr %call15, i32 0, i32 13
  %43 = ptrtoint ptr %implicit_fb.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %implicit_fb.i, align 1, !range !164
  %45 = xor i8 %44, 1
  %46 = zext i8 %45 to i32
  %call17.i = tail call i32 @snd_usb_add_endpoint(ptr noundef %chip, i32 noundef %conv13.i, i32 noundef %46) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.then11.i.if.then40_crit_edge, label %if.then11.i.if.end42_crit_edge

if.then11.i.if.end42_crit_edge:                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then11.i.if.then40_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40

if.then40:                                        ; preds = %if.then11.i.if.then40_crit_edge, %if.end.i.if.then40_crit_edge, %sw.epilog.if.then40_crit_edge
  %retval.0.i.ph = phi i32 [ %call17.i, %if.then11.i.if.then40_crit_edge ], [ %call5.i, %if.end.i.if.then40_crit_edge ], [ %call1.i, %sw.epilog.if.then40_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call15) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then40.list_del.exit_crit_edge

if.then40.list_del.exit_crit_edge:                ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i, align 4
  %49 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call15, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then40.list_del.exit_crit_edge
  %53 = ptrtoint ptr %call15 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 256 to ptr), ptr %call15, align 4
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %call15) #11
  br label %cleanup

if.end42:                                         ; preds = %if.then11.i.if.end42_crit_edge, %if.end9.i.if.end42_crit_edge
  %dev43 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %55 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev43, align 4
  %57 = ptrtoint ptr %iface18 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %iface18, align 8
  %conv45 = zext i8 %58 to i32
  %call46 = tail call i32 @usb_set_interface(ptr noundef %56, i32 noundef %conv45, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %list_del.exit, %do.end, %if.end14.cleanup_crit_edge, %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then3 ], [ -6, %do.end ], [ %retval.0.i.ph, %list_del.exit ], [ 0, %if.end42 ], [ -6, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @create_standard_mixer_quirk(ptr noundef %chip, ptr nocapture noundef readnone %iface, ptr nocapture noundef readnone %driver, ptr nocapture noundef readonly %quirk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ifnum = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %quirk, i32 0, i32 2
  %0 = ptrtoint ptr %ifnum to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ifnum, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp slt i16 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv5 = zext i16 %1 to i32
  %call = tail call i32 @snd_usb_create_mixer(ptr noundef %chip, i32 noundef %conv5) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_apply_interface_quirk(ptr nocapture noundef readonly %chip, i32 noundef %iface, i32 noundef %altno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %1, label %entry.return_crit_edge [
    i32 123936771, label %if.then
    i32 123936769, label %if.then3
    i32 123936786, label %if.then8
    i32 424608012, label %if.then13
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %entry
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 @usb_set_interface(ptr noundef %4, i32 noundef %iface, i32 noundef 0) #11
  %setup.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 24
  %5 = ptrtoint ptr %setup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %setup.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.return_crit_edge, label %if.then.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then.i:                                        ; preds = %if.then
  %and2.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %altno)
  %cmp.not.i = icmp eq i32 %altno, 6
  %or.cond.i = or i1 %cmp.not.i, %tobool3.not.i
  br i1 %or.cond.i, label %if.end.i, label %if.then.i.cleanup.thread.i_crit_edge

if.then.i.cleanup.thread.i_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

if.end.i:                                         ; preds = %if.then.i
  %and6.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %altno)
  %cmp9.not.i = icmp eq i32 %altno, 1
  %or.cond47.i = or i1 %cmp9.not.i, %tobool7.not.i
  br i1 %or.cond47.i, label %if.end11.i, label %if.end.i.cleanup.thread.i_crit_edge

if.end.i.cleanup.thread.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

if.end11.i:                                       ; preds = %if.end.i
  %and13.i = and i32 %6, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %and13.i)
  %cmp14.i = icmp ne i32 %and13.i, 25
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %altno)
  %cmp16.not.i = icmp eq i32 %altno, 2
  %or.cond48.i = or i1 %cmp16.not.i, %cmp14.i
  br i1 %or.cond48.i, label %if.end18.i, label %if.end11.i.cleanup.thread.i_crit_edge

if.end11.i.cleanup.thread.i_crit_edge:            ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

if.end18.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and13.i)
  %cmp19.i = icmp ne i32 %and13.i, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %altno)
  %cmp21.not.i = icmp eq i32 %altno, 3
  %or.cond49.i = or i1 %cmp21.not.i, %cmp19.i
  br i1 %or.cond49.i, label %if.end23.i, label %if.end18.i.cleanup.thread.i_crit_edge

if.end18.i.cleanup.thread.i_crit_edge:            ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

if.end23.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and13.i)
  %cmp24.i = icmp ne i32 %and13.i, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %altno)
  %cmp26.not.i = icmp eq i32 %altno, 4
  %or.cond50.i = or i1 %cmp26.not.i, %cmp24.i
  br i1 %or.cond50.i, label %if.end28.i, label %if.end23.i.cleanup.thread.i_crit_edge

if.end23.i.cleanup.thread.i_crit_edge:            ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

if.end28.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and13.i)
  %cmp29.i = icmp ne i32 %and13.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %altno)
  %cmp31.not.i = icmp eq i32 %altno, 5
  %or.cond51.i = or i1 %cmp31.not.i, %cmp29.i
  br i1 %or.cond51.i, label %if.end28.i.return_crit_edge, label %if.end28.i.cleanup.thread.i_crit_edge

if.end28.i.cleanup.thread.i_crit_edge:            ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

if.end28.i.return_crit_edge:                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

cleanup.thread.i:                                 ; preds = %if.end28.i.cleanup.thread.i_crit_edge, %if.end23.i.cleanup.thread.i_crit_edge, %if.end18.i.cleanup.thread.i_crit_edge, %if.end11.i.cleanup.thread.i_crit_edge, %if.end.i.cleanup.thread.i_crit_edge, %if.then.i.cleanup.thread.i_crit_edge
  br label %return

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call fastcc i32 @quattro_skip_setting_quirk(ptr noundef %chip, i32 noundef %iface, i32 noundef %altno)
  br label %return

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call fastcc i32 @fasttrackpro_skip_setting_quirk(ptr noundef %chip, i32 noundef %iface, i32 noundef %altno)
  br label %return

if.then13:                                        ; preds = %entry
  %setup.i29 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 24
  %7 = ptrtoint ptr %setup.i29 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %setup.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp ne i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp2.i = icmp slt i32 %8, 3
  %or.cond.not.i = and i1 %cmp.i, %cmp2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %altno)
  %cmp3.not.i = icmp eq i32 %altno, 2
  %or.cond1.i = or i1 %cmp3.not.i, %or.cond.not.i
  br i1 %or.cond1.i, label %if.else.i, label %if.then13.return_crit_edge

if.then13.return_crit_edge:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp5.i = icmp ne i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %altno)
  %cmp7.not.i = icmp eq i32 %altno, 1
  %or.cond2.i = or i1 %cmp7.not.i, %cmp5.i
  br i1 %or.cond2.i, label %if.else9.i, label %if.else.i.return_crit_edge

if.else.i.return_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp11.i = icmp eq i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %altno)
  %cmp13.not.i = icmp ne i32 %altno, 3
  %not.or.cond3.i = and i1 %cmp13.not.i, %cmp11.i
  %spec.select.i = zext i1 %not.or.cond3.i to i32
  br label %return

return:                                           ; preds = %if.else9.i, %if.else.i.return_crit_edge, %if.then13.return_crit_edge, %if.then8, %if.then3, %cleanup.thread.i, %if.end28.i.return_crit_edge, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then3 ], [ %call9, %if.then8 ], [ 0, %entry.return_crit_edge ], [ 1, %cleanup.thread.i ], [ 0, %if.end28.i.return_crit_edge ], [ 0, %if.then.return_crit_edge ], [ 1, %if.then13.return_crit_edge ], [ 1, %if.else.i.return_crit_edge ], [ %spec.select.i, %if.else9.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @quattro_skip_setting_quirk(ptr nocapture noundef readonly %chip, i32 noundef %iface, i32 noundef %altno) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call i32 @usb_set_interface(ptr noundef %1, i32 noundef %iface, i32 noundef 0) #11
  %setup = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 24
  %2 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %setup, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then:                                          ; preds = %entry
  %and2 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %iface.off67 = add i32 %iface, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %iface.off67)
  %switch68 = icmp ult i32 %iface.off67, 2
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  br i1 %switch68, label %if.then4.do.body_crit_edge, label %if.then4.return_crit_edge

if.then4.return_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then4.do.body_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.else:                                          ; preds = %if.then
  br i1 %switch68, label %if.else.return_crit_edge, label %if.end10

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end10:                                         ; preds = %if.else
  %and12 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %altno)
  %cmp15.not = icmp eq i32 %altno, 1
  %or.cond = or i1 %cmp15.not, %tobool13.not
  br i1 %or.cond, label %if.end17, label %if.end10.return_crit_edge

if.end10.return_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end17:                                         ; preds = %if.end10
  %and19 = and i32 %3, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %and19)
  %cmp20 = icmp ne i32 %and19, 25
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %altno)
  %cmp22.not = icmp eq i32 %altno, 2
  %or.cond63 = or i1 %cmp22.not, %cmp20
  br i1 %or.cond63, label %if.end24, label %if.end17.return_crit_edge

if.end17.return_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and19)
  %cmp25 = icmp ne i32 %and19, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %altno)
  %cmp27.not = icmp eq i32 %altno, 3
  %or.cond64 = or i1 %cmp27.not, %cmp25
  br i1 %or.cond64, label %if.end29, label %if.end24.return_crit_edge

if.end24.return_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and19)
  %cmp30 = icmp ne i32 %and19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %altno)
  %cmp32.not = icmp eq i32 %altno, 4
  %or.cond65 = or i1 %cmp32.not, %cmp30
  br i1 %or.cond65, label %if.end29.do.body_crit_edge, label %if.end29.return_crit_edge

if.end29.return_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end29.do.body_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %if.end29.do.body_crit_edge, %if.then4.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @quattro_skip_setting_quirk.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@quattro_skip_setting_quirk, %if.then41)) #11
          to label %return [label %if.then41], !srcloc !165

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev43 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %setup, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @quattro_skip_setting_quirk.__UNIQUE_ID_ddebug258, ptr noundef %dev43, ptr noundef nonnull @.str.13, i32 noundef %altno, i32 noundef %iface, i32 noundef %7) #11
  br label %return

return:                                           ; preds = %if.then41, %do.body, %if.end29.return_crit_edge, %if.end24.return_crit_edge, %if.end17.return_crit_edge, %if.end10.return_crit_edge, %if.else.return_crit_edge, %if.then4.return_crit_edge
  %retval.1 = phi i32 [ 1, %if.then4.return_crit_edge ], [ 0, %if.then41 ], [ 0, %do.body ], [ 1, %if.else.return_crit_edge ], [ 1, %if.end10.return_crit_edge ], [ 1, %if.end17.return_crit_edge ], [ 1, %if.end24.return_crit_edge ], [ 1, %if.end29.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fasttrackpro_skip_setting_quirk(ptr nocapture noundef readonly %chip, i32 noundef %iface, i32 noundef %altno) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call i32 @usb_set_interface(ptr noundef %1, i32 noundef %iface, i32 noundef 0) #11
  %setup = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 24
  %2 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %setup, align 4
  %and = and i32 %3, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else30, label %if.then

if.then:                                          ; preds = %entry
  %and2 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  %4 = zext i32 %altno to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %altno, label %if.then4.return_crit_edge [
    i32 3, label %if.then4.do.body_crit_edge
    i32 6, label %if.then4.do.body_crit_edge60
  ]

if.then4.do.body_crit_edge60:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then4.do.body_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then4.return_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else:                                          ; preds = %if.then
  %and8 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else19, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %iface)
  %cmp11 = icmp eq i32 %iface, 4
  br i1 %cmp11, label %if.then10.return_crit_edge, label %if.end13

if.then10.return_crit_edge:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end13:                                         ; preds = %if.then10
  %5 = zext i32 %altno to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %altno, label %if.end13.return_crit_edge [
    i32 2, label %if.end13.do.body_crit_edge
    i32 5, label %if.end13.do.body_crit_edge61
  ]

if.end13.do.body_crit_edge61:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end13.do.body_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end13.return_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %iface)
  %cmp20 = icmp eq i32 %iface, 5
  br i1 %cmp20, label %if.else19.return_crit_edge, label %if.end22

if.else19.return_crit_edge:                       ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end22:                                         ; preds = %if.else19
  %6 = zext i32 %altno to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %altno, label %if.end22.return_crit_edge [
    i32 2, label %if.end22.do.body_crit_edge
    i32 5, label %if.end22.do.body_crit_edge62
  ]

if.end22.do.body_crit_edge62:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end22.do.body_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end22.return_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else30:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %altno)
  %cmp31.not = icmp eq i32 %altno, 1
  br i1 %cmp31.not, label %if.else30.do.body_crit_edge, label %if.else30.return_crit_edge

if.else30.return_crit_edge:                       ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else30.do.body_crit_edge:                      ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %if.else30.do.body_crit_edge, %if.end22.do.body_crit_edge, %if.end22.do.body_crit_edge62, %if.end13.do.body_crit_edge, %if.end13.do.body_crit_edge61, %if.then4.do.body_crit_edge, %if.then4.do.body_crit_edge60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fasttrackpro_skip_setting_quirk.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fasttrackpro_skip_setting_quirk, %if.then39)) #11
          to label %return [label %if.then39], !srcloc !165

if.then39:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %dev41 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %setup, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fasttrackpro_skip_setting_quirk.__UNIQUE_ID_ddebug259, ptr noundef %dev41, ptr noundef nonnull @.str.13, i32 noundef %altno, i32 noundef %iface, i32 noundef %10) #11
  br label %return

return:                                           ; preds = %if.then39, %do.body, %if.else30.return_crit_edge, %if.end22.return_crit_edge, %if.else19.return_crit_edge, %if.end13.return_crit_edge, %if.then10.return_crit_edge, %if.then4.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.then4.return_crit_edge ], [ 1, %if.then10.return_crit_edge ], [ 1, %if.end13.return_crit_edge ], [ 1, %if.else19.return_crit_edge ], [ 1, %if.end22.return_crit_edge ], [ 1, %if.else30.return_crit_edge ], [ 0, %if.then39 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_apply_boot_quirk(ptr noundef %dev, ptr nocapture noundef readonly %intf, ptr nocapture noundef readnone %quirk, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  %buf.i59 = alloca [2 x i8], align 2
  %actual_length.i = alloca i32, align 4
  %buf.i.i42 = alloca [4 x i8], align 1
  %buf.i.i = alloca [4 x i8], align 1
  %buf.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %id, label %entry.return_crit_edge [
    i32 69087232, label %sw.bb
    i32 69087264, label %sw.bb1
    i32 284492288, label %sw.bb3
    i32 227279106, label %entry.sw.bb5_crit_edge
    i32 214761649, label %entry.sw.bb5_crit_edge63
    i32 230305792, label %sw.bb7
    i32 305463312, label %entry.sw.bb9_crit_edge
    i32 305463320, label %entry.sw.bb9_crit_edge64
    i32 322832405, label %sw.bb11
    i32 399249408, label %entry.sw.bb13_crit_edge
    i32 399249424, label %entry.sw.bb13_crit_edge65
    i32 399249440, label %entry.sw.bb13_crit_edge66
    i32 123936786, label %sw.bb15
    i32 75481104, label %sw.bb17
    i32 610697232, label %sw.bb19
    i32 134021124, label %sw.bb21
  ]

entry.sw.bb13_crit_edge66:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

entry.sw.bb13_crit_edge65:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

entry.sw.bb13_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

entry.sw.bb9_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9

entry.sw.bb5_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @snd_usb_extigy_boot_quirk(ptr noundef %dev)
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #11
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %buf.i, align 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shl.i.i = shl i32 %3, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  %call2.i = call i32 @snd_usb_ctl_msg(ptr noundef %dev, i32 noundef %or1.i, i8 noundef zeroext 42, i8 noundef zeroext -61, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf.i, i16 noundef zeroext 1) #11
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb1.snd_usb_audigy2nx_boot_quirk.exit_crit_edge

sw.bb1.snd_usb_audigy2nx_boot_quirk.exit_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_usb_audigy2nx_boot_quirk.exit

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev, align 8
  %shl.i10.i = shl i32 %7, 8
  %or5.i = or i32 %shl.i10.i, -2147483648
  %call6.i = call i32 @snd_usb_ctl_msg(ptr noundef %dev, i32 noundef %or5.i, i8 noundef zeroext 41, i8 noundef zeroext 67, i16 noundef zeroext 1, i16 noundef zeroext 2000, ptr noundef null, i16 noundef zeroext 0) #11
  br label %snd_usb_audigy2nx_boot_quirk.exit

snd_usb_audigy2nx_boot_quirk.exit:                ; preds = %if.then.i, %sw.bb1.snd_usb_audigy2nx_boot_quirk.exit_crit_edge
  %retval.0.i = phi i32 [ -19, %if.then.i ], [ 0, %sw.bb1.snd_usb_audigy2nx_boot_quirk.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #11
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #11
  %8 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 1
  %9 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 2
  %10 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 32, ptr %buf.i.i, align 1
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 4, ptr %8, align 1
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -128, ptr %9, align 1
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %10, align 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dev, align 8
  %shl.i.i.i = shl i32 %16, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call9.i.i = call i32 @snd_usb_ctl_msg(ptr noundef %dev, i32 noundef %or.i.i, i8 noundef zeroext 9, i8 noundef zeroext 34, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  br label %return

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge63
  %17 = getelementptr inbounds [4 x i8], ptr %buf.i.i42, i32 0, i32 1
  %18 = getelementptr inbounds [4 x i8], ptr %buf.i.i42, i32 0, i32 2
  %19 = getelementptr inbounds [4 x i8], ptr %buf.i.i42, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i42) #11
  %20 = ptrtoint ptr %buf.i.i42 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 32, ptr %buf.i.i42, align 1
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %17, align 1
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 32, ptr %18, align 1
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %19, align 1
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dev, align 8
  %shl.i.i.i43 = shl i32 %25, 8
  %or.i.i44 = or i32 %shl.i.i.i43, -2147483648
  %call9.i.i45 = call i32 @snd_usb_ctl_msg(ptr noundef %dev, i32 noundef %or.i.i44, i8 noundef zeroext 9, i8 noundef zeroext 34, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf.i.i42, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i42) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i45)
  %cmp1.i = icmp slt i32 %call9.i.i45, 0
  br i1 %cmp1.i, label %sw.bb5.return_crit_edge, label %for.cond.i

sw.bb5.return_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.cond.i:                                       ; preds = %sw.bb5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i42) #11
  %26 = ptrtoint ptr %buf.i.i42 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 32, ptr %buf.i.i42, align 1
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %17, align 1
  %28 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 48, ptr %18, align 1
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %19, align 1
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dev, align 8
  %shl.i.i.1.i = shl i32 %31, 8
  %or.i.1.i = or i32 %shl.i.i.1.i, -2147483648
  %call9.i.1.i = call i32 @snd_usb_ctl_msg(ptr noundef %dev, i32 noundef %or.i.1.i, i8 noundef zeroext 9, i8 noundef zeroext 34, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf.i.i42, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i42) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.1.i)
  %cmp1.1.i = icmp slt i32 %call9.i.1.i, 0
  br i1 %cmp1.1.i, label %for.cond.i.return_crit_edge, label %for.cond.1.i

for.cond.i.return_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i42) #11
  %32 = ptrtoint ptr %buf.i.i42 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 32, ptr %buf.i.i42, align 1
  %33 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %17, align 1
  %34 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -8, ptr %18, align 1
  %35 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %19, align 1
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dev, align 8
  %shl.i.i.2.i = shl i32 %37, 8
  %or.i.2.i = or i32 %shl.i.i.2.i, -2147483648
  %call9.i.2.i = call i32 @snd_usb_ctl_msg(ptr noundef %dev, i32 noundef %or.i.2.i, i8 noundef zeroext 9, i8 noundef zeroext 34, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf.i.i42, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i42) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.2.i)
  %cmp1.2.i = icmp slt i32 %call9.i.2.i, 0
  br i1 %cmp1.2.i, label %for.cond.1.i.return_crit_edge, label %for.cond.2.i

for.cond.1.i.return_crit_edge:                    ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i42) #11
  %38 = ptrtoint ptr %buf.i.i42 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 32, ptr %buf.i.i42, align 1
  %39 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 63, ptr %17, align 1
  %40 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 20, ptr %18, align 1
  %41 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 3, ptr %19, align 1
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dev, align 8
  %shl.i.i.3.i = shl i32 %43, 8
  %or.i.3.i = or i32 %shl.i.i.3.i, -2147483648
  %call9.i.3.i = call i32 @snd_usb_ctl_msg(ptr noundef %dev, i32 noundef %or.i.3.i, i8 noundef zeroext 9, i8 noundef zeroext 34, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf.i.i42, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i42) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.3.i)
  %cmp1.3.i = icmp slt i32 %call9.i.3.i, 0
  br i1 %cmp1.3.i, label %for.cond.2.i.return_crit_edge, label %for.cond.3.i

for.cond.2.i.return_crit_edge:                    ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.cond.3.i:                                     ; preds = %for.cond.2.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i42) #11
  %44 = ptrtoint ptr %buf.i.i42 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 32, ptr %buf.i.i42, align 1
  %45 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %17, align 1
  %46 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %18, align 1
  %47 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 4, ptr %19, align 1
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dev, align 8
  %shl.i.i.4.i = shl i32 %49, 8
  %or.i.4.i = or i32 %shl.i.i.4.i, -2147483648
  %call9.i.4.i = call i32 @snd_usb_ctl_msg(ptr noundef %dev, i32 noundef %or.i.4.i, i8 noundef zeroext 9, i8 noundef zeroext 34, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf.i.i42, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i42) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.4.i)
  %cmp1.4.i = icmp slt i32 %call9.i.4.i, 0
  br i1 %cmp1.4.i, label %for.cond.3.i.return_crit_edge, label %for.cond.4.i

for.cond.3.i.return_crit_edge:                    ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.cond.4.i:                                     ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i42) #11
  %50 = ptrtoint ptr %buf.i.i42 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 32, ptr %buf.i.i42, align 1
  %51 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %17, align 1
  %52 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 48, ptr %18, align 1
  %53 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 5, ptr %19, align 1
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dev, align 8
  %shl.i.i.5.i = shl i32 %55, 8
  %or.i.5.i = or i32 %shl.i.i.5.i, -2147483648
  %call9.i.5.i = call i32 @snd_usb_ctl_msg(ptr noundef %dev, i32 noundef %or.i.5.i, i8 noundef zeroext 9, i8 noundef zeroext 34, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf.i.i42, i16 noundef zeroext 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i42) #11
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call fastcc i32 @snd_usb_mbox2_boot_quirk(ptr noundef %dev)
  br label %return

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge64
  %call.i = tail call i32 @usb_set_interface(ptr noundef %dev, i32 noundef 0, i32 noundef 1) #11
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i) #11
  %56 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %actual_length.i, align 4, !annotation !166
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dev, align 8
  %shl.i.i46 = shl i32 %58, 8
  %or.i = or i32 %shl.i.i46, 1073905664
  %call1.i = tail call i32 @usb_pipe_type_check(ptr noundef %dev, i32 noundef %or.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb11.snd_usb_accessmusic_boot_quirk.exit_crit_edge

sw.bb11.snd_usb_accessmusic_boot_quirk.exit_crit_edge: ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_usb_accessmusic_boot_quirk.exit

if.end.i:                                         ; preds = %sw.bb11
  %call2.i47 = tail call ptr @kmemdup(ptr noundef nonnull @snd_usb_accessmusic_boot_quirk.seq, i32 noundef 4, i32 noundef 3264) #11
  %tobool3.not.i = icmp eq ptr %call2.i47, null
  br i1 %tobool3.not.i, label %if.end.i.snd_usb_accessmusic_boot_quirk.exit_crit_edge, label %if.end5.i

if.end.i.snd_usb_accessmusic_boot_quirk.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_usb_accessmusic_boot_quirk.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dev, align 8
  %shl.i19.i = shl i32 %60, 8
  %or7.i = or i32 %shl.i19.i, 1073905664
  %call8.i = call i32 @usb_interrupt_msg(ptr noundef %dev, i32 noundef %or7.i, ptr noundef nonnull %call2.i47, i32 noundef 4, ptr noundef nonnull %actual_length.i, i32 noundef 1000) #11
  call void @kfree(ptr noundef nonnull %call2.i47) #11
  %61 = call i32 @llvm.smin.i32(i32 %call8.i, i32 0) #11
  br label %snd_usb_accessmusic_boot_quirk.exit

snd_usb_accessmusic_boot_quirk.exit:              ; preds = %if.end5.i, %if.end.i.snd_usb_accessmusic_boot_quirk.exit_crit_edge, %sw.bb11.snd_usb_accessmusic_boot_quirk.exit_crit_edge
  %retval.0.i48 = phi i32 [ -22, %sw.bb11.snd_usb_accessmusic_boot_quirk.exit_crit_edge ], [ -12, %if.end.i.snd_usb_accessmusic_boot_quirk.exit_crit_edge ], [ %61, %if.end5.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i) #11
  br label %return

sw.bb13:                                          ; preds = %entry.sw.bb13_crit_edge, %entry.sw.bb13_crit_edge65, %entry.sw.bb13_crit_edge66
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dev, align 8
  %shl.i.i49 = shl i32 %63, 8
  %or.i50 = or i32 %shl.i.i49, -2147483648
  %call1.i51 = tail call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or.i50, i8 noundef zeroext -81, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i51)
  %cmp.i52 = icmp slt i32 %call1.i51, 0
  br i1 %cmp.i52, label %sw.bb13.return_crit_edge, label %if.end.i54

sw.bb13.return_crit_edge:                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i54:                                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i53 = tail call i32 @usb_reset_device(ptr noundef %dev) #11
  br label %return

sw.bb15:                                          ; preds = %entry
  %actconfig.i = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 20
  %64 = ptrtoint ptr %actconfig.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %actconfig.i, align 4
  %bConfigurationValue.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %bConfigurationValue.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bConfigurationValue.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %67)
  %cmp.i56 = icmp eq i8 %67, 1
  %dev2.i = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  br i1 %cmp.i56, label %do.end.i, label %do.end17.i

do.end.i:                                         ; preds = %sw.bb15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.34) #14
  %call.i57 = tail call i32 @usb_driver_set_configuration(ptr noundef %dev, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %cmp3.i = icmp slt i32 %call.i57, 0
  br i1 %cmp3.i, label %do.body6.i, label %do.end.i.return_crit_edge

do.end.i.return_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.body6.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_fasttrackpro_boot_quirk.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_apply_boot_quirk, %if.then10.i)) #11
          to label %return [label %if.then10.i], !srcloc !165

if.then10.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_fasttrackpro_boot_quirk.__UNIQUE_ID_ddebug248, ptr noundef %dev2.i, ptr noundef nonnull @.str.36, i32 noundef %call.i57) #11
  br label %return

do.end17.i:                                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.38) #14
  br label %return

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i59) #11
  %68 = ptrtoint ptr %buf.i59 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 29923, ptr %buf.i59, align 2
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dev, align 8
  %shl.i.i60 = shl i32 %70, 8
  %or.i61 = or i32 %shl.i.i60, -2147483648
  %call1.i62 = call i32 @snd_usb_ctl_msg(ptr noundef %dev, i32 noundef %or.i61, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 512, i16 noundef zeroext 2304, ptr noundef nonnull %buf.i59, i16 noundef zeroext 2) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i59) #11
  br label %return

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = tail call fastcc i32 @snd_usb_axefx3_boot_quirk(ptr noundef %dev)
  br label %return

sw.bb21:                                          ; preds = %entry
  %71 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %intf, align 8
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %bInterfaceClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %74)
  %cmp = icmp eq i8 %74, -1
  br i1 %cmp, label %land.lhs.true, label %sw.bb21.return_crit_edge

sw.bb21.return_crit_edge:                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.lhs.true:                                    ; preds = %sw.bb21
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %72, i32 0, i32 2
  %75 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %76)
  %cmp26 = icmp ult i8 %76, 3
  br i1 %cmp26, label %if.then, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = tail call fastcc i32 @snd_usb_motu_microbookii_boot_quirk(ptr noundef %dev)
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true.return_crit_edge, %sw.bb21.return_crit_edge, %sw.bb19, %sw.bb17, %do.end17.i, %if.then10.i, %do.body6.i, %do.end.i.return_crit_edge, %if.end.i54, %sw.bb13.return_crit_edge, %snd_usb_accessmusic_boot_quirk.exit, %sw.bb9, %sw.bb7, %for.cond.4.i, %for.cond.3.i.return_crit_edge, %for.cond.2.i.return_crit_edge, %for.cond.1.i.return_crit_edge, %for.cond.i.return_crit_edge, %sw.bb5.return_crit_edge, %sw.bb3, %snd_usb_audigy2nx_boot_quirk.exit, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call28, %if.then ], [ %call20, %sw.bb19 ], [ %call1.i62, %sw.bb17 ], [ %retval.0.i48, %snd_usb_accessmusic_boot_quirk.exit ], [ 0, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %call9.i.i, %sw.bb3 ], [ %retval.0.i, %snd_usb_audigy2nx_boot_quirk.exit ], [ %call, %sw.bb ], [ 0, %sw.bb21.return_crit_edge ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ %call9.i.i45, %sw.bb5.return_crit_edge ], [ %call9.i.1.i, %for.cond.i.return_crit_edge ], [ %call9.i.2.i, %for.cond.1.i.return_crit_edge ], [ %call9.i.3.i, %for.cond.2.i.return_crit_edge ], [ %call9.i.4.i, %for.cond.3.i.return_crit_edge ], [ %call9.i.5.i, %for.cond.4.i ], [ -11, %if.end.i54 ], [ %call1.i51, %sw.bb13.return_crit_edge ], [ 0, %do.end17.i ], [ -19, %if.then10.i ], [ -19, %do.end.i.return_crit_edge ], [ -19, %do.body6.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_usb_extigy_boot_quirk(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %actconfig = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %actconfig, align 4
  %wTotalLength = getelementptr inbounds %struct.usb_config_descriptor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %wTotalLength to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %wTotalLength, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.69)
  switch i16 %3, label %entry.cleanup_crit_edge [
    i16 6659, label %entry.do.body_crit_edge
    i16 -7423, label %entry.do.body_crit_edge18
  ]

entry.do.body_crit_edge18:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_extigy_boot_quirk.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_extigy_boot_quirk, %if.then9)) #11
          to label %do.end [label %if.then9], !srcloc !165

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev10 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_extigy_boot_quirk.__UNIQUE_ID_ddebug243, ptr noundef %dev10, ptr noundef nonnull @.str.16) #11
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev, align 8
  %shl.i = shl i32 %6, 8
  %or = or i32 %shl.i, -2147483648
  %call12 = tail call i32 @snd_usb_ctl_msg(ptr noundef %dev, i32 noundef %or, i8 noundef zeroext 16, i8 noundef zeroext 67, i16 noundef zeroext 1, i16 noundef zeroext 10, ptr noundef null, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.body16, label %do.end.if.end33_crit_edge

do.end.if.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

do.body16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_extigy_boot_quirk.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_extigy_boot_quirk, %if.then28)) #11
          to label %if.end33 [label %if.then28], !srcloc !165

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  %dev29 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_extigy_boot_quirk.__UNIQUE_ID_ddebug244, ptr noundef %dev29, ptr noundef nonnull @.str.17, i32 noundef %call12) #11
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %do.body16, %do.end.if.end33_crit_edge
  %descriptor = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 16
  %call34 = tail call i32 @usb_get_descriptor(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %descriptor, i32 noundef 18) #11
  %7 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %actconfig, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp36 = icmp slt i32 %call34, 0
  br i1 %cmp36, label %do.body39, label %if.end33.if.end56_crit_edge

if.end33.if.end56_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

do.body39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_extigy_boot_quirk.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_extigy_boot_quirk, %if.then51)) #11
          to label %if.end56 [label %if.then51], !srcloc !165

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  %dev52 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_extigy_boot_quirk.__UNIQUE_ID_ddebug245, ptr noundef %dev52, ptr noundef nonnull @.str.18, i32 noundef %call34) #11
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %do.body39, %if.end33.if.end56_crit_edge
  %call57 = tail call i32 @usb_reset_configuration(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %do.body61, label %if.end56.do.body79_crit_edge

if.end56.do.body79_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body79

do.body61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_extigy_boot_quirk.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_extigy_boot_quirk, %if.then73)) #11
          to label %do.body79 [label %if.then73], !srcloc !165

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #13
  %dev74 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_extigy_boot_quirk.__UNIQUE_ID_ddebug246, ptr noundef %dev74, ptr noundef nonnull @.str.19, i32 noundef %call57) #11
  br label %do.body79

do.body79:                                        ; preds = %if.then73, %do.body61, %if.end56.do.body79_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_extigy_boot_quirk.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_extigy_boot_quirk, %if.then91)) #11
          to label %cleanup [label %if.then91], !srcloc !165

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #13
  %dev92 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  %wTotalLength94 = getelementptr inbounds %struct.usb_config_descriptor, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %wTotalLength94 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %wTotalLength94, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv95 = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_extigy_boot_quirk.__UNIQUE_ID_ddebug247, ptr noundef %dev92, ptr noundef nonnull @.str.20, i32 noundef %conv95) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %do.body79, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then91 ], [ 0, %entry.cleanup_crit_edge ], [ -19, %do.body79 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_usb_mbox2_boot_quirk(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %srate.i = alloca [3 x i8], align 1
  %temp.i = alloca [12 x i8], align 1
  %bootresponse = alloca [18 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %actconfig = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %actconfig, align 4
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %bootresponse) #11
  %wTotalLength = getelementptr inbounds %struct.usb_config_descriptor, ptr %1, i32 0, i32 2
  %2 = call ptr @memset(ptr %bootresponse, i32 255, i32 18)
  %3 = ptrtoint ptr %wTotalLength to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %wTotalLength, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31230, i16 %4)
  %cmp.not = icmp eq i16 %4, -31230
  br i1 %cmp.not, label %do.body3, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv = zext i16 %5 to i32
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.21, i32 noundef %conv) #14
  br label %cleanup

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_mbox2_boot_quirk, %if.then6)) #11
          to label %while.body.lr.ph [label %if.then6], !srcloc !165

if.then6:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  %dev7 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug249, ptr noundef %dev7, ptr noundef nonnull @.str.23) #11
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then6, %do.body3
  %6 = ptrtoint ptr %bootresponse to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %bootresponse, align 1
  %dev39 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  br label %while.body

while.body:                                       ; preds = %do.end42.while.body_crit_edge, %while.body.lr.ph
  %count.0191 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %do.end42.while.body_crit_edge ]
  call void @msleep(i32 noundef 500) #11
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev, align 8
  %shl.i = shl i32 %8, 8
  %or18 = or i32 %shl.i, -2147483520
  %call19 = call i32 @snd_usb_ctl_msg(ptr noundef %dev, i32 noundef %or18, i8 noundef zeroext -123, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef nonnull %bootresponse, i16 noundef zeroext 18) #11
  %9 = ptrtoint ptr %bootresponse to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bootresponse, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp22 = icmp eq i8 %10, 2
  br i1 %cmp22, label %while.body.do.body55_crit_edge, label %do.body26

while.body.do.body55_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body55

do.body26:                                        ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_mbox2_boot_quirk, %if.then38)) #11
          to label %do.end42 [label %if.then38], !srcloc !165

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug250, ptr noundef %dev39, ptr noundef nonnull @.str.24) #11
  br label %do.end42

do.end42:                                         ; preds = %if.then38, %do.body26
  %inc = add nuw nsw i32 %count.0191, 1
  %11 = ptrtoint ptr %bootresponse to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bootresponse, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp13 = icmp eq i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %count.0191)
  %cmp15 = icmp ult i32 %count.0191, 9
  %or.cond = select i1 %cmp13, i1 %cmp15, i1 false
  br i1 %or.cond, label %do.end42.while.body_crit_edge, label %while.end

do.end42.while.body_crit_edge:                    ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp45.not = icmp eq i8 %12, 2
  br i1 %cmp45.not, label %while.end.do.body55_crit_edge, label %do.end50

while.end.do.body55_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body55

do.end50:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv44 = zext i8 %12 to i32
  %dev51 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.26, i32 noundef %conv44) #14
  br label %cleanup

do.body55:                                        ; preds = %while.end.do.body55_crit_edge, %while.body.do.body55_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_mbox2_boot_quirk, %if.then67)) #11
          to label %do.end71 [label %if.then67], !srcloc !165

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  %dev68 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug251, ptr noundef %dev68, ptr noundef nonnull @.str.28) #11
  br label %do.end71

do.end71:                                         ; preds = %if.then67, %do.body55
  %descriptor = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 16
  %call72 = call i32 @usb_get_descriptor(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %descriptor, i32 noundef 18) #11
  %13 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %actconfig, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp74 = icmp slt i32 %call72, 0
  br i1 %cmp74, label %do.body77, label %do.end71.if.end94_crit_edge

do.end71.if.end94_crit_edge:                      ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

do.body77:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_mbox2_boot_quirk, %if.then89)) #11
          to label %if.end94 [label %if.then89], !srcloc !165

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #13
  %dev90 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug252, ptr noundef %dev90, ptr noundef nonnull @.str.18, i32 noundef %call72) #11
  br label %if.end94

if.end94:                                         ; preds = %if.then89, %do.body77, %do.end71.if.end94_crit_edge
  %call95 = call i32 @usb_reset_configuration(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %do.body99, label %if.end94.do.body117_crit_edge

if.end94.do.body117_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body117

do.body99:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_mbox2_boot_quirk, %if.then111)) #11
          to label %do.body117 [label %if.then111], !srcloc !165

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #13
  %dev112 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug253, ptr noundef %dev112, ptr noundef nonnull @.str.19, i32 noundef %call95) #11
  br label %do.body117

do.body117:                                       ; preds = %if.then111, %do.body99, %if.end94.do.body117_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_mbox2_boot_quirk, %if.then129)) #11
          to label %do.end136 [label %if.then129], !srcloc !165

if.then129:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #13
  %dev130 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  %wTotalLength132 = getelementptr inbounds %struct.usb_config_descriptor, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %wTotalLength132 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %wTotalLength132, align 2
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %conv133 = zext i16 %17 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug254, ptr noundef %dev130, ptr noundef nonnull @.str.29, i32 noundef %conv133) #11
  br label %do.end136

do.end136:                                        ; preds = %if.then129, %do.body117
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %srate.i) #11
  %18 = getelementptr inbounds [3 x i8], ptr %srate.i, i32 0, i32 1
  %19 = getelementptr inbounds [3 x i8], ptr %srate.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp.i) #11
  %20 = call ptr @memset(ptr %temp.i, i32 255, i32 12)
  %21 = ptrtoint ptr %srate.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -128, ptr %srate.i, align 1
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -69, ptr %18, align 1
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %19, align 1
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dev, align 8
  %shl.i.i = shl i32 %25, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %call4.i = call i32 @snd_usb_ctl_msg(ptr noundef %dev, i32 noundef %or3.i, i8 noundef zeroext 1, i8 noundef zeroext 34, i16 noundef zeroext 256, i16 noundef zeroext 133, ptr noundef nonnull %temp.i, i16 noundef zeroext 3) #11
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dev, align 8
  %shl.i21.i = shl i32 %27, 8
  %or6.i = or i32 %shl.i21.i, -2147483648
  %call7.i = call i32 @snd_usb_ctl_msg(ptr noundef %dev, i32 noundef %or6.i, i8 noundef zeroext -127, i8 noundef zeroext -94, i16 noundef zeroext 256, i16 noundef zeroext 133, ptr noundef nonnull %srate.i, i16 noundef zeroext 3) #11
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dev, align 8
  %shl.i22.i = shl i32 %29, 8
  %or9.i = or i32 %shl.i22.i, -2147483648
  %call10.i = call i32 @snd_usb_ctl_msg(ptr noundef %dev, i32 noundef %or9.i, i8 noundef zeroext -127, i8 noundef zeroext -94, i16 noundef zeroext 256, i16 noundef zeroext 134, ptr noundef nonnull %srate.i, i16 noundef zeroext 3) #11
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dev, align 8
  %shl.i23.i = shl i32 %31, 8
  %or12.i = or i32 %shl.i23.i, -2147483648
  %call13.i = call i32 @snd_usb_ctl_msg(ptr noundef %dev, i32 noundef %or12.i, i8 noundef zeroext -127, i8 noundef zeroext -94, i16 noundef zeroext 256, i16 noundef zeroext 3, ptr noundef nonnull %srate.i, i16 noundef zeroext 3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp.i) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %srate.i) #11
  %dev140 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev140, ptr noundef nonnull @.str.31) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end136, %do.end50, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end50 ], [ 0, %do.end136 ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %bootresponse) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_usb_axefx3_boot_quirk(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_axefx3_boot_quirk.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_axefx3_boot_quirk, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !165

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_axefx3_boot_quirk.__UNIQUE_ID_ddebug255, ptr noundef %dev3, ptr noundef nonnull @.str.41) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev, align 8
  %shl.i = shl i32 %1, 8
  %or = or i32 %shl.i, -2147483648
  %call5 = tail call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or, i8 noundef zeroext 11, i8 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 120000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end9, label %do.body12

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev10 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.42, i32 noundef %call5) #14
  br label %cleanup

do.body12:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_axefx3_boot_quirk.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_axefx3_boot_quirk, %if.then24)) #11
          to label %do.end28 [label %if.then24], !srcloc !165

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %dev25 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_axefx3_boot_quirk.__UNIQUE_ID_ddebug256, ptr noundef %dev25, ptr noundef nonnull @.str.43) #11
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %do.body12
  %call29 = tail call i32 @usb_set_interface(ptr noundef %dev, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %do.body32, label %do.end28.cleanup_crit_edge

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body32:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_axefx3_boot_quirk.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_axefx3_boot_quirk, %if.then44)) #11
          to label %cleanup [label %if.then44], !srcloc !165

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  %dev45 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_axefx3_boot_quirk.__UNIQUE_ID_ddebug257, ptr noundef %dev45, ptr noundef nonnull @.str.44, i32 noundef %call29) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %do.body32, %do.end28.cleanup_crit_edge, %do.end9
  %retval.0 = phi i32 [ %call5, %do.end9 ], [ 0, %if.then44 ], [ 0, %do.end28.cleanup_crit_edge ], [ 0, %do.body32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_usb_motu_microbookii_boot_quirk(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %actual_length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 128) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.45) #14
  %1 = call ptr @memcpy(ptr %call7.i.i, ptr @snd_usb_motu_microbookii_boot_quirk.set_samplerate_seq, i32 12)
  %2 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12, ptr %actual_length, align 4
  %call2 = call fastcc i32 @snd_usb_motu_microbookii_communicate(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %actual_length)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end6, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 11
  %3 = getelementptr inbounds i8, ptr %call7.i.i, i32 8
  br label %if.end15

do.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.48, i32 noundef %call2) #14
  br label %free_buf

do.end13:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.51) #14
  br label %free_buf

if.end15:                                         ; preds = %if.end28.if.end15_crit_edge, %while.cond.preheader
  %inc54 = phi i32 [ 1, %while.cond.preheader ], [ %inc, %if.end28.if.end15_crit_edge ]
  %4 = call ptr @memset(ptr %3, i32 0, i32 120)
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 1125899906845464, ptr %call7.i.i, align 8
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %actual_length, align 4
  %call16 = call fastcc i32 @snd_usb_motu_microbookii_communicate(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %actual_length)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.54, i32 noundef %call16) #14
  br label %free_buf

if.end23:                                         ; preds = %if.end15
  %7 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %8)
  %cmp24 = icmp eq i32 %8, 12
  br i1 %cmp24, label %land.lhs.true, label %if.end23.if.end28_crit_edge

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end23
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp25 = icmp eq i8 %10, 1
  br i1 %cmp25, label %do.end31, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true.if.end28_crit_edge, %if.end23.if.end28_crit_edge
  tail call void @msleep(i32 noundef 100) #11
  %inc = add nuw nsw i32 %inc54, 1
  %exitcond = icmp eq i32 %inc, 101
  br i1 %exitcond, label %do.end13, label %if.end28.if.end15_crit_edge

if.end28.if.end15_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

do.end31:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.57) #14
  br label %free_buf

free_buf:                                         ; preds = %do.end31, %do.end21, %do.end13, %do.end6
  %err.0 = phi i32 [ %call2, %do.end6 ], [ -19, %do.end13 ], [ %call16, %do.end21 ], [ 0, %do.end31 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %free_buf, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %free_buf ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_apply_boot_quirk_once(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %intf, ptr nocapture noundef readnone %quirk, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 134021128, i32 %id)
  %cond = icmp eq i32 %id, 134021128
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @msleep(i32 noundef 2000) #11
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_usb_is_big_endian_format(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %fp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 123936769, label %sw.bb
    i32 123936771, label %sw.bb16
    i32 123936786, label %sw.bb36
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %altsetting = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  %3 = ptrtoint ptr %altsetting to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %altsetting, align 1
  %switch.tableidx = add i8 %4, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %5 = icmp ult i8 %switch.tableidx, 5
  br i1 %5, label %switch.lookup, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %setup = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 24
  %6 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %setup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp17 = icmp eq i32 %7, 0
  br i1 %cmp17, label %sw.bb16.return_crit_edge, label %lor.lhs.false19

sw.bb16.return_crit_edge:                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false19:                                  ; preds = %sw.bb16
  %altsetting20 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  %8 = ptrtoint ptr %altsetting20 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %altsetting20, align 1
  %.off = add i8 %9, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %lor.lhs.false19.return_crit_edge, label %lor.lhs.false19.sw.epilog_crit_edge

lor.lhs.false19.sw.epilog_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

lor.lhs.false19.return_crit_edge:                 ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb36:                                          ; preds = %entry
  %altsetting37 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  %10 = ptrtoint ptr %altsetting37 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %altsetting37, align 1
  %switch.tableidx70 = add i8 %11, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx70)
  %12 = icmp ult i8 %switch.tableidx70, 5
  br i1 %12, label %switch.lookup69, label %sw.bb36.sw.epilog_crit_edge

sw.bb36.sw.epilog_crit_edge:                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb36.sw.epilog_crit_edge, %lor.lhs.false19.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %return

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %13 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.snd_usb_is_big_endian_format, i32 0, i32 %13
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

switch.lookup69:                                  ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #13
  %15 = sext i8 %switch.tableidx70 to i32
  %switch.gep71 = getelementptr inbounds [5 x i32], ptr @switch.table.snd_usb_is_big_endian_format.62, i32 0, i32 %15
  %16 = ptrtoint ptr %switch.gep71 to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load72 = load i32, ptr %switch.gep71, align 4
  br label %return

return:                                           ; preds = %switch.lookup69, %switch.lookup, %sw.epilog, %lor.lhs.false19.return_crit_edge, %sw.bb16.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 1, %lor.lhs.false19.return_crit_edge ], [ 1, %sw.bb16.return_crit_edge ], [ %switch.load, %switch.lookup ], [ %switch.load72, %switch.lookup69 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_set_format_quirk(ptr nocapture noundef %subs, ptr nocapture noundef readonly %fmt) local_unnamed_addr #0 align 64 {
entry:
  %sr.i9 = alloca [3 x i8], align 1
  %sr.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %subs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subs, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_id, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 69091074, label %entry.sw.bb_crit_edge
    i32 69091076, label %entry.sw.bb_crit_edge23
    i32 69091082, label %entry.sw.bb_crit_edge24
    i32 69091097, label %entry.sw.bb_crit_edge25
    i32 1397563657, label %sw.bb1
    i32 728956947, label %sw.bb2
    i32 149160319, label %entry.sw.bb3_crit_edge
    i32 149160291, label %entry.sw.bb3_crit_edge26
  ]

entry.sw.bb3_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

entry.sw.bb_crit_edge25:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge24:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge23:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge23, %entry.sw.bb_crit_edge24, %entry.sw.bb_crit_edge25
  %direction.i = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 3
  %7 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb.if.end2.i_crit_edge

sw.bb.if.end2.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2.i

if.then.i:                                        ; preds = %sw.bb
  %cur_audiofmt.i = getelementptr %struct.snd_usb_stream, ptr %1, i32 0, i32 4, i32 1, i32 5
  %9 = ptrtoint ptr %cur_audiofmt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur_audiofmt.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then.i.if.end2.i_crit_edge, label %if.then.i.sw.epilog_crit_edge

if.then.i.sw.epilog_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.i.if.end2.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then.i.if.end2.i_crit_edge, %sw.bb.if.end2.i_crit_edge
  %rate_min.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 22
  %11 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rate_min.i, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %12, label %sw.default.i [
    i32 48000, label %if.end2.i.sw.epilog.i_crit_edge
    i32 88200, label %sw.bb3.i
    i32 96000, label %sw.bb4.i
    i32 176400, label %sw.bb5.i
    i32 192000, label %sw.bb6.i
  ]

if.end2.i.sw.epilog.i_crit_edge:                  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %if.end2.i.sw.epilog.i_crit_edge
  %cmp8.i = phi i32 [ 0, %sw.default.i ], [ 4, %sw.bb6.i ], [ 4, %sw.bb5.i ], [ 0, %sw.bb4.i ], [ 0, %sw.bb3.i ], [ 0, %if.end2.i.sw.epilog.i_crit_edge ]
  %emu_samplerate_id.0.i = phi i8 [ 0, %sw.default.i ], [ 5, %sw.bb6.i ], [ 4, %sw.bb5.i ], [ 3, %sw.bb4.i ], [ 2, %sw.bb3.i ], [ 1, %if.end2.i.sw.epilog.i_crit_edge ]
  tail call void @snd_emuusb_set_samplerate(ptr noundef %3, i8 noundef zeroext %emu_samplerate_id.0.i) #11
  %pkt_offset_adj.i = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 10
  %14 = ptrtoint ptr %pkt_offset_adj.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cmp8.i, ptr %pkt_offset_adj.i, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %stream_offset_adj = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 11
  %15 = ptrtoint ptr %stream_offset_adj to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %stream_offset_adj, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %data_endpoint.i = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 20
  %16 = ptrtoint ptr %data_endpoint.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data_endpoint.i, align 8
  %cur_rate1.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %17, i32 0, i32 52
  %18 = ptrtoint ptr %cur_rate1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cur_rate1.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %sr.i) #11
  %20 = getelementptr inbounds [3 x i8], ptr %sr.i, i32 0, i32 1
  %21 = getelementptr inbounds [3 x i8], ptr %sr.i, i32 0, i32 2
  %conv.i = trunc i32 %19 to i8
  %22 = ptrtoint ptr %sr.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i, ptr %sr.i, align 1
  %shr.i = lshr i32 %19, 8
  %conv3.i = trunc i32 %shr.i to i8
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv3.i, ptr %20, align 1
  %shr5.i = lshr i32 %19, 16
  %conv7.i = trunc i32 %shr5.i to i8
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv7.i, ptr %21, align 1
  %dev.i = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 1
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 @usb_set_interface(ptr noundef %26, i32 noundef 0, i32 noundef 1) #11
  %27 = ptrtoint ptr %subs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %subs, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %dev9.i = getelementptr inbounds %struct.snd_usb_audio, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev9.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %shl.i.i = shl i32 %34, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call14.i = call i32 @snd_usb_ctl_msg(ptr noundef %32, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 34, i16 noundef zeroext 256, i16 noundef zeroext 130, ptr noundef nonnull %sr.i, i16 noundef zeroext 3) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %sr.i) #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge26
  %data_endpoint.i10 = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 20
  %35 = ptrtoint ptr %data_endpoint.i10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data_endpoint.i10, align 8
  %cur_rate1.i11 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %36, i32 0, i32 52
  %37 = ptrtoint ptr %cur_rate1.i11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cur_rate1.i11, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %sr.i9) #11
  %39 = getelementptr inbounds [3 x i8], ptr %sr.i9, i32 0, i32 1
  %40 = getelementptr inbounds [3 x i8], ptr %sr.i9, i32 0, i32 2
  %conv.i12 = trunc i32 %38 to i8
  %41 = ptrtoint ptr %sr.i9 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.i12, ptr %sr.i9, align 1
  %shr.i13 = lshr i32 %38, 8
  %conv3.i14 = trunc i32 %shr.i13 to i8
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv3.i14, ptr %39, align 1
  %shr5.i15 = lshr i32 %38, 16
  %conv7.i16 = trunc i32 %shr5.i15 to i8
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv7.i16, ptr %40, align 1
  %dev.i17 = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 1
  %44 = ptrtoint ptr %dev.i17 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i17, align 4
  %call.i18 = tail call i32 @usb_set_interface(ptr noundef %45, i32 noundef 0, i32 noundef 1) #11
  %46 = ptrtoint ptr %subs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %subs, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %dev9.i19 = getelementptr inbounds %struct.snd_usb_audio, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %dev9.i19 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev9.i19, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  %shl.i.i20 = shl i32 %53, 8
  %or.i21 = or i32 %shl.i.i20, -2147483648
  %call14.i22 = call i32 @snd_usb_ctl_msg(ptr noundef %51, i32 noundef %or.i21, i8 noundef zeroext 1, i8 noundef zeroext 34, i16 noundef zeroext 256, i16 noundef zeroext 134, ptr noundef nonnull %sr.i9, i16 noundef zeroext 3) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %sr.i9) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.epilog.i, %if.then.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_select_mode_quirk(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %fmt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %quirk_flags = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 12
  %2 = ptrtoint ptr %quirk_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirk_flags, align 4
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %iface = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 6
  %4 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %iface, align 8
  %conv = zext i8 %5 to i32
  %call = tail call i32 @usb_set_interface(ptr noundef %1, i32 noundef %conv, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  tail call void @msleep(i32 noundef 20) #11
  %formats = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 1
  %6 = ptrtoint ptr %formats to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %formats, align 8
  %and4 = and i64 %7, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4)
  %tobool5.not = icmp eq i64 %and4, 0
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 8
  %shl.i34 = shl i32 %9, 8
  %or14 = or i32 %shl.i34, -2147483648
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %call8 = tail call i32 @snd_usb_ctl_msg(ptr noundef %1, i32 noundef %or14, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then6.cleanup_crit_edge, label %if.then6.if.end20_crit_edge

if.then6.if.end20_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call15 = tail call i32 @snd_usb_ctl_msg(ptr noundef %1, i32 noundef %or14, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.else.cleanup_crit_edge, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.else.if.end20_crit_edge, %if.then6.if.end20_crit_edge
  tail call void @msleep(i32 noundef 20) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.else.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call8, %if.then6.cleanup_crit_edge ], [ %call15, %if.else.cleanup_crit_edge ], [ 0, %if.end20 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_ctl_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @snd_usb_endpoint_start_quirk(ptr nocapture noundef %ep) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb_id, align 4
  %shr.mask = and i32 %3, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 599392256, i32 %shr.mask)
  %cmp = icmp eq i32 %shr.mask, 599392256
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 5
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %skip_packets = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 47
  %6 = ptrtoint ptr %skip_packets to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %skip_packets, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usb_id, align 4
  %9 = and i32 %8, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 123936816, i32 %9)
  %switch = icmp eq i32 %9, 123936816
  br i1 %switch, label %land.lhs.true8, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true8:                                   ; preds = %if.end
  %type9 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 5
  %10 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp10 = icmp eq i32 %11, 0
  br i1 %cmp10, label %if.then11, label %land.lhs.true8.if.end13thread-pre-split_crit_edge

land.lhs.true8.if.end13thread-pre-split_crit_edge: ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13thread-pre-split

if.then11:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  %skip_packets12 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 47
  %12 = ptrtoint ptr %skip_packets12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16, ptr %skip_packets12, align 4
  br label %if.end13thread-pre-split

if.end13thread-pre-split:                         ; preds = %if.then11, %land.lhs.true8.if.end13thread-pre-split_crit_edge
  %13 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %usb_id, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end13thread-pre-split, %if.end.if.end13_crit_edge
  %14 = phi i32 [ %.pr, %if.end13thread-pre-split ], [ %8, %if.end.if.end13_crit_edge ]
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %14, label %if.end13.if.end24_crit_edge [
    i32 105152568, label %if.end13.land.lhs.true21_crit_edge
    i32 408047668, label %if.end13.land.lhs.true21_crit_edge36
  ]

if.end13.land.lhs.true21_crit_edge36:             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true21

if.end13.land.lhs.true21_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true21

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

land.lhs.true21:                                  ; preds = %if.end13.land.lhs.true21_crit_edge, %if.end13.land.lhs.true21_crit_edge36
  %syncmaxsize = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 41
  %16 = ptrtoint ptr %syncmaxsize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %syncmaxsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp22 = icmp eq i32 %17, 4
  br i1 %cmp22, label %if.then23, label %land.lhs.true21.if.end24_crit_edge

land.lhs.true21.if.end24_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  %tenor_fb_quirk = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 42
  %18 = ptrtoint ptr %tenor_fb_quirk to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %tenor_fb_quirk, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %tenor_fb_quirk, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %land.lhs.true21.if.end24_crit_edge, %if.end13.if.end24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_ctl_msg_quirk(ptr nocapture noundef readonly %dev, i32 noundef %pipe, i8 noundef zeroext %request, i8 noundef zeroext %requesttype, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr nocapture noundef readnone %data, i16 noundef zeroext %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp ne ptr %1, null
  %2 = and i8 %requesttype, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %2)
  %cmp.not = icmp eq i8 %2, 32
  %or.cond = and i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %quirk_flags = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %quirk_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %quirk_flags, align 4
  %and3 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @msleep(i32 noundef 20) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  %and7 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else10, label %if.then9

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  br label %cleanup

if.else10:                                        ; preds = %if.else
  %and12 = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else10.cleanup_crit_edge, label %if.then14

if.else10.cleanup_crit_edge:                      ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then14:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.else10.cleanup_crit_edge, %if.then9, %if.then5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @snd_usb_interface_dsd_format_quirks(ptr nocapture noundef readonly %chip, ptr nocapture noundef %fp, i32 noundef %sample_bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_id, align 4
  %shr.mask = and i32 %1, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 599392256, i32 %shr.mask)
  %cmp = icmp eq i32 %shr.mask, 599392256
  %conv2 = and i32 %1, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %conv2)
  %cmp3 = icmp ult i32 %conv2, 272
  %or.cond = and i1 %cmp, %cmp3
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %altsetting = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  %2 = ptrtoint ptr %altsetting to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %altsetting, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %3, label %if.then.if.end_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb6
    i8 3, label %sw.bb7
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dsd_dop = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 28
  %5 = ptrtoint ptr %dsd_dop to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %dsd_dop, align 8
  br label %cleanup

sw.bb6:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dsd_bitrev = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 29
  %6 = ptrtoint ptr %dsd_bitrev to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %dsd_bitrev, align 1
  br label %cleanup

sw.bb7:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dsd_bitrev8 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 29
  %7 = ptrtoint ptr %dsd_bitrev8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %dsd_bitrev8, align 1
  br label %cleanup

if.end:                                           ; preds = %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %1, label %if.end.sw.epilog43_crit_edge [
    i32 353435703, label %if.end.sw.bb10_crit_edge
    i32 622985234, label %if.end.sw.bb10_crit_edge79
    i32 661783088, label %if.end.sw.bb10_crit_edge80
    i32 227279638, label %if.end.sw.bb17_crit_edge
    i32 281739523, label %if.end.sw.bb17_crit_edge81
    i32 382731954, label %if.end.sw.bb17_crit_edge82
    i32 382732765, label %if.end.sw.bb17_crit_edge83
    i32 382732083, label %if.end.sw.bb17_crit_edge84
    i32 382732763, label %if.end.sw.bb17_crit_edge85
    i32 498401283, label %if.end.sw.bb17_crit_edge86
    i32 585222657, label %if.end.sw.bb17_crit_edge87
    i32 614241062, label %if.end.sw.bb17_crit_edge88
    i32 638976262, label %if.end.sw.bb17_crit_edge89
    i32 639762497, label %if.end.sw.bb17_crit_edge90
    i32 670511106, label %if.end.sw.bb17_crit_edge91
    i32 698482822, label %if.end.sw.bb17_crit_edge92
    i32 1799487554, label %if.end.sw.bb17_crit_edge93
    i32 382732058, label %if.end.sw.bb24_crit_edge
    i32 716570628, label %if.end.sw.bb24_crit_edge94
    i32 716570629, label %if.end.sw.bb24_crit_edge95
    i32 716570630, label %if.end.sw.bb24_crit_edge96
    i32 382732835, label %sw.bb35
  ]

if.end.sw.bb24_crit_edge96:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb24

if.end.sw.bb24_crit_edge95:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb24

if.end.sw.bb24_crit_edge94:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb24

if.end.sw.bb24_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb24

if.end.sw.bb17_crit_edge93:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17

if.end.sw.bb17_crit_edge92:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17

if.end.sw.bb17_crit_edge91:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17

if.end.sw.bb17_crit_edge90:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17

if.end.sw.bb17_crit_edge89:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17

if.end.sw.bb17_crit_edge88:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17

if.end.sw.bb17_crit_edge87:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17

if.end.sw.bb17_crit_edge86:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17

if.end.sw.bb17_crit_edge85:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17

if.end.sw.bb17_crit_edge84:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17

if.end.sw.bb17_crit_edge83:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17

if.end.sw.bb17_crit_edge82:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17

if.end.sw.bb17_crit_edge81:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17

if.end.sw.bb17_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17

if.end.sw.bb10_crit_edge80:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10

if.end.sw.bb10_crit_edge79:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10

if.end.sw.bb10_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10

if.end.sw.epilog43_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog43

sw.bb10:                                          ; preds = %if.end.sw.bb10_crit_edge, %if.end.sw.bb10_crit_edge79, %if.end.sw.bb10_crit_edge80
  %altsetting11 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  %9 = ptrtoint ptr %altsetting11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %altsetting11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp13 = icmp eq i8 %10, 2
  br i1 %cmp13, label %sw.bb10.cleanup_crit_edge, label %sw.bb10.sw.epilog43_crit_edge

sw.bb10.sw.epilog43_crit_edge:                    ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog43

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb17:                                          ; preds = %if.end.sw.bb17_crit_edge, %if.end.sw.bb17_crit_edge81, %if.end.sw.bb17_crit_edge82, %if.end.sw.bb17_crit_edge83, %if.end.sw.bb17_crit_edge84, %if.end.sw.bb17_crit_edge85, %if.end.sw.bb17_crit_edge86, %if.end.sw.bb17_crit_edge87, %if.end.sw.bb17_crit_edge88, %if.end.sw.bb17_crit_edge89, %if.end.sw.bb17_crit_edge90, %if.end.sw.bb17_crit_edge91, %if.end.sw.bb17_crit_edge92, %if.end.sw.bb17_crit_edge93
  %altsetting18 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  %11 = ptrtoint ptr %altsetting18 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %altsetting18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp20 = icmp eq i8 %12, 3
  br i1 %cmp20, label %sw.bb17.cleanup_crit_edge, label %sw.bb17.sw.epilog43_crit_edge

sw.bb17.sw.epilog43_crit_edge:                    ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog43

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb24:                                          ; preds = %if.end.sw.bb24_crit_edge, %if.end.sw.bb24_crit_edge94, %if.end.sw.bb24_crit_edge95, %if.end.sw.bb24_crit_edge96
  %altsetting25 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  %13 = ptrtoint ptr %altsetting25 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %altsetting25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp27 = icmp eq i8 %14, 2
  br i1 %cmp27, label %if.then29, label %sw.bb24.sw.epilog43_crit_edge

sw.bb24.sw.epilog43_crit_edge:                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog43

if.then29:                                        ; preds = %sw.bb24
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %bcdDevice = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 16, i32 9
  %17 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %bcdDevice, align 4
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %19, label %if.then29.sw.epilog43_crit_edge [
    i16 409, label %if.then29.cleanup_crit_edge
    i16 411, label %if.then29.sw.bb32_crit_edge
    i16 515, label %if.then29.sw.bb32_crit_edge97
  ]

if.then29.sw.bb32_crit_edge97:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb32

if.then29.sw.bb32_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb32

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then29.sw.epilog43_crit_edge:                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog43

sw.bb32:                                          ; preds = %if.then29.sw.bb32_crit_edge, %if.then29.sw.bb32_crit_edge97
  br label %cleanup

sw.bb35:                                          ; preds = %if.end
  %altsetting36 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  %21 = ptrtoint ptr %altsetting36 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %altsetting36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp38 = icmp eq i8 %22, 2
  br i1 %cmp38, label %sw.bb35.cleanup_crit_edge, label %sw.bb35.sw.epilog43_crit_edge

sw.bb35.sw.epilog43_crit_edge:                    ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog43

sw.bb35.cleanup_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog43:                                      ; preds = %sw.bb35.sw.epilog43_crit_edge, %if.then29.sw.epilog43_crit_edge, %sw.bb24.sw.epilog43_crit_edge, %sw.bb17.sw.epilog43_crit_edge, %sw.bb10.sw.epilog43_crit_edge, %if.end.sw.epilog43_crit_edge
  %quirk_flags = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 12
  %23 = ptrtoint ptr %quirk_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %quirk_flags, align 4
  %and = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.epilog43.if.end54_crit_edge, label %if.then44

sw.epilog43.if.end54_crit_edge:                   ; preds = %sw.epilog43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then44:                                        ; preds = %sw.epilog43
  %dev45 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %25 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev45, align 4
  %iface46 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 6
  %27 = ptrtoint ptr %iface46 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %iface46, align 8
  %conv47 = zext i8 %28 to i32
  %call = tail call ptr @usb_ifnum_to_if(ptr noundef %26, i32 noundef %conv47) #11
  %altsetting48 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  %29 = ptrtoint ptr %altsetting48 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %altsetting48, align 1
  %conv49 = zext i8 %30 to i32
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %call, i32 0, i32 2
  %31 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_altsetting, align 8
  %sub = add i32 %32, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv49)
  %cmp50 = icmp eq i32 %sub, %conv49
  br i1 %cmp50, label %if.then44.cleanup_crit_edge, label %if.then44.if.end54_crit_edge

if.then44.if.end54_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end54:                                         ; preds = %if.then44.if.end54_crit_edge, %sw.epilog43.if.end54_crit_edge
  %33 = ptrtoint ptr %quirk_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %quirk_flags, align 4
  %and56 = and i32 %34, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end54.if.end62_crit_edge, label %land.lhs.true58

if.end54.if.end62_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

land.lhs.true58:                                  ; preds = %if.end54
  %dsd_raw = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 30
  %35 = ptrtoint ptr %dsd_raw to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dsd_raw, align 2, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool59.not = icmp eq i8 %36, 0
  br i1 %tobool59.not, label %land.lhs.true58.if.end62_crit_edge, label %land.lhs.true58.cleanup_crit_edge

land.lhs.true58.cleanup_crit_edge:                ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true58.if.end62_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.end62:                                         ; preds = %land.lhs.true58.if.end62_crit_edge, %if.end54.if.end62_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %land.lhs.true58.cleanup_crit_edge, %if.then44.cleanup_crit_edge, %sw.bb35.cleanup_crit_edge, %sw.bb32, %if.then29.cleanup_crit_edge, %sw.bb17.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %sw.bb7, %sw.bb6, %sw.bb
  %retval.0 = phi i64 [ 0, %if.end62 ], [ 4503599627370496, %sw.bb32 ], [ 562949953421312, %sw.bb7 ], [ 281474976710656, %sw.bb6 ], [ 562949953421312, %sw.bb ], [ 4503599627370496, %sw.bb10.cleanup_crit_edge ], [ 4503599627370496, %sw.bb17.cleanup_crit_edge ], [ 1125899906842624, %if.then29.cleanup_crit_edge ], [ 4503599627370496, %sw.bb35.cleanup_crit_edge ], [ 4503599627370496, %if.then44.cleanup_crit_edge ], [ 4503599627370496, %land.lhs.true58.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @snd_usb_audioformat_attributes_quirk(ptr nocapture noundef readonly %chip, ptr nocapture noundef %fp, i32 noundef %stream) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 177340499, label %sw.bb
    i32 69087264, label %entry.sw.bb2_crit_edge
    i32 123936771, label %entry.sw.bb2_crit_edge35
    i32 123936769, label %entry.sw.bb6_crit_edge
    i32 123936786, label %entry.sw.bb6_crit_edge36
    i32 75435169, label %entry.sw.bb6_crit_edge37
    i32 125634479, label %entry.sw.bb6_crit_edge38
    i32 134021124, label %sw.bb19
    i32 304359973, label %sw.bb24
  ]

entry.sw.bb6_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6

entry.sw.bb6_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6

entry.sw.bb6_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6

entry.sw.bb2_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %attributes = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 10
  %3 = ptrtoint ptr %attributes to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %attributes, align 4
  %5 = and i8 %4, -2
  store i8 %5, ptr %attributes, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge35
  %attributes3 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 10
  %6 = ptrtoint ptr %attributes3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %attributes3, align 4
  %8 = or i8 %7, 1
  store i8 %8, ptr %attributes3, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge36, %entry.sw.bb6_crit_edge37, %entry.sw.bb6_crit_edge38
  %ep_attr = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 12
  %9 = ptrtoint ptr %ep_attr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ep_attr, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream)
  %cmp = icmp eq i32 %stream, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #13
  %11 = and i8 %10, -13
  %12 = or i8 %11, 8
  %13 = ptrtoint ptr %ep_attr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %ep_attr, align 2
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #13
  %14 = or i8 %10, 12
  %15 = ptrtoint ptr %ep_attr to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ep_attr, align 2
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %attributes20 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 10
  %16 = ptrtoint ptr %attributes20 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %attributes20, align 4
  %18 = and i8 %17, 127
  store i8 %18, ptr %attributes20, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %attributes25 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 10
  %19 = ptrtoint ptr %attributes25 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %attributes25, align 4
  %21 = or i8 %20, -128
  store i8 %21, ptr %attributes25, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb19, %if.else, %if.then, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @snd_usb_registration_quirk(ptr nocapture noundef readonly %chip, i32 noundef %iface) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_id1 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %usb_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_id1, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 156309208, label %entry.if.then_crit_edge
    i32 156309229, label %if.then.fold.split
    i32 156309226, label %if.then.fold.split10
    i32 248192838, label %if.then.fold.split11
    i32 248192839, label %if.then.fold.split12
    i32 248192844, label %if.then.fold.split13
    i32 248193081, label %if.then.fold.split14
    i32 248193084, label %if.then.fold.split15
    i32 248193086, label %if.then.fold.split16
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split10:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split16, %if.then.fold.split15, %if.then.fold.split14, %if.then.fold.split13, %if.then.fold.split12, %if.then.fold.split11, %if.then.fold.split10, %if.then.fold.split, %entry.if.then_crit_edge
  %q.08.lcssa = phi ptr [ @registration_quirks, %entry.if.then_crit_edge ], [ getelementptr inbounds ([10 x %struct.registration_quirk], ptr @registration_quirks, i32 0, i32 1), %if.then.fold.split ], [ getelementptr inbounds ([10 x %struct.registration_quirk], ptr @registration_quirks, i32 0, i32 2), %if.then.fold.split10 ], [ getelementptr inbounds ([10 x %struct.registration_quirk], ptr @registration_quirks, i32 0, i32 3), %if.then.fold.split11 ], [ getelementptr inbounds ([10 x %struct.registration_quirk], ptr @registration_quirks, i32 0, i32 4), %if.then.fold.split12 ], [ getelementptr inbounds ([10 x %struct.registration_quirk], ptr @registration_quirks, i32 0, i32 5), %if.then.fold.split13 ], [ getelementptr inbounds ([10 x %struct.registration_quirk], ptr @registration_quirks, i32 0, i32 6), %if.then.fold.split14 ], [ getelementptr inbounds ([10 x %struct.registration_quirk], ptr @registration_quirks, i32 0, i32 7), %if.then.fold.split15 ], [ getelementptr inbounds ([10 x %struct.registration_quirk], ptr @registration_quirks, i32 0, i32 8), %if.then.fold.split16 ]
  %interface = getelementptr inbounds %struct.registration_quirk, ptr %q.08.lcssa, i32 0, i32 1
  %3 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %iface)
  %cmp3 = icmp ne i32 %4, %iface
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp3, %if.then ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_init_quirk_flags(ptr nocapture noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_id, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %2 = phi i32 [ 69087232, %entry ], [ %14, %for.inc.for.body_crit_edge ]
  %p.035 = phi ptr [ @quirk_flags_table, %entry ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %for.body.do.body_crit_edge, label %lor.lhs.false

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.lhs.false:                                    ; preds = %for.body
  %conv = trunc i32 %2 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool3.not = icmp eq i16 %conv, 0
  %cmp7.unshifted = xor i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmp7.unshifted)
  %cmp7 = icmp ult i32 %cmp7.unshifted, 65536
  %or.cond = select i1 %tobool3.not, i1 %cmp7, i1 false
  br i1 %or.cond, label %lor.lhs.false.do.body_crit_edge, label %for.inc

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %for.body.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_init_quirk_flags.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_init_quirk_flags, %if.then12)) #11
          to label %do.end [label %if.then12], !srcloc !165

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %dev13 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  %flags = getelementptr inbounds %struct.usb_audio_quirk_flags_table, ptr %p.035, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %7 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usb_id, align 4
  %shr15 = lshr i32 %8, 16
  %conv18 = and i32 %8, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_init_quirk_flags.__UNIQUE_ID_ddebug260, ptr noundef %dev13, ptr noundef nonnull @.str.7, i32 noundef %6, i32 noundef %shr15, i32 noundef %conv18) #11
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %flags19 = getelementptr inbounds %struct.usb_audio_quirk_flags_table, ptr %p.035, i32 0, i32 1
  %9 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags19, align 4
  %quirk_flags = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 12
  %11 = ptrtoint ptr %quirk_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %quirk_flags, align 4
  %or = or i32 %12, %10
  store i32 %or, ptr %quirk_flags, align 4
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false
  %incdec.ptr = getelementptr %struct.usb_audio_quirk_flags_table, ptr %p.035, i32 1
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_claim_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_autodetect_quirk(ptr noundef %chip, ptr noundef %iface, ptr nocapture noundef readnone %driver) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 2
  %0 = ptrtoint ptr %num_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_altsetting.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp ult i32 %1, 2
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iface, align 8
  %bNumEndpoints.i = getelementptr %struct.usb_host_interface, ptr %3, i32 1, i32 0, i32 4
  %4 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bNumEndpoints.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp1.i = icmp eq i8 %5, 0
  br i1 %cmp1.i, label %if.end.i.if.then_crit_edge, label %if.end4.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end4.i:                                        ; preds = %if.end.i
  %endpoint.i = getelementptr %struct.usb_host_interface, ptr %3, i32 1, i32 3
  %6 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %endpoint.i, align 4
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bmAttributes.i.i, align 1
  %10 = and i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.i.not.i = icmp eq i8 %10, 1
  br i1 %cmp.i.not.i, label %if.end8.i, label %if.end4.i.if.then_crit_edge

if.end4.i.if.then_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end8.i:                                        ; preds = %if.end4.i
  %extra.i = getelementptr %struct.usb_host_interface, ptr %3, i32 1, i32 2
  %11 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %extra.i, align 4
  %extralen.i = getelementptr %struct.usb_host_interface, ptr %3, i32 1, i32 1
  %13 = ptrtoint ptr %extralen.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %extralen.i, align 4
  %call9.i = tail call ptr @snd_usb_find_csint_desc(ptr noundef %12, i32 noundef %14, ptr noundef null, i8 noundef zeroext 1) #11
  %15 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %extra.i, align 4
  %17 = ptrtoint ptr %extralen.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %extralen.i, align 4
  %call12.i = tail call ptr @snd_usb_find_csint_desc(ptr noundef %16, i32 noundef %18, ptr noundef null, i8 noundef zeroext 2) #11
  %tobool13.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool13.not.i, label %if.end8.i.if.then_crit_edge, label %lor.lhs.false.i

if.end8.i.if.then_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %19 = ptrtoint ptr %call9.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %call9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %20)
  %cmp15.i = icmp ult i8 %20, 7
  %tobool18.not.i = icmp eq ptr %call12.i, null
  %or.cond.i = select i1 %cmp15.i, i1 true, i1 %tobool18.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.then_crit_edge, label %lor.lhs.false19.i

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false19.i:                                ; preds = %lor.lhs.false.i
  %21 = ptrtoint ptr %call12.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %call12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %22)
  %cmp22.i = icmp ult i8 %22, 8
  br i1 %cmp22.i, label %lor.lhs.false19.i.if.then_crit_edge, label %if.end25.i

lor.lhs.false19.i.if.then_crit_edge:              ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end25.i:                                       ; preds = %lor.lhs.false19.i
  %23 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iface, align 8
  %bInterfaceNumber.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %bInterfaceNumber.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bInterfaceNumber.i.i, align 1
  %conv.i.i = zext i8 %26 to i32
  %call.i.i = tail call i32 @snd_usb_parse_audio_interface(ptr noundef %chip, i32 noundef %conv.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i40.i = icmp slt i32 %call.i.i, 0
  %dev.i.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %27 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i, align 4
  br i1 %cmp.i40.i, label %create_auto_pcm_quirk.exit, label %create_auto_pcm_quirk.exit.thread16

create_auto_pcm_quirk.exit.thread16:              ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %bInterfaceNumber.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bInterfaceNumber.i.i, align 1
  %conv7.i.i = zext i8 %30 to i32
  %call8.i.i = tail call i32 @usb_set_interface(ptr noundef %28, i32 noundef %conv7.i.i, i32 noundef 0) #11
  br label %if.end

create_auto_pcm_quirk.exit:                       ; preds = %if.end25.i
  %dev2.i.i = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 15
  %31 = ptrtoint ptr %bInterfaceNumber.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bInterfaceNumber.i.i, align 1
  %conv4.i.i = zext i8 %32 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.8, i32 noundef %conv4.i.i, i32 noundef %call.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i)
  %cmp = icmp eq i32 %call.i.i, -19
  br i1 %cmp, label %create_auto_pcm_quirk.exit.if.then_crit_edge, label %create_auto_pcm_quirk.exit.if.end_crit_edge

create_auto_pcm_quirk.exit.if.end_crit_edge:      ; preds = %create_auto_pcm_quirk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

create_auto_pcm_quirk.exit.if.then_crit_edge:     ; preds = %create_auto_pcm_quirk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %create_auto_pcm_quirk.exit.if.then_crit_edge, %lor.lhs.false19.i.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %if.end8.i.if.then_crit_edge, %if.end4.i.if.then_crit_edge, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %33 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iface, align 8
  %bNumEndpoints.i6 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %bNumEndpoints.i6 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bNumEndpoints.i6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp.i7 = icmp eq i8 %36, 0
  br i1 %cmp.i7, label %if.then.if.end_crit_edge, label %if.end.i10

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i10:                                       ; preds = %if.then
  %endpoint.i8 = getelementptr inbounds %struct.usb_host_interface, ptr %34, i32 0, i32 3
  %37 = ptrtoint ptr %endpoint.i8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %endpoint.i8, align 4
  %bmAttributes.i.i9 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %bmAttributes.i.i9 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bmAttributes.i.i9, align 1
  %41 = and i8 %40, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %switch.not.i = icmp eq i8 %41, 0
  br i1 %switch.not.i, label %if.end.i10.if.end_crit_edge, label %if.end7.i

if.end.i10.if.end_crit_edge:                      ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end7.i:                                        ; preds = %if.end.i10
  %usb_id.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 4
  %42 = ptrtoint ptr %usb_id.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %usb_id.i, align 4
  %shr.i = lshr i32 %43, 16
  %trunc.i = trunc i32 %shr.i to i16
  %44 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.79)
  switch i16 %trunc.i, label %if.end7.i.sw.epilog.i_crit_edge [
    i16 1177, label %sw.bb.i
    i16 1410, label %sw.bb13.i
  ]

if.end7.i.sw.epilog.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end7.i
  %extra.i.i = getelementptr inbounds %struct.usb_host_interface, ptr %34, i32 0, i32 2
  %45 = ptrtoint ptr %extra.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %extra.i.i, align 4
  %extralen.i.i = getelementptr inbounds %struct.usb_host_interface, ptr %34, i32 0, i32 1
  %47 = ptrtoint ptr %extralen.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %extralen.i.i, align 4
  %call.i.i11 = tail call ptr @snd_usb_find_csint_desc(ptr noundef %46, i32 noundef %48, ptr noundef null, i8 noundef zeroext 2) #11
  %49 = ptrtoint ptr %extra.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %extra.i.i, align 4
  %51 = ptrtoint ptr %extralen.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %extralen.i.i, align 4
  %call3.i.i = tail call ptr @snd_usb_find_csint_desc(ptr noundef %50, i32 noundef %52, ptr noundef null, i8 noundef zeroext 3) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i11, null
  %tobool4.not.i.i = icmp eq ptr %call3.i.i, null
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %tobool4.not.i.i, i1 false
  br i1 %or.cond.i.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %if.end.i.i12

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end.i.i12:                                     ; preds = %sw.bb.i
  br i1 %tobool.not.i.i, label %if.end.i.i12.lor.lhs.false.i.i_crit_edge, label %land.lhs.true6.i.i

if.end.i.i12.lor.lhs.false.i.i_crit_edge:         ; preds = %if.end.i.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i.i

land.lhs.true6.i.i:                               ; preds = %if.end.i.i12
  %call7.i.i = tail call zeroext i1 @snd_usb_validate_midi_desc(ptr noundef nonnull %call.i.i11) #11
  br i1 %call7.i.i, label %land.lhs.true6.i.i.lor.lhs.false.i.i_crit_edge, label %land.lhs.true6.i.i.sw.epilog.i_crit_edge

land.lhs.true6.i.i.sw.epilog.i_crit_edge:         ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

land.lhs.true6.i.i.lor.lhs.false.i.i_crit_edge:   ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true6.i.i.lor.lhs.false.i.i_crit_edge, %if.end.i.i12.lor.lhs.false.i.i_crit_edge
  br i1 %tobool4.not.i.i, label %lor.lhs.false.i.i.if.end12.i.i_crit_edge, label %land.lhs.true9.i.i

lor.lhs.false.i.i.if.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

land.lhs.true9.i.i:                               ; preds = %lor.lhs.false.i.i
  %call10.i.i = tail call zeroext i1 @snd_usb_validate_midi_desc(ptr noundef nonnull %call3.i.i) #11
  br i1 %call10.i.i, label %land.lhs.true9.i.i.if.end12.i.i_crit_edge, label %land.lhs.true9.i.i.sw.epilog.i_crit_edge

land.lhs.true9.i.i.sw.epilog.i_crit_edge:         ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

land.lhs.true9.i.i.if.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %land.lhs.true9.i.i.if.end12.i.i_crit_edge, %lor.lhs.false.i.i.if.end12.i.i_crit_edge
  br i1 %tobool.not.i.i, label %if.end12.i.i.if.end26.i.i_crit_edge, label %land.lhs.true14.i.i

if.end12.i.i.if.end26.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i.i

land.lhs.true14.i.i:                              ; preds = %if.end12.i.i
  %53 = ptrtoint ptr %call.i.i11 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %call.i.i11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %54)
  %cmp.i42.i = icmp ult i8 %54, 5
  br i1 %cmp.i42.i, label %land.lhs.true14.i.i.sw.epilog.i_crit_edge, label %lor.lhs.false16.i.i

land.lhs.true14.i.i.sw.epilog.i_crit_edge:        ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

lor.lhs.false16.i.i:                              ; preds = %land.lhs.true14.i.i
  %bJackType.i.i = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, ptr %call.i.i11, i32 0, i32 3
  %55 = ptrtoint ptr %bJackType.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bJackType.i.i, align 1
  %.off.i.i = add i8 %56, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i)
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  br i1 %switch.i.i, label %lor.lhs.false16.i.i.if.end26.i.i_crit_edge, label %lor.lhs.false16.i.i.sw.epilog.i_crit_edge

lor.lhs.false16.i.i.sw.epilog.i_crit_edge:        ; preds = %lor.lhs.false16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

lor.lhs.false16.i.i.if.end26.i.i_crit_edge:       ; preds = %lor.lhs.false16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %lor.lhs.false16.i.i.if.end26.i.i_crit_edge, %if.end12.i.i.if.end26.i.i_crit_edge
  br i1 %tobool4.not.i.i, label %if.end26.i.i.create_yamaha_midi_quirk.exit.i_crit_edge, label %land.lhs.true28.i.i

if.end26.i.i.create_yamaha_midi_quirk.exit.i_crit_edge: ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %create_yamaha_midi_quirk.exit.i

land.lhs.true28.i.i:                              ; preds = %if.end26.i.i
  %57 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %call3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %58)
  %cmp31.i.i = icmp ult i8 %58, 6
  br i1 %cmp31.i.i, label %land.lhs.true28.i.i.sw.epilog.i_crit_edge, label %lor.lhs.false33.i.i

land.lhs.true28.i.i.sw.epilog.i_crit_edge:        ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

lor.lhs.false33.i.i:                              ; preds = %land.lhs.true28.i.i
  %bJackType34.i.i = getelementptr inbounds %struct.usb_midi_out_jack_descriptor, ptr %call3.i.i, i32 0, i32 3
  %59 = ptrtoint ptr %bJackType34.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bJackType34.i.i, align 1
  %.off62.i.i = add i8 %60, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off62.i.i)
  %switch63.i.i = icmp ult i8 %.off62.i.i, 2
  br i1 %switch63.i.i, label %lor.lhs.false33.i.i.create_yamaha_midi_quirk.exit.i_crit_edge, label %lor.lhs.false33.i.i.sw.epilog.i_crit_edge

lor.lhs.false33.i.i.sw.epilog.i_crit_edge:        ; preds = %lor.lhs.false33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

lor.lhs.false33.i.i.create_yamaha_midi_quirk.exit.i_crit_edge: ; preds = %lor.lhs.false33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %create_yamaha_midi_quirk.exit.i

create_yamaha_midi_quirk.exit.i:                  ; preds = %lor.lhs.false33.i.i.create_yamaha_midi_quirk.exit.i_crit_edge, %if.end26.i.i.create_yamaha_midi_quirk.exit.i_crit_edge
  %card.i.i.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 2
  %61 = ptrtoint ptr %card.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %card.i.i.i, align 4
  %midi_list.i.i.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 22
  %call.i.i.i.i = tail call i32 @__snd_usbmidi_create(ptr noundef %62, ptr noundef %iface, ptr noundef %midi_list.i.i.i, ptr noundef nonnull @create_yamaha_midi_quirk.yamaha_midi_quirk, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i.i.i)
  %cmp9.not.i = icmp eq i32 %call.i.i.i.i, -19
  br i1 %cmp9.not.i, label %create_yamaha_midi_quirk.exit.i.sw.epilog.i_crit_edge, label %create_yamaha_midi_quirk.exit.i.if.end_crit_edge

create_yamaha_midi_quirk.exit.i.if.end_crit_edge: ; preds = %create_yamaha_midi_quirk.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

create_yamaha_midi_quirk.exit.i.sw.epilog.i_crit_edge: ; preds = %create_yamaha_midi_quirk.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.end7.i
  %extra.i43.i = getelementptr inbounds %struct.usb_host_interface, ptr %34, i32 0, i32 2
  %extralen.i44.i = getelementptr inbounds %struct.usb_host_interface, ptr %34, i32 0, i32 1
  %63 = ptrtoint ptr %extra.i43.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %extra.i43.i, align 4
  %65 = ptrtoint ptr %extralen.i44.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %extralen.i44.i, align 4
  %call13.i.i = tail call ptr @snd_usb_find_csint_desc(ptr noundef %64, i32 noundef %66, ptr noundef null, i8 noundef zeroext -15) #11
  %tobool.not14.i.i = icmp eq ptr %call13.i.i, null
  br i1 %tobool.not14.i.i, label %sw.bb13.i.sw.epilog.i_crit_edge, label %sw.bb13.i.if.end.i46.i_crit_edge

sw.bb13.i.if.end.i46.i_crit_edge:                 ; preds = %sw.bb13.i
  br label %if.end.i46.i

sw.bb13.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end.i46.i:                                     ; preds = %if.then6.i.i.if.end.i46.i_crit_edge, %sw.bb13.i.if.end.i46.i_crit_edge
  %call15.i.i = phi ptr [ %call.i48.i, %if.then6.i.i.if.end.i46.i_crit_edge ], [ %call13.i.i, %sw.bb13.i.if.end.i46.i_crit_edge ]
  %67 = ptrtoint ptr %call15.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %call15.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %68)
  %cmp.i45.i = icmp ult i8 %68, 6
  br i1 %cmp.i45.i, label %if.end.i46.i.if.then6.i.i_crit_edge, label %lor.lhs.false.i47.i

if.end.i46.i.if.then6.i.i_crit_edge:              ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i.i

lor.lhs.false.i47.i:                              ; preds = %if.end.i46.i
  %arrayidx2.i.i = getelementptr i8, ptr %call15.i.i, i32 3
  %69 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %70)
  %cmp4.not.i.i = icmp eq i8 %70, 2
  br i1 %cmp4.not.i.i, label %create_roland_midi_quirk.exit.i, label %lor.lhs.false.i47.i.if.then6.i.i_crit_edge

lor.lhs.false.i47.i.if.then6.i.i_crit_edge:       ; preds = %lor.lhs.false.i47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i.i

if.then6.i.i:                                     ; preds = %lor.lhs.false.i47.i.if.then6.i.i_crit_edge, %if.end.i46.i.if.then6.i.i_crit_edge
  %71 = ptrtoint ptr %extra.i43.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %extra.i43.i, align 4
  %73 = ptrtoint ptr %extralen.i44.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %extralen.i44.i, align 4
  %call.i48.i = tail call ptr @snd_usb_find_csint_desc(ptr noundef %72, i32 noundef %74, ptr noundef nonnull %call15.i.i, i8 noundef zeroext -15) #11
  %tobool.not.i49.i = icmp eq ptr %call.i48.i, null
  br i1 %tobool.not.i49.i, label %if.then6.i.i.sw.epilog.i_crit_edge, label %if.then6.i.i.if.end.i46.i_crit_edge

if.then6.i.i.if.end.i46.i_crit_edge:              ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i46.i

if.then6.i.i.sw.epilog.i_crit_edge:               ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

create_roland_midi_quirk.exit.i:                  ; preds = %lor.lhs.false.i47.i
  %card.i.i50.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 2
  %75 = ptrtoint ptr %card.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %card.i.i50.i, align 4
  %midi_list.i.i51.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 22
  %call.i.i.i52.i = tail call i32 @__snd_usbmidi_create(ptr noundef %76, ptr noundef %iface, ptr noundef %midi_list.i.i51.i, ptr noundef nonnull @create_roland_midi_quirk.roland_midi_quirk, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i.i52.i)
  %cmp15.not.i = icmp eq i32 %call.i.i.i52.i, -19
  br i1 %cmp15.not.i, label %create_roland_midi_quirk.exit.i.sw.epilog.i_crit_edge, label %create_roland_midi_quirk.exit.i.if.end_crit_edge

create_roland_midi_quirk.exit.i.if.end_crit_edge: ; preds = %create_roland_midi_quirk.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

create_roland_midi_quirk.exit.i.sw.epilog.i_crit_edge: ; preds = %create_roland_midi_quirk.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %create_roland_midi_quirk.exit.i.sw.epilog.i_crit_edge, %if.then6.i.i.sw.epilog.i_crit_edge, %sw.bb13.i.sw.epilog.i_crit_edge, %create_yamaha_midi_quirk.exit.i.sw.epilog.i_crit_edge, %lor.lhs.false33.i.i.sw.epilog.i_crit_edge, %land.lhs.true28.i.i.sw.epilog.i_crit_edge, %lor.lhs.false16.i.i.sw.epilog.i_crit_edge, %land.lhs.true14.i.i.sw.epilog.i_crit_edge, %land.lhs.true9.i.i.sw.epilog.i_crit_edge, %land.lhs.true6.i.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge, %if.end7.i.sw.epilog.i_crit_edge
  %extra.i54.i = getelementptr inbounds %struct.usb_host_interface, ptr %34, i32 0, i32 2
  %77 = ptrtoint ptr %extra.i54.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %extra.i54.i, align 4
  %extralen.i55.i = getelementptr inbounds %struct.usb_host_interface, ptr %34, i32 0, i32 1
  %79 = ptrtoint ptr %extralen.i55.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %extralen.i55.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %80)
  %cmp.i56.i = icmp slt i32 %80, 7
  br i1 %cmp.i56.i, label %sw.epilog.i.if.end_crit_edge, label %lor.lhs.false.i57.i

sw.epilog.i.if.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.i57.i:                              ; preds = %sw.epilog.i
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %82)
  %cmp1.i.i = icmp ult i8 %82, 7
  br i1 %cmp1.i.i, label %lor.lhs.false.i57.i.if.end_crit_edge, label %lor.lhs.false3.i.i

lor.lhs.false.i57.i.if.end_crit_edge:             ; preds = %lor.lhs.false.i57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i57.i
  %bDescriptorType.i.i = getelementptr inbounds %struct.usb_ms_header_descriptor, ptr %78, i32 0, i32 1
  %83 = ptrtoint ptr %bDescriptorType.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %bDescriptorType.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %84)
  %cmp5.not.i.i = icmp eq i8 %84, 36
  br i1 %cmp5.not.i.i, label %lor.lhs.false7.i.i, label %lor.lhs.false3.i.i.if.end_crit_edge

lor.lhs.false3.i.i.if.end_crit_edge:              ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false7.i.i:                               ; preds = %lor.lhs.false3.i.i
  %bDescriptorSubtype.i.i = getelementptr inbounds %struct.usb_ms_header_descriptor, ptr %78, i32 0, i32 2
  %85 = ptrtoint ptr %bDescriptorSubtype.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %bDescriptorSubtype.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %86)
  %cmp9.not.i.i = icmp eq i8 %86, 1
  br i1 %cmp9.not.i.i, label %if.end.i58.i, label %lor.lhs.false7.i.i.if.end_crit_edge

lor.lhs.false7.i.i.if.end_crit_edge:              ; preds = %lor.lhs.false7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i58.i:                                     ; preds = %lor.lhs.false7.i.i
  %87 = ptrtoint ptr %endpoint.i8 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %endpoint.i8, align 4
  %extra11.i.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %88, i32 0, i32 7
  %89 = ptrtoint ptr %extra11.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %extra11.i.i, align 4
  %extralen14.i.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %88, i32 0, i32 8
  %91 = ptrtoint ptr %extralen14.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %extralen14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %92)
  %cmp15.i.i = icmp slt i32 %92, 4
  br i1 %cmp15.i.i, label %if.end.i58.i.if.end_crit_edge, label %lor.lhs.false17.i.i

if.end.i58.i.if.end_crit_edge:                    ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false17.i.i:                              ; preds = %if.end.i58.i
  %93 = ptrtoint ptr %90 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %94)
  %cmp20.i.i = icmp ult i8 %94, 4
  br i1 %cmp20.i.i, label %lor.lhs.false17.i.i.if.end_crit_edge, label %lor.lhs.false22.i.i

lor.lhs.false17.i.i.if.end_crit_edge:             ; preds = %lor.lhs.false17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false22.i.i:                              ; preds = %lor.lhs.false17.i.i
  %bDescriptorType23.i.i = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, ptr %90, i32 0, i32 1
  %95 = ptrtoint ptr %bDescriptorType23.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %bDescriptorType23.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %96)
  %cmp25.not.i.i = icmp eq i8 %96, 37
  br i1 %cmp25.not.i.i, label %lor.lhs.false27.i.i, label %lor.lhs.false22.i.i.if.end_crit_edge

lor.lhs.false22.i.i.if.end_crit_edge:             ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false27.i.i:                              ; preds = %lor.lhs.false22.i.i
  %bDescriptorSubtype28.i.i = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, ptr %90, i32 0, i32 2
  %97 = ptrtoint ptr %bDescriptorSubtype28.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %bDescriptorSubtype28.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %98)
  %cmp30.not.i.i = icmp eq i8 %98, 1
  br i1 %cmp30.not.i.i, label %lor.lhs.false32.i.i, label %lor.lhs.false27.i.i.if.end_crit_edge

lor.lhs.false27.i.i.if.end_crit_edge:             ; preds = %lor.lhs.false27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false32.i.i:                              ; preds = %lor.lhs.false27.i.i
  %bNumEmbMIDIJack.i.i = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, ptr %90, i32 0, i32 3
  %99 = ptrtoint ptr %bNumEmbMIDIJack.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %bNumEmbMIDIJack.i.i, align 1
  %101 = add i8 %100, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %101)
  %102 = icmp ult i8 %101, -16
  br i1 %102, label %lor.lhs.false32.i.i.if.end_crit_edge, label %if.end42.i.i

lor.lhs.false32.i.i.if.end_crit_edge:             ; preds = %lor.lhs.false32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end42.i.i:                                     ; preds = %lor.lhs.false32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %card.i.i59.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 2
  %103 = ptrtoint ptr %card.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %card.i.i59.i, align 4
  %midi_list.i.i60.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 22
  %call.i.i.i61.i = tail call i32 @__snd_usbmidi_create(ptr noundef %104, ptr noundef %iface, ptr noundef %midi_list.i.i60.i, ptr noundef null, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.end42.i.i, %lor.lhs.false32.i.i.if.end_crit_edge, %lor.lhs.false27.i.i.if.end_crit_edge, %lor.lhs.false22.i.i.if.end_crit_edge, %lor.lhs.false17.i.i.if.end_crit_edge, %if.end.i58.i.if.end_crit_edge, %lor.lhs.false7.i.i.if.end_crit_edge, %lor.lhs.false3.i.i.if.end_crit_edge, %lor.lhs.false.i57.i.if.end_crit_edge, %sw.epilog.i.if.end_crit_edge, %create_roland_midi_quirk.exit.i.if.end_crit_edge, %create_yamaha_midi_quirk.exit.i.if.end_crit_edge, %if.end.i10.if.end_crit_edge, %if.then.if.end_crit_edge, %create_auto_pcm_quirk.exit.if.end_crit_edge, %create_auto_pcm_quirk.exit.thread16
  %err.0 = phi i32 [ %call.i.i, %create_auto_pcm_quirk.exit.if.end_crit_edge ], [ 0, %create_auto_pcm_quirk.exit.thread16 ], [ -19, %if.then.if.end_crit_edge ], [ %call.i.i.i.i, %create_yamaha_midi_quirk.exit.i.if.end_crit_edge ], [ %call.i.i.i52.i, %create_roland_midi_quirk.exit.i.if.end_crit_edge ], [ %call.i.i.i61.i, %if.end42.i.i ], [ -19, %lor.lhs.false7.i.i.if.end_crit_edge ], [ -19, %lor.lhs.false3.i.i.if.end_crit_edge ], [ -19, %lor.lhs.false.i57.i.if.end_crit_edge ], [ -19, %sw.epilog.i.if.end_crit_edge ], [ -19, %lor.lhs.false32.i.i.if.end_crit_edge ], [ -19, %lor.lhs.false27.i.i.if.end_crit_edge ], [ -19, %lor.lhs.false22.i.i.if.end_crit_edge ], [ -19, %lor.lhs.false17.i.i.if.end_crit_edge ], [ -19, %if.end.i58.i.if.end_crit_edge ], [ -19, %if.end.i10.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_find_csint_desc(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_usb_validate_midi_desc(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__snd_usbmidi_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_parse_audio_interface(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @snd_usb_parse_datainterval(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_init_pitch(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_init_sample_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_audioformat_set_sync_ep(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_add_audio_stream(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_add_endpoint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_create_mixer(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_descriptor(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_configuration(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_pipe_type_check(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interrupt_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_set_configuration(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_usb_motu_microbookii_communicate(ptr noundef %dev, ptr noundef %buf, ptr nocapture noundef %length) unnamed_addr #0 align 64 {
entry:
  %actual_length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length) #11
  %0 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %actual_length, align 4, !annotation !166
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev, align 8
  %shl.i = shl i32 %2, 8
  %or = or i32 %shl.i, 1073774592
  %call1 = tail call i32 @usb_pipe_type_check(ptr noundef %dev, i32 noundef %or) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev, align 8
  %shl.i1 = shl i32 %4, 8
  %or3 = or i32 %shl.i1, 1073774592
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length, align 4
  %call4 = call i32 @usb_interrupt_msg(ptr noundef %dev, i32 noundef %or3, ptr noundef %buf, i32 noundef %6, ptr noundef nonnull %actual_length, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %buf, i32 noundef %8, i1 noundef zeroext false) #11
  %9 = call ptr @memset(ptr %buf, i32 0, i32 128)
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dev, align 8
  %shl.i3 = shl i32 %11, 8
  %or9 = or i32 %shl.i3, 1078001792
  %call10 = call i32 @usb_pipe_type_check(ptr noundef %dev, i32 noundef %or9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev, align 8
  %shl.i5 = shl i32 %13, 8
  %or16 = or i32 %shl.i5, 1078001792
  %call17 = call i32 @usb_interrupt_msg(ptr noundef %dev, i32 noundef %or16, ptr noundef %buf, i32 noundef 128, ptr noundef nonnull %actual_length, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end13.cleanup_crit_edge, label %if.end20

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %actual_length, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.61, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %buf, i32 noundef %15, i1 noundef zeroext false) #11
  %16 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %actual_length, align 4
  %18 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end13.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -22, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call17, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emuusb_set_samplerate(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !19, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !66, !67, !69, !70, !72, !73, !75, !76, !77, !79, !80, !82, !84, !86, !87, !89, !90, !91, !92, !94, !96, !97, !98, !99, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !119, !120, !122, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !149, !151, !153}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @snd_usb_create_quirk.quirk_funcs, !1, !"quirk_funcs", i1 false, i1 false}
!1 = !{!"../sound/usb/quirks.c", i32 554, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/usb/quirks.c", i32 579, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @snd_usb_create_quirk._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @snd_usb_create_quirk._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/usb/quirks.c", i32 1956, i32 4}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @snd_usb_init_quirk_flags.__UNIQUE_ID_ddebug260, !11, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!15 = !{ptr @create_yamaha_midi_quirk.yamaha_midi_quirk, !16, !"yamaha_midi_quirk", i1 false, i1 false}
!16 = !{!"../sound/usb/quirks.c", i32 262, i32 42}
!17 = !{ptr @create_roland_midi_quirk.roland_midi_quirk, !18, !"roland_midi_quirk", i1 false, i1 false}
!18 = !{!"../sound/usb/quirks.c", i32 294, i32 42}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/usb/quirks.c", i32 102, i32 3}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @create_standard_audio_quirk._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @create_standard_audio_quirk._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @create_uaxx_quirk.ua_format, !25, !"ua_format", i1 false, i1 false}
!25 = !{!"../sound/usb/quirks.c", i32 437, i32 34}
!26 = !{ptr @create_uaxx_quirk.ua700_ep, !27, !"ua700_ep", i1 false, i1 false}
!27 = !{!"../sound/usb/quirks.c", i32 457, i32 50}
!28 = !{ptr @create_uaxx_quirk.ua700_quirk, !29, !"ua700_quirk", i1 false, i1 false}
!29 = !{!"../sound/usb/quirks.c", i32 461, i32 43}
!30 = !{ptr @create_uaxx_quirk.uaxx_ep, !31, !"uaxx_ep", i1 false, i1 false}
!31 = !{!"../sound/usb/quirks.c", i32 465, i32 50}
!32 = !{ptr @create_uaxx_quirk.uaxx_quirk, !33, !"uaxx_quirk", i1 false, i1 false}
!33 = !{!"../sound/usb/quirks.c", i32 469, i32 43}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/usb/quirks.c", i32 508, i32 3}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @create_uaxx_quirk._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @create_uaxx_quirk._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/usb/quirks.c", i32 1174, i32 2}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @quattro_skip_setting_quirk.__UNIQUE_ID_ddebug258, !40, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/usb/quirks.c", i32 1241, i32 2}
!45 = !{ptr @fasttrackpro_skip_setting_quirk.__UNIQUE_ID_ddebug259, !44, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/usb/quirks.c", i32 598, i32 3}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @snd_usb_extigy_boot_quirk.__UNIQUE_ID_ddebug243, !47, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/usb/quirks.c", i32 603, i32 4}
!52 = !{ptr @snd_usb_extigy_boot_quirk.__UNIQUE_ID_ddebug244, !51, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/usb/quirks.c", i32 608, i32 4}
!55 = !{ptr @snd_usb_extigy_boot_quirk.__UNIQUE_ID_ddebug245, !54, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/usb/quirks.c", i32 611, i32 4}
!58 = !{ptr @snd_usb_extigy_boot_quirk.__UNIQUE_ID_ddebug246, !57, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/usb/quirks.c", i32 612, i32 3}
!61 = !{ptr @snd_usb_extigy_boot_quirk.__UNIQUE_ID_ddebug247, !60, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/usb/quirks.c", i32 948, i32 3}
!64 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @snd_usb_mbox2_boot_quirk._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @snd_usb_mbox2_boot_quirk._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/usb/quirks.c", i32 952, i32 2}
!69 = !{ptr @snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug249, !68, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/usb/quirks.c", i32 963, i32 3}
!72 = !{ptr @snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug250, !71, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/usb/quirks.c", i32 968, i32 3}
!75 = !{ptr @snd_usb_mbox2_boot_quirk._entry.25, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @snd_usb_mbox2_boot_quirk._entry_ptr.27, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/usb/quirks.c", i32 972, i32 2}
!79 = !{ptr @snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug251, !78, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!80 = !{ptr @snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug252, !81, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!81 = !{!"../sound/usb/quirks.c", i32 978, i32 3}
!82 = !{ptr @snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug253, !83, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!83 = !{!"../sound/usb/quirks.c", i32 982, i32 3}
!84 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/usb/quirks.c", i32 983, i32 2}
!86 = !{ptr @snd_usb_mbox2_boot_quirk.__UNIQUE_ID_ddebug254, !85, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/usb/quirks.c", i32 988, i32 2}
!89 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @snd_usb_mbox2_boot_quirk._entry.30, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @snd_usb_mbox2_boot_quirk._entry_ptr.33, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @snd_usb_accessmusic_boot_quirk.seq, !93, !"seq", i1 false, i1 false}
!93 = !{!"../sound/usb/quirks.c", i32 860, i32 18}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/usb/quirks.c", i32 640, i32 3}
!96 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @snd_usb_fasttrackpro_boot_quirk._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @snd_usb_fasttrackpro_boot_quirk._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/usb/quirks.c", i32 649, i32 4}
!101 = !{ptr @snd_usb_fasttrackpro_boot_quirk.__UNIQUE_ID_ddebug248, !100, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/usb/quirks.c", i32 657, i32 3}
!104 = !{ptr @snd_usb_fasttrackpro_boot_quirk._entry.37, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @snd_usb_fasttrackpro_boot_quirk._entry_ptr.39, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/usb/quirks.c", i32 997, i32 2}
!108 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @snd_usb_axefx3_boot_quirk.__UNIQUE_ID_ddebug255, !107, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/usb/quirks.c", i32 1008, i32 3}
!112 = !{ptr @snd_usb_axefx3_boot_quirk._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @snd_usb_axefx3_boot_quirk._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/usb/quirks.c", i32 1013, i32 2}
!116 = !{ptr @snd_usb_axefx3_boot_quirk.__UNIQUE_ID_ddebug256, !115, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/usb/quirks.c", i32 1017, i32 3}
!119 = !{ptr @snd_usb_axefx3_boot_quirk.__UNIQUE_ID_ddebug257, !118, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!120 = !{ptr @snd_usb_motu_microbookii_boot_quirk.set_samplerate_seq, !121, !"set_samplerate_seq", i1 false, i1 false}
!121 = !{!"../sound/usb/quirks.c", i32 1060, i32 18}
!122 = distinct !{null, !123, !"poll_ready_seq", i1 false, i1 false}
!123 = !{!"../sound/usb/quirks.c", i32 1063, i32 18}
!124 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/usb/quirks.c", i32 1070, i32 2}
!126 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @snd_usb_motu_microbookii_boot_quirk._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @snd_usb_motu_microbookii_boot_quirk._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/usb/quirks.c", i32 1079, i32 3}
!131 = !{ptr @snd_usb_motu_microbookii_boot_quirk._entry.47, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @snd_usb_motu_microbookii_boot_quirk._entry_ptr.49, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/usb/quirks.c", i32 1088, i32 4}
!135 = !{ptr @snd_usb_motu_microbookii_boot_quirk._entry.50, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @snd_usb_motu_microbookii_boot_quirk._entry_ptr.52, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/usb/quirks.c", i32 1101, i32 4}
!139 = !{ptr @snd_usb_motu_microbookii_boot_quirk._entry.53, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @snd_usb_motu_microbookii_boot_quirk._entry_ptr.55, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.57, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/usb/quirks.c", i32 1119, i32 2}
!143 = !{ptr @snd_usb_motu_microbookii_boot_quirk._entry.56, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @snd_usb_motu_microbookii_boot_quirk._entry_ptr.58, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.59, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/usb/quirks.c", i32 1038, i32 17}
!147 = !{ptr @.str.60, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/usb/quirks.c", i32 1038, i32 29}
!149 = !{ptr @.str.61, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/usb/quirks.c", i32 1050, i32 29}
!151 = !{ptr @registration_quirks, !152, !"registration_quirks", i1 false, i1 false}
!152 = !{!"../sound/usb/quirks.c", i32 1746, i32 40}
!153 = !{ptr @quirk_flags_table, !154, !"quirk_flags_table", i1 false, i1 false}
!154 = !{!"../sound/usb/quirks.c", i32 1784, i32 49}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{i8 0, i8 2}
!165 = !{i64 2148260748, i64 2148260753, i64 2148260766, i64 2148260810, i64 2148260844, i64 2148260865}
!166 = !{!"auto-init"}
