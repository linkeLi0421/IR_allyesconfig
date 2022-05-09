; ModuleID = '/llk/IR_all_yes/sound/usb/mixer_s1810c.c_pt.bc'
source_filename = "../sound/usb/mixer_s1810c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.79, i32 }
%union.anon.79 = type { ptr }
%struct.s1810c_ctl_packet = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.s1810_mixer_state = type { i16, %struct.mutex, %struct.mutex }
%struct.usb_mixer_interface = type { ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, ptr, ptr, i32, %struct.wait_queue_head, ptr, ptr, [6 x i8], ptr, i8, ptr, ptr, ptr }
%struct.usb_mixer_elem_info = type { %struct.usb_mixer_elem_list, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i8, i8, ptr }
%struct.usb_mixer_elem_list = type { ptr, ptr, ptr, i32, i8, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.78, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.78 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.73, [128 x i8] }
%union.anon.73 = type { %union.anon.75 }
%union.anon.75 = type { [64 x i64] }
%struct.s1810c_state_packet = type { [63 x i32] }

@snd_sc1810_init_mixer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 555, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Presonus Studio 1810c, device_setup: %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_sc1810_init_mixer\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/usb/mixer_s1810c.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_sc1810_init_mixer._entry_ptr = internal global ptr @snd_sc1810_init_mixer._entry, section ".printk_index", align 4
@snd_sc1810_init_mixer._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 557, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(8out/18in @ 48kHz)\0A\00", [43 x i8] zeroinitializer }, align 32
@snd_sc1810_init_mixer._entry_ptr.7 = internal global ptr @snd_sc1810_init_mixer._entry.5, section ".printk_index", align 4
@snd_sc1810_init_mixer._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 559, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(6out/8in @ 192kHz)\0A\00", [43 x i8] zeroinitializer }, align 32
@snd_sc1810_init_mixer._entry_ptr.10 = internal global ptr @snd_sc1810_init_mixer._entry.8, section ".printk_index", align 4
@snd_sc1810_init_mixer._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 561, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(8out/14in @ 96kHz)\0A\00", [43 x i8] zeroinitializer }, align 32
@snd_sc1810_init_mixer._entry_ptr.13 = internal global ptr @snd_sc1810_init_mixer._entry.11, section ".printk_index", align 4
@snd_sc1810_init_mixer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&private->usb_mutex\00", [44 x i8] zeroinitializer }, align 32
@snd_sc1810_init_mixer.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&private->data_mutex\00", [43 x i8] zeroinitializer }, align 32
@snd_s1810c_line_sw = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_s1810c_line_sw_info, ptr @snd_s1810c_switch_get, ptr @snd_s1810c_switch_set, %union.anon.79 zeroinitializer, i32 59 }, [48 x i8] zeroinitializer }, align 32
@snd_s1810c_mute_sw = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_s1810c_switch_get, ptr @snd_s1810c_switch_set, %union.anon.79 zeroinitializer, i32 316 }, [48 x i8] zeroinitializer }, align 32
@snd_s1810c_48v_sw = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_s1810c_switch_get, ptr @snd_s1810c_switch_set, %union.anon.79 zeroinitializer, i32 1082 }, [48 x i8] zeroinitializer }, align 32
@snd_s1810c_ab_sw = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 0, i32 0, ptr @snd_s1810c_ab_sw_info, ptr @snd_s1810c_switch_get, ptr @snd_s1810c_switch_set, %union.anon.79 zeroinitializer, i32 830 }, [48 x i8] zeroinitializer }, align 32
@snd_s1810c_send_ctl_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 159, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not send ctl packet\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snd_s1810c_send_ctl_packet\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@snd_s1810c_send_ctl_packet._entry_ptr = internal global ptr @snd_s1810c_send_ctl_packet._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Line 1/2 Source Type\00", [43 x i8] zeroinitializer }, align 32
@snd_s1810c_line_sw_info.texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.21, ptr @.str.22], [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Preamp On (Mic/Inst)\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Preamp Off (Line in)\00", [43 x i8] zeroinitializer }, align 32
@snd_sc1810c_get_status_field._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 189, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not send state packet (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snd_sc1810c_get_status_field\00", [35 x i8] zeroinitializer }, align 32
@snd_sc1810c_get_status_field._entry_ptr = internal global ptr @snd_sc1810c_get_status_field._entry, section ".printk_index", align 4
@snd_sc1810c_get_status_field._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 199, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not get state field %u (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@snd_sc1810c_get_status_field._entry_ptr.27 = internal global ptr @snd_sc1810c_get_status_field._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Mute Main Out Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"48V Phantom Power On Mic Inputs Switch\00", [57 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Headphone 1 Source Route\00", [39 x i8] zeroinitializer }, align 32
@snd_s1810c_ab_sw_info.texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.31, ptr @.str.32], [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1/2\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3/4\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 554, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 557, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 559, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 561, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 571, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 572, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [19 x i8] c"snd_s1810c_line_sw\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 487, i32 38 }
@___asan_gen_.84 = private unnamed_addr constant [19 x i8] c"snd_s1810c_mute_sw\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 496, i32 38 }
@___asan_gen_.87 = private unnamed_addr constant [18 x i8] c"snd_s1810c_48v_sw\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 505, i32 38 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"snd_s1810c_ab_sw\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 526, i32 38 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 159, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 489, i32 10 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 479, i32 27 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 480, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 481, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 189, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 198, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 498, i32 10 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 507, i32 10 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 528, i32 10 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 518, i32 27 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 519, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [28 x i8] c"../sound/usb/mixer_s1810c.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 520, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @snd_s1810c_send_ctl_packet._entry, ptr @snd_s1810c_send_ctl_packet._entry_ptr, ptr @snd_sc1810_init_mixer._entry, ptr @snd_sc1810_init_mixer._entry.11, ptr @snd_sc1810_init_mixer._entry.5, ptr @snd_sc1810_init_mixer._entry.8, ptr @snd_sc1810_init_mixer._entry_ptr, ptr @snd_sc1810_init_mixer._entry_ptr.10, ptr @snd_sc1810_init_mixer._entry_ptr.13, ptr @snd_sc1810_init_mixer._entry_ptr.7, ptr @snd_sc1810c_get_status_field._entry, ptr @snd_sc1810c_get_status_field._entry.25, ptr @snd_sc1810c_get_status_field._entry_ptr, ptr @snd_sc1810c_get_status_field._entry_ptr.27, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @snd_sc1810_init_mixer.__key, ptr @.str.14, ptr @snd_sc1810_init_mixer.__key.15, ptr @.str.16, ptr @snd_s1810c_line_sw, ptr @snd_s1810c_mute_sw, ptr @snd_s1810c_48v_sw, ptr @snd_s1810c_ab_sw, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @snd_s1810c_line_sw_info.texts, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @snd_s1810c_ab_sw_info.texts, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sc1810_init_mixer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sc1810_init_mixer._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sc1810_init_mixer._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sc1810_init_mixer._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sc1810_init_mixer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sc1810_init_mixer.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_s1810c_line_sw to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_s1810c_mute_sw to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_s1810c_48v_sw to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_s1810c_ab_sw to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_s1810c_send_ctl_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_s1810c_line_sw_info.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sc1810c_get_status_field._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sc1810c_get_status_field._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_s1810c_ab_sw_info.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sc1810_init_mixer(ptr noundef %mixer) local_unnamed_addr #0 align 64 {
entry:
  %pkt.i374.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i359.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i344.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i329.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i314.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i299.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i283.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i267.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i250.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i234.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i218.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i201.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i186.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i171.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i156.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i141.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i126.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i111.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i96.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i81.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i66.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i51.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i36.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i21.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i4.i = alloca %struct.s1810c_ctl_packet, align 4
  %pkt.i.i = alloca %struct.s1810c_ctl_packet, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mixer, align 4
  %dev2 = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %mixer_list = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %mixer_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mixer_list, align 4
  %cmp.i.not = icmp eq ptr %5, %mixer_list
  br i1 %cmp.i.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %setup = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %setup, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str, i32 noundef %7) #9
  %8 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %setup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %switch.selectcmp = icmp eq i32 %9, 2
  %switch.select = select i1 %switch.selectcmp, ptr @.str.9, ptr @.str.12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %switch.selectcmp103 = icmp eq i32 %9, 1
  %switch.select104 = select i1 %switch.selectcmp103, ptr @.str.6, ptr %switch.select
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull %switch.select104) #9
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  %fixed1.i.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i.i, i32 0, i32 2
  %fixed2.i.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i.i, i32 0, i32 3
  %b2.i.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i.i, i32 0, i32 1
  %c3.i.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i.i, i32 0, i32 4
  %d4.i.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i.i, i32 0, i32 5
  %e5.i.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i.i, i32 0, i32 6
  %dev8.i.i = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %fixed1.i5.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i4.i, i32 0, i32 2
  %fixed2.i6.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i4.i, i32 0, i32 3
  %b2.i7.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i4.i, i32 0, i32 1
  %c3.i8.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i4.i, i32 0, i32 4
  %d4.i9.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i4.i, i32 0, i32 5
  %e5.i12.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i4.i, i32 0, i32 6
  %fixed1.i22.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i21.i, i32 0, i32 2
  %fixed2.i23.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i21.i, i32 0, i32 3
  %b2.i24.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i21.i, i32 0, i32 1
  %c3.i25.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i21.i, i32 0, i32 4
  %d4.i26.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i21.i, i32 0, i32 5
  %e5.i27.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i21.i, i32 0, i32 6
  %fixed1.i37.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i36.i, i32 0, i32 2
  %fixed2.i38.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i36.i, i32 0, i32 3
  %b2.i39.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i36.i, i32 0, i32 1
  %c3.i40.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i36.i, i32 0, i32 4
  %d4.i41.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i36.i, i32 0, i32 5
  %e5.i42.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i36.i, i32 0, i32 6
  br label %for.cond5.preheader.preheader.i

for.cond17.preheader.i:                           ; preds = %for.end13.i
  %fixed1.i52.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i51.i, i32 0, i32 2
  %fixed2.i53.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i51.i, i32 0, i32 3
  %b2.i54.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i51.i, i32 0, i32 1
  %c3.i55.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i51.i, i32 0, i32 4
  %d4.i56.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i51.i, i32 0, i32 5
  %e5.i57.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i51.i, i32 0, i32 6
  %fixed1.i67.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i66.i, i32 0, i32 2
  %fixed2.i68.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i66.i, i32 0, i32 3
  %b2.i69.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i66.i, i32 0, i32 1
  %c3.i70.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i66.i, i32 0, i32 4
  %d4.i71.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i66.i, i32 0, i32 5
  %e5.i72.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i66.i, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i51.i) #6
  %12 = ptrtoint ptr %fixed1.i52.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1348563561, ptr %fixed1.i52.i, align 4
  %13 = ptrtoint ptr %fixed2.i53.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 20, ptr %fixed2.i53.i, align 4
  %14 = ptrtoint ptr %pkt.i51.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 101, ptr %pkt.i51.i, align 4
  %15 = ptrtoint ptr %b2.i54.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %b2.i54.i, align 4
  %16 = ptrtoint ptr %c3.i55.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %c3.i55.i, align 4
  %17 = ptrtoint ptr %d4.i56.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %d4.i56.i, align 4
  %18 = ptrtoint ptr %e5.i57.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16777216, ptr %e5.i57.i, align 4
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %11, align 8
  %shl.i.i58.i = shl i32 %20, 8
  %or.i59.i = or i32 %shl.i.i58.i, -2147483648
  %call6.i60.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i59.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i51.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i60.i)
  %cmp7.i61.i = icmp slt i32 %call6.i60.i, 0
  br i1 %cmp7.i61.i, label %do.end.i63.i, label %for.cond17.preheader.i.snd_s1810c_send_ctl_packet.exit65.i_crit_edge

for.cond17.preheader.i.snd_s1810c_send_ctl_packet.exit65.i_crit_edge: ; preds = %for.cond17.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit65.i

for.cond5.preheader.preheader.i:                  ; preds = %for.end13.i.for.cond5.preheader.preheader.i_crit_edge, %do.end
  %indvars.iv.i = phi i32 [ 18, %do.end ], [ %indvars.iv.next.i, %for.end13.i.for.cond5.preheader.preheader.i_crit_edge ]
  %n.0393.i = phi i32 [ 0, %do.end ], [ %inc15.i, %for.end13.i.for.cond5.preheader.preheader.i_crit_edge ]
  %e.0392.i = phi i32 [ 188, %do.end ], [ 11877360, %for.end13.i.for.cond5.preheader.preheader.i_crit_edge ]
  %mul.i = mul nuw nsw i32 %n.0393.i, 18
  br label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %snd_s1810c_send_ctl_packet.exit50.i.for.cond5.preheader.i_crit_edge, %for.cond5.preheader.preheader.i
  %b.0391.i = phi i32 [ %inc12.i, %snd_s1810c_send_ctl_packet.exit50.i.for.cond5.preheader.i_crit_edge ], [ %mul.i, %for.cond5.preheader.preheader.i ]
  br label %for.body7.i

for.body7.i:                                      ; preds = %snd_s1810c_send_ctl_packet.exit20.i.for.body7.i_crit_edge, %for.cond5.preheader.i
  %c.0389.i = phi i32 [ 0, %for.cond5.preheader.i ], [ %inc.i, %snd_s1810c_send_ctl_packet.exit20.i.for.body7.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i.i) #6
  %21 = ptrtoint ptr %fixed1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1348563561, ptr %fixed1.i.i, align 4
  %22 = ptrtoint ptr %fixed2.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 20, ptr %fixed2.i.i, align 4
  %23 = ptrtoint ptr %pkt.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 100, ptr %pkt.i.i, align 4
  %24 = ptrtoint ptr %b2.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %b.0391.i, ptr %b2.i.i, align 4
  %25 = ptrtoint ptr %c3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %c.0389.i, ptr %c3.i.i, align 4
  %26 = ptrtoint ptr %d4.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %d4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %c.0389.i)
  %cmp.i.i = icmp eq i32 %c.0389.i, 4
  %spec.select.i.i = select i1 %cmp.i.i, i32 0, i32 %e.0392.i
  %27 = ptrtoint ptr %e5.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.select.i.i, ptr %e5.i.i, align 4
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %11, align 8
  %shl.i.i.i = shl i32 %29, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call6.i.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp7.i.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp7.i.i, label %do.end.i.i, label %for.body7.i.snd_s1810c_send_ctl_packet.exit.i_crit_edge

for.body7.i.snd_s1810c_send_ctl_packet.exit.i_crit_edge: ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit.i

do.end.i.i:                                       ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit.i

snd_s1810c_send_ctl_packet.exit.i:                ; preds = %do.end.i.i, %for.body7.i.snd_s1810c_send_ctl_packet.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i4.i) #6
  %30 = ptrtoint ptr %fixed1.i5.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1348563561, ptr %fixed1.i5.i, align 4
  %31 = ptrtoint ptr %fixed2.i6.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 20, ptr %fixed2.i6.i, align 4
  %32 = ptrtoint ptr %pkt.i4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 100, ptr %pkt.i4.i, align 4
  %33 = ptrtoint ptr %b2.i7.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %b.0391.i, ptr %b2.i7.i, align 4
  %34 = ptrtoint ptr %c3.i8.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %c.0389.i, ptr %c3.i8.i, align 4
  %35 = ptrtoint ptr %d4.i9.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %d4.i9.i, align 4
  %36 = ptrtoint ptr %e5.i12.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.select.i.i, ptr %e5.i12.i, align 4
  %37 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %11, align 8
  %shl.i.i13.i = shl i32 %38, 8
  %or.i14.i = or i32 %shl.i.i13.i, -2147483648
  %call6.i15.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i14.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i4.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i15.i)
  %cmp7.i16.i = icmp slt i32 %call6.i15.i, 0
  br i1 %cmp7.i16.i, label %do.end.i18.i, label %snd_s1810c_send_ctl_packet.exit.i.snd_s1810c_send_ctl_packet.exit20.i_crit_edge

snd_s1810c_send_ctl_packet.exit.i.snd_s1810c_send_ctl_packet.exit20.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit20.i

do.end.i18.i:                                     ; preds = %snd_s1810c_send_ctl_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit20.i

snd_s1810c_send_ctl_packet.exit20.i:              ; preds = %do.end.i18.i, %snd_s1810c_send_ctl_packet.exit.i.snd_s1810c_send_ctl_packet.exit20.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i4.i) #6
  %inc.i = add nuw nsw i32 %c.0389.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i, label %for.end.i, label %snd_s1810c_send_ctl_packet.exit20.i.for.body7.i_crit_edge

snd_s1810c_send_ctl_packet.exit20.i.for.body7.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.i

for.end.i:                                        ; preds = %snd_s1810c_send_ctl_packet.exit20.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i21.i) #6
  %39 = ptrtoint ptr %fixed1.i22.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1348563561, ptr %fixed1.i22.i, align 4
  %40 = ptrtoint ptr %fixed2.i23.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 20, ptr %fixed2.i23.i, align 4
  %41 = ptrtoint ptr %pkt.i21.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 100, ptr %pkt.i21.i, align 4
  %42 = ptrtoint ptr %b2.i24.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %b.0391.i, ptr %b2.i24.i, align 4
  %43 = ptrtoint ptr %c3.i25.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %c3.i25.i, align 4
  %44 = ptrtoint ptr %d4.i26.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %d4.i26.i, align 4
  %45 = ptrtoint ptr %e5.i27.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %e.0392.i, ptr %e5.i27.i, align 4
  %46 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %11, align 8
  %shl.i.i28.i = shl i32 %47, 8
  %or.i29.i = or i32 %shl.i.i28.i, -2147483648
  %call6.i30.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i29.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i21.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i30.i)
  %cmp7.i31.i = icmp slt i32 %call6.i30.i, 0
  br i1 %cmp7.i31.i, label %do.end.i33.i, label %for.end.i.snd_s1810c_send_ctl_packet.exit35.i_crit_edge

for.end.i.snd_s1810c_send_ctl_packet.exit35.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit35.i

do.end.i33.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit35.i

snd_s1810c_send_ctl_packet.exit35.i:              ; preds = %do.end.i33.i, %for.end.i.snd_s1810c_send_ctl_packet.exit35.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i21.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i36.i) #6
  %48 = ptrtoint ptr %fixed1.i37.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1348563561, ptr %fixed1.i37.i, align 4
  %49 = ptrtoint ptr %fixed2.i38.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 20, ptr %fixed2.i38.i, align 4
  %50 = ptrtoint ptr %pkt.i36.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 100, ptr %pkt.i36.i, align 4
  %51 = ptrtoint ptr %b2.i39.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %b.0391.i, ptr %b2.i39.i, align 4
  %52 = ptrtoint ptr %c3.i40.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %c3.i40.i, align 4
  %53 = ptrtoint ptr %d4.i41.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %d4.i41.i, align 4
  %54 = ptrtoint ptr %e5.i42.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %e.0392.i, ptr %e5.i42.i, align 4
  %55 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %11, align 8
  %shl.i.i43.i = shl i32 %56, 8
  %or.i44.i = or i32 %shl.i.i43.i, -2147483648
  %call6.i45.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i44.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i36.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i45.i)
  %cmp7.i46.i = icmp slt i32 %call6.i45.i, 0
  br i1 %cmp7.i46.i, label %do.end.i48.i, label %snd_s1810c_send_ctl_packet.exit35.i.snd_s1810c_send_ctl_packet.exit50.i_crit_edge

snd_s1810c_send_ctl_packet.exit35.i.snd_s1810c_send_ctl_packet.exit50.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit50.i

do.end.i48.i:                                     ; preds = %snd_s1810c_send_ctl_packet.exit35.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit50.i

snd_s1810c_send_ctl_packet.exit50.i:              ; preds = %do.end.i48.i, %snd_s1810c_send_ctl_packet.exit35.i.snd_s1810c_send_ctl_packet.exit50.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i36.i) #6
  %inc12.i = add nuw nsw i32 %b.0391.i, 1
  %exitcond410.not.i = icmp eq i32 %inc12.i, %indvars.iv.i
  br i1 %exitcond410.not.i, label %for.end13.i, label %snd_s1810c_send_ctl_packet.exit50.i.for.cond5.preheader.i_crit_edge

snd_s1810c_send_ctl_packet.exit50.i.for.cond5.preheader.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond5.preheader.i

for.end13.i:                                      ; preds = %snd_s1810c_send_ctl_packet.exit50.i
  %inc15.i = add nuw nsw i32 %n.0393.i, 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 18
  %exitcond411.not.i = icmp eq i32 %inc15.i, 2
  br i1 %exitcond411.not.i, label %for.cond17.preheader.i, label %for.end13.i.for.cond5.preheader.preheader.i_crit_edge

for.end13.i.for.cond5.preheader.preheader.i_crit_edge: ; preds = %for.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond5.preheader.preheader.i

do.end.i63.i:                                     ; preds = %for.cond17.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit65.i

snd_s1810c_send_ctl_packet.exit65.i:              ; preds = %do.end.i63.i, %for.cond17.preheader.i.snd_s1810c_send_ctl_packet.exit65.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i51.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i66.i) #6
  %57 = ptrtoint ptr %fixed1.i67.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1348563561, ptr %fixed1.i67.i, align 4
  %58 = ptrtoint ptr %fixed2.i68.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 20, ptr %fixed2.i68.i, align 4
  %59 = ptrtoint ptr %pkt.i66.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 101, ptr %pkt.i66.i, align 4
  %60 = ptrtoint ptr %b2.i69.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %b2.i69.i, align 4
  %61 = ptrtoint ptr %c3.i70.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %c3.i70.i, align 4
  %62 = ptrtoint ptr %d4.i71.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %d4.i71.i, align 4
  %63 = ptrtoint ptr %e5.i72.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 16777216, ptr %e5.i72.i, align 4
  %64 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %11, align 8
  %shl.i.i73.i = shl i32 %65, 8
  %or.i74.i = or i32 %shl.i.i73.i, -2147483648
  %call6.i75.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i74.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i66.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i75.i)
  %cmp7.i76.i = icmp slt i32 %call6.i75.i, 0
  br i1 %cmp7.i76.i, label %do.end.i78.i, label %snd_s1810c_send_ctl_packet.exit65.i.snd_s1810c_send_ctl_packet.exit80.i_crit_edge

snd_s1810c_send_ctl_packet.exit65.i.snd_s1810c_send_ctl_packet.exit80.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit80.i

do.end.i78.i:                                     ; preds = %snd_s1810c_send_ctl_packet.exit65.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit80.i

snd_s1810c_send_ctl_packet.exit80.i:              ; preds = %do.end.i78.i, %snd_s1810c_send_ctl_packet.exit65.i.snd_s1810c_send_ctl_packet.exit80.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i66.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i51.i) #6
  %66 = ptrtoint ptr %fixed1.i52.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1348563561, ptr %fixed1.i52.i, align 4
  %67 = ptrtoint ptr %fixed2.i53.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 20, ptr %fixed2.i53.i, align 4
  %68 = ptrtoint ptr %pkt.i51.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 101, ptr %pkt.i51.i, align 4
  %69 = ptrtoint ptr %b2.i54.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %b2.i54.i, align 4
  %70 = ptrtoint ptr %c3.i55.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %c3.i55.i, align 4
  %71 = ptrtoint ptr %d4.i56.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %d4.i56.i, align 4
  %72 = ptrtoint ptr %e5.i57.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 16777216, ptr %e5.i57.i, align 4
  %73 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %11, align 8
  %shl.i.i58.1.i = shl i32 %74, 8
  %or.i59.1.i = or i32 %shl.i.i58.1.i, -2147483648
  %call6.i60.1.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i59.1.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i51.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i60.1.i)
  %cmp7.i61.1.i = icmp slt i32 %call6.i60.1.i, 0
  br i1 %cmp7.i61.1.i, label %do.end.i63.1.i, label %snd_s1810c_send_ctl_packet.exit80.i.snd_s1810c_send_ctl_packet.exit65.1.i_crit_edge

snd_s1810c_send_ctl_packet.exit80.i.snd_s1810c_send_ctl_packet.exit65.1.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit65.1.i

do.end.i63.1.i:                                   ; preds = %snd_s1810c_send_ctl_packet.exit80.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit65.1.i

snd_s1810c_send_ctl_packet.exit65.1.i:            ; preds = %do.end.i63.1.i, %snd_s1810c_send_ctl_packet.exit80.i.snd_s1810c_send_ctl_packet.exit65.1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i51.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i66.i) #6
  %75 = ptrtoint ptr %fixed1.i67.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1348563561, ptr %fixed1.i67.i, align 4
  %76 = ptrtoint ptr %fixed2.i68.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 20, ptr %fixed2.i68.i, align 4
  %77 = ptrtoint ptr %pkt.i66.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 101, ptr %pkt.i66.i, align 4
  %78 = ptrtoint ptr %b2.i69.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 2, ptr %b2.i69.i, align 4
  %79 = ptrtoint ptr %c3.i70.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %c3.i70.i, align 4
  %80 = ptrtoint ptr %d4.i71.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %d4.i71.i, align 4
  %81 = ptrtoint ptr %e5.i72.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 16777216, ptr %e5.i72.i, align 4
  %82 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %11, align 8
  %shl.i.i73.1.i = shl i32 %83, 8
  %or.i74.1.i = or i32 %shl.i.i73.1.i, -2147483648
  %call6.i75.1.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i74.1.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i66.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i75.1.i)
  %cmp7.i76.1.i = icmp slt i32 %call6.i75.1.i, 0
  br i1 %cmp7.i76.1.i, label %do.end.i78.1.i, label %snd_s1810c_send_ctl_packet.exit65.1.i.snd_s1810c_send_ctl_packet.exit80.1.i_crit_edge

snd_s1810c_send_ctl_packet.exit65.1.i.snd_s1810c_send_ctl_packet.exit80.1.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit65.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit80.1.i

do.end.i78.1.i:                                   ; preds = %snd_s1810c_send_ctl_packet.exit65.1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit80.1.i

snd_s1810c_send_ctl_packet.exit80.1.i:            ; preds = %do.end.i78.1.i, %snd_s1810c_send_ctl_packet.exit65.1.i.snd_s1810c_send_ctl_packet.exit80.1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i66.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i81.i) #6
  %fixed1.i82.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i81.i, i32 0, i32 2
  %84 = ptrtoint ptr %fixed1.i82.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1348563561, ptr %fixed1.i82.i, align 4
  %fixed2.i83.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i81.i, i32 0, i32 3
  %85 = ptrtoint ptr %fixed2.i83.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 20, ptr %fixed2.i83.i, align 4
  %86 = ptrtoint ptr %pkt.i81.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 101, ptr %pkt.i81.i, align 4
  %b2.i84.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i81.i, i32 0, i32 1
  %87 = ptrtoint ptr %b2.i84.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %b2.i84.i, align 4
  %c3.i85.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i81.i, i32 0, i32 4
  %88 = ptrtoint ptr %c3.i85.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %c3.i85.i, align 4
  %d4.i86.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i81.i, i32 0, i32 5
  %89 = ptrtoint ptr %d4.i86.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %d4.i86.i, align 4
  %e5.i87.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i81.i, i32 0, i32 6
  %90 = ptrtoint ptr %e5.i87.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 16777216, ptr %e5.i87.i, align 4
  %91 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %11, align 8
  %shl.i.i88.i = shl i32 %92, 8
  %or.i89.i = or i32 %shl.i.i88.i, -2147483648
  %call6.i90.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i89.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i81.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i90.i)
  %cmp7.i91.i = icmp slt i32 %call6.i90.i, 0
  br i1 %cmp7.i91.i, label %do.end.i93.i, label %snd_s1810c_send_ctl_packet.exit80.1.i.snd_s1810c_send_ctl_packet.exit95.i_crit_edge

snd_s1810c_send_ctl_packet.exit80.1.i.snd_s1810c_send_ctl_packet.exit95.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit80.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit95.i

do.end.i93.i:                                     ; preds = %snd_s1810c_send_ctl_packet.exit80.1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit95.i

snd_s1810c_send_ctl_packet.exit95.i:              ; preds = %do.end.i93.i, %snd_s1810c_send_ctl_packet.exit80.1.i.snd_s1810c_send_ctl_packet.exit95.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i81.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i96.i) #6
  %fixed1.i97.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i96.i, i32 0, i32 2
  %93 = ptrtoint ptr %fixed1.i97.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1348563561, ptr %fixed1.i97.i, align 4
  %fixed2.i98.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i96.i, i32 0, i32 3
  %94 = ptrtoint ptr %fixed2.i98.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 20, ptr %fixed2.i98.i, align 4
  %95 = ptrtoint ptr %pkt.i96.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 101, ptr %pkt.i96.i, align 4
  %b2.i99.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i96.i, i32 0, i32 1
  %96 = ptrtoint ptr %b2.i99.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %b2.i99.i, align 4
  %c3.i100.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i96.i, i32 0, i32 4
  %97 = ptrtoint ptr %c3.i100.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %c3.i100.i, align 4
  %d4.i101.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i96.i, i32 0, i32 5
  %98 = ptrtoint ptr %d4.i101.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %d4.i101.i, align 4
  %e5.i102.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i96.i, i32 0, i32 6
  %99 = ptrtoint ptr %e5.i102.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 16777216, ptr %e5.i102.i, align 4
  %100 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %11, align 8
  %shl.i.i103.i = shl i32 %101, 8
  %or.i104.i = or i32 %shl.i.i103.i, -2147483648
  %call6.i105.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i104.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i96.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i105.i)
  %cmp7.i106.i = icmp slt i32 %call6.i105.i, 0
  br i1 %cmp7.i106.i, label %do.end.i108.i, label %snd_s1810c_send_ctl_packet.exit95.i.for.body34.preheader.i_crit_edge

snd_s1810c_send_ctl_packet.exit95.i.for.body34.preheader.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit95.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body34.preheader.i

do.end.i108.i:                                    ; preds = %snd_s1810c_send_ctl_packet.exit95.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %for.body34.preheader.i

for.body34.preheader.i:                           ; preds = %do.end.i108.i, %snd_s1810c_send_ctl_packet.exit95.i.for.body34.preheader.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i96.i) #6
  %fixed1.i112.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i111.i, i32 0, i32 2
  %fixed2.i113.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i111.i, i32 0, i32 3
  %b2.i114.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i111.i, i32 0, i32 1
  %c3.i115.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i111.i, i32 0, i32 4
  %d4.i116.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i111.i, i32 0, i32 5
  %e5.i117.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i111.i, i32 0, i32 6
  %fixed1.i127.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i126.i, i32 0, i32 2
  %fixed2.i128.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i126.i, i32 0, i32 3
  %b2.i129.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i126.i, i32 0, i32 1
  %c3.i130.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i126.i, i32 0, i32 4
  %d4.i131.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i126.i, i32 0, i32 5
  %e5.i132.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i126.i, i32 0, i32 6
  br label %for.body34.i

for.body34.i:                                     ; preds = %snd_s1810c_send_ctl_packet.exit140.i.for.body34.i_crit_edge, %for.body34.preheader.i
  %b.2396.i = phi i32 [ %inc38.i, %snd_s1810c_send_ctl_packet.exit140.i.for.body34.i_crit_edge ], [ 0, %for.body34.preheader.i ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i111.i) #6
  %102 = ptrtoint ptr %fixed1.i112.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1348563561, ptr %fixed1.i112.i, align 4
  %103 = ptrtoint ptr %fixed2.i113.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 20, ptr %fixed2.i113.i, align 4
  %104 = ptrtoint ptr %pkt.i111.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 100, ptr %pkt.i111.i, align 4
  %105 = ptrtoint ptr %b2.i114.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %b.2396.i, ptr %b2.i114.i, align 4
  %106 = ptrtoint ptr %c3.i115.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 3, ptr %c3.i115.i, align 4
  %107 = ptrtoint ptr %d4.i116.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %d4.i116.i, align 4
  %108 = ptrtoint ptr %e5.i117.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 188, ptr %e5.i117.i, align 4
  %109 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %11, align 8
  %shl.i.i118.i = shl i32 %110, 8
  %or.i119.i = or i32 %shl.i.i118.i, -2147483648
  %call6.i120.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i119.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i111.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i120.i)
  %cmp7.i121.i = icmp slt i32 %call6.i120.i, 0
  br i1 %cmp7.i121.i, label %do.end.i123.i, label %for.body34.i.snd_s1810c_send_ctl_packet.exit125.i_crit_edge

for.body34.i.snd_s1810c_send_ctl_packet.exit125.i_crit_edge: ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit125.i

do.end.i123.i:                                    ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit125.i

snd_s1810c_send_ctl_packet.exit125.i:             ; preds = %do.end.i123.i, %for.body34.i.snd_s1810c_send_ctl_packet.exit125.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i111.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i126.i) #6
  %111 = ptrtoint ptr %fixed1.i127.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1348563561, ptr %fixed1.i127.i, align 4
  %112 = ptrtoint ptr %fixed2.i128.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 20, ptr %fixed2.i128.i, align 4
  %113 = ptrtoint ptr %pkt.i126.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 100, ptr %pkt.i126.i, align 4
  %114 = ptrtoint ptr %b2.i129.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %b.2396.i, ptr %b2.i129.i, align 4
  %115 = ptrtoint ptr %c3.i130.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 3, ptr %c3.i130.i, align 4
  %116 = ptrtoint ptr %d4.i131.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %d4.i131.i, align 4
  %117 = ptrtoint ptr %e5.i132.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 188, ptr %e5.i132.i, align 4
  %118 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %11, align 8
  %shl.i.i133.i = shl i32 %119, 8
  %or.i134.i = or i32 %shl.i.i133.i, -2147483648
  %call6.i135.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i134.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i126.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i135.i)
  %cmp7.i136.i = icmp slt i32 %call6.i135.i, 0
  br i1 %cmp7.i136.i, label %do.end.i138.i, label %snd_s1810c_send_ctl_packet.exit125.i.snd_s1810c_send_ctl_packet.exit140.i_crit_edge

snd_s1810c_send_ctl_packet.exit125.i.snd_s1810c_send_ctl_packet.exit140.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit125.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit140.i

do.end.i138.i:                                    ; preds = %snd_s1810c_send_ctl_packet.exit125.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit140.i

snd_s1810c_send_ctl_packet.exit140.i:             ; preds = %do.end.i138.i, %snd_s1810c_send_ctl_packet.exit125.i.snd_s1810c_send_ctl_packet.exit140.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i126.i) #6
  %inc38.i = add nuw nsw i32 %b.2396.i, 1
  %exitcond415.not.i = icmp eq i32 %inc38.i, 18
  br i1 %exitcond415.not.i, label %snd_s1810c_send_ctl_packet.exit140.i.for.body34.1.i_crit_edge, label %snd_s1810c_send_ctl_packet.exit140.i.for.body34.i_crit_edge

snd_s1810c_send_ctl_packet.exit140.i.for.body34.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit140.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body34.i

snd_s1810c_send_ctl_packet.exit140.i.for.body34.1.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit140.i
  br label %for.body34.1.i

for.body34.1.i:                                   ; preds = %snd_s1810c_send_ctl_packet.exit140.1.i.for.body34.1.i_crit_edge, %snd_s1810c_send_ctl_packet.exit140.i.for.body34.1.i_crit_edge
  %b.2396.1.i = phi i32 [ %inc38.1.i, %snd_s1810c_send_ctl_packet.exit140.1.i.for.body34.1.i_crit_edge ], [ 18, %snd_s1810c_send_ctl_packet.exit140.i.for.body34.1.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i111.i) #6
  %120 = ptrtoint ptr %fixed1.i112.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1348563561, ptr %fixed1.i112.i, align 4
  %121 = ptrtoint ptr %fixed2.i113.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 20, ptr %fixed2.i113.i, align 4
  %122 = ptrtoint ptr %pkt.i111.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 100, ptr %pkt.i111.i, align 4
  %123 = ptrtoint ptr %b2.i114.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %b.2396.1.i, ptr %b2.i114.i, align 4
  %124 = ptrtoint ptr %c3.i115.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 3, ptr %c3.i115.i, align 4
  %125 = ptrtoint ptr %d4.i116.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %d4.i116.i, align 4
  %126 = ptrtoint ptr %e5.i117.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 11877360, ptr %e5.i117.i, align 4
  %127 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %11, align 8
  %shl.i.i118.1.i = shl i32 %128, 8
  %or.i119.1.i = or i32 %shl.i.i118.1.i, -2147483648
  %call6.i120.1.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i119.1.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i111.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i120.1.i)
  %cmp7.i121.1.i = icmp slt i32 %call6.i120.1.i, 0
  br i1 %cmp7.i121.1.i, label %do.end.i123.1.i, label %for.body34.1.i.snd_s1810c_send_ctl_packet.exit125.1.i_crit_edge

for.body34.1.i.snd_s1810c_send_ctl_packet.exit125.1.i_crit_edge: ; preds = %for.body34.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit125.1.i

do.end.i123.1.i:                                  ; preds = %for.body34.1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit125.1.i

snd_s1810c_send_ctl_packet.exit125.1.i:           ; preds = %do.end.i123.1.i, %for.body34.1.i.snd_s1810c_send_ctl_packet.exit125.1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i111.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i126.i) #6
  %129 = ptrtoint ptr %fixed1.i127.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1348563561, ptr %fixed1.i127.i, align 4
  %130 = ptrtoint ptr %fixed2.i128.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 20, ptr %fixed2.i128.i, align 4
  %131 = ptrtoint ptr %pkt.i126.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 100, ptr %pkt.i126.i, align 4
  %132 = ptrtoint ptr %b2.i129.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %b.2396.1.i, ptr %b2.i129.i, align 4
  %133 = ptrtoint ptr %c3.i130.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 3, ptr %c3.i130.i, align 4
  %134 = ptrtoint ptr %d4.i131.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1, ptr %d4.i131.i, align 4
  %135 = ptrtoint ptr %e5.i132.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 11877360, ptr %e5.i132.i, align 4
  %136 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %11, align 8
  %shl.i.i133.1.i = shl i32 %137, 8
  %or.i134.1.i = or i32 %shl.i.i133.1.i, -2147483648
  %call6.i135.1.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i134.1.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i126.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i135.1.i)
  %cmp7.i136.1.i = icmp slt i32 %call6.i135.1.i, 0
  br i1 %cmp7.i136.1.i, label %do.end.i138.1.i, label %snd_s1810c_send_ctl_packet.exit125.1.i.snd_s1810c_send_ctl_packet.exit140.1.i_crit_edge

snd_s1810c_send_ctl_packet.exit125.1.i.snd_s1810c_send_ctl_packet.exit140.1.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit125.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit140.1.i

do.end.i138.1.i:                                  ; preds = %snd_s1810c_send_ctl_packet.exit125.1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit140.1.i

snd_s1810c_send_ctl_packet.exit140.1.i:           ; preds = %do.end.i138.1.i, %snd_s1810c_send_ctl_packet.exit125.1.i.snd_s1810c_send_ctl_packet.exit140.1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i126.i) #6
  %inc38.1.i = add nuw nsw i32 %b.2396.1.i, 1
  %exitcond415.1.not.i = icmp eq i32 %inc38.1.i, 36
  br i1 %exitcond415.1.not.i, label %for.end39.1.i, label %snd_s1810c_send_ctl_packet.exit140.1.i.for.body34.1.i_crit_edge

snd_s1810c_send_ctl_packet.exit140.1.i.for.body34.1.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit140.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body34.1.i

for.end39.1.i:                                    ; preds = %snd_s1810c_send_ctl_packet.exit140.1.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i141.i) #6
  %fixed1.i142.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i141.i, i32 0, i32 2
  %138 = ptrtoint ptr %fixed1.i142.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1348563561, ptr %fixed1.i142.i, align 4
  %fixed2.i143.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i141.i, i32 0, i32 3
  %139 = ptrtoint ptr %fixed2.i143.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 20, ptr %fixed2.i143.i, align 4
  %140 = ptrtoint ptr %pkt.i141.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 101, ptr %pkt.i141.i, align 4
  %b2.i144.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i141.i, i32 0, i32 1
  %141 = ptrtoint ptr %b2.i144.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 3, ptr %b2.i144.i, align 4
  %c3.i145.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i141.i, i32 0, i32 4
  %142 = ptrtoint ptr %c3.i145.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %c3.i145.i, align 4
  %d4.i146.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i141.i, i32 0, i32 5
  %143 = ptrtoint ptr %d4.i146.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %d4.i146.i, align 4
  %e5.i147.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i141.i, i32 0, i32 6
  %144 = ptrtoint ptr %e5.i147.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 16777216, ptr %e5.i147.i, align 4
  %145 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %11, align 8
  %shl.i.i148.i = shl i32 %146, 8
  %or.i149.i = or i32 %shl.i.i148.i, -2147483648
  %call6.i150.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i149.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i141.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i150.i)
  %cmp7.i151.i = icmp slt i32 %call6.i150.i, 0
  br i1 %cmp7.i151.i, label %do.end.i153.i, label %for.end39.1.i.snd_s1810c_send_ctl_packet.exit155.i_crit_edge

for.end39.1.i.snd_s1810c_send_ctl_packet.exit155.i_crit_edge: ; preds = %for.end39.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit155.i

do.end.i153.i:                                    ; preds = %for.end39.1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit155.i

snd_s1810c_send_ctl_packet.exit155.i:             ; preds = %do.end.i153.i, %for.end39.1.i.snd_s1810c_send_ctl_packet.exit155.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i141.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i156.i) #6
  %fixed1.i157.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i156.i, i32 0, i32 2
  %147 = ptrtoint ptr %fixed1.i157.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 1348563561, ptr %fixed1.i157.i, align 4
  %fixed2.i158.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i156.i, i32 0, i32 3
  %148 = ptrtoint ptr %fixed2.i158.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 20, ptr %fixed2.i158.i, align 4
  %149 = ptrtoint ptr %pkt.i156.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 101, ptr %pkt.i156.i, align 4
  %b2.i159.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i156.i, i32 0, i32 1
  %150 = ptrtoint ptr %b2.i159.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 3, ptr %b2.i159.i, align 4
  %c3.i160.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i156.i, i32 0, i32 4
  %151 = ptrtoint ptr %c3.i160.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %c3.i160.i, align 4
  %d4.i161.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i156.i, i32 0, i32 5
  %152 = ptrtoint ptr %d4.i161.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 1, ptr %d4.i161.i, align 4
  %e5.i162.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i156.i, i32 0, i32 6
  %153 = ptrtoint ptr %e5.i162.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 16777216, ptr %e5.i162.i, align 4
  %154 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %11, align 8
  %shl.i.i163.i = shl i32 %155, 8
  %or.i164.i = or i32 %shl.i.i163.i, -2147483648
  %call6.i165.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i164.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i156.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i165.i)
  %cmp7.i166.i = icmp slt i32 %call6.i165.i, 0
  br i1 %cmp7.i166.i, label %do.end.i168.i, label %snd_s1810c_send_ctl_packet.exit155.i.snd_s1810c_send_ctl_packet.exit170.i_crit_edge

snd_s1810c_send_ctl_packet.exit155.i.snd_s1810c_send_ctl_packet.exit170.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit155.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit170.i

do.end.i168.i:                                    ; preds = %snd_s1810c_send_ctl_packet.exit155.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit170.i

snd_s1810c_send_ctl_packet.exit170.i:             ; preds = %do.end.i168.i, %snd_s1810c_send_ctl_packet.exit155.i.snd_s1810c_send_ctl_packet.exit170.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i156.i) #6
  %fixed1.i172.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i171.i, i32 0, i32 2
  %fixed2.i173.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i171.i, i32 0, i32 3
  %b2.i174.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i171.i, i32 0, i32 1
  %c3.i175.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i171.i, i32 0, i32 4
  %d4.i176.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i171.i, i32 0, i32 5
  %e5.i177.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i171.i, i32 0, i32 6
  %fixed1.i187.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i186.i, i32 0, i32 2
  %fixed2.i188.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i186.i, i32 0, i32 3
  %b2.i189.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i186.i, i32 0, i32 1
  %c3.i190.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i186.i, i32 0, i32 4
  %d4.i191.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i186.i, i32 0, i32 5
  %e5.i192.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i186.i, i32 0, i32 6
  br label %for.body47.i

for.cond53.preheader.i:                           ; preds = %snd_s1810c_send_ctl_packet.exit200.i
  %fixed1.i268.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i267.i, i32 0, i32 2
  %fixed2.i269.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i267.i, i32 0, i32 3
  %b2.i270.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i267.i, i32 0, i32 1
  %c3.i271.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i267.i, i32 0, i32 4
  %d4.i272.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i267.i, i32 0, i32 5
  %e5.i274.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i267.i, i32 0, i32 6
  %fixed1.i284.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i283.i, i32 0, i32 2
  %fixed2.i285.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i283.i, i32 0, i32 3
  %b2.i286.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i283.i, i32 0, i32 1
  %c3.i287.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i283.i, i32 0, i32 4
  %d4.i288.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i283.i, i32 0, i32 5
  %e5.i290.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i283.i, i32 0, i32 6
  %fixed1.i202.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i201.i, i32 0, i32 2
  %fixed2.i203.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i201.i, i32 0, i32 3
  %b2.i204.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i201.i, i32 0, i32 1
  %c3.i205.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i201.i, i32 0, i32 4
  %d4.i206.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i201.i, i32 0, i32 5
  %e5.i209.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i201.i, i32 0, i32 6
  %fixed1.i219.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i218.i, i32 0, i32 2
  %fixed2.i220.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i218.i, i32 0, i32 3
  %b2.i221.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i218.i, i32 0, i32 1
  %c3.i222.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i218.i, i32 0, i32 4
  %d4.i223.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i218.i, i32 0, i32 5
  %e5.i225.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i218.i, i32 0, i32 6
  %fixed1.i235.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i234.i, i32 0, i32 2
  %fixed2.i236.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i234.i, i32 0, i32 3
  %b2.i237.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i234.i, i32 0, i32 1
  %c3.i238.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i234.i, i32 0, i32 4
  %d4.i239.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i234.i, i32 0, i32 5
  %e5.i241.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i234.i, i32 0, i32 6
  %fixed1.i251.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i250.i, i32 0, i32 2
  %fixed2.i252.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i250.i, i32 0, i32 3
  %b2.i253.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i250.i, i32 0, i32 1
  %c3.i254.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i250.i, i32 0, i32 4
  %d4.i255.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i250.i, i32 0, i32 5
  %e5.i258.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i250.i, i32 0, i32 6
  br label %for.cond56.preheader.i

for.body47.i:                                     ; preds = %snd_s1810c_send_ctl_packet.exit200.i.for.body47.i_crit_edge, %snd_s1810c_send_ctl_packet.exit170.i
  %b.3399.i = phi i32 [ 0, %snd_s1810c_send_ctl_packet.exit170.i ], [ %inc51.i, %snd_s1810c_send_ctl_packet.exit200.i.for.body47.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i171.i) #6
  %156 = ptrtoint ptr %fixed1.i172.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 1348563561, ptr %fixed1.i172.i, align 4
  %157 = ptrtoint ptr %fixed2.i173.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 20, ptr %fixed2.i173.i, align 4
  %158 = ptrtoint ptr %pkt.i171.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 101, ptr %pkt.i171.i, align 4
  %159 = ptrtoint ptr %b2.i174.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %b.3399.i, ptr %b2.i174.i, align 4
  %160 = ptrtoint ptr %c3.i175.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %c3.i175.i, align 4
  %161 = ptrtoint ptr %d4.i176.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %d4.i176.i, align 4
  %162 = ptrtoint ptr %e5.i177.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 16777216, ptr %e5.i177.i, align 4
  %163 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %11, align 8
  %shl.i.i178.i = shl i32 %164, 8
  %or.i179.i = or i32 %shl.i.i178.i, -2147483648
  %call6.i180.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i179.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i171.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i180.i)
  %cmp7.i181.i = icmp slt i32 %call6.i180.i, 0
  br i1 %cmp7.i181.i, label %do.end.i183.i, label %for.body47.i.snd_s1810c_send_ctl_packet.exit185.i_crit_edge

for.body47.i.snd_s1810c_send_ctl_packet.exit185.i_crit_edge: ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit185.i

do.end.i183.i:                                    ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit185.i

snd_s1810c_send_ctl_packet.exit185.i:             ; preds = %do.end.i183.i, %for.body47.i.snd_s1810c_send_ctl_packet.exit185.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i171.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i186.i) #6
  %165 = ptrtoint ptr %fixed1.i187.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 1348563561, ptr %fixed1.i187.i, align 4
  %166 = ptrtoint ptr %fixed2.i188.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 20, ptr %fixed2.i188.i, align 4
  %167 = ptrtoint ptr %pkt.i186.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 101, ptr %pkt.i186.i, align 4
  %168 = ptrtoint ptr %b2.i189.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %b.3399.i, ptr %b2.i189.i, align 4
  %169 = ptrtoint ptr %c3.i190.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %c3.i190.i, align 4
  %170 = ptrtoint ptr %d4.i191.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 1, ptr %d4.i191.i, align 4
  %171 = ptrtoint ptr %e5.i192.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 16777216, ptr %e5.i192.i, align 4
  %172 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %11, align 8
  %shl.i.i193.i = shl i32 %173, 8
  %or.i194.i = or i32 %shl.i.i193.i, -2147483648
  %call6.i195.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i194.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i186.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i195.i)
  %cmp7.i196.i = icmp slt i32 %call6.i195.i, 0
  br i1 %cmp7.i196.i, label %do.end.i198.i, label %snd_s1810c_send_ctl_packet.exit185.i.snd_s1810c_send_ctl_packet.exit200.i_crit_edge

snd_s1810c_send_ctl_packet.exit185.i.snd_s1810c_send_ctl_packet.exit200.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit185.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit200.i

do.end.i198.i:                                    ; preds = %snd_s1810c_send_ctl_packet.exit185.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit200.i

snd_s1810c_send_ctl_packet.exit200.i:             ; preds = %do.end.i198.i, %snd_s1810c_send_ctl_packet.exit185.i.snd_s1810c_send_ctl_packet.exit200.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i186.i) #6
  %inc51.i = add nuw nsw i32 %b.3399.i, 1
  %exitcond417.not.i = icmp eq i32 %inc51.i, 4
  br i1 %exitcond417.not.i, label %for.cond53.preheader.i, label %snd_s1810c_send_ctl_packet.exit200.i.for.body47.i_crit_edge

snd_s1810c_send_ctl_packet.exit200.i.for.body47.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit200.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body47.i

for.cond56.preheader.i:                           ; preds = %for.inc82.i.for.cond56.preheader.i_crit_edge, %for.cond53.preheader.i
  %c.1402.i = phi i32 [ 0, %for.cond53.preheader.i ], [ %inc83.i, %for.inc82.i.for.cond56.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.1402.i)
  %cmp59.i = icmp eq i32 %c.1402.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %c.1402.i)
  %cmp61.i = icmp eq i32 %c.1402.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %c.1402.i)
  %cmp65.i = icmp eq i32 %c.1402.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %c.1402.i)
  %cmp69.i = icmp eq i32 %c.1402.i, 3
  br label %for.body58.i

for.body58.i:                                     ; preds = %for.inc79.i.for.body58.i_crit_edge, %for.cond56.preheader.i
  %b.4400.i = phi i32 [ 0, %for.cond56.preheader.i ], [ %inc80.i, %for.inc79.i.for.body58.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %b.4400.i)
  %cmp60.i = icmp eq i32 %b.4400.i, 18
  %or.cond.i = select i1 %cmp59.i, i1 %cmp60.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %b.4400.i)
  %cmp63.i = icmp eq i32 %b.4400.i, 20
  %or.cond1.i = select i1 %cmp61.i, i1 %cmp63.i, i1 false
  %or.cond407.i = select i1 %or.cond.i, i1 true, i1 %or.cond1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %b.4400.i)
  %cmp67.i = icmp eq i32 %b.4400.i, 22
  %or.cond2.i = select i1 %cmp65.i, i1 %cmp67.i, i1 false
  %or.cond408.i = select i1 %or.cond407.i, i1 true, i1 %or.cond2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %b.4400.i)
  %cmp71.i = icmp eq i32 %b.4400.i, 24
  %or.cond3.i = select i1 %cmp69.i, i1 %cmp71.i, i1 false
  %or.cond409.i = select i1 %or.cond408.i, i1 true, i1 %or.cond3.i
  br i1 %or.cond409.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body58.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i201.i) #6
  %174 = ptrtoint ptr %fixed1.i202.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 1348563561, ptr %fixed1.i202.i, align 4
  %175 = ptrtoint ptr %fixed2.i203.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 20, ptr %fixed2.i203.i, align 4
  %176 = ptrtoint ptr %pkt.i201.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 100, ptr %pkt.i201.i, align 4
  %177 = ptrtoint ptr %b2.i204.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %b.4400.i, ptr %b2.i204.i, align 4
  %178 = ptrtoint ptr %c3.i205.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %c.1402.i, ptr %c3.i205.i, align 4
  %179 = ptrtoint ptr %d4.i206.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %d4.i206.i, align 4
  %180 = ptrtoint ptr %e5.i209.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 16777216, ptr %e5.i209.i, align 4
  %181 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %11, align 8
  %shl.i.i210.i = shl i32 %182, 8
  %or.i211.i = or i32 %shl.i.i210.i, -2147483648
  %call6.i212.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i211.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i201.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i212.i)
  %cmp7.i213.i = icmp slt i32 %call6.i212.i, 0
  br i1 %cmp7.i213.i, label %do.end.i215.i, label %if.then.i.snd_s1810c_send_ctl_packet.exit217.i_crit_edge

if.then.i.snd_s1810c_send_ctl_packet.exit217.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit217.i

do.end.i215.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit217.i

snd_s1810c_send_ctl_packet.exit217.i:             ; preds = %do.end.i215.i, %if.then.i.snd_s1810c_send_ctl_packet.exit217.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i201.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i218.i) #6
  %183 = ptrtoint ptr %fixed1.i219.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 1348563561, ptr %fixed1.i219.i, align 4
  %184 = ptrtoint ptr %fixed2.i220.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 20, ptr %fixed2.i220.i, align 4
  %185 = ptrtoint ptr %pkt.i218.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 100, ptr %pkt.i218.i, align 4
  %186 = ptrtoint ptr %b2.i221.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %b.4400.i, ptr %b2.i221.i, align 4
  %187 = ptrtoint ptr %c3.i222.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %c.1402.i, ptr %c3.i222.i, align 4
  %188 = ptrtoint ptr %d4.i223.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 1, ptr %d4.i223.i, align 4
  %189 = ptrtoint ptr %e5.i225.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %e5.i225.i, align 4
  %190 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %11, align 8
  %shl.i.i226.i = shl i32 %191, 8
  %or.i227.i = or i32 %shl.i.i226.i, -2147483648
  %call6.i228.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i227.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i218.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i228.i)
  %cmp7.i229.i = icmp slt i32 %call6.i228.i, 0
  br i1 %cmp7.i229.i, label %do.end.i231.i, label %snd_s1810c_send_ctl_packet.exit217.i.snd_s1810c_send_ctl_packet.exit233.i_crit_edge

snd_s1810c_send_ctl_packet.exit217.i.snd_s1810c_send_ctl_packet.exit233.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit217.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit233.i

do.end.i231.i:                                    ; preds = %snd_s1810c_send_ctl_packet.exit217.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit233.i

snd_s1810c_send_ctl_packet.exit233.i:             ; preds = %do.end.i231.i, %snd_s1810c_send_ctl_packet.exit217.i.snd_s1810c_send_ctl_packet.exit233.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i218.i) #6
  %inc74.i = add nuw nsw i32 %b.4400.i, 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i234.i) #6
  %192 = ptrtoint ptr %fixed1.i235.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 1348563561, ptr %fixed1.i235.i, align 4
  %193 = ptrtoint ptr %fixed2.i236.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 20, ptr %fixed2.i236.i, align 4
  %194 = ptrtoint ptr %pkt.i234.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 100, ptr %pkt.i234.i, align 4
  %195 = ptrtoint ptr %b2.i237.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %inc74.i, ptr %b2.i237.i, align 4
  %196 = ptrtoint ptr %c3.i238.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %c.1402.i, ptr %c3.i238.i, align 4
  %197 = ptrtoint ptr %d4.i239.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 0, ptr %d4.i239.i, align 4
  %198 = ptrtoint ptr %e5.i241.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 0, ptr %e5.i241.i, align 4
  %199 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %11, align 8
  %shl.i.i242.i = shl i32 %200, 8
  %or.i243.i = or i32 %shl.i.i242.i, -2147483648
  %call6.i244.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i243.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i234.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i244.i)
  %cmp7.i245.i = icmp slt i32 %call6.i244.i, 0
  br i1 %cmp7.i245.i, label %do.end.i247.i, label %snd_s1810c_send_ctl_packet.exit233.i.snd_s1810c_send_ctl_packet.exit249.i_crit_edge

snd_s1810c_send_ctl_packet.exit233.i.snd_s1810c_send_ctl_packet.exit249.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit233.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit249.i

do.end.i247.i:                                    ; preds = %snd_s1810c_send_ctl_packet.exit233.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit249.i

snd_s1810c_send_ctl_packet.exit249.i:             ; preds = %do.end.i247.i, %snd_s1810c_send_ctl_packet.exit233.i.snd_s1810c_send_ctl_packet.exit249.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i234.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i250.i) #6
  %201 = ptrtoint ptr %fixed1.i251.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 1348563561, ptr %fixed1.i251.i, align 4
  %202 = ptrtoint ptr %fixed2.i252.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 20, ptr %fixed2.i252.i, align 4
  %203 = ptrtoint ptr %pkt.i250.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 100, ptr %pkt.i250.i, align 4
  %204 = ptrtoint ptr %b2.i253.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %inc74.i, ptr %b2.i253.i, align 4
  %205 = ptrtoint ptr %c3.i254.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %c.1402.i, ptr %c3.i254.i, align 4
  %206 = ptrtoint ptr %d4.i255.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 1, ptr %d4.i255.i, align 4
  %207 = ptrtoint ptr %e5.i258.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 16777216, ptr %e5.i258.i, align 4
  %208 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %11, align 8
  %shl.i.i259.i = shl i32 %209, 8
  %or.i260.i = or i32 %shl.i.i259.i, -2147483648
  %call6.i261.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i260.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i250.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i261.i)
  %cmp7.i262.i = icmp slt i32 %call6.i261.i, 0
  br i1 %cmp7.i262.i, label %do.end.i264.i, label %snd_s1810c_send_ctl_packet.exit249.i.snd_s1810c_send_ctl_packet.exit266.i_crit_edge

snd_s1810c_send_ctl_packet.exit249.i.snd_s1810c_send_ctl_packet.exit266.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit249.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit266.i

do.end.i264.i:                                    ; preds = %snd_s1810c_send_ctl_packet.exit249.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit266.i

snd_s1810c_send_ctl_packet.exit266.i:             ; preds = %do.end.i264.i, %snd_s1810c_send_ctl_packet.exit249.i.snd_s1810c_send_ctl_packet.exit266.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i250.i) #6
  br label %for.inc79.i

if.else.i:                                        ; preds = %for.body58.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i267.i) #6
  %210 = ptrtoint ptr %fixed1.i268.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 1348563561, ptr %fixed1.i268.i, align 4
  %211 = ptrtoint ptr %fixed2.i269.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 20, ptr %fixed2.i269.i, align 4
  %212 = ptrtoint ptr %pkt.i267.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 100, ptr %pkt.i267.i, align 4
  %213 = ptrtoint ptr %b2.i270.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %b.4400.i, ptr %b2.i270.i, align 4
  %214 = ptrtoint ptr %c3.i271.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %c.1402.i, ptr %c3.i271.i, align 4
  %215 = ptrtoint ptr %d4.i272.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 0, ptr %d4.i272.i, align 4
  %216 = ptrtoint ptr %e5.i274.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %e5.i274.i, align 4
  %217 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %11, align 8
  %shl.i.i275.i = shl i32 %218, 8
  %or.i276.i = or i32 %shl.i.i275.i, -2147483648
  %call6.i277.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i276.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i267.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i277.i)
  %cmp7.i278.i = icmp slt i32 %call6.i277.i, 0
  br i1 %cmp7.i278.i, label %do.end.i280.i, label %if.else.i.snd_s1810c_send_ctl_packet.exit282.i_crit_edge

if.else.i.snd_s1810c_send_ctl_packet.exit282.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit282.i

do.end.i280.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit282.i

snd_s1810c_send_ctl_packet.exit282.i:             ; preds = %do.end.i280.i, %if.else.i.snd_s1810c_send_ctl_packet.exit282.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i267.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i283.i) #6
  %219 = ptrtoint ptr %fixed1.i284.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 1348563561, ptr %fixed1.i284.i, align 4
  %220 = ptrtoint ptr %fixed2.i285.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 20, ptr %fixed2.i285.i, align 4
  %221 = ptrtoint ptr %pkt.i283.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 100, ptr %pkt.i283.i, align 4
  %222 = ptrtoint ptr %b2.i286.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %b.4400.i, ptr %b2.i286.i, align 4
  %223 = ptrtoint ptr %c3.i287.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %c.1402.i, ptr %c3.i287.i, align 4
  %224 = ptrtoint ptr %d4.i288.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 1, ptr %d4.i288.i, align 4
  %225 = ptrtoint ptr %e5.i290.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 0, ptr %e5.i290.i, align 4
  %226 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %11, align 8
  %shl.i.i291.i = shl i32 %227, 8
  %or.i292.i = or i32 %shl.i.i291.i, -2147483648
  %call6.i293.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i292.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i283.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i293.i)
  %cmp7.i294.i = icmp slt i32 %call6.i293.i, 0
  br i1 %cmp7.i294.i, label %do.end.i296.i, label %snd_s1810c_send_ctl_packet.exit282.i.snd_s1810c_send_ctl_packet.exit298.i_crit_edge

snd_s1810c_send_ctl_packet.exit282.i.snd_s1810c_send_ctl_packet.exit298.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit282.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit298.i

do.end.i296.i:                                    ; preds = %snd_s1810c_send_ctl_packet.exit282.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit298.i

snd_s1810c_send_ctl_packet.exit298.i:             ; preds = %do.end.i296.i, %snd_s1810c_send_ctl_packet.exit282.i.snd_s1810c_send_ctl_packet.exit298.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i283.i) #6
  br label %for.inc79.i

for.inc79.i:                                      ; preds = %snd_s1810c_send_ctl_packet.exit298.i, %snd_s1810c_send_ctl_packet.exit266.i
  %b.5.i = phi i32 [ %inc74.i, %snd_s1810c_send_ctl_packet.exit266.i ], [ %b.4400.i, %snd_s1810c_send_ctl_packet.exit298.i ]
  %inc80.i = add nuw nsw i32 %b.5.i, 1
  %cmp57.i = icmp ult i32 %b.5.i, 35
  br i1 %cmp57.i, label %for.inc79.i.for.body58.i_crit_edge, label %for.inc82.i

for.inc79.i.for.body58.i_crit_edge:               ; preds = %for.inc79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body58.i

for.inc82.i:                                      ; preds = %for.inc79.i
  %inc83.i = add nuw nsw i32 %c.1402.i, 1
  %exitcond418.not.i = icmp eq i32 %inc83.i, 4
  br i1 %exitcond418.not.i, label %for.body92.preheader.i, label %for.inc82.i.for.cond56.preheader.i_crit_edge

for.inc82.i.for.cond56.preheader.i_crit_edge:     ; preds = %for.inc82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond56.preheader.i

for.body92.preheader.i:                           ; preds = %for.inc82.i
  %fixed1.i300.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i299.i, i32 0, i32 2
  %fixed2.i301.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i299.i, i32 0, i32 3
  %b2.i302.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i299.i, i32 0, i32 1
  %c3.i303.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i299.i, i32 0, i32 4
  %d4.i304.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i299.i, i32 0, i32 5
  %e5.i305.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i299.i, i32 0, i32 6
  %fixed1.i315.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i314.i, i32 0, i32 2
  %fixed2.i316.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i314.i, i32 0, i32 3
  %b2.i317.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i314.i, i32 0, i32 1
  %c3.i318.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i314.i, i32 0, i32 4
  %d4.i319.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i314.i, i32 0, i32 5
  %e5.i320.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i314.i, i32 0, i32 6
  br label %for.body92.i

for.body92.i:                                     ; preds = %snd_s1810c_send_ctl_packet.exit328.i.for.body92.i_crit_edge, %for.body92.preheader.i
  %b.6404.i = phi i32 [ %inc96.i, %snd_s1810c_send_ctl_packet.exit328.i.for.body92.i_crit_edge ], [ 0, %for.body92.preheader.i ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i299.i) #6
  %228 = ptrtoint ptr %fixed1.i300.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 1348563561, ptr %fixed1.i300.i, align 4
  %229 = ptrtoint ptr %fixed2.i301.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 20, ptr %fixed2.i301.i, align 4
  %230 = ptrtoint ptr %pkt.i299.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 100, ptr %pkt.i299.i, align 4
  %231 = ptrtoint ptr %b2.i302.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %b.6404.i, ptr %b2.i302.i, align 4
  %232 = ptrtoint ptr %c3.i303.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 3, ptr %c3.i303.i, align 4
  %233 = ptrtoint ptr %d4.i304.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 0, ptr %d4.i304.i, align 4
  %234 = ptrtoint ptr %e5.i305.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 188, ptr %e5.i305.i, align 4
  %235 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %11, align 8
  %shl.i.i306.i = shl i32 %236, 8
  %or.i307.i = or i32 %shl.i.i306.i, -2147483648
  %call6.i308.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i307.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i299.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i308.i)
  %cmp7.i309.i = icmp slt i32 %call6.i308.i, 0
  br i1 %cmp7.i309.i, label %do.end.i311.i, label %for.body92.i.snd_s1810c_send_ctl_packet.exit313.i_crit_edge

for.body92.i.snd_s1810c_send_ctl_packet.exit313.i_crit_edge: ; preds = %for.body92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit313.i

do.end.i311.i:                                    ; preds = %for.body92.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit313.i

snd_s1810c_send_ctl_packet.exit313.i:             ; preds = %do.end.i311.i, %for.body92.i.snd_s1810c_send_ctl_packet.exit313.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i299.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i314.i) #6
  %237 = ptrtoint ptr %fixed1.i315.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 1348563561, ptr %fixed1.i315.i, align 4
  %238 = ptrtoint ptr %fixed2.i316.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 20, ptr %fixed2.i316.i, align 4
  %239 = ptrtoint ptr %pkt.i314.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 100, ptr %pkt.i314.i, align 4
  %240 = ptrtoint ptr %b2.i317.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %b.6404.i, ptr %b2.i317.i, align 4
  %241 = ptrtoint ptr %c3.i318.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 3, ptr %c3.i318.i, align 4
  %242 = ptrtoint ptr %d4.i319.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 1, ptr %d4.i319.i, align 4
  %243 = ptrtoint ptr %e5.i320.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 188, ptr %e5.i320.i, align 4
  %244 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %11, align 8
  %shl.i.i321.i = shl i32 %245, 8
  %or.i322.i = or i32 %shl.i.i321.i, -2147483648
  %call6.i323.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i322.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i314.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i323.i)
  %cmp7.i324.i = icmp slt i32 %call6.i323.i, 0
  br i1 %cmp7.i324.i, label %do.end.i326.i, label %snd_s1810c_send_ctl_packet.exit313.i.snd_s1810c_send_ctl_packet.exit328.i_crit_edge

snd_s1810c_send_ctl_packet.exit313.i.snd_s1810c_send_ctl_packet.exit328.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit313.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit328.i

do.end.i326.i:                                    ; preds = %snd_s1810c_send_ctl_packet.exit313.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit328.i

snd_s1810c_send_ctl_packet.exit328.i:             ; preds = %do.end.i326.i, %snd_s1810c_send_ctl_packet.exit313.i.snd_s1810c_send_ctl_packet.exit328.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i314.i) #6
  %inc96.i = add nuw nsw i32 %b.6404.i, 1
  %exitcond421.not.i = icmp eq i32 %inc96.i, 18
  br i1 %exitcond421.not.i, label %snd_s1810c_send_ctl_packet.exit328.i.for.body92.1.i_crit_edge, label %snd_s1810c_send_ctl_packet.exit328.i.for.body92.i_crit_edge

snd_s1810c_send_ctl_packet.exit328.i.for.body92.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit328.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body92.i

snd_s1810c_send_ctl_packet.exit328.i.for.body92.1.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit328.i
  br label %for.body92.1.i

for.body92.1.i:                                   ; preds = %snd_s1810c_send_ctl_packet.exit328.1.i.for.body92.1.i_crit_edge, %snd_s1810c_send_ctl_packet.exit328.i.for.body92.1.i_crit_edge
  %b.6404.1.i = phi i32 [ %inc96.1.i, %snd_s1810c_send_ctl_packet.exit328.1.i.for.body92.1.i_crit_edge ], [ 18, %snd_s1810c_send_ctl_packet.exit328.i.for.body92.1.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i299.i) #6
  %246 = ptrtoint ptr %fixed1.i300.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 1348563561, ptr %fixed1.i300.i, align 4
  %247 = ptrtoint ptr %fixed2.i301.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 20, ptr %fixed2.i301.i, align 4
  %248 = ptrtoint ptr %pkt.i299.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 100, ptr %pkt.i299.i, align 4
  %249 = ptrtoint ptr %b2.i302.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %b.6404.1.i, ptr %b2.i302.i, align 4
  %250 = ptrtoint ptr %c3.i303.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 3, ptr %c3.i303.i, align 4
  %251 = ptrtoint ptr %d4.i304.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 0, ptr %d4.i304.i, align 4
  %252 = ptrtoint ptr %e5.i305.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 11877360, ptr %e5.i305.i, align 4
  %253 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %11, align 8
  %shl.i.i306.1.i = shl i32 %254, 8
  %or.i307.1.i = or i32 %shl.i.i306.1.i, -2147483648
  %call6.i308.1.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i307.1.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i299.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i308.1.i)
  %cmp7.i309.1.i = icmp slt i32 %call6.i308.1.i, 0
  br i1 %cmp7.i309.1.i, label %do.end.i311.1.i, label %for.body92.1.i.snd_s1810c_send_ctl_packet.exit313.1.i_crit_edge

for.body92.1.i.snd_s1810c_send_ctl_packet.exit313.1.i_crit_edge: ; preds = %for.body92.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit313.1.i

do.end.i311.1.i:                                  ; preds = %for.body92.1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit313.1.i

snd_s1810c_send_ctl_packet.exit313.1.i:           ; preds = %do.end.i311.1.i, %for.body92.1.i.snd_s1810c_send_ctl_packet.exit313.1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i299.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i314.i) #6
  %255 = ptrtoint ptr %fixed1.i315.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 1348563561, ptr %fixed1.i315.i, align 4
  %256 = ptrtoint ptr %fixed2.i316.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 20, ptr %fixed2.i316.i, align 4
  %257 = ptrtoint ptr %pkt.i314.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 100, ptr %pkt.i314.i, align 4
  %258 = ptrtoint ptr %b2.i317.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %b.6404.1.i, ptr %b2.i317.i, align 4
  %259 = ptrtoint ptr %c3.i318.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 3, ptr %c3.i318.i, align 4
  %260 = ptrtoint ptr %d4.i319.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 1, ptr %d4.i319.i, align 4
  %261 = ptrtoint ptr %e5.i320.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 11877360, ptr %e5.i320.i, align 4
  %262 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %11, align 8
  %shl.i.i321.1.i = shl i32 %263, 8
  %or.i322.1.i = or i32 %shl.i.i321.1.i, -2147483648
  %call6.i323.1.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i322.1.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i314.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i323.1.i)
  %cmp7.i324.1.i = icmp slt i32 %call6.i323.1.i, 0
  br i1 %cmp7.i324.1.i, label %do.end.i326.1.i, label %snd_s1810c_send_ctl_packet.exit313.1.i.snd_s1810c_send_ctl_packet.exit328.1.i_crit_edge

snd_s1810c_send_ctl_packet.exit313.1.i.snd_s1810c_send_ctl_packet.exit328.1.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit313.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit328.1.i

do.end.i326.1.i:                                  ; preds = %snd_s1810c_send_ctl_packet.exit313.1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit328.1.i

snd_s1810c_send_ctl_packet.exit328.1.i:           ; preds = %do.end.i326.1.i, %snd_s1810c_send_ctl_packet.exit313.1.i.snd_s1810c_send_ctl_packet.exit328.1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i314.i) #6
  %inc96.1.i = add nuw nsw i32 %b.6404.1.i, 1
  %exitcond421.1.not.i = icmp eq i32 %inc96.1.i, 36
  br i1 %exitcond421.1.not.i, label %for.end97.1.i, label %snd_s1810c_send_ctl_packet.exit328.1.i.for.body92.1.i_crit_edge

snd_s1810c_send_ctl_packet.exit328.1.i.for.body92.1.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit328.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body92.1.i

for.end97.1.i:                                    ; preds = %snd_s1810c_send_ctl_packet.exit328.1.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i329.i) #6
  %fixed1.i330.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i329.i, i32 0, i32 2
  %264 = ptrtoint ptr %fixed1.i330.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 1348563561, ptr %fixed1.i330.i, align 4
  %fixed2.i331.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i329.i, i32 0, i32 3
  %265 = ptrtoint ptr %fixed2.i331.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 20, ptr %fixed2.i331.i, align 4
  %266 = ptrtoint ptr %pkt.i329.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 101, ptr %pkt.i329.i, align 4
  %b2.i332.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i329.i, i32 0, i32 1
  %267 = ptrtoint ptr %b2.i332.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 3, ptr %b2.i332.i, align 4
  %c3.i333.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i329.i, i32 0, i32 4
  %268 = ptrtoint ptr %c3.i333.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 0, ptr %c3.i333.i, align 4
  %d4.i334.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i329.i, i32 0, i32 5
  %269 = ptrtoint ptr %d4.i334.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 0, ptr %d4.i334.i, align 4
  %e5.i335.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i329.i, i32 0, i32 6
  %270 = ptrtoint ptr %e5.i335.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 16777216, ptr %e5.i335.i, align 4
  %271 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %11, align 8
  %shl.i.i336.i = shl i32 %272, 8
  %or.i337.i = or i32 %shl.i.i336.i, -2147483648
  %call6.i338.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i337.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i329.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i338.i)
  %cmp7.i339.i = icmp slt i32 %call6.i338.i, 0
  br i1 %cmp7.i339.i, label %do.end.i341.i, label %for.end97.1.i.snd_s1810c_send_ctl_packet.exit343.i_crit_edge

for.end97.1.i.snd_s1810c_send_ctl_packet.exit343.i_crit_edge: ; preds = %for.end97.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit343.i

do.end.i341.i:                                    ; preds = %for.end97.1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit343.i

snd_s1810c_send_ctl_packet.exit343.i:             ; preds = %do.end.i341.i, %for.end97.1.i.snd_s1810c_send_ctl_packet.exit343.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i329.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i344.i) #6
  %fixed1.i345.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i344.i, i32 0, i32 2
  %273 = ptrtoint ptr %fixed1.i345.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 1348563561, ptr %fixed1.i345.i, align 4
  %fixed2.i346.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i344.i, i32 0, i32 3
  %274 = ptrtoint ptr %fixed2.i346.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 20, ptr %fixed2.i346.i, align 4
  %275 = ptrtoint ptr %pkt.i344.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 101, ptr %pkt.i344.i, align 4
  %b2.i347.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i344.i, i32 0, i32 1
  %276 = ptrtoint ptr %b2.i347.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 3, ptr %b2.i347.i, align 4
  %c3.i348.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i344.i, i32 0, i32 4
  %277 = ptrtoint ptr %c3.i348.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 0, ptr %c3.i348.i, align 4
  %d4.i349.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i344.i, i32 0, i32 5
  %278 = ptrtoint ptr %d4.i349.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 1, ptr %d4.i349.i, align 4
  %e5.i350.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i344.i, i32 0, i32 6
  %279 = ptrtoint ptr %e5.i350.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 16777216, ptr %e5.i350.i, align 4
  %280 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %11, align 8
  %shl.i.i351.i = shl i32 %281, 8
  %or.i352.i = or i32 %shl.i.i351.i, -2147483648
  %call6.i353.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i352.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i344.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i353.i)
  %cmp7.i354.i = icmp slt i32 %call6.i353.i, 0
  br i1 %cmp7.i354.i, label %do.end.i356.i, label %snd_s1810c_send_ctl_packet.exit343.i.snd_s1810c_send_ctl_packet.exit358.i_crit_edge

snd_s1810c_send_ctl_packet.exit343.i.snd_s1810c_send_ctl_packet.exit358.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit343.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit358.i

do.end.i356.i:                                    ; preds = %snd_s1810c_send_ctl_packet.exit343.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit358.i

snd_s1810c_send_ctl_packet.exit358.i:             ; preds = %do.end.i356.i, %snd_s1810c_send_ctl_packet.exit343.i.snd_s1810c_send_ctl_packet.exit358.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i344.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i359.i) #6
  %fixed1.i360.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i359.i, i32 0, i32 2
  %282 = ptrtoint ptr %fixed1.i360.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 1348563561, ptr %fixed1.i360.i, align 4
  %fixed2.i361.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i359.i, i32 0, i32 3
  %283 = ptrtoint ptr %fixed2.i361.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 20, ptr %fixed2.i361.i, align 4
  %284 = ptrtoint ptr %pkt.i359.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 101, ptr %pkt.i359.i, align 4
  %b2.i362.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i359.i, i32 0, i32 1
  %285 = ptrtoint ptr %b2.i362.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 3, ptr %b2.i362.i, align 4
  %c3.i363.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i359.i, i32 0, i32 4
  %286 = ptrtoint ptr %c3.i363.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 0, ptr %c3.i363.i, align 4
  %d4.i364.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i359.i, i32 0, i32 5
  %287 = ptrtoint ptr %d4.i364.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 0, ptr %d4.i364.i, align 4
  %e5.i365.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i359.i, i32 0, i32 6
  %288 = ptrtoint ptr %e5.i365.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 16777216, ptr %e5.i365.i, align 4
  %289 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %11, align 8
  %shl.i.i366.i = shl i32 %290, 8
  %or.i367.i = or i32 %shl.i.i366.i, -2147483648
  %call6.i368.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i367.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i359.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i368.i)
  %cmp7.i369.i = icmp slt i32 %call6.i368.i, 0
  br i1 %cmp7.i369.i, label %do.end.i371.i, label %snd_s1810c_send_ctl_packet.exit358.i.snd_s1810c_send_ctl_packet.exit373.i_crit_edge

snd_s1810c_send_ctl_packet.exit358.i.snd_s1810c_send_ctl_packet.exit373.i_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit358.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_send_ctl_packet.exit373.i

do.end.i371.i:                                    ; preds = %snd_s1810c_send_ctl_packet.exit358.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_send_ctl_packet.exit373.i

snd_s1810c_send_ctl_packet.exit373.i:             ; preds = %do.end.i371.i, %snd_s1810c_send_ctl_packet.exit358.i.snd_s1810c_send_ctl_packet.exit373.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i359.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i374.i) #6
  %fixed1.i375.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i374.i, i32 0, i32 2
  %291 = ptrtoint ptr %fixed1.i375.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 1348563561, ptr %fixed1.i375.i, align 4
  %fixed2.i376.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i374.i, i32 0, i32 3
  %292 = ptrtoint ptr %fixed2.i376.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 20, ptr %fixed2.i376.i, align 4
  %293 = ptrtoint ptr %pkt.i374.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 101, ptr %pkt.i374.i, align 4
  %b2.i377.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i374.i, i32 0, i32 1
  %294 = ptrtoint ptr %b2.i377.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 3, ptr %b2.i377.i, align 4
  %c3.i378.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i374.i, i32 0, i32 4
  %295 = ptrtoint ptr %c3.i378.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 0, ptr %c3.i378.i, align 4
  %d4.i379.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i374.i, i32 0, i32 5
  %296 = ptrtoint ptr %d4.i379.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 1, ptr %d4.i379.i, align 4
  %e5.i380.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i374.i, i32 0, i32 6
  %297 = ptrtoint ptr %e5.i380.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 16777216, ptr %e5.i380.i, align 4
  %298 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %11, align 8
  %shl.i.i381.i = shl i32 %299, 8
  %or.i382.i = or i32 %shl.i.i381.i, -2147483648
  %call6.i383.i = call i32 @snd_usb_ctl_msg(ptr noundef %11, i32 noundef %or.i382.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i374.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i383.i)
  %cmp7.i384.i = icmp slt i32 %call6.i383.i, 0
  br i1 %cmp7.i384.i, label %do.end.i386.i, label %snd_s1810c_send_ctl_packet.exit373.i.snd_s1810c_init_mixer_maps.exit_crit_edge

snd_s1810c_send_ctl_packet.exit373.i.snd_s1810c_init_mixer_maps.exit_crit_edge: ; preds = %snd_s1810c_send_ctl_packet.exit373.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_init_mixer_maps.exit

do.end.i386.i:                                    ; preds = %snd_s1810c_send_ctl_packet.exit373.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_init_mixer_maps.exit

snd_s1810c_init_mixer_maps.exit:                  ; preds = %do.end.i386.i, %snd_s1810c_send_ctl_packet.exit373.i.snd_s1810c_init_mixer_maps.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i374.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %300 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %300, i32 noundef 3520, i32 noundef 188) #10
  %tobool29.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool29.not, label %snd_s1810c_init_mixer_maps.exit.cleanup_crit_edge, label %do.body32

snd_s1810c_init_mixer_maps.exit.cleanup_crit_edge: ; preds = %snd_s1810c_init_mixer_maps.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body32:                                        ; preds = %snd_s1810c_init_mixer_maps.exit
  %usb_mutex = getelementptr inbounds %struct.s1810_mixer_state, ptr %call7.i.i, i32 0, i32 1
  call void @__mutex_init(ptr noundef %usb_mutex, ptr noundef nonnull @.str.14, ptr noundef nonnull @snd_sc1810_init_mixer.__key) #6
  %data_mutex = getelementptr inbounds %struct.s1810_mixer_state, ptr %call7.i.i, i32 0, i32 2
  call void @__mutex_init(ptr noundef %data_mutex, ptr noundef nonnull @.str.16, ptr noundef nonnull @snd_sc1810_init_mixer.__key.15) #6
  %private_data = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 16
  %301 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %call7.i.i, ptr %private_data, align 4
  %private_free = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 17
  %302 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr @snd_sc1810_mixer_state_free, ptr %private_free, align 4
  %303 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 1, ptr %call7.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %304 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %304, i32 noundef 3520, i32 noundef 152) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.body32.cleanup_crit_edge, label %if.end.i

do.body32.cleanup_crit_edge:                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %do.body32
  %305 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %mixer, ptr %call7.i.i.i, align 8
  %control.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i, i32 0, i32 1
  %306 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 0, ptr %control.i, align 4
  %id.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i, i32 0, i32 3
  %307 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 0, ptr %id.i, align 4
  %channels.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i, i32 0, i32 6
  %308 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 1, ptr %channels.i, align 8
  %call3.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_s1810c_line_sw, ptr noundef nonnull %call7.i.i.i) #6
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %snd_s1810c_switch_init.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

snd_s1810c_switch_init.exit:                      ; preds = %if.end.i
  %private_free.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call3.i, i32 0, i32 9
  %309 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i, align 4
  %call8.i = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call3.i, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp39 = icmp slt i32 %call8.i, 0
  br i1 %cmp39, label %snd_s1810c_switch_init.exit.cleanup_crit_edge, label %if.end41

snd_s1810c_switch_init.exit.cleanup_crit_edge:    ; preds = %snd_s1810c_switch_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %snd_s1810c_switch_init.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %310 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i85 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %310, i32 noundef 3520, i32 noundef 152) #10
  %tobool.not.i86 = icmp eq ptr %call7.i.i.i85, null
  br i1 %tobool.not.i86, label %if.end41.cleanup_crit_edge, label %if.end.i92

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i92:                                       ; preds = %if.end41
  %311 = ptrtoint ptr %call7.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %mixer, ptr %call7.i.i.i85, align 8
  %control.i87 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i85, i32 0, i32 1
  %312 = ptrtoint ptr %control.i87 to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 0, ptr %control.i87, align 4
  %id.i88 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i85, i32 0, i32 3
  %313 = ptrtoint ptr %id.i88 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 0, ptr %id.i88, align 4
  %channels.i89 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i85, i32 0, i32 6
  %314 = ptrtoint ptr %channels.i89 to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 1, ptr %channels.i89, align 8
  %call3.i90 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_s1810c_mute_sw, ptr noundef nonnull %call7.i.i.i85) #6
  %tobool4.not.i91 = icmp eq ptr %call3.i90, null
  br i1 %tobool4.not.i91, label %if.then5.i93, label %snd_s1810c_switch_init.exit98

if.then5.i93:                                     ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i85) #6
  br label %cleanup

snd_s1810c_switch_init.exit98:                    ; preds = %if.end.i92
  %private_free.i94 = getelementptr inbounds %struct.snd_kcontrol, ptr %call3.i90, i32 0, i32 9
  %315 = ptrtoint ptr %private_free.i94 to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i94, align 4
  %call8.i95 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i85, ptr noundef nonnull %call3.i90, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i95)
  %cmp43 = icmp slt i32 %call8.i95, 0
  br i1 %cmp43, label %snd_s1810c_switch_init.exit98.cleanup_crit_edge, label %if.end45

snd_s1810c_switch_init.exit98.cleanup_crit_edge:  ; preds = %snd_s1810c_switch_init.exit98
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end45:                                         ; preds = %snd_s1810c_switch_init.exit98
  %call46 = call fastcc i32 @snd_s1810c_switch_init(ptr noundef %mixer, ptr noundef nonnull @snd_s1810c_48v_sw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end45.cleanup_crit_edge, label %if.end49

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = call fastcc i32 @snd_s1810c_switch_init(ptr noundef %mixer, ptr noundef nonnull @snd_s1810c_ab_sw)
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end45.cleanup_crit_edge, %snd_s1810c_switch_init.exit98.cleanup_crit_edge, %if.then5.i93, %if.end41.cleanup_crit_edge, %snd_s1810c_switch_init.exit.cleanup_crit_edge, %if.then5.i, %do.body32.cleanup_crit_edge, %snd_s1810c_init_mixer_maps.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %snd_s1810c_init_mixer_maps.exit.cleanup_crit_edge ], [ %call8.i, %snd_s1810c_switch_init.exit.cleanup_crit_edge ], [ %call8.i95, %snd_s1810c_switch_init.exit98.cleanup_crit_edge ], [ %call46, %if.end45.cleanup_crit_edge ], [ %call50, %if.end49 ], [ -12, %if.then5.i ], [ -12, %do.body32.cleanup_crit_edge ], [ -12, %if.then5.i93 ], [ -12, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_sc1810_mixer_state_free(ptr nocapture noundef %mixer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %1) #6
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %private_data, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_s1810c_switch_init(ptr noundef %mixer, ptr noundef %new_kctl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 152) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mixer, ptr %call7.i.i, align 8
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %control, align 4
  %id = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %id, align 4
  %channels = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %channels, align 8
  %call3 = tail call ptr @snd_ctl_new1(ptr noundef %new_kctl, ptr noundef nonnull %call7.i.i) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %private_free = getelementptr inbounds %struct.snd_kcontrol, ptr %call3, i32 0, i32 9
  %5 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free, align 4
  %call8 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call3, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end6 ], [ -12, %if.then5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_ctl_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_mixer_elem_free(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_mixer_add_list(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_s1810c_line_sw_info(ptr nocapture noundef readnone %kctl, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_s1810c_line_sw_info.texts) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_s1810c_switch_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ctl_elem) #0 align 64 {
entry:
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %private_data2 = getelementptr inbounds %struct.usb_mixer_interface, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #6
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state, align 4
  %data_mutex = getelementptr inbounds %struct.s1810_mixer_state, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #6
  %call = call fastcc i32 @snd_s1810c_get_switch_state(ptr noundef %3, ptr noundef %kctl, ptr noundef nonnull %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %.sink = load i32, ptr %state, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ctl_elem, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %value, align 8
  br label %unlock

unlock:                                           ; preds = %if.end, %entry.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %data_mutex) #6
  %9 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #6
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_s1810c_switch_set(ptr nocapture noundef %kctl, ptr nocapture noundef readonly %ctl_elem) #0 align 64 {
entry:
  %pkt.i.i = alloca %struct.s1810c_ctl_packet, align 4
  %curval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %private_data2 = getelementptr inbounds %struct.usb_mixer_interface, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curval) #6
  %6 = ptrtoint ptr %curval to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %curval, align 4
  %data_mutex = getelementptr inbounds %struct.s1810_mixer_state, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #6
  %call = call fastcc i32 @snd_s1810c_get_switch_state(ptr noundef %3, ptr noundef %kctl, ptr noundef nonnull %curval)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end:                                           ; preds = %entry
  %newval.0.in = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ctl_elem, i32 0, i32 2
  %7 = ptrtoint ptr %newval.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %newval.0 = load i32, ptr %newval.0.in, align 8
  %8 = ptrtoint ptr %curval to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %curval, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %newval.0)
  %cmp5 = icmp eq i32 %9, %newval.0
  br i1 %cmp5, label %if.end.unlock_crit_edge, label %if.end7

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end7:                                          ; preds = %if.end
  %10 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %private_value, align 4
  %and9 = and i32 %11, -65537
  %and10 = shl i32 %newval.0, 16
  %shl = and i32 %and10, 65536
  %or = or i32 %and9, %shl
  store i32 %or, ptr %private_value, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %14 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private_data2, align 4
  %shr.i = lshr i32 %11, 8
  %and.i = and i32 %shr.i, 255
  %and3.i = and i32 %newval.0, 1
  %usb_mutex.i = getelementptr inbounds %struct.s1810_mixer_state, ptr %15, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #6
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pkt.i.i) #6
  %fixed1.i.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %fixed1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1348563561, ptr %fixed1.i.i, align 4
  %fixed2.i.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %fixed2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 20, ptr %fixed2.i.i, align 4
  %20 = ptrtoint ptr %pkt.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %pkt.i.i, align 4
  %b2.i.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %b2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %b2.i.i, align 4
  %c3.i.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %c3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %c3.i.i, align 4
  %d4.i.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %d4.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and.i, ptr %d4.i.i, align 4
  %e5.i.i = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %pkt.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %e5.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and3.i, ptr %e5.i.i, align 4
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %17, align 8
  %shl.i.i.i = shl i32 %26, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call6.i.i = call i32 @snd_usb_ctl_msg(ptr noundef %17, i32 noundef %or.i.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %pkt.i.i, i16 noundef zeroext 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp7.i.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp7.i.i, label %do.end.i.i, label %if.end7.snd_s1810c_set_switch_state.exit_crit_edge

if.end7.snd_s1810c_set_switch_state.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_s1810c_set_switch_state.exit

do.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %dev8.i.i = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i.i, ptr noundef nonnull @.str.17) #9
  br label %snd_s1810c_set_switch_state.exit

snd_s1810c_set_switch_state.exit:                 ; preds = %do.end.i.i, %if.end7.snd_s1810c_set_switch_state.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call6.i.i, %do.end.i.i ], [ 0, %if.end7.snd_s1810c_set_switch_state.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pkt.i.i) #6
  call void @mutex_unlock(ptr noundef %usb_mutex.i) #6
  br label %unlock

unlock:                                           ; preds = %snd_s1810c_set_switch_state.exit, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  %ret.0 = phi i32 [ %call, %entry.unlock_crit_edge ], [ 0, %if.end.unlock_crit_edge ], [ %retval.0.i.i, %snd_s1810c_set_switch_state.exit ]
  call void @mutex_unlock(ptr noundef %data_mutex) #6
  %27 = xor i32 %ret.0, -1
  %ret.0.lobit.not = lshr i32 %27, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curval) #6
  ret i32 %ret.0.lobit.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_s1810c_get_switch_state(ptr nocapture noundef readonly %mixer, ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %state) unnamed_addr #0 align 64 {
entry:
  %pkt_out.i = alloca %struct.s1810c_state_packet, align 4
  %pkt_in.i = alloca %struct.s1810c_state_packet, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mixer, align 4
  %private_data = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %and = and i32 %5, 255
  %usb_mutex = getelementptr inbounds %struct.s1810_mixer_state, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex, i32 noundef 0) #6
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %pkt_out.i) #6
  %8 = call ptr @memset(ptr %pkt_out.i, i32 0, i32 252)
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %pkt_in.i) #6
  %9 = call ptr @memset(ptr %pkt_in.i, i32 0, i32 252)
  %arrayidx.i = getelementptr inbounds [63 x i32], ptr %pkt_out.i, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1684368755, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr inbounds [63 x i32], ptr %pkt_out.i, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 244, ptr %arrayidx2.i, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %13, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %3, align 2
  %call4.i = call i32 @snd_usb_ctl_msg(ptr noundef %7, i32 noundef %or3.i, i8 noundef zeroext -95, i8 noundef zeroext 64, i16 noundef zeroext %15, i16 noundef zeroext 0, ptr noundef nonnull %pkt_out.i, i16 noundef zeroext 252) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5.i, ptr noundef nonnull @.str.23, i32 noundef %call4.i) #9
  br label %snd_sc1810c_get_status_field.exit.thread

if.end.i:                                         ; preds = %entry
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %7, align 8
  %shl.i34.i = shl i32 %17, 8
  %or8.i = or i32 %shl.i34.i, -2147483520
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %3, align 2
  %call9.i = call i32 @snd_usb_ctl_msg(ptr noundef %7, i32 noundef %or8.i, i8 noundef zeroext -94, i8 noundef zeroext -64, i16 noundef zeroext %19, i16 noundef zeroext 0, ptr noundef nonnull %pkt_in.i, i16 noundef zeroext 252) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %do.end14.i, label %if.end

do.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev15.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev15.i, ptr noundef nonnull @.str.26, i32 noundef %and, i32 noundef %call9.i) #9
  br label %snd_sc1810c_get_status_field.exit.thread

snd_sc1810c_get_status_field.exit.thread:         ; preds = %do.end14.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call9.i, %do.end14.i ], [ %call4.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %pkt_in.i) #6
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %pkt_out.i) #6
  br label %unlock

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx18.i = getelementptr [63 x i32], ptr %pkt_in.i, i32 0, i32 %and
  %20 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx18.i, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %3, align 2
  %inc.i = add i16 %23, 1
  store i16 %inc.i, ptr %3, align 2
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %pkt_in.i) #6
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %pkt_out.i) #6
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %state, align 4
  br label %unlock

unlock:                                           ; preds = %if.end, %snd_sc1810c_get_status_field.exit.thread
  %retval.0.i11 = phi i32 [ %retval.0.i.ph, %snd_sc1810c_get_status_field.exit.thread ], [ 0, %if.end ]
  call void @mutex_unlock(ptr noundef %usb_mutex) #6
  ret i32 %retval.0.i11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_s1810c_ab_sw_info(ptr nocapture noundef readnone %kctl, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_s1810c_ab_sw_info.texts) #6
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !25, !26, !28, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/usb/mixer_s1810c.c", i32 554, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @snd_sc1810_init_mixer._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @snd_sc1810_init_mixer._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/usb/mixer_s1810c.c", i32 557, i32 3}
!10 = !{ptr @snd_sc1810_init_mixer._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @snd_sc1810_init_mixer._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/usb/mixer_s1810c.c", i32 559, i32 3}
!14 = !{ptr @snd_sc1810_init_mixer._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @snd_sc1810_init_mixer._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/usb/mixer_s1810c.c", i32 561, i32 3}
!18 = !{ptr @snd_sc1810_init_mixer._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @snd_sc1810_init_mixer._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @snd_sc1810_init_mixer.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../sound/usb/mixer_s1810c.c", i32 571, i32 2}
!22 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @snd_sc1810_init_mixer.__key.15, !24, !"__key", i1 false, i1 false}
!24 = !{!"../sound/usb/mixer_s1810c.c", i32 572, i32 2}
!25 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/usb/mixer_s1810c.c", i32 159, i32 3}
!28 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @snd_s1810c_send_ctl_packet._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @snd_s1810c_send_ctl_packet._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/usb/mixer_s1810c.c", i32 489, i32 10}
!34 = !{ptr @snd_s1810c_line_sw, !35, !"snd_s1810c_line_sw", i1 false, i1 false}
!35 = !{!"../sound/usb/mixer_s1810c.c", i32 487, i32 38}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/usb/mixer_s1810c.c", i32 480, i32 3}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/usb/mixer_s1810c.c", i32 481, i32 3}
!40 = !{ptr @snd_s1810c_line_sw_info.texts, !41, !"texts", i1 false, i1 false}
!41 = !{!"../sound/usb/mixer_s1810c.c", i32 479, i32 27}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/usb/mixer_s1810c.c", i32 189, i32 3}
!44 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @snd_sc1810c_get_status_field._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @snd_sc1810c_get_status_field._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/usb/mixer_s1810c.c", i32 198, i32 3}
!49 = !{ptr @snd_sc1810c_get_status_field._entry.25, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @snd_sc1810c_get_status_field._entry_ptr.27, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/usb/mixer_s1810c.c", i32 498, i32 10}
!53 = !{ptr @snd_s1810c_mute_sw, !54, !"snd_s1810c_mute_sw", i1 false, i1 false}
!54 = !{!"../sound/usb/mixer_s1810c.c", i32 496, i32 38}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/usb/mixer_s1810c.c", i32 507, i32 10}
!57 = !{ptr @snd_s1810c_48v_sw, !58, !"snd_s1810c_48v_sw", i1 false, i1 false}
!58 = !{!"../sound/usb/mixer_s1810c.c", i32 505, i32 38}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/usb/mixer_s1810c.c", i32 528, i32 10}
!61 = !{ptr @snd_s1810c_ab_sw, !62, !"snd_s1810c_ab_sw", i1 false, i1 false}
!62 = !{!"../sound/usb/mixer_s1810c.c", i32 526, i32 38}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/usb/mixer_s1810c.c", i32 519, i32 3}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/usb/mixer_s1810c.c", i32 520, i32 3}
!67 = !{ptr @snd_s1810c_ab_sw_info.texts, !68, !"texts", i1 false, i1 false}
!68 = !{!"../sound/usb/mixer_s1810c.c", i32 518, i32 27}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
