; ModuleID = '/llk/IR_all_yes/sound/usb/format.c_pt.bc'
source_filename = "../sound/usb/format.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.uac_format_type_i_continuous_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], [3 x i8] }
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
%struct.audioformat = type { %struct.list_head, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, i8, ptr, i8, i8, i8 }
%struct.uac_format_type_ii_discrete_descriptor = type <{ i8, i8, i8, i8, i16, i16, i8, [0 x [3 x i8]] }>
%struct.uac_format_type_ii_ext_descriptor = type { i8, i8, i8, i8, i16, i16, i8, i8 }
%struct.uac_format_type_i_discrete_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, [0 x [3 x i8]] }
%struct.uac_format_type_i_ext_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.uac3_as_header_descriptor = type <{ i8, i8, i8, i8, i32, i16, i64, i8, i8, i16, i8 }>
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }

@snd_usb_parse_audio_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 774, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%u:%d : format type %d is not supported yet\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snd_usb_parse_audio_format\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sound/usb/format.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_usb_parse_audio_format._entry_ptr = internal global ptr @snd_usb_parse_audio_format._entry, section ".printk_index", align 4
@parse_audio_format_i._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 695, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%u:%d : invalid channels %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"parse_audio_format_i\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@parse_audio_format_i._entry_ptr = internal global ptr @parse_audio_format_i._entry, section ".printk_index", align 4
@parse_audio_format_i_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 84, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%u:%d : format type 0 is detected, processed as PCM\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"parse_audio_format_i_type\00", [38 x i8] zeroinitializer }, align 32
@parse_audio_format_i_type._entry_ptr = internal global ptr @parse_audio_format_i_type._entry, section ".printk_index", align 4
@parse_audio_format_i_type._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 97, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%u:%d : sample bitwidth %d in over sample bytes %d\0A\00", [44 x i8] zeroinitializer }, align 32
@parse_audio_format_i_type._entry_ptr.12 = internal global ptr @parse_audio_format_i_type._entry.10, section ".printk_index", align 4
@parse_audio_format_i_type._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 123, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%u:%d : unsupported sample bitwidth %d in %d bytes\0A\00", [44 x i8] zeroinitializer }, align 32
@parse_audio_format_i_type._entry_ptr.15 = internal global ptr @parse_audio_format_i_type._entry.13, section ".printk_index", align 4
@parse_audio_format_i_type._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 147, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%u:%d : unsupported format bits %#llx\0A\00", [57 x i8] zeroinitializer }, align 32
@parse_audio_format_i_type._entry_ptr.18 = internal global ptr @parse_audio_format_i_type._entry.16, section ".printk_index", align 4
@parse_audio_format_rates_v1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 204, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%u:%d : invalid UAC_FORMAT_TYPE desc\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"parse_audio_format_rates_v1\00", [36 x i8] zeroinitializer }, align 32
@parse_audio_format_rates_v1._entry_ptr = internal global ptr @parse_audio_format_rates_v1._entry, section ".printk_index", align 4
@parse_audio_format_rates_v1._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 245, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%u:%d: All rates were zero\0A\00", [36 x i8] zeroinitializer }, align 32
@parse_audio_format_rates_v1._entry_ptr.23 = internal global ptr @parse_audio_format_rates_v1._entry.21, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@parse_audio_format_rates_v2v3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 530, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s(): unable to find clock source (clock %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"parse_audio_format_rates_v2v3\00", [34 x i8] zeroinitializer }, align 32
@parse_audio_format_rates_v2v3._entry_ptr = internal global ptr @parse_audio_format_rates_v2v3._entry, section ".printk_index", align 4
@parse_audio_format_rates_v2v3._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 548, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s(): unable to retrieve number of sample rates (clock %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@parse_audio_format_rates_v2v3._entry_ptr.28 = internal global ptr @parse_audio_format_rates_v2v3._entry.26, section ".printk_index", align 4
@parse_audio_format_rates_v2v3._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 554, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"%s(): unable to retrieve number of sample rates: set it to a predefined value (clock %d).\0A\00", [37 x i8] zeroinitializer }, align 32
@parse_audio_format_rates_v2v3._entry_ptr.31 = internal global ptr @parse_audio_format_rates_v2v3._entry.29, section ".printk_index", align 4
@parse_audio_format_rates_v2v3._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.2, i32 579, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s(): unable to retrieve sample rate range (clock %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@parse_audio_format_rates_v2v3._entry_ptr.34 = internal global ptr @parse_audio_format_rates_v2v3._entry.32, section ".printk_index", align 4
@parse_uac2_sample_rate_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 391, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid uac2 rates\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"parse_uac2_sample_rate_range\00", [35 x i8] zeroinitializer }, align 32
@parse_uac2_sample_rate_range._entry_ptr = internal global ptr @parse_uac2_sample_rate_range._entry, section ".printk_index", align 4
@focusrite_valid_sample_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 331, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%u:%d : unexpected max rate: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"focusrite_valid_sample_rate\00", [36 x i8] zeroinitializer }, align 32
@focusrite_valid_sample_rate._entry_ptr = internal global ptr @focusrite_valid_sample_rate._entry, section ".printk_index", align 4
@validate_sample_rate_table_v2v3.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_usb_audio\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"validate_sample_rate_table_v2v3\00", [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"No valid sample rate available for %d:%d, assuming a firmware bug\0A\00", [61 x i8] zeroinitializer }, align 32
@parse_audio_format_ii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 723, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%u:%d : unknown format tag %#llx is detected.  processed as MPEG.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"parse_audio_format_ii\00", [42 x i8] zeroinitializer }, align 32
@parse_audio_format_ii._entry_ptr = internal global ptr @parse_audio_format_ii._entry, section ".printk_index", align 4
@parse_audio_format_ii._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 736, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"found format II with max.bitrate = %d, frame size=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@parse_audio_format_ii._entry_ptr.46 = internal global ptr @parse_audio_format_ii._entry.44, section ".printk_index", align 4
@parse_audio_format_ii._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 745, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@parse_audio_format_ii._entry_ptr.48 = internal global ptr @parse_audio_format_ii._entry.47, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 64, i64 4097, i64 4098]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 69087232, i64 69087264, i64 69087329]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 48]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 92405772, i64 92405782]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 48]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16000, i64 48000]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 214761649, i64 227278968, i64 227279106, i64 227279361]
@__sancov_gen_cov_switch_values.57 = internal global [12 x i64] [i64 10, i64 32, i64 239157825, i64 239157826, i64 239157828, i64 239157830, i64 239157831, i64 239157832, i64 239157833, i64 239157834, i64 239157843, i64 435617809]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 88200, i64 96000]
@__sancov_gen_cov_switch_values.60 = internal global [6 x i64] [i64 4, i64 32, i64 48000, i64 96000, i64 192000, i64 384000]
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 771, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 693, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 83, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 95, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 120, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 145, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 202, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 243, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 528, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 546, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 552, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 577, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 391, i32 5 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 329, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 498, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 721, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 736, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.203 = private constant [22 x i8] c"../sound/usb/format.c\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 745, i32 3 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @focusrite_valid_sample_rate._entry, ptr @focusrite_valid_sample_rate._entry_ptr, ptr @parse_audio_format_i._entry, ptr @parse_audio_format_i._entry_ptr, ptr @parse_audio_format_i_type._entry, ptr @parse_audio_format_i_type._entry.10, ptr @parse_audio_format_i_type._entry.13, ptr @parse_audio_format_i_type._entry.16, ptr @parse_audio_format_i_type._entry_ptr, ptr @parse_audio_format_i_type._entry_ptr.12, ptr @parse_audio_format_i_type._entry_ptr.15, ptr @parse_audio_format_i_type._entry_ptr.18, ptr @parse_audio_format_ii._entry, ptr @parse_audio_format_ii._entry.44, ptr @parse_audio_format_ii._entry.47, ptr @parse_audio_format_ii._entry_ptr, ptr @parse_audio_format_ii._entry_ptr.46, ptr @parse_audio_format_ii._entry_ptr.48, ptr @parse_audio_format_rates_v1._entry, ptr @parse_audio_format_rates_v1._entry.21, ptr @parse_audio_format_rates_v1._entry_ptr, ptr @parse_audio_format_rates_v1._entry_ptr.23, ptr @parse_audio_format_rates_v2v3._entry, ptr @parse_audio_format_rates_v2v3._entry.26, ptr @parse_audio_format_rates_v2v3._entry.29, ptr @parse_audio_format_rates_v2v3._entry.32, ptr @parse_audio_format_rates_v2v3._entry_ptr, ptr @parse_audio_format_rates_v2v3._entry_ptr.28, ptr @parse_audio_format_rates_v2v3._entry_ptr.31, ptr @parse_audio_format_rates_v2v3._entry_ptr.34, ptr @parse_uac2_sample_rate_range._entry, ptr @parse_uac2_sample_rate_range._entry_ptr, ptr @snd_usb_parse_audio_format._entry, ptr @snd_usb_parse_audio_format._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_parse_audio_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_audio_format_i._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_audio_format_i_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_audio_format_i_type._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_audio_format_i_type._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_audio_format_i_type._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_audio_format_rates_v1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_audio_format_rates_v1._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_audio_format_rates_v2v3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_audio_format_rates_v2v3._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_audio_format_rates_v2v3._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_audio_format_rates_v2v3._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_uac2_sample_rate_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @focusrite_valid_sample_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_audio_format_ii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_audio_format_ii._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_audio_format_ii._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_parse_audio_format(ptr noundef %chip, ptr noundef %fp, i64 noundef %format, ptr nocapture noundef readonly %fmt, i32 noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bFormatType = getelementptr inbounds %struct.uac_format_type_i_continuous_descriptor, ptr %fmt, i32 0, i32 3
  %0 = ptrtoint ptr %bFormatType to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bFormatType, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %do.end [
    i8 1, label %entry.sw.bb_crit_edge
    i8 3, label %entry.sw.bb_crit_edge53
    i8 2, label %sw.bb1
  ]

entry.sw.bb_crit_edge53:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge53
  %call = tail call fastcc i32 @parse_audio_format_i(ptr noundef %chip, ptr noundef %fp, i64 noundef %format, ptr noundef %fmt)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_switch(i64 %format, ptr @__sancov_gen_cov_switch_values.49)
  switch i64 %format, label %do.end.i [
    i64 4098, label %sw.bb1.sw.epilog.i_crit_edge
    i64 4097, label %sw.bb1.i
  ]

sw.bb1.sw.epilog.i_crit_edge:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

do.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %dev3.i = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  %iface.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 6
  %5 = ptrtoint ptr %iface.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %iface.i, align 8
  %conv.i = zext i8 %6 to i32
  %altsetting.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  %7 = ptrtoint ptr %altsetting.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %altsetting.i, align 1
  %conv4.i = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3.i, ptr noundef nonnull @.str.42, i32 noundef %conv.i, i32 noundef %conv4.i, i64 noundef %format) #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %sw.bb1.i, %sw.bb1.sw.epilog.i_crit_edge
  %.sink.i = phi i64 [ 8388608, %do.end.i ], [ 8388608, %sw.bb1.i ], [ 2, %sw.bb1.sw.epilog.i_crit_edge ]
  %formats5.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 1
  %9 = ptrtoint ptr %formats5.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %.sink.i, ptr %formats5.i, align 8
  %channels.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 2
  %10 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %channels.i, align 8
  %protocol.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 19
  %11 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %protocol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %12)
  %cond.i = icmp eq i8 %12, 32
  br i1 %cond.i, label %sw.bb16.i, label %sw.bb8.i

sw.bb8.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %wMaxBitRate.i = getelementptr inbounds %struct.uac_format_type_ii_discrete_descriptor, ptr %fmt, i32 0, i32 4
  %13 = ptrtoint ptr %wMaxBitRate.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %wMaxBitRate.i, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #7
  %conv9.i = zext i16 %15 to i32
  %wSamplesPerFrame.i = getelementptr inbounds %struct.uac_format_type_ii_discrete_descriptor, ptr %fmt, i32 0, i32 5
  %16 = ptrtoint ptr %wSamplesPerFrame.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %wSamplesPerFrame.i, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #7
  %conv10.i = zext i16 %18 to i32
  %dev14.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %19 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev14.i, align 4
  %dev15.i = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev15.i, ptr noundef nonnull @.str.45, i32 noundef %conv9.i, i32 noundef %conv10.i) #10
  %frame_size.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 5
  %21 = ptrtoint ptr %frame_size.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv10.i, ptr %frame_size.i, align 4
  %call.i = tail call fastcc i32 @parse_audio_format_rates_v1(ptr noundef %chip, ptr noundef %fp, ptr noundef %fmt, i32 noundef 8) #7
  br label %sw.epilog

sw.bb16.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %wMaxBitRate18.i = getelementptr inbounds %struct.uac_format_type_ii_ext_descriptor, ptr %fmt, i32 0, i32 4
  %22 = ptrtoint ptr %wMaxBitRate18.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %wMaxBitRate18.i, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #7
  %conv19.i = zext i16 %24 to i32
  %wSamplesPerFrame20.i = getelementptr inbounds %struct.uac_format_type_ii_ext_descriptor, ptr %fmt, i32 0, i32 5
  %25 = ptrtoint ptr %wSamplesPerFrame20.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %wSamplesPerFrame20.i, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #7
  %conv21.i = zext i16 %27 to i32
  %dev25.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %28 = ptrtoint ptr %dev25.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev25.i, align 4
  %dev26.i = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev26.i, ptr noundef nonnull @.str.45, i32 noundef %conv19.i, i32 noundef %conv21.i) #10
  %frame_size27.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 5
  %30 = ptrtoint ptr %frame_size27.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv21.i, ptr %frame_size27.i, align 4
  %call28.i = tail call fastcc i32 @parse_audio_format_rates_v2v3(ptr noundef %chip, ptr noundef %fp) #7
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %1 to i32
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %32, i32 0, i32 15
  %iface = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 6
  %33 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %iface, align 8
  %conv4 = zext i8 %34 to i32
  %altsetting = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  %35 = ptrtoint ptr %altsetting to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %altsetting, align 1
  %conv5 = zext i8 %36 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb16.i, %sw.bb8.i, %sw.bb
  %err.0 = phi i32 [ %call, %sw.bb ], [ %call28.i, %sw.bb16.i ], [ %call.i, %sw.bb8.i ]
  %37 = ptrtoint ptr %bFormatType to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bFormatType, align 1
  %conv9 = zext i8 %38 to i32
  %fmt_type = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 3
  %39 = ptrtoint ptr %fmt_type to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv9, ptr %fmt_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp = icmp slt i32 %err.0, 0
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 4
  %40 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %usb_id, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %41, label %if.end.cleanup_crit_edge [
    i32 69087232, label %if.end.if.then20_crit_edge
    i32 69087264, label %if.end.if.then20_crit_edge54
    i32 69087329, label %if.end.if.then20_crit_edge55
  ]

if.end.if.then20_crit_edge55:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

if.end.if.then20_crit_edge54:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

if.end.if.then20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %if.end.if.then20_crit_edge, %if.end.if.then20_crit_edge54, %if.end.if.then20_crit_edge55
  %43 = ptrtoint ptr %bFormatType to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bFormatType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp23 = icmp eq i8 %44, 1
  br i1 %cmp23, label %land.lhs.true, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %rates = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 21
  %45 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %46)
  %switch.selectcmp.case1 = icmp eq i32 %46, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %46)
  %switch.selectcmp.case2 = icmp eq i32 %46, 1024
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %47 = select i1 %switch.selectcmp, i32 0, i32 -524
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.then20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -524, %do.end ], [ %err.0, %sw.epilog.cleanup_crit_edge ], [ %47, %land.lhs.true ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_audio_format_i(ptr noundef %chip, ptr noundef %fp, i64 noundef %format, ptr nocapture noundef readonly %_fmt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 19
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %1)
  %cond43 = icmp eq i8 %1, 48
  br i1 %cond43, label %sw.bb2, label %sw.bb

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bFormatType = getelementptr inbounds %struct.uac_format_type_i_continuous_descriptor, ptr %_fmt, i32 0, i32 3
  %2 = ptrtoint ptr %bFormatType to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bFormatType, align 1
  %conv1 = zext i8 %3 to i32
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fmt_type3 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 3
  %4 = ptrtoint ptr %fmt_type3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt_type3, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %fmt_type.0 = phi i32 [ %5, %sw.bb2 ], [ %conv1, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %fmt_type.0)
  %cmp = icmp eq i32 %fmt_type.0, 3
  br i1 %cmp, label %if.then, label %if.else14

if.then:                                          ; preds = %sw.epilog
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 4
  %6 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usb_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 123936771, i32 %7)
  %cond = icmp eq i32 %7, 123936771
  br i1 %cond, label %sw.bb5, label %if.then.sw.epilog13_crit_edge

if.then.sw.epilog13_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog13

sw.bb5:                                           ; preds = %if.then
  %setup = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 24
  %8 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %setup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %land.lhs.true, label %sw.bb5.if.else_crit_edge

sw.bb5.if.else_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb5
  %altsetting = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  %10 = ptrtoint ptr %altsetting to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %altsetting, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %11)
  %cmp9 = icmp eq i8 %11, 6
  br i1 %cmp9, label %land.lhs.true.sw.epilog13_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.sw.epilog13_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog13

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb5.if.else_crit_edge
  br label %sw.epilog13

sw.epilog13:                                      ; preds = %if.else, %land.lhs.true.sw.epilog13_crit_edge, %if.then.sw.epilog13_crit_edge
  %pcm_format.0 = phi i32 [ 2, %if.else ], [ 3, %land.lhs.true.sw.epilog13_crit_edge ], [ 2, %if.then.sw.epilog13_crit_edge ]
  %sh_prom.i = zext i32 %pcm_format.0 to i64
  %shl.i = shl nuw nsw i64 1, %sh_prom.i
  %formats = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 1
  %12 = ptrtoint ptr %formats to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %shl.i, ptr %formats, align 8
  br label %if.end20

if.else14:                                        ; preds = %sw.epilog
  %13 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %1, label %sw.default.i [
    i8 48, label %sw.bb13.i
    i8 32, label %sw.bb4.i
  ]

sw.default.i:                                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_const_cmp8(i64 63, i64 %format)
  %cmp.i = icmp ugt i64 %format, 63
  br i1 %cmp.i, label %parse_audio_format_i_type.exit.thread, label %cleanup.i

parse_audio_format_i_type.exit.thread:            ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %formats1668 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 1
  %14 = ptrtoint ptr %formats1668 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %formats1668, align 8
  br label %cleanup

cleanup.i:                                        ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %bBitResolution.i = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, ptr %_fmt, i32 0, i32 6
  %15 = ptrtoint ptr %bBitResolution.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bBitResolution.i, align 1
  %bSubframeSize.i = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, ptr %_fmt, i32 0, i32 5
  %17 = ptrtoint ptr %bSubframeSize.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bSubframeSize.i, align 1
  %shl.i66 = shl nuw i64 1, %format
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.else14
  %bBitResolution6.i = getelementptr inbounds %struct.uac_format_type_i_ext_descriptor, ptr %_fmt, i32 0, i32 5
  %19 = ptrtoint ptr %bBitResolution6.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bBitResolution6.i, align 1
  %bSubslotSize.i = getelementptr inbounds %struct.uac_format_type_i_ext_descriptor, ptr %_fmt, i32 0, i32 4
  %21 = ptrtoint ptr %bSubslotSize.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bSubslotSize.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483648, i64 %format)
  %tobool.not.i = icmp ult i64 %format, 2147483648
  br i1 %tobool.not.i, label %sw.bb4.i.if.end10.i_crit_edge, label %if.then9.i

sw.bb4.i.if.end10.i_crit_edge:                    ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then9.i:                                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  %dsd_raw.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 30
  %23 = ptrtoint ptr %dsd_raw.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %dsd_raw.i, align 2
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %sw.bb4.i.if.end10.i_crit_edge
  %pcm_formats.0.i = phi i64 [ 2147483648, %if.then9.i ], [ 0, %sw.bb4.i.if.end10.i_crit_edge ]
  %shl11.i = shl i64 %format, 1
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  %bBitResolution14.i = getelementptr inbounds %struct.uac3_as_header_descriptor, ptr %_fmt, i32 0, i32 8
  %24 = ptrtoint ptr %bBitResolution14.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bBitResolution14.i, align 1
  %bSubslotSize16.i = getelementptr inbounds %struct.uac3_as_header_descriptor, ptr %_fmt, i32 0, i32 7
  %26 = ptrtoint ptr %bSubslotSize16.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bSubslotSize16.i, align 1
  %and18.i = shl i64 %format, 25
  %28 = and i64 %and18.i, 2147483648
  %shl23.i = shl i64 %format, 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb13.i, %if.end10.i, %cleanup.i
  %sample_width.1.in.i = phi i8 [ %16, %cleanup.i ], [ %20, %if.end10.i ], [ %25, %sw.bb13.i ]
  %sample_bytes.1.in.i = phi i8 [ %18, %cleanup.i ], [ %22, %if.end10.i ], [ %27, %sw.bb13.i ]
  %pcm_formats.2.i = phi i64 [ 0, %cleanup.i ], [ %pcm_formats.0.i, %if.end10.i ], [ %28, %sw.bb13.i ]
  %format.addr.1.i = phi i64 [ %shl.i66, %cleanup.i ], [ %shl11.i, %if.end10.i ], [ %shl23.i, %sw.bb13.i ]
  %sample_bytes.1.i = zext i8 %sample_bytes.1.in.i to i32
  %sample_width.1.i = zext i8 %sample_width.1.in.i to i32
  %fmt_bits.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 4
  %29 = ptrtoint ptr %fmt_bits.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sample_width.1.i, ptr %fmt_bits.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pcm_formats.2.i)
  %cmp25.i = icmp eq i64 %pcm_formats.2.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %format.addr.1.i)
  %switch.i = icmp ult i64 %format.addr.1.i, 2
  %or.cond208.i = select i1 %cmp25.i, i1 %switch.i, i1 false
  br i1 %or.cond208.i, label %if.end35.thread.i, label %if.end35.i

if.end35.thread.i:                                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %dev32.i = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 15
  %iface.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 6
  %32 = ptrtoint ptr %iface.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %iface.i, align 8
  %conv33.i = zext i8 %33 to i32
  %altsetting.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  %34 = ptrtoint ptr %altsetting.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %altsetting.i, align 1
  %conv34.i = zext i8 %35 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev32.i, ptr noundef nonnull @.str.8, i32 noundef %conv33.i, i32 noundef %conv34.i) #10
  br label %if.then38.i

if.end35.i:                                       ; preds = %sw.epilog.i
  %and36.i = and i64 %format.addr.1.i, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and36.i)
  %tobool37.not.i = icmp eq i64 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end35.i.if.end96.i_crit_edge, label %if.end35.i.if.then38.i_crit_edge

if.end35.i.if.then38.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

if.end35.i.if.end96.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96.i

if.then38.i:                                      ; preds = %if.end35.i.if.then38.i_crit_edge, %if.end35.thread.i
  %format.addr.2215.i = phi i64 [ 2, %if.end35.thread.i ], [ %format.addr.1.i, %if.end35.i.if.then38.i_crit_edge ]
  %usb_id.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 4
  %36 = ptrtoint ptr %usb_id.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %usb_id.i, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %37, label %if.then38.i.if.else.i_crit_edge [
    i32 92405782, label %if.then38.i.land.lhs.true45.i_crit_edge
    i32 92405772, label %if.then38.i.land.lhs.true45.i_crit_edge70
  ]

if.then38.i.land.lhs.true45.i_crit_edge70:        ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true45.i

if.then38.i.land.lhs.true45.i_crit_edge:          ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true45.i

if.then38.i.if.else.i_crit_edge:                  ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true45.i:                                ; preds = %if.then38.i.land.lhs.true45.i_crit_edge, %if.then38.i.land.lhs.true45.i_crit_edge70
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %sample_width.1.in.i)
  %cmp46.i = icmp eq i8 %sample_width.1.in.i, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %sample_bytes.1.in.i)
  %cmp49.i = icmp eq i8 %sample_bytes.1.in.i, 2
  %or.cond.i = select i1 %cmp46.i, i1 %cmp49.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true45.i.sw.bb75.i_crit_edge, label %land.lhs.true45.i.if.else.i_crit_edge

land.lhs.true45.i.if.else.i_crit_edge:            ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true45.i.sw.bb75.i_crit_edge:            ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb75.i

if.else.i:                                        ; preds = %land.lhs.true45.i.if.else.i_crit_edge, %if.then38.i.if.else.i_crit_edge
  %mul.i = shl nuw nsw i32 %sample_bytes.1.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %sample_width.1.i)
  %cmp52.i = icmp ult i32 %mul.i, %sample_width.1.i
  br i1 %cmp52.i, label %do.end57.i, label %if.else.i.if.end65.i_crit_edge

if.else.i.if.end65.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i

do.end57.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev58.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %39 = ptrtoint ptr %dev58.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev58.i, align 4
  %dev59.i = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 15
  %iface60.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 6
  %41 = ptrtoint ptr %iface60.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %iface60.i, align 8
  %conv61.i = zext i8 %42 to i32
  %altsetting62.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  %43 = ptrtoint ptr %altsetting62.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %altsetting62.i, align 1
  %conv63.i = zext i8 %44 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev59.i, ptr noundef nonnull @.str.11, i32 noundef %conv61.i, i32 noundef %conv63.i, i32 noundef %sample_width.1.i, i32 noundef %sample_bytes.1.i) #10
  br label %if.end65.i

if.end65.i:                                       ; preds = %do.end57.i, %if.else.i.if.end65.i_crit_edge
  %45 = zext i8 %sample_bytes.1.in.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %sample_bytes.1.in.i, label %do.end88.i [
    i8 1, label %sw.bb66.i
    i8 2, label %sw.bb68.i
    i8 3, label %if.end65.i.sw.bb75.i_crit_edge
    i8 4, label %sw.bb83.i
  ]

if.end65.i.sw.bb75.i_crit_edge:                   ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb75.i

sw.bb66.i:                                        ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  %or67.i = or i64 %pcm_formats.2.i, 1
  br label %if.end96.i

sw.bb68.i:                                        ; preds = %if.end65.i
  %call.i = tail call i32 @snd_usb_is_big_endian_format(ptr noundef %chip, ptr noundef %fp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool69.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool69.not.i, label %if.else72.i, label %if.then70.i

if.then70.i:                                      ; preds = %sw.bb68.i
  call void @__sanitizer_cov_trace_pc() #9
  %or71.i = or i64 %pcm_formats.2.i, 8
  br label %if.end96.i

if.else72.i:                                      ; preds = %sw.bb68.i
  call void @__sanitizer_cov_trace_pc() #9
  %or73.i = or i64 %pcm_formats.2.i, 4
  br label %if.end96.i

sw.bb75.i:                                        ; preds = %if.end65.i.sw.bb75.i_crit_edge, %land.lhs.true45.i.sw.bb75.i_crit_edge
  %call76.i = tail call i32 @snd_usb_is_big_endian_format(ptr noundef %chip, ptr noundef %fp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool77.not.i = icmp eq i32 %call76.i, 0
  br i1 %tobool77.not.i, label %if.else80.i, label %if.then78.i

if.then78.i:                                      ; preds = %sw.bb75.i
  call void @__sanitizer_cov_trace_pc() #9
  %or79.i = or i64 %pcm_formats.2.i, 8589934592
  br label %if.end96.i

if.else80.i:                                      ; preds = %sw.bb75.i
  call void @__sanitizer_cov_trace_pc() #9
  %or81.i = or i64 %pcm_formats.2.i, 4294967296
  br label %if.end96.i

sw.bb83.i:                                        ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  %or84.i = or i64 %pcm_formats.2.i, 1024
  br label %if.end96.i

do.end88.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev89.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %46 = ptrtoint ptr %dev89.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev89.i, align 4
  %dev90.i = getelementptr inbounds %struct.usb_device, ptr %47, i32 0, i32 15
  %iface91.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 6
  %48 = ptrtoint ptr %iface91.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %iface91.i, align 8
  %conv92.i = zext i8 %49 to i32
  %altsetting93.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  %50 = ptrtoint ptr %altsetting93.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %altsetting93.i, align 1
  %conv94.i = zext i8 %51 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev90.i, ptr noundef nonnull @.str.14, i32 noundef %conv92.i, i32 noundef %conv94.i, i32 noundef %sample_width.1.i, i32 noundef %sample_bytes.1.i) #10
  br label %if.end96.i

if.end96.i:                                       ; preds = %do.end88.i, %sw.bb83.i, %if.else80.i, %if.then78.i, %if.else72.i, %if.then70.i, %sw.bb66.i, %if.end35.i.if.end96.i_crit_edge
  %format.addr.2216.i = phi i64 [ %format.addr.2215.i, %do.end88.i ], [ %format.addr.2215.i, %sw.bb83.i ], [ %format.addr.2215.i, %if.then78.i ], [ %format.addr.2215.i, %if.else80.i ], [ %format.addr.2215.i, %if.then70.i ], [ %format.addr.2215.i, %if.else72.i ], [ %format.addr.2215.i, %sw.bb66.i ], [ %format.addr.1.i, %if.end35.i.if.end96.i_crit_edge ]
  %sample_bytes.3.i = phi i32 [ %sample_bytes.1.i, %do.end88.i ], [ 4, %sw.bb83.i ], [ 3, %if.then78.i ], [ 3, %if.else80.i ], [ 2, %if.then70.i ], [ 2, %if.else72.i ], [ 1, %sw.bb66.i ], [ %sample_bytes.1.i, %if.end35.i.if.end96.i_crit_edge ]
  %pcm_formats.3.i = phi i64 [ %pcm_formats.2.i, %do.end88.i ], [ %or84.i, %sw.bb83.i ], [ %or79.i, %if.then78.i ], [ %or81.i, %if.else80.i ], [ %or71.i, %if.then70.i ], [ %or73.i, %if.else72.i ], [ %or67.i, %sw.bb66.i ], [ %pcm_formats.2.i, %if.end35.i.if.end96.i_crit_edge ]
  %and97.i = and i64 %format.addr.2216.i, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and97.i)
  %tobool98.not.i = icmp eq i64 %and97.i, 0
  br i1 %tobool98.not.i, label %if.end96.i.if.end108.i_crit_edge, label %if.then99.i

if.end96.i.if.end108.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108.i

if.then99.i:                                      ; preds = %if.end96.i
  %usb_id100.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 4
  %52 = ptrtoint ptr %usb_id100.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %usb_id100.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83509761, i32 %53)
  %cmp101.i = icmp eq i32 %53, 83509761
  br i1 %cmp101.i, label %if.then103.i, label %if.else105.i

if.then103.i:                                     ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #9
  %or104.i = or i64 %pcm_formats.3.i, 1
  br label %if.end108.i

if.else105.i:                                     ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #9
  %or106.i = or i64 %pcm_formats.3.i, 2
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.else105.i, %if.then103.i, %if.end96.i.if.end108.i_crit_edge
  %pcm_formats.4.i = phi i64 [ %or104.i, %if.then103.i ], [ %or106.i, %if.else105.i ], [ %pcm_formats.3.i, %if.end96.i.if.end108.i_crit_edge ]
  %and109.i = shl i64 %format.addr.2216.i, 11
  %54 = and i64 %and109.i, 16384
  %and114.i = shl i64 %format.addr.2216.i, 17
  %55 = and i64 %and114.i, 2097152
  %and119.i = shl i64 %format.addr.2216.i, 15
  %56 = and i64 %and119.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 64, i64 %format.addr.2216.i)
  %tobool125.not.i = icmp ult i64 %format.addr.2216.i, 64
  br i1 %tobool125.not.i, label %if.end108.i.parse_audio_format_i_type.exit_crit_edge, label %do.end129.i

if.end108.i.parse_audio_format_i_type.exit_crit_edge: ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_audio_format_i_type.exit

do.end129.i:                                      ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev130.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %57 = ptrtoint ptr %dev130.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev130.i, align 4
  %dev131.i = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 15
  %iface132.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 6
  %59 = ptrtoint ptr %iface132.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %iface132.i, align 8
  %conv133.i = zext i8 %60 to i32
  %altsetting134.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  %61 = ptrtoint ptr %altsetting134.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %altsetting134.i, align 1
  %conv135.i = zext i8 %62 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev131.i, ptr noundef nonnull @.str.17, i32 noundef %conv133.i, i32 noundef %conv135.i, i64 noundef %format.addr.2216.i) #10
  br label %parse_audio_format_i_type.exit

parse_audio_format_i_type.exit:                   ; preds = %do.end129.i, %if.end108.i.parse_audio_format_i_type.exit_crit_edge
  %call137.i = tail call i64 @snd_usb_interface_dsd_format_quirks(ptr noundef %chip, ptr noundef %fp, i32 noundef %sample_bytes.3.i) #7
  %63 = or i64 %55, %54
  %64 = or i64 %63, %56
  %65 = or i64 %64, %pcm_formats.4.i
  %or138.i = or i64 %65, %call137.i
  %formats16 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 1
  %66 = ptrtoint ptr %formats16 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %or138.i, ptr %formats16, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or138.i)
  %tobool.not = icmp eq i64 %or138.i, 0
  br i1 %tobool.not, label %parse_audio_format_i_type.exit.cleanup_crit_edge, label %parse_audio_format_i_type.exit.if.end20_crit_edge

parse_audio_format_i_type.exit.if.end20_crit_edge: ; preds = %parse_audio_format_i_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

parse_audio_format_i_type.exit.cleanup_crit_edge: ; preds = %parse_audio_format_i_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %parse_audio_format_i_type.exit.if.end20_crit_edge, %sw.epilog13
  %67 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %protocol, align 1
  %69 = zext i8 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %68, label %sw.bb24 [
    i8 48, label %if.end20.sw.bb28_crit_edge
    i8 32, label %if.end20.sw.bb28_crit_edge71
  ]

if.end20.sw.bb28_crit_edge71:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end20.sw.bb28_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

sw.bb24:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %bNrChannels = getelementptr inbounds %struct.uac_format_type_i_continuous_descriptor, ptr %_fmt, i32 0, i32 4
  %70 = ptrtoint ptr %bNrChannels to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bNrChannels, align 1
  %conv26 = zext i8 %71 to i32
  %channels = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 2
  %72 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv26, ptr %channels, align 8
  %call27 = tail call fastcc i32 @parse_audio_format_rates_v1(ptr noundef %chip, ptr noundef %fp, ptr noundef %_fmt, i32 noundef 7)
  br label %sw.epilog30

sw.bb28:                                          ; preds = %if.end20.sw.bb28_crit_edge, %if.end20.sw.bb28_crit_edge71
  %call29 = tail call fastcc i32 @parse_audio_format_rates_v2v3(ptr noundef %chip, ptr noundef %fp)
  br label %sw.epilog30

sw.epilog30:                                      ; preds = %sw.bb28, %sw.bb24
  %ret.0 = phi i32 [ %call27, %sw.bb24 ], [ %call29, %sw.bb28 ]
  %channels31 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 2
  %73 = ptrtoint ptr %channels31 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %channels31, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp32 = icmp eq i32 %74, 0
  br i1 %cmp32, label %do.end, label %sw.epilog30.cleanup_crit_edge

sw.epilog30.cleanup_crit_edge:                    ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %75 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev, align 4
  %dev35 = getelementptr inbounds %struct.usb_device, ptr %76, i32 0, i32 15
  %iface = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 6
  %77 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %iface, align 8
  %conv36 = zext i8 %78 to i32
  %altsetting37 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  %79 = ptrtoint ptr %altsetting37 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %altsetting37, align 1
  %conv38 = zext i8 %80 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.5, i32 noundef %conv36, i32 noundef %conv38, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog30.cleanup_crit_edge, %parse_audio_format_i_type.exit.cleanup_crit_edge, %parse_audio_format_i_type.exit.thread
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %parse_audio_format_i_type.exit.cleanup_crit_edge ], [ %ret.0, %sw.epilog30.cleanup_crit_edge ], [ -22, %parse_audio_format_i_type.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_parse_audio_format_v3(ptr noundef %chip, ptr noundef %fp, ptr nocapture noundef readonly %as, i32 noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bmFormats = getelementptr inbounds %struct.uac3_as_header_descriptor, ptr %as, i32 0, i32 6
  %0 = ptrtoint ptr %bmFormats to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %bmFormats, align 1
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  %and = and i64 %2, 127
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %spec.select = select i1 %tobool.not, i32 3, i32 1
  %3 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 3
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %3, align 4
  %call = tail call fastcc i32 @parse_audio_format_i(ptr noundef %chip, ptr noundef %fp, i64 noundef %2, ptr noundef %as)
  %5 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_audio_format_rates_v1(ptr nocapture noundef readonly %chip, ptr noundef %fp, ptr nocapture noundef readonly %fmt, i32 noundef %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %fmt, i32 %offset
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fmt, align 1
  %conv2 = zext i8 %3 to i32
  %add = add i32 %offset, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %conv.op = mul nuw nsw i32 %conv, 3
  %mul = select i1 %tobool.not, i32 6, i32 %conv.op
  %add3 = add i32 %mul, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %conv2)
  %cmp = icmp sgt i32 %add3, %conv2
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %iface = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 6
  %6 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %iface, align 8
  %conv6 = zext i8 %7 to i32
  %altsetting = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  %8 = ptrtoint ptr %altsetting to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %altsetting, align 1
  %conv7 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.19, i32 noundef %conv6, i32 noundef %conv7) #10
  br label %cleanup136

if.end:                                           ; preds = %entry
  br i1 %tobool.not, label %if.else, label %if.end7.i

if.end7.i:                                        ; preds = %if.end
  %10 = shl nuw nsw i32 %conv, 2
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #11
  %rate_table = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 25
  %11 = ptrtoint ptr %rate_table to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i, ptr %rate_table, align 4
  %cmp11 = icmp eq ptr %call8.i, null
  br i1 %cmp11, label %if.end7.i.cleanup136_crit_edge, label %for.body.lr.ph

if.end7.i.cleanup136_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup136

for.body.lr.ph:                                   ; preds = %if.end7.i
  %nr_rates15 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 24
  %12 = ptrtoint ptr %nr_rates15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %nr_rates15, align 8
  %usb_id63 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp34 = icmp eq i8 %1, 1
  %altsetting51 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  %maxpacksize = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 20
  %umax = call i32 @llvm.umax.i32(i32 %conv, i32 1)
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %idx.0218 = phi i32 [ %add, %for.body.lr.ph ], [ %add76, %cleanup.for.body_crit_edge ]
  %r.0217 = phi i32 [ 0, %for.body.lr.ph ], [ %inc75, %cleanup.for.body_crit_edge ]
  %arrayidx19 = getelementptr i8, ptr %fmt, i32 %idx.0218
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %14 to i32
  %arrayidx22 = getelementptr i8, ptr %arrayidx19, i32 1
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %16 to i32
  %shl = shl nuw nsw i32 %conv23, 8
  %or = or i32 %shl, %conv20
  %arrayidx25 = getelementptr i8, ptr %arrayidx19, i32 2
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %18 to i32
  %shl27 = shl nuw nsw i32 %conv26, 16
  %or28 = or i32 %or, %shl27
  %19 = zext i32 %or28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %or28, label %for.body.if.end71_crit_edge [
    i32 0, label %for.body.cleanup_crit_edge
    i32 48000, label %land.lhs.true
    i32 16000, label %land.lhs.true62
  ]

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.if.end71_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

land.lhs.true:                                    ; preds = %for.body
  br i1 %cmp34, label %land.lhs.true36, label %land.lhs.true.if.end71_crit_edge

land.lhs.true.if.end71_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

land.lhs.true36:                                  ; preds = %land.lhs.true
  %20 = ptrtoint ptr %usb_id63 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %usb_id63, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %21, label %land.lhs.true36.if.end71_crit_edge [
    i32 227279361, label %land.lhs.true36.land.lhs.true50_crit_edge
    i32 227279106, label %land.lhs.true36.land.lhs.true50_crit_edge219
    i32 227278968, label %land.lhs.true36.land.lhs.true50_crit_edge220
    i32 214761649, label %land.lhs.true36.land.lhs.true50_crit_edge221
  ]

land.lhs.true36.land.lhs.true50_crit_edge221:     ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true50

land.lhs.true36.land.lhs.true50_crit_edge220:     ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true50

land.lhs.true36.land.lhs.true50_crit_edge219:     ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true50

land.lhs.true36.land.lhs.true50_crit_edge:        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true50

land.lhs.true36.if.end71_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

land.lhs.true50:                                  ; preds = %land.lhs.true36.land.lhs.true50_crit_edge, %land.lhs.true36.land.lhs.true50_crit_edge219, %land.lhs.true36.land.lhs.true50_crit_edge220, %land.lhs.true36.land.lhs.true50_crit_edge221
  %23 = ptrtoint ptr %altsetting51 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %altsetting51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %24)
  %cmp53 = icmp eq i8 %24, 5
  br i1 %cmp53, label %land.lhs.true55, label %land.lhs.true50.if.end71_crit_edge

land.lhs.true50.if.end71_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

land.lhs.true55:                                  ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %maxpacksize to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %maxpacksize, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 392, i32 %26)
  %cmp56 = icmp eq i32 %26, 392
  %spec.select194 = select i1 %cmp56, i32 96000, i32 48000
  br label %if.end71

land.lhs.true62:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %usb_id63 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %usb_id63, align 4
  %29 = add i32 %28, -69091428
  %switch.and = and i32 %29, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %30 = select i1 %switch.selectcmp, i32 8000, i32 16000
  br label %if.end71

if.end71:                                         ; preds = %land.lhs.true62, %land.lhs.true55, %land.lhs.true50.if.end71_crit_edge, %land.lhs.true36.if.end71_crit_edge, %land.lhs.true.if.end71_crit_edge, %for.body.if.end71_crit_edge
  %rate.1 = phi i32 [ %30, %land.lhs.true62 ], [ %spec.select194, %land.lhs.true55 ], [ 48000, %land.lhs.true36.if.end71_crit_edge ], [ 48000, %land.lhs.true.if.end71_crit_edge ], [ 48000, %land.lhs.true50.if.end71_crit_edge ], [ %or28, %for.body.if.end71_crit_edge ]
  %31 = ptrtoint ptr %rate_table to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rate_table, align 4
  %33 = ptrtoint ptr %nr_rates15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_rates15, align 8
  %inc = add i32 %34, 1
  store i32 %inc, ptr %nr_rates15, align 8
  %arrayidx74 = getelementptr i32, ptr %32, i32 %34
  %35 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %rate.1, ptr %arrayidx74, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %for.body.cleanup_crit_edge
  %inc75 = add nuw nsw i32 %r.0217, 1
  %add76 = add i32 %idx.0218, 3
  %exitcond.not = icmp eq i32 %inc75, %umax
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup
  %36 = ptrtoint ptr %nr_rates15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr_rates15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool78.not = icmp eq i32 %37, 0
  br i1 %tobool78.not, label %do.end82, label %for.body.lr.ph.i

do.end82:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev83 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %38 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev83, align 4
  %dev84 = getelementptr inbounds %struct.usb_device, ptr %39, i32 0, i32 15
  %iface85 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 6
  %40 = ptrtoint ptr %iface85 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %iface85, align 8
  %conv86 = zext i8 %41 to i32
  %altsetting87 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  %42 = ptrtoint ptr %altsetting87 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %altsetting87, align 1
  %conv88 = zext i8 %43 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev84, ptr noundef nonnull @.str.22, i32 noundef %conv86, i32 noundef %conv88) #10
  br label %cleanup136

for.body.lr.ph.i:                                 ; preds = %for.end
  %rate_min.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 22
  %44 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2147483647, ptr %rate_min.i, align 8
  %rate_max.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 23
  %45 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %rate_max.i, align 4
  %rates.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 21
  %46 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %rates.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %47 = ptrtoint ptr %rate_table to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rate_table, align 4
  %arrayidx.i = getelementptr i32, ptr %48, i32 %i.033.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i, align 4
  %51 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rate_min.i, align 8
  %53 = tail call i32 @llvm.umin.i32(i32 %52, i32 %50) #7
  %54 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %rate_min.i, align 8
  %55 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rate_max.i, align 4
  %57 = tail call i32 @llvm.umax.i32(i32 %56, i32 %50) #7
  %58 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %rate_max.i, align 4
  %call.i = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %50) #7
  %59 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rates.i, align 4
  %or.i = or i32 %60, %call.i
  store i32 %or.i, ptr %rates.i, align 4
  %inc.i = add nuw i32 %i.033.i, 1
  %61 = ptrtoint ptr %nr_rates15 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr_rates15, align 8
  %cmp.i = icmp ult i32 %inc.i, %62
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end124_crit_edge

for.body.i.if.end124_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rates = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 21
  %63 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1073741824, ptr %rates, align 4
  %arrayidx95 = getelementptr i8, ptr %fmt, i32 %add
  %64 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %65 to i32
  %arrayidx99 = getelementptr i8, ptr %arrayidx95, i32 1
  %66 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %67 to i32
  %shl101 = shl nuw nsw i32 %conv100, 8
  %or102 = or i32 %shl101, %conv96
  %arrayidx105 = getelementptr i8, ptr %arrayidx95, i32 2
  %68 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %69 to i32
  %shl107 = shl nuw nsw i32 %conv106, 16
  %or108 = or i32 %or102, %shl107
  %rate_min = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 22
  %70 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or108, ptr %rate_min, align 8
  %add109 = add i32 %offset, 4
  %arrayidx110 = getelementptr i8, ptr %fmt, i32 %add109
  %71 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %72 to i32
  %arrayidx114 = getelementptr i8, ptr %arrayidx110, i32 1
  %73 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx114, align 1
  %conv115 = zext i8 %74 to i32
  %shl116 = shl nuw nsw i32 %conv115, 8
  %or117 = or i32 %shl116, %conv111
  %arrayidx120 = getelementptr i8, ptr %arrayidx110, i32 2
  %75 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx120, align 1
  %conv121 = zext i8 %76 to i32
  %shl122 = shl nuw nsw i32 %conv121, 16
  %or123 = or i32 %or117, %shl122
  %rate_max = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 23
  %77 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or123, ptr %rate_max, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.else, %for.body.i.if.end124_crit_edge
  %usb_id125 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 4
  %78 = ptrtoint ptr %usb_id125 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %usb_id125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 185467659, i32 %79)
  %cmp126 = icmp eq i32 %79, 185467659
  br i1 %cmp126, label %if.then128, label %if.end124.cleanup136_crit_edge

if.end124.cleanup136_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup136

if.then128:                                       ; preds = %if.end124
  %nr_rates129 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 24
  %80 = ptrtoint ptr %nr_rates129 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nr_rates129, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp130.not = icmp eq i32 %81, 1
  br i1 %cmp130.not, label %if.then128.cleanup136_crit_edge, label %if.then132

if.then128.cleanup136_crit_edge:                  ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup136

if.then132:                                       ; preds = %if.then128
  %rate_table.i195 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 25
  %82 = ptrtoint ptr %rate_table.i195 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rate_table.i195, align 4
  tail call void @kfree(ptr noundef %83) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %84 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i196 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %84, i32 noundef 3264, i32 noundef 4) #12
  %85 = ptrtoint ptr %rate_table.i195 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call7.i.i196, ptr %rate_table.i195, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i196, null
  br i1 %tobool.not.i, label %if.then132.cleanup136_crit_edge, label %if.end.i201

if.then132.cleanup136_crit_edge:                  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup136

if.end.i201:                                      ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %nr_rates129 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %nr_rates129, align 8
  %rate_min.i198 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 22
  %87 = ptrtoint ptr %rate_min.i198 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 48000, ptr %rate_min.i198, align 8
  %rate_max.i199 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 23
  %88 = ptrtoint ptr %rate_max.i199 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 48000, ptr %rate_max.i199, align 4
  %rates.i200 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 21
  %89 = ptrtoint ptr %rates.i200 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 128, ptr %rates.i200, align 4
  %90 = ptrtoint ptr %call7.i.i196 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 48000, ptr %call7.i.i196, align 8
  br label %cleanup136

cleanup136:                                       ; preds = %if.end.i201, %if.then132.cleanup136_crit_edge, %if.then128.cleanup136_crit_edge, %if.end124.cleanup136_crit_edge, %do.end82, %if.end7.i.cleanup136_crit_edge, %do.end
  %retval.1 = phi i32 [ -22, %do.end ], [ 0, %if.then128.cleanup136_crit_edge ], [ 0, %if.end124.cleanup136_crit_edge ], [ 0, %if.end.i201 ], [ -12, %if.then132.cleanup136_crit_edge ], [ -12, %if.end7.i.cleanup136_crit_edge ], [ -22, %do.end82 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_audio_format_rates_v2v3(ptr noundef %chip, ptr noundef %fp) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp) #7
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tmp, align 1, !annotation !93
  %3 = getelementptr inbounds [2 x i8], ptr %tmp, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !93
  %call = tail call i32 @snd_usb_clock_find_source(ptr noundef %chip, ptr noundef %fp, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  %shl.i = shl i32 %6, 8
  %or4 = or i32 %shl.i, -2147483520
  %ctrl_intf.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 28
  %7 = ptrtoint ptr %ctrl_intf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl_intf.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv.i = zext i8 %10 to i32
  %shl = shl i32 %call, 8
  %or6 = or i32 %shl, %conv.i
  %conv = trunc i32 %or6 to i16
  %call7 = call i32 @snd_usb_ctl_msg(ptr noundef %1, i32 noundef %or4, i8 noundef zeroext 2, i8 noundef zeroext -95, i16 noundef zeroext 256, i16 noundef zeroext %conv, ptr noundef nonnull %tmp, i16 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end28

if.then10:                                        ; preds = %if.end
  %usb_id.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 4
  %11 = ptrtoint ptr %usb_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %usb_id.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %12, label %do.end17 [
    i32 239157825, label %if.then10.sw.bb.i_crit_edge
    i32 239157826, label %if.then10.sw.bb.i_crit_edge165
    i32 239157828, label %if.then10.sw.bb.i_crit_edge166
    i32 239157830, label %if.then10.sw.bb.i_crit_edge167
    i32 239157843, label %if.then10.sw.bb.i_crit_edge168
    i32 239157831, label %if.then10.sw.bb.i_crit_edge169
    i32 239157832, label %if.then10.sw.bb.i_crit_edge170
    i32 239157833, label %if.then10.sw.bb.i_crit_edge171
    i32 239157834, label %if.then10.sw.bb.i_crit_edge172
    i32 435617809, label %if.then10.sw.bb.i_crit_edge173
  ]

if.then10.sw.bb.i_crit_edge173:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then10.sw.bb.i_crit_edge172:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then10.sw.bb.i_crit_edge171:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then10.sw.bb.i_crit_edge170:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then10.sw.bb.i_crit_edge169:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then10.sw.bb.i_crit_edge168:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then10.sw.bb.i_crit_edge167:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then10.sw.bb.i_crit_edge166:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then10.sw.bb.i_crit_edge165:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then10.sw.bb.i_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then10.sw.bb.i_crit_edge, %if.then10.sw.bb.i_crit_edge165, %if.then10.sw.bb.i_crit_edge166, %if.then10.sw.bb.i_crit_edge167, %if.then10.sw.bb.i_crit_edge168, %if.then10.sw.bb.i_crit_edge169, %if.then10.sw.bb.i_crit_edge170, %if.then10.sw.bb.i_crit_edge171, %if.then10.sw.bb.i_crit_edge172, %if.then10.sw.bb.i_crit_edge173
  %rate_table.i.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 25
  %14 = ptrtoint ptr %rate_table.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rate_table.i.i, align 4
  call void @kfree(ptr noundef %15) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 4) #12
  %17 = ptrtoint ptr %rate_table.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i, ptr %rate_table.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %sw.bb.i.cleanup_crit_edge, label %do.end25

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end17:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %dev18 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef %call) #10
  br label %cleanup

do.end25:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr_rates.i.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 24
  %18 = ptrtoint ptr %nr_rates.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %nr_rates.i.i, align 8
  %rate_min.i.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 22
  %19 = ptrtoint ptr %rate_min.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 48000, ptr %rate_min.i.i, align 8
  %rate_max.i.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 23
  %20 = ptrtoint ptr %rate_max.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 48000, ptr %rate_max.i.i, align 4
  %rates.i.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 21
  %21 = ptrtoint ptr %rates.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 128, ptr %rates.i.i, align 4
  %22 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 48000, ptr %call7.i.i.i, align 8
  %dev26 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev26, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25, i32 noundef %call) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %3, align 1
  %conv29 = zext i8 %24 to i32
  %shl30 = shl nuw nsw i32 %conv29, 8
  %25 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tmp, align 1
  %conv32 = zext i8 %26 to i32
  %or33 = or i32 %shl30, %conv32
  %mul = mul nuw nsw i32 %or33, 12
  %add = or i32 %mul, 2
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end28.cleanup_crit_edge, label %if.end36

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 8
  %shl.i127 = shl i32 %28, 8
  %or39 = or i32 %shl.i127, -2147483520
  %29 = ptrtoint ptr %ctrl_intf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctrl_intf.i, align 4
  %bInterfaceNumber.i129 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %bInterfaceNumber.i129 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bInterfaceNumber.i129, align 2
  %conv.i130 = zext i8 %32 to i32
  %or42 = or i32 %shl, %conv.i130
  %conv43 = trunc i32 %or42 to i16
  %conv44 = trunc i32 %add to i16
  %call45 = call i32 @snd_usb_ctl_msg(ptr noundef %1, i32 noundef %or39, i8 noundef zeroext 2, i8 noundef zeroext -95, i16 noundef zeroext 256, i16 noundef zeroext %conv43, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %do.end51, label %if.end53

do.end51:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %dev52 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev52, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.25, i32 noundef %call) #10
  br label %err_free

if.end53:                                         ; preds = %if.end36
  %rate_table = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 25
  %33 = ptrtoint ptr %rate_table to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rate_table, align 4
  call void @kfree(ptr noundef %34) #7
  %35 = ptrtoint ptr %rate_table to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %rate_table, align 4
  %call55 = call fastcc i32 @parse_uac2_sample_rate_range(ptr noundef %chip, ptr noundef %fp, i32 noundef %or33, ptr noundef nonnull %call9.i.i)
  %nr_rates = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 24
  %36 = ptrtoint ptr %nr_rates to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call55, ptr %nr_rates, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp57 = icmp eq i32 %call55, 0
  br i1 %cmp57, label %if.end53.err_free_crit_edge, label %if.end60

if.end53.err_free_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.end60:                                         ; preds = %if.end53
  %37 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call55, i32 4) #7
  %38 = extractvalue { i32, i1 } %37, 1
  br i1 %38, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !94

kmalloc_array.exit.thread:                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %rate_table to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %rate_table, align 4
  br label %err_free

if.end7.i:                                        ; preds = %if.end60
  %40 = extractvalue { i32, i1 } %37, 0
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %40, i32 noundef 3264) #11
  %41 = ptrtoint ptr %rate_table to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call8.i, ptr %rate_table, align 4
  %tobool65.not = icmp eq ptr %call8.i, null
  br i1 %tobool65.not, label %if.end7.i.err_free_crit_edge, label %if.end67

if.end7.i.err_free_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.end67:                                         ; preds = %if.end7.i
  %call68 = call fastcc i32 @parse_uac2_sample_rate_range(ptr noundef %chip, ptr noundef %fp, i32 noundef %or33, ptr noundef nonnull %call9.i.i)
  %call69 = call fastcc i32 @validate_sample_rate_table_v2v3(ptr noundef %chip, ptr noundef %fp, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.end67.err_free_crit_edge, label %if.end73

if.end67.err_free_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.end73:                                         ; preds = %if.end67
  %rate_min.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 22
  %42 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2147483647, ptr %rate_min.i, align 8
  %rate_max.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 23
  %43 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %rate_max.i, align 4
  %rates.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 21
  %44 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %rates.i, align 4
  %45 = ptrtoint ptr %nr_rates to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr_rates, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp32.not.i = icmp eq i32 %46, 0
  br i1 %cmp32.not.i, label %if.end73.err_free_crit_edge, label %if.end73.for.body.i_crit_edge

if.end73.for.body.i_crit_edge:                    ; preds = %if.end73
  br label %for.body.i

if.end73.err_free_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end73.for.body.i_crit_edge
  %i.033.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end73.for.body.i_crit_edge ]
  %47 = ptrtoint ptr %rate_table to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rate_table, align 4
  %arrayidx.i = getelementptr i32, ptr %48, i32 %i.033.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i, align 4
  %51 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rate_min.i, align 8
  %53 = call i32 @llvm.umin.i32(i32 %52, i32 %50) #7
  %54 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %rate_min.i, align 8
  %55 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rate_max.i, align 4
  %57 = call i32 @llvm.umax.i32(i32 %56, i32 %50) #7
  %58 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %rate_max.i, align 4
  %call.i = call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %50) #7
  %59 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rates.i, align 4
  %or.i = or i32 %60, %call.i
  store i32 %or.i, ptr %rates.i, align 4
  %inc.i = add nuw i32 %i.033.i, 1
  %61 = ptrtoint ptr %nr_rates to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr_rates, align 8
  %cmp.i = icmp ult i32 %inc.i, %62
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.err_free_crit_edge

for.body.i.err_free_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

err_free:                                         ; preds = %for.body.i.err_free_crit_edge, %if.end73.err_free_crit_edge, %if.end67.err_free_crit_edge, %if.end7.i.err_free_crit_edge, %kmalloc_array.exit.thread, %if.end53.err_free_crit_edge, %do.end51
  %ret.0 = phi i32 [ -22, %do.end51 ], [ %call69, %if.end67.err_free_crit_edge ], [ 0, %if.end53.err_free_crit_edge ], [ -12, %if.end7.i.err_free_crit_edge ], [ -12, %kmalloc_array.exit.thread ], [ %call69, %if.end73.err_free_crit_edge ], [ %call69, %for.body.i.err_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end28.cleanup_crit_edge, %do.end25, %do.end17, %sw.bb.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end25 ], [ 0, %do.end ], [ %call7, %do.end17 ], [ %ret.0, %err_free ], [ -12, %if.end28.cleanup_crit_edge ], [ -12, %sw.bb.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_is_big_endian_format(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @snd_usb_interface_dsd_format_quirks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_clock_find_source(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_ctl_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_uac2_sample_rate_range(ptr nocapture noundef readonly %chip, ptr nocapture noundef %fp, i32 noundef %nr_triplets, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_triplets)
  %cmp190 = icmp sgt i32 %nr_triplets, 0
  br i1 %cmp190, label %for.body.lr.ph, label %entry.cleanup119_crit_edge

entry.cleanup119_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup119

for.body.lr.ph:                                   ; preds = %entry
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 4
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %iface1.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 6
  %altset_idx.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 9
  %altsetting40.i = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  %rate_table = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 25
  br label %for.body

for.body:                                         ; preds = %for.inc116.for.body_crit_edge, %for.body.lr.ph
  %nr_rates.0192 = phi i32 [ 0, %for.body.lr.ph ], [ %nr_rates.4.ph, %for.inc116.for.body_crit_edge ]
  %i.0191 = phi i32 [ 0, %for.body.lr.ph ], [ %inc117, %for.inc116.for.body_crit_edge ]
  %mul = mul i32 %i.0191, 12
  %add = or i32 %mul, 2
  %arrayidx = getelementptr i8, ptr %data, i32 %add
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %arrayidx4 = getelementptr i8, ptr %arrayidx, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv5, 8
  %or = or i32 %shl, %conv
  %arrayidx9 = getelementptr i8, ptr %arrayidx, i32 2
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %5 to i32
  %shl11 = shl nuw nsw i32 %conv10, 16
  %or12 = or i32 %or, %shl11
  %arrayidx16 = getelementptr i8, ptr %arrayidx, i32 3
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %7 to i32
  %shl18 = shl nuw i32 %conv17, 24
  %or19 = or i32 %or12, %shl18
  %add21 = add i32 %mul, 6
  %arrayidx22 = getelementptr i8, ptr %data, i32 %add21
  %8 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %9 to i32
  %arrayidx27 = getelementptr i8, ptr %arrayidx22, i32 1
  %10 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %11 to i32
  %shl29 = shl nuw nsw i32 %conv28, 8
  %or30 = or i32 %shl29, %conv23
  %arrayidx34 = getelementptr i8, ptr %arrayidx22, i32 2
  %12 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %13 to i32
  %shl36 = shl nuw nsw i32 %conv35, 16
  %or37 = or i32 %or30, %shl36
  %arrayidx41 = getelementptr i8, ptr %arrayidx22, i32 3
  %14 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %15 to i32
  %shl43 = shl nuw i32 %conv42, 24
  %or44 = or i32 %or37, %shl43
  %add46 = add i32 %mul, 10
  %arrayidx47 = getelementptr i8, ptr %data, i32 %add46
  %16 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %17 to i32
  %arrayidx52 = getelementptr i8, ptr %arrayidx47, i32 1
  %18 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %19 to i32
  %shl54 = shl nuw nsw i32 %conv53, 8
  %or55 = or i32 %shl54, %conv48
  %arrayidx59 = getelementptr i8, ptr %arrayidx47, i32 2
  %20 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %21 to i32
  %shl61 = shl nuw nsw i32 %conv60, 16
  %or62 = or i32 %or55, %shl61
  %arrayidx66 = getelementptr i8, ptr %arrayidx47, i32 3
  %22 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %23 to i32
  %shl68 = shl nuw i32 %conv67, 24
  %or69 = or i32 %or62, %shl68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or44)
  %cmp70 = icmp slt i32 %or44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19)
  %cmp72 = icmp slt i32 %or19, 0
  %or.cond = select i1 %cmp70, i1 true, i1 %cmp72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or69)
  %cmp75 = icmp slt i32 %or69, 0
  %or.cond170 = select i1 %or.cond, i1 true, i1 %cmp75
  call void @__sanitizer_cov_trace_cmp4(i32 %or44, i32 %or19)
  %cmp78 = icmp slt i32 %or44, %or19
  %or.cond171 = select i1 %or.cond170, i1 true, i1 %cmp78
  br i1 %or.cond171, label %for.body.for.inc116_crit_edge, label %if.end

for.body.for.inc116_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc116

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %or69)
  %cmp80 = icmp eq i32 %or69, 1
  br i1 %cmp80, label %cleanup, label %for.cond84.preheader

for.cond84.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %or19, i32 %or44)
  %cmp85.not182 = icmp ugt i32 %or19, %or44
  br i1 %cmp85.not182, label %for.cond84.preheader.for.inc116_crit_edge, label %for.body87.lr.ph

for.cond84.preheader.for.inc116_crit_edge:        ; preds = %for.cond84.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc116

for.body87.lr.ph:                                 ; preds = %for.cond84.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or69)
  %cmp108 = icmp eq i32 %or69, 0
  br label %for.body87

for.body87:                                       ; preds = %skip_rate.for.body87_crit_edge, %for.body87.lr.ph
  %rate.0185 = phi i32 [ %or19, %for.body87.lr.ph ], [ %add112, %skip_rate.for.body87_crit_edge ]
  %nr_rates.1183 = phi i32 [ %nr_rates.0192, %for.body87.lr.ph ], [ %nr_rates.2, %skip_rate.for.body87_crit_edge ]
  %24 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %usb_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 424608012, i32 %25)
  %cmp88 = icmp eq i32 %25, 424608012
  br i1 %cmp88, label %land.lhs.true, label %if.end91

land.lhs.true:                                    ; preds = %for.body87
  %26 = ptrtoint ptr %altsetting40.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %altsetting40.i, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %27, label %land.lhs.true.skip_rate_crit_edge [
    i8 1, label %s1810c_valid_sample_rate.exit
    i8 2, label %sw.bb2.i
    i8 3, label %sw.bb7.i
  ]

land.lhs.true.skip_rate_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_rate

sw.bb2.i:                                         ; preds = %land.lhs.true
  %29 = zext i32 %rate.0185 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %rate.0185, label %sw.bb2.i.skip_rate_crit_edge [
    i32 96000, label %sw.bb2.i.if.end98_crit_edge
    i32 88200, label %sw.bb2.i.if.end98_crit_edge205
  ]

sw.bb2.i.if.end98_crit_edge205:                   ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

sw.bb2.i.if.end98_crit_edge:                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

sw.bb2.i.skip_rate_crit_edge:                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_rate

sw.bb7.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 176399, i32 %rate.0185)
  %cmp8.i = icmp ugt i32 %rate.0185, 176399
  br i1 %cmp8.i, label %sw.bb7.i.if.end98_crit_edge, label %sw.bb7.i.skip_rate_crit_edge

sw.bb7.i.skip_rate_crit_edge:                     ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_rate

sw.bb7.i.if.end98_crit_edge:                      ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

s1810c_valid_sample_rate.exit:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 48001, i32 %rate.0185)
  %cmp.i = icmp ult i32 %rate.0185, 48001
  br i1 %cmp.i, label %s1810c_valid_sample_rate.exit.if.end98_crit_edge, label %s1810c_valid_sample_rate.exit.skip_rate_crit_edge

s1810c_valid_sample_rate.exit.skip_rate_crit_edge: ; preds = %s1810c_valid_sample_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_rate

s1810c_valid_sample_rate.exit.if.end98_crit_edge: ; preds = %s1810c_valid_sample_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.end91:                                         ; preds = %for.body87
  %shr.mask = and i32 %25, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 305463296, i32 %shr.mask)
  %cmp93 = icmp eq i32 %shr.mask, 305463296
  br i1 %cmp93, label %land.lhs.true95, label %if.end91.if.end98_crit_edge

if.end91.if.end98_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

land.lhs.true95:                                  ; preds = %if.end91
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %32 = ptrtoint ptr %iface1.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %iface1.i, align 8
  %conv.i = zext i8 %33 to i32
  %call.i = tail call ptr @usb_ifnum_to_if(ptr noundef %31, i32 noundef %conv.i) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %land.lhs.true95.if.end98_crit_edge, label %if.end.i

land.lhs.true95.if.end98_crit_edge:               ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.end.i:                                         ; preds = %land.lhs.true95
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 8
  %36 = ptrtoint ptr %altset_idx.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %altset_idx.i, align 1
  %idxprom.i = zext i8 %37 to i32
  %extra.i = getelementptr %struct.usb_host_interface, ptr %35, i32 %idxprom.i, i32 2
  %38 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %extra.i, align 4
  %extralen.i = getelementptr %struct.usb_host_interface, ptr %35, i32 %idxprom.i, i32 1
  %40 = ptrtoint ptr %extralen.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %extralen.i, align 4
  %call2.i = tail call ptr @snd_usb_find_csint_desc(ptr noundef %39, i32 noundef %41, ptr noundef null, i8 noundef zeroext 2) #7
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.end98_crit_edge, label %if.end5.i

if.end.i.if.end98_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.end5.i:                                        ; preds = %if.end.i
  %42 = ptrtoint ptr %call2.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %call2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %43)
  %cmp.i172 = icmp eq i8 %43, 10
  br i1 %cmp.i172, label %if.then9.i, label %if.end5.i.if.end98_crit_edge

if.end5.i.if.end98_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.then9.i:                                       ; preds = %if.end5.i
  %arrayidx10.i = getelementptr i8, ptr %call2.i, i32 6
  %44 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %45 to i32
  %arrayidx13.i = getelementptr i8, ptr %call2.i, i32 7
  %46 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %47 to i32
  %shl.i = shl nuw nsw i32 %conv14.i, 8
  %or.i = or i32 %shl.i, %conv11.i
  %arrayidx16.i = getelementptr i8, ptr %call2.i, i32 8
  %48 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %49 to i32
  %shl18.i = shl nuw nsw i32 %conv17.i, 16
  %or19.i = or i32 %or.i, %shl18.i
  %arrayidx21.i = getelementptr i8, ptr %call2.i, i32 9
  %50 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %51 to i32
  %shl23.i = shl nuw i32 %conv22.i, 24
  %or24.i = or i32 %or19.i, %shl23.i
  %52 = zext i32 %or24.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %or24.i, label %do.end.i [
    i32 48000, label %if.then9.i.focusrite_valid_sample_rate.exit_crit_edge
    i32 96000, label %if.then9.i.focusrite_valid_sample_rate.exit_crit_edge206
    i32 192000, label %if.then9.i.focusrite_valid_sample_rate.exit_crit_edge207
    i32 384000, label %if.then9.i.focusrite_valid_sample_rate.exit_crit_edge208
  ]

if.then9.i.focusrite_valid_sample_rate.exit_crit_edge208: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %focusrite_valid_sample_rate.exit

if.then9.i.focusrite_valid_sample_rate.exit_crit_edge207: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %focusrite_valid_sample_rate.exit

if.then9.i.focusrite_valid_sample_rate.exit_crit_edge206: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %focusrite_valid_sample_rate.exit

if.then9.i.focusrite_valid_sample_rate.exit_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %focusrite_valid_sample_rate.exit

do.end.i:                                         ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 4
  %dev37.i = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 15
  %55 = ptrtoint ptr %iface1.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %iface1.i, align 8
  %conv39.i = zext i8 %56 to i32
  %57 = ptrtoint ptr %altsetting40.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %altsetting40.i, align 1
  %conv41.i = zext i8 %58 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev37.i, ptr noundef nonnull @.str.37, i32 noundef %conv39.i, i32 noundef %conv41.i, i32 noundef %or24.i) #10
  br label %if.end98

focusrite_valid_sample_rate.exit:                 ; preds = %if.then9.i.focusrite_valid_sample_rate.exit_crit_edge, %if.then9.i.focusrite_valid_sample_rate.exit_crit_edge206, %if.then9.i.focusrite_valid_sample_rate.exit_crit_edge207, %if.then9.i.focusrite_valid_sample_rate.exit_crit_edge208
  call void @__sanitizer_cov_trace_cmp4(i32 %or24.i, i32 %rate.0185)
  %cmp43.i.not = icmp ult i32 %or24.i, %rate.0185
  br i1 %cmp43.i.not, label %focusrite_valid_sample_rate.exit.skip_rate_crit_edge, label %focusrite_valid_sample_rate.exit.if.end98_crit_edge

focusrite_valid_sample_rate.exit.if.end98_crit_edge: ; preds = %focusrite_valid_sample_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

focusrite_valid_sample_rate.exit.skip_rate_crit_edge: ; preds = %focusrite_valid_sample_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_rate

if.end98:                                         ; preds = %focusrite_valid_sample_rate.exit.if.end98_crit_edge, %do.end.i, %if.end5.i.if.end98_crit_edge, %if.end.i.if.end98_crit_edge, %land.lhs.true95.if.end98_crit_edge, %if.end91.if.end98_crit_edge, %s1810c_valid_sample_rate.exit.if.end98_crit_edge, %sw.bb7.i.if.end98_crit_edge, %sw.bb2.i.if.end98_crit_edge, %sw.bb2.i.if.end98_crit_edge205
  %59 = ptrtoint ptr %rate_table to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rate_table, align 4
  %tobool.not = icmp eq ptr %60, null
  br i1 %tobool.not, label %if.end98.if.end102_crit_edge, label %if.then99

if.end98.if.end102_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then99:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx101 = getelementptr i32, ptr %60, i32 %nr_rates.1183
  %61 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %rate.0185, ptr %arrayidx101, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.end98.if.end102_crit_edge
  %inc = add i32 %nr_rates.1183, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %inc)
  %cmp103 = icmp sgt i32 %inc, 1023
  br i1 %cmp103, label %do.end, label %if.end102.skip_rate_crit_edge

if.end102.skip_rate_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_rate

do.end:                                           ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 4
  %dev106 = getelementptr inbounds %struct.usb_device, ptr %63, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev106, ptr noundef nonnull @.str.35) #10
  br label %for.inc116

skip_rate:                                        ; preds = %if.end102.skip_rate_crit_edge, %focusrite_valid_sample_rate.exit.skip_rate_crit_edge, %s1810c_valid_sample_rate.exit.skip_rate_crit_edge, %sw.bb7.i.skip_rate_crit_edge, %sw.bb2.i.skip_rate_crit_edge, %land.lhs.true.skip_rate_crit_edge
  %nr_rates.2 = phi i32 [ %inc, %if.end102.skip_rate_crit_edge ], [ %nr_rates.1183, %focusrite_valid_sample_rate.exit.skip_rate_crit_edge ], [ %nr_rates.1183, %s1810c_valid_sample_rate.exit.skip_rate_crit_edge ], [ %nr_rates.1183, %sw.bb7.i.skip_rate_crit_edge ], [ %nr_rates.1183, %sw.bb2.i.skip_rate_crit_edge ], [ %nr_rates.1183, %land.lhs.true.skip_rate_crit_edge ]
  %add112 = add i32 %rate.0185, %or69
  call void @__sanitizer_cov_trace_cmp4(i32 %add112, i32 %or44)
  %cmp85.not = icmp ugt i32 %add112, %or44
  %or.cond194 = select i1 %cmp108, i1 true, i1 %cmp85.not
  br i1 %or.cond194, label %skip_rate.for.inc116_crit_edge, label %skip_rate.for.body87_crit_edge

skip_rate.for.body87_crit_edge:                   ; preds = %skip_rate
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body87

skip_rate.for.inc116_crit_edge:                   ; preds = %skip_rate
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc116

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rate_min = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 22
  %64 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or19, ptr %rate_min, align 8
  %rate_max = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 23
  %65 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or44, ptr %rate_max, align 4
  %rates = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 21
  %66 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1073741824, ptr %rates, align 4
  br label %cleanup119

for.inc116:                                       ; preds = %skip_rate.for.inc116_crit_edge, %do.end, %for.cond84.preheader.for.inc116_crit_edge, %for.body.for.inc116_crit_edge
  %nr_rates.4.ph = phi i32 [ %inc, %do.end ], [ %nr_rates.0192, %for.body.for.inc116_crit_edge ], [ %nr_rates.0192, %for.cond84.preheader.for.inc116_crit_edge ], [ %nr_rates.2, %skip_rate.for.inc116_crit_edge ]
  %inc117 = add nuw nsw i32 %i.0191, 1
  %exitcond.not = icmp eq i32 %inc117, %nr_triplets
  br i1 %exitcond.not, label %for.inc116.cleanup119_crit_edge, label %for.inc116.for.body_crit_edge

for.inc116.for.body_crit_edge:                    ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc116.cleanup119_crit_edge:                  ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup119

cleanup119:                                       ; preds = %for.inc116.cleanup119_crit_edge, %cleanup, %entry.cleanup119_crit_edge
  %retval.2 = phi i32 [ 0, %cleanup ], [ 0, %entry.cleanup119_crit_edge ], [ %nr_rates.4.ph, %for.inc116.cleanup119_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @validate_sample_rate_table_v2v3(ptr noundef %chip, ptr noundef %fp, i32 noundef %clock) unnamed_addr #0 align 64 {
entry:
  %raw_data.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %quirk_flags = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 12
  %2 = ptrtoint ptr %quirk_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirk_flags, align 4
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %nr_rates2 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 24
  %4 = ptrtoint ptr %nr_rates2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_rates2, align 8
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 4) #7
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.end.cleanup_crit_edge, label %if.end7.i.i, !prof !94

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #11
  %tobool3.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool3.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end5

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end7.i.i
  %iface = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 6
  %9 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %iface, align 8
  %conv = zext i8 %10 to i32
  %call6 = tail call i32 @usb_set_interface(ptr noundef %1, i32 noundef %conv, i32 noundef 0) #7
  %11 = ptrtoint ptr %nr_rates2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_rates2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp89.not = icmp eq i32 %12, 0
  br i1 %cmp89.not, label %if.end5.do.body_crit_edge, label %for.body.lr.ph

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.lr.ph:                                   ; preds = %if.end5
  %rate_table = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 25
  %altsetting = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.091 = phi i32 [ 0, %for.body.lr.ph ], [ %inc23, %for.inc.for.body_crit_edge ]
  %nr_rates.090 = phi i32 [ 0, %for.body.lr.ph ], [ %nr_rates.1, %for.inc.for.body_crit_edge ]
  %13 = ptrtoint ptr %rate_table to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rate_table, align 4
  %arrayidx = getelementptr i32, ptr %14, i32 %i.091
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %call9 = call i32 @snd_usb_set_sample_rate_v2v3(ptr noundef %chip, ptr noundef %fp, i32 noundef %clock, i32 noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %for.body.for.inc_crit_edge, label %if.end13

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end13:                                         ; preds = %for.body
  %17 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %iface, align 8
  %19 = ptrtoint ptr %altsetting to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %altsetting, align 1
  %conv16 = zext i8 %20 to i32
  %21 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %raw_data.i) #7
  %23 = ptrtoint ptr %raw_data.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %raw_data.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 55, i8 %20)
  %cmp.i = icmp ugt i8 %20, 55
  br i1 %cmp.i, label %do.end.i, label %if.end22.i, !prof !94

do.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 439, i32 noundef 9, ptr noundef null) #7
  br label %check_valid_altsetting_v2v3.exit.thread

if.end22.i:                                       ; preds = %if.end13
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %22, align 8
  %shl.i.i = shl i32 %25, 8
  %or23.i = or i32 %shl.i.i, -2147483520
  %conv.i = zext i8 %18 to i16
  %call24.i = call i32 @snd_usb_ctl_msg(ptr noundef %22, i32 noundef %or23.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 512, i16 noundef zeroext %conv.i, ptr noundef nonnull %raw_data.i, i16 noundef zeroext 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 0
  br i1 %cmp25.i, label %if.end22.i.check_valid_altsetting_v2v3.exit.thread_crit_edge, label %if.end28.i

if.end22.i.check_valid_altsetting_v2v3.exit.thread_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_valid_altsetting_v2v3.exit.thread

if.end28.i:                                       ; preds = %if.end22.i
  %26 = ptrtoint ptr %raw_data.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %raw_data.i, align 8
  %28 = call i64 @llvm.bswap.i64(i64 %27) #7
  %and.i = shl i64 %28, 3
  %mul.i = and i64 %and.i, 2040
  %conv29.i88 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.i, i64 %conv29.i88)
  %cmp30.i = icmp ult i64 %mul.i, %conv29.i88
  br i1 %cmp30.i, label %if.end28.i.check_valid_altsetting_v2v3.exit.thread_crit_edge, label %check_valid_altsetting_v2v3.exit

if.end28.i.check_valid_altsetting_v2v3.exit.thread_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_valid_altsetting_v2v3.exit.thread

check_valid_altsetting_v2v3.exit.thread:          ; preds = %if.end28.i.check_valid_altsetting_v2v3.exit.thread_crit_edge, %if.end22.i.check_valid_altsetting_v2v3.exit.thread_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %raw_data.i) #7
  br label %for.inc

check_valid_altsetting_v2v3.exit:                 ; preds = %if.end28.i
  %add.i = add nuw nsw i32 %conv16, 8
  %sh_prom.i = zext i32 %add.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %and34.i = and i64 %28, %shl.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and34.i)
  %tobool35.not.i.not = icmp eq i64 %and34.i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %raw_data.i) #7
  br i1 %tobool35.not.i.not, label %check_valid_altsetting_v2v3.exit.for.inc_crit_edge, label %if.then18

check_valid_altsetting_v2v3.exit.for.inc_crit_edge: ; preds = %check_valid_altsetting_v2v3.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then18:                                        ; preds = %check_valid_altsetting_v2v3.exit
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %rate_table to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rate_table, align 4
  %arrayidx20 = getelementptr i32, ptr %30, i32 %i.091
  %31 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx20, align 4
  %inc = add i32 %nr_rates.090, 1
  %arrayidx21 = getelementptr i32, ptr %call8.i.i, i32 %nr_rates.090
  %33 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %check_valid_altsetting_v2v3.exit.for.inc_crit_edge, %check_valid_altsetting_v2v3.exit.thread, %for.body.for.inc_crit_edge
  %nr_rates.1 = phi i32 [ %nr_rates.090, %for.body.for.inc_crit_edge ], [ %inc, %if.then18 ], [ %nr_rates.090, %check_valid_altsetting_v2v3.exit.for.inc_crit_edge ], [ %nr_rates.090, %check_valid_altsetting_v2v3.exit.thread ]
  %inc23 = add nuw i32 %i.091, 1
  %34 = ptrtoint ptr %nr_rates2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_rates2, align 8
  %cmp = icmp ult i32 %inc23, %35
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_rates.1)
  %tobool24.not = icmp eq i32 %nr_rates.1, 0
  br i1 %tobool24.not, label %for.end.do.body_crit_edge, label %for.end.if.end39_crit_edge

for.end.if.end39_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %if.end5.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @validate_sample_rate_table_v2v3.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@validate_sample_rate_table_v2v3, %if.then30)) #7
          to label %do.end [label %if.then30], !srcloc !95

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev1, align 4
  %dev32 = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 15
  %38 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %iface, align 8
  %conv34 = zext i8 %39 to i32
  %altsetting35 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  %40 = ptrtoint ptr %altsetting35 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %altsetting35, align 1
  %conv36 = zext i8 %41 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @validate_sample_rate_table_v2v3.__UNIQUE_ID_ddebug243, ptr noundef %dev32, ptr noundef nonnull @.str.41, i32 noundef %conv34, i32 noundef %conv36) #7
  br label %do.end

do.end:                                           ; preds = %if.then30, %do.body
  %42 = ptrtoint ptr %nr_rates2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr_rates2, align 8
  br label %if.end39

if.end39:                                         ; preds = %do.end, %for.end.if.end39_crit_edge
  %nr_rates.2 = phi i32 [ %nr_rates.1, %for.end.if.end39_crit_edge ], [ %43, %do.end ]
  %44 = ptrtoint ptr %nr_rates2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr_rates2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %nr_rates.2)
  %cmp41 = icmp eq i32 %45, %nr_rates.2
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call8.i.i) #7
  br label %cleanup

if.end44:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %rate_table45 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 25
  %46 = ptrtoint ptr %rate_table45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rate_table45, align 4
  call void @kfree(ptr noundef %47) #7
  %48 = ptrtoint ptr %rate_table45 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call8.i.i, ptr %rate_table45, align 4
  %49 = ptrtoint ptr %nr_rates2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %nr_rates.2, ptr %nr_rates2, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then43, %if.end7.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then43 ], [ 0, %if.end44 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_find_csint_desc(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_set_sample_rate_v2v3(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/usb/format.c", i32 771, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @snd_usb_parse_audio_format._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @snd_usb_parse_audio_format._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/usb/format.c", i32 693, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @parse_audio_format_i._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @parse_audio_format_i._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/usb/format.c", i32 83, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @parse_audio_format_i_type._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @parse_audio_format_i_type._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/usb/format.c", i32 95, i32 4}
!21 = !{ptr @parse_audio_format_i_type._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @parse_audio_format_i_type._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/usb/format.c", i32 120, i32 4}
!25 = !{ptr @parse_audio_format_i_type._entry.13, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @parse_audio_format_i_type._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/usb/format.c", i32 145, i32 3}
!29 = !{ptr @parse_audio_format_i_type._entry.16, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @parse_audio_format_i_type._entry_ptr.18, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/usb/format.c", i32 202, i32 3}
!33 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @parse_audio_format_rates_v1._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @parse_audio_format_rates_v1._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/usb/format.c", i32 243, i32 4}
!38 = !{ptr @parse_audio_format_rates_v1._entry.21, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @parse_audio_format_rates_v1._entry_ptr.23, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/usb/format.c", i32 528, i32 3}
!42 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @parse_audio_format_rates_v2v3._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @parse_audio_format_rates_v2v3._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/usb/format.c", i32 546, i32 4}
!47 = !{ptr @parse_audio_format_rates_v2v3._entry.26, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @parse_audio_format_rates_v2v3._entry_ptr.28, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/usb/format.c", i32 552, i32 4}
!51 = !{ptr @parse_audio_format_rates_v2v3._entry.29, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @parse_audio_format_rates_v2v3._entry_ptr.31, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.33, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/usb/format.c", i32 577, i32 3}
!55 = !{ptr @parse_audio_format_rates_v2v3._entry.32, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @parse_audio_format_rates_v2v3._entry_ptr.34, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/usb/format.c", i32 391, i32 5}
!59 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @parse_uac2_sample_rate_range._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @parse_uac2_sample_rate_range._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/usb/format.c", i32 329, i32 4}
!64 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @focusrite_valid_sample_rate._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @focusrite_valid_sample_rate._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/usb/format.c", i32 498, i32 3}
!69 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @validate_sample_rate_table_v2v3.__UNIQUE_ID_ddebug243, !68, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!72 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/usb/format.c", i32 721, i32 3}
!74 = !{ptr @.str.43, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @parse_audio_format_ii._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @parse_audio_format_ii._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/usb/format.c", i32 736, i32 3}
!79 = !{ptr @parse_audio_format_ii._entry.44, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @parse_audio_format_ii._entry_ptr.46, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @parse_audio_format_ii._entry.47, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../sound/usb/format.c", i32 745, i32 3}
!83 = !{ptr @parse_audio_format_ii._entry_ptr.48, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"auto-init"}
!94 = !{!"branch_weights", i32 1, i32 2000}
!95 = !{i64 2148221250, i64 2148221255, i64 2148221268, i64 2148221312, i64 2148221346, i64 2148221367}
