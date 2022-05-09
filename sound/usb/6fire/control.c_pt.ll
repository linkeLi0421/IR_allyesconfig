; ModuleID = '/llk/IR_all_yes/sound/usb/6fire/control.c_pt.bc'
source_filename = "../sound/usb/6fire/control.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.78 = type { i8, i8, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.79, i32 }
%union.anon.79 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sfire_chip = type { ptr, ptr, i32, i32, i8, ptr, ptr, ptr, ptr }
%struct.control_runtime = type { ptr, ptr, ptr, ptr, [32 x ptr], i8, i8, i8, i8, [6 x i8], i8, i8, [2 x i8], i8 }
%struct.comm_runtime = type { ptr, %struct.urb, ptr, i8, ptr, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.64, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.64 = type { %struct.anon.67, [40 x i8] }
%struct.anon.67 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.73, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.73 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.68, [128 x i8] }
%union.anon.68 = type { %union.anon.70 }
%union.anon.70 = type { [64 x i64] }

@init_data = internal constant { [24 x %struct.anon.78], [56 x i8] } { [24 x %struct.anon.78] [%struct.anon.78 { i8 34, i8 0, i8 0 }, %struct.anon.78 { i8 32, i8 0, i8 8 }, %struct.anon.78 { i8 34, i8 1, i8 1 }, %struct.anon.78 { i8 32, i8 1, i8 8 }, %struct.anon.78 { i8 34, i8 2, i8 0 }, %struct.anon.78 { i8 32, i8 2, i8 8 }, %struct.anon.78 { i8 34, i8 3, i8 0 }, %struct.anon.78 { i8 32, i8 3, i8 8 }, %struct.anon.78 { i8 34, i8 4, i8 0 }, %struct.anon.78 { i8 32, i8 4, i8 8 }, %struct.anon.78 { i8 34, i8 5, i8 1 }, %struct.anon.78 { i8 32, i8 5, i8 8 }, %struct.anon.78 { i8 34, i8 4, i8 1 }, %struct.anon.78 { i8 18, i8 4, i8 0 }, %struct.anon.78 { i8 18, i8 5, i8 0 }, %struct.anon.78 { i8 18, i8 13, i8 56 }, %struct.anon.78 { i8 18, i8 33, i8 -126 }, %struct.anon.78 { i8 18, i8 34, i8 -128 }, %struct.anon.78 { i8 18, i8 35, i8 0 }, %struct.anon.78 { i8 18, i8 6, i8 2 }, %struct.anon.78 { i8 18, i8 3, i8 0 }, %struct.anon.78 { i8 18, i8 2, i8 0 }, %struct.anon.78 { i8 34, i8 3, i8 1 }, %struct.anon.78 zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@vol_elements = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 19, i32 0, ptr @usb6fire_control_output_vol_info, ptr @usb6fire_control_output_vol_get, ptr @usb6fire_control_output_vol_put, %union.anon.79 { ptr @tlv_output }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 1, i32 19, i32 0, ptr @usb6fire_control_output_vol_info, ptr @usb6fire_control_output_vol_get, ptr @usb6fire_control_output_vol_put, %union.anon.79 { ptr @tlv_output }, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 2, i32 19, i32 0, ptr @usb6fire_control_output_vol_info, ptr @usb6fire_control_output_vol_get, ptr @usb6fire_control_output_vol_put, %union.anon.79 { ptr @tlv_output }, i32 4 }, %struct.snd_kcontrol_new zeroinitializer], [32 x i8] zeroinitializer }, align 32
@usb6fire_control_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 583, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot add control.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb6fire_control_init\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/usb/6fire/control.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb6fire_control_init._entry_ptr = internal global ptr @usb6fire_control_init._entry, section ".printk_index", align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@mute_elements = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 3, i32 0, ptr @snd_ctl_boolean_stereo_info, ptr @usb6fire_control_output_mute_get, ptr @usb6fire_control_output_mute_put, %union.anon.79 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 1, i32 3, i32 0, ptr @snd_ctl_boolean_stereo_info, ptr @usb6fire_control_output_mute_get, ptr @usb6fire_control_output_mute_put, %union.anon.79 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 2, i32 3, i32 0, ptr @snd_ctl_boolean_stereo_info, ptr @usb6fire_control_output_mute_get, ptr @usb6fire_control_output_mute_put, %union.anon.79 zeroinitializer, i32 4 }, %struct.snd_kcontrol_new zeroinitializer], [32 x i8] zeroinitializer }, align 32
@usb6fire_control_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 590, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@usb6fire_control_init._entry_ptr.8 = internal global ptr @usb6fire_control_init._entry.7, section ".printk_index", align 4
@elements = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 3, i32 0, ptr @usb6fire_control_line_phono_info, ptr @usb6fire_control_line_phono_get, ptr @usb6fire_control_line_phono_put, %union.anon.79 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 3, i32 0, ptr @usb6fire_control_opt_coax_info, ptr @usb6fire_control_opt_coax_get, ptr @usb6fire_control_opt_coax_put, %union.anon.79 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 3, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @usb6fire_control_digital_thru_get, ptr @usb6fire_control_digital_thru_put, %union.anon.79 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 19, i32 0, ptr @usb6fire_control_input_vol_info, ptr @usb6fire_control_input_vol_get, ptr @usb6fire_control_input_vol_put, %union.anon.79 { ptr @tlv_input }, i32 0 }, %struct.snd_kcontrol_new zeroinitializer], [48 x i8] zeroinitializer }, align 32
@usb6fire_control_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 600, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@usb6fire_control_init._entry_ptr.10 = internal global ptr @usb6fire_control_init._entry.9, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rates_altsetting = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 1, i32 2, i32 2, i32 3, i32 3], [40 x i8] zeroinitializer }, align 32
@rates_6fire_vl = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 0, i16 1, i16 0, i16 1, i16 0, i16 1], [20 x i8] zeroinitializer }, align 32
@rates_6fire_vh = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 17, i16 17, i16 16, i16 16, i16 0, i16 0], [20 x i8] zeroinitializer }, align 32
@tlv_output = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 -9000, i32 0], [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Analog Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@usb6fire_control_output_vol_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 223, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid channel in volume control.\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"usb6fire_control_output_vol_get\00", [32 x i8] zeroinitializer }, align 32
@usb6fire_control_output_vol_get._entry_ptr = internal global ptr @usb6fire_control_output_vol_get._entry, section ".printk_index", align 4
@usb6fire_control_output_vol_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.14, ptr @.str.3, i32 194, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"usb6fire_control_output_vol_put\00", [32 x i8] zeroinitializer }, align 32
@usb6fire_control_output_vol_put._entry_ptr = internal global ptr @usb6fire_control_output_vol_put._entry, section ".printk_index", align 4
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Analog Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@usb6fire_control_output_mute_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.16, ptr @.str.3, i32 268, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"usb6fire_control_output_mute_get\00", [63 x i8] zeroinitializer }, align 32
@usb6fire_control_output_mute_get._entry_ptr = internal global ptr @usb6fire_control_output_mute_get._entry, section ".printk_index", align 4
@usb6fire_control_output_mute_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.17, ptr @.str.3, i32 242, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"usb6fire_control_output_mute_put\00", [63 x i8] zeroinitializer }, align 32
@usb6fire_control_output_mute_put._entry_ptr = internal global ptr @usb6fire_control_output_mute_put._entry, section ".printk_index", align 4
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Line/Phono Capture Route\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Opt/Coax Capture Route\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Digital Thru Playback Route\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Analog Capture Volume\00", [42 x i8] zeroinitializer }, align 32
@tlv_input = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 -1500, i32 1500], [16 x i8] zeroinitializer }, align 32
@line_phono_texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.22, ptr @.str.23], [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Line\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Phono\00", [26 x i8] zeroinitializer }, align 32
@opt_coax_texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.24, ptr @.str.25], [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Optical\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Coax\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant [10 x i8] c"init_data\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 36, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 581, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"vol_elements\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 400, i32 38 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 583, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 588, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"mute_elements\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 440, i32 38 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 590, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [9 x i8] c"elements\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 474, i32 38 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 600, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"rates_altsetting\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 48, i32 18 }
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"rates_6fire_vl\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 50, i32 18 }
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"rates_6fire_vh\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 51, i32 18 }
@___asan_gen_.77 = private unnamed_addr constant [11 x i8] c"tlv_output\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 53, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 403, i32 11 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 222, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 193, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 443, i32 11 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 267, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 241, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 477, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 486, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 495, i32 11 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 504, i32 11 }
@___asan_gen_.125 = private unnamed_addr constant [10 x i8] c"tlv_input\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 54, i32 8 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"line_phono_texts\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 25, i32 27 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 25, i32 51 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 25, i32 59 }
@___asan_gen_.137 = private unnamed_addr constant [15 x i8] c"opt_coax_texts\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 24, i32 27 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 24, i32 49 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private constant [29 x i8] c"../sound/usb/6fire/control.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 24, i32 60 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @usb6fire_control_init._entry, ptr @usb6fire_control_init._entry.7, ptr @usb6fire_control_init._entry.9, ptr @usb6fire_control_init._entry_ptr, ptr @usb6fire_control_init._entry_ptr.10, ptr @usb6fire_control_init._entry_ptr.8, ptr @usb6fire_control_output_mute_get._entry, ptr @usb6fire_control_output_mute_get._entry_ptr, ptr @usb6fire_control_output_mute_put._entry, ptr @usb6fire_control_output_mute_put._entry_ptr, ptr @usb6fire_control_output_vol_get._entry, ptr @usb6fire_control_output_vol_get._entry_ptr, ptr @usb6fire_control_output_vol_put._entry, ptr @usb6fire_control_output_vol_put._entry_ptr, ptr @init_data, ptr @.str, ptr @vol_elements, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mute_elements, ptr @elements, ptr @rates_altsetting, ptr @rates_6fire_vl, ptr @rates_6fire_vh, ptr @tlv_output, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @tlv_input, ptr @line_phono_texts, ptr @.str.22, ptr @.str.23, ptr @opt_coax_texts, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_data to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vol_elements to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_control_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mute_elements to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_control_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elements to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_control_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates_altsetting to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates_6fire_vl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates_6fire_vh to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv_output to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_control_output_vol_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_control_output_vol_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_control_output_mute_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_control_output_mute_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv_input to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @line_phono_texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt_coax_texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb6fire_control_init(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 160) #11
  %comm = getelementptr inbounds %struct.sfire_chip, ptr %chip, i32 0, i32 8
  %1 = ptrtoint ptr %comm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %comm, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip1 = getelementptr inbounds %struct.control_runtime, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %chip1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %chip, ptr %chip1, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @usb6fire_control_streaming_update, ptr %call7.i.i, align 8
  %set_rate = getelementptr inbounds %struct.control_runtime, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %set_rate to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @usb6fire_control_set_rate, ptr %set_rate, align 4
  %set_channels = getelementptr inbounds %struct.control_runtime, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %set_channels to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @usb6fire_control_set_channels, ptr %set_channels, align 8
  %write8 = getelementptr inbounds %struct.comm_runtime, ptr %2, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end
  %7 = phi i8 [ 34, %if.end ], [ %15, %while.body.while.body_crit_edge ]
  %i.0105 = phi i32 [ 0, %if.end ], [ %inc, %while.body.while.body_crit_edge ]
  %8 = ptrtoint ptr %write8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write8, align 4
  %reg = getelementptr [24 x %struct.anon.78], ptr @init_data, i32 0, i32 %i.0105, i32 1
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reg, align 1
  %value = getelementptr [24 x %struct.anon.78], ptr @init_data, i32 0, i32 %i.0105, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %value, align 1
  %call7 = tail call i32 %9(ptr noundef %2, i8 noundef zeroext %7, i8 noundef zeroext %11, i8 noundef zeroext %13) #8
  %inc = add nuw nsw i32 %i.0105, 1
  %arrayidx = getelementptr [24 x %struct.anon.78], ptr @init_data, i32 0, i32 %inc
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %exitcond = icmp eq i32 %inc, 23
  br i1 %exitcond, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body
  %16 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip1, align 4
  %comm.i = getelementptr inbounds %struct.sfire_chip, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %comm.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %comm.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %while.end.usb6fire_control_opt_coax_update.exit_crit_edge, label %if.then.i

while.end.usb6fire_control_opt_coax_update.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb6fire_control_opt_coax_update.exit

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %write8.i = getelementptr inbounds %struct.comm_runtime, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write8.i, align 4
  %opt_coax_switch.i = getelementptr inbounds %struct.control_runtime, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %opt_coax_switch.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %opt_coax_switch.i, align 8, !range !86
  %call.i = tail call i32 %21(ptr noundef nonnull %19, i8 noundef zeroext 34, i8 noundef zeroext 0, i8 noundef zeroext %23) #8
  %24 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write8.i, align 4
  %26 = ptrtoint ptr %opt_coax_switch.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %opt_coax_switch.i, align 8, !range !86
  %call6.i = tail call i32 %25(ptr noundef nonnull %19, i8 noundef zeroext 33, i8 noundef zeroext 0, i8 noundef zeroext %27) #8
  br label %usb6fire_control_opt_coax_update.exit

usb6fire_control_opt_coax_update.exit:            ; preds = %if.then.i, %while.end.usb6fire_control_opt_coax_update.exit_crit_edge
  %28 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip1, align 4
  %comm.i83 = getelementptr inbounds %struct.sfire_chip, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %comm.i83 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %comm.i83, align 4
  %tobool.not.i84 = icmp eq ptr %31, null
  br i1 %tobool.not.i84, label %usb6fire_control_opt_coax_update.exit.usb6fire_control_line_phono_update.exit_crit_edge, label %if.then.i88

usb6fire_control_opt_coax_update.exit.usb6fire_control_line_phono_update.exit_crit_edge: ; preds = %usb6fire_control_opt_coax_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb6fire_control_line_phono_update.exit

if.then.i88:                                      ; preds = %usb6fire_control_opt_coax_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  %write8.i85 = getelementptr inbounds %struct.comm_runtime, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %write8.i85 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write8.i85, align 4
  %line_phono_switch.i = getelementptr inbounds %struct.control_runtime, ptr %call7.i.i, i32 0, i32 6
  %34 = ptrtoint ptr %line_phono_switch.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %line_phono_switch.i, align 1, !range !86
  %call.i86 = tail call i32 %33(ptr noundef nonnull %31, i8 noundef zeroext 34, i8 noundef zeroext 2, i8 noundef zeroext %35) #8
  %36 = ptrtoint ptr %write8.i85 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write8.i85, align 4
  %38 = ptrtoint ptr %line_phono_switch.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %line_phono_switch.i, align 1, !range !86
  %call6.i87 = tail call i32 %37(ptr noundef nonnull %31, i8 noundef zeroext 33, i8 noundef zeroext 2, i8 noundef zeroext %39) #8
  br label %usb6fire_control_line_phono_update.exit

usb6fire_control_line_phono_update.exit:          ; preds = %if.then.i88, %usb6fire_control_opt_coax_update.exit.usb6fire_control_line_phono_update.exit_crit_edge
  tail call fastcc void @usb6fire_control_output_vol_update(ptr noundef nonnull %call7.i.i)
  %40 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chip1, align 4
  %comm.i90 = getelementptr inbounds %struct.sfire_chip, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %comm.i90 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %comm.i90, align 4
  %tobool.not.i91 = icmp eq ptr %43, null
  br i1 %tobool.not.i91, label %usb6fire_control_line_phono_update.exit.usb6fire_control_output_mute_update.exit_crit_edge, label %if.then.i94

usb6fire_control_line_phono_update.exit.usb6fire_control_output_mute_update.exit_crit_edge: ; preds = %usb6fire_control_line_phono_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb6fire_control_output_mute_update.exit

if.then.i94:                                      ; preds = %usb6fire_control_line_phono_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  %write8.i92 = getelementptr inbounds %struct.comm_runtime, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %write8.i92 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write8.i92, align 4
  %output_mute.i = getelementptr inbounds %struct.control_runtime, ptr %call7.i.i, i32 0, i32 11
  %46 = ptrtoint ptr %output_mute.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %output_mute.i, align 1
  %neg.i = xor i8 %47, -1
  %call.i93 = tail call i32 %45(ptr noundef nonnull %43, i8 noundef zeroext 18, i8 noundef zeroext 14, i8 noundef zeroext %neg.i) #8
  br label %usb6fire_control_output_mute_update.exit

usb6fire_control_output_mute_update.exit:         ; preds = %if.then.i94, %usb6fire_control_line_phono_update.exit.usb6fire_control_output_mute_update.exit_crit_edge
  %48 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chip1, align 4
  %comm.i96 = getelementptr inbounds %struct.sfire_chip, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %comm.i96 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %comm.i96, align 4
  %tobool.not.i97 = icmp eq ptr %51, null
  br i1 %tobool.not.i97, label %usb6fire_control_output_mute_update.exit.usb6fire_control_input_vol_update.exit_crit_edge, label %for.cond.preheader.i

usb6fire_control_output_mute_update.exit.usb6fire_control_input_vol_update.exit_crit_edge: ; preds = %usb6fire_control_output_mute_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb6fire_control_input_vol_update.exit

for.cond.preheader.i:                             ; preds = %usb6fire_control_output_mute_update.exit
  %ivol_updated.i = getelementptr inbounds %struct.control_runtime, ptr %call7.i.i, i32 0, i32 13
  %write8.i98 = getelementptr inbounds %struct.comm_runtime, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %ivol_updated.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ivol_updated.i, align 2
  %54 = and i8 %53, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool1.not.i = icmp eq i8 %54, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %for.cond.preheader.i.for.inc.i_crit_edge

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then2.i:                                       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %write8.i98 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write8.i98, align 4
  %arrayidx.i = getelementptr %struct.control_runtime, ptr %call7.i.i, i32 0, i32 12, i32 0
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i, align 4
  %59 = and i8 %58, 63
  %call.i99 = tail call i32 %56(ptr noundef nonnull %51, i8 noundef zeroext 18, i8 noundef zeroext 28, i8 noundef zeroext %59) #8
  %60 = ptrtoint ptr %ivol_updated.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ivol_updated.i, align 2
  %conv10.i = or i8 %61, 1
  store i8 %conv10.i, ptr %ivol_updated.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then2.i, %for.cond.preheader.i.for.inc.i_crit_edge
  %62 = ptrtoint ptr %ivol_updated.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ivol_updated.i, align 2
  %64 = and i8 %63, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool1.not.1.i = icmp eq i8 %64, 0
  br i1 %tobool1.not.1.i, label %if.then2.1.i, label %for.inc.i.usb6fire_control_input_vol_update.exit_crit_edge

for.inc.i.usb6fire_control_input_vol_update.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb6fire_control_input_vol_update.exit

if.then2.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %write8.i98 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write8.i98, align 4
  %arrayidx.1.i = getelementptr %struct.control_runtime, ptr %call7.i.i, i32 0, i32 12, i32 1
  %67 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.1.i, align 1
  %69 = and i8 %68, 63
  %call.1.i = tail call i32 %66(ptr noundef nonnull %51, i8 noundef zeroext 18, i8 noundef zeroext 29, i8 noundef zeroext %69) #8
  %70 = ptrtoint ptr %ivol_updated.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ivol_updated.i, align 2
  %conv10.1.i = or i8 %71, 2
  store i8 %conv10.1.i, ptr %ivol_updated.i, align 2
  br label %usb6fire_control_input_vol_update.exit

usb6fire_control_input_vol_update.exit:           ; preds = %if.then2.1.i, %for.inc.i.usb6fire_control_input_vol_update.exit_crit_edge, %usb6fire_control_output_mute_update.exit.usb6fire_control_input_vol_update.exit_crit_edge
  %72 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %chip1, align 4
  %comm.i101 = getelementptr inbounds %struct.sfire_chip, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %comm.i101 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %comm.i101, align 4
  %tobool.not.i102 = icmp eq ptr %75, null
  br i1 %tobool.not.i102, label %usb6fire_control_input_vol_update.exit.usb6fire_control_streaming_update.exit_crit_edge, label %if.then.i104

usb6fire_control_input_vol_update.exit.usb6fire_control_streaming_update.exit_crit_edge: ; preds = %usb6fire_control_input_vol_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb6fire_control_streaming_update.exit

if.then.i104:                                     ; preds = %usb6fire_control_input_vol_update.exit
  %usb_streaming.i = getelementptr inbounds %struct.control_runtime, ptr %call7.i.i, i32 0, i32 8
  %76 = ptrtoint ptr %usb_streaming.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %usb_streaming.i, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool1.not.i103 = icmp eq i8 %77, 0
  br i1 %tobool1.not.i103, label %land.lhs.true.i, label %if.then.i104.if.end.i_crit_edge

if.then.i104.if.end.i_crit_edge:                  ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i104
  %digital_thru_switch.i = getelementptr inbounds %struct.control_runtime, ptr %call7.i.i, i32 0, i32 7
  %78 = ptrtoint ptr %digital_thru_switch.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %digital_thru_switch.i, align 2, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool2.not.i = icmp eq i8 %79, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then3.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  %80 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %73, align 4
  %call.i.i = tail call i32 @usb_set_interface(ptr noundef %81, i32 noundef 1, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %if.then3.i.if.end.i_crit_edge, label %if.end5.i.i

if.then3.i.if.end.i_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end5.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %write16.i.i = getelementptr inbounds %struct.comm_runtime, ptr %75, i32 0, i32 6
  %82 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write16.i.i, align 4
  %call9.i.i = tail call i32 %83(ptr noundef nonnull %75, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 16) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end5.i.i, %if.then3.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.then.i104.if.end.i_crit_edge
  %write16.i = getelementptr inbounds %struct.comm_runtime, ptr %75, i32 0, i32 6
  %84 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write16.i, align 4
  %86 = ptrtoint ptr %usb_streaming.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %usb_streaming.i, align 1, !range !86
  %digital_thru_switch6.i = getelementptr inbounds %struct.control_runtime, ptr %call7.i.i, i32 0, i32 7
  %88 = ptrtoint ptr %digital_thru_switch6.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %digital_thru_switch6.i, align 2, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool7.not.i = icmp eq i8 %89, 0
  %cond8.i = select i1 %tobool7.not.i, i8 0, i8 8
  %or.i = or i8 %cond8.i, %87
  %call9.i = tail call i32 %85(ptr noundef nonnull %75, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %or.i) #8
  br label %usb6fire_control_streaming_update.exit

usb6fire_control_streaming_update.exit:           ; preds = %if.end.i, %usb6fire_control_input_vol_update.exit.usb6fire_control_streaming_update.exit_crit_edge
  %card = getelementptr inbounds %struct.sfire_chip, ptr %chip, i32 0, i32 1
  %90 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %card, align 4
  %call9 = tail call fastcc i32 @usb6fire_control_add_virtual(ptr noundef nonnull %call7.i.i, ptr noundef %91, ptr noundef nonnull @.str, ptr noundef nonnull @vol_elements)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %do.end

do.end:                                           ; preds = %usb6fire_control_streaming_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %chip, align 4
  %dev12 = getelementptr inbounds %struct.usb_device, ptr %93, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.1) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end13:                                         ; preds = %usb6fire_control_streaming_update.exit
  %94 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %card, align 4
  %call15 = tail call fastcc i32 @usb6fire_control_add_virtual(ptr noundef nonnull %call7.i.i, ptr noundef %95, ptr noundef nonnull @.str.6, ptr noundef nonnull @mute_elements)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %while.body27.preheader, label %do.end20

while.body27.preheader:                           ; preds = %if.end13
  %96 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %card, align 4
  %call30 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @elements, ptr noundef nonnull %call7.i.i) #8
  %call31 = tail call i32 @snd_ctl_add(ptr noundef %97, ptr noundef %call30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %while.body27.preheader.if.then32_crit_edge, label %while.cond24

while.body27.preheader.if.then32_crit_edge:       ; preds = %while.body27.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %chip, align 4
  %dev22 = getelementptr inbounds %struct.usb_device, ptr %99, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.1) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

while.cond24:                                     ; preds = %while.body27.preheader
  %100 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %card, align 4
  %call30.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([5 x %struct.snd_kcontrol_new], ptr @elements, i32 0, i32 1), ptr noundef nonnull %call7.i.i) #8
  %call31.1 = tail call i32 @snd_ctl_add(ptr noundef %101, ptr noundef %call30.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.1)
  %cmp.1 = icmp slt i32 %call31.1, 0
  br i1 %cmp.1, label %while.cond24.if.then32_crit_edge, label %while.cond24.1

while.cond24.if.then32_crit_edge:                 ; preds = %while.cond24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

while.cond24.1:                                   ; preds = %while.cond24
  %102 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %card, align 4
  %call30.2 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([5 x %struct.snd_kcontrol_new], ptr @elements, i32 0, i32 2), ptr noundef nonnull %call7.i.i) #8
  %call31.2 = tail call i32 @snd_ctl_add(ptr noundef %103, ptr noundef %call30.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.2)
  %cmp.2 = icmp slt i32 %call31.2, 0
  br i1 %cmp.2, label %while.cond24.1.if.then32_crit_edge, label %while.cond24.2

while.cond24.1.if.then32_crit_edge:               ; preds = %while.cond24.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

while.cond24.2:                                   ; preds = %while.cond24.1
  %104 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %card, align 4
  %call30.3 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([5 x %struct.snd_kcontrol_new], ptr @elements, i32 0, i32 3), ptr noundef nonnull %call7.i.i) #8
  %call31.3 = tail call i32 @snd_ctl_add(ptr noundef %105, ptr noundef %call30.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.3)
  %cmp.3 = icmp slt i32 %call31.3, 0
  br i1 %cmp.3, label %while.cond24.2.if.then32_crit_edge, label %while.cond24.3

while.cond24.2.if.then32_crit_edge:               ; preds = %while.cond24.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

while.cond24.3:                                   ; preds = %while.cond24.2
  call void @__sanitizer_cov_trace_pc() #10
  %control = getelementptr inbounds %struct.sfire_chip, ptr %chip, i32 0, i32 7
  %106 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call7.i.i, ptr %control, align 4
  br label %cleanup

if.then32:                                        ; preds = %while.cond24.2.if.then32_crit_edge, %while.cond24.1.if.then32_crit_edge, %while.cond24.if.then32_crit_edge, %while.body27.preheader.if.then32_crit_edge
  %call31.lcssa = phi i32 [ %call31, %while.body27.preheader.if.then32_crit_edge ], [ %call31.1, %while.cond24.if.then32_crit_edge ], [ %call31.2, %while.cond24.1.if.then32_crit_edge ], [ %call31.3, %while.cond24.2.if.then32_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %107 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %chip, align 4
  %dev37 = getelementptr inbounds %struct.usb_device, ptr %108, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37, ptr noundef nonnull @.str.1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %while.cond24.3, %do.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end ], [ %call15, %do.end20 ], [ %call31.lcssa, %if.then32 ], [ 0, %while.cond24.3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb6fire_control_streaming_update(ptr nocapture noundef readonly %rt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.control_runtime, ptr %rt, i32 0, i32 3
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %comm = getelementptr inbounds %struct.sfire_chip, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %comm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %comm, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %usb_streaming = getelementptr inbounds %struct.control_runtime, ptr %rt, i32 0, i32 8
  %4 = ptrtoint ptr %usb_streaming to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %usb_streaming, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %digital_thru_switch = getelementptr inbounds %struct.control_runtime, ptr %rt, i32 0, i32 7
  %6 = ptrtoint ptr %digital_thru_switch to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %digital_thru_switch, align 2, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3:                                         ; preds = %land.lhs.true
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @usb_set_interface(ptr noundef %9, i32 noundef 1, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %if.then3.if.end_crit_edge, label %if.end5.i

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end5.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %write16.i = getelementptr inbounds %struct.comm_runtime, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write16.i, align 4
  %call9.i = tail call i32 %11(ptr noundef nonnull %3, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 16) #8
  br label %if.end

if.end:                                           ; preds = %if.end5.i, %if.then3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %write16 = getelementptr inbounds %struct.comm_runtime, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %write16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write16, align 4
  %14 = ptrtoint ptr %usb_streaming to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %usb_streaming, align 1, !range !86
  %digital_thru_switch6 = getelementptr inbounds %struct.control_runtime, ptr %rt, i32 0, i32 7
  %16 = ptrtoint ptr %digital_thru_switch6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %digital_thru_switch6, align 2, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool7.not = icmp eq i8 %17, 0
  %cond8 = select i1 %tobool7.not, i8 0, i8 8
  %or = or i8 %cond8, %15
  %call9 = tail call i32 %13(ptr noundef nonnull %3, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %or) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb6fire_control_set_rate(ptr nocapture noundef readonly %rt, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.control_runtime, ptr %rt, i32 0, i32 3
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %comm = getelementptr inbounds %struct.sfire_chip, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %comm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %comm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %rate)
  %4 = icmp ugt i32 %rate, 5
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr [6 x i32], ptr @rates_altsetting, i32 0, i32 %rate
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @usb_set_interface(ptr noundef %6, i32 noundef 1, i32 noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %write16 = getelementptr inbounds %struct.comm_runtime, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %write16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write16, align 4
  %arrayidx6 = getelementptr [6 x i16], ptr @rates_6fire_vl, i32 0, i32 %rate
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx6, align 2
  %conv = trunc i16 %12 to i8
  %arrayidx7 = getelementptr [6 x i16], ptr @rates_6fire_vh, i32 0, i32 %rate
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx7, align 2
  %conv8 = trunc i16 %14 to i8
  %call9 = tail call i32 %10(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext %conv8) #8
  %15 = tail call i32 @llvm.smin.i32(i32 %call9, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %15, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb6fire_control_set_channels(ptr nocapture noundef readonly %rt, i32 noundef %n_analog_out, i32 noundef %n_analog_in, i1 noundef zeroext %spdif_out, i1 noundef zeroext %spdif_in) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.control_runtime, ptr %rt, i32 0, i32 3
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %comm = getelementptr inbounds %struct.sfire_chip, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %comm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %comm, align 4
  %write16 = getelementptr inbounds %struct.comm_runtime, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %write16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write16, align 4
  %div = sdiv i32 %n_analog_out, 2
  %notmask = shl nsw i32 -1, %div
  %6 = trunc i32 %notmask to i8
  %conv = xor i8 %6, -1
  %div2 = sdiv i32 %n_analog_in, 2
  %notmask20 = shl nsw i32 -1, %div2
  %7 = trunc i32 %notmask20 to i8
  %conv5 = xor i8 %7, -1
  %call = tail call i32 %5(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext %conv, i8 noundef zeroext %conv5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %write16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write16, align 4
  %call8 = tail call i32 %9(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %10 = tail call i32 @llvm.smin.i32(i32 %call8, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %10, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb6fire_control_output_vol_update(ptr nocapture noundef %rt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.control_runtime, ptr %rt, i32 0, i32 3
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %comm = getelementptr inbounds %struct.sfire_chip, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %comm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %comm, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %for.cond.preheader

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

for.cond.preheader:                               ; preds = %entry
  %ovol_updated = getelementptr inbounds %struct.control_runtime, ptr %rt, i32 0, i32 10
  %write8 = getelementptr inbounds %struct.comm_runtime, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ovol_updated to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ovol_updated, align 2
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.then2, label %for.cond.preheader.for.inc_crit_edge

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then2:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %write8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write8, align 4
  %arrayidx = getelementptr %struct.control_runtime, ptr %rt, i32 0, i32 9, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %sub = sub i8 -76, %10
  %call = tail call i32 %8(ptr noundef nonnull %3, i8 noundef zeroext 18, i8 noundef zeroext 15, i8 noundef zeroext %sub) #8
  %11 = ptrtoint ptr %ovol_updated to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ovol_updated, align 2
  %conv9 = or i8 %12, 1
  store i8 %conv9, ptr %ovol_updated, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %for.cond.preheader.for.inc_crit_edge
  %13 = ptrtoint ptr %ovol_updated to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ovol_updated, align 2
  %15 = and i8 %14, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool1.not.1 = icmp eq i8 %15, 0
  br i1 %tobool1.not.1, label %if.then2.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then2.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %write8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write8, align 4
  %arrayidx.1 = getelementptr %struct.control_runtime, ptr %rt, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.1, align 1
  %sub.1 = sub i8 -76, %19
  %call.1 = tail call i32 %17(ptr noundef nonnull %3, i8 noundef zeroext 18, i8 noundef zeroext 16, i8 noundef zeroext %sub.1) #8
  %20 = ptrtoint ptr %ovol_updated to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ovol_updated, align 2
  %conv9.1 = or i8 %21, 2
  store i8 %conv9.1, ptr %ovol_updated, align 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then2.1, %for.inc.for.inc.1_crit_edge
  %22 = ptrtoint ptr %ovol_updated to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ovol_updated, align 2
  %24 = and i8 %23, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool1.not.2 = icmp eq i8 %24, 0
  br i1 %tobool1.not.2, label %if.then2.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then2.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %write8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write8, align 4
  %arrayidx.2 = getelementptr %struct.control_runtime, ptr %rt, i32 0, i32 9, i32 2
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.2, align 1
  %sub.2 = sub i8 -76, %28
  %call.2 = tail call i32 %26(ptr noundef nonnull %3, i8 noundef zeroext 18, i8 noundef zeroext 17, i8 noundef zeroext %sub.2) #8
  %29 = ptrtoint ptr %ovol_updated to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ovol_updated, align 2
  %conv9.2 = or i8 %30, 4
  store i8 %conv9.2, ptr %ovol_updated, align 2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then2.2, %for.inc.1.for.inc.2_crit_edge
  %31 = ptrtoint ptr %ovol_updated to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ovol_updated, align 2
  %33 = and i8 %32, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool1.not.3 = icmp eq i8 %33, 0
  br i1 %tobool1.not.3, label %if.then2.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then2.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %write8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write8, align 4
  %arrayidx.3 = getelementptr %struct.control_runtime, ptr %rt, i32 0, i32 9, i32 3
  %36 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.3, align 1
  %sub.3 = sub i8 -76, %37
  %call.3 = tail call i32 %35(ptr noundef nonnull %3, i8 noundef zeroext 18, i8 noundef zeroext 18, i8 noundef zeroext %sub.3) #8
  %38 = ptrtoint ptr %ovol_updated to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ovol_updated, align 2
  %conv9.3 = or i8 %39, 8
  store i8 %conv9.3, ptr %ovol_updated, align 2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then2.3, %for.inc.2.for.inc.3_crit_edge
  %40 = ptrtoint ptr %ovol_updated to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ovol_updated, align 2
  %42 = and i8 %41, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool1.not.4 = icmp eq i8 %42, 0
  br i1 %tobool1.not.4, label %if.then2.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

if.then2.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %write8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write8, align 4
  %arrayidx.4 = getelementptr %struct.control_runtime, ptr %rt, i32 0, i32 9, i32 4
  %45 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.4, align 1
  %sub.4 = sub i8 -76, %46
  %call.4 = tail call i32 %44(ptr noundef nonnull %3, i8 noundef zeroext 18, i8 noundef zeroext 19, i8 noundef zeroext %sub.4) #8
  %47 = ptrtoint ptr %ovol_updated to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ovol_updated, align 2
  %conv9.4 = or i8 %48, 16
  store i8 %conv9.4, ptr %ovol_updated, align 2
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then2.4, %for.inc.3.for.inc.4_crit_edge
  %49 = ptrtoint ptr %ovol_updated to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ovol_updated, align 2
  %51 = and i8 %50, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool1.not.5 = icmp eq i8 %51, 0
  br i1 %tobool1.not.5, label %if.then2.5, label %for.inc.4.if.end10_crit_edge

for.inc.4.if.end10_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then2.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %write8 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write8, align 4
  %arrayidx.5 = getelementptr %struct.control_runtime, ptr %rt, i32 0, i32 9, i32 5
  %54 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.5, align 1
  %sub.5 = sub i8 -76, %55
  %call.5 = tail call i32 %53(ptr noundef nonnull %3, i8 noundef zeroext 18, i8 noundef zeroext 20, i8 noundef zeroext %sub.5) #8
  %56 = ptrtoint ptr %ovol_updated to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ovol_updated, align 2
  %conv9.5 = or i8 %57, 32
  store i8 %conv9.5, ptr %ovol_updated, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then2.5, %for.inc.4.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb6fire_control_add_virtual(ptr noundef %rt, ptr noundef %card, ptr noundef %name, ptr noundef %elems) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_ctl_make_virtual_master(ptr noundef %name, ptr noundef nonnull @tlv_output) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @snd_ctl_add(ptr noundef %card, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %while.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %name435 = getelementptr %struct.snd_kcontrol_new, ptr %elems, i32 0, i32 3
  %0 = ptrtoint ptr %name435 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name435, align 4
  %tobool5.not36 = icmp eq ptr %1, null
  br i1 %tobool5.not36, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond:                                       ; preds = %if.end14
  %inc = add i32 %i.037, 1
  %name4 = getelementptr %struct.snd_kcontrol_new, ptr %elems, i32 %inc, i32 3
  %2 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name4, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %while.cond.cleanup_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.037 = phi i32 [ %inc, %while.cond.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_kcontrol_new, ptr %elems, i32 %i.037
  %call7 = tail call ptr @snd_ctl_new1(ptr noundef %arrayidx, ptr noundef %rt) #8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %while.body.cleanup_crit_edge, label %if.end10

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %while.body
  %call11 = tail call i32 @snd_ctl_add(ptr noundef %card, ptr noundef nonnull %call7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call.i = tail call i32 @_snd_ctl_add_follower(ptr noundef nonnull %call, ptr noundef nonnull %call7, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp16 = icmp slt i32 %call.i, 0
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %while.cond

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ -12, %while.body.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call.i, %if.end14.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @usb6fire_control_abort(ptr nocapture noundef %chip) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb6fire_control_destroy(ptr nocapture noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %control = getelementptr inbounds %struct.sfire_chip, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %control, align 4
  tail call void @kfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %control, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_make_virtual_master(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_ctl_add_follower(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @usb6fire_control_output_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 180, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb6fire_control_output_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.control_runtime, ptr %1, i32 0, i32 9, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %value, align 8
  %add = add nuw nsw i32 %3, 1
  %arrayidx4 = getelementptr %struct.control_runtime, ptr %1, i32 0, i32 9, i32 %add
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %12 to i32
  %arrayidx7 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv5, ptr %arrayidx7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb6fire_control_output_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.control_runtime, ptr %1, i32 0, i32 9, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp3.not = icmp eq i32 %11, %conv
  br i1 %cmp3.not, label %if.end13, label %if.end13.thread

if.end13:                                         ; preds = %if.end
  %add = add nuw nsw i32 %3, 1
  %arrayidx15 = getelementptr %struct.control_runtime, ptr %1, i32 0, i32 9, i32 %add
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %13 to i32
  %arrayidx18 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv16)
  %cmp19.not = icmp eq i32 %15, %conv16
  br i1 %cmp19.not, label %if.end13.cleanup_crit_edge, label %if.end13.if.end34.thread_crit_edge

if.end13.if.end34.thread_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.thread

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13.thread:                                  ; preds = %if.end
  %conv8 = trunc i32 %11 to i8
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv8, ptr %arrayidx, align 1
  %shl = shl nuw nsw i32 1, %3
  %ovol_updated = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %ovol_updated to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ovol_updated, align 2
  %19 = trunc i32 %shl to i8
  %20 = xor i8 %19, -1
  %conv12 = and i8 %18, %20
  store i8 %conv12, ptr %ovol_updated, align 2
  %add62 = add nuw nsw i32 %3, 1
  %arrayidx1563 = getelementptr %struct.control_runtime, ptr %1, i32 0, i32 9, i32 %add62
  %21 = ptrtoint ptr %arrayidx1563 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx1563, align 1
  %conv1664 = zext i8 %22 to i32
  %arrayidx1865 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx1865 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx1865, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv1664)
  %cmp19.not66 = icmp eq i32 %24, %conv1664
  br i1 %cmp19.not66, label %if.end13.thread.if.then35_crit_edge, label %if.end13.thread.if.end34.thread_crit_edge

if.end13.thread.if.end34.thread_crit_edge:        ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.thread

if.end13.thread.if.then35_crit_edge:              ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

if.end34.thread:                                  ; preds = %if.end13.thread.if.end34.thread_crit_edge, %if.end13.if.end34.thread_crit_edge
  %25 = phi i32 [ %24, %if.end13.thread.if.end34.thread_crit_edge ], [ %15, %if.end13.if.end34.thread_crit_edge ]
  %arrayidx1567 = phi ptr [ %arrayidx1563, %if.end13.thread.if.end34.thread_crit_edge ], [ %arrayidx15, %if.end13.if.end34.thread_crit_edge ]
  %conv24 = trunc i32 %25 to i8
  %26 = ptrtoint ptr %arrayidx1567 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv24, ptr %arrayidx1567, align 1
  %shl28 = shl nuw nsw i32 2, %3
  %ovol_updated30 = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %ovol_updated30 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ovol_updated30, align 2
  %29 = trunc i32 %shl28 to i8
  %30 = xor i8 %29, -1
  %conv33 = and i8 %28, %30
  store i8 %conv33, ptr %ovol_updated30, align 2
  br label %if.then35

if.then35:                                        ; preds = %if.end34.thread, %if.end13.thread.if.then35_crit_edge
  tail call fastcc void @usb6fire_control_output_vol_update(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end13.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 1, %if.then35 ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_stereo_info(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb6fire_control_output_mute_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.12) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %output_mute = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %output_mute to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %output_mute, align 1
  %conv = zext i8 %9 to i32
  %shr = lshr i32 %conv, %3
  %and = and i32 %shr, 1
  %value5 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %value5, align 8
  %11 = lshr i32 %shr, 1
  %and10 = and i32 %11, 1
  %arrayidx12 = getelementptr [128 x i32], ptr %value5, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and10, ptr %arrayidx12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb6fire_control_output_mute_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %output_mute = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %output_mute to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %output_mute, align 1
  %shl = shl nuw nsw i32 3, %3
  %10 = trunc i32 %shl to i8
  %11 = xor i8 %10, -1
  %conv3 = and i8 %9, %11
  store i8 %conv3, ptr %output_mute, align 1
  %value4 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %12 = ptrtoint ptr %value4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp ne i32 %13, 0
  %spec.select = zext i1 %tobool.not to i8
  %arrayidx10 = getelementptr [128 x i32], ptr %value4, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not = icmp eq i32 %15, 0
  %16 = or i8 %spec.select, 2
  %value.1 = select i1 %tobool11.not, i8 %spec.select, i8 %16
  %conv17 = zext i8 %value.1 to i32
  %shl18 = shl nuw nsw i32 %conv17, %3
  %17 = trunc i32 %shl18 to i8
  %conv22 = or i8 %conv3, %17
  %18 = ptrtoint ptr %output_mute to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv22, ptr %output_mute, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %conv22, i8 %9)
  %cmp26.not = icmp eq i8 %conv22, %9
  br i1 %cmp26.not, label %if.end.if.end29_crit_edge, label %if.then28

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then28:                                        ; preds = %if.end
  %chip.i = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip.i, align 4
  %comm.i = getelementptr inbounds %struct.sfire_chip, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %comm.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %comm.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then28.if.end29_crit_edge, label %if.then.i

if.then28.if.end29_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %write8.i = getelementptr inbounds %struct.comm_runtime, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write8.i, align 4
  %neg.i = xor i8 %conv22, -1
  %call.i = tail call i32 %24(ptr noundef nonnull %22, i8 noundef zeroext 18, i8 noundef zeroext 14, i8 noundef zeroext %neg.i) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then.i, %if.then28.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %25 = ptrtoint ptr %output_mute to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %output_mute, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %9)
  %cmp33 = icmp ne i8 %26, %9
  %conv34 = zext i1 %cmp33 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %conv34, %if.end29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb6fire_control_line_phono_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @line_phono_texts) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usb6fire_control_line_phono_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %line_phono_switch = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %line_phono_switch to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %line_phono_switch, align 1, !range !86
  %4 = zext i8 %3 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb6fire_control_line_phono_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %line_phono_switch = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %line_phono_switch to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %line_phono_switch, align 1, !range !86
  %4 = zext i8 %3 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp.not = icmp eq i32 %6, %4
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4 = icmp ne i32 %6, 0
  %frombool = zext i1 %tobool4 to i8
  %7 = ptrtoint ptr %line_phono_switch to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %line_phono_switch, align 1
  %chip.i = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip.i, align 4
  %comm.i = getelementptr inbounds %struct.sfire_chip, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %comm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %comm.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %write8.i = getelementptr inbounds %struct.comm_runtime, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write8.i, align 4
  %call.i = tail call i32 %13(ptr noundef nonnull %11, i8 noundef zeroext 34, i8 noundef zeroext 2, i8 noundef zeroext %frombool) #8
  %14 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write8.i, align 4
  %16 = ptrtoint ptr %line_phono_switch to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %line_phono_switch, align 1, !range !86
  %call6.i = tail call i32 %15(ptr noundef nonnull %11, i8 noundef zeroext 33, i8 noundef zeroext 2, i8 noundef zeroext %17) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %changed.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.then.if.end_crit_edge ], [ 1, %if.then.i ]
  ret i32 %changed.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb6fire_control_opt_coax_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @opt_coax_texts) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usb6fire_control_opt_coax_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %opt_coax_switch = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %opt_coax_switch to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %opt_coax_switch, align 4, !range !86
  %4 = zext i8 %3 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb6fire_control_opt_coax_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %opt_coax_switch = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %opt_coax_switch to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %opt_coax_switch, align 4, !range !86
  %4 = zext i8 %3 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp.not = icmp eq i32 %6, %4
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4 = icmp ne i32 %6, 0
  %frombool = zext i1 %tobool4 to i8
  %7 = ptrtoint ptr %opt_coax_switch to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %opt_coax_switch, align 4
  %chip.i = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip.i, align 4
  %comm.i = getelementptr inbounds %struct.sfire_chip, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %comm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %comm.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %write8.i = getelementptr inbounds %struct.comm_runtime, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write8.i, align 4
  %call.i = tail call i32 %13(ptr noundef nonnull %11, i8 noundef zeroext 34, i8 noundef zeroext 0, i8 noundef zeroext %frombool) #8
  %14 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write8.i, align 4
  %16 = ptrtoint ptr %opt_coax_switch to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %opt_coax_switch, align 4, !range !86
  %call6.i = tail call i32 %15(ptr noundef nonnull %11, i8 noundef zeroext 33, i8 noundef zeroext 0, i8 noundef zeroext %17) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %changed.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.then.if.end_crit_edge ], [ 1, %if.then.i ]
  ret i32 %changed.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usb6fire_control_digital_thru_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %digital_thru_switch = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %digital_thru_switch to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %digital_thru_switch, align 2, !range !86
  %4 = zext i8 %3 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb6fire_control_digital_thru_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %digital_thru_switch = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %digital_thru_switch to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %digital_thru_switch, align 2, !range !86
  %4 = zext i8 %3 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp.not = icmp eq i32 %6, %4
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4 = icmp ne i32 %6, 0
  %frombool = zext i1 %tobool4 to i8
  %7 = ptrtoint ptr %digital_thru_switch to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %digital_thru_switch, align 2
  %chip.i = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip.i, align 4
  %comm.i = getelementptr inbounds %struct.sfire_chip, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %comm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %comm.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %usb_streaming.i = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %usb_streaming.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %usb_streaming.i, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i = icmp ne i8 %13, 0
  %tobool2.not.i = xor i1 %tobool4, true
  %or.cond = select i1 %tobool1.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  %call.i.i = tail call i32 @usb_set_interface(ptr noundef %15, i32 noundef 1, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %if.then3.i.if.end.i_crit_edge, label %if.end5.i.i

if.then3.i.if.end.i_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end5.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %write16.i.i = getelementptr inbounds %struct.comm_runtime, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write16.i.i, align 4
  %call9.i.i = tail call i32 %17(ptr noundef nonnull %11, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 16) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end5.i.i, %if.then3.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %write16.i = getelementptr inbounds %struct.comm_runtime, ptr %11, i32 0, i32 6
  %18 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write16.i, align 4
  %20 = ptrtoint ptr %usb_streaming.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %usb_streaming.i, align 1, !range !86
  %22 = ptrtoint ptr %digital_thru_switch to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %digital_thru_switch, align 2, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool7.not.i = icmp eq i8 %23, 0
  %cond8.i = select i1 %tobool7.not.i, i8 0, i8 8
  %or.i = or i8 %cond8.i, %21
  %call9.i = tail call i32 %19(ptr noundef nonnull %11, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %or.i) #8
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %changed.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.then.if.end_crit_edge ], [ 1, %if.end.i ]
  ret i32 %changed.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @usb6fire_control_input_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 30, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usb6fire_control_input_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %input_vol = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %input_vol to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %input_vol, align 4
  %conv = sext i8 %3 to i32
  %add = add nsw i32 %conv, 15
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %value, align 8
  %arrayidx3 = getelementptr %struct.control_runtime, ptr %1, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %6 to i32
  %add5 = add nsw i32 %conv4, 15
  %arrayidx7 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add5, ptr %arrayidx7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb6fire_control_input_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %input_vol = getelementptr %struct.control_runtime, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %input_vol to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %input_vol, align 4
  %conv = sext i8 %3 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp eq i32 %5, %conv
  br i1 %cmp.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %arrayidx11 = getelementptr %struct.control_runtime, ptr %1, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %7 to i32
  %arrayidx14 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv12)
  %cmp15.not = icmp eq i32 %9, %conv12
  br i1 %cmp15.not, label %if.end.if.end30_crit_edge, label %if.end.if.end28.thread_crit_edge

if.end.if.end28.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.thread

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end.thread:                                    ; preds = %entry
  %10 = trunc i32 %5 to i8
  %conv5 = add i8 %10, -15
  %11 = ptrtoint ptr %input_vol to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv5, ptr %input_vol, align 4
  %ivol_updated = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %ivol_updated to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ivol_updated, align 2
  %14 = and i8 %13, -2
  store i8 %14, ptr %ivol_updated, align 2
  %arrayidx1146 = getelementptr %struct.control_runtime, ptr %1, i32 0, i32 12, i32 1
  %15 = ptrtoint ptr %arrayidx1146 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx1146, align 1
  %conv1247 = sext i8 %16 to i32
  %arrayidx1448 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx1448 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx1448, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv1247)
  %cmp15.not49 = icmp eq i32 %18, %conv1247
  br i1 %cmp15.not49, label %if.end.thread.if.then29_crit_edge, label %if.end.thread.if.end28.thread_crit_edge

if.end.thread.if.end28.thread_crit_edge:          ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.thread

if.end.thread.if.then29_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.end28.thread:                                  ; preds = %if.end.thread.if.end28.thread_crit_edge, %if.end.if.end28.thread_crit_edge
  %19 = phi i32 [ %18, %if.end.thread.if.end28.thread_crit_edge ], [ %9, %if.end.if.end28.thread_crit_edge ]
  %arrayidx1150 = phi ptr [ %arrayidx1146, %if.end.thread.if.end28.thread_crit_edge ], [ %arrayidx11, %if.end.if.end28.thread_crit_edge ]
  %20 = trunc i32 %19 to i8
  %conv21 = add i8 %20, -15
  %21 = ptrtoint ptr %arrayidx1150 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv21, ptr %arrayidx1150, align 1
  %ivol_updated24 = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 13
  %22 = ptrtoint ptr %ivol_updated24 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ivol_updated24, align 2
  %24 = and i8 %23, -3
  store i8 %24, ptr %ivol_updated24, align 2
  br label %if.then29

if.then29:                                        ; preds = %if.end28.thread, %if.end.thread.if.then29_crit_edge
  %arrayidx1151 = phi ptr [ %arrayidx1150, %if.end28.thread ], [ %arrayidx1146, %if.end.thread.if.then29_crit_edge ]
  %chip.i = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip.i, align 4
  %comm.i = getelementptr inbounds %struct.sfire_chip, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %comm.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %comm.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.then29.if.end30_crit_edge, label %for.cond.preheader.i

if.then29.if.end30_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

for.cond.preheader.i:                             ; preds = %if.then29
  %ivol_updated.i = getelementptr inbounds %struct.control_runtime, ptr %1, i32 0, i32 13
  %write8.i = getelementptr inbounds %struct.comm_runtime, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %ivol_updated.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ivol_updated.i, align 2
  %31 = and i8 %30, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool1.not.i = icmp eq i8 %31, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %for.cond.preheader.i.for.inc.i_crit_edge

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then2.i:                                       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write8.i, align 4
  %34 = ptrtoint ptr %input_vol to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %input_vol, align 1
  %36 = and i8 %35, 63
  %call.i = tail call i32 %33(ptr noundef nonnull %28, i8 noundef zeroext 18, i8 noundef zeroext 28, i8 noundef zeroext %36) #8
  %37 = ptrtoint ptr %ivol_updated.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ivol_updated.i, align 2
  %conv10.i = or i8 %38, 1
  store i8 %conv10.i, ptr %ivol_updated.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then2.i, %for.cond.preheader.i.for.inc.i_crit_edge
  %39 = ptrtoint ptr %ivol_updated.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ivol_updated.i, align 2
  %41 = and i8 %40, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool1.not.1.i = icmp eq i8 %41, 0
  br i1 %tobool1.not.1.i, label %if.then2.1.i, label %for.inc.i.if.end30_crit_edge

for.inc.i.if.end30_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then2.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write8.i, align 4
  %44 = ptrtoint ptr %arrayidx1151 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx1151, align 1
  %46 = and i8 %45, 63
  %call.1.i = tail call i32 %43(ptr noundef nonnull %28, i8 noundef zeroext 18, i8 noundef zeroext 29, i8 noundef zeroext %46) #8
  %47 = ptrtoint ptr %ivol_updated.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ivol_updated.i, align 2
  %conv10.1.i = or i8 %48, 2
  store i8 %conv10.1.i, ptr %ivol_updated.i, align 2
  br label %if.end30

if.end30:                                         ; preds = %if.then2.1.i, %for.inc.i.if.end30_crit_edge, %if.then29.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %changed.145 = phi i32 [ 1, %if.then29.if.end30_crit_edge ], [ 1, %for.inc.i.if.end30_crit_edge ], [ 1, %if.then2.1.i ], [ 0, %if.end.if.end30_crit_edge ]
  ret i32 %changed.145
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !45, !47, !48, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/usb/6fire/control.c", i32 581, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/usb/6fire/control.c", i32 583, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @usb6fire_control_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @usb6fire_control_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/usb/6fire/control.c", i32 588, i32 3}
!12 = !{ptr @usb6fire_control_init._entry.7, !13, !"_entry", i1 false, i1 false}
!13 = !{!"../sound/usb/6fire/control.c", i32 590, i32 3}
!14 = !{ptr @usb6fire_control_init._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @usb6fire_control_init._entry.9, !16, !"_entry", i1 false, i1 false}
!16 = !{!"../sound/usb/6fire/control.c", i32 600, i32 4}
!17 = !{ptr @usb6fire_control_init._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @rates_altsetting, !19, !"rates_altsetting", i1 false, i1 false}
!19 = !{!"../sound/usb/6fire/control.c", i32 48, i32 18}
!20 = !{ptr @rates_6fire_vl, !21, !"rates_6fire_vl", i1 false, i1 false}
!21 = !{!"../sound/usb/6fire/control.c", i32 50, i32 18}
!22 = !{ptr @rates_6fire_vh, !23, !"rates_6fire_vh", i1 false, i1 false}
!23 = !{!"../sound/usb/6fire/control.c", i32 51, i32 18}
!24 = !{ptr @init_data, !25, !"init_data", i1 false, i1 false}
!25 = !{!"../sound/usb/6fire/control.c", i32 36, i32 1}
!26 = !{ptr @tlv_output, !27, !"tlv_output", i1 false, i1 false}
!27 = !{!"../sound/usb/6fire/control.c", i32 53, i32 8}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/usb/6fire/control.c", i32 403, i32 11}
!30 = !{ptr @vol_elements, !31, !"vol_elements", i1 false, i1 false}
!31 = !{!"../sound/usb/6fire/control.c", i32 400, i32 38}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/usb/6fire/control.c", i32 222, i32 3}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @usb6fire_control_output_vol_get._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @usb6fire_control_output_vol_get._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/usb/6fire/control.c", i32 193, i32 3}
!39 = !{ptr @usb6fire_control_output_vol_put._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @usb6fire_control_output_vol_put._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/usb/6fire/control.c", i32 443, i32 11}
!43 = !{ptr @mute_elements, !44, !"mute_elements", i1 false, i1 false}
!44 = !{!"../sound/usb/6fire/control.c", i32 440, i32 38}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/usb/6fire/control.c", i32 267, i32 3}
!47 = !{ptr @usb6fire_control_output_mute_get._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @usb6fire_control_output_mute_get._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/usb/6fire/control.c", i32 241, i32 3}
!51 = !{ptr @usb6fire_control_output_mute_put._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @usb6fire_control_output_mute_put._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/usb/6fire/control.c", i32 477, i32 11}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/usb/6fire/control.c", i32 486, i32 11}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/usb/6fire/control.c", i32 495, i32 11}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/usb/6fire/control.c", i32 504, i32 11}
!61 = !{ptr @elements, !62, !"elements", i1 false, i1 false}
!62 = !{!"../sound/usb/6fire/control.c", i32 474, i32 38}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/usb/6fire/control.c", i32 25, i32 51}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/usb/6fire/control.c", i32 25, i32 59}
!67 = !{ptr @line_phono_texts, !68, !"line_phono_texts", i1 false, i1 false}
!68 = !{!"../sound/usb/6fire/control.c", i32 25, i32 27}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/usb/6fire/control.c", i32 24, i32 49}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/usb/6fire/control.c", i32 24, i32 60}
!73 = !{ptr @opt_coax_texts, !74, !"opt_coax_texts", i1 false, i1 false}
!74 = !{!"../sound/usb/6fire/control.c", i32 24, i32 27}
!75 = !{ptr @tlv_input, !76, !"tlv_input", i1 false, i1 false}
!76 = !{!"../sound/usb/6fire/control.c", i32 54, i32 8}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i8 0, i8 2}
