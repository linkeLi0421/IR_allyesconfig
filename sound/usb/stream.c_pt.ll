; ModuleID = '/llk/IR_all_yes/sound/usb/stream.c_pt.bc'
source_filename = "../sound/usb/stream.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.audioformat = type { %struct.list_head, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, i8, ptr, i8, i8, i8 }
%struct.snd_usb_substream = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i64, i32, %struct.list_head, %struct.spinlock, i32, %struct.anon.87, i8, i8, ptr }
%struct.anon.87 = type { i32, i32, i32 }
%struct.snd_pcm_chmap = type { ptr, i32, ptr, ptr, i32, i32, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.86, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.86 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_usb_stream = type { ptr, ptr, i32, i32, [2 x %struct.snd_usb_substream], %struct.list_head }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
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
%struct.snd_pcm_oss = type { i32, i32 }
%struct.uac3_hc_descriptor_header = type { i16, i8, i8, i16 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.uac1_as_header_descriptor = type <{ i8, i8, i8, i8, i8, i16 }>
%struct.uac2_input_terminal_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i32, i8, i16, i8 }>
%struct.uac_input_terminal_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16, i8, i8 }
%struct.uac2_as_header_descriptor = type <{ i8, i8, i8, i8, i8, i8, i32, i8, i32, i8 }>
%struct.uac2_output_terminal_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i16, i8 }>
%struct.uac_format_type_i_continuous_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], [3 x i8] }
%struct.snd_pcm_chmap_elem = type { i8, [15 x i8] }
%struct.uac3_as_header_descriptor = type <{ i8, i8, i8, i8, i32, i16, i64, i8, i8, i16, i8 }>
%struct.uac3_cluster_header_descriptor = type <{ i16, i8, i8, i16, i8 }>
%struct.uac3_cluster_segment_descriptor = type <{ i16, i8 }>
%struct.uac3_cluster_information_segment_descriptor = type { i16, i8, i8, i8, i8 }
%struct.uac3_input_terminal_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i32, i16, i16, i16, i16 }
%struct.uac3_output_terminal_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i32, i16, i16, i16 }>
%struct.snd_usb_power_domain = type { i32, i32, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.77, [64 x i8] }
%union.anon.77 = type { %struct.anon.80, [40 x i8] }
%struct.anon.80 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.81, [128 x i8] }
%union.anon.81 = type { %union.anon.83 }
%union.anon.83 = type { [64 x i64] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.uac_iso_endpoint_descriptor = type <{ i8, i8, i8, i8, i8, i16 }>
%struct.uac2_iso_endpoint_descriptor = type { i8, i8, i8, i8, i8, i8, i16 }
%struct.uac3_iso_endpoint_descriptor = type <{ i8, i8, i8, i32, i8, i16 }>

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"USB Audio\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"USB Audio #%d\00", [18 x i8] zeroinitializer }, align 32
@snd_usb_init_substream.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&subs->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sound/usb/stream.c\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__snd_usb_parse_audio_interface.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 1, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_usb_audio\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"__snd_usb_parse_audio_interface\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%u:%d: unknown interface protocol %#02x, assuming v1\0A\00", [42 x i8] zeroinitializer }, align 32
@__snd_usb_parse_audio_interface.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr @.str.7, i8 1, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%u:%d: add audio endpoint %#x\0A\00", [33 x i8] zeroinitializer }, align 32
@snd_usb_get_audioformat_uac12._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 726, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%u:%d : UAC_AS_GENERAL descriptor not found\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"snd_usb_get_audioformat_uac12\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_usb_get_audioformat_uac12._entry_ptr = internal global ptr @snd_usb_get_audioformat_uac12._entry, section ".printk_index", align 4
@snd_usb_get_audioformat_uac12._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.3, i32 733, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%u:%d : invalid UAC_AS_GENERAL desc\0A\00", [59 x i8] zeroinitializer }, align 32
@snd_usb_get_audioformat_uac12._entry_ptr.14 = internal global ptr @snd_usb_get_audioformat_uac12._entry.12, section ".printk_index", align 4
@snd_usb_get_audioformat_uac12._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 756, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@snd_usb_get_audioformat_uac12._entry_ptr.16 = internal global ptr @snd_usb_get_audioformat_uac12._entry.15, section ".printk_index", align 4
@snd_usb_get_audioformat_uac12._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.3, i32 763, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@snd_usb_get_audioformat_uac12._entry_ptr.18 = internal global ptr @snd_usb_get_audioformat_uac12._entry.17, section ".printk_index", align 4
@snd_usb_get_audioformat_uac12._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.3, i32 795, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%u:%d : bogus bTerminalLink %d\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_usb_get_audioformat_uac12._entry_ptr.21 = internal global ptr @snd_usb_get_audioformat_uac12._entry.19, section ".printk_index", align 4
@snd_usb_get_audioformat_uac12._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.9, ptr @.str.3, i32 806, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%u:%d : no UAC_FORMAT_TYPE desc\0A\00", [63 x i8] zeroinitializer }, align 32
@snd_usb_get_audioformat_uac12._entry_ptr.24 = internal global ptr @snd_usb_get_audioformat_uac12._entry.22, section ".printk_index", align 4
@snd_usb_get_audioformat_uac12._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.9, ptr @.str.3, i32 814, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%u:%d : invalid UAC_FORMAT_TYPE desc\0A\00", [58 x i8] zeroinitializer }, align 32
@snd_usb_get_audioformat_uac12._entry_ptr.27 = internal global ptr @snd_usb_get_audioformat_uac12._entry.25, section ".printk_index", align 4
@parse_uac_endpoint_attributes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 629, ptr @.str.30, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%u:%d : no or invalid class specific endpoint descriptor\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"parse_uac_endpoint_attributes\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@parse_uac_endpoint_attributes._entry_ptr = internal global ptr @parse_uac_endpoint_attributes._entry, section ".printk_index", align 4
@convert_chmap.uac1_maps = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 3, i32 4, i32 7, i32 8, i32 9, i32 10, i32 12, i32 13, i32 11, i32 9, i32 10, i32 21, i32 0], [44 x i8] zeroinitializer }, align 32
@convert_chmap.uac2_maps = internal constant { [28 x i32], [48 x i8] } { [28 x i32] [i32 3, i32 4, i32 7, i32 8, i32 5, i32 6, i32 12, i32 13, i32 11, i32 9, i32 10, i32 21, i32 22, i32 24, i32 23, i32 25, i32 27, i32 26, i32 28, i32 29, i32 32, i32 33, i32 30, i32 31, i32 34, i32 14, i32 15, i32 0], [48 x i8] zeroinitializer }, align 32
@snd_usb_get_audioformat_uac3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 889, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%u:%d : incorrect wMaxPacketSize for BADD profile\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snd_usb_get_audioformat_uac3\00", [35 x i8] zeroinitializer }, align 32
@snd_usb_get_audioformat_uac3._entry_ptr = internal global ptr @snd_usb_get_audioformat_uac3._entry, section ".printk_index", align 4
@snd_usb_get_audioformat_uac3._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.32, ptr @.str.3, i32 934, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@snd_usb_get_audioformat_uac3._entry_ptr.34 = internal global ptr @snd_usb_get_audioformat_uac3._entry.33, section ".printk_index", align 4
@snd_usb_get_audioformat_uac3._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.32, ptr @.str.3, i32 941, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@snd_usb_get_audioformat_uac3._entry_ptr.36 = internal global ptr @snd_usb_get_audioformat_uac3._entry.35, section ".printk_index", align 4
@snd_usb_get_audioformat_uac3._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.32, ptr @.str.3, i32 949, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%u:%d : no cluster descriptor\0A\00", [33 x i8] zeroinitializer }, align 32
@snd_usb_get_audioformat_uac3._entry_ptr.39 = internal global ptr @snd_usb_get_audioformat_uac3._entry.37, section ".printk_index", align 4
@snd_usb_get_audioformat_uac3._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.32, ptr @.str.3, i32 972, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%u:%d : can't get High Capability descriptor\0A\00", [50 x i8] zeroinitializer }, align 32
@snd_usb_get_audioformat_uac3._entry_ptr.42 = internal global ptr @snd_usb_get_audioformat_uac3._entry.40, section ".printk_index", align 4
@snd_usb_get_audioformat_uac3._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.32, ptr @.str.3, i32 997, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%u:%d : can't get Cluster Descriptor\0A\00", [58 x i8] zeroinitializer }, align 32
@snd_usb_get_audioformat_uac3._entry_ptr.45 = internal global ptr @snd_usb_get_audioformat_uac3._entry.43, section ".printk_index", align 4
@snd_usb_get_audioformat_uac3._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.32, ptr @.str.3, i32 1027, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@snd_usb_get_audioformat_uac3._entry_ptr.47 = internal global ptr @snd_usb_get_audioformat_uac3._entry.46, section ".printk_index", align 4
@convert_chmap_v3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: channel number mismatch\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"convert_chmap_v3\00", [47 x i8] zeroinitializer }, align 32
@convert_chmap_v3._entry_ptr = internal global ptr @convert_chmap_v3._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 255]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 255]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 32, i64 48]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.53 = internal global [10 x i64] [i64 8, i64 16, i64 96, i64 98, i64 144, i64 147, i64 192, i64 196, i64 288, i64 294]
@__sancov_gen_cov_switch_values.54 = internal global [34 x i64] [i64 32, i64 8, i64 1, i64 2, i64 3, i64 128, i64 129, i64 130, i64 131, i64 132, i64 135, i64 136, i64 139, i64 140, i64 141, i64 142, i64 143, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151, i64 154, i64 155, i64 158, i64 159, i64 160, i64 165, i64 184, i64 185, i64 186, i64 187, i64 188]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 32]
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 522, i32 32 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 535, i32 22 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 87, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 157, i32 6 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1146, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1198, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 724, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 731, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 754, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 761, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 793, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 804, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 812, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 627, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [10 x i8] c"uac1_maps\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 242, i32 28 }
@___asan_gen_.143 = private unnamed_addr constant [10 x i8] c"uac2_maps\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 257, i32 28 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 887, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 932, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 939, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 947, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 970, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 995, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1026, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private constant [22 x i8] c"../sound/usb/stream.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 459, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @convert_chmap_v3._entry, ptr @convert_chmap_v3._entry_ptr, ptr @parse_uac_endpoint_attributes._entry, ptr @parse_uac_endpoint_attributes._entry_ptr, ptr @snd_usb_get_audioformat_uac12._entry, ptr @snd_usb_get_audioformat_uac12._entry.12, ptr @snd_usb_get_audioformat_uac12._entry.15, ptr @snd_usb_get_audioformat_uac12._entry.17, ptr @snd_usb_get_audioformat_uac12._entry.19, ptr @snd_usb_get_audioformat_uac12._entry.22, ptr @snd_usb_get_audioformat_uac12._entry.25, ptr @snd_usb_get_audioformat_uac12._entry_ptr, ptr @snd_usb_get_audioformat_uac12._entry_ptr.14, ptr @snd_usb_get_audioformat_uac12._entry_ptr.16, ptr @snd_usb_get_audioformat_uac12._entry_ptr.18, ptr @snd_usb_get_audioformat_uac12._entry_ptr.21, ptr @snd_usb_get_audioformat_uac12._entry_ptr.24, ptr @snd_usb_get_audioformat_uac12._entry_ptr.27, ptr @snd_usb_get_audioformat_uac3._entry, ptr @snd_usb_get_audioformat_uac3._entry.33, ptr @snd_usb_get_audioformat_uac3._entry.35, ptr @snd_usb_get_audioformat_uac3._entry.37, ptr @snd_usb_get_audioformat_uac3._entry.40, ptr @snd_usb_get_audioformat_uac3._entry.43, ptr @snd_usb_get_audioformat_uac3._entry.46, ptr @snd_usb_get_audioformat_uac3._entry_ptr, ptr @snd_usb_get_audioformat_uac3._entry_ptr.34, ptr @snd_usb_get_audioformat_uac3._entry_ptr.36, ptr @snd_usb_get_audioformat_uac3._entry_ptr.39, ptr @snd_usb_get_audioformat_uac3._entry_ptr.42, ptr @snd_usb_get_audioformat_uac3._entry_ptr.45, ptr @snd_usb_get_audioformat_uac3._entry_ptr.47, ptr @.str, ptr @.str.1, ptr @snd_usb_init_substream.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @convert_chmap.uac1_maps, ptr @convert_chmap.uac2_maps, ptr @.str.31, ptr @.str.32, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_init_substream.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_get_audioformat_uac12._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_get_audioformat_uac12._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_get_audioformat_uac12._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_get_audioformat_uac12._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_get_audioformat_uac12._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_get_audioformat_uac12._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_get_audioformat_uac12._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_uac_endpoint_attributes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @convert_chmap.uac1_maps to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @convert_chmap.uac2_maps to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_get_audioformat_uac3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_get_audioformat_uac3._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_get_audioformat_uac3._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_get_audioformat_uac3._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_get_audioformat_uac3._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_get_audioformat_uac3._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_get_audioformat_uac3._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @convert_chmap_v3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_add_audio_stream(ptr noundef %chip, i32 noundef %stream, ptr noundef %fp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__snd_usb_add_audio_stream(ptr noundef %chip, i32 noundef %stream, ptr noundef %fp, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__snd_usb_add_audio_stream(ptr noundef %chip, i32 noundef %stream, ptr noundef %fp, ptr noundef %pd) unnamed_addr #0 align 64 {
entry:
  %chmap.i178 = alloca ptr, align 4
  %chmap.i = alloca ptr, align 4
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #12
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !97
  %pcm_list = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 18
  %1 = ptrtoint ptr %pcm_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn200 = load ptr, ptr %pcm_list, align 4
  %cmp.not201 = icmp eq ptr %.pn200, %pcm_list
  br i1 %cmp.not201, label %entry.for.cond20.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond20.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond20.preheader

for.body.lr.ph:                                   ; preds = %entry
  %fmt_type2 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 3
  %2 = ptrtoint ptr %fmt_type2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt_type2, align 4
  %endpoint = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 11
  br label %for.body

for.cond20.preheader:                             ; preds = %for.inc.for.cond20.preheader_crit_edge, %entry.for.cond20.preheader_crit_edge
  %4 = ptrtoint ptr %pcm_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn168203 = load ptr, ptr %pcm_list, align 4
  %cmp23.not204 = icmp eq ptr %.pn168203, %pcm_list
  br i1 %cmp23.not204, label %for.cond20.preheader.for.end57_crit_edge, label %for.body26.lr.ph

for.cond20.preheader.for.end57_crit_edge:         ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end57

for.body26.lr.ph:                                 ; preds = %for.cond20.preheader
  %fmt_type28 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 3
  %5 = ptrtoint ptr %fmt_type28 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fmt_type28, align 4
  br label %for.body26

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn202 = phi ptr [ %.pn200, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %fmt_type = getelementptr i8, ptr %.pn202, i32 -372
  %7 = ptrtoint ptr %fmt_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fmt_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %3)
  %cmp3.not = icmp eq i32 %8, %3
  br i1 %cmp3.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %substream = getelementptr i8, ptr %.pn202, i32 -368
  %arrayidx = getelementptr [2 x %struct.snd_usb_substream], ptr %substream, i32 0, i32 %stream
  %ep_num = getelementptr inbounds %struct.snd_usb_substream, ptr %arrayidx, i32 0, i32 19
  %9 = ptrtoint ptr %ep_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ep_num, align 4
  %11 = ptrtoint ptr %endpoint to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %endpoint, align 1
  %conv = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp4 = icmp eq i32 %10, %conv
  br i1 %cmp4, label %if.then6, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then6:                                         ; preds = %if.end
  %fmt_list = getelementptr inbounds %struct.snd_usb_substream, ptr %arrayidx, i32 0, i32 26
  %prev.i = getelementptr inbounds %struct.snd_usb_substream, ptr %arrayidx, i32 0, i32 26, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %fp, ptr noundef %14, ptr noundef %fmt_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then6.list_add_tail.exit_crit_edge

if.then6.list_add_tail.exit_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %fp, ptr %prev.i, align 4
  %16 = ptrtoint ptr %fp to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %fmt_list, ptr %fp, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %fp, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %fp, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then6.list_add_tail.exit_crit_edge
  %num_formats = getelementptr inbounds %struct.snd_usb_substream, ptr %arrayidx, i32 0, i32 25
  %19 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_formats, align 8
  %inc = add i32 %20, 1
  store i32 %inc, ptr %num_formats, align 8
  %formats = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 1
  %21 = ptrtoint ptr %formats to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %formats, align 8
  %formats8 = getelementptr inbounds %struct.snd_usb_substream, ptr %arrayidx, i32 0, i32 24
  %23 = ptrtoint ptr %formats8 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %formats8, align 8
  %or = or i64 %24, %22
  store i64 %or, ptr %formats8, align 8
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %25 = ptrtoint ptr %.pn202 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn202, align 4
  %cmp.not = icmp eq ptr %.pn, %pcm_list
  br i1 %cmp.not, label %for.inc.for.cond20.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.cond20.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond20.preheader

for.body26:                                       ; preds = %for.inc51.for.body26_crit_edge, %for.body26.lr.ph
  %.pn168205 = phi ptr [ %.pn168203, %for.body26.lr.ph ], [ %.pn168, %for.inc51.for.body26_crit_edge ]
  %fmt_type27 = getelementptr i8, ptr %.pn168205, i32 -372
  %26 = ptrtoint ptr %fmt_type27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fmt_type27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %6)
  %cmp29.not = icmp eq i32 %27, %6
  br i1 %cmp29.not, label %if.end32, label %for.body26.for.inc51_crit_edge

for.body26.for.inc51_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc51

if.end32:                                         ; preds = %for.body26
  %substream33 = getelementptr i8, ptr %.pn168205, i32 -368
  %arrayidx34 = getelementptr [2 x %struct.snd_usb_substream], ptr %substream33, i32 0, i32 %stream
  %ep_num35 = getelementptr inbounds %struct.snd_usb_substream, ptr %arrayidx34, i32 0, i32 19
  %28 = ptrtoint ptr %ep_num35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ep_num35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not = icmp eq i32 %29, 0
  br i1 %tobool.not, label %if.end37, label %if.end32.for.inc51_crit_edge

if.end32.for.inc51_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc51

if.end37:                                         ; preds = %if.end32
  %as.1.le = getelementptr i8, ptr %.pn168205, i32 -384
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 2
  %30 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card, align 4
  %pcm38 = getelementptr i8, ptr %.pn168205, i32 -380
  %32 = ptrtoint ptr %pcm38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcm38, align 4
  %call = tail call i32 @snd_device_get_state(ptr noundef %31, ptr noundef %33) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp39.not = icmp eq i32 %call, 0
  br i1 %cmp39.not, label %if.end37.if.end42_crit_edge, label %if.then41

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %need_delayed_register = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 13
  %34 = ptrtoint ptr %need_delayed_register to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %need_delayed_register, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %need_delayed_register, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end37.if.end42_crit_edge
  %35 = ptrtoint ptr %pcm38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcm38, align 4
  %call44 = tail call i32 @snd_pcm_new_stream(ptr noundef %36, i32 noundef %stream, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end42.cleanup_crit_edge, label %if.end48

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end48:                                         ; preds = %if.end42
  tail call fastcc void @snd_usb_init_substream(ptr noundef %as.1.le, i32 noundef %stream, ptr noundef %fp, ptr noundef %pd)
  %37 = ptrtoint ptr %pcm38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pcm38, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chmap.i) #12
  %39 = ptrtoint ptr %chmap.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 -1 to ptr), ptr %chmap.i, align 4, !annotation !97
  %fmt_list.i = getelementptr inbounds %struct.snd_usb_substream, ptr %arrayidx34, i32 0, i32 26
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end48
  %fp.0.in.i = phi ptr [ %fmt_list.i, %if.end48 ], [ %fp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %40 = ptrtoint ptr %fp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %fp.0.i = load ptr, ptr %fp.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %fp.0.i, %fmt_list.i
  br i1 %cmp.not.i, label %for.cond.i.add_chmap.exit_crit_edge, label %for.body.i

for.cond.i.add_chmap.exit_crit_edge:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %add_chmap.exit

for.body.i:                                       ; preds = %for.cond.i
  %chmap2.i = getelementptr inbounds %struct.audioformat, ptr %fp.0.i, i32 0, i32 27
  %41 = ptrtoint ptr %chmap2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chmap2.i, align 4
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %ok.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

ok.i:                                             ; preds = %for.body.i
  %call.i = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %38, i32 noundef %stream, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %chmap.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8.i = icmp slt i32 %call.i, 0
  br i1 %cmp8.i, label %ok.i.add_chmap.exit_crit_edge, label %if.end10.i

ok.i.add_chmap.exit_crit_edge:                    ; preds = %ok.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %add_chmap.exit

if.end10.i:                                       ; preds = %ok.i
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %chmap.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chmap.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_chmap, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx34, ptr %private_data.i, align 4
  %kctl11.i = getelementptr inbounds %struct.snd_pcm_chmap, ptr %44, i32 0, i32 2
  %46 = ptrtoint ptr %kctl11.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %kctl11.i, align 4
  %info.i = getelementptr inbounds %struct.snd_kcontrol, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @usb_chmap_ctl_info, ptr %info.i, align 4
  %get.i = getelementptr inbounds %struct.snd_kcontrol, ptr %47, i32 0, i32 4
  %49 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @usb_chmap_ctl_get, ptr %get.i, align 4
  %tlv.i = getelementptr inbounds %struct.snd_kcontrol, ptr %47, i32 0, i32 6
  %50 = ptrtoint ptr %tlv.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @usb_chmap_ctl_tlv, ptr %tlv.i, align 4
  br label %add_chmap.exit

add_chmap.exit:                                   ; preds = %if.end10.i, %ok.i.add_chmap.exit_crit_edge, %for.cond.i.add_chmap.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end10.i ], [ %call.i, %ok.i.add_chmap.exit_crit_edge ], [ 0, %for.cond.i.add_chmap.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chmap.i) #12
  br label %cleanup

for.inc51:                                        ; preds = %if.end32.for.inc51_crit_edge, %for.body26.for.inc51_crit_edge
  %51 = ptrtoint ptr %.pn168205 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn168 = load ptr, ptr %.pn168205, align 4
  %cmp23.not = icmp eq ptr %.pn168, %pcm_list
  br i1 %cmp23.not, label %for.inc51.for.end57_crit_edge, label %for.inc51.for.body26_crit_edge

for.inc51.for.body26_crit_edge:                   ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body26

for.inc51.for.end57_crit_edge:                    ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end57

for.end57:                                        ; preds = %for.inc51.for.end57_crit_edge, %for.cond20.preheader.for.end57_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %52 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 392) #15
  %tobool59.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool59.not, label %for.end57.cleanup_crit_edge, label %if.end61

for.end57.cleanup_crit_edge:                      ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end61:                                         ; preds = %for.end57
  %pcm_devs = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 21
  %53 = ptrtoint ptr %pcm_devs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pcm_devs, align 4
  %pcm_index = getelementptr inbounds %struct.snd_usb_stream, ptr %call7.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %pcm_index to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %pcm_index, align 8
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %chip, ptr %call7.i.i, align 8
  %fmt_type63 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 3
  %57 = ptrtoint ptr %fmt_type63 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fmt_type63, align 4
  %fmt_type64 = getelementptr inbounds %struct.snd_usb_stream, ptr %call7.i.i, i32 0, i32 3
  %59 = ptrtoint ptr %fmt_type64 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %fmt_type64, align 4
  %card65 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 2
  %60 = ptrtoint ptr %card65 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %card65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream)
  %cmp67 = icmp eq i32 %stream, 0
  %cond = zext i1 %cmp67 to i32
  %not.cmp67 = xor i1 %cmp67, true
  %cond71 = zext i1 %not.cmp67 to i32
  %call72 = call i32 @snd_pcm_new(ptr noundef %61, ptr noundef nonnull @.str, i32 noundef %54, i32 noundef %cond, i32 noundef %cond71, ptr noundef nonnull %pcm) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end76:                                         ; preds = %if.end61
  %62 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pcm, align 4
  %pcm77 = getelementptr inbounds %struct.snd_usb_stream, ptr %call7.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %pcm77 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %pcm77, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %63, i32 0, i32 11
  %65 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call7.i.i, ptr %private_data, align 8
  %private_free = getelementptr inbounds %struct.snd_pcm, ptr %63, i32 0, i32 12
  %66 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @snd_usb_audio_pcm_free, ptr %private_free, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %63, i32 0, i32 3
  %67 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %info_flags, align 8
  %68 = ptrtoint ptr %pcm_devs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pcm_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp79 = icmp sgt i32 %69, 0
  %name = getelementptr inbounds %struct.snd_pcm, ptr %63, i32 0, i32 7
  br i1 %cmp79, label %if.then81, label %if.else

if.then81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  %call83 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.1, i32 noundef %69)
  br label %if.end87

if.else:                                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  %70 = call ptr @memcpy(ptr %name, ptr @.str, i32 10)
  br label %if.end87

if.end87:                                         ; preds = %if.else, %if.then81
  call fastcc void @snd_usb_init_substream(ptr noundef nonnull %call7.i.i, i32 noundef %stream, ptr noundef %fp, ptr noundef %pd)
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 4
  %71 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %usb_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 123936771, i32 %72)
  %cmp88 = icmp eq i32 %72, 123936771
  %list91 = getelementptr inbounds %struct.snd_usb_stream, ptr %call7.i.i, i32 0, i32 5
  br i1 %cmp88, label %if.then90, label %if.else93

if.then90:                                        ; preds = %if.end87
  %73 = ptrtoint ptr %pcm_list to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pcm_list, align 4
  %call.i.i170 = call zeroext i1 @__list_add_valid(ptr noundef %list91, ptr noundef %pcm_list, ptr noundef %74) #12
  br i1 %call.i.i170, label %if.end.i.i172, label %if.then90.if.end96_crit_edge

if.then90.if.end96_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.end.i.i172:                                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  br label %if.end96.sink.split

if.else93:                                        ; preds = %if.end87
  %prev.i173 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 18, i32 1
  %75 = ptrtoint ptr %prev.i173 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i173, align 4
  %call.i.i174 = call zeroext i1 @__list_add_valid(ptr noundef %list91, ptr noundef %76, ptr noundef %pcm_list) #12
  br i1 %call.i.i174, label %if.else93.if.end96.sink.split_crit_edge, label %if.else93.if.end96_crit_edge

if.else93.if.end96_crit_edge:                     ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.else93.if.end96.sink.split_crit_edge:          ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96.sink.split

if.end96.sink.split:                              ; preds = %if.else93.if.end96.sink.split_crit_edge, %if.end.i.i172
  %prev.i173.sink = phi ptr [ %prev1.i.i, %if.end.i.i172 ], [ %prev.i173, %if.else93.if.end96.sink.split_crit_edge ]
  %pcm_list.sink = phi ptr [ %74, %if.end.i.i172 ], [ %pcm_list, %if.else93.if.end96.sink.split_crit_edge ]
  %.sink209 = phi ptr [ %pcm_list, %if.end.i.i172 ], [ %76, %if.else93.if.end96.sink.split_crit_edge ]
  %77 = ptrtoint ptr %prev.i173.sink to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %list91, ptr %prev.i173.sink, align 4
  %78 = ptrtoint ptr %list91 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %pcm_list.sink, ptr %list91, align 8
  %prev3.i.i175 = getelementptr inbounds %struct.snd_usb_stream, ptr %call7.i.i, i32 0, i32 5, i32 1
  %79 = ptrtoint ptr %prev3.i.i175 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %.sink209, ptr %prev3.i.i175, align 4
  %80 = ptrtoint ptr %.sink209 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %list91, ptr %.sink209, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.end96.sink.split, %if.else93.if.end96_crit_edge, %if.then90.if.end96_crit_edge
  %81 = ptrtoint ptr %pcm_devs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pcm_devs, align 4
  %inc98 = add i32 %82, 1
  store i32 %inc98, ptr %pcm_devs, align 4
  call void @snd_usb_proc_pcm_format_add(ptr noundef nonnull %call7.i.i) #12
  %83 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pcm, align 4
  %arrayidx100 = getelementptr %struct.snd_usb_stream, ptr %call7.i.i, i32 0, i32 4, i32 %stream
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chmap.i178) #12
  %85 = ptrtoint ptr %chmap.i178 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 -1 to ptr), ptr %chmap.i178, align 4, !annotation !97
  %fmt_list.i179 = getelementptr %struct.snd_usb_stream, ptr %call7.i.i, i32 0, i32 4, i32 %stream, i32 26
  br label %for.cond.i183

for.cond.i183:                                    ; preds = %for.body.i186.for.cond.i183_crit_edge, %if.end96
  %fp.0.in.i180 = phi ptr [ %fmt_list.i179, %if.end96 ], [ %fp.0.i181, %for.body.i186.for.cond.i183_crit_edge ]
  %86 = ptrtoint ptr %fp.0.in.i180 to i32
  call void @__asan_load4_noabort(i32 %86)
  %fp.0.i181 = load ptr, ptr %fp.0.in.i180, align 4
  %cmp.not.i182 = icmp eq ptr %fp.0.i181, %fmt_list.i179
  br i1 %cmp.not.i182, label %for.cond.i183.add_chmap.exit197_crit_edge, label %for.body.i186

for.cond.i183.add_chmap.exit197_crit_edge:        ; preds = %for.cond.i183
  call void @__sanitizer_cov_trace_pc() #14
  br label %add_chmap.exit197

for.body.i186:                                    ; preds = %for.cond.i183
  %chmap2.i184 = getelementptr inbounds %struct.audioformat, ptr %fp.0.i181, i32 0, i32 27
  %87 = ptrtoint ptr %chmap2.i184 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %chmap2.i184, align 4
  %tobool.not.i185 = icmp eq ptr %88, null
  br i1 %tobool.not.i185, label %for.body.i186.for.cond.i183_crit_edge, label %ok.i189

for.body.i186.for.cond.i183_crit_edge:            ; preds = %for.body.i186
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i183

ok.i189:                                          ; preds = %for.body.i186
  %call.i187 = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %84, i32 noundef %stream, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %chmap.i178) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187)
  %cmp8.i188 = icmp slt i32 %call.i187, 0
  br i1 %cmp8.i188, label %ok.i189.add_chmap.exit197_crit_edge, label %if.end10.i195

ok.i189.add_chmap.exit197_crit_edge:              ; preds = %ok.i189
  call void @__sanitizer_cov_trace_pc() #14
  br label %add_chmap.exit197

if.end10.i195:                                    ; preds = %ok.i189
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %chmap.i178 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %chmap.i178, align 4
  %private_data.i190 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %90, i32 0, i32 6
  %91 = ptrtoint ptr %private_data.i190 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %arrayidx100, ptr %private_data.i190, align 4
  %kctl11.i191 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %90, i32 0, i32 2
  %92 = ptrtoint ptr %kctl11.i191 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %kctl11.i191, align 4
  %info.i192 = getelementptr inbounds %struct.snd_kcontrol, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %info.i192 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @usb_chmap_ctl_info, ptr %info.i192, align 4
  %get.i193 = getelementptr inbounds %struct.snd_kcontrol, ptr %93, i32 0, i32 4
  %95 = ptrtoint ptr %get.i193 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @usb_chmap_ctl_get, ptr %get.i193, align 4
  %tlv.i194 = getelementptr inbounds %struct.snd_kcontrol, ptr %93, i32 0, i32 6
  %96 = ptrtoint ptr %tlv.i194 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @usb_chmap_ctl_tlv, ptr %tlv.i194, align 4
  br label %add_chmap.exit197

add_chmap.exit197:                                ; preds = %if.end10.i195, %ok.i189.add_chmap.exit197_crit_edge, %for.cond.i183.add_chmap.exit197_crit_edge
  %retval.0.i196 = phi i32 [ 0, %if.end10.i195 ], [ %call.i187, %ok.i189.add_chmap.exit197_crit_edge ], [ 0, %for.cond.i183.add_chmap.exit197_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chmap.i178) #12
  br label %cleanup

cleanup:                                          ; preds = %add_chmap.exit197, %if.then75, %for.end57.cleanup_crit_edge, %add_chmap.exit, %if.end42.cleanup_crit_edge, %list_add_tail.exit
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ %retval.0.i, %add_chmap.exit ], [ %call72, %if.then75 ], [ %retval.0.i196, %add_chmap.exit197 ], [ %call44, %if.end42.cleanup_crit_edge ], [ -12, %for.end57.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_parse_audio_interface(ptr noundef %chip, i32 noundef %iface_no) local_unnamed_addr #0 align 64 {
entry:
  %has_non_pcm = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %has_non_pcm) #12
  %0 = ptrtoint ptr %has_non_pcm to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %has_non_pcm, align 1
  %call = call fastcc i32 @__snd_usb_parse_audio_interface(ptr noundef %chip, i32 noundef %iface_no, ptr noundef nonnull %has_non_pcm, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %has_non_pcm to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %has_non_pcm, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then1

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then1:                                         ; preds = %if.end
  %call2 = call fastcc i32 @__snd_usb_parse_audio_interface(ptr noundef %chip, i32 noundef %iface_no, ptr noundef nonnull %has_non_pcm, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then1.cleanup_crit_edge, label %if.then1.if.end6_crit_edge

if.then1.if.end6_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.then1.if.end6_crit_edge, %if.end.if.end6_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.then1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %has_non_pcm) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__snd_usb_parse_audio_interface(ptr noundef %chip, i32 noundef %iface_no, ptr nocapture noundef writeonly %has_non_pcm, i1 noundef zeroext %non_pcm) unnamed_addr #0 align 64 {
entry:
  %hc_header.i = alloca %struct.uac3_hc_descriptor_header, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call = tail call ptr @usb_ifnum_to_if(ptr noundef %1, i32 noundef %iface_no) #12
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_altsetting, align 8
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 4
  %4 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83509761, i32 %5)
  %cmp = icmp eq i32 %5, 83509761
  %spec.store.select = select i1 %cmp, i32 4, i32 %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp2382 = icmp sgt i32 %spec.store.select, 0
  br i1 %cmp2382, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %badd_profile2.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 17
  %ctrl_intf.i.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 28
  %conv.i292.i = trunc i32 %iface_no to i8
  %dev67 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.store.select)
  %cmp72 = icmp ne i32 %spec.store.select, 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %fp.0397 = phi ptr [ null, %for.body.lr.ph ], [ %fp.2, %for.inc.for.body_crit_edge ]
  %i.0389 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %pd.0383 = phi ptr [ null, %for.body.lr.ph ], [ %pd.3, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 8
  %arrayidx = getelementptr %struct.usb_host_interface, ptr %7, i32 %i.0389
  %bInterfaceProtocol = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx, i32 0, i32 7
  %8 = ptrtoint ptr %bInterfaceProtocol to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bInterfaceProtocol, align 1
  %conv = zext i8 %9 to i32
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx, i32 0, i32 5
  %10 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bInterfaceClass, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %for.body.for.inc_crit_edge [
    i8 1, label %lor.lhs.false
    i8 -1, label %for.body.lor.lhs.false18_crit_edge
  ]

for.body.lor.lhs.false18_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false18

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %bInterfaceSubClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx, i32 0, i32 6
  %13 = ptrtoint ptr %bInterfaceSubClass to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bInterfaceSubClass, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %14, label %lor.lhs.false.for.inc_crit_edge [
    i8 2, label %lor.lhs.false.lor.lhs.false18_crit_edge
    i8 -1, label %lor.lhs.false.lor.lhs.false18_crit_edge434
  ]

lor.lhs.false.lor.lhs.false18_crit_edge434:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false18

lor.lhs.false.lor.lhs.false18_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false18

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false18:                                  ; preds = %lor.lhs.false.lor.lhs.false18_crit_edge, %lor.lhs.false.lor.lhs.false18_crit_edge434, %for.body.lor.lhs.false18_crit_edge
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx, i32 0, i32 4
  %16 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bNumEndpoints, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp20 = icmp eq i8 %17, 0
  br i1 %cmp20, label %lor.lhs.false18.for.inc_crit_edge, label %lor.lhs.false22

lor.lhs.false18.for.inc_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %endpoint = getelementptr %struct.usb_host_interface, ptr %7, i32 %i.0389, i32 3
  %18 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %endpoint, align 4
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %wMaxPacketSize, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp26 = icmp eq i16 %21, 0
  br i1 %cmp26, label %lor.lhs.false22.for.inc_crit_edge, label %if.end29

lor.lhs.false22.for.inc_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end29:                                         ; preds = %lor.lhs.false22
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bmAttributes, align 1
  %24 = and i8 %23, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp34.not = icmp eq i8 %24, 1
  br i1 %cmp34.not, label %if.end37, label %if.end29.for.inc_crit_edge

if.end29.for.inc_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end37:                                         ; preds = %if.end29
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %19, i32 0, i32 2
  %25 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bEndpointAddress, align 2
  %.lobit = lshr i8 %26, 7
  %27 = zext i8 %.lobit to i32
  %bAlternateSetting = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx, i32 0, i32 3
  %28 = ptrtoint ptr %bAlternateSetting to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bAlternateSetting, align 1
  %conv43 = zext i8 %29 to i32
  %call44 = call i32 @snd_usb_apply_interface_quirk(ptr noundef %chip, i32 noundef %iface_no, i32 noundef %conv43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end37.for.inc_crit_edge

if.end37.for.inc_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end47:                                         ; preds = %if.end37
  %30 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usb_id, align 4
  %shr.mask = and i32 %31, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 92405760, i32 %shr.mask)
  %cmp49 = icmp eq i32 %shr.mask, 92405760
  br i1 %cmp49, label %land.lhs.true51, label %if.end47.if.end60_crit_edge

if.end47.if.end60_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

land.lhs.true51:                                  ; preds = %if.end47
  %32 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bInterfaceClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %cmp54 = icmp eq i8 %33, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp57 = icmp ult i8 %9, 3
  %or.cond374 = select i1 %cmp54, i1 %cmp57, i1 false
  br i1 %or.cond374, label %land.lhs.true51.sw.bb_crit_edge, label %land.lhs.true51.if.end60_crit_edge

land.lhs.true51.if.end60_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

land.lhs.true51.sw.bb_crit_edge:                  ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end60:                                         ; preds = %land.lhs.true51.if.end60_crit_edge, %if.end47.if.end60_crit_edge
  %34 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %9, label %do.body [
    i8 0, label %if.end60.sw.bb_crit_edge
    i8 32, label %if.end60.sw.bb_crit_edge435
    i8 48, label %sw.bb101
  ]

if.end60.sw.bb_crit_edge435:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end60.sw.bb_crit_edge:                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

do.body:                                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__snd_usb_parse_audio_interface.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__snd_usb_parse_audio_interface, %if.then66)) #12
          to label %sw.bb [label %if.then66], !srcloc !99

if.then66:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__snd_usb_parse_audio_interface.__UNIQUE_ID_ddebug245, ptr noundef %dev67, ptr noundef nonnull @.str.6, i32 noundef %iface_no, i32 noundef %conv43, i32 noundef %conv) #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.then66, %do.body, %if.end60.sw.bb_crit_edge, %if.end60.sw.bb_crit_edge435, %land.lhs.true51.sw.bb_crit_edge
  %protocol.1 = phi i32 [ %conv, %if.end60.sw.bb_crit_edge ], [ %conv, %if.end60.sw.bb_crit_edge435 ], [ 0, %if.then66 ], [ 0, %do.body ], [ 0, %land.lhs.true51.sw.bb_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp69 = icmp ne i8 %29, 2
  %or.cond = select i1 %cmp69, i1 true, i1 %cmp72
  %tobool75.not = icmp eq ptr %fp.0397, null
  %or.cond275 = select i1 %or.cond, i1 true, i1 %tobool75.not
  br i1 %or.cond275, label %sw.bb.if.end99_crit_edge, label %land.lhs.true76

sw.bb.if.end99_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

land.lhs.true76:                                  ; preds = %sw.bb
  %altsetting77 = getelementptr inbounds %struct.audioformat, ptr %fp.0397, i32 0, i32 7
  %35 = ptrtoint ptr %altsetting77 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %altsetting77, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp79 = icmp eq i8 %36, 1
  br i1 %cmp79, label %land.lhs.true81, label %land.lhs.true76.if.end99_crit_edge

land.lhs.true76.if.end99_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

land.lhs.true81:                                  ; preds = %land.lhs.true76
  %channels = getelementptr inbounds %struct.audioformat, ptr %fp.0397, i32 0, i32 2
  %37 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp82 = icmp eq i32 %38, 1
  br i1 %cmp82, label %land.lhs.true84, label %land.lhs.true81.if.end99_crit_edge

land.lhs.true81.if.end99_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

land.lhs.true84:                                  ; preds = %land.lhs.true81
  %formats = getelementptr inbounds %struct.audioformat, ptr %fp.0397, i32 0, i32 1
  %39 = ptrtoint ptr %formats to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %formats, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %40)
  %cmp85 = icmp eq i64 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %protocol.1)
  %cmp88 = icmp eq i32 %protocol.1, 0
  %or.cond276 = select i1 %cmp85, i1 %cmp88, i1 false
  br i1 %or.cond276, label %land.lhs.true90, label %land.lhs.true84.if.end99_crit_edge

land.lhs.true84.if.end99_crit_edge:               ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

land.lhs.true90:                                  ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %endpoint, align 4
  %wMaxPacketSize94 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %wMaxPacketSize94 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %wMaxPacketSize94, align 4
  %45 = call i16 @llvm.bswap.i16(i16 %44)
  %conv95 = zext i16 %45 to i32
  %maxpacksize = getelementptr inbounds %struct.audioformat, ptr %fp.0397, i32 0, i32 20
  %46 = ptrtoint ptr %maxpacksize to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %maxpacksize, align 8
  %mul = shl i32 %47, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv95)
  %cmp96 = icmp eq i32 %mul, %conv95
  %spec.select = zext i1 %cmp96 to i32
  br label %if.end99

if.end99:                                         ; preds = %land.lhs.true90, %land.lhs.true84.if.end99_crit_edge, %land.lhs.true81.if.end99_crit_edge, %land.lhs.true76.if.end99_crit_edge, %sw.bb.if.end99_crit_edge
  %bm_quirk.0 = phi i32 [ 0, %land.lhs.true84.if.end99_crit_edge ], [ 0, %land.lhs.true81.if.end99_crit_edge ], [ 0, %land.lhs.true76.if.end99_crit_edge ], [ 0, %sw.bb.if.end99_crit_edge ], [ %spec.select, %land.lhs.true90 ]
  %48 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %protocol.1)
  %cmp.i = icmp eq i32 %protocol.1, 0
  %extra.i = getelementptr %struct.usb_host_interface, ptr %7, i32 %i.0389, i32 2
  %50 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %extra.i, align 4
  %extralen.i = getelementptr %struct.usb_host_interface, ptr %7, i32 %i.0389, i32 1
  %52 = ptrtoint ptr %extralen.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %extralen.i, align 4
  %call.i = call ptr @snd_usb_find_csint_desc(ptr noundef %51, i32 noundef %53, ptr noundef null, i8 noundef zeroext 1) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end99
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev3.i = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.8, i32 noundef %iface_no, i32 noundef %conv43) #16
  br label %for.inc

if.end.i:                                         ; preds = %if.then.i
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %call.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %55)
  %cmp4.i = icmp ult i8 %55, 7
  br i1 %cmp4.i, label %do.end9.i, label %if.end11.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev10.i = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.13, i32 noundef %iface_no, i32 noundef %conv43) #16
  br label %for.inc

if.end11.i:                                       ; preds = %if.end.i
  %wFormatTag.i = getelementptr inbounds %struct.uac1_as_header_descriptor, ptr %call.i, i32 0, i32 5
  %56 = ptrtoint ptr %wFormatTag.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %wFormatTag.i, align 1
  %58 = call i16 @llvm.bswap.i16(i16 %57) #12
  %conv12.i = zext i16 %58 to i64
  %59 = ptrtoint ptr %ctrl_intf.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctrl_intf.i.i, align 4
  %bTerminalLink.i = getelementptr inbounds %struct.uac1_as_header_descriptor, ptr %call.i, i32 0, i32 3
  %61 = ptrtoint ptr %bTerminalLink.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bTerminalLink.i, align 1
  %extra.i.i = getelementptr inbounds %struct.usb_host_interface, ptr %60, i32 0, i32 2
  %extralen.i.i = getelementptr inbounds %struct.usb_host_interface, ptr %60, i32 0, i32 1
  %63 = ptrtoint ptr %extra.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %extra.i.i, align 4
  %65 = ptrtoint ptr %extralen.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %extralen.i.i, align 4
  %call9.i.i = call ptr @snd_usb_find_csint_desc(ptr noundef %64, i32 noundef %66, ptr noundef null, i8 noundef zeroext 2) #12
  %tobool.not10.i.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not10.i.i, label %if.end11.i.found_clock.i_crit_edge, label %if.end11.i.while.body.i.i_crit_edge

if.end11.i.while.body.i.i_crit_edge:              ; preds = %if.end11.i
  br label %while.body.i.i

if.end11.i.found_clock.i_crit_edge:               ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %found_clock.i

while.body.i.i:                                   ; preds = %while.cond.backedge.i.i.while.body.i.i_crit_edge, %if.end11.i.while.body.i.i_crit_edge
  %call11.i.i = phi ptr [ %call.i.i, %while.cond.backedge.i.i.while.body.i.i_crit_edge ], [ %call9.i.i, %if.end11.i.while.body.i.i_crit_edge ]
  %call1.i.i = call zeroext i1 @snd_usb_validate_audio_desc(ptr noundef nonnull %call11.i.i, i32 noundef 0) #12
  br i1 %call1.i.i, label %if.end.i.i, label %while.body.i.i.while.cond.backedge.i.i_crit_edge

while.body.i.i.while.cond.backedge.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge.i.i

while.cond.backedge.i.i:                          ; preds = %if.end.i.i.while.cond.backedge.i.i_crit_edge, %while.body.i.i.while.cond.backedge.i.i_crit_edge
  %67 = ptrtoint ptr %extra.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %extra.i.i, align 4
  %69 = ptrtoint ptr %extralen.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %extralen.i.i, align 4
  %call.i.i = call ptr @snd_usb_find_csint_desc(ptr noundef %68, i32 noundef %70, ptr noundef nonnull %call11.i.i, i8 noundef zeroext 2) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %while.cond.backedge.i.i.found_clock.i_crit_edge, label %while.cond.backedge.i.i.while.body.i.i_crit_edge

while.cond.backedge.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

while.cond.backedge.i.i.found_clock.i_crit_edge:  ; preds = %while.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %found_clock.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %bTerminalID.i.i = getelementptr inbounds %struct.uac2_input_terminal_descriptor, ptr %call11.i.i, i32 0, i32 3
  %71 = ptrtoint ptr %bTerminalID.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %bTerminalID.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %72, i8 %62)
  %cmp.i.i = icmp eq i8 %72, %62
  br i1 %cmp.i.i, label %if.then16.i, label %if.end.i.i.while.cond.backedge.i.i_crit_edge

if.end.i.i.while.cond.backedge.i.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge.i.i

if.then16.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %bNrChannels.i = getelementptr inbounds %struct.uac_input_terminal_descriptor, ptr %call11.i.i, i32 0, i32 6
  %73 = ptrtoint ptr %bNrChannels.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %bNrChannels.i, align 1
  %wChannelConfig.i = getelementptr inbounds %struct.uac_input_terminal_descriptor, ptr %call11.i.i, i32 0, i32 7
  %75 = ptrtoint ptr %wChannelConfig.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %wChannelConfig.i, align 1
  %77 = call i16 @llvm.bswap.i16(i16 %76) #12
  %conv18.i = zext i16 %77 to i32
  br label %found_clock.i

if.else.i:                                        ; preds = %if.end99
  br i1 %tobool.not.i, label %do.end29.i, label %if.end31.i

do.end29.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev30.i = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30.i, ptr noundef nonnull @.str.8, i32 noundef %iface_no, i32 noundef %conv43) #16
  br label %for.inc

if.end31.i:                                       ; preds = %if.else.i
  %78 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %call.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %79)
  %cmp34.i = icmp ult i8 %79, 16
  br i1 %cmp34.i, label %do.end39.i, label %if.end41.i

do.end39.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev40.i = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40.i, ptr noundef nonnull @.str.13, i32 noundef %iface_no, i32 noundef %conv43) #16
  br label %for.inc

if.end41.i:                                       ; preds = %if.end31.i
  %bNrChannels42.i = getelementptr inbounds %struct.uac2_as_header_descriptor, ptr %call.i, i32 0, i32 7
  %80 = ptrtoint ptr %bNrChannels42.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %bNrChannels42.i, align 1
  %bmFormats.i = getelementptr inbounds %struct.uac2_as_header_descriptor, ptr %call.i, i32 0, i32 6
  %82 = ptrtoint ptr %bmFormats.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %bmFormats.i, align 1
  %84 = call i32 @llvm.bswap.i32(i32 %83) #12
  %conv44.i = zext i32 %84 to i64
  %bmChannelConfig.i = getelementptr inbounds %struct.uac2_as_header_descriptor, ptr %call.i, i32 0, i32 8
  %85 = ptrtoint ptr %bmChannelConfig.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %bmChannelConfig.i, align 1
  %87 = call i32 @llvm.bswap.i32(i32 %86) #12
  %88 = ptrtoint ptr %ctrl_intf.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ctrl_intf.i.i, align 4
  %bTerminalLink46.i = getelementptr inbounds %struct.uac2_as_header_descriptor, ptr %call.i, i32 0, i32 3
  %90 = ptrtoint ptr %bTerminalLink46.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %bTerminalLink46.i, align 1
  %extra.i226.i = getelementptr inbounds %struct.usb_host_interface, ptr %89, i32 0, i32 2
  %extralen.i227.i = getelementptr inbounds %struct.usb_host_interface, ptr %89, i32 0, i32 1
  %92 = ptrtoint ptr %extra.i226.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %extra.i226.i, align 4
  %94 = ptrtoint ptr %extralen.i227.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %extralen.i227.i, align 4
  %call9.i228.i = call ptr @snd_usb_find_csint_desc(ptr noundef %93, i32 noundef %95, ptr noundef null, i8 noundef zeroext 2) #12
  %tobool.not10.i229.i = icmp eq ptr %call9.i228.i, null
  br i1 %tobool.not10.i229.i, label %if.end41.i.if.end60.i_crit_edge, label %if.end41.i.while.body.i232.i_crit_edge

if.end41.i.while.body.i232.i_crit_edge:           ; preds = %if.end41.i
  br label %while.body.i232.i

if.end41.i.if.end60.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i

while.body.i232.i:                                ; preds = %while.cond.backedge.i235.i.while.body.i232.i_crit_edge, %if.end41.i.while.body.i232.i_crit_edge
  %call11.i230.i = phi ptr [ %call.i233.i, %while.cond.backedge.i235.i.while.body.i232.i_crit_edge ], [ %call9.i228.i, %if.end41.i.while.body.i232.i_crit_edge ]
  %call1.i231.i = call zeroext i1 @snd_usb_validate_audio_desc(ptr noundef nonnull %call11.i230.i, i32 noundef %protocol.1) #12
  br i1 %call1.i231.i, label %if.end.i239.i, label %while.body.i232.i.while.cond.backedge.i235.i_crit_edge

while.body.i232.i.while.cond.backedge.i235.i_crit_edge: ; preds = %while.body.i232.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge.i235.i

while.cond.backedge.i235.i:                       ; preds = %if.end.i239.i.while.cond.backedge.i235.i_crit_edge, %while.body.i232.i.while.cond.backedge.i235.i_crit_edge
  %96 = ptrtoint ptr %extra.i226.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %extra.i226.i, align 4
  %98 = ptrtoint ptr %extralen.i227.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %extralen.i227.i, align 4
  %call.i233.i = call ptr @snd_usb_find_csint_desc(ptr noundef %97, i32 noundef %99, ptr noundef nonnull %call11.i230.i, i8 noundef zeroext 2) #12
  %tobool.not.i234.i = icmp eq ptr %call.i233.i, null
  br i1 %tobool.not.i234.i, label %while.cond.backedge.i235.i.if.end60.i_crit_edge, label %while.cond.backedge.i235.i.while.body.i232.i_crit_edge

while.cond.backedge.i235.i.while.body.i232.i_crit_edge: ; preds = %while.cond.backedge.i235.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i232.i

while.cond.backedge.i235.i.if.end60.i_crit_edge:  ; preds = %while.cond.backedge.i235.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i

if.end.i239.i:                                    ; preds = %while.body.i232.i
  %bTerminalID.i236.i = getelementptr inbounds %struct.uac2_input_terminal_descriptor, ptr %call11.i230.i, i32 0, i32 3
  %100 = ptrtoint ptr %bTerminalID.i236.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %bTerminalID.i236.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %101, i8 %91)
  %cmp.i238.i = icmp eq i8 %101, %91
  br i1 %cmp.i238.i, label %if.then50.i, label %if.end.i239.i.while.cond.backedge.i235.i_crit_edge

if.end.i239.i.while.cond.backedge.i235.i_crit_edge: ; preds = %if.end.i239.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge.i235.i

if.then50.i:                                      ; preds = %if.end.i239.i
  %bCSourceID.i = getelementptr inbounds %struct.uac2_input_terminal_descriptor, ptr %call11.i230.i, i32 0, i32 6
  %102 = ptrtoint ptr %bCSourceID.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %bCSourceID.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool52.not.i = icmp eq i32 %86, 0
  br i1 %tobool52.not.i, label %land.lhs.true.i, label %if.then50.i.found_clock.i_crit_edge

if.then50.i.found_clock.i_crit_edge:              ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %found_clock.i

land.lhs.true.i:                                  ; preds = %if.then50.i
  %bNrChannels53.i = getelementptr inbounds %struct.uac2_input_terminal_descriptor, ptr %call11.i230.i, i32 0, i32 7
  %104 = ptrtoint ptr %bNrChannels53.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %bNrChannels53.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %81, i8 %105)
  %cmp55.i = icmp eq i8 %81, %105
  br i1 %cmp55.i, label %if.then57.i, label %land.lhs.true.i.found_clock.i_crit_edge

land.lhs.true.i.found_clock.i_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %found_clock.i

if.then57.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %bmChannelConfig58.i = getelementptr inbounds %struct.uac2_input_terminal_descriptor, ptr %call11.i230.i, i32 0, i32 8
  %106 = ptrtoint ptr %bmChannelConfig58.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %bmChannelConfig58.i, align 1
  %108 = call i32 @llvm.bswap.i32(i32 %107) #12
  br label %found_clock.i

if.end60.i:                                       ; preds = %while.cond.backedge.i235.i.if.end60.i_crit_edge, %if.end41.i.if.end60.i_crit_edge
  %109 = ptrtoint ptr %ctrl_intf.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ctrl_intf.i.i, align 4
  %111 = ptrtoint ptr %bTerminalLink46.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %bTerminalLink46.i, align 1
  %extra.i242.i = getelementptr inbounds %struct.usb_host_interface, ptr %110, i32 0, i32 2
  %extralen.i243.i = getelementptr inbounds %struct.usb_host_interface, ptr %110, i32 0, i32 1
  %113 = ptrtoint ptr %extra.i242.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %extra.i242.i, align 4
  %115 = ptrtoint ptr %extralen.i243.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %extralen.i243.i, align 4
  %call9.i244.i = call ptr @snd_usb_find_csint_desc(ptr noundef %114, i32 noundef %116, ptr noundef null, i8 noundef zeroext 3) #12
  %tobool.not10.i245.i = icmp eq ptr %call9.i244.i, null
  br i1 %tobool.not10.i245.i, label %if.end60.i.do.end72.i_crit_edge, label %if.end60.i.while.body.i248.i_crit_edge

if.end60.i.while.body.i248.i_crit_edge:           ; preds = %if.end60.i
  br label %while.body.i248.i

if.end60.i.do.end72.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end72.i

while.body.i248.i:                                ; preds = %while.cond.backedge.i251.i.while.body.i248.i_crit_edge, %if.end60.i.while.body.i248.i_crit_edge
  %call11.i246.i = phi ptr [ %call.i249.i, %while.cond.backedge.i251.i.while.body.i248.i_crit_edge ], [ %call9.i244.i, %if.end60.i.while.body.i248.i_crit_edge ]
  %call1.i247.i = call zeroext i1 @snd_usb_validate_audio_desc(ptr noundef nonnull %call11.i246.i, i32 noundef %protocol.1) #12
  br i1 %call1.i247.i, label %if.end.i255.i, label %while.body.i248.i.while.cond.backedge.i251.i_crit_edge

while.body.i248.i.while.cond.backedge.i251.i_crit_edge: ; preds = %while.body.i248.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge.i251.i

while.cond.backedge.i251.i:                       ; preds = %if.end.i255.i.while.cond.backedge.i251.i_crit_edge, %while.body.i248.i.while.cond.backedge.i251.i_crit_edge
  %117 = ptrtoint ptr %extra.i242.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %extra.i242.i, align 4
  %119 = ptrtoint ptr %extralen.i243.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %extralen.i243.i, align 4
  %call.i249.i = call ptr @snd_usb_find_csint_desc(ptr noundef %118, i32 noundef %120, ptr noundef nonnull %call11.i246.i, i8 noundef zeroext 3) #12
  %tobool.not.i250.i = icmp eq ptr %call.i249.i, null
  br i1 %tobool.not.i250.i, label %while.cond.backedge.i251.i.do.end72.i_crit_edge, label %while.cond.backedge.i251.i.while.body.i248.i_crit_edge

while.cond.backedge.i251.i.while.body.i248.i_crit_edge: ; preds = %while.cond.backedge.i251.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i248.i

while.cond.backedge.i251.i.do.end72.i_crit_edge:  ; preds = %while.cond.backedge.i251.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end72.i

if.end.i255.i:                                    ; preds = %while.body.i248.i
  %bTerminalID.i252.i = getelementptr inbounds %struct.uac2_output_terminal_descriptor, ptr %call11.i246.i, i32 0, i32 3
  %121 = ptrtoint ptr %bTerminalID.i252.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %bTerminalID.i252.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %122, i8 %112)
  %cmp.i254.i = icmp eq i8 %122, %112
  br i1 %cmp.i254.i, label %if.then66.i, label %if.end.i255.i.while.cond.backedge.i251.i_crit_edge

if.end.i255.i.while.cond.backedge.i251.i_crit_edge: ; preds = %if.end.i255.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge.i251.i

if.then66.i:                                      ; preds = %if.end.i255.i
  call void @__sanitizer_cov_trace_pc() #14
  %bCSourceID67.i = getelementptr inbounds %struct.uac2_output_terminal_descriptor, ptr %call11.i246.i, i32 0, i32 7
  %123 = ptrtoint ptr %bCSourceID67.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %bCSourceID67.i, align 1
  br label %found_clock.i

do.end72.i:                                       ; preds = %while.cond.backedge.i251.i.do.end72.i_crit_edge, %if.end60.i.do.end72.i_crit_edge
  %dev73.i = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15
  %125 = ptrtoint ptr %bTerminalLink46.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %bTerminalLink46.i, align 1
  %conv75.i = zext i8 %126 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev73.i, ptr noundef nonnull @.str.20, i32 noundef %iface_no, i32 noundef %conv43, i32 noundef %conv75.i) #16
  br label %for.inc

found_clock.i:                                    ; preds = %if.then66.i, %if.then57.i, %land.lhs.true.i.found_clock.i_crit_edge, %if.then50.i.found_clock.i_crit_edge, %if.then16.i, %while.cond.backedge.i.i.found_clock.i_crit_edge, %if.end11.i.found_clock.i_crit_edge
  %num_channels.3.shrunk.i = phi i8 [ %74, %if.then16.i ], [ 0, %if.end11.i.found_clock.i_crit_edge ], [ %81, %if.then66.i ], [ %81, %if.then57.i ], [ %81, %land.lhs.true.i.found_clock.i_crit_edge ], [ %81, %if.then50.i.found_clock.i_crit_edge ], [ 0, %while.cond.backedge.i.i.found_clock.i_crit_edge ]
  %chconfig.4.i = phi i32 [ %conv18.i, %if.then16.i ], [ 0, %if.end11.i.found_clock.i_crit_edge ], [ %87, %if.then66.i ], [ %108, %if.then57.i ], [ 0, %land.lhs.true.i.found_clock.i_crit_edge ], [ %87, %if.then50.i.found_clock.i_crit_edge ], [ 0, %while.cond.backedge.i.i.found_clock.i_crit_edge ]
  %clock.1.i = phi i8 [ 0, %if.then16.i ], [ 0, %if.end11.i.found_clock.i_crit_edge ], [ %124, %if.then66.i ], [ %103, %if.then57.i ], [ %103, %land.lhs.true.i.found_clock.i_crit_edge ], [ %103, %if.then50.i.found_clock.i_crit_edge ], [ 0, %while.cond.backedge.i.i.found_clock.i_crit_edge ]
  %format.2.i = phi i64 [ %conv12.i, %if.then16.i ], [ %conv12.i, %if.end11.i.found_clock.i_crit_edge ], [ %conv44.i, %if.then66.i ], [ %conv44.i, %if.then57.i ], [ %conv44.i, %land.lhs.true.i.found_clock.i_crit_edge ], [ %conv44.i, %if.then50.i.found_clock.i_crit_edge ], [ %conv12.i, %while.cond.backedge.i.i.found_clock.i_crit_edge ]
  %num_channels.3.i = zext i8 %num_channels.3.shrunk.i to i32
  %127 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %extra.i, align 4
  %129 = ptrtoint ptr %extralen.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %extralen.i, align 4
  %call83.i = call ptr @snd_usb_find_csint_desc(ptr noundef %128, i32 noundef %130, ptr noundef null, i8 noundef zeroext 2) #12
  %tobool84.not.i = icmp eq ptr %call83.i, null
  br i1 %tobool84.not.i, label %do.end88.i, label %if.end90.i

do.end88.i:                                       ; preds = %found_clock.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev89.i = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev89.i, ptr noundef nonnull @.str.23, i32 noundef %iface_no, i32 noundef %conv43) #16
  br label %for.inc

if.end90.i:                                       ; preds = %found_clock.i
  br i1 %cmp.i, label %land.lhs.true93.i, label %lor.lhs.false.i

land.lhs.true93.i:                                ; preds = %if.end90.i
  %131 = ptrtoint ptr %call83.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %call83.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %132)
  %cmp96.i = icmp ult i8 %132, 8
  br i1 %cmp96.i, label %land.lhs.true93.i.do.end108.i_crit_edge, label %land.lhs.true93.i.if.end110.i_crit_edge

land.lhs.true93.i.if.end110.i_crit_edge:          ; preds = %land.lhs.true93.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110.i

land.lhs.true93.i.do.end108.i_crit_edge:          ; preds = %land.lhs.true93.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end108.i

lor.lhs.false.i:                                  ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %protocol.1)
  %cmp98.i = icmp eq i32 %protocol.1, 32
  br i1 %cmp98.i, label %land.lhs.true100.i, label %lor.lhs.false.i.if.end110.i_crit_edge

lor.lhs.false.i.if.end110.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110.i

land.lhs.true100.i:                               ; preds = %lor.lhs.false.i
  %133 = ptrtoint ptr %call83.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %call83.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %134)
  %cmp103.i = icmp ult i8 %134, 6
  br i1 %cmp103.i, label %land.lhs.true100.i.do.end108.i_crit_edge, label %land.lhs.true100.i.if.end110.i_crit_edge

land.lhs.true100.i.if.end110.i_crit_edge:         ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110.i

land.lhs.true100.i.do.end108.i_crit_edge:         ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end108.i

do.end108.i:                                      ; preds = %land.lhs.true100.i.do.end108.i_crit_edge, %land.lhs.true93.i.do.end108.i_crit_edge
  %dev109.i = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev109.i, ptr noundef nonnull @.str.26, i32 noundef %iface_no, i32 noundef %conv43) #16
  br label %for.inc

if.end110.i:                                      ; preds = %land.lhs.true100.i.if.end110.i_crit_edge, %lor.lhs.false.i.if.end110.i_crit_edge, %land.lhs.true93.i.if.end110.i_crit_edge
  %cmp98287.i = phi ptr [ @convert_chmap.uac2_maps, %land.lhs.true100.i.if.end110.i_crit_edge ], [ @convert_chmap.uac1_maps, %lor.lhs.false.i.if.end110.i_crit_edge ], [ @convert_chmap.uac1_maps, %land.lhs.true93.i.if.end110.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bm_quirk.0)
  %tobool111.not.i = icmp eq i32 %bm_quirk.0, 0
  br i1 %tobool111.not.i, label %if.end110.i.if.end122.i_crit_edge, label %land.lhs.true112.i

if.end110.i.if.end122.i_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end122.i

land.lhs.true112.i:                               ; preds = %if.end110.i
  %bNrChannels113.i = getelementptr inbounds %struct.uac_format_type_i_continuous_descriptor, ptr %call83.i, i32 0, i32 4
  %135 = ptrtoint ptr %bNrChannels113.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %bNrChannels113.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %136)
  %cmp115.i = icmp eq i8 %136, 1
  br i1 %cmp115.i, label %land.lhs.true117.i, label %land.lhs.true112.i.if.end122.i_crit_edge

land.lhs.true112.i.if.end122.i_crit_edge:         ; preds = %land.lhs.true112.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end122.i

land.lhs.true117.i:                               ; preds = %land.lhs.true112.i
  %bSubframeSize.i = getelementptr inbounds %struct.uac_format_type_i_continuous_descriptor, ptr %call83.i, i32 0, i32 5
  %137 = ptrtoint ptr %bSubframeSize.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %bSubframeSize.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %138)
  %cmp119.i = icmp eq i8 %138, 2
  br i1 %cmp119.i, label %land.lhs.true117.i.for.inc_crit_edge, label %land.lhs.true117.i.if.end122.i_crit_edge

land.lhs.true117.i.if.end122.i_crit_edge:         ; preds = %land.lhs.true117.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end122.i

land.lhs.true117.i.for.inc_crit_edge:             ; preds = %land.lhs.true117.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end122.i:                                      ; preds = %land.lhs.true117.i.if.end122.i_crit_edge, %land.lhs.true112.i.if.end122.i_crit_edge, %if.end110.i.if.end122.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %139 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %139, i32 noundef 3520, i32 noundef 88) #15
  %tobool.not.i257.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i257.i, label %if.end122.i.if.then106_crit_edge, label %if.end.i260.i

if.end122.i.if.then106_crit_edge:                 ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then106

if.end.i260.i:                                    ; preds = %if.end122.i
  %iface.i.i = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i.i, i32 0, i32 6
  %140 = ptrtoint ptr %iface.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv.i292.i, ptr %iface.i.i, align 8
  %altsetting.i.i = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i.i, i32 0, i32 7
  %141 = ptrtoint ptr %altsetting.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %29, ptr %altsetting.i.i, align 1
  %conv2.i.i = trunc i32 %i.0389 to i8
  %altset_idx3.i.i = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i.i, i32 0, i32 9
  %142 = ptrtoint ptr %altset_idx3.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv2.i.i, ptr %altset_idx3.i.i, align 1
  %143 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %bEndpointAddress.i.i, align 2
  %endpoint4.i.i = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i.i, i32 0, i32 11
  %147 = ptrtoint ptr %endpoint4.i.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %endpoint4.i.i, align 1
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %144, i32 0, i32 3
  %148 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %bmAttributes.i.i, align 1
  %ep_attr.i.i = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i.i, i32 0, i32 12
  %150 = ptrtoint ptr %ep_attr.i.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %ep_attr.i.i, align 2
  %call8.i.i = call zeroext i8 @snd_usb_parse_datainterval(ptr noundef %chip, ptr noundef %arrayidx) #12
  %datainterval.i.i = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i.i, i32 0, i32 18
  %151 = ptrtoint ptr %datainterval.i.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %call8.i.i, ptr %datainterval.i.i, align 4
  %conv9.i.i = trunc i32 %protocol.1 to i8
  %protocol10.i.i = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i.i, i32 0, i32 19
  %152 = ptrtoint ptr %protocol10.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv9.i.i, ptr %protocol10.i.i, align 1
  %153 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %endpoint, align 4
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %154, i32 0, i32 4
  %155 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %wMaxPacketSize.i.i, align 4
  %157 = call i16 @llvm.bswap.i16(i16 %156) #12
  %conv14.i.i = zext i16 %157 to i32
  %maxpacksize.i.i = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i.i, i32 0, i32 20
  %158 = ptrtoint ptr %maxpacksize.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %conv14.i.i, ptr %maxpacksize.i.i, align 8
  %channels.i.i = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i.i, i32 0, i32 2
  %159 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %num_channels.3.i, ptr %channels.i.i, align 8
  %160 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev1, align 4
  %speed.i.i = getelementptr inbounds %struct.usb_device, ptr %161, i32 0, i32 4
  %162 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %163)
  %cmp.i259.i = icmp eq i32 %163, 3
  br i1 %cmp.i259.i, label %if.then16.i.i, label %if.end.i260.i.if.end127.i_crit_edge

if.end.i260.i.if.end127.i_crit_edge:              ; preds = %if.end.i260.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127.i

if.then16.i.i:                                    ; preds = %if.end.i260.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i.i = lshr i32 %conv14.i.i, 11
  %and.i.i = and i32 %shr.i.i, 3
  %add.i.i = add nuw nsw i32 %and.i.i, 1
  %and19.i.i = and i32 %conv14.i.i, 2047
  %mul.i.i = mul nuw nsw i32 %add.i.i, %and19.i.i
  %164 = ptrtoint ptr %maxpacksize.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %mul.i.i, ptr %maxpacksize.i.i, align 8
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then16.i.i, %if.end.i260.i.if.end127.i_crit_edge
  %clock23.i.i = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i.i, i32 0, i32 26
  %165 = ptrtoint ptr %clock23.i.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %clock.1.i, ptr %clock23.i.i, align 8
  %166 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store volatile ptr %call7.i.i.i.i, ptr %call7.i.i.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %167 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  %call128.i = call fastcc i32 @parse_uac_endpoint_attributes(ptr noundef %chip, ptr noundef %arrayidx, i32 noundef %protocol.1, i32 noundef %iface_no) #12
  %conv129.i = trunc i32 %call128.i to i8
  %attributes.i = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i.i, i32 0, i32 10
  %168 = ptrtoint ptr %attributes.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv129.i, ptr %attributes.i, align 4
  call void @snd_usb_audioformat_attributes_quirk(ptr noundef %chip, ptr noundef nonnull %call7.i.i.i.i, i32 noundef %27) #12
  %call130.i = call i32 @snd_usb_parse_audio_format(ptr noundef %chip, ptr noundef nonnull %call7.i.i.i.i, i64 noundef %format.2.i, ptr noundef nonnull %call83.i, i32 noundef %27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130.i)
  %cmp131.i = icmp slt i32 %call130.i, 0
  br i1 %cmp131.i, label %if.then133.i, label %if.end134.i

if.then133.i:                                     ; preds = %if.end127.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then133.i.audioformat_free.exit.i_crit_edge

if.then133.i.audioformat_free.exit.i_crit_edge:   ; preds = %if.then133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %audioformat_free.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then133.i
  call void @__sanitizer_cov_trace_pc() #14
  %169 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %prev.i.i.i, align 4
  %171 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %call7.i.i.i.i, align 8
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %170, ptr %prev1.i.i.i.i.i, align 4
  %174 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %174)
  store volatile ptr %172, ptr %170, align 4
  br label %audioformat_free.exit.i

audioformat_free.exit.i:                          ; preds = %if.end.i.i.i.i, %if.then133.i.audioformat_free.exit.i_crit_edge
  %175 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i.i.i, align 8
  %176 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %rate_table.i.i = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i.i, i32 0, i32 25
  %177 = ptrtoint ptr %rate_table.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %rate_table.i.i, align 4
  call void @kfree(ptr noundef %178) #12
  %chmap.i.i = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i.i, i32 0, i32 27
  %179 = ptrtoint ptr %chmap.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %chmap.i.i, align 4
  call void @kfree(ptr noundef %180) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #12
  br label %for.inc

if.end134.i:                                      ; preds = %if.end127.i
  %181 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %channels.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %182, i32 %num_channels.3.i)
  %cmp135.not.i = icmp ne i32 %182, %num_channels.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %182)
  %cmp.i262.i = icmp ugt i32 %182, 15
  br i1 %cmp.i262.i, label %if.end134.i.convert_chmap.exit.i_crit_edge, label %if.end.i265.i

if.end134.i.convert_chmap.exit.i_crit_edge:       ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_chmap.exit.i

if.end.i265.i:                                    ; preds = %if.end134.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %183 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i263.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %183, i32 noundef 3520, i32 noundef 16) #15
  %tobool.not.i264.i = icmp eq ptr %call7.i.i.i263.i, null
  br i1 %tobool.not.i264.i, label %if.end.i265.i.convert_chmap.exit.i_crit_edge, label %if.end2.i.i

if.end.i265.i.convert_chmap.exit.i_crit_edge:     ; preds = %if.end.i265.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_chmap.exit.i

if.end2.i.i:                                      ; preds = %if.end.i265.i
  %conv.i266.i = trunc i32 %182 to i8
  %184 = ptrtoint ptr %call7.i.i.i263.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %conv.i266.i, ptr %call7.i.i.i263.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chconfig.4.i)
  %tobool5.not.i288.i = icmp eq i32 %chconfig.4.i, 0
  %tobool5.not.i.i = select i1 %cmp135.not.i, i1 true, i1 %tobool5.not.i288.i
  br i1 %tobool5.not.i.i, label %if.else.i.i, label %if.end2.i.i.land.rhs.i.i_crit_edge

if.end2.i.i.land.rhs.i.i_crit_edge:               ; preds = %if.end2.i.i
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.inc.i.i.land.rhs.i.i_crit_edge, %if.end2.i.i.land.rhs.i.i_crit_edge
  %c.076.i.i = phi i32 [ %c.1.i.i, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ 0, %if.end2.i.i.land.rhs.i.i_crit_edge ]
  %maps.075.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ %cmp98287.i, %if.end2.i.i.land.rhs.i.i_crit_edge ]
  %bits.addr.074.i.i = phi i32 [ %shr.i268.i, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ %chconfig.4.i, %if.end2.i.i.land.rhs.i.i_crit_edge ]
  %185 = ptrtoint ptr %maps.075.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %maps.075.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool8.not.i.i = icmp eq i32 %186, 0
  br i1 %tobool8.not.i.i, label %land.rhs.i.i.if.end35.i.i_crit_edge, label %for.body.i.i

land.rhs.i.i.if.end35.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i.i

for.body.i.i:                                     ; preds = %land.rhs.i.i
  %and.i267.i = and i32 %bits.addr.074.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i267.i)
  %tobool9.not.i.i = icmp eq i32 %and.i267.i, 0
  br i1 %tobool9.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then10.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then10.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv11.i.i = trunc i32 %186 to i8
  %inc.i.i = add i32 %c.076.i.i, 1
  %arrayidx.i.i = getelementptr %struct.snd_pcm_chmap_elem, ptr %call7.i.i.i263.i, i32 0, i32 1, i32 %c.076.i.i
  %187 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %conv11.i.i, ptr %arrayidx.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then10.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %c.1.i.i = phi i32 [ %inc.i.i, %if.then10.i.i ], [ %c.076.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i32, ptr %maps.075.i.i, i32 1
  %shr.i268.i = lshr i32 %bits.addr.074.i.i, 1
  %tobool7.not.i.i = icmp ult i32 %bits.addr.074.i.i, 2
  br i1 %tobool7.not.i.i, label %for.inc.i.i.if.end35.i.i_crit_edge, label %for.inc.i.i.land.rhs.i.i_crit_edge

for.inc.i.i.land.rhs.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

for.inc.i.i.if.end35.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i.i

if.else.i.i:                                      ; preds = %if.end2.i.i
  %188 = zext i32 %182 to i64
  call void @__sanitizer_cov_trace_switch(i64 %188, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %182, label %if.else.i.i.land.rhs23.i.i_crit_edge [
    i32 1, label %if.then15.i.i
    i32 0, label %if.else.i.i.convert_chmap.exit.i_crit_edge
  ]

if.else.i.i.convert_chmap.exit.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_chmap.exit.i

if.else.i.i.land.rhs23.i.i_crit_edge:             ; preds = %if.else.i.i
  br label %land.rhs23.i.i

if.then15.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %map16.i.i = getelementptr inbounds %struct.snd_pcm_chmap_elem, ptr %call7.i.i.i263.i, i32 0, i32 1
  %189 = ptrtoint ptr %map16.i.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 2, ptr %map16.i.i, align 1
  br label %convert_chmap.exit.i

land.rhs23.i.i:                                   ; preds = %for.body26.i.i.land.rhs23.i.i_crit_edge, %if.else.i.i.land.rhs23.i.i_crit_edge
  %c.280.i.i = phi i32 [ %inc29.i.i, %for.body26.i.i.land.rhs23.i.i_crit_edge ], [ 0, %if.else.i.i.land.rhs23.i.i_crit_edge ]
  %maps.179.i.i = phi ptr [ %incdec.ptr32.i.i, %for.body26.i.i.land.rhs23.i.i_crit_edge ], [ %cmp98287.i, %if.else.i.i.land.rhs23.i.i_crit_edge ]
  %190 = ptrtoint ptr %maps.179.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %maps.179.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool24.not.i.i = icmp eq i32 %191, 0
  br i1 %tobool24.not.i.i, label %land.rhs23.i.i.if.end35.i.i_crit_edge, label %for.body26.i.i

land.rhs23.i.i.if.end35.i.i_crit_edge:            ; preds = %land.rhs23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i.i

for.body26.i.i:                                   ; preds = %land.rhs23.i.i
  %conv27.i.i = trunc i32 %191 to i8
  %inc29.i.i = add nuw nsw i32 %c.280.i.i, 1
  %arrayidx30.i.i = getelementptr %struct.snd_pcm_chmap_elem, ptr %call7.i.i.i263.i, i32 0, i32 1, i32 %c.280.i.i
  %192 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %conv27.i.i, ptr %arrayidx30.i.i, align 1
  %incdec.ptr32.i.i = getelementptr i32, ptr %maps.179.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc29.i.i, %182
  br i1 %exitcond.not.i.i, label %for.body26.i.i.convert_chmap.exit.i_crit_edge, label %for.body26.i.i.land.rhs23.i.i_crit_edge

for.body26.i.i.land.rhs23.i.i_crit_edge:          ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs23.i.i

for.body26.i.i.convert_chmap.exit.i_crit_edge:    ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_chmap.exit.i

if.end35.i.i:                                     ; preds = %land.rhs23.i.i.if.end35.i.i_crit_edge, %for.inc.i.i.if.end35.i.i_crit_edge, %land.rhs.i.i.if.end35.i.i_crit_edge
  %c.3.i.i = phi i32 [ %c.280.i.i, %land.rhs23.i.i.if.end35.i.i_crit_edge ], [ %c.1.i.i, %for.inc.i.i.if.end35.i.i_crit_edge ], [ %c.076.i.i, %land.rhs.i.i.if.end35.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %182, i32 %c.3.i.i)
  %cmp3783.i.i = icmp sgt i32 %182, %c.3.i.i
  br i1 %cmp3783.i.i, label %for.body39.preheader.i.i, label %if.end35.i.i.convert_chmap.exit.i_crit_edge

if.end35.i.i.convert_chmap.exit.i_crit_edge:      ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_chmap.exit.i

for.body39.preheader.i.i:                         ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %193 = add nsw i32 %c.3.i.i, 1
  %uglygep.i.i = getelementptr i8, ptr %call7.i.i.i263.i, i32 %193
  %194 = sub i32 %182, %c.3.i.i
  %195 = call ptr @memset(ptr %uglygep.i.i, i32 0, i32 %194)
  br label %convert_chmap.exit.i

convert_chmap.exit.i:                             ; preds = %for.body39.preheader.i.i, %if.end35.i.i.convert_chmap.exit.i_crit_edge, %for.body26.i.i.convert_chmap.exit.i_crit_edge, %if.then15.i.i, %if.else.i.i.convert_chmap.exit.i_crit_edge, %if.end.i265.i.convert_chmap.exit.i_crit_edge, %if.end134.i.convert_chmap.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %if.end134.i.convert_chmap.exit.i_crit_edge ], [ null, %if.end.i265.i.convert_chmap.exit.i_crit_edge ], [ %call7.i.i.i263.i, %if.end35.i.i.convert_chmap.exit.i_crit_edge ], [ %call7.i.i.i263.i, %for.body39.preheader.i.i ], [ %call7.i.i.i263.i, %if.then15.i.i ], [ %call7.i.i.i263.i, %if.else.i.i.convert_chmap.exit.i_crit_edge ], [ %call7.i.i.i263.i, %for.body26.i.i.convert_chmap.exit.i_crit_edge ]
  %chmap.i = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i.i, i32 0, i32 27
  %196 = ptrtoint ptr %chmap.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %retval.0.i.i, ptr %chmap.i, align 4
  br label %sw.epilog

sw.bb101:                                         ; preds = %if.end60
  %197 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %hc_header.i) #12
  %199 = call ptr @memset(ptr %hc_header.i, i32 255, i32 6)
  %200 = ptrtoint ptr %badd_profile2.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %badd_profile2.i, align 4
  %conv3.i = and i32 %201, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i)
  %cmp.not.i = icmp eq i32 %conv3.i, 0
  br i1 %cmp.not.i, label %if.end22.i, label %if.then.i281

if.then.i281:                                     ; preds = %sw.bb101
  %202 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %endpoint, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %203, i32 0, i32 4
  %204 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %wMaxPacketSize.i, align 4
  %206 = call i16 @llvm.bswap.i16(i16 %205) #12
  %207 = zext i16 %206 to i64
  call void @__sanitizer_cov_trace_switch(i64 %207, ptr @__sancov_gen_cov_switch_values.53)
  switch i16 %206, label %do.end.i282 [
    i16 96, label %if.then.i281.sw.epilog.i_crit_edge
    i16 98, label %if.then.i281.sw.epilog.i_crit_edge436
    i16 144, label %if.then.i281.sw.bb7.i_crit_edge
    i16 147, label %if.then.i281.sw.bb7.i_crit_edge437
    i16 192, label %if.then.i281.sw.bb8.i_crit_edge
    i16 196, label %if.then.i281.sw.bb8.i_crit_edge438
    i16 288, label %if.then.i281.sw.bb9.i_crit_edge
    i16 294, label %if.then.i281.sw.bb9.i_crit_edge439
  ]

if.then.i281.sw.bb9.i_crit_edge439:               ; preds = %if.then.i281
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb9.i

if.then.i281.sw.bb9.i_crit_edge:                  ; preds = %if.then.i281
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb9.i

if.then.i281.sw.bb8.i_crit_edge438:               ; preds = %if.then.i281
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8.i

if.then.i281.sw.bb8.i_crit_edge:                  ; preds = %if.then.i281
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8.i

if.then.i281.sw.bb7.i_crit_edge437:               ; preds = %if.then.i281
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

if.then.i281.sw.bb7.i_crit_edge:                  ; preds = %if.then.i281
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

if.then.i281.sw.epilog.i_crit_edge436:            ; preds = %if.then.i281
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.then.i281.sw.epilog.i_crit_edge:               ; preds = %if.then.i281
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

do.end.i282:                                      ; preds = %if.then.i281
  call void @__sanitizer_cov_trace_pc() #14
  %dev6.i = getelementptr inbounds %struct.usb_device, ptr %198, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.31, i32 noundef %iface_no, i32 noundef %conv43) #16
  br label %snd_usb_get_audioformat_uac3.exit

sw.bb7.i:                                         ; preds = %if.then.i281.sw.bb7.i_crit_edge, %if.then.i281.sw.bb7.i_crit_edge437
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.then.i281.sw.bb8.i_crit_edge, %if.then.i281.sw.bb8.i_crit_edge438
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.then.i281.sw.bb9.i_crit_edge, %if.then.i281.sw.bb9.i_crit_edge439
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %if.then.i281.sw.epilog.i_crit_edge, %if.then.i281.sw.epilog.i_crit_edge436
  %badd_formats.0.i = phi i64 [ 4294967296, %sw.bb9.i ], [ 4, %sw.bb8.i ], [ 4294967296, %sw.bb7.i ], [ 4, %if.then.i281.sw.epilog.i_crit_edge ], [ 4, %if.then.i281.sw.epilog.i_crit_edge436 ]
  %cmp12.i = phi i1 [ false, %sw.bb9.i ], [ false, %sw.bb8.i ], [ true, %sw.bb7.i ], [ true, %if.then.i281.sw.epilog.i_crit_edge ], [ true, %if.then.i281.sw.epilog.i_crit_edge436 ]
  %num_channels.0.i = phi i32 [ 2, %sw.bb9.i ], [ 2, %sw.bb8.i ], [ 1, %sw.bb7.i ], [ 1, %if.then.i281.sw.epilog.i_crit_edge ], [ 1, %if.then.i281.sw.epilog.i_crit_edge436 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %208 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %208, i32 noundef 3520, i32 noundef 16) #15
  %tobool.not.i283 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i283, label %sw.epilog.i.snd_usb_get_audioformat_uac3.exit_crit_edge, label %if.end.i284

sw.epilog.i.snd_usb_get_audioformat_uac3.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_usb_get_audioformat_uac3.exit

if.end.i284:                                      ; preds = %sw.epilog.i
  br i1 %cmp12.i, label %if.end.i284.cleanup.i_crit_edge, label %if.else.i285

if.end.i284.cleanup.i_crit_edge:                  ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.else.i285:                                     ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx19.i = getelementptr %struct.snd_pcm_chmap_elem, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %209 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 4, ptr %arrayidx19.i, align 2
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i285, %if.end.i284.cleanup.i_crit_edge
  %.sink.i = phi i8 [ 3, %if.else.i285 ], [ 2, %if.end.i284.cleanup.i_crit_edge ]
  %210 = getelementptr inbounds %struct.snd_pcm_chmap_elem, ptr %call7.i.i.i, i32 0, i32 1
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %.sink.i, ptr %210, align 1
  %conv21.i = trunc i32 %num_channels.0.i to i8
  %212 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %conv21.i, ptr %call7.i.i.i, align 8
  br label %found_clock.i312

if.end22.i:                                       ; preds = %sw.bb101
  %extra.i286 = getelementptr %struct.usb_host_interface, ptr %7, i32 %i.0389, i32 2
  %213 = ptrtoint ptr %extra.i286 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %extra.i286, align 4
  %extralen.i287 = getelementptr %struct.usb_host_interface, ptr %7, i32 %i.0389, i32 1
  %215 = ptrtoint ptr %extralen.i287 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %extralen.i287, align 4
  %call23.i = call ptr @snd_usb_find_csint_desc(ptr noundef %214, i32 noundef %216, ptr noundef null, i8 noundef zeroext 1) #12
  %tobool24.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool24.not.i, label %do.end28.i, label %if.end30.i

do.end28.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev29.i = getelementptr inbounds %struct.usb_device, ptr %198, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i, ptr noundef nonnull @.str.8, i32 noundef %iface_no, i32 noundef %conv43) #16
  br label %snd_usb_get_audioformat_uac3.exit

if.end30.i:                                       ; preds = %if.end22.i
  %217 = ptrtoint ptr %call23.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %call23.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %218)
  %cmp32.i = icmp ult i8 %218, 23
  br i1 %cmp32.i, label %do.end37.i, label %if.end39.i

do.end37.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev38.i = getelementptr inbounds %struct.usb_device, ptr %198, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38.i, ptr noundef nonnull @.str.13, i32 noundef %iface_no, i32 noundef %conv43) #16
  br label %snd_usb_get_audioformat_uac3.exit

if.end39.i:                                       ; preds = %if.end30.i
  %wClusterDescrID.i = getelementptr inbounds %struct.uac3_as_header_descriptor, ptr %call23.i, i32 0, i32 5
  %219 = ptrtoint ptr %wClusterDescrID.i to i32
  call void @__asan_loadN_noabort(i32 %219, i32 2)
  %220 = load i16, ptr %wClusterDescrID.i, align 1
  %221 = call i16 @llvm.bswap.i16(i16 %220) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %220)
  %tobool40.not.i = icmp eq i16 %220, 0
  br i1 %tobool40.not.i, label %do.end44.i, label %if.end46.i

do.end44.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev45.i = getelementptr inbounds %struct.usb_device, ptr %198, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45.i, ptr noundef nonnull @.str.38, i32 noundef %iface_no, i32 noundef %conv43) #16
  br label %snd_usb_get_audioformat_uac3.exit

if.end46.i:                                       ; preds = %if.end39.i
  %222 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %dev1, align 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %223, align 8
  %shl.i.i = shl i32 %225, 8
  %or50.i = or i32 %shl.i.i, -2147483520
  %226 = ptrtoint ptr %ctrl_intf.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ctrl_intf.i.i, align 4
  %bInterfaceNumber.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %227, i32 0, i32 2
  %228 = ptrtoint ptr %bInterfaceNumber.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %bInterfaceNumber.i.i, align 2
  %conv52.i = zext i8 %229 to i16
  %call53.i = call i32 @snd_usb_ctl_msg(ptr noundef %223, i32 noundef %or50.i, i8 noundef zeroext 6, i8 noundef zeroext -95, i16 noundef zeroext %221, i16 noundef zeroext %conv52.i, ptr noundef nonnull %hc_header.i, i16 noundef zeroext 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp slt i32 %call53.i, 0
  br i1 %cmp54.i, label %if.then56.i, label %if.else58.i

if.then56.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #14
  %230 = inttoptr i32 %call53.i to ptr
  br label %snd_usb_get_audioformat_uac3.exit

if.else58.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call53.i)
  %cmp59.not.i = icmp eq i32 %call53.i, 6
  br i1 %cmp59.not.i, label %if.end68.i, label %do.end64.i

do.end64.i:                                       ; preds = %if.else58.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev65.i = getelementptr inbounds %struct.usb_device, ptr %198, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65.i, ptr noundef nonnull @.str.41, i32 noundef %iface_no, i32 noundef %conv43) #16
  br label %snd_usb_get_audioformat_uac3.exit

if.end68.i:                                       ; preds = %if.else58.i
  %231 = ptrtoint ptr %hc_header.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %hc_header.i, align 2
  %233 = call i16 @llvm.bswap.i16(i16 %232) #12
  %conv70.i = zext i16 %233 to i32
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv70.i, i32 noundef 3520) #17
  %tobool72.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool72.not.i, label %if.end68.i.snd_usb_get_audioformat_uac3.exit_crit_edge, label %if.end75.i

if.end68.i.snd_usb_get_audioformat_uac3.exit_crit_edge: ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_usb_get_audioformat_uac3.exit

if.end75.i:                                       ; preds = %if.end68.i
  %234 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dev1, align 4
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %235, align 8
  %shl.i265.i = shl i32 %237, 8
  %or80.i = or i32 %shl.i265.i, -2147483520
  %238 = ptrtoint ptr %ctrl_intf.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %ctrl_intf.i.i, align 4
  %bInterfaceNumber.i267.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %239, i32 0, i32 2
  %240 = ptrtoint ptr %bInterfaceNumber.i267.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %bInterfaceNumber.i267.i, align 2
  %conv82.i = zext i8 %241 to i16
  %call83.i289 = call i32 @snd_usb_ctl_msg(ptr noundef %235, i32 noundef %or80.i, i8 noundef zeroext 6, i8 noundef zeroext -95, i16 noundef zeroext %221, i16 noundef zeroext %conv82.i, ptr noundef nonnull %call9.i.i.i, i16 noundef zeroext %233) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i289)
  %cmp84.i = icmp slt i32 %call83.i289, 0
  br i1 %cmp84.i, label %if.then86.i, label %if.else88.i

if.then86.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #12
  %242 = inttoptr i32 %call83.i289 to ptr
  br label %snd_usb_get_audioformat_uac3.exit

if.else88.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call83.i289, i32 %conv70.i)
  %cmp90.not.i = icmp eq i32 %call83.i289, %conv70.i
  br i1 %cmp90.not.i, label %if.end99.i, label %do.end95.i

do.end95.i:                                       ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev96.i = getelementptr inbounds %struct.usb_device, ptr %198, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev96.i, ptr noundef nonnull @.str.44, i32 noundef %iface_no, i32 noundef %conv43) #16
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #12
  br label %snd_usb_get_audioformat_uac3.exit

if.end99.i:                                       ; preds = %if.else88.i
  %bNrChannels.i290 = getelementptr inbounds %struct.uac3_cluster_header_descriptor, ptr %call9.i.i.i, i32 0, i32 4
  %243 = ptrtoint ptr %bNrChannels.i290 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %bNrChannels.i290, align 2
  %conv100.i = zext i8 %244 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %244)
  %cmp.i.i291 = icmp ugt i8 %244, 15
  br i1 %cmp.i.i291, label %if.end99.i.convert_chmap_v3.exit.i_crit_edge, label %if.end.i.i294

if.end99.i.convert_chmap_v3.exit.i_crit_edge:     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_chmap_v3.exit.i

if.end.i.i294:                                    ; preds = %if.end99.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %245 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i292 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %245, i32 noundef 3520, i32 noundef 16) #15
  %tobool.not.i.i293 = icmp eq ptr %call7.i.i.i.i292, null
  br i1 %tobool.not.i.i293, label %if.end.i.i294.convert_chmap_v3.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i294.convert_chmap_v3.exit.i_crit_edge:  ; preds = %if.end.i.i294
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_chmap_v3.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i294
  %246 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %call9.i.i.i, align 128
  %248 = call i16 @llvm.bswap.i16(i16 %247) #12
  %conv4.i.i = zext i16 %248 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call9.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %248)
  %cmp586.i.i = icmp ugt i16 %248, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %cmp787.i.i = icmp ne i8 %244, 0
  %or.cond88.i.i = select i1 %cmp586.i.i, i1 %cmp787.i.i, i1 false
  br i1 %or.cond88.i.i, label %while.body.preheader.i.i, label %if.end3.i.i.if.end51.i.i_crit_edge

if.end3.i.i.if.end51.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i.i

while.body.preheader.i.i:                         ; preds = %if.end3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i.i, i32 7
  br label %while.body.i.i295

while.body.i.i295:                                ; preds = %if.end44.i.i.while.body.i.i295_crit_edge, %while.body.preheader.i.i
  %p.090.i.i = phi ptr [ %add.ptr46.i.i, %if.end44.i.i.while.body.i.i295_crit_edge ], [ %add.ptr.i.i, %while.body.preheader.i.i ]
  %c.089.i.i = phi i32 [ %c.1.i.i298, %if.end44.i.i.while.body.i.i295_crit_edge ], [ 0, %while.body.preheader.i.i ]
  %249 = ptrtoint ptr %p.090.i.i to i32
  call void @__asan_loadN_noabort(i32 %249, i32 2)
  %250 = load i16, ptr %p.090.i.i, align 1
  %251 = call i16 @llvm.bswap.i16(i16 %250) #12
  %bSegmentType.i.i = getelementptr inbounds %struct.uac3_cluster_segment_descriptor, ptr %p.090.i.i, i32 0, i32 1
  %252 = ptrtoint ptr %bSegmentType.i.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %bSegmentType.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %253)
  %cmp11.i.i = icmp eq i8 %253, 32
  br i1 %cmp11.i.i, label %if.then13.i.i, label %while.body.i.i295.if.end44.i.i_crit_edge

while.body.i.i295.if.end44.i.i_crit_edge:         ; preds = %while.body.i.i295
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i.i

if.then13.i.i:                                    ; preds = %while.body.i.i295
  %bChRelationship.i.i = getelementptr inbounds %struct.uac3_cluster_information_segment_descriptor, ptr %p.090.i.i, i32 0, i32 3
  %254 = ptrtoint ptr %bChRelationship.i.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %bChRelationship.i.i, align 1
  %256 = zext i8 %255 to i64
  call void @__sanitizer_cov_trace_switch(i64 %256, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %255, label %sw.default.i.i [
    i8 1, label %if.then13.i.i.sw.epilog.i.i_crit_edge
    i8 2, label %if.then13.i.i.sw.bb15.i.i_crit_edge
    i8 -128, label %if.then13.i.i.sw.bb15.i.i_crit_edge440
    i8 -69, label %if.then13.i.i.sw.bb15.i.i_crit_edge441
    i8 3, label %if.then13.i.i.sw.bb16.i.i_crit_edge
    i8 -127, label %if.then13.i.i.sw.bb16.i.i_crit_edge442
    i8 -68, label %if.then13.i.i.sw.bb16.i.i_crit_edge443
    i8 -126, label %sw.bb17.i.i
    i8 -125, label %sw.bb18.i.i
    i8 -124, label %sw.bb19.i.i
    i8 -121, label %sw.bb20.i.i
    i8 -120, label %sw.bb21.i.i
    i8 -117, label %sw.bb22.i.i
    i8 -116, label %sw.bb23.i.i
    i8 -115, label %sw.bb24.i.i
    i8 -114, label %sw.bb25.i.i
    i8 -113, label %sw.bb26.i.i
    i8 -110, label %sw.bb27.i.i
    i8 -109, label %sw.bb28.i.i
    i8 -108, label %sw.bb29.i.i
    i8 -107, label %sw.bb30.i.i
    i8 -106, label %sw.bb31.i.i
    i8 -105, label %sw.bb32.i.i
    i8 -102, label %sw.bb33.i.i
    i8 -101, label %sw.bb34.i.i
    i8 -98, label %sw.bb35.i.i
    i8 -97, label %sw.bb36.i.i
    i8 -96, label %sw.bb37.i.i
    i8 -91, label %sw.bb38.i.i
    i8 -72, label %sw.bb39.i.i
    i8 -71, label %sw.bb40.i.i
    i8 -70, label %sw.bb41.i.i
  ]

if.then13.i.i.sw.bb16.i.i_crit_edge443:           ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb16.i.i

if.then13.i.i.sw.bb16.i.i_crit_edge442:           ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb16.i.i

if.then13.i.i.sw.bb16.i.i_crit_edge:              ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb16.i.i

if.then13.i.i.sw.bb15.i.i_crit_edge441:           ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb15.i.i

if.then13.i.i.sw.bb15.i.i_crit_edge440:           ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb15.i.i

if.then13.i.i.sw.bb15.i.i_crit_edge:              ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb15.i.i

if.then13.i.i.sw.epilog.i.i_crit_edge:            ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb15.i.i:                                      ; preds = %if.then13.i.i.sw.bb15.i.i_crit_edge, %if.then13.i.i.sw.bb15.i.i_crit_edge440, %if.then13.i.i.sw.bb15.i.i_crit_edge441
  br label %sw.epilog.i.i

sw.bb16.i.i:                                      ; preds = %if.then13.i.i.sw.bb16.i.i_crit_edge, %if.then13.i.i.sw.bb16.i.i_crit_edge442, %if.then13.i.i.sw.bb16.i.i_crit_edge443
  br label %sw.epilog.i.i

sw.bb17.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb18.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb19.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb20.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb21.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb22.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb23.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb24.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb25.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb26.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb27.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb28.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb29.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb30.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb31.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb32.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb33.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb34.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb35.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb36.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb37.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb38.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb39.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb40.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb41.i.i:                                      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.default.i.i, %sw.bb41.i.i, %sw.bb40.i.i, %sw.bb39.i.i, %sw.bb38.i.i, %sw.bb37.i.i, %sw.bb36.i.i, %sw.bb35.i.i, %sw.bb34.i.i, %sw.bb33.i.i, %sw.bb32.i.i, %sw.bb31.i.i, %sw.bb30.i.i, %sw.bb29.i.i, %sw.bb28.i.i, %sw.bb27.i.i, %sw.bb26.i.i, %sw.bb25.i.i, %sw.bb24.i.i, %sw.bb23.i.i, %sw.bb22.i.i, %sw.bb21.i.i, %sw.bb20.i.i, %sw.bb19.i.i, %sw.bb18.i.i, %sw.bb17.i.i, %sw.bb16.i.i, %sw.bb15.i.i, %if.then13.i.i.sw.epilog.i.i_crit_edge
  %map.0.i.i = phi i8 [ 0, %sw.default.i.i ], [ 33, %sw.bb41.i.i ], [ 32, %sw.bb40.i.i ], [ 8, %sw.bb39.i.i ], [ 34, %sw.bb38.i.i ], [ 27, %sw.bb37.i.i ], [ 26, %sw.bb36.i.i ], [ 25, %sw.bb35.i.i ], [ 31, %sw.bb34.i.i ], [ 30, %sw.bb33.i.i ], [ 29, %sw.bb32.i.i ], [ 28, %sw.bb31.i.i ], [ 24, %sw.bb30.i.i ], [ 23, %sw.bb29.i.i ], [ 22, %sw.bb28.i.i ], [ 21, %sw.bb27.i.i ], [ 15, %sw.bb26.i.i ], [ 14, %sw.bb25.i.i ], [ 11, %sw.bb24.i.i ], [ 6, %sw.bb23.i.i ], [ 5, %sw.bb22.i.i ], [ 10, %sw.bb21.i.i ], [ 9, %sw.bb20.i.i ], [ 13, %sw.bb19.i.i ], [ 12, %sw.bb18.i.i ], [ 7, %sw.bb17.i.i ], [ 4, %sw.bb16.i.i ], [ 3, %sw.bb15.i.i ], [ 2, %if.then13.i.i.sw.epilog.i.i_crit_edge ]
  %inc.i.i296 = add nuw i32 %c.089.i.i, 1
  %arrayidx.i.i297 = getelementptr %struct.snd_pcm_chmap_elem, ptr %call7.i.i.i.i292, i32 0, i32 1, i32 %c.089.i.i
  %257 = ptrtoint ptr %arrayidx.i.i297 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %map.0.i.i, ptr %arrayidx.i.i297, align 1
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %sw.epilog.i.i, %while.body.i.i295.if.end44.i.i_crit_edge
  %c.1.i.i298 = phi i32 [ %inc.i.i296, %sw.epilog.i.i ], [ %c.089.i.i, %while.body.i.i295.if.end44.i.i_crit_edge ]
  %conv45.i.i = zext i16 %251 to i32
  %add.ptr46.i.i = getelementptr i8, ptr %p.090.i.i, i32 %conv45.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr46.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %conv4.i.i)
  %cmp5.i.i = icmp slt i32 %sub.ptr.sub.i.i, %conv4.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %c.1.i.i298, i32 %conv100.i)
  %cmp7.i.i = icmp ult i32 %c.1.i.i298, %conv100.i
  %or.cond.i.i = select i1 %cmp5.i.i, i1 %cmp7.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end44.i.i.while.body.i.i295_crit_edge, label %while.end.i.i

if.end44.i.i.while.body.i.i295_crit_edge:         ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i295

while.end.i.i:                                    ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %c.1.i.i298, i32 %conv100.i)
  %cmp47.i.i = icmp ugt i32 %c.1.i.i298, %conv100.i
  br i1 %cmp47.i.i, label %do.end.i.i, label %while.end.i.i.if.end51.i.i_crit_edge

while.end.i.i.if.end51.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i.i

do.end.i.i:                                       ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call50.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #16
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %do.end.i.i, %while.end.i.i.if.end51.i.i_crit_edge, %if.end3.i.i.if.end51.i.i_crit_edge
  %c.0.lcssa95.i.i = phi i32 [ %c.1.i.i298, %do.end.i.i ], [ %c.1.i.i298, %while.end.i.i.if.end51.i.i_crit_edge ], [ 0, %if.end3.i.i.if.end51.i.i_crit_edge ]
  %258 = ptrtoint ptr %call7.i.i.i.i292 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %244, ptr %call7.i.i.i.i292, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %c.0.lcssa95.i.i, i32 %conv100.i)
  %cmp5491.i.i = icmp ult i32 %c.0.lcssa95.i.i, %conv100.i
  br i1 %cmp5491.i.i, label %for.body.preheader.i.i, label %if.end51.i.i.convert_chmap_v3.exit.i_crit_edge

if.end51.i.i.convert_chmap_v3.exit.i_crit_edge:   ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_chmap_v3.exit.i

for.body.preheader.i.i:                           ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %259 = add nuw i32 %c.0.lcssa95.i.i, 1
  %uglygep.i.i299 = getelementptr i8, ptr %call7.i.i.i.i292, i32 %259
  %260 = sub i32 %conv100.i, %c.0.lcssa95.i.i
  %261 = call ptr @memset(ptr %uglygep.i.i299, i32 0, i32 %260)
  br label %convert_chmap_v3.exit.i

convert_chmap_v3.exit.i:                          ; preds = %for.body.preheader.i.i, %if.end51.i.i.convert_chmap_v3.exit.i_crit_edge, %if.end.i.i294.convert_chmap_v3.exit.i_crit_edge, %if.end99.i.convert_chmap_v3.exit.i_crit_edge
  %retval.0.i.i300 = phi ptr [ null, %if.end99.i.convert_chmap_v3.exit.i_crit_edge ], [ null, %if.end.i.i294.convert_chmap_v3.exit.i_crit_edge ], [ %call7.i.i.i.i292, %if.end51.i.i.convert_chmap_v3.exit.i_crit_edge ], [ %call7.i.i.i.i292, %for.body.preheader.i.i ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #12
  %262 = ptrtoint ptr %ctrl_intf.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %ctrl_intf.i.i, align 4
  %bTerminalLink.i301 = getelementptr inbounds %struct.uac3_as_header_descriptor, ptr %call23.i, i32 0, i32 3
  %264 = ptrtoint ptr %bTerminalLink.i301 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %bTerminalLink.i301, align 1
  %extra.i.i302 = getelementptr inbounds %struct.usb_host_interface, ptr %263, i32 0, i32 2
  %extralen.i.i303 = getelementptr inbounds %struct.usb_host_interface, ptr %263, i32 0, i32 1
  %266 = ptrtoint ptr %extra.i.i302 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %extra.i.i302, align 4
  %268 = ptrtoint ptr %extralen.i.i303 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %extralen.i.i303, align 4
  %call9.i.i304 = call ptr @snd_usb_find_csint_desc(ptr noundef %267, i32 noundef %269, ptr noundef null, i8 noundef zeroext 2) #12
  %tobool.not10.i.i305 = icmp eq ptr %call9.i.i304, null
  br i1 %tobool.not10.i.i305, label %convert_chmap_v3.exit.i.if.end107.i_crit_edge, label %convert_chmap_v3.exit.i.while.body.i270.i_crit_edge

convert_chmap_v3.exit.i.while.body.i270.i_crit_edge: ; preds = %convert_chmap_v3.exit.i
  br label %while.body.i270.i

convert_chmap_v3.exit.i.if.end107.i_crit_edge:    ; preds = %convert_chmap_v3.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107.i

while.body.i270.i:                                ; preds = %while.cond.backedge.i.i309.while.body.i270.i_crit_edge, %convert_chmap_v3.exit.i.while.body.i270.i_crit_edge
  %call11.i.i306 = phi ptr [ %call.i.i308, %while.cond.backedge.i.i309.while.body.i270.i_crit_edge ], [ %call9.i.i304, %convert_chmap_v3.exit.i.while.body.i270.i_crit_edge ]
  %call1.i.i307 = call zeroext i1 @snd_usb_validate_audio_desc(ptr noundef nonnull %call11.i.i306, i32 noundef 48) #12
  br i1 %call1.i.i307, label %if.end.i274.i, label %while.body.i270.i.while.cond.backedge.i.i309_crit_edge

while.body.i270.i.while.cond.backedge.i.i309_crit_edge: ; preds = %while.body.i270.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge.i.i309

while.cond.backedge.i.i309:                       ; preds = %if.end.i274.i.while.cond.backedge.i.i309_crit_edge, %while.body.i270.i.while.cond.backedge.i.i309_crit_edge
  %270 = ptrtoint ptr %extra.i.i302 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %extra.i.i302, align 4
  %272 = ptrtoint ptr %extralen.i.i303 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %extralen.i.i303, align 4
  %call.i.i308 = call ptr @snd_usb_find_csint_desc(ptr noundef %271, i32 noundef %273, ptr noundef nonnull %call11.i.i306, i8 noundef zeroext 2) #12
  %tobool.not.i271.i = icmp eq ptr %call.i.i308, null
  br i1 %tobool.not.i271.i, label %while.cond.backedge.i.i309.if.end107.i_crit_edge, label %while.cond.backedge.i.i309.while.body.i270.i_crit_edge

while.cond.backedge.i.i309.while.body.i270.i_crit_edge: ; preds = %while.cond.backedge.i.i309
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i270.i

while.cond.backedge.i.i309.if.end107.i_crit_edge: ; preds = %while.cond.backedge.i.i309
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107.i

if.end.i274.i:                                    ; preds = %while.body.i270.i
  %bTerminalID.i.i310 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, ptr %call11.i.i306, i32 0, i32 3
  %274 = ptrtoint ptr %bTerminalID.i.i310 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %bTerminalID.i.i310, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %275, i8 %265)
  %cmp.i273.i = icmp eq i8 %275, %265
  br i1 %cmp.i273.i, label %if.then105.i, label %if.end.i274.i.while.cond.backedge.i.i309_crit_edge

if.end.i274.i.while.cond.backedge.i.i309_crit_edge: ; preds = %if.end.i274.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge.i.i309

if.then105.i:                                     ; preds = %if.end.i274.i
  call void @__sanitizer_cov_trace_pc() #14
  %bCSourceID.i311 = getelementptr inbounds %struct.uac3_input_terminal_descriptor, ptr %call11.i.i306, i32 0, i32 6
  %276 = ptrtoint ptr %bCSourceID.i311 to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %bCSourceID.i311, align 1
  br label %found_clock.i312

if.end107.i:                                      ; preds = %while.cond.backedge.i.i309.if.end107.i_crit_edge, %convert_chmap_v3.exit.i.if.end107.i_crit_edge
  %278 = ptrtoint ptr %ctrl_intf.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %ctrl_intf.i.i, align 4
  %280 = ptrtoint ptr %bTerminalLink.i301 to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %bTerminalLink.i301, align 1
  %extra.i275.i = getelementptr inbounds %struct.usb_host_interface, ptr %279, i32 0, i32 2
  %extralen.i276.i = getelementptr inbounds %struct.usb_host_interface, ptr %279, i32 0, i32 1
  %282 = ptrtoint ptr %extra.i275.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %extra.i275.i, align 4
  %284 = ptrtoint ptr %extralen.i276.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %extralen.i276.i, align 4
  %call9.i277.i = call ptr @snd_usb_find_csint_desc(ptr noundef %283, i32 noundef %285, ptr noundef null, i8 noundef zeroext 3) #12
  %tobool.not10.i278.i = icmp eq ptr %call9.i277.i, null
  br i1 %tobool.not10.i278.i, label %if.end107.i.do.end119.i_crit_edge, label %if.end107.i.while.body.i281.i_crit_edge

if.end107.i.while.body.i281.i_crit_edge:          ; preds = %if.end107.i
  br label %while.body.i281.i

if.end107.i.do.end119.i_crit_edge:                ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end119.i

while.body.i281.i:                                ; preds = %while.cond.backedge.i284.i.while.body.i281.i_crit_edge, %if.end107.i.while.body.i281.i_crit_edge
  %call11.i279.i = phi ptr [ %call.i282.i, %while.cond.backedge.i284.i.while.body.i281.i_crit_edge ], [ %call9.i277.i, %if.end107.i.while.body.i281.i_crit_edge ]
  %call1.i280.i = call zeroext i1 @snd_usb_validate_audio_desc(ptr noundef nonnull %call11.i279.i, i32 noundef 48) #12
  br i1 %call1.i280.i, label %if.end.i288.i, label %while.body.i281.i.while.cond.backedge.i284.i_crit_edge

while.body.i281.i.while.cond.backedge.i284.i_crit_edge: ; preds = %while.body.i281.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge.i284.i

while.cond.backedge.i284.i:                       ; preds = %if.end.i288.i.while.cond.backedge.i284.i_crit_edge, %while.body.i281.i.while.cond.backedge.i284.i_crit_edge
  %286 = ptrtoint ptr %extra.i275.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %extra.i275.i, align 4
  %288 = ptrtoint ptr %extralen.i276.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %extralen.i276.i, align 4
  %call.i282.i = call ptr @snd_usb_find_csint_desc(ptr noundef %287, i32 noundef %289, ptr noundef nonnull %call11.i279.i, i8 noundef zeroext 3) #12
  %tobool.not.i283.i = icmp eq ptr %call.i282.i, null
  br i1 %tobool.not.i283.i, label %while.cond.backedge.i284.i.do.end119.i_crit_edge, label %while.cond.backedge.i284.i.while.body.i281.i_crit_edge

while.cond.backedge.i284.i.while.body.i281.i_crit_edge: ; preds = %while.cond.backedge.i284.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i281.i

while.cond.backedge.i284.i.do.end119.i_crit_edge: ; preds = %while.cond.backedge.i284.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end119.i

if.end.i288.i:                                    ; preds = %while.body.i281.i
  %bTerminalID.i285.i = getelementptr inbounds %struct.uac2_output_terminal_descriptor, ptr %call11.i279.i, i32 0, i32 3
  %290 = ptrtoint ptr %bTerminalID.i285.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %bTerminalID.i285.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %291, i8 %281)
  %cmp.i287.i = icmp eq i8 %291, %281
  br i1 %cmp.i287.i, label %if.then113.i, label %if.end.i288.i.while.cond.backedge.i284.i_crit_edge

if.end.i288.i.while.cond.backedge.i284.i_crit_edge: ; preds = %if.end.i288.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge.i284.i

if.then113.i:                                     ; preds = %if.end.i288.i
  call void @__sanitizer_cov_trace_pc() #14
  %bCSourceID114.i = getelementptr inbounds %struct.uac3_output_terminal_descriptor, ptr %call11.i279.i, i32 0, i32 7
  %292 = ptrtoint ptr %bCSourceID114.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %bCSourceID114.i, align 1
  br label %found_clock.i312

do.end119.i:                                      ; preds = %while.cond.backedge.i284.i.do.end119.i_crit_edge, %if.end107.i.do.end119.i_crit_edge
  %dev120.i = getelementptr inbounds %struct.usb_device, ptr %198, i32 0, i32 15
  %294 = ptrtoint ptr %bTerminalLink.i301 to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %bTerminalLink.i301, align 1
  %conv122.i = zext i8 %295 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev120.i, ptr noundef nonnull @.str.20, i32 noundef %iface_no, i32 noundef %conv43, i32 noundef %conv122.i) #16
  call void @kfree(ptr noundef %retval.0.i.i300) #12
  br label %snd_usb_get_audioformat_uac3.exit

found_clock.i312:                                 ; preds = %if.then113.i, %if.then105.i, %cleanup.i
  %as.0.i = phi ptr [ null, %cleanup.i ], [ %call23.i, %if.then105.i ], [ %call23.i, %if.then113.i ]
  %chmap.1.i = phi ptr [ %call7.i.i.i, %cleanup.i ], [ %retval.0.i.i300, %if.then105.i ], [ %retval.0.i.i300, %if.then113.i ]
  %badd_formats.2.i = phi i64 [ %badd_formats.0.i, %cleanup.i ], [ 0, %if.then105.i ], [ 0, %if.then113.i ]
  %num_channels.2.i = phi i32 [ %num_channels.0.i, %cleanup.i ], [ %conv100.i, %if.then105.i ], [ %conv100.i, %if.then113.i ]
  %clock.1.shrunk.i = phi i8 [ 9, %cleanup.i ], [ %277, %if.then105.i ], [ %293, %if.then113.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %296 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i290.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %296, i32 noundef 3520, i32 noundef 88) #15
  %tobool.not.i291.i = icmp eq ptr %call7.i.i.i290.i, null
  br i1 %tobool.not.i291.i, label %if.then125.i, label %if.end.i294.i

if.end.i294.i:                                    ; preds = %found_clock.i312
  %iface.i.i313 = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i290.i, i32 0, i32 6
  %297 = ptrtoint ptr %iface.i.i313 to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 %conv.i292.i, ptr %iface.i.i313, align 8
  %altsetting.i.i314 = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i290.i, i32 0, i32 7
  %298 = ptrtoint ptr %altsetting.i.i314 to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %29, ptr %altsetting.i.i314, align 1
  %conv2.i.i315 = trunc i32 %i.0389 to i8
  %altset_idx3.i.i316 = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i290.i, i32 0, i32 9
  %299 = ptrtoint ptr %altset_idx3.i.i316 to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 %conv2.i.i315, ptr %altset_idx3.i.i316, align 1
  %300 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress.i.i318 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %301, i32 0, i32 2
  %302 = ptrtoint ptr %bEndpointAddress.i.i318 to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %bEndpointAddress.i.i318, align 2
  %endpoint4.i.i319 = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i290.i, i32 0, i32 11
  %304 = ptrtoint ptr %endpoint4.i.i319 to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %303, ptr %endpoint4.i.i319, align 1
  %bmAttributes.i.i320 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %301, i32 0, i32 3
  %305 = ptrtoint ptr %bmAttributes.i.i320 to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %bmAttributes.i.i320, align 1
  %ep_attr.i.i321 = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i290.i, i32 0, i32 12
  %307 = ptrtoint ptr %ep_attr.i.i321 to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 %306, ptr %ep_attr.i.i321, align 2
  %call8.i.i322 = call zeroext i8 @snd_usb_parse_datainterval(ptr noundef %chip, ptr noundef %arrayidx) #12
  %datainterval.i.i323 = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i290.i, i32 0, i32 18
  %308 = ptrtoint ptr %datainterval.i.i323 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %call8.i.i322, ptr %datainterval.i.i323, align 4
  %protocol10.i.i324 = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i290.i, i32 0, i32 19
  %309 = ptrtoint ptr %protocol10.i.i324 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 48, ptr %protocol10.i.i324, align 1
  %310 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %endpoint, align 4
  %wMaxPacketSize.i.i325 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %311, i32 0, i32 4
  %312 = ptrtoint ptr %wMaxPacketSize.i.i325 to i32
  call void @__asan_load2_noabort(i32 %312)
  %313 = load i16, ptr %wMaxPacketSize.i.i325, align 4
  %314 = call i16 @llvm.bswap.i16(i16 %313) #12
  %conv14.i.i326 = zext i16 %314 to i32
  %maxpacksize.i.i327 = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i290.i, i32 0, i32 20
  %315 = ptrtoint ptr %maxpacksize.i.i327 to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %conv14.i.i326, ptr %maxpacksize.i.i327, align 8
  %channels.i.i328 = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i290.i, i32 0, i32 2
  %316 = ptrtoint ptr %channels.i.i328 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %num_channels.2.i, ptr %channels.i.i328, align 8
  %317 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %dev1, align 4
  %speed.i.i329 = getelementptr inbounds %struct.usb_device, ptr %318, i32 0, i32 4
  %319 = ptrtoint ptr %speed.i.i329 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %speed.i.i329, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %320)
  %cmp.i293.i = icmp eq i32 %320, 3
  br i1 %cmp.i293.i, label %if.then16.i.i335, label %if.end.i294.i.if.end127.i338_crit_edge

if.end.i294.i.if.end127.i338_crit_edge:           ; preds = %if.end.i294.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127.i338

if.then16.i.i335:                                 ; preds = %if.end.i294.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i.i330 = lshr i32 %conv14.i.i326, 11
  %and.i.i331 = and i32 %shr.i.i330, 3
  %add.i.i332 = add nuw nsw i32 %and.i.i331, 1
  %and19.i.i333 = and i32 %conv14.i.i326, 2047
  %mul.i.i334 = mul nuw nsw i32 %add.i.i332, %and19.i.i333
  %321 = ptrtoint ptr %maxpacksize.i.i327 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %mul.i.i334, ptr %maxpacksize.i.i327, align 8
  br label %if.end127.i338

if.then125.i:                                     ; preds = %found_clock.i312
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef %chmap.1.i) #12
  br label %snd_usb_get_audioformat_uac3.exit

if.end127.i338:                                   ; preds = %if.then16.i.i335, %if.end.i294.i.if.end127.i338_crit_edge
  %clock23.i.i336 = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i290.i, i32 0, i32 26
  %322 = ptrtoint ptr %clock23.i.i336 to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 %clock.1.shrunk.i, ptr %clock23.i.i336, align 8
  %323 = ptrtoint ptr %call7.i.i.i290.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store volatile ptr %call7.i.i.i290.i, ptr %call7.i.i.i290.i, align 8
  %prev.i.i.i337 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i290.i, i32 0, i32 1
  %324 = ptrtoint ptr %prev.i.i.i337 to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr %call7.i.i.i290.i, ptr %prev.i.i.i337, align 4
  %chmap128.i = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i290.i, i32 0, i32 27
  %325 = ptrtoint ptr %chmap128.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %chmap.1.i, ptr %chmap128.i, align 4
  br i1 %cmp.not.i, label %if.else139.i, label %if.then132.i

if.then132.i:                                     ; preds = %if.end127.i338
  %attributes.i339 = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i290.i, i32 0, i32 10
  %326 = ptrtoint ptr %attributes.i339 to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 0, ptr %attributes.i339, align 4
  %fmt_type.i = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i290.i, i32 0, i32 3
  %327 = ptrtoint ptr %fmt_type.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 1, ptr %fmt_type.i, align 4
  %formats.i = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i290.i, i32 0, i32 1
  %328 = ptrtoint ptr %formats.i to i32
  call void @__asan_store8_noabort(i32 %328)
  store i64 %badd_formats.2.i, ptr %formats.i, align 8
  %nr_rates.i = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i290.i, i32 0, i32 24
  %329 = ptrtoint ptr %nr_rates.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 0, ptr %nr_rates.i, align 8
  %rate_min.i = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i290.i, i32 0, i32 22
  %330 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 48000, ptr %rate_min.i, align 8
  %rate_max.i = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i290.i, i32 0, i32 23
  %331 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 48000, ptr %rate_max.i, align 4
  %rates.i = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i290.i, i32 0, i32 21
  %332 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 1073741824, ptr %rates.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %333 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i300.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %333, i32 noundef 3520, i32 noundef 12) #15
  %tobool134.not.i = icmp eq ptr %call7.i.i300.i, null
  br i1 %tobool134.not.i, label %if.then135.i, label %if.end151.thread.i

if.then135.i:                                     ; preds = %if.then132.i
  %call.i.i.i.i340 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i.i290.i) #12
  br i1 %call.i.i.i.i340, label %if.end.i.i.i303.i, label %if.then135.i.audioformat_free.exit.i343_crit_edge

if.then135.i.audioformat_free.exit.i343_crit_edge: ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %audioformat_free.exit.i343

if.end.i.i.i303.i:                                ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #14
  %334 = ptrtoint ptr %prev.i.i.i337 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %prev.i.i.i337, align 4
  %336 = ptrtoint ptr %call7.i.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %call7.i.i.i290.i, align 8
  %prev1.i.i.i.i.i341 = getelementptr inbounds %struct.list_head, ptr %337, i32 0, i32 1
  %338 = ptrtoint ptr %prev1.i.i.i.i.i341 to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr %335, ptr %prev1.i.i.i.i.i341, align 4
  %339 = ptrtoint ptr %335 to i32
  call void @__asan_store4_noabort(i32 %339)
  store volatile ptr %337, ptr %335, align 4
  br label %audioformat_free.exit.i343

audioformat_free.exit.i343:                       ; preds = %if.end.i.i.i303.i, %if.then135.i.audioformat_free.exit.i343_crit_edge
  %340 = ptrtoint ptr %call7.i.i.i290.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i.i290.i, align 8
  %341 = ptrtoint ptr %prev.i.i.i337 to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i337, align 4
  %rate_table.i.i342 = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i290.i, i32 0, i32 25
  %342 = ptrtoint ptr %rate_table.i.i342 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %rate_table.i.i342, align 4
  call void @kfree(ptr noundef %343) #12
  %344 = ptrtoint ptr %chmap128.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %chmap128.i, align 4
  call void @kfree(ptr noundef %345) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i290.i) #12
  br label %snd_usb_get_audioformat_uac3.exit

if.end151.thread.i:                               ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %cmp137.i = icmp sgt i8 %26, -1
  %cond.i = select i1 %cmp137.i, i32 10, i32 11
  %346 = ptrtoint ptr %call7.i.i300.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %cond.i, ptr %call7.i.i300.i, align 8
  %pd_d1d0_rec.i = getelementptr inbounds %struct.snd_usb_power_domain, ptr %call7.i.i300.i, i32 0, i32 1
  %347 = ptrtoint ptr %pd_d1d0_rec.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 600, ptr %pd_d1d0_rec.i, align 4
  %pd_d2d0_rec.i = getelementptr inbounds %struct.snd_usb_power_domain, ptr %call7.i.i300.i, i32 0, i32 2
  %348 = ptrtoint ptr %pd_d2d0_rec.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 6000, ptr %pd_d2d0_rec.i, align 8
  br label %if.then153.i

if.else139.i:                                     ; preds = %if.end127.i338
  %call140.i = call fastcc i32 @parse_uac_endpoint_attributes(ptr noundef %chip, ptr noundef %arrayidx, i32 noundef 48, i32 noundef %iface_no) #12
  %conv141.i = trunc i32 %call140.i to i8
  %attributes142.i = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i290.i, i32 0, i32 10
  %349 = ptrtoint ptr %attributes142.i to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 %conv141.i, ptr %attributes142.i, align 4
  %350 = ptrtoint ptr %ctrl_intf.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %ctrl_intf.i.i, align 4
  %bTerminalLink144.i = getelementptr inbounds %struct.uac3_as_header_descriptor, ptr %as.0.i, i32 0, i32 3
  %352 = ptrtoint ptr %bTerminalLink144.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %bTerminalLink144.i, align 1
  %call145.i = call ptr @snd_usb_find_power_domain(ptr noundef %351, i8 noundef zeroext %353) #12
  %call146.i = call i32 @snd_usb_parse_audio_format_v3(ptr noundef %chip, ptr noundef nonnull %call7.i.i.i290.i, ptr noundef %as.0.i, i32 noundef %27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i)
  %cmp147.i = icmp slt i32 %call146.i, 0
  br i1 %cmp147.i, label %if.then149.i, label %if.end151.i

if.then149.i:                                     ; preds = %if.else139.i
  call void @kfree(ptr noundef %call145.i) #12
  %call.i.i.i305.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i.i290.i) #12
  br i1 %call.i.i.i305.i, label %if.end.i.i.i308.i, label %if.then149.i.audioformat_free.exit312.i_crit_edge

if.then149.i.audioformat_free.exit312.i_crit_edge: ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %audioformat_free.exit312.i

if.end.i.i.i308.i:                                ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_pc() #14
  %354 = ptrtoint ptr %prev.i.i.i337 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %prev.i.i.i337, align 4
  %356 = ptrtoint ptr %call7.i.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %call7.i.i.i290.i, align 8
  %prev1.i.i.i.i307.i = getelementptr inbounds %struct.list_head, ptr %357, i32 0, i32 1
  %358 = ptrtoint ptr %prev1.i.i.i.i307.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store ptr %355, ptr %prev1.i.i.i.i307.i, align 4
  %359 = ptrtoint ptr %355 to i32
  call void @__asan_store4_noabort(i32 %359)
  store volatile ptr %357, ptr %355, align 4
  br label %audioformat_free.exit312.i

audioformat_free.exit312.i:                       ; preds = %if.end.i.i.i308.i, %if.then149.i.audioformat_free.exit312.i_crit_edge
  %360 = ptrtoint ptr %call7.i.i.i290.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i.i290.i, align 8
  %361 = ptrtoint ptr %prev.i.i.i337 to i32
  call void @__asan_store4_noabort(i32 %361)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i337, align 4
  %rate_table.i310.i = getelementptr inbounds %struct.audioformat, ptr %call7.i.i.i290.i, i32 0, i32 25
  %362 = ptrtoint ptr %rate_table.i310.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %rate_table.i310.i, align 4
  call void @kfree(ptr noundef %363) #12
  %364 = ptrtoint ptr %chmap128.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %chmap128.i, align 4
  call void @kfree(ptr noundef %365) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i290.i) #12
  br label %snd_usb_get_audioformat_uac3.exit

if.end151.i:                                      ; preds = %if.else139.i
  %tobool152.not.i = icmp eq ptr %call145.i, null
  br i1 %tobool152.not.i, label %if.end151.i.snd_usb_get_audioformat_uac3.exit_crit_edge, label %if.end151.i.if.then153.i_crit_edge

if.end151.i.if.then153.i_crit_edge:               ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then153.i

if.end151.i.snd_usb_get_audioformat_uac3.exit_crit_edge: ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_usb_get_audioformat_uac3.exit

if.then153.i:                                     ; preds = %if.end151.i.if.then153.i_crit_edge, %if.end151.thread.i
  %pd.0328.i = phi ptr [ %call7.i.i300.i, %if.end151.thread.i ], [ %call145.i, %if.end151.i.if.then153.i_crit_edge ]
  br label %snd_usb_get_audioformat_uac3.exit

snd_usb_get_audioformat_uac3.exit:                ; preds = %if.then153.i, %if.end151.i.snd_usb_get_audioformat_uac3.exit_crit_edge, %audioformat_free.exit312.i, %audioformat_free.exit.i343, %if.then125.i, %do.end119.i, %do.end95.i, %if.then86.i, %if.end68.i.snd_usb_get_audioformat_uac3.exit_crit_edge, %do.end64.i, %if.then56.i, %do.end44.i, %do.end37.i, %do.end28.i, %sw.epilog.i.snd_usb_get_audioformat_uac3.exit_crit_edge, %do.end.i282
  %pd.1 = phi ptr [ %pd.0383, %do.end28.i ], [ %pd.0383, %do.end37.i ], [ %pd.0383, %do.end44.i ], [ %pd.0383, %if.then56.i ], [ %pd.0383, %if.end68.i.snd_usb_get_audioformat_uac3.exit_crit_edge ], [ %pd.0383, %if.then86.i ], [ %pd.0383, %do.end119.i ], [ %pd.0383, %if.then125.i ], [ %pd.0383, %audioformat_free.exit312.i ], [ %pd.0383, %if.end151.i.snd_usb_get_audioformat_uac3.exit_crit_edge ], [ %pd.0328.i, %if.then153.i ], [ %pd.0383, %audioformat_free.exit.i343 ], [ %pd.0383, %do.end95.i ], [ %pd.0383, %do.end64.i ], [ %pd.0383, %do.end.i282 ], [ %pd.0383, %sw.epilog.i.snd_usb_get_audioformat_uac3.exit_crit_edge ]
  %retval.1.i = phi ptr [ null, %do.end28.i ], [ null, %do.end37.i ], [ null, %do.end44.i ], [ %230, %if.then56.i ], [ inttoptr (i32 -12 to ptr), %if.end68.i.snd_usb_get_audioformat_uac3.exit_crit_edge ], [ %242, %if.then86.i ], [ null, %do.end119.i ], [ inttoptr (i32 -12 to ptr), %if.then125.i ], [ null, %audioformat_free.exit312.i ], [ %call7.i.i.i290.i, %if.end151.i.snd_usb_get_audioformat_uac3.exit_crit_edge ], [ %call7.i.i.i290.i, %if.then153.i ], [ null, %audioformat_free.exit.i343 ], [ inttoptr (i32 -5 to ptr), %do.end95.i ], [ inttoptr (i32 -5 to ptr), %do.end64.i ], [ null, %do.end.i282 ], [ inttoptr (i32 -12 to ptr), %sw.epilog.i.snd_usb_get_audioformat_uac3.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %hc_header.i) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %snd_usb_get_audioformat_uac3.exit, %convert_chmap.exit.i
  %pd.2 = phi ptr [ %pd.1, %snd_usb_get_audioformat_uac3.exit ], [ %pd.0383, %convert_chmap.exit.i ]
  %fp.1 = phi ptr [ %retval.1.i, %snd_usb_get_audioformat_uac3.exit ], [ %call7.i.i.i.i, %convert_chmap.exit.i ]
  %protocol.2 = phi i32 [ 48, %snd_usb_get_audioformat_uac3.exit ], [ %protocol.1, %convert_chmap.exit.i ]
  %tobool103.not = icmp eq ptr %fp.1, null
  br i1 %tobool103.not, label %sw.epilog.for.inc_crit_edge, label %if.else

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else:                                          ; preds = %sw.epilog
  %cmp.i344 = icmp ugt ptr %fp.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i344, label %if.else.if.then106_crit_edge, label %if.end109

if.else.if.then106_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then106

if.then106:                                       ; preds = %if.else.if.then106_crit_edge, %if.end122.i.if.then106_crit_edge
  %fp.1366372 = phi ptr [ %fp.1, %if.else.if.then106_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end122.i.if.then106_crit_edge ]
  %366 = ptrtoint ptr %fp.1366372 to i32
  br label %cleanup

if.end109:                                        ; preds = %if.else
  %fmt_type = getelementptr inbounds %struct.audioformat, ptr %fp.1, i32 0, i32 3
  %367 = ptrtoint ptr %fmt_type to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %fmt_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %368)
  %cmp110.not = icmp eq i32 %368, 1
  br i1 %cmp110.not, label %if.end109.if.end113_crit_edge, label %if.then112

if.end109.if.end113_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  %369 = ptrtoint ptr %has_non_pcm to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 1, ptr %has_non_pcm, align 1
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %if.end109.if.end113_crit_edge
  %370 = ptrtoint ptr %fmt_type to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %fmt_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %371)
  %cmp115 = icmp ne i32 %371, 1
  %cmp119 = xor i1 %cmp115, %non_pcm
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %if.end113
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %fp.1) #12
  br i1 %call.i.i.i, label %if.end.i.i.i346, label %if.then121.audioformat_free.exit_crit_edge

if.then121.audioformat_free.exit_crit_edge:       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #14
  br label %audioformat_free.exit

if.end.i.i.i346:                                  ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i345 = getelementptr inbounds %struct.list_head, ptr %fp.1, i32 0, i32 1
  %372 = ptrtoint ptr %prev.i.i.i345 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %prev.i.i.i345, align 4
  %374 = ptrtoint ptr %fp.1 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %fp.1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %375, i32 0, i32 1
  %376 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store ptr %373, ptr %prev1.i.i.i.i, align 4
  %377 = ptrtoint ptr %373 to i32
  call void @__asan_store4_noabort(i32 %377)
  store volatile ptr %375, ptr %373, align 4
  br label %audioformat_free.exit

audioformat_free.exit:                            ; preds = %if.end.i.i.i346, %if.then121.audioformat_free.exit_crit_edge
  %378 = ptrtoint ptr %fp.1 to i32
  call void @__asan_store4_noabort(i32 %378)
  store ptr inttoptr (i32 256 to ptr), ptr %fp.1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %fp.1, i32 0, i32 1
  %379 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %rate_table.i = getelementptr inbounds %struct.audioformat, ptr %fp.1, i32 0, i32 25
  %380 = ptrtoint ptr %rate_table.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %rate_table.i, align 4
  call void @kfree(ptr noundef %381) #12
  %chmap.i347 = getelementptr inbounds %struct.audioformat, ptr %fp.1, i32 0, i32 27
  %382 = ptrtoint ptr %chmap.i347 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %chmap.i347, align 4
  call void @kfree(ptr noundef %383) #12
  call void @kfree(ptr noundef nonnull %fp.1) #12
  call void @kfree(ptr noundef %pd.2) #12
  br label %for.inc

if.end122:                                        ; preds = %if.end113
  %call123 = call i32 @snd_usb_audioformat_set_sync_ep(ptr noundef %chip, ptr noundef nonnull %fp.1) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__snd_usb_parse_audio_interface.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__snd_usb_parse_audio_interface, %if.then136)) #12
          to label %do.end142 [label %if.then136], !srcloc !99

if.then136:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #14
  %endpoint138 = getelementptr inbounds %struct.audioformat, ptr %fp.1, i32 0, i32 11
  %384 = ptrtoint ptr %endpoint138 to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %endpoint138, align 1
  %conv139 = zext i8 %385 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__snd_usb_parse_audio_interface.__UNIQUE_ID_ddebug246, ptr noundef %dev67, ptr noundef nonnull @.str.7, i32 noundef %iface_no, i32 noundef %conv43, i32 noundef %conv139) #12
  br label %do.end142

do.end142:                                        ; preds = %if.then136, %if.end122
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %protocol.2)
  %cmp143 = icmp eq i32 %protocol.2, 48
  %pd.2. = select i1 %cmp143, ptr %pd.2, ptr null
  %call.i349 = call fastcc i32 @__snd_usb_add_audio_stream(ptr noundef %chip, i32 noundef %27, ptr noundef nonnull %fp.1, ptr noundef %pd.2.) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i349)
  %cmp150 = icmp slt i32 %call.i349, 0
  br i1 %cmp150, label %if.then152, label %if.end153

if.then152:                                       ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @audioformat_free(ptr noundef nonnull %fp.1)
  call void @kfree(ptr noundef %pd.2) #12
  br label %cleanup

if.end153:                                        ; preds = %do.end142
  %endpoint154 = getelementptr inbounds %struct.audioformat, ptr %fp.1, i32 0, i32 11
  %386 = ptrtoint ptr %endpoint154 to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %endpoint154, align 1
  %conv155 = zext i8 %387 to i32
  %call156 = call i32 @snd_usb_add_endpoint(ptr noundef %chip, i32 noundef %conv155, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %if.end153.cleanup_crit_edge, label %if.end160

if.end153.cleanup_crit_edge:                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end160:                                        ; preds = %if.end153
  %sync_ep = getelementptr inbounds %struct.audioformat, ptr %fp.1, i32 0, i32 14
  %388 = ptrtoint ptr %sync_ep to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %sync_ep, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %389)
  %tobool161.not = icmp eq i8 %389, 0
  br i1 %tobool161.not, label %if.end160.if.end173_crit_edge, label %if.then162

if.end160.if.end173_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end173

if.then162:                                       ; preds = %if.end160
  %conv164 = zext i8 %389 to i32
  %implicit_fb = getelementptr inbounds %struct.audioformat, ptr %fp.1, i32 0, i32 13
  %390 = ptrtoint ptr %implicit_fb to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %implicit_fb, align 1, !range !98
  %392 = xor i8 %391, 1
  %393 = zext i8 %392 to i32
  %call168 = call i32 @snd_usb_add_endpoint(ptr noundef %chip, i32 noundef %conv164, i32 noundef %393) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %cmp169 = icmp slt i32 %call168, 0
  br i1 %cmp169, label %if.then162.cleanup_crit_edge, label %if.then162.if.end173_crit_edge

if.then162.if.end173_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end173

if.then162.cleanup_crit_edge:                     ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end173:                                        ; preds = %if.then162.if.end173_crit_edge, %if.end160.if.end173_crit_edge
  %394 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %dev1, align 4
  %call175 = call i32 @usb_set_interface(ptr noundef %395, i32 noundef %iface_no, i32 noundef 0) #12
  %call176 = call i32 @snd_usb_init_pitch(ptr noundef %chip, ptr noundef nonnull %fp.1) #12
  %rate_max = getelementptr inbounds %struct.audioformat, ptr %fp.1, i32 0, i32 23
  %396 = ptrtoint ptr %rate_max to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %rate_max, align 4
  %call177 = call i32 @snd_usb_init_sample_rate(ptr noundef %chip, ptr noundef nonnull %fp.1, i32 noundef %397) #12
  %398 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %dev1, align 4
  %call179 = call i32 @usb_set_interface(ptr noundef %399, i32 noundef %iface_no, i32 noundef %conv43) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end173, %audioformat_free.exit, %sw.epilog.for.inc_crit_edge, %audioformat_free.exit.i, %land.lhs.true117.i.for.inc_crit_edge, %do.end108.i, %do.end88.i, %do.end72.i, %do.end39.i, %do.end29.i, %do.end9.i, %do.end.i, %if.end37.for.inc_crit_edge, %if.end29.for.inc_crit_edge, %lor.lhs.false22.for.inc_crit_edge, %lor.lhs.false18.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %pd.3 = phi ptr [ %pd.0383, %lor.lhs.false18.for.inc_crit_edge ], [ %pd.0383, %lor.lhs.false22.for.inc_crit_edge ], [ %pd.2, %sw.epilog.for.inc_crit_edge ], [ null, %audioformat_free.exit ], [ %pd.2, %if.end173 ], [ %pd.0383, %if.end37.for.inc_crit_edge ], [ %pd.0383, %if.end29.for.inc_crit_edge ], [ %pd.0383, %lor.lhs.false.for.inc_crit_edge ], [ %pd.0383, %do.end108.i ], [ %pd.0383, %audioformat_free.exit.i ], [ %pd.0383, %do.end88.i ], [ %pd.0383, %land.lhs.true117.i.for.inc_crit_edge ], [ %pd.0383, %do.end9.i ], [ %pd.0383, %do.end.i ], [ %pd.0383, %do.end72.i ], [ %pd.0383, %do.end39.i ], [ %pd.0383, %do.end29.i ], [ %pd.0383, %for.body.for.inc_crit_edge ]
  %fp.2 = phi ptr [ %fp.0397, %lor.lhs.false18.for.inc_crit_edge ], [ %fp.0397, %lor.lhs.false22.for.inc_crit_edge ], [ null, %sw.epilog.for.inc_crit_edge ], [ null, %audioformat_free.exit ], [ %fp.1, %if.end173 ], [ %fp.0397, %if.end37.for.inc_crit_edge ], [ %fp.0397, %if.end29.for.inc_crit_edge ], [ %fp.0397, %lor.lhs.false.for.inc_crit_edge ], [ null, %do.end108.i ], [ null, %audioformat_free.exit.i ], [ null, %do.end88.i ], [ null, %land.lhs.true117.i.for.inc_crit_edge ], [ null, %do.end9.i ], [ null, %do.end.i ], [ null, %do.end72.i ], [ null, %do.end39.i ], [ null, %do.end29.i ], [ %fp.0397, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0389, 1
  %exitcond.not = icmp eq i32 %inc, %spec.store.select
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then162.cleanup_crit_edge, %if.end153.cleanup_crit_edge, %if.then152, %if.then106, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %366, %if.then106 ], [ %call.i349, %if.then152 ], [ 0, %entry.cleanup_crit_edge ], [ %call156, %if.end153.cleanup_crit_edge ], [ %call168, %if.then162.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_get_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new_stream(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_usb_init_substream(ptr noundef %as, i32 noundef %stream, ptr noundef %fp, ptr noundef %pd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 %stream
  %fmt_list = getelementptr %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 %stream, i32 26
  %0 = ptrtoint ptr %fmt_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %fmt_list, ptr %fmt_list, align 4
  %prev.i = getelementptr %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 %stream, i32 26, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %fmt_list, ptr %prev.i, align 4
  %lock = getelementptr %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 %stream, i32 27
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @snd_usb_init_substream.__key, i16 noundef signext 3) #12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %as, ptr %arrayidx, align 8
  %direction = getelementptr %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 %stream, i32 3
  %3 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %stream, ptr %direction, align 4
  %4 = ptrtoint ptr %as to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %as, align 8
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 %stream, i32 1
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %dev2, align 4
  %quirk_flags = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 12
  %9 = ptrtoint ptr %quirk_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %quirk_flags, align 4
  %txfr_quirk = getelementptr %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 %stream, i32 8
  %11 = trunc i32 %10 to i8
  %12 = ptrtoint ptr %txfr_quirk to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %txfr_quirk, align 8
  %13 = shl i8 %11, 5
  %bf.shl = and i8 %13, -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %txfr_quirk, align 8
  %14 = load ptr, ptr %as, align 8
  %quirk_flags6 = getelementptr inbounds %struct.snd_usb_audio, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %quirk_flags6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %quirk_flags6, align 4
  %17 = trunc i32 %16 to i8
  %18 = shl i8 %17, 3
  %bf.shl15 = and i8 %18, 64
  %bf.clear16 = and i8 %bf.set, -65
  %bf.set17 = or i8 %bf.shl15, %bf.clear16
  store i8 %bf.set17, ptr %txfr_quirk, align 8
  %speed = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 4
  %19 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %speed, align 4
  %speed20 = getelementptr %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 %stream, i32 23
  %21 = ptrtoint ptr %speed20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %speed20, align 4
  %pkt_offset_adj = getelementptr %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 %stream, i32 10
  %22 = ptrtoint ptr %pkt_offset_adj to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %pkt_offset_adj, align 8
  %stream_offset_adj = getelementptr %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 %stream, i32 11
  %23 = ptrtoint ptr %stream_offset_adj to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %stream_offset_adj, align 4
  %pcm = getelementptr inbounds %struct.snd_usb_stream, ptr %as, i32 0, i32 1
  %24 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcm, align 4
  tail call void @snd_usb_set_pcm_ops(ptr noundef %25, i32 noundef %stream) #12
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %fp, ptr noundef %27, ptr noundef %fmt_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %fp, ptr %prev.i, align 4
  %29 = ptrtoint ptr %fp to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %fmt_list, ptr %fp, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %fp, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %fp, ptr %27, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %formats = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 1
  %32 = ptrtoint ptr %formats to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %formats, align 8
  %formats22 = getelementptr %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 %stream, i32 24
  %34 = ptrtoint ptr %formats22 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %formats22, align 8
  %or = or i64 %35, %33
  store i64 %or, ptr %formats22, align 8
  %num_formats = getelementptr %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 %stream, i32 25
  %36 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_formats, align 8
  %inc = add i32 %37, 1
  store i32 %inc, ptr %num_formats, align 8
  %fmt_type = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 3
  %38 = ptrtoint ptr %fmt_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fmt_type, align 4
  %fmt_type23 = getelementptr %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 %stream, i32 9
  %40 = ptrtoint ptr %fmt_type23 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %fmt_type23, align 4
  %endpoint = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 11
  %41 = ptrtoint ptr %endpoint to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %endpoint, align 1
  %conv = zext i8 %42 to i32
  %ep_num = getelementptr %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 %stream, i32 19
  %43 = ptrtoint ptr %ep_num to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv, ptr %ep_num, align 4
  %channels = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 2
  %44 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %channels, align 8
  %channels_max = getelementptr %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 %stream, i32 7
  %46 = ptrtoint ptr %channels_max to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %channels_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp = icmp ugt i32 %45, %47
  br i1 %cmp, label %if.then, label %list_add_tail.exit.if.end_crit_edge

list_add_tail.exit.if.end_crit_edge:              ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %45, ptr %channels_max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %list_add_tail.exit.if.end_crit_edge
  %tobool27.not = icmp eq ptr %pd, null
  br i1 %tobool27.not, label %if.end.if.end32_crit_edge, label %if.then28

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %str_pd = getelementptr %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 %stream, i32 6
  %49 = ptrtoint ptr %str_pd to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %pd, ptr %str_pd, align 8
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  %call31 = tail call i32 @snd_usb_power_domain_set(ptr noundef %53, ptr noundef nonnull %pd, i8 noundef zeroext 1) #12
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.end.if.end32_crit_edge
  tail call void @snd_usb_preallocate_buffer(ptr noundef %arrayidx) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usb_audio_pcm_free(ptr nocapture noundef readonly %pcm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 11
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %pcm1 = getelementptr inbounds %struct.snd_usb_stream, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pcm1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pcm1, align 4
  %substream.i = getelementptr inbounds %struct.snd_usb_stream, ptr %1, i32 0, i32 4
  tail call fastcc void @free_substream(ptr noundef %substream.i) #12
  %arrayidx2.i = getelementptr %struct.snd_usb_stream, ptr %1, i32 0, i32 4, i32 1
  tail call fastcc void @free_substream(ptr noundef %arrayidx2.i) #12
  %list.i = getelementptr inbounds %struct.snd_usb_stream, ptr %1, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.snd_usb_audio_stream_free.exit_crit_edge

if.then.snd_usb_audio_stream_free.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_usb_audio_stream_free.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.snd_usb_stream, ptr %1, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %snd_usb_audio_stream_free.exit

snd_usb_audio_stream_free.exit:                   ; preds = %if.end.i.i.i, %if.then.snd_usb_audio_stream_free.exit_crit_edge
  %9 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.snd_usb_stream, ptr %1, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #12
  br label %if.end

if.end:                                           ; preds = %snd_usb_audio_stream_free.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_proc_pcm_format_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_set_pcm_ops(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_power_domain_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_preallocate_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_add_chmap_ctls(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usb_chmap_ctl_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type, align 8
  %channels_max = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %channels_max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channels_max, align 4
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %9 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 36, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_chmap_ctl_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 4
  %cur_audiofmt = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %cur_audiofmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_audiofmt, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.end

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.end:                                           ; preds = %entry
  %chmap3 = getelementptr inbounds %struct.audioformat, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %chmap3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chmap3, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %for.cond.preheader

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

for.cond.preheader:                               ; preds = %if.end
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp33.not = icmp eq i8 %9, 0
  br i1 %cmp33.not, label %for.cond.preheader.if.end9_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end9_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_pcm_chmap_elem, ptr %7, i32 0, i32 1, i32 %i.034
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %11 to i32
  %arrayidx8 = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.034
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv7, ptr %arrayidx8, align 4
  %inc = add nuw nsw i32 %i.034, 1
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %7, align 1
  %conv = zext i8 %14 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end9_crit_edge

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end9:                                          ; preds = %for.body.if.end9_crit_edge, %for.cond.preheader.if.end9_crit_edge, %if.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  %i.1 = phi i32 [ 0, %if.end.if.end9_crit_edge ], [ 0, %entry.if.end9_crit_edge ], [ 0, %for.cond.preheader.if.end9_crit_edge ], [ %inc, %for.body.if.end9_crit_edge ]
  %channels_max = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %channels_max to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channels_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %16)
  %cmp1135 = icmp ult i32 %i.1, %16
  br i1 %cmp1135, label %for.body13.lr.ph, label %if.end9.for.end18_crit_edge

if.end9.for.end18_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end18

for.body13.lr.ph:                                 ; preds = %if.end9
  %value14 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body13

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body13.lr.ph
  %i.236 = phi i32 [ %i.1, %for.body13.lr.ph ], [ %inc17, %for.body13.for.body13_crit_edge ]
  %arrayidx15 = getelementptr [128 x i32], ptr %value14, i32 0, i32 %i.236
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx15, align 4
  %inc17 = add nuw i32 %i.236, 1
  %18 = ptrtoint ptr %channels_max to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channels_max, align 4
  %cmp11 = icmp ult i32 %inc17, %19
  br i1 %cmp11, label %for.body13.for.body13_crit_edge, label %for.body13.for.end18_crit_edge

for.body13.for.end18_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end18

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body13

for.end18:                                        ; preds = %for.body13.for.end18_crit_edge, %if.end9.for.end18_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_chmap_ctl_tlv(ptr nocapture noundef readonly %kcontrol, i32 noundef %op_flag, i32 noundef %size, ptr noundef %tlv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp = icmp ult i32 %size, 8
  br i1 %cmp, label %entry.cleanup114_crit_edge, label %if.end

entry.cleanup114_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup114

if.end:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 157) #12
  %4 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !100
  %and.i = and i32 %6, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  %7 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %tlv, i32 0, i32 -1226833921) #12, !srcloc !103
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #12, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup114_crit_edge

if.end.cleanup114_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup114

if.end4:                                          ; preds = %if.end
  %fmt_list = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 26
  %8 = ptrtoint ptr %fmt_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %fp.0172 = load ptr, ptr %fmt_list, align 4
  %cmp8.not173 = icmp eq ptr %fp.0172, %fmt_list
  br i1 %cmp8.not173, label %if.end4.for.end94_crit_edge, label %for.body.preheader

if.end4.for.end94_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end94

for.body.preheader:                               ; preds = %if.end4
  %add.ptr = getelementptr i32, ptr %tlv, i32 2
  %sub = add i32 %size, -8
  br label %for.body

for.body:                                         ; preds = %for.inc88.for.body_crit_edge, %for.body.preheader
  %fp.0180 = phi ptr [ %fp.0, %for.inc88.for.body_crit_edge ], [ %fp.0172, %for.body.preheader ]
  %size.addr.0178 = phi i32 [ %size.addr.1, %for.inc88.for.body_crit_edge ], [ %sub, %for.body.preheader ]
  %dst.0176 = phi ptr [ %dst.2, %for.inc88.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %count.0174 = phi i32 [ %count.1, %for.inc88.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %chmap = getelementptr inbounds %struct.audioformat, ptr %fp.0180, i32 0, i32 27
  %9 = ptrtoint ptr %chmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chmap, align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %for.body.for.inc88_crit_edge, label %if.end11

for.body.for.inc88_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc88

if.end11:                                         ; preds = %for.body
  %prev.0.in16.i = getelementptr inbounds %struct.list_head, ptr %fp.0180, i32 0, i32 1
  %11 = ptrtoint ptr %prev.0.in16.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %prev.017.i = load ptr, ptr %prev.0.in16.i, align 4
  %cmp.not18.i = icmp eq ptr %prev.017.i, %fmt_list
  br i1 %cmp.not18.i, label %if.end11.if.end14_crit_edge, label %if.end11.for.body.i_crit_edge

if.end11.for.body.i_crit_edge:                    ; preds = %if.end11
  br label %for.body.i

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end11.for.body.i_crit_edge
  %prev.019.i = phi ptr [ %prev.0.i, %for.inc.i.for.body.i_crit_edge ], [ %prev.017.i, %if.end11.for.body.i_crit_edge ]
  %chmap.i = getelementptr inbounds %struct.audioformat, ptr %prev.019.i, i32 0, i32 27
  %12 = ptrtoint ptr %chmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chmap.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %13, ptr noundef nonnull dereferenceable(16) %10, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool5.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.for.inc88_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i.for.inc88_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc88

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %prev.0.in.i = getelementptr inbounds %struct.list_head, ptr %prev.019.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %prev.0.i = load ptr, ptr %prev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %prev.0.i, %fmt_list
  br i1 %cmp.not.i, label %for.inc.i.if.end14_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end14_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end14:                                         ; preds = %for.inc.i.if.end14_crit_edge, %if.end11.if.end14_crit_edge
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %10, align 1
  %conv = zext i8 %16 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %size.addr.0178, i32 %add)
  %cmp16 = icmp ult i32 %size.addr.0178, %add
  br i1 %cmp16, label %if.end14.cleanup114_crit_edge, label %if.end19

if.end14.cleanup114_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup114

if.end19:                                         ; preds = %if.end14
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 172) #12
  %17 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i.i.i142 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i142 to ptr
  %cpu_domain.i.i143 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i143) #6, !srcloc !100
  %and.i144 = and i32 %19, -13
  %or.i145 = or i32 %and.i144, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i145) #12, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  %20 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %dst.0176, i32 257, i32 -1226833921) #12, !srcloc !104
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #12, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool35.not = icmp eq i32 %20, 0
  br i1 %tobool35.not, label %lor.lhs.false, label %if.end19.cleanup114_crit_edge

if.end19.cleanup114_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup114

lor.lhs.false:                                    ; preds = %if.end19
  %add.ptr39 = getelementptr i32, ptr %dst.0176, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 173) #12
  %21 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i.i.i146 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i146 to ptr
  %cpu_domain.i.i147 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i147) #6, !srcloc !100
  %and.i148 = and i32 %23, -13
  %or.i149 = or i32 %and.i148, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i149) #12, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  %24 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr39, i32 %mul, i32 -1226833921) #12, !srcloc !105
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #12, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool52.not = icmp eq i32 %24, 0
  br i1 %tobool52.not, label %if.end54, label %lor.lhs.false.cleanup114_crit_edge

lor.lhs.false.cleanup114_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup114

if.end54:                                         ; preds = %lor.lhs.false
  %add.ptr55 = getelementptr i32, ptr %dst.0176, i32 2
  %25 = ptrtoint ptr %chmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chmap, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp60169.not = icmp eq i8 %28, 0
  br i1 %cmp60169.not, label %if.end54.for.end_crit_edge, label %if.end54.for.body62_crit_edge

if.end54.for.body62_crit_edge:                    ; preds = %if.end54
  br label %for.body62

if.end54.for.end_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body62:                                       ; preds = %for.inc.for.body62_crit_edge, %if.end54.for.body62_crit_edge
  %29 = phi ptr [ %37, %for.inc.for.body62_crit_edge ], [ %26, %if.end54.for.body62_crit_edge ]
  %dst.1171 = phi ptr [ %incdec.ptr, %for.inc.for.body62_crit_edge ], [ %add.ptr55, %if.end54.for.body62_crit_edge ]
  %i.0170 = phi i32 [ %inc, %for.inc.for.body62_crit_edge ], [ 0, %if.end54.for.body62_crit_edge ]
  %arrayidx = getelementptr %struct.snd_pcm_chmap_elem, ptr %29, i32 0, i32 1, i32 %i.0170
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %conv68 = zext i8 %31 to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 177) #12
  %32 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i.i.i150 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i150 to ptr
  %cpu_domain.i.i151 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 4
  %34 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i151) #6, !srcloc !100
  %and.i152 = and i32 %34, -13
  %or.i153 = or i32 %and.i152, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i153) #12, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  %35 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %dst.1171, i32 %conv68, i32 -1226833921) #12, !srcloc !106
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #12, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool80.not = icmp eq i32 %35, 0
  br i1 %tobool80.not, label %for.inc, label %for.body62.cleanup114_crit_edge

for.body62.cleanup114_crit_edge:                  ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup114

for.inc:                                          ; preds = %for.body62
  %inc = add nuw nsw i32 %i.0170, 1
  %incdec.ptr = getelementptr i32, ptr %dst.1171, i32 1
  %36 = ptrtoint ptr %chmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chmap, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 1
  %conv59 = zext i8 %39 to i32
  %cmp60 = icmp ult i32 %inc, %conv59
  br i1 %cmp60, label %for.inc.for.body62_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body62_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body62

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end54.for.end_crit_edge
  %dst.1.lcssa = phi ptr [ %add.ptr55, %if.end54.for.end_crit_edge ], [ %incdec.ptr, %for.inc.for.end_crit_edge ]
  %add84 = add i32 %add, %count.0174
  %sub86 = sub i32 %size.addr.0178, %add
  br label %for.inc88

for.inc88:                                        ; preds = %for.end, %land.lhs.true.i.for.inc88_crit_edge, %for.body.for.inc88_crit_edge
  %count.1 = phi i32 [ %add84, %for.end ], [ %count.0174, %for.body.for.inc88_crit_edge ], [ %count.0174, %land.lhs.true.i.for.inc88_crit_edge ]
  %dst.2 = phi ptr [ %dst.1.lcssa, %for.end ], [ %dst.0176, %for.body.for.inc88_crit_edge ], [ %dst.0176, %land.lhs.true.i.for.inc88_crit_edge ]
  %size.addr.1 = phi i32 [ %sub86, %for.end ], [ %size.addr.0178, %for.body.for.inc88_crit_edge ], [ %size.addr.0178, %land.lhs.true.i.for.inc88_crit_edge ]
  %40 = ptrtoint ptr %fp.0180 to i32
  call void @__asan_load4_noabort(i32 %40)
  %fp.0 = load ptr, ptr %fp.0180, align 4
  %cmp8.not = icmp eq ptr %fp.0, %fmt_list
  br i1 %cmp8.not, label %for.inc88.for.end94_crit_edge, label %for.inc88.for.body_crit_edge

for.inc88.for.body_crit_edge:                     ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc88.for.end94_crit_edge:                    ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end94

for.end94:                                        ; preds = %for.inc88.for.end94_crit_edge, %if.end4.for.end94_crit_edge
  %count.0.lcssa = phi i32 [ 0, %if.end4.for.end94_crit_edge ], [ %count.1, %for.inc88.for.end94_crit_edge ]
  %add.ptr98 = getelementptr i32, ptr %tlv, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 184) #12
  %41 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i.i.i154 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i154 to ptr
  %cpu_domain.i.i155 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i155) #6, !srcloc !100
  %and.i156 = and i32 %43, -13
  %or.i157 = or i32 %and.i156, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i157) #12, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  %44 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr98, i32 %count.0.lcssa, i32 -1226833921) #12, !srcloc !107
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #12, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool111.not = icmp eq i32 %44, 0
  %. = select i1 %tobool111.not, i32 0, i32 -14
  br label %cleanup114

cleanup114:                                       ; preds = %for.end94, %for.body62.cleanup114_crit_edge, %lor.lhs.false.cleanup114_crit_edge, %if.end19.cleanup114_crit_edge, %if.end14.cleanup114_crit_edge, %if.end.cleanup114_crit_edge, %entry.cleanup114_crit_edge
  %retval.2 = phi i32 [ -12, %entry.cleanup114_crit_edge ], [ -14, %if.end.cleanup114_crit_edge ], [ %., %for.end94 ], [ -14, %for.body62.cleanup114_crit_edge ], [ -12, %if.end14.cleanup114_crit_edge ], [ -14, %lor.lhs.false.cleanup114_crit_edge ], [ -14, %if.end19.cleanup114_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_substream(ptr noundef %subs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_formats = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 25
  %0 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_formats, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmt_list = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 26
  %2 = ptrtoint ptr %fmt_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt_list, align 4
  %cmp.not20 = icmp eq ptr %3, %fmt_list
  br i1 %cmp.not20, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %audioformat_free.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %fp.021 = phi ptr [ %n.0, %audioformat_free.exit.for.body_crit_edge ], [ %3, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %fp.021 to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.0 = load ptr, ptr %fp.021, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %fp.021) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.audioformat_free.exit_crit_edge

for.body.audioformat_free.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %audioformat_free.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %fp.021, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %fp.021 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fp.021, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %audioformat_free.exit

audioformat_free.exit:                            ; preds = %if.end.i.i.i, %for.body.audioformat_free.exit_crit_edge
  %11 = ptrtoint ptr %fp.021 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %fp.021, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %fp.021, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %rate_table.i = getelementptr inbounds %struct.audioformat, ptr %fp.021, i32 0, i32 25
  %13 = ptrtoint ptr %rate_table.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rate_table.i, align 4
  tail call void @kfree(ptr noundef %14) #12
  %chmap.i = getelementptr inbounds %struct.audioformat, ptr %fp.021, i32 0, i32 27
  %15 = ptrtoint ptr %chmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chmap.i, align 4
  tail call void @kfree(ptr noundef %16) #12
  tail call void @kfree(ptr noundef %fp.021) #12
  %cmp.not = icmp eq ptr %n.0, %fmt_list
  br i1 %cmp.not, label %audioformat_free.exit.for.end_crit_edge, label %audioformat_free.exit.for.body_crit_edge

audioformat_free.exit.for.body_crit_edge:         ; preds = %audioformat_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

audioformat_free.exit.for.end_crit_edge:          ; preds = %audioformat_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %audioformat_free.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %str_pd = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 6
  %17 = ptrtoint ptr %str_pd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %str_pd, align 8
  tail call void @kfree(ptr noundef %18) #12
  tail call void @snd_media_stream_delete(ptr noundef %subs) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @audioformat_free(ptr noundef %fp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %fp) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %fp, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fp, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %fp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %fp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %fp, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %rate_table = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 25
  %8 = ptrtoint ptr %rate_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rate_table, align 4
  tail call void @kfree(ptr noundef %9) #12
  %chmap = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 27
  %10 = ptrtoint ptr %chmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chmap, align 4
  tail call void @kfree(ptr noundef %11) #12
  tail call void @kfree(ptr noundef %fp) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_media_stream_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_apply_interface_quirk(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_audioformat_set_sync_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_add_endpoint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_init_pitch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_init_sample_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_find_csint_desc(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_uac_endpoint_attributes(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %alts, i32 noundef %protocol, i32 noundef %iface_no) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %alts, i32 0, i32 3
  %0 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %endpoint, align 4
  %extra = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extra, align 4
  %extralen = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %extralen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %extralen, align 4
  %call = tail call ptr @snd_usb_find_desc(ptr noundef %3, i32 noundef %5, ptr noundef null, i8 noundef zeroext 37) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 4
  %6 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bNumEndpoints, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp ugt i8 %7, 1
  br i1 %cmp, label %if.end, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.end:                                           ; preds = %land.lhs.true
  %8 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %endpoint, align 4
  %extra6 = getelementptr %struct.usb_host_endpoint, ptr %9, i32 1, i32 7
  %10 = ptrtoint ptr %extra6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %extra6, align 4
  %extralen9 = getelementptr %struct.usb_host_endpoint, ptr %9, i32 1, i32 8
  %12 = ptrtoint ptr %extralen9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %extralen9, align 4
  %call10 = tail call ptr @snd_usb_find_desc(ptr noundef %11, i32 noundef %13, ptr noundef null, i8 noundef zeroext 37) #12
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end.if.end16_crit_edge, label %if.end.lor.lhs.false_crit_edge

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.end16:                                         ; preds = %if.end.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge
  %extra13 = getelementptr inbounds %struct.usb_host_interface, ptr %alts, i32 0, i32 2
  %14 = ptrtoint ptr %extra13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %extra13, align 4
  %extralen14 = getelementptr inbounds %struct.usb_host_interface, ptr %alts, i32 0, i32 1
  %16 = ptrtoint ptr %extralen14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %extralen14, align 4
  %call15 = tail call ptr @snd_usb_find_desc(ptr noundef %15, i32 noundef %17, ptr noundef null, i8 noundef zeroext 37) #12
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %if.end16.do.end_crit_edge, label %if.end16.lor.lhs.false_crit_edge

if.end16.lor.lhs.false_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.end16.do.end_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end16.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %csep.1102 = phi ptr [ %call15, %if.end16.lor.lhs.false_crit_edge ], [ %call10, %if.end.lor.lhs.false_crit_edge ], [ %call, %entry.lor.lhs.false_crit_edge ]
  %18 = ptrtoint ptr %csep.1102 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %csep.1102, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %19)
  %cmp19 = icmp ult i8 %19, 7
  br i1 %cmp19, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false21

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false21:                                  ; preds = %lor.lhs.false
  %bDescriptorSubtype = getelementptr inbounds %struct.uac_iso_endpoint_descriptor, ptr %csep.1102, i32 0, i32 2
  %20 = ptrtoint ptr %bDescriptorSubtype to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bDescriptorSubtype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp23.not = icmp eq i8 %21, 1
  br i1 %cmp23.not, label %if.end26, label %lor.lhs.false21.do.end_crit_edge

lor.lhs.false21.do.end_crit_edge:                 ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end26:                                         ; preds = %lor.lhs.false21
  %22 = zext i32 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %protocol, label %if.else47 [
    i32 0, label %if.then29
    i32 32, label %if.then33
  ]

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %bmAttributes = getelementptr inbounds %struct.uac_iso_endpoint_descriptor, ptr %csep.1102, i32 0, i32 3
  %23 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bmAttributes, align 1
  %conv30 = zext i8 %24 to i32
  br label %cleanup67

if.then33:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %19)
  %cmp36 = icmp ult i8 %19, 8
  br i1 %cmp36, label %if.then33.do.end_crit_edge, label %cleanup.thread

if.then33.do.end_crit_edge:                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

cleanup.thread:                                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  %bmAttributes40 = getelementptr inbounds %struct.uac_iso_endpoint_descriptor, ptr %csep.1102, i32 0, i32 3
  %25 = ptrtoint ptr %bmAttributes40 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bmAttributes40, align 1
  %27 = and i8 %26, -128
  %and = zext i8 %27 to i32
  %bmControls = getelementptr inbounds %struct.uac2_iso_endpoint_descriptor, ptr %csep.1102, i32 0, i32 4
  %28 = ptrtoint ptr %bmControls to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bmControls, align 1
  %30 = and i8 %29, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool44.not = icmp eq i8 %30, 0
  %or = or i32 %and, 2
  %spec.select = select i1 %tobool44.not, i32 %and, i32 %or
  br label %cleanup67

if.else47:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %19)
  %cmp50 = icmp ult i8 %19, 10
  br i1 %cmp50, label %if.else47.do.end_crit_edge, label %cleanup60.thread

if.else47.do.end_crit_edge:                       ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

cleanup60.thread:                                 ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #14
  %bmControls54 = getelementptr inbounds %struct.uac3_iso_endpoint_descriptor, ptr %csep.1102, i32 0, i32 3
  %31 = ptrtoint ptr %bmControls54 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %bmControls54, align 1
  %33 = and i32 %32, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool56.not = icmp eq i32 %33, 0
  %spec.select92 = select i1 %tobool56.not, i32 0, i32 2
  br label %cleanup67

do.end:                                           ; preds = %if.else47.do.end_crit_edge, %if.then33.do.end_crit_edge, %lor.lhs.false21.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.end16.do.end_crit_edge
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %dev65 = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 15
  %bAlternateSetting = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 3
  %36 = ptrtoint ptr %bAlternateSetting to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bAlternateSetting, align 1
  %conv66 = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev65, ptr noundef nonnull @.str.28, i32 noundef %iface_no, i32 noundef %conv66) #16
  br label %cleanup67

cleanup67:                                        ; preds = %do.end, %cleanup60.thread, %cleanup.thread, %if.then29
  %retval.0 = phi i32 [ 0, %do.end ], [ %conv30, %if.then29 ], [ %spec.select, %cleanup.thread ], [ %spec.select92, %cleanup60.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_audioformat_attributes_quirk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_parse_audio_format(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_usb_validate_audio_desc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @snd_usb_parse_datainterval(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_find_desc(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_ctl_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_find_power_domain(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_parse_audio_format_v3(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !16, !17, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !52, !54, !56, !58, !59, !60, !61, !63, !64, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !84, !85, !86}
!llvm.named.register.sp = !{!87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/usb/stream.c", i32 522, i32 32}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/usb/stream.c", i32 535, i32 22}
!4 = !{ptr @snd_usb_init_substream.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../sound/usb/stream.c", i32 87, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../sound/usb/stream.c", i32 157, i32 6}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/usb/stream.c", i32 1146, i32 4}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__snd_usb_parse_audio_interface.__UNIQUE_ID_ddebug245, !10, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/usb/stream.c", i32 1198, i32 3}
!16 = !{ptr @__snd_usb_parse_audio_interface.__UNIQUE_ID_ddebug246, !15, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/usb/stream.c", i32 724, i32 4}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @snd_usb_get_audioformat_uac12._entry, !18, !"_entry", i1 false, i1 false}
!23 = !{ptr @snd_usb_get_audioformat_uac12._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/usb/stream.c", i32 731, i32 4}
!26 = !{ptr @snd_usb_get_audioformat_uac12._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @snd_usb_get_audioformat_uac12._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @snd_usb_get_audioformat_uac12._entry.15, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../sound/usb/stream.c", i32 754, i32 4}
!30 = !{ptr @snd_usb_get_audioformat_uac12._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @snd_usb_get_audioformat_uac12._entry.17, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../sound/usb/stream.c", i32 761, i32 4}
!33 = !{ptr @snd_usb_get_audioformat_uac12._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/usb/stream.c", i32 793, i32 3}
!36 = !{ptr @snd_usb_get_audioformat_uac12._entry.19, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @snd_usb_get_audioformat_uac12._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/usb/stream.c", i32 804, i32 3}
!40 = !{ptr @snd_usb_get_audioformat_uac12._entry.22, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @snd_usb_get_audioformat_uac12._entry_ptr.24, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/usb/stream.c", i32 812, i32 3}
!44 = !{ptr @snd_usb_get_audioformat_uac12._entry.25, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @snd_usb_get_audioformat_uac12._entry_ptr.27, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/usb/stream.c", i32 627, i32 2}
!48 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.30, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @parse_uac_endpoint_attributes._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @parse_uac_endpoint_attributes._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @convert_chmap.uac1_maps, !53, !"uac1_maps", i1 false, i1 false}
!53 = !{!"../sound/usb/stream.c", i32 242, i32 28}
!54 = !{ptr @convert_chmap.uac2_maps, !55, !"uac2_maps", i1 false, i1 false}
!55 = !{!"../sound/usb/stream.c", i32 257, i32 28}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/usb/stream.c", i32 887, i32 4}
!58 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @snd_usb_get_audioformat_uac3._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @snd_usb_get_audioformat_uac3._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @snd_usb_get_audioformat_uac3._entry.33, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../sound/usb/stream.c", i32 932, i32 3}
!63 = !{ptr @snd_usb_get_audioformat_uac3._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @snd_usb_get_audioformat_uac3._entry.35, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../sound/usb/stream.c", i32 939, i32 3}
!66 = !{ptr @snd_usb_get_audioformat_uac3._entry_ptr.36, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/usb/stream.c", i32 947, i32 3}
!69 = !{ptr @snd_usb_get_audioformat_uac3._entry.37, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @snd_usb_get_audioformat_uac3._entry_ptr.39, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/usb/stream.c", i32 970, i32 3}
!73 = !{ptr @snd_usb_get_audioformat_uac3._entry.40, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @snd_usb_get_audioformat_uac3._entry_ptr.42, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.44, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/usb/stream.c", i32 995, i32 3}
!77 = !{ptr @snd_usb_get_audioformat_uac3._entry.43, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @snd_usb_get_audioformat_uac3._entry_ptr.45, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @snd_usb_get_audioformat_uac3._entry.46, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../sound/usb/stream.c", i32 1026, i32 2}
!81 = !{ptr @snd_usb_get_audioformat_uac3._entry_ptr.47, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/usb/stream.c", i32 459, i32 3}
!84 = !{ptr @.str.49, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @convert_chmap_v3._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @convert_chmap_v3._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{!"sp"}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"auto-init"}
!98 = !{i8 0, i8 2}
!99 = !{i64 2148232407, i64 2148232412, i64 2148232425, i64 2148232469, i64 2148232503, i64 2148232524}
!100 = !{i64 6042338}
!101 = !{i64 6042535}
!102 = !{i64 2153527768}
!103 = !{i64 2154642898, i64 2154643178, i64 2154643512, i64 2154643846}
!104 = !{i64 2154654876, i64 2154655156, i64 2154655490, i64 2154655824}
!105 = !{i64 2154663672, i64 2154663952, i64 2154664286, i64 2154664620}
!106 = !{i64 2154672469, i64 2154672749, i64 2154673083, i64 2154673417}
!107 = !{i64 2154681262, i64 2154681542, i64 2154681876, i64 2154682210}
