; ModuleID = '/llk/IR_all_yes/sound/usb/mixer_scarlett_gen2.c_pt.bc'
source_filename = "../sound/usb/mixer_scarlett_gen2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scarlett2_device_info = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], [10 x ptr], [6 x [2 x i32]], [3 x [10 x %struct.scarlett2_mux_entry]] }
%struct.scarlett2_mux_entry = type { i8, i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.scarlett2_config = type { i8, i8, i8 }
%struct.scarlett2_port = type { i16, ptr, i32, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.82, i32 }
%union.anon.82 = type { ptr }
%struct.anon.80 = type { i16, i16 }
%struct.anon.79 = type { i32, i32 }
%struct.scarlett2_usb_volume_status = type <{ [2 x i8], i8, [10 x i16], [10 x i16], [10 x i8], [10 x i8], [6 x i8], i16 }>
%struct.usb_mixer_interface = type { ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, ptr, ptr, i32, %struct.wait_queue_head, ptr, ptr, [6 x i8], ptr, i8, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.scarlett2_data = type { ptr, %struct.mutex, %struct.mutex, %struct.delayed_work, ptr, i8, i8, i16, i8, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], [10 x i8], [10 x i8], [2 x i8], [8 x i8], [2 x i8], [8 x i8], [2 x i8], i8, i8, i8, i8, [12 x i8], i8, ptr, ptr, [10 x ptr], [10 x ptr], [10 x ptr], [2 x ptr], [2 x ptr], [8 x ptr], [8 x ptr], [2 x ptr], [77 x ptr], ptr, ptr, ptr, [77 x i8], [300 x i8] }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_mixer_elem_info = type { %struct.usb_mixer_elem_list, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i8, i8, ptr }
%struct.usb_mixer_elem_list = type { ptr, ptr, ptr, i32, i8, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.78, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.78 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.scarlett2_usb_packet = type { i32, i16, i16, i32, i32, [0 x i8] }
%struct.anon.81 = type { i16, i16 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.73, [128 x i8] }
%union.anon.73 = type { %union.anon.75 }
%union.anon.75 = type { [64 x i64] }
%struct.anon.83 = type { i32, i32, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.69, [64 x i8] }
%union.anon.69 = type { %struct.anon.72, [40 x i8] }
%struct.anon.72 = type { i32, i32, [64 x i8], i64, i32 }
%struct.anon.84 = type { i16, i16, [77 x i32] }
%struct.anon.85 = type { i16, [25 x i16] }
%struct.anon.86 = type { i16, i16, i32 }

@snd_scarlett_gen2_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 3984, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [156 x i8], [36 x i8] } { [156 x i8] c"Focusrite Scarlett Gen 2/3 Mixer Driver disabled; use options snd_usb_audio vid=0x%04x pid=0x%04x device_setup=1 to enable and report any issues to g@b4.vu\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_scarlett_gen2_init\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/usb/mixer_scarlett_gen2.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_scarlett_gen2_init._entry_ptr = internal global ptr @snd_scarlett_gen2_init._entry, section ".printk_index", align 4
@snd_scarlett_gen2_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 3990, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Focusrite Scarlett Gen 2/3 Mixer Driver enabled pid=0x%04x\00", [37 x i8] zeroinitializer }, align 32
@snd_scarlett_gen2_init._entry_ptr.7 = internal global ptr @snd_scarlett_gen2_init._entry.5, section ".printk_index", align 4
@snd_scarlett_gen2_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 3996, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Error initialising Scarlett Mixer Driver: %d\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@snd_scarlett_gen2_init._entry_ptr.11 = internal global ptr @snd_scarlett_gen2_init._entry.8, section ".printk_index", align 4
@s6i6_gen2_info = internal constant { %struct.scarlett2_device_info, [48 x i8] } { %struct.scarlett2_device_info { i32 305496579, i8 0, i8 1, i8 0, i8 0, i8 0, i8 2, i8 0, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, [10 x i8] zeroinitializer, [10 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [6 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 4, i32 4], [2 x i32] [i32 2, i32 2], [2 x i32] zeroinitializer, [2 x i32] [i32 10, i32 18], [2 x i32] [i32 6, i32 6]], [3 x [10 x %struct.scarlett2_mux_entry]] [[10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 6 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 4 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 18 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 8 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 6 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 4 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 18 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 8 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 6 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 4 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 18 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 8 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer]] }, [48 x i8] zeroinitializer }, align 32
@s18i8_gen2_info = internal constant { %struct.scarlett2_device_info, [48 x i8] } { %struct.scarlett2_device_info { i32 305496580, i8 0, i8 1, i8 0, i8 0, i8 0, i8 2, i8 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, [10 x i8] zeroinitializer, [10 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr null, ptr null, ptr null, ptr null], [6 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 8, i32 6], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 8, i32 0], [2 x i32] [i32 10, i32 18], [2 x i32] [i32 8, i32 18]], [3 x [10 x %struct.scarlett2_mux_entry]] [[10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 18 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 6 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 18 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 8 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 14 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 6 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 18 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 8 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 6 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 18 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 4 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer]] }, [48 x i8] zeroinitializer }, align 32
@s18i20_gen2_info = internal constant { %struct.scarlett2_device_info, [48 x i8] } { %struct.scarlett2_device_info { i32 305496577, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, [10 x i8] zeroinitializer, [10 x ptr] [ptr @.str.16, ptr @.str.17, ptr null, ptr null, ptr null, ptr null, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], [6 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 8, i32 10], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 8, i32 8], [2 x i32] [i32 10, i32 18], [2 x i32] [i32 20, i32 18]], [3 x [10 x %struct.scarlett2_mux_entry]] [[10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 18 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 3, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 18 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 8 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 14 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 3, i8 0, i8 4 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 18 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 8 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 18 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 6 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer]] }, [48 x i8] zeroinitializer }, align 32
@solo_gen3_info = internal constant { %struct.scarlett2_device_info, [48 x i8] } { %struct.scarlett2_device_info { i32 305496593, i8 1, i8 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 1, i8 1, i8 0, [10 x i8] zeroinitializer, [10 x ptr] zeroinitializer, [6 x [2 x i32]] zeroinitializer, [3 x [10 x %struct.scarlett2_mux_entry]] zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@s2i2_gen3_info = internal constant { %struct.scarlett2_device_info, [48 x i8] } { %struct.scarlett2_device_info { i32 305496592, i8 1, i8 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 2, i8 1, i8 2, i8 2, i8 0, [10 x i8] zeroinitializer, [10 x ptr] zeroinitializer, [6 x [2 x i32]] zeroinitializer, [3 x [10 x %struct.scarlett2_mux_entry]] zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@s4i4_gen3_info = internal constant { %struct.scarlett2_device_info, [48 x i8] } { %struct.scarlett2_device_info { i32 305496594, i8 1, i8 1, i8 0, i8 0, i8 0, i8 2, i8 0, i8 2, i8 2, i8 1, i8 2, i8 0, i8 0, [10 x i8] zeroinitializer, [10 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [6 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 4, i32 4], [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] [i32 6, i32 8], [2 x i32] [i32 4, i32 6]], [3 x [10 x %struct.scarlett2_mux_entry]] [[10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 6 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 4 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 16 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 6 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 4 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 16 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 6 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 4 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 16 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer]] }, [48 x i8] zeroinitializer }, align 32
@s8i6_gen3_info = internal constant { %struct.scarlett2_device_info, [48 x i8] } { %struct.scarlett2_device_info { i32 305496595, i8 1, i8 1, i8 0, i8 0, i8 0, i8 2, i8 0, i8 2, i8 2, i8 1, i8 2, i8 0, i8 0, [10 x i8] zeroinitializer, [10 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [6 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 6, i32 4], [2 x i32] [i32 2, i32 2], [2 x i32] zeroinitializer, [2 x i32] [i32 8, i32 8], [2 x i32] [i32 6, i32 10]], [3 x [10 x %struct.scarlett2_mux_entry]] [[10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 4 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 5, i8 8, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 18 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 4 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 5, i8 8, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 18 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 4 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 5, i8 8, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 18 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer]] }, [48 x i8] zeroinitializer }, align 32
@s18i8_gen3_info = internal constant { %struct.scarlett2_device_info, [48 x i8] } { %struct.scarlett2_device_info { i32 305496596, i8 1, i8 1, i8 1, i8 1, i8 0, i8 2, i8 0, i8 4, i8 4, i8 2, i8 2, i8 0, i8 1, [10 x i8] c"\00\01\06\07\02\03\04\05\00\00", [10 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr null, ptr null], [6 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 8, i32 8], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 8, i32 0], [2 x i32] [i32 10, i32 20], [2 x i32] [i32 8, i32 20]], [3 x [10 x %struct.scarlett2_mux_entry]] [[10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 5, i8 12, i8 8 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 1, i8 6, i8 2 }, %struct.scarlett2_mux_entry { i8 1, i8 2, i8 4 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 5, i8 10, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 20 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 10 }, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 5, i8 12, i8 4 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 1, i8 6, i8 2 }, %struct.scarlett2_mux_entry { i8 1, i8 2, i8 4 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 5, i8 10, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 20 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 10 }, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 1, i8 6, i8 2 }, %struct.scarlett2_mux_entry { i8 1, i8 2, i8 4 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 20 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 10 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer]] }, [48 x i8] zeroinitializer }, align 32
@s18i20_gen3_info = internal constant { %struct.scarlett2_device_info, [48 x i8] } { %struct.scarlett2_device_info { i32 305496597, i8 1, i8 1, i8 1, i8 1, i8 1, i8 2, i8 0, i8 8, i8 8, i8 2, i8 4, i8 0, i8 0, [10 x i8] zeroinitializer, [10 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr null, ptr null, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], [6 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 9, i32 10], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 8, i32 8], [2 x i32] [i32 12, i32 25], [2 x i32] [i32 20, i32 20]], [3 x [10 x %struct.scarlett2_mux_entry]] [[10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 5, i8 10, i8 10 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 3, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 5, i8 8, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 25 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 12 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 5, i8 10, i8 8 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 3, i8 0, i8 8 }, %struct.scarlett2_mux_entry { i8 5, i8 8, i8 2 }, %struct.scarlett2_mux_entry { i8 4, i8 0, i8 25 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 10 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer], [10 x %struct.scarlett2_mux_entry] [%struct.scarlett2_mux_entry { i8 5, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 1, i8 0, i8 10 }, %struct.scarlett2_mux_entry { i8 2, i8 0, i8 2 }, %struct.scarlett2_mux_entry { i8 0, i8 0, i8 24 }, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer, %struct.scarlett2_mux_entry zeroinitializer]] }, [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Headphones 1 L\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Headphones 1 R\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Headphones 2 L\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Headphones 2 R\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Monitor L\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Monitor R\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Headphones L\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Headphones R\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Alt Monitor L\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Alt Monitor R\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Monitor 1 L\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Monitor 1 R\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Monitor 2 L\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Monitor 2 R\00", [20 x i8] zeroinitializer }, align 32
@scarlett2_init_private.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&private->usb_mutex\00", [44 x i8] zeroinitializer }, align 32
@scarlett2_init_private.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&private->data_mutex\00", [43 x i8] zeroinitializer }, align 32
@scarlett2_init_private.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&private->work)->work)\00", [53 x i8] zeroinitializer }, align 32
@scarlett2_init_private.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&private->work)->timer\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@scarlett2_usb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1097, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Scarlett Gen 2/3 USB request result cmd %x was %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"scarlett2_usb\00", [18 x i8] zeroinitializer }, align 32
@scarlett2_usb._entry_ptr = internal global ptr @scarlett2_usb._entry, section ".printk_index", align 4
@scarlett2_usb._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 1115, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Scarlett Gen 2/3 USB response result cmd %x was %d expected %d\0A\00", [32 x i8] zeroinitializer }, align 32
@scarlett2_usb._entry_ptr.37 = internal global ptr @scarlett2_usb._entry.35, section ".printk_index", align 4
@scarlett2_usb._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.2, i32 1138, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"Scarlett Gen 2/3 USB invalid response; cmd tx/rx %d/%d seq %d/%d size %d/%d error %d pad %d\0A\00", [35 x i8] zeroinitializer }, align 32
@scarlett2_usb._entry_ptr.40 = internal global ptr @scarlett2_usb._entry.38, section ".printk_index", align 4
@scarlett2_config_items = internal constant { [2 x [14 x %struct.scarlett2_config]], [44 x i8] } { [2 x [14 x %struct.scarlett2_config]] [[14 x %struct.scarlett2_config] [%struct.scarlett2_config zeroinitializer, %struct.scarlett2_config zeroinitializer, %struct.scarlett2_config zeroinitializer, %struct.scarlett2_config zeroinitializer, %struct.scarlett2_config { i8 8, i8 1, i8 7 }, %struct.scarlett2_config zeroinitializer, %struct.scarlett2_config { i8 4, i8 8, i8 6 }, %struct.scarlett2_config { i8 9, i8 1, i8 8 }, %struct.scarlett2_config { i8 6, i8 8, i8 3 }, %struct.scarlett2_config { i8 5, i8 8, i8 6 }, %struct.scarlett2_config { i8 7, i8 8, i8 4 }, %struct.scarlett2_config zeroinitializer, %struct.scarlett2_config zeroinitializer, %struct.scarlett2_config zeroinitializer], [14 x %struct.scarlett2_config] [%struct.scarlett2_config { i8 49, i8 8, i8 2 }, %struct.scarlett2_config { i8 52, i8 16, i8 1 }, %struct.scarlett2_config { i8 92, i8 8, i8 1 }, %struct.scarlett2_config { i8 102, i8 8, i8 3 }, %struct.scarlett2_config { i8 124, i8 8, i8 7 }, %struct.scarlett2_config { i8 -124, i8 8, i8 8 }, %struct.scarlett2_config { i8 -99, i8 8, i8 6 }, %struct.scarlett2_config { i8 -116, i8 8, i8 8 }, %struct.scarlett2_config { i8 -100, i8 1, i8 8 }, %struct.scarlett2_config { i8 -98, i8 8, i8 6 }, %struct.scarlett2_config zeroinitializer, %struct.scarlett2_config { i8 -97, i8 1, i8 10 }, %struct.scarlett2_config { i8 -96, i8 1, i8 10 }, %struct.scarlett2_config { i8 -80, i8 16, i8 10 }]], [44 x i8] zeroinitializer }, align 32
@scarlett2_mixer_values = internal constant { [173 x i16], [70 x i8] } { [173 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 3, i16 3, i16 3, i16 3, i16 3, i16 4, i16 4, i16 4, i16 4, i16 5, i16 5, i16 5, i16 6, i16 6, i16 6, i16 7, i16 7, i16 8, i16 8, i16 9, i16 9, i16 10, i16 10, i16 11, i16 12, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 23, i16 24, i16 25, i16 27, i16 29, i16 30, i16 32, i16 34, i16 36, i16 38, i16 41, i16 43, i16 46, i16 48, i16 51, i16 54, i16 57, i16 61, i16 65, i16 68, i16 73, i16 77, i16 81, i16 86, i16 91, i16 97, i16 103, i16 109, i16 115, i16 122, i16 129, i16 137, i16 145, i16 154, i16 163, i16 173, i16 183, i16 194, i16 205, i16 217, i16 230, i16 244, i16 259, i16 274, i16 290, i16 307, i16 326, i16 345, i16 365, i16 387, i16 410, i16 434, i16 460, i16 487, i16 516, i16 547, i16 579, i16 614, i16 650, i16 689, i16 730, i16 773, i16 819, i16 867, i16 919, i16 973, i16 1031, i16 1092, i16 1157, i16 1225, i16 1298, i16 1375, i16 1456, i16 1543, i16 1634, i16 1731, i16 1833, i16 1942, i16 2057, i16 2179, i16 2308, i16 2445, i16 2590, i16 2744, i16 2906, i16 3078, i16 3261, i16 3454, i16 3659, i16 3876, i16 4105, i16 4349, i16 4606, i16 4879, i16 5168, i16 5475, i16 5799, i16 6143, i16 6507, i16 6892, i16 7301, i16 7733, i16 8192, i16 8677, i16 9191, i16 9736, i16 10313, i16 10924, i16 11571, i16 12257, i16 12983, i16 13752, i16 14567, i16 15430, i16 16345], [70 x i8] zeroinitializer }, align 32
@scarlett2_usb_populate_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 1456, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"BUG: scarlett2_mux_id_to_num(%06x, OUT): %d >= %d\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"scarlett2_usb_populate_mux\00", [37 x i8] zeroinitializer }, align 32
@scarlett2_usb_populate_mux._entry_ptr = internal global ptr @scarlett2_usb_populate_mux._entry, section ".printk_index", align 4
@scarlett2_usb_populate_mux._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 1468, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"BUG: scarlett2_mux_id_to_num(%06x, IN): %d >= %d\00", [47 x i8] zeroinitializer }, align 32
@scarlett2_usb_populate_mux._entry_ptr.45 = internal global ptr @scarlett2_usb_populate_mux._entry.43, section ".printk_index", align 4
@scarlett2_ports = internal constant { [6 x %struct.scarlett2_port], [32 x i8] } { [6 x %struct.scarlett2_port] [%struct.scarlett2_port { i16 0, ptr @.str.46, i32 0, ptr null }, %struct.scarlett2_port { i16 128, ptr @.str.47, i32 1, ptr @.str.48 }, %struct.scarlett2_port { i16 384, ptr @.str.49, i32 1, ptr @.str.50 }, %struct.scarlett2_port { i16 512, ptr @.str.51, i32 1, ptr @.str.52 }, %struct.scarlett2_port { i16 768, ptr @.str.53, i32 65, ptr @.str.54 }, %struct.scarlett2_port { i16 1536, ptr @.str.55, i32 1, ptr @.str.56 }], [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Analogue %d\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Analogue Output %02d Playback\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"S/PDIF %d\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"S/PDIF Output %d Playback\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADAT %d\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ADAT Output %d Playback\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Mix %c\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Mixer Input %02d Capture\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCM %d\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PCM %02d Capture\00", [47 x i8] zeroinitializer }, align 32
@scarlett2_msd_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @scarlett2_msd_ctl_get, ptr @scarlett2_msd_ctl_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MSD Mode Switch\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Master HW Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@scarlett2_master_volume_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 17, i32 0, ptr @scarlett2_volume_ctl_info, ptr @scarlett2_master_volume_ctl_get, ptr null, %union.anon.82 { ptr @db_scale_scarlett2_gain }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Line %02d (%s) Playback Volume\00", [33 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Line %02d Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@scarlett2_line_out_volume_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 19, i32 0, ptr @scarlett2_volume_ctl_info, ptr @scarlett2_volume_ctl_get, ptr @scarlett2_volume_ctl_put, %union.anon.82 { ptr @db_scale_scarlett2_gain }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Line %02d Mute Playback Switch\00", [33 x i8] zeroinitializer }, align 32
@scarlett2_mute_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @scarlett2_mute_ctl_get, ptr @scarlett2_mute_ctl_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Line Out %02d Volume Control Playback Enum\00", [53 x i8] zeroinitializer }, align 32
@scarlett2_sw_hw_enum_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @scarlett2_sw_hw_enum_ctl_info, ptr @scarlett2_sw_hw_enum_ctl_get, ptr @scarlett2_sw_hw_enum_ctl_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@scarlett2_dim_mute_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @scarlett2_dim_mute_ctl_get, ptr @scarlett2_dim_mute_ctl_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@db_scale_scarlett2_gain = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 -12700, i32 0], [16 x i8] zeroinitializer }, align 32
@scarlett2_sw_hw_enum_ctl_info.values = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.64, ptr @.str.65], [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SW\00", [29 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HW\00", [29 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Mute Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Dim Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Line In %d %s Capture %s\00", [39 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Line In %d-%d %s Capture %s\00", [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Level\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Enum\00", [27 x i8] zeroinitializer }, align 32
@scarlett2_level_enum_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @scarlett2_level_enum_ctl_info, ptr @scarlett2_level_enum_ctl_get, ptr @scarlett2_level_enum_ctl_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Pad\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@scarlett2_pad_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @scarlett2_pad_ctl_get, ptr @scarlett2_pad_ctl_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Air\00", [28 x i8] zeroinitializer }, align 32
@scarlett2_air_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @scarlett2_air_ctl_get, ptr @scarlett2_air_ctl_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Phantom Power\00", [18 x i8] zeroinitializer }, align 32
@scarlett2_phantom_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @scarlett2_phantom_ctl_get, ptr @scarlett2_phantom_ctl_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@scarlett2_phantom_persistence_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @scarlett2_phantom_persistence_ctl_get, ptr @scarlett2_phantom_persistence_ctl_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Phantom Power Persistence Capture Switch\00", [55 x i8] zeroinitializer }, align 32
@scarlett2_level_enum_ctl_info.values = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.77, ptr @.str.78], [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Line\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Inst\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" Enum\00", [26 x i8] zeroinitializer }, align 32
@scarlett2_mux_src_enum_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @scarlett2_mux_src_enum_ctl_info, ptr @scarlett2_mux_src_enum_ctl_get, ptr @scarlett2_mux_src_enum_ctl_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Mix %c Input %02d Playback Volume\00", [62 x i8] zeroinitializer }, align 32
@scarlett2_mixer_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 19, i32 0, ptr @scarlett2_mixer_ctl_info, ptr @scarlett2_mixer_ctl_get, ptr @scarlett2_mixer_ctl_put, %union.anon.82 { ptr @db_scale_scarlett2_mixer }, i32 6 }, [48 x i8] zeroinitializer }, align 32
@db_scale_scarlett2_mixer = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 -8000, i32 600], [16 x i8] zeroinitializer }, align 32
@scarlett2_meter_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.58, i32 0, i32 5, i32 0, ptr @scarlett2_meter_ctl_info, ptr @scarlett2_meter_ctl_get, ptr null, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Level Meter\00", [20 x i8] zeroinitializer }, align 32
@scarlett2_sync_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 1, i32 0, ptr @scarlett2_sync_ctl_info, ptr @scarlett2_sync_ctl_get, ptr null, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Sync Status\00", [20 x i8] zeroinitializer }, align 32
@scarlett2_sync_ctl_info.texts = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.83, ptr @.str.84], [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Unlocked\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Locked\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Direct Monitor Playback Switch\00", [33 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Direct Monitor Playback Enum\00", [35 x i8] zeroinitializer }, align 32
@scarlett2_direct_monitor_ctl = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @scarlett2_direct_monitor_ctl_get, ptr @scarlett2_direct_monitor_ctl_put, %union.anon.82 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @scarlett2_direct_monitor_stereo_enum_ctl_info, ptr @scarlett2_direct_monitor_ctl_get, ptr @scarlett2_direct_monitor_ctl_put, %union.anon.82 zeroinitializer, i32 0 }], [32 x i8] zeroinitializer }, align 32
@scarlett2_direct_monitor_stereo_enum_ctl_info.values = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.46, ptr @.str.87, ptr @.str.88], [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Mono\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Stereo\00", [25 x i8] zeroinitializer }, align 32
@scarlett2_speaker_switch_enum_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @scarlett2_speaker_switch_enum_ctl_info, ptr @scarlett2_speaker_switch_enum_ctl_get, ptr @scarlett2_speaker_switch_enum_ctl_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Speaker Switching Playback Enum\00", [32 x i8] zeroinitializer }, align 32
@scarlett2_speaker_switch_enum_ctl_info.values = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.46, ptr @.str.90, ptr @.str.91], [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Main\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Alt\00", [28 x i8] zeroinitializer }, align 32
@scarlett2_talkback_enum_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @scarlett2_talkback_enum_ctl_info, ptr @scarlett2_talkback_enum_ctl_get, ptr @scarlett2_talkback_enum_ctl_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Talkback Playback Enum\00", [41 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Talkback Mix %c Playback Switch\00", [32 x i8] zeroinitializer }, align 32
@scarlett2_talkback_map_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @scarlett2_talkback_map_ctl_get, ptr @scarlett2_talkback_map_ctl_put, %union.anon.82 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@scarlett2_talkback_enum_ctl_info.values = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.94, ptr @.str.46, ptr @.str.95], [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"On\00", [29 x i8] zeroinitializer }, align 32
@scarlett2_init_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 3858, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: mixer urb already in use!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"scarlett2_init_notify\00", [42 x i8] zeroinitializer }, align 32
@scarlett2_init_notify._entry_ptr = internal global ptr @scarlett2_init_notify._entry, section ".printk_index", align 4
@switch.table.snd_scarlett_gen2_init = internal constant { [21 x ptr], [44 x i8] } { [21 x ptr] [ptr @s18i20_gen2_info, ptr @s6i6_gen2_info, ptr @s6i6_gen2_info, ptr @s18i8_gen2_info, ptr @s6i6_gen2_info, ptr @s6i6_gen2_info, ptr @s6i6_gen2_info, ptr @s6i6_gen2_info, ptr @s6i6_gen2_info, ptr @s6i6_gen2_info, ptr @s6i6_gen2_info, ptr @s6i6_gen2_info, ptr @s6i6_gen2_info, ptr @s6i6_gen2_info, ptr @s6i6_gen2_info, ptr @s2i2_gen3_info, ptr @solo_gen3_info, ptr @s4i4_gen3_info, ptr @s8i6_gen3_info, ptr @s18i8_gen3_info, ptr @s18i20_gen3_info], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.98 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3978, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3988, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3994, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [15 x i8] c"s6i6_gen2_info\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 426, i32 43 }
@___asan_gen_.135 = private unnamed_addr constant [16 x i8] c"s18i8_gen2_info\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 472, i32 43 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"s18i20_gen2_info\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 521, i32 43 }
@___asan_gen_.141 = private unnamed_addr constant [15 x i8] c"solo_gen3_info\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 575, i32 43 }
@___asan_gen_.144 = private unnamed_addr constant [15 x i8] c"s2i2_gen3_info\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 587, i32 43 }
@___asan_gen_.147 = private unnamed_addr constant [15 x i8] c"s4i4_gen3_info\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 598, i32 43 }
@___asan_gen_.150 = private unnamed_addr constant [15 x i8] c"s8i6_gen3_info\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 644, i32 43 }
@___asan_gen_.153 = private unnamed_addr constant [16 x i8] c"s18i8_gen3_info\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 697, i32 43 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"s18i20_gen3_info\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 767, i32 43 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 434, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 435, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 436, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 437, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 480, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 481, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 612, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 613, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 716, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 717, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 782, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 783, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 784, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 785, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3557, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3558, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3559, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1094, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1111, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1129, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [23 x i8] c"scarlett2_config_items\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 951, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant [23 x i8] c"scarlett2_mixer_values\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 158, i32 18 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1454, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1466, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [16 x i8] c"scarlett2_ports\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 247, i32 36 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 250, i32 16 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 254, i32 16 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 256, i32 16 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 260, i32 16 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 262, i32 16 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 266, i32 16 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 268, i32 16 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 272, i32 16 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 274, i32 16 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 278, i32 16 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 280, i32 16 }
@___asan_gen_.303 = private unnamed_addr constant [18 x i8] c"scarlett2_msd_ctl\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3452, i32 38 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3474, i32 16 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3454, i32 10 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2964, i32 26 }
@___asan_gen_.315 = private unnamed_addr constant [28 x i8] c"scarlett2_master_volume_ctl\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1830, i32 38 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2979, i32 6 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2983, i32 6 }
@___asan_gen_.324 = private unnamed_addr constant [30 x i8] c"scarlett2_line_out_volume_ctl\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1841, i32 38 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2993, i32 5 }
@___asan_gen_.330 = private unnamed_addr constant [19 x i8] c"scarlett2_mute_ctl\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1902, i32 38 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3011, i32 6 }
@___asan_gen_.336 = private unnamed_addr constant [25 x i8] c"scarlett2_sw_hw_enum_ctl\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2037, i32 38 }
@___asan_gen_.339 = private unnamed_addr constant [23 x i8] c"scarlett2_dim_mute_ctl\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2942, i32 38 }
@___asan_gen_.342 = private unnamed_addr constant [24 x i8] c"db_scale_scarlett2_gain\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1826, i32 14 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1927, i32 27 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1928, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1928, i32 9 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 231, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 231, i32 26 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3050, i32 20 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3051, i32 21 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3056, i32 5 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3056, i32 14 }
@___asan_gen_.372 = private unnamed_addr constant [25 x i8] c"scarlett2_level_enum_ctl\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2157, i32 38 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3065, i32 38 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3065, i32 45 }
@___asan_gen_.381 = private unnamed_addr constant [18 x i8] c"scarlett2_pad_ctl\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2215, i32 38 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3074, i32 38 }
@___asan_gen_.387 = private unnamed_addr constant [18 x i8] c"scarlett2_air_ctl\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2272, i32 38 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3085, i32 6 }
@___asan_gen_.393 = private unnamed_addr constant [22 x i8] c"scarlett2_phantom_ctl\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2330, i32 38 }
@___asan_gen_.396 = private unnamed_addr constant [34 x i8] c"scarlett2_phantom_persistence_ctl\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2381, i32 38 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3109, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2099, i32 27 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2100, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2100, i32 11 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3342, i32 14 }
@___asan_gen_.414 = private unnamed_addr constant [27 x i8] c"scarlett2_mux_src_enum_ctl\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3315, i32 38 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3208, i32 6 }
@___asan_gen_.420 = private unnamed_addr constant [20 x i8] c"scarlett2_mixer_ctl\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3179, i32 38 }
@___asan_gen_.423 = private unnamed_addr constant [25 x i8] c"db_scale_scarlett2_mixer\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3173, i32 14 }
@___asan_gen_.426 = private unnamed_addr constant [20 x i8] c"scarlett2_meter_ctl\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3389, i32 38 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3407, i32 10 }
@___asan_gen_.432 = private unnamed_addr constant [19 x i8] c"scarlett2_sync_ctl\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1682, i32 38 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1699, i32 16 }
@___asan_gen_.438 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1660, i32 21 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1661, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1661, i32 15 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2549, i32 10 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2550, i32 10 }
@___asan_gen_.453 = private unnamed_addr constant [29 x i8] c"scarlett2_direct_monitor_ctl\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2522, i32 38 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2512, i32 27 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2513, i32 10 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2513, i32 18 }
@___asan_gen_.465 = private unnamed_addr constant [34 x i8] c"scarlett2_speaker_switch_enum_ctl\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2689, i32 38 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2708, i32 9 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2562, i32 27 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2563, i32 10 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2563, i32 18 }
@___asan_gen_.480 = private unnamed_addr constant [28 x i8] c"scarlett2_talkback_enum_ctl\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2778, i32 38 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2860, i32 9 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2867, i32 5 }
@___asan_gen_.489 = private unnamed_addr constant [27 x i8] c"scarlett2_talkback_map_ctl\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2837, i32 38 }
@___asan_gen_.492 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2717, i32 27 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2718, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2718, i32 22 }
@___asan_gen_.501 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.507 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.508 = private constant [35 x i8] c"../sound/usb/mixer_scarlett_gen2.c\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 3857, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant [36 x i8] c"switch.table.snd_scarlett_gen2_init\00", align 1
@llvm.compiler.used = appending global [147 x ptr] [ptr @scarlett2_init_notify._entry, ptr @scarlett2_init_notify._entry_ptr, ptr @scarlett2_usb._entry, ptr @scarlett2_usb._entry.35, ptr @scarlett2_usb._entry.38, ptr @scarlett2_usb._entry_ptr, ptr @scarlett2_usb._entry_ptr.37, ptr @scarlett2_usb._entry_ptr.40, ptr @scarlett2_usb_populate_mux._entry, ptr @scarlett2_usb_populate_mux._entry.43, ptr @scarlett2_usb_populate_mux._entry_ptr, ptr @scarlett2_usb_populate_mux._entry_ptr.45, ptr @snd_scarlett_gen2_init._entry, ptr @snd_scarlett_gen2_init._entry.5, ptr @snd_scarlett_gen2_init._entry.8, ptr @snd_scarlett_gen2_init._entry_ptr, ptr @snd_scarlett_gen2_init._entry_ptr.11, ptr @snd_scarlett_gen2_init._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @s6i6_gen2_info, ptr @s18i8_gen2_info, ptr @s18i20_gen2_info, ptr @solo_gen3_info, ptr @s2i2_gen3_info, ptr @s4i4_gen3_info, ptr @s8i6_gen3_info, ptr @s18i8_gen3_info, ptr @s18i20_gen3_info, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @scarlett2_init_private.__key, ptr @.str.26, ptr @scarlett2_init_private.__key.27, ptr @.str.28, ptr @scarlett2_init_private.__key.29, ptr @.str.30, ptr @scarlett2_init_private.__key.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @scarlett2_config_items, ptr @scarlett2_mixer_values, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @scarlett2_ports, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @scarlett2_msd_ctl, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @scarlett2_master_volume_ctl, ptr @.str.60, ptr @.str.61, ptr @scarlett2_line_out_volume_ctl, ptr @.str.62, ptr @scarlett2_mute_ctl, ptr @.str.63, ptr @scarlett2_sw_hw_enum_ctl, ptr @scarlett2_dim_mute_ctl, ptr @db_scale_scarlett2_gain, ptr @scarlett2_sw_hw_enum_ctl_info.values, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @scarlett2_level_enum_ctl, ptr @.str.72, ptr @.str.73, ptr @scarlett2_pad_ctl, ptr @.str.74, ptr @scarlett2_air_ctl, ptr @.str.75, ptr @scarlett2_phantom_ctl, ptr @scarlett2_phantom_persistence_ctl, ptr @.str.76, ptr @scarlett2_level_enum_ctl_info.values, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @scarlett2_mux_src_enum_ctl, ptr @.str.80, ptr @scarlett2_mixer_ctl, ptr @db_scale_scarlett2_mixer, ptr @scarlett2_meter_ctl, ptr @.str.81, ptr @scarlett2_sync_ctl, ptr @.str.82, ptr @scarlett2_sync_ctl_info.texts, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @scarlett2_direct_monitor_ctl, ptr @scarlett2_direct_monitor_stereo_enum_ctl_info.values, ptr @.str.87, ptr @.str.88, ptr @scarlett2_speaker_switch_enum_ctl, ptr @.str.89, ptr @scarlett2_speaker_switch_enum_ctl_info.values, ptr @.str.90, ptr @.str.91, ptr @scarlett2_talkback_enum_ctl, ptr @.str.92, ptr @.str.93, ptr @scarlett2_talkback_map_ctl, ptr @scarlett2_talkback_enum_ctl_info.values, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @switch.table.snd_scarlett_gen2_init], section "llvm.metadata"
@0 = internal global [138 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_scarlett_gen2_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_scarlett_gen2_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_scarlett_gen2_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6i6_gen2_info to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s18i8_gen2_info to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s18i20_gen2_info to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_gen3_info to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2i2_gen3_info to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s4i4_gen3_info to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s8i6_gen3_info to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s18i8_gen3_info to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s18i20_gen3_info to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_init_private.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_init_private.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_init_private.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_init_private.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_usb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_usb._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_usb._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_config_items to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_mixer_values to i32), i32 346, i32 416, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_usb_populate_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_usb_populate_mux._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_ports to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_msd_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_master_volume_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_line_out_volume_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_mute_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_sw_hw_enum_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_dim_mute_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_scarlett2_gain to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_sw_hw_enum_ctl_info.values to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_level_enum_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_pad_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_air_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_phantom_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_phantom_persistence_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_level_enum_ctl_info.values to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_mux_src_enum_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_mixer_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_scarlett2_mixer to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_meter_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_sync_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_sync_ctl_info.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_direct_monitor_ctl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_direct_monitor_stereo_enum_ctl_info.values to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_speaker_switch_enum_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_speaker_switch_enum_ctl_info.values to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_talkback_enum_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_talkback_map_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_talkback_enum_ctl_info.values to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarlett2_init_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_scarlett_gen2_init to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_scarlett_gen2_init(ptr noundef %mixer) local_unnamed_addr #0 align 64 {
entry:
  %s.i145.i = alloca [44 x i8], align 1
  %s.i.i = alloca [44 x i8], align 1
  %req.i.i.i = alloca %struct.anon.80, align 2
  %data.i.i.i = alloca [25 x i16], align 2
  %req.i.i.i.i = alloca %struct.anon.79, align 4
  %data.i.i.i.i = alloca i32, align 4
  %volume_status.i.i = alloca %struct.scarlett2_usb_volume_status, align 1
  %buf.i.i = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 6
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mixer, align 4
  %setup = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %setup, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usb_id, align 4
  br i1 %tobool2.not, label %do.end, label %do.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %shr = lshr i32 %9, 16
  %conv6 = and i32 %9, 65535
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev4, ptr noundef nonnull @.str, i32 noundef %shr, i32 noundef %conv6) #14
  br label %cleanup

do.end10:                                         ; preds = %if.end
  %conv15 = and i32 %9, 65535
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev4, ptr noundef nonnull @.str.6, i32 noundef %conv15) #14
  %10 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mixer, align 4
  %usb_id1.i = getelementptr inbounds %struct.snd_usb_audio, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %usb_id1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usb_id1.i, align 4
  %switch.tableidx = add i32 %13, -305496577
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 21
  br i1 %14, label %switch.hole_check, label %do.end10.do.end20_crit_edge

do.end10.do.end20_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

switch.hole_check:                                ; preds = %do.end10
  %switch.shifted = lshr i32 2064397, %switch.tableidx
  %15 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %switch.lobit.not = icmp eq i32 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end20_crit_edge, label %switch.lookup

switch.hole_check.do.end20_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [21 x ptr], ptr @switch.table.snd_scarlett_gen2_init, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load ptr, ptr %switch.gep, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 1304) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %switch.lookup.do.end20_crit_edge, label %do.body.i.i

switch.lookup.do.end20_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

do.body.i.i:                                      ; preds = %switch.lookup
  %usb_mutex.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %call7.i.i.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %usb_mutex.i.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @scarlett2_init_private.__key) #11
  %data_mutex.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %call7.i.i.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %data_mutex.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @scarlett2_init_private.__key.27) #11
  %work.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %call7.i.i.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %work.i.i, i32 noundef 0) #11
  %18 = ptrtoint ptr %work.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %work.i.i, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %call7.i.i.i.i, i32 0, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @scarlett2_init_private.__key.29, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry13.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %call7.i.i.i.i, i32 0, i32 3, i32 0, i32 1
  %19 = ptrtoint ptr %entry13.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry13.i.i, ptr %entry13.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %call7.i.i.i.i, i32 0, i32 3, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry13.i.i, ptr %prev.i.i.i, align 4
  %func.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %call7.i.i.i.i, i32 0, i32 3, i32 0, i32 2
  %21 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @scarlett2_config_save_work, ptr %func.i.i, align 8
  %timer.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %call7.i.i.i.i, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.32, ptr noundef nonnull @scarlett2_init_private.__key.31) #11
  %private_data.i.i = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 16
  %22 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i.i.i, ptr %private_data.i.i, align 4
  %private_free.i.i = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 17
  %23 = ptrtoint ptr %private_free.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @scarlett2_private_free, ptr %private_free.i.i, align 4
  %private_suspend.i.i = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 18
  %24 = ptrtoint ptr %private_suspend.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @scarlett2_private_suspend, ptr %private_suspend.i.i, align 4
  %info24.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %call7.i.i.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %info24.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %switch.load, ptr %info24.i.i, align 8
  %port_count2.i.i.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %switch.load, i32 0, i32 16
  %26 = ptrtoint ptr %port_count2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port_count2.i.i.i, align 4
  %arrayidx5.i.i.i = getelementptr %struct.scarlett2_device_info, ptr %switch.load, i32 0, i32 16, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx5.i.i.i, align 4
  %arrayidx.1.i.i.i = getelementptr %struct.scarlett2_device_info, ptr %switch.load, i32 0, i32 16, i32 1
  %30 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.1.i.i.i, align 4
  %add.1.i.i.i = add i32 %31, %27
  %arrayidx5.1.i.i.i = getelementptr %struct.scarlett2_device_info, ptr %switch.load, i32 0, i32 16, i32 1, i32 1
  %32 = ptrtoint ptr %arrayidx5.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx5.1.i.i.i, align 4
  %add6.1.i.i.i = add i32 %33, %29
  %arrayidx.2.i.i.i = getelementptr %struct.scarlett2_device_info, ptr %switch.load, i32 0, i32 16, i32 2
  %34 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.2.i.i.i, align 4
  %add.2.i.i.i = add i32 %add.1.i.i.i, %35
  %arrayidx5.2.i.i.i = getelementptr %struct.scarlett2_device_info, ptr %switch.load, i32 0, i32 16, i32 2, i32 1
  %36 = ptrtoint ptr %arrayidx5.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx5.2.i.i.i, align 4
  %add6.2.i.i.i = add i32 %add6.1.i.i.i, %37
  %arrayidx.3.i.i.i = getelementptr %struct.scarlett2_device_info, ptr %switch.load, i32 0, i32 16, i32 3
  %38 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.3.i.i.i, align 4
  %add.3.i.i.i = add i32 %add.2.i.i.i, %39
  %arrayidx5.3.i.i.i = getelementptr %struct.scarlett2_device_info, ptr %switch.load, i32 0, i32 16, i32 3, i32 1
  %40 = ptrtoint ptr %arrayidx5.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx5.3.i.i.i, align 4
  %add6.3.i.i.i = add i32 %add6.2.i.i.i, %41
  %arrayidx.4.i.i.i = getelementptr %struct.scarlett2_device_info, ptr %switch.load, i32 0, i32 16, i32 4
  %42 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.4.i.i.i, align 4
  %add.4.i.i.i = add i32 %add.3.i.i.i, %43
  %arrayidx5.4.i.i.i = getelementptr %struct.scarlett2_device_info, ptr %switch.load, i32 0, i32 16, i32 4, i32 1
  %44 = ptrtoint ptr %arrayidx5.4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx5.4.i.i.i, align 4
  %add6.4.i.i.i = add i32 %add6.3.i.i.i, %45
  %arrayidx.5.i.i.i = getelementptr %struct.scarlett2_device_info, ptr %switch.load, i32 0, i32 16, i32 5
  %46 = ptrtoint ptr %arrayidx.5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.5.i.i.i, align 4
  %add.5.i.i.i = add i32 %add.4.i.i.i, %47
  %arrayidx5.5.i.i.i = getelementptr %struct.scarlett2_device_info, ptr %switch.load, i32 0, i32 16, i32 5, i32 1
  %48 = ptrtoint ptr %arrayidx5.5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx5.5.i.i.i, align 4
  %add6.5.i.i.i = add i32 %add6.4.i.i.i, %49
  %num_mux_srcs.i.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %call7.i.i.i.i, i32 0, i32 9
  %50 = ptrtoint ptr %num_mux_srcs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add.5.i.i.i, ptr %num_mux_srcs.i.i.i, align 4
  %num_mux_dsts.i.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %call7.i.i.i.i, i32 0, i32 10
  %51 = ptrtoint ptr %num_mux_dsts.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add6.5.i.i.i, ptr %num_mux_dsts.i.i.i, align 8
  %scarlett2_seq.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %call7.i.i.i.i, i32 0, i32 11
  %52 = ptrtoint ptr %scarlett2_seq.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %scarlett2_seq.i.i, align 4
  %53 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %mixer, ptr %call7.i.i.i.i, align 8
  %54 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mixer, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_usb_audio, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i.i, align 4
  %actconfig.i.i.i = getelementptr inbounds %struct.usb_device, ptr %57, i32 0, i32 20
  %58 = ptrtoint ptr %actconfig.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %actconfig.i.i.i, align 4
  %bNumInterfaces.i.i.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %bNumInterfaces.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bNumInterfaces.i.i.i, align 4
  %conv.i.i.i = zext i8 %61 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp31.not.i.i.i = icmp eq i8 %61, 0
  br i1 %cmp31.not.i.i.i, label %do.body.i.i.do.end20_crit_edge, label %do.body.i.i.for.body.i.i.i_crit_edge

do.body.i.i.for.body.i.i.i_crit_edge:             ; preds = %do.body.i.i
  br label %for.body.i.i.i

do.body.i.i.do.end20_crit_edge:                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.032.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.do.end20_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.cond.i.i.i.do.end20_crit_edge:                ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %do.body.i.i.for.body.i.i.i_crit_edge
  %i.032.i.i.i = phi i32 [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %do.body.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.usb_host_config, ptr %59, i32 0, i32 3, i32 %i.032.i.i.i
  %62 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  %bInterfaceClass.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %bInterfaceClass.i.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bInterfaceClass.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %67)
  %cmp6.not.i.i.i = icmp eq i8 %67, -1
  br i1 %cmp6.not.i.i.i, label %if.end5.i, label %for.cond.i.i.i

if.end5.i:                                        ; preds = %for.body.i.i.i
  %endpoint.i.i.i = getelementptr inbounds %struct.usb_host_interface, ptr %65, i32 0, i32 3
  %68 = ptrtoint ptr %endpoint.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %endpoint.i.i.i, align 4
  %bInterfaceNumber.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %65, i32 0, i32 2
  %70 = ptrtoint ptr %bInterfaceNumber.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bInterfaceNumber.i.i.i, align 1
  %bInterfaceNumber11.i.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %call7.i.i.i.i, i32 0, i32 5
  %72 = ptrtoint ptr %bInterfaceNumber11.i.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %bInterfaceNumber11.i.i.i, align 4
  %bEndpointAddress.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %69, i32 0, i32 2
  %73 = ptrtoint ptr %bEndpointAddress.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %bEndpointAddress.i.i.i, align 1
  %75 = and i8 %74, 15
  %bEndpointAddress14.i.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %call7.i.i.i.i, i32 0, i32 6
  %76 = ptrtoint ptr %bEndpointAddress14.i.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %bEndpointAddress14.i.i.i, align 1
  %wMaxPacketSize.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %69, i32 0, i32 4
  %77 = ptrtoint ptr %wMaxPacketSize.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %wMaxPacketSize.i.i.i, align 1
  %79 = tail call i16 @llvm.bswap.i16(i16 %78) #11
  %wMaxPacketSize15.i.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %call7.i.i.i.i, i32 0, i32 7
  %80 = ptrtoint ptr %wMaxPacketSize15.i.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %wMaxPacketSize15.i.i.i, align 2
  %bInterval.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %69, i32 0, i32 5
  %81 = ptrtoint ptr %bInterval.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %bInterval.i.i.i, align 1
  %bInterval16.i.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %call7.i.i.i.i, i32 0, i32 8
  %83 = ptrtoint ptr %bInterval16.i.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %bInterval16.i.i.i, align 8
  %84 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf.i.i) #11
  %86 = call ptr @memset(ptr %buf.i.i, i32 255, i32 24)
  %87 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %85, align 8
  %shl.i.i.i = shl i32 %88, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_pipe_type_check(ptr noundef %85, i32 noundef %or.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i110.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i110.i, label %if.end.i.i, label %if.end5.i.scarlett2_usb_init.exit.thread.i_crit_edge

if.end5.i.scarlett2_usb_init.exit.thread.i_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_usb_init.exit.thread.i

if.end.i.i:                                       ; preds = %if.end5.i
  %89 = ptrtoint ptr %bInterfaceNumber11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %bInterfaceNumber11.i.i.i, align 4
  %91 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %85, align 8
  %shl.i.i.i.i = shl i32 %92, 8
  %or1.i.i.i = or i32 %shl.i.i.i.i, -2147483520
  %conv2.i.i.i = zext i8 %90 to i16
  %call3.i.i.i = call i32 @snd_usb_ctl_msg(ptr noundef %85, i32 noundef %or1.i.i.i, i8 noundef zeroext 0, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext %conv2.i.i.i, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.scarlett2_usb_init.exit.thread.i_crit_edge, label %if.end6.i.i

if.end.i.i.scarlett2_usb_init.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_usb_init.exit.thread.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %93 = ptrtoint ptr %scarlett2_seq.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 1, ptr %scarlett2_seq.i.i, align 4
  %call7.i.i = call fastcc i32 @scarlett2_usb(ptr noundef %mixer, i32 noundef 0, ptr noundef null, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp8.i.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp8.i.i, label %if.end6.i.i.scarlett2_usb_init.exit.thread.i_crit_edge, label %scarlett2_usb_init.exit.i

if.end6.i.i.scarlett2_usb_init.exit.thread.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_usb_init.exit.thread.i

scarlett2_usb_init.exit.thread.i:                 ; preds = %if.end6.i.i.scarlett2_usb_init.exit.thread.i_crit_edge, %if.end.i.i.scarlett2_usb_init.exit.thread.i_crit_edge, %if.end5.i.scarlett2_usb_init.exit.thread.i_crit_edge
  %retval.0.i112.ph.i = phi i32 [ %call7.i.i, %if.end6.i.i.scarlett2_usb_init.exit.thread.i_crit_edge ], [ %call3.i.i.i, %if.end.i.i.scarlett2_usb_init.exit.thread.i_crit_edge ], [ -22, %if.end5.i.scarlett2_usb_init.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf.i.i) #11
  br label %do.end20

scarlett2_usb_init.exit.i:                        ; preds = %if.end6.i.i
  %94 = ptrtoint ptr %scarlett2_seq.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 1, ptr %scarlett2_seq.i.i, align 4
  %call13.i.i = call fastcc i32 @scarlett2_usb(ptr noundef %mixer, i32 noundef 2, ptr noundef null, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 84) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %cmp7.i = icmp slt i32 %call13.i.i, 0
  br i1 %cmp7.i, label %scarlett2_usb_init.exit.i.do.end20_crit_edge, label %if.end9.i

scarlett2_usb_init.exit.i.do.end20_crit_edge:     ; preds = %scarlett2_usb_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

if.end9.i:                                        ; preds = %scarlett2_usb_init.exit.i
  %95 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %private_data.i.i, align 4
  %info1.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %info1.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %info1.i.i, align 4
  %arrayidx3.i.i = getelementptr %struct.scarlett2_device_info, ptr %98, i32 0, i32 16, i32 1, i32 1
  %99 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx3.i.i, align 4
  %arrayidx4.i.i = getelementptr %struct.scarlett2_device_info, ptr %98, i32 0, i32 16, i32 4
  %101 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx4.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 71, ptr nonnull %volume_status.i.i) #11
  %103 = call ptr @memset(ptr %volume_status.i.i, i32 255, i32 71)
  %has_msd_mode.i.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %98, i32 0, i32 1
  %104 = ptrtoint ptr %has_msd_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %has_msd_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.not.i114.i = icmp eq i8 %105, 0
  br i1 %tobool.not.i114.i, label %if.end9.i.if.end11.i117.i_crit_edge, label %if.then.i.i

if.end9.i.if.end11.i117.i_crit_edge:              ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i117.i

if.then.i.i:                                      ; preds = %if.end9.i
  %msd_switch.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %96, i32 0, i32 33
  %call.i.i = call fastcc i32 @scarlett2_usb_get_config(ptr noundef %mixer, i32 noundef 6, i32 noundef 1, ptr noundef %msd_switch.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i115.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i115.i, label %if.then.i.i.scarlett2_read_configs.exit.thread.i_crit_edge, label %if.end.i116.i

if.then.i.i.scarlett2_read_configs.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_read_configs.exit.thread.i

if.end.i116.i:                                    ; preds = %if.then.i.i
  %106 = ptrtoint ptr %msd_switch.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %msd_switch.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool8.not.i.i = icmp eq i8 %107, 0
  br i1 %tobool8.not.i.i, label %if.end.i116.i.if.end11.i117.i_crit_edge, label %if.end.i116.i.scarlett2_read_configs.exit.thread180.i_crit_edge

if.end.i116.i.scarlett2_read_configs.exit.thread180.i_crit_edge: ; preds = %if.end.i116.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_read_configs.exit.thread180.i

if.end.i116.i.if.end11.i117.i_crit_edge:          ; preds = %if.end.i116.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i117.i

if.end11.i117.i:                                  ; preds = %if.end.i116.i.if.end11.i117.i_crit_edge, %if.end9.i.if.end11.i117.i_crit_edge
  %call12.i.i = call fastcc i32 @scarlett2_update_input_other(ptr noundef %mixer) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end11.i117.i.scarlett2_read_configs.exit.thread.i_crit_edge, label %if.end15.i.i

if.end11.i117.i.scarlett2_read_configs.exit.thread.i_crit_edge: ; preds = %if.end11.i117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_read_configs.exit.thread.i

if.end15.i.i:                                     ; preds = %if.end11.i117.i
  %call16.i.i = call fastcc i32 @scarlett2_update_monitor_other(ptr noundef %mixer) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %cmp17.i.i = icmp slt i32 %call16.i.i, 0
  br i1 %cmp17.i.i, label %if.end15.i.i.scarlett2_read_configs.exit.thread.i_crit_edge, label %if.end19.i.i

if.end15.i.i.scarlett2_read_configs.exit.thread.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_read_configs.exit.thread.i

if.end19.i.i:                                     ; preds = %if.end15.i.i
  %has_mixer.i.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %98, i32 0, i32 2
  %108 = ptrtoint ptr %has_mixer.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %has_mixer.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool20.not.i.i = icmp eq i8 %109, 0
  br i1 %tobool20.not.i.i, label %if.end19.i.i.scarlett2_read_configs.exit.thread180.i_crit_edge, label %if.end22.i.i

if.end19.i.i.scarlett2_read_configs.exit.thread180.i_crit_edge: ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_read_configs.exit.thread180.i

if.end22.i.i:                                     ; preds = %if.end19.i.i
  %110 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %private_data.i.i, align 4
  %sync_updated.i.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %111, i32 0, i32 12
  %112 = ptrtoint ptr %sync_updated.i.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %sync_updated.i.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i.i.i) #11
  %113 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %data.i.i.i.i, align 4, !annotation !274
  %call.i.i.i.i = call fastcc i32 @scarlett2_usb(ptr noundef %mixer, i32 noundef 24580, ptr noundef null, i16 noundef zeroext 0, ptr noundef nonnull %data.i.i.i.i, i16 noundef zeroext 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %scarlett2_update_sync.exit.thread.i.i, label %if.end26.i.i

scarlett2_update_sync.exit.thread.i.i:            ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i.i.i) #11
  br label %scarlett2_read_configs.exit.thread.i

if.end26.i.i:                                     ; preds = %if.end22.i.i
  %sync.i.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %111, i32 0, i32 18
  %114 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %data.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool.i.i.i.i = icmp ne i32 %115, 0
  %conv.i.i.i.i = zext i1 %tobool.i.i.i.i to i8
  %116 = ptrtoint ptr %sync.i.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv.i.i.i.i, ptr %sync.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i.i.i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req.i.i.i.i) #11
  %117 = getelementptr inbounds %struct.anon.79, ptr %req.i.i.i.i, i32 0, i32 1
  %118 = ptrtoint ptr %req.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 822083584, ptr %req.i.i.i.i, align 4
  %119 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 1191182336, ptr %117, align 4
  %call.i.i191.i.i = call fastcc i32 @scarlett2_usb(ptr noundef %mixer, i32 noundef 8388608, ptr noundef nonnull %req.i.i.i.i, i16 noundef zeroext 8, ptr noundef nonnull %volume_status.i.i, i16 noundef zeroext 71) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i191.i.i)
  %cmp28.i.i = icmp slt i32 %call.i.i191.i.i, 0
  br i1 %cmp28.i.i, label %if.end26.i.i.scarlett2_read_configs.exit.thread.i_crit_edge, label %if.end30.i.i

if.end26.i.i.scarlett2_read_configs.exit.thread.i_crit_edge: ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_read_configs.exit.thread.i

if.end30.i.i:                                     ; preds = %if.end26.i.i
  %line_out_hw_vol.i.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %98, i32 0, i32 3
  %120 = ptrtoint ptr %line_out_hw_vol.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %line_out_hw_vol.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool31.not.i.i = icmp eq i8 %121, 0
  br i1 %tobool31.not.i.i, label %if.end30.i.i.if.end39.i.i_crit_edge, label %for.body.preheader.i.i

if.end30.i.i.if.end39.i.i_crit_edge:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39.i.i

for.body.preheader.i.i:                           ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %122 = ptrtoint ptr %volume_status.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %volume_status.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool35.i.i = icmp ne i8 %123, 0
  %conv.i.i = zext i1 %tobool35.i.i to i8
  %arrayidx38.i.i = getelementptr %struct.scarlett2_data, ptr %96, i32 0, i32 25, i32 0
  %124 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv.i.i, ptr %arrayidx38.i.i, align 1
  %arrayidx34.1.i.i = getelementptr inbounds [2 x i8], ptr %volume_status.i.i, i32 0, i32 1
  %125 = ptrtoint ptr %arrayidx34.1.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx34.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool35.1.i.i = icmp ne i8 %126, 0
  %conv.1.i.i = zext i1 %tobool35.1.i.i to i8
  %arrayidx38.1.i.i = getelementptr %struct.scarlett2_data, ptr %96, i32 0, i32 25, i32 1
  %127 = ptrtoint ptr %arrayidx38.1.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv.1.i.i, ptr %arrayidx38.1.i.i, align 1
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %for.body.preheader.i.i, %if.end30.i.i.if.end39.i.i_crit_edge
  %master_vol.i.i = getelementptr inbounds %struct.scarlett2_usb_volume_status, ptr %volume_status.i.i, i32 0, i32 7
  %128 = ptrtoint ptr %master_vol.i.i to i32
  call void @__asan_loadN_noabort(i32 %128, i32 2)
  %129 = load i16, ptr %master_vol.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -127, i16 %129)
  %cmp41.i.i = icmp sgt i16 %129, -127
  %130 = call i16 @llvm.smin.i16(i16 %129, i16 0) #11
  %131 = trunc i16 %130 to i8
  %132 = add i8 %131, 127
  %conv50.i.i = select i1 %cmp41.i.i, i8 %132, i8 0
  %master_vol51.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %96, i32 0, i32 19
  %133 = ptrtoint ptr %master_vol51.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv50.i.i, ptr %master_vol51.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp53205.i.i = icmp sgt i32 %100, 0
  br i1 %cmp53205.i.i, label %for.body55.lr.ph.i.i, label %if.end39.i.i.for.cond112.preheader.i.i_crit_edge

if.end39.i.i.for.cond112.preheader.i.i_crit_edge: ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond112.preheader.i.i

for.body55.lr.ph.i.i:                             ; preds = %if.end39.i.i
  %dim_mute98.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %96, i32 0, i32 25
  br label %for.body55.i.i

for.cond112.preheader.i.i:                        ; preds = %cond.end74.i.i.for.cond112.preheader.i.i_crit_edge, %if.end39.i.i.for.cond112.preheader.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp113209.i.i = icmp sgt i32 %102, 0
  br i1 %cmp113209.i.i, label %for.body115.lr.ph.i.i, label %for.cond112.preheader.i.i.scarlett2_read_configs.exit.i_crit_edge

for.cond112.preheader.i.i.scarlett2_read_configs.exit.i_crit_edge: ; preds = %for.cond112.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_read_configs.exit.i

for.body115.lr.ph.i.i:                            ; preds = %for.cond112.preheader.i.i
  %134 = getelementptr inbounds %struct.anon.80, ptr %req.i.i.i, i32 0, i32 1
  br label %for.body115.i.i

for.body55.i.i:                                   ; preds = %cond.end74.i.i.for.body55.i.i_crit_edge, %for.body55.lr.ph.i.i
  %i.1206.i.i = phi i32 [ 0, %for.body55.lr.ph.i.i ], [ %inc110.i.i, %cond.end74.i.i.for.body55.i.i_crit_edge ]
  %135 = ptrtoint ptr %line_out_hw_vol.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %line_out_hw_vol.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool58.not.i.i = icmp eq i8 %136, 0
  br i1 %tobool58.not.i.i, label %land.end.thread.i.i, label %land.end.i.i

land.end.thread.i.i:                              ; preds = %for.body55.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx63196.i.i = getelementptr %struct.scarlett2_data, ptr %96, i32 0, i32 21, i32 %i.1206.i.i
  %137 = ptrtoint ptr %arrayidx63196.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %arrayidx63196.i.i, align 1
  br label %cond.false71.i.i

land.end.i.i:                                     ; preds = %for.body55.i.i
  %arrayidx59.i.i = getelementptr %struct.scarlett2_usb_volume_status, ptr %volume_status.i.i, i32 0, i32 5, i32 %i.1206.i.i
  %138 = ptrtoint ptr %arrayidx59.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx59.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool61.i.i = icmp ne i8 %139, 0
  %conv62.i.i = zext i1 %tobool61.i.i to i8
  %arrayidx63.i.i = getelementptr %struct.scarlett2_data, ptr %96, i32 0, i32 21, i32 %i.1206.i.i
  %140 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv62.i.i, ptr %arrayidx63.i.i, align 1
  br i1 %tobool61.i.i, label %land.end.i.i.cond.end74.i.i_crit_edge, label %land.end.i.i.cond.false71.i.i_crit_edge

land.end.i.i.cond.false71.i.i_crit_edge:          ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false71.i.i

land.end.i.i.cond.end74.i.i_crit_edge:            ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end74.i.i

cond.false71.i.i:                                 ; preds = %land.end.i.i.cond.false71.i.i_crit_edge, %land.end.thread.i.i
  %arrayidx72.i.i = getelementptr %struct.scarlett2_usb_volume_status, ptr %volume_status.i.i, i32 0, i32 2, i32 %i.1206.i.i
  br label %cond.end74.i.i

cond.end74.i.i:                                   ; preds = %cond.false71.i.i, %land.end.i.i.cond.end74.i.i_crit_edge
  %arrayidx72.sink.i.i = phi ptr [ %arrayidx72.i.i, %cond.false71.i.i ], [ %master_vol.i.i, %land.end.i.i.cond.end74.i.i_crit_edge ]
  %tobool96.not.i.i = phi i1 [ true, %cond.false71.i.i ], [ false, %land.end.i.i.cond.end74.i.i_crit_edge ]
  %141 = ptrtoint ptr %arrayidx72.sink.i.i to i32
  call void @__asan_loadN_noabort(i32 %141, i32 2)
  %142 = load i16, ptr %arrayidx72.sink.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -127, i16 %142)
  %cmp78.i.i = icmp sgt i16 %142, -127
  %143 = call i16 @llvm.smin.i16(i16 %142, i16 0) #11
  %144 = trunc i16 %143 to i8
  %145 = add i8 %144, 127
  %conv91.i.i = select i1 %cmp78.i.i, i8 %145, i8 0
  %arrayidx92.i.i = getelementptr %struct.scarlett2_data, ptr %96, i32 0, i32 20, i32 %i.1206.i.i
  %146 = ptrtoint ptr %arrayidx92.i.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv91.i.i, ptr %arrayidx92.i.i, align 1
  %arrayidx102.i.i = getelementptr %struct.scarlett2_usb_volume_status, ptr %volume_status.i.i, i32 0, i32 4, i32 %i.1206.i.i
  %spec.select = select i1 %tobool96.not.i.i, ptr %arrayidx102.i.i, ptr %dim_mute98.i.i
  %147 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %147)
  %cond105.in190.i.i = load i8, ptr %spec.select, align 1
  %arrayidx108.i.i = getelementptr %struct.scarlett2_data, ptr %96, i32 0, i32 22, i32 %i.1206.i.i
  %148 = ptrtoint ptr %arrayidx108.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %cond105.in190.i.i, ptr %arrayidx108.i.i, align 1
  %inc110.i.i = add nuw nsw i32 %i.1206.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc110.i.i, %100
  br i1 %exitcond.not.i.i, label %cond.end74.i.i.for.cond112.preheader.i.i_crit_edge, label %cond.end74.i.i.for.body55.i.i_crit_edge

cond.end74.i.i.for.body55.i.i_crit_edge:          ; preds = %cond.end74.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body55.i.i

cond.end74.i.i.for.cond112.preheader.i.i_crit_edge: ; preds = %cond.end74.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond112.preheader.i.i

for.body115.i.i:                                  ; preds = %for.inc121.i.i.for.body115.i.i_crit_edge, %for.body115.lr.ph.i.i
  %i.2210.i.i = phi i32 [ 0, %for.body115.lr.ph.i.i ], [ %inc122.i.i, %for.inc121.i.i.for.body115.i.i_crit_edge ]
  %149 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %private_data.i.i, align 4
  %info1.i.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %150, i32 0, i32 4
  %151 = ptrtoint ptr %info1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %info1.i.i.i, align 4
  %arrayidx2.i.i.i = getelementptr %struct.scarlett2_device_info, ptr %152, i32 0, i32 16, i32 4, i32 1
  %153 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx2.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i.i.i) #11
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %data.i.i.i) #11
  %155 = call ptr @memset(ptr %data.i.i.i, i32 255, i32 50)
  %conv.i.i118.i = trunc i32 %i.2210.i.i to i16
  %156 = call i16 @llvm.bswap.i16(i16 %conv.i.i118.i) #11
  %157 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %156, ptr %req.i.i.i, align 2
  %conv4.i.i.i = trunc i32 %154 to i16
  %158 = call i16 @llvm.bswap.i16(i16 %conv4.i.i.i) #11
  %159 = ptrtoint ptr %134 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %158, ptr %134, align 2
  %conv5.i.i.i = shl i16 %conv4.i.i.i, 1
  %call.i.i.i = call fastcc i32 @scarlett2_usb(ptr noundef %mixer, i32 noundef 8193, ptr noundef nonnull %req.i.i.i, i16 noundef zeroext 4, ptr noundef nonnull %data.i.i.i, i16 noundef zeroext %conv5.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %scarlett2_usb_get_mix.exit.i.i, label %if.end.i.i119.i

if.end.i.i119.i:                                  ; preds = %for.body115.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp855.i.i.i = icmp sgt i32 %154, 0
  br i1 %cmp855.i.i.i, label %for.body.preheader.i.i.i, label %if.end.i.i119.i.for.inc121.i.i_crit_edge

if.end.i.i119.i.for.inc121.i.i_crit_edge:         ; preds = %if.end.i.i119.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc121.i.i

for.body.preheader.i.i.i:                         ; preds = %if.end.i.i119.i
  %mul7.i.i.i = mul i32 %154, %i.2210.i.i
  br label %for.body.i.i120.i

for.body.i.i120.i:                                ; preds = %.for.body.i.i120.i_crit_edge, %for.body.preheader.i.i.i
  %j.057.i.i.i = phi i32 [ %inc30.i.i.i, %.for.body.i.i120.i_crit_edge ], [ %mul7.i.i.i, %for.body.preheader.i.i.i ]
  %i.056.i.i.i = phi i32 [ %inc29.i.i.i, %.for.body.i.i120.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %arrayidx10.i.i.i = getelementptr [25 x i16], ptr %data.i.i.i, i32 0, i32 %i.056.i.i.i
  %160 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %arrayidx10.i.i.i, align 2
  %162 = call i16 @llvm.bswap.i16(i16 %161) #11
  br label %for.body14.i.i.i

for.body14.i.i.i:                                 ; preds = %for.inc.i.i.i.for.body14.i.i.i_crit_edge, %for.body.i.i120.i
  %k.054.i.i.i = phi i32 [ 0, %for.body.i.i120.i ], [ %inc.i.i121.i, %for.inc.i.i.i.for.body14.i.i.i_crit_edge ]
  %arrayidx15.i.i.i = getelementptr [173 x i16], ptr @scarlett2_mixer_values, i32 0, i32 %k.054.i.i.i
  %163 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %arrayidx15.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %164, i16 %162)
  %cmp18.not.i.i.i = icmp ult i16 %164, %162
  br i1 %cmp18.not.i.i.i, label %for.inc.i.i.i, label %for.end.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body14.i.i.i
  %inc.i.i121.i = add nuw nsw i32 %k.054.i.i.i, 1
  %exitcond.not.i.i122.i = icmp eq i32 %inc.i.i121.i, 173
  br i1 %exitcond.not.i.i122.i, label %for.inc.i.i.i.for.end.thread.i.i.i_crit_edge, label %for.inc.i.i.i.for.body14.i.i.i_crit_edge

for.inc.i.i.i.for.body14.i.i.i_crit_edge:         ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body14.i.i.i

for.inc.i.i.i.for.end.thread.i.i.i_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread.i.i.i

for.end.i.i.i:                                    ; preds = %for.body14.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 173, i32 %k.054.i.i.i)
  %cmp22.i.i.i = icmp eq i32 %k.054.i.i.i, 173
  %165 = trunc i32 %k.054.i.i.i to i8
  br i1 %cmp22.i.i.i, label %for.end.i.i.i.for.end.thread.i.i.i_crit_edge, label %for.end.i.i.i._crit_edge

for.end.i.i.i._crit_edge:                         ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %166

for.end.i.i.i.for.end.thread.i.i.i_crit_edge:     ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread.i.i.i

for.end.thread.i.i.i:                             ; preds = %for.end.i.i.i.for.end.thread.i.i.i_crit_edge, %for.inc.i.i.i.for.end.thread.i.i.i_crit_edge
  br label %166

166:                                              ; preds = %for.end.thread.i.i.i, %for.end.i.i.i._crit_edge
  %167 = phi i8 [ -84, %for.end.thread.i.i.i ], [ %165, %for.end.i.i.i._crit_edge ]
  %arrayidx27.i.i.i = getelementptr %struct.scarlett2_data, ptr %150, i32 0, i32 49, i32 %j.057.i.i.i
  %168 = ptrtoint ptr %arrayidx27.i.i.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %167, ptr %arrayidx27.i.i.i, align 1
  %inc29.i.i.i = add nuw nsw i32 %i.056.i.i.i, 1
  %inc30.i.i.i = add i32 %j.057.i.i.i, 1
  %exitcond58.not.i.i.i = icmp eq i32 %inc29.i.i.i, %154
  br i1 %exitcond58.not.i.i.i, label %.for.inc121.i.i_crit_edge, label %.for.body.i.i120.i_crit_edge

.for.body.i.i120.i_crit_edge:                     ; preds = %166
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i120.i

.for.inc121.i.i_crit_edge:                        ; preds = %166
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc121.i.i

scarlett2_usb_get_mix.exit.i.i:                   ; preds = %for.body115.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %data.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i.i) #11
  br label %scarlett2_read_configs.exit.thread.i

for.inc121.i.i:                                   ; preds = %.for.inc121.i.i_crit_edge, %if.end.i.i119.i.for.inc121.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %data.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i.i) #11
  %inc122.i.i = add nuw nsw i32 %i.2210.i.i, 1
  %exitcond214.not.i.i = icmp eq i32 %inc122.i.i, %102
  br i1 %exitcond214.not.i.i, label %for.inc121.i.i.scarlett2_read_configs.exit.i_crit_edge, label %for.inc121.i.i.for.body115.i.i_crit_edge

for.inc121.i.i.for.body115.i.i_crit_edge:         ; preds = %for.inc121.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body115.i.i

for.inc121.i.i.scarlett2_read_configs.exit.i_crit_edge: ; preds = %for.inc121.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_read_configs.exit.i

scarlett2_read_configs.exit.thread.i:             ; preds = %scarlett2_usb_get_mix.exit.i.i, %if.end26.i.i.scarlett2_read_configs.exit.thread.i_crit_edge, %scarlett2_update_sync.exit.thread.i.i, %if.end15.i.i.scarlett2_read_configs.exit.thread.i_crit_edge, %if.end11.i117.i.scarlett2_read_configs.exit.thread.i_crit_edge, %if.then.i.i.scarlett2_read_configs.exit.thread.i_crit_edge
  %retval.0.i123.ph.i = phi i32 [ %call.i.i.i.i, %scarlett2_update_sync.exit.thread.i.i ], [ %call.i.i.i, %scarlett2_usb_get_mix.exit.i.i ], [ %call.i.i191.i.i, %if.end26.i.i.scarlett2_read_configs.exit.thread.i_crit_edge ], [ %call16.i.i, %if.end15.i.i.scarlett2_read_configs.exit.thread.i_crit_edge ], [ %call12.i.i, %if.end11.i117.i.scarlett2_read_configs.exit.thread.i_crit_edge ], [ %call.i.i, %if.then.i.i.scarlett2_read_configs.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 71, ptr nonnull %volume_status.i.i) #11
  br label %do.end20

scarlett2_read_configs.exit.thread180.i:          ; preds = %if.end19.i.i.scarlett2_read_configs.exit.thread180.i_crit_edge, %if.end.i116.i.scarlett2_read_configs.exit.thread180.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 71, ptr nonnull %volume_status.i.i) #11
  br label %if.end13.i

scarlett2_read_configs.exit.i:                    ; preds = %for.inc121.i.i.scarlett2_read_configs.exit.i_crit_edge, %for.cond112.preheader.i.i.scarlett2_read_configs.exit.i_crit_edge
  %call124.i.i = call fastcc i32 @scarlett2_usb_get_mux(ptr noundef %mixer) #11
  call void @llvm.lifetime.end.p0(i64 71, ptr nonnull %volume_status.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124.i.i)
  %cmp11.i = icmp slt i32 %call124.i.i, 0
  br i1 %cmp11.i, label %scarlett2_read_configs.exit.i.do.end20_crit_edge, label %scarlett2_read_configs.exit.i.if.end13.i_crit_edge

scarlett2_read_configs.exit.i.if.end13.i_crit_edge: ; preds = %scarlett2_read_configs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

scarlett2_read_configs.exit.i.do.end20_crit_edge: ; preds = %scarlett2_read_configs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

if.end13.i:                                       ; preds = %scarlett2_read_configs.exit.i.if.end13.i_crit_edge, %scarlett2_read_configs.exit.thread180.i
  %169 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %private_data.i.i, align 4
  %info1.i125.i = getelementptr inbounds %struct.scarlett2_data, ptr %170, i32 0, i32 4
  %171 = ptrtoint ptr %info1.i125.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %info1.i125.i, align 4
  %has_msd_mode.i126.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %has_msd_mode.i126.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %has_msd_mode.i126.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool.not.i127.i = icmp eq i8 %174, 0
  br i1 %tobool.not.i127.i, label %if.end13.i.if.end17.i_crit_edge, label %if.end.i129.i

if.end13.i.if.end17.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.end.i129.i:                                    ; preds = %if.end13.i
  %msd_switch.i128.i = getelementptr inbounds %struct.scarlett2_data, ptr %170, i32 0, i32 33
  %175 = ptrtoint ptr %msd_switch.i128.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %msd_switch.i128.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool2.not.i.i = icmp eq i8 %176, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i, label %if.end.i129.i.if.end5.i.i_crit_edge

if.end.i129.i.if.end5.i.i_crit_edge:              ; preds = %if.end.i129.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i129.i
  %177 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %mixer, align 4
  %setup.i.i = getelementptr inbounds %struct.snd_usb_audio, ptr %178, i32 0, i32 24
  %179 = ptrtoint ptr %setup.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %setup.i.i, align 4
  %and.i.i = and i32 %180, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.if.end17.i_crit_edge, label %land.lhs.true.i.i.if.end5.i.i_crit_edge

land.lhs.true.i.i.if.end5.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

land.lhs.true.i.i.if.end17.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.end5.i.i:                                      ; preds = %land.lhs.true.i.i.if.end5.i.i_crit_edge, %if.end.i129.i.if.end5.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %181 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %181, i32 noundef 3520, i32 noundef 152) #15
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end5.i.i.do.end20_crit_edge, label %if.end.i.i130.i

if.end5.i.i.do.end20_crit_edge:                   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

if.end.i.i130.i:                                  ; preds = %if.end5.i.i
  %182 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %mixer, ptr %call7.i.i.i.i.i, align 8
  %control.i.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %183 = ptrtoint ptr %control.i.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %control.i.i.i, align 4
  %id.i.i.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %184 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 0, ptr %id.i.i.i, align 4
  %channels3.i.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i.i.i, i32 0, i32 6
  %185 = ptrtoint ptr %channels3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 1, ptr %channels3.i.i.i, align 8
  %val_type.i.i.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i.i.i, i32 0, i32 7
  %186 = ptrtoint ptr %val_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 8, ptr %val_type.i.i.i, align 4
  %call4.i.i.i = call ptr @snd_ctl_new1(ptr noundef nonnull @scarlett2_msd_ctl, ptr noundef nonnull %call7.i.i.i.i.i) #11
  %tobool5.not.i.i.i = icmp eq ptr %call4.i.i.i, null
  br i1 %tobool5.not.i.i.i, label %if.then6.i.i.i, label %scarlett2_add_msd_ctl.exit.i

if.then6.i.i.i:                                   ; preds = %if.end.i.i130.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #11
  br label %do.end20

scarlett2_add_msd_ctl.exit.i:                     ; preds = %if.end.i.i130.i
  %private_free.i.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call4.i.i.i, i32 0, i32 9
  %187 = ptrtoint ptr %private_free.i.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i.i.i, align 4
  %name9.i.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call4.i.i.i, i32 0, i32 1, i32 4
  %call10.i.i.i = call i32 @strscpy(ptr noundef %name9.i.i.i, ptr noundef nonnull @.str.57, i32 noundef 44) #11
  %call12.i.i.i = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef nonnull %call4.i.i.i, i1 noundef zeroext true) #11
  %188 = call i32 @llvm.smin.i32(i32 %call12.i.i.i, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i)
  %cmp15.i = icmp slt i32 %call12.i.i.i, 0
  br i1 %cmp15.i, label %scarlett2_add_msd_ctl.exit.i.snd_scarlett_gen2_controls_create.exit_crit_edge, label %scarlett2_add_msd_ctl.exit.i.if.end17.i_crit_edge

scarlett2_add_msd_ctl.exit.i.if.end17.i_crit_edge: ; preds = %scarlett2_add_msd_ctl.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

scarlett2_add_msd_ctl.exit.i.snd_scarlett_gen2_controls_create.exit_crit_edge: ; preds = %scarlett2_add_msd_ctl.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_scarlett_gen2_controls_create.exit

if.end17.i:                                       ; preds = %scarlett2_add_msd_ctl.exit.i.if.end17.i_crit_edge, %land.lhs.true.i.i.if.end17.i_crit_edge, %if.end13.i.if.end17.i_crit_edge
  %189 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %private_data.i.i, align 4
  %msd_switch.i = getelementptr inbounds %struct.scarlett2_data, ptr %190, i32 0, i32 33
  %191 = ptrtoint ptr %msd_switch.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %msd_switch.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool18.not.i = icmp eq i8 %192, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end17.i.cleanup_crit_edge

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20.i:                                       ; preds = %if.end17.i
  %info1.i133.i = getelementptr inbounds %struct.scarlett2_data, ptr %190, i32 0, i32 4
  %193 = ptrtoint ptr %info1.i133.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %info1.i133.i, align 4
  %arrayidx3.i134.i = getelementptr %struct.scarlett2_device_info, ptr %194, i32 0, i32 16, i32 1, i32 1
  %195 = ptrtoint ptr %arrayidx3.i134.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx3.i134.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %s.i.i) #11
  %197 = call ptr @memset(ptr %s.i.i, i32 255, i32 44)
  %line_out_hw_vol.i135.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %194, i32 0, i32 3
  %198 = ptrtoint ptr %line_out_hw_vol.i135.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %line_out_hw_vol.i135.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool.not.i136.i = icmp eq i8 %199, 0
  br i1 %tobool.not.i136.i, label %if.end20.i.if.end8.i.i_crit_edge, label %if.then.i138.i

if.end20.i.if.end8.i.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

if.then.i138.i:                                   ; preds = %if.end20.i
  %200 = call ptr @memcpy(ptr %s.i.i, ptr @.str.59, i32 26)
  %master_vol_ctl.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %190, i32 0, i32 35
  %call6.i.i = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @scarlett2_master_volume_ctl, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %s.i.i, ptr noundef %master_vol_ctl.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp.i137.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp.i137.i, label %if.then.i138.i.scarlett2_add_line_out_ctls.exit.thread.i_crit_edge, label %if.then.i138.i.if.end8.i.i_crit_edge

if.then.i138.i.if.end8.i.i_crit_edge:             ; preds = %if.then.i138.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

if.then.i138.i.scarlett2_add_line_out_ctls.exit.thread.i_crit_edge: ; preds = %if.then.i138.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_add_line_out_ctls.exit.thread.i

if.end8.i.i:                                      ; preds = %if.then.i138.i.if.end8.i.i_crit_edge, %if.end20.i.if.end8.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %cmp9143.i.i = icmp sgt i32 %196, 0
  br i1 %cmp9143.i.i, label %for.body.lr.ph.i.i, label %if.end8.i.i.for.end.i.i_crit_edge

if.end8.i.i.for.end.i.i_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end8.i.i
  %speaker_switching_switch.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %190, i32 0, i32 30
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0144.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add19.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %201 = ptrtoint ptr %info1.i133.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %info1.i133.i, align 4
  %line_out_remap_enable.i.i.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %202, i32 0, i32 13
  %203 = ptrtoint ptr %line_out_remap_enable.i.i.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %line_out_remap_enable.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool.not.i.i139.i = icmp eq i8 %204, 0
  br i1 %tobool.not.i.i139.i, label %for.body.i.i.line_out_remap.exit.i.i_crit_edge, label %if.end.i.i142.i

for.body.i.i.line_out_remap.exit.i.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %line_out_remap.exit.i.i

if.end.i.i142.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i140.i = getelementptr %struct.scarlett2_device_info, ptr %202, i32 0, i32 14, i32 %i.0144.i.i
  %205 = ptrtoint ptr %arrayidx.i.i140.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx.i.i140.i, align 1
  %conv.i.i141.i = zext i8 %206 to i32
  br label %line_out_remap.exit.i.i

line_out_remap.exit.i.i:                          ; preds = %if.end.i.i142.i, %for.body.i.i.line_out_remap.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv.i.i141.i, %if.end.i.i142.i ], [ %i.0144.i.i, %for.body.i.i.line_out_remap.exit.i.i_crit_edge ]
  %arrayidx11.i.i = getelementptr %struct.scarlett2_device_info, ptr %194, i32 0, i32 15, i32 %i.0144.i.i
  %207 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %arrayidx11.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %208, null
  %add19.i.i = add nuw nsw i32 %i.0144.i.i, 1
  br i1 %tobool12.not.i.i, label %if.else.i.i, label %if.then13.i.i

if.then13.i.i:                                    ; preds = %line_out_remap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call17.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %s.i.i, i32 noundef 44, ptr noundef nonnull @.str.60, i32 noundef %add19.i.i, ptr noundef nonnull %208) #11
  br label %if.end21.i.i

if.else.i.i:                                      ; preds = %line_out_remap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call20.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %s.i.i, i32 noundef 44, ptr noundef nonnull @.str.61, i32 noundef %add19.i.i) #11
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.else.i.i, %if.then13.i.i
  %arrayidx23.i.i = getelementptr %struct.scarlett2_data, ptr %190, i32 0, i32 36, i32 %i.0144.i.i
  %call24.i.i = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @scarlett2_line_out_volume_ctl, i32 noundef %i.0144.i.i, i32 noundef 1, ptr noundef nonnull %s.i.i, ptr noundef %arrayidx23.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %cmp25.i.i = icmp slt i32 %call24.i.i, 0
  br i1 %cmp25.i.i, label %if.end21.i.i.scarlett2_add_line_out_ctls.exit.thread.i_crit_edge, label %if.end27.i.i

if.end21.i.i.scarlett2_add_line_out_ctls.exit.thread.i_crit_edge: ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_add_line_out_ctls.exit.thread.i

if.end27.i.i:                                     ; preds = %if.end21.i.i
  %call30.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %s.i.i, i32 noundef 44, ptr noundef nonnull @.str.62, i32 noundef %add19.i.i) #11
  %arrayidx32.i.i = getelementptr %struct.scarlett2_data, ptr %190, i32 0, i32 38, i32 %i.0144.i.i
  %call33.i.i = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @scarlett2_mute_ctl, i32 noundef %i.0144.i.i, i32 noundef 1, ptr noundef nonnull %s.i.i, ptr noundef %arrayidx32.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %cmp34.i.i = icmp slt i32 %call33.i.i, 0
  br i1 %cmp34.i.i, label %if.end27.i.i.scarlett2_add_line_out_ctls.exit.thread.i_crit_edge, label %if.end36.i.i

if.end27.i.i.scarlett2_add_line_out_ctls.exit.thread.i_crit_edge: ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_add_line_out_ctls.exit.thread.i

if.end36.i.i:                                     ; preds = %if.end27.i.i
  %arrayidx37.i.i = getelementptr %struct.scarlett2_data, ptr %190, i32 0, i32 21, i32 %retval.0.i.i.i
  %209 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx37.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool38.not.i.i = icmp eq i8 %210, 0
  br i1 %tobool38.not.i.i, label %if.end36.i.i.if.end40.i.i_crit_edge, label %if.then39.i.i

if.end36.i.i.if.end40.i.i_crit_edge:              ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i.i

if.then39.i.i:                                    ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %211 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %private_data.i.i, align 4
  %213 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %mixer, align 4
  %card1.i.i.i = getelementptr inbounds %struct.snd_usb_audio, ptr %214, i32 0, i32 2
  %215 = ptrtoint ptr %card1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %card1.i.i.i, align 4
  %arrayidx9.i.i.i = getelementptr %struct.scarlett2_data, ptr %212, i32 0, i32 36, i32 %i.0144.i.i
  %217 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %arrayidx9.i.i.i, align 4
  %access12.i.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %218, i32 1, i32 0, i32 1
  %219 = ptrtoint ptr %access12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %access12.i.i.i, align 4
  %and.i.i.i = and i32 %220, -3
  store i32 %and.i.i.i, ptr %access12.i.i.i, align 4
  %arrayidx14.i.i.i = getelementptr %struct.scarlett2_data, ptr %212, i32 0, i32 38, i32 %i.0144.i.i
  %221 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %arrayidx14.i.i.i, align 4
  %access17.i.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %222, i32 1, i32 0, i32 1
  %223 = ptrtoint ptr %access17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %access17.i.i.i, align 4
  %and18.i.i.i = and i32 %224, -3
  store i32 %and18.i.i.i, ptr %access17.i.i.i, align 4
  %225 = load ptr, ptr %arrayidx9.i.i.i, align 4
  %id.i.i143.i = getelementptr inbounds %struct.snd_kcontrol, ptr %225, i32 0, i32 1
  call void @snd_ctl_notify(ptr noundef %216, i32 noundef 3, ptr noundef %id.i.i143.i) #11
  %226 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %arrayidx14.i.i.i, align 4
  %id23.i.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %227, i32 0, i32 1
  call void @snd_ctl_notify(ptr noundef %216, i32 noundef 3, ptr noundef %id23.i.i.i) #11
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.then39.i.i, %if.end36.i.i.if.end40.i.i_crit_edge
  %228 = ptrtoint ptr %line_out_hw_vol.i135.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %line_out_hw_vol.i135.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool42.not.i.i = icmp eq i8 %229, 0
  br i1 %tobool42.not.i.i, label %if.end40.i.i.for.inc.i.i_crit_edge, label %if.then43.i.i

if.end40.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then43.i.i:                                    ; preds = %if.end40.i.i
  %call46.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %s.i.i, i32 noundef 44, ptr noundef nonnull @.str.63, i32 noundef %add19.i.i) #11
  %arrayidx48.i.i = getelementptr %struct.scarlett2_data, ptr %190, i32 0, i32 37, i32 %i.0144.i.i
  %call49.i.i = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @scarlett2_sw_hw_enum_ctl, i32 noundef %i.0144.i.i, i32 noundef 1, ptr noundef nonnull %s.i.i, ptr noundef %arrayidx48.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i.i)
  %cmp50.i.i = icmp slt i32 %call49.i.i, 0
  br i1 %cmp50.i.i, label %if.then43.i.i.scarlett2_add_line_out_ctls.exit.thread.i_crit_edge, label %if.end52.i.i

if.then43.i.i.scarlett2_add_line_out_ctls.exit.thread.i_crit_edge: ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_add_line_out_ctls.exit.thread.i

if.end52.i.i:                                     ; preds = %if.then43.i.i
  %230 = ptrtoint ptr %speaker_switching_switch.i.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %speaker_switching_switch.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool53.not.i.i = icmp ne i8 %231, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0144.i.i)
  %cmp54.i.i = icmp ult i32 %i.0144.i.i, 4
  %or.cond.i.i = and i1 %cmp54.i.i, %tobool53.not.i.i
  br i1 %or.cond.i.i, label %if.then56.i.i, label %if.end52.i.i.for.inc.i.i_crit_edge

if.end52.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then56.i.i:                                    ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %232 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %arrayidx48.i.i, align 4
  %access.i.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %233, i32 1, i32 0, i32 1
  %234 = ptrtoint ptr %access.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %access.i.i.i, align 4
  %and.i137.i.i = and i32 %235, -3
  store i32 %and.i137.i.i, ptr %access.i.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then56.i.i, %if.end52.i.i.for.inc.i.i_crit_edge, %if.end40.i.i.for.inc.i.i_crit_edge
  %exitcond.not.i144.i = icmp eq i32 %add19.i.i, %196
  br i1 %exitcond.not.i144.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end8.i.i.for.end.i.i_crit_edge
  %236 = ptrtoint ptr %line_out_hw_vol.i135.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %line_out_hw_vol.i135.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %tobool60.not.i.i = icmp eq i8 %237, 0
  br i1 %tobool60.not.i.i, label %scarlett2_add_line_out_ctls.exit.thread191.i, label %for.body65.preheader.i.i

scarlett2_add_line_out_ctls.exit.thread191.i:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %s.i.i) #11
  br label %if.end24.i

for.body65.preheader.i.i:                         ; preds = %for.end.i.i
  %arrayidx67.i.i = getelementptr %struct.scarlett2_data, ptr %190, i32 0, i32 39, i32 0
  %call68.i.i = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @scarlett2_dim_mute_ctl, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.66, ptr noundef %arrayidx67.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i.i)
  %cmp69.i.i = icmp slt i32 %call68.i.i, 0
  br i1 %cmp69.i.i, label %for.body65.preheader.i.i.scarlett2_add_line_out_ctls.exit.thread.i_crit_edge, label %scarlett2_add_line_out_ctls.exit.i

for.body65.preheader.i.i.scarlett2_add_line_out_ctls.exit.thread.i_crit_edge: ; preds = %for.body65.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_add_line_out_ctls.exit.thread.i

scarlett2_add_line_out_ctls.exit.thread.i:        ; preds = %for.body65.preheader.i.i.scarlett2_add_line_out_ctls.exit.thread.i_crit_edge, %if.then43.i.i.scarlett2_add_line_out_ctls.exit.thread.i_crit_edge, %if.end27.i.i.scarlett2_add_line_out_ctls.exit.thread.i_crit_edge, %if.end21.i.i.scarlett2_add_line_out_ctls.exit.thread.i_crit_edge, %if.then.i138.i.scarlett2_add_line_out_ctls.exit.thread.i_crit_edge
  %retval.2.i.ph.i = phi i32 [ %call68.i.i, %for.body65.preheader.i.i.scarlett2_add_line_out_ctls.exit.thread.i_crit_edge ], [ %call6.i.i, %if.then.i138.i.scarlett2_add_line_out_ctls.exit.thread.i_crit_edge ], [ %call24.i.i, %if.end21.i.i.scarlett2_add_line_out_ctls.exit.thread.i_crit_edge ], [ %call33.i.i, %if.end27.i.i.scarlett2_add_line_out_ctls.exit.thread.i_crit_edge ], [ %call49.i.i, %if.then43.i.i.scarlett2_add_line_out_ctls.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %s.i.i) #11
  br label %do.end20

scarlett2_add_line_out_ctls.exit.i:               ; preds = %for.body65.preheader.i.i
  %arrayidx67.1.i.i = getelementptr %struct.scarlett2_data, ptr %190, i32 0, i32 39, i32 1
  %call68.1.i.i = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @scarlett2_dim_mute_ctl, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.67, ptr noundef %arrayidx67.1.i.i) #11
  %238 = call i32 @llvm.smin.i32(i32 %call68.1.i.i, i32 0) #11
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %s.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.1.i.i)
  %cmp22.i = icmp slt i32 %call68.1.i.i, 0
  br i1 %cmp22.i, label %scarlett2_add_line_out_ctls.exit.i.snd_scarlett_gen2_controls_create.exit_crit_edge, label %scarlett2_add_line_out_ctls.exit.i.if.end24.i_crit_edge

scarlett2_add_line_out_ctls.exit.i.if.end24.i_crit_edge: ; preds = %scarlett2_add_line_out_ctls.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

scarlett2_add_line_out_ctls.exit.i.snd_scarlett_gen2_controls_create.exit_crit_edge: ; preds = %scarlett2_add_line_out_ctls.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_scarlett_gen2_controls_create.exit

if.end24.i:                                       ; preds = %scarlett2_add_line_out_ctls.exit.i.if.end24.i_crit_edge, %scarlett2_add_line_out_ctls.exit.thread191.i
  %239 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %private_data.i.i, align 4
  %info1.i147.i = getelementptr inbounds %struct.scarlett2_data, ptr %240, i32 0, i32 4
  %241 = ptrtoint ptr %info1.i147.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %info1.i147.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %s.i145.i) #11
  %243 = call ptr @memset(ptr %s.i145.i, i32 255, i32 44)
  %level_input_count.i.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %242, i32 0, i32 6
  %level_input_first.i.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %242, i32 0, i32 7
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i152.i.for.cond.i.i_crit_edge, %if.end24.i
  %i.0.i.i = phi i32 [ 0, %if.end24.i ], [ %add.i.i, %for.body.i152.i.for.cond.i.i_crit_edge ]
  %244 = ptrtoint ptr %level_input_count.i.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %level_input_count.i.i, align 1
  %conv.i148.i = zext i8 %245 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i.i, i32 %conv.i148.i)
  %cmp.i149.i = icmp ult i32 %i.0.i.i, %conv.i148.i
  br i1 %cmp.i149.i, label %for.body.i152.i, label %for.cond9.preheader.i.i

for.cond9.preheader.i.i:                          ; preds = %for.cond.i.i
  %pad_input_count.i.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %242, i32 0, i32 8
  br label %for.cond9.i.i

for.body.i152.i:                                  ; preds = %for.cond.i.i
  %add.i.i = add nuw nsw i32 %i.0.i.i, 1
  %246 = ptrtoint ptr %level_input_first.i.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %level_input_first.i.i, align 2
  %conv3.i.i = zext i8 %247 to i32
  %add4.i.i = add nuw nsw i32 %add.i.i, %conv3.i.i
  %call.i150.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %s.i145.i, i32 noundef 44, ptr noundef nonnull @.str.68, i32 noundef %add4.i.i, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71) #11
  %arrayidx.i.i = getelementptr %struct.scarlett2_data, ptr %240, i32 0, i32 40, i32 %i.0.i.i
  %call6.i151.i = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @scarlett2_level_enum_ctl, i32 noundef %i.0.i.i, i32 noundef 1, ptr noundef nonnull %s.i145.i, ptr noundef %arrayidx.i.i) #11
  %cmp7.i.i = icmp slt i32 %call6.i151.i, 0
  br i1 %cmp7.i.i, label %for.body.i152.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge, label %for.body.i152.i.for.cond.i.i_crit_edge

for.body.i152.i.for.cond.i.i_crit_edge:           ; preds = %for.body.i152.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

for.body.i152.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge: ; preds = %for.body.i152.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_add_line_in_ctls.exit.thread.i

for.cond9.i.i:                                    ; preds = %for.body13.i.i.for.cond9.i.i_crit_edge, %for.cond9.preheader.i.i
  %i.1.i.i = phi i32 [ %add15.i.i, %for.body13.i.i.for.cond9.i.i_crit_edge ], [ 0, %for.cond9.preheader.i.i ]
  %248 = ptrtoint ptr %pad_input_count.i.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %pad_input_count.i.i, align 1
  %conv10.i.i = zext i8 %249 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.i.i, i32 %conv10.i.i)
  %cmp11.i.i = icmp ult i32 %i.1.i.i, %conv10.i.i
  br i1 %cmp11.i.i, label %for.body13.i.i, label %for.cond27.preheader.i.i

for.cond27.preheader.i.i:                         ; preds = %for.cond9.i.i
  %air_input_count.i.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %242, i32 0, i32 9
  br label %for.cond27.i.i

for.body13.i.i:                                   ; preds = %for.cond9.i.i
  %add15.i.i = add nuw nsw i32 %i.1.i.i, 1
  %call16.i153.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %s.i145.i, i32 noundef 44, ptr noundef nonnull @.str.68, i32 noundef %add15.i.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73) #11
  %arrayidx18.i.i = getelementptr %struct.scarlett2_data, ptr %240, i32 0, i32 41, i32 %i.1.i.i
  %call19.i.i = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @scarlett2_pad_ctl, i32 noundef %i.1.i.i, i32 noundef 1, ptr noundef nonnull %s.i145.i, ptr noundef %arrayidx18.i.i) #11
  %cmp20.i.i = icmp slt i32 %call19.i.i, 0
  br i1 %cmp20.i.i, label %for.body13.i.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge, label %for.body13.i.i.for.cond9.i.i_crit_edge

for.body13.i.i.for.cond9.i.i_crit_edge:           ; preds = %for.body13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond9.i.i

for.body13.i.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge: ; preds = %for.body13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_add_line_in_ctls.exit.thread.i

for.cond27.i.i:                                   ; preds = %for.body31.i.i.for.cond27.i.i_crit_edge, %for.cond27.preheader.i.i
  %i.2.i.i = phi i32 [ %add33.i.i, %for.body31.i.i.for.cond27.i.i_crit_edge ], [ 0, %for.cond27.preheader.i.i ]
  %250 = ptrtoint ptr %air_input_count.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %air_input_count.i.i, align 4
  %conv28.i.i = zext i8 %251 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2.i.i, i32 %conv28.i.i)
  %cmp29.i.i = icmp ult i32 %i.2.i.i, %conv28.i.i
  br i1 %cmp29.i.i, label %for.body31.i.i, label %for.end44.i.i

for.body31.i.i:                                   ; preds = %for.cond27.i.i
  %add33.i.i = add nuw nsw i32 %i.2.i.i, 1
  %call34.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %s.i145.i, i32 noundef 44, ptr noundef nonnull @.str.68, i32 noundef %add33.i.i, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.73) #11
  %arrayidx36.i.i = getelementptr %struct.scarlett2_data, ptr %240, i32 0, i32 42, i32 %i.2.i.i
  %call37.i.i = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @scarlett2_air_ctl, i32 noundef %i.2.i.i, i32 noundef 1, ptr noundef nonnull %s.i145.i, ptr noundef %arrayidx36.i.i) #11
  %cmp38.i.i = icmp slt i32 %call37.i.i, 0
  br i1 %cmp38.i.i, label %for.body31.i.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge, label %for.body31.i.i.for.cond27.i.i_crit_edge

for.body31.i.i.for.cond27.i.i_crit_edge:          ; preds = %for.body31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond27.i.i

for.body31.i.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge: ; preds = %for.body31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_add_line_in_ctls.exit.thread.i

for.end44.i.i:                                    ; preds = %for.cond27.i.i
  %inputs_per_phantom.i.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %242, i32 0, i32 11
  %252 = ptrtoint ptr %inputs_per_phantom.i.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %inputs_per_phantom.i.i, align 2
  %254 = zext i8 %253 to i64
  call void @__sanitizer_cov_trace_switch(i64 %254, ptr @__sancov_gen_cov_switch_values)
  switch i8 %253, label %for.cond72.preheader.i.i [
    i8 1, label %for.cond49.preheader.i.i
    i8 0, label %for.end44.i.i.if.end100.i.i_crit_edge
  ]

for.end44.i.i.if.end100.i.i_crit_edge:            ; preds = %for.end44.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100.i.i

for.cond49.preheader.i.i:                         ; preds = %for.end44.i.i
  %phantom_count.i.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %242, i32 0, i32 10
  br label %for.cond49.i.i

for.cond72.preheader.i.i:                         ; preds = %for.end44.i.i
  %phantom_count73.i.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %242, i32 0, i32 10
  br label %for.cond72.i.i

for.cond49.i.i:                                   ; preds = %for.body53.i.i.for.cond49.i.i_crit_edge, %for.cond49.preheader.i.i
  %i.3.i.i = phi i32 [ %add55.i.i, %for.body53.i.i.for.cond49.i.i_crit_edge ], [ 0, %for.cond49.preheader.i.i ]
  %255 = ptrtoint ptr %phantom_count.i.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %phantom_count.i.i, align 1
  %conv50.i154.i = zext i8 %256 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3.i.i, i32 %conv50.i154.i)
  %cmp51.i.i = icmp ult i32 %i.3.i.i, %conv50.i154.i
  br i1 %cmp51.i.i, label %for.body53.i.i, label %for.cond49.i.i.if.end100.i.i_crit_edge

for.cond49.i.i.if.end100.i.i_crit_edge:           ; preds = %for.cond49.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100.i.i

for.body53.i.i:                                   ; preds = %for.cond49.i.i
  %add55.i.i = add nuw nsw i32 %i.3.i.i, 1
  %call56.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %s.i145.i, i32 noundef 44, ptr noundef nonnull @.str.68, i32 noundef %add55.i.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.73) #11
  %arrayidx58.i.i = getelementptr %struct.scarlett2_data, ptr %240, i32 0, i32 43, i32 %i.3.i.i
  %call59.i.i = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @scarlett2_phantom_ctl, i32 noundef %i.3.i.i, i32 noundef 1, ptr noundef nonnull %s.i145.i, ptr noundef %arrayidx58.i.i) #11
  %cmp60.i.i = icmp slt i32 %call59.i.i, 0
  br i1 %cmp60.i.i, label %for.body53.i.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge, label %for.body53.i.i.for.cond49.i.i_crit_edge

for.body53.i.i.for.cond49.i.i_crit_edge:          ; preds = %for.body53.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond49.i.i

for.body53.i.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge: ; preds = %for.body53.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_add_line_in_ctls.exit.thread.i

for.cond72.i.i:                                   ; preds = %for.body77.i.i.for.cond72.i.i_crit_edge, %for.cond72.preheader.i.i
  %i.4.i.i = phi i32 [ %add81.i.i, %for.body77.i.i.for.cond72.i.i_crit_edge ], [ 0, %for.cond72.preheader.i.i ]
  %257 = ptrtoint ptr %phantom_count73.i.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %phantom_count73.i.i, align 1
  %conv74.i.i = zext i8 %258 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.4.i.i, i32 %conv74.i.i)
  %cmp75.i.i = icmp ult i32 %i.4.i.i, %conv74.i.i
  br i1 %cmp75.i.i, label %for.body77.i.i, label %for.cond72.i.i.if.end100.i.i_crit_edge

for.cond72.i.i.if.end100.i.i_crit_edge:           ; preds = %for.cond72.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100.i.i

for.body77.i.i:                                   ; preds = %for.cond72.i.i
  %259 = ptrtoint ptr %inputs_per_phantom.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %inputs_per_phantom.i.i, align 2
  %conv79.i.i = zext i8 %260 to i32
  %mul.i.i = mul i32 %i.4.i.i, %conv79.i.i
  %add80.i.i = add i32 %mul.i.i, 1
  %add81.i.i = add nuw nsw i32 %i.4.i.i, 1
  %mul84.i.i = mul i32 %add81.i.i, %conv79.i.i
  %call86.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %s.i145.i, i32 noundef 44, ptr noundef nonnull @.str.69, i32 noundef %add80.i.i, i32 noundef %mul84.i.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.73) #11
  %arrayidx89.i.i = getelementptr %struct.scarlett2_data, ptr %240, i32 0, i32 43, i32 %i.4.i.i
  %call90.i.i = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @scarlett2_phantom_ctl, i32 noundef %i.4.i.i, i32 noundef 1, ptr noundef nonnull %s.i145.i, ptr noundef %arrayidx89.i.i) #11
  %cmp91.i.i = icmp slt i32 %call90.i.i, 0
  br i1 %cmp91.i.i, label %for.body77.i.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge, label %for.body77.i.i.for.cond72.i.i_crit_edge

for.body77.i.i.for.cond72.i.i_crit_edge:          ; preds = %for.body77.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond72.i.i

for.body77.i.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge: ; preds = %for.body77.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_add_line_in_ctls.exit.thread.i

if.end100.i.i:                                    ; preds = %for.cond72.i.i.if.end100.i.i_crit_edge, %for.cond49.i.i.if.end100.i.i_crit_edge, %for.end44.i.i.if.end100.i.i_crit_edge
  %phantom_count101.i.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %242, i32 0, i32 10
  %261 = ptrtoint ptr %phantom_count101.i.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %phantom_count101.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %tobool.not.i155.i = icmp eq i8 %262, 0
  br i1 %tobool.not.i155.i, label %if.end100.i.i.if.end28.i_crit_edge, label %if.then102.i.i

if.end100.i.i.if.end28.i_crit_edge:               ; preds = %if.end100.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

if.then102.i.i:                                   ; preds = %if.end100.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %263 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i156.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %263, i32 noundef 3520, i32 noundef 152) #15
  %tobool.not.i.i157.i = icmp eq ptr %call7.i.i.i.i156.i, null
  br i1 %tobool.not.i.i157.i, label %if.then102.i.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge, label %if.end.i.i164.i

if.then102.i.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge: ; preds = %if.then102.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_add_line_in_ctls.exit.thread.i

if.end.i.i164.i:                                  ; preds = %if.then102.i.i
  %264 = ptrtoint ptr %call7.i.i.i.i156.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %mixer, ptr %call7.i.i.i.i156.i, align 8
  %control.i.i158.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i.i156.i, i32 0, i32 1
  %265 = ptrtoint ptr %control.i.i158.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 0, ptr %control.i.i158.i, align 4
  %id.i.i159.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i.i156.i, i32 0, i32 3
  %266 = ptrtoint ptr %id.i.i159.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 0, ptr %id.i.i159.i, align 4
  %channels3.i.i160.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i.i156.i, i32 0, i32 6
  %267 = ptrtoint ptr %channels3.i.i160.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 1, ptr %channels3.i.i160.i, align 8
  %val_type.i.i161.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i.i156.i, i32 0, i32 7
  %268 = ptrtoint ptr %val_type.i.i161.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 8, ptr %val_type.i.i161.i, align 4
  %call4.i.i162.i = call ptr @snd_ctl_new1(ptr noundef nonnull @scarlett2_phantom_persistence_ctl, ptr noundef nonnull %call7.i.i.i.i156.i) #11
  %tobool5.not.i.i163.i = icmp eq ptr %call4.i.i162.i, null
  br i1 %tobool5.not.i.i163.i, label %if.then6.i.i165.i, label %if.end7.i.i171.i

if.then6.i.i165.i:                                ; preds = %if.end.i.i164.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i156.i) #11
  br label %scarlett2_add_line_in_ctls.exit.thread.i

if.end7.i.i171.i:                                 ; preds = %if.end.i.i164.i
  %private_free.i.i166.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call4.i.i162.i, i32 0, i32 9
  %269 = ptrtoint ptr %private_free.i.i166.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i.i166.i, align 4
  %name9.i.i167.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call4.i.i162.i, i32 0, i32 1, i32 4
  %call10.i.i168.i = call i32 @strscpy(ptr noundef %name9.i.i167.i, ptr noundef nonnull @.str.76, i32 noundef 44) #11
  %call12.i.i169.i = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i.i156.i, ptr noundef nonnull %call4.i.i162.i, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i169.i)
  %cmp.i.i170.i = icmp slt i32 %call12.i.i169.i, 0
  br i1 %cmp.i.i170.i, label %if.end7.i.i171.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge, label %if.end7.i.i171.i.if.end28.i_crit_edge

if.end7.i.i171.i.if.end28.i_crit_edge:            ; preds = %if.end7.i.i171.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

if.end7.i.i171.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge: ; preds = %if.end7.i.i171.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_add_line_in_ctls.exit.thread.i

scarlett2_add_line_in_ctls.exit.thread.i:         ; preds = %if.end7.i.i171.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge, %if.then6.i.i165.i, %if.then102.i.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge, %for.body77.i.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge, %for.body53.i.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge, %for.body31.i.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge, %for.body13.i.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge, %for.body.i152.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge
  %retval.2.i172.ph.i = phi i32 [ %call12.i.i169.i, %if.end7.i.i171.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge ], [ -12, %if.then102.i.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge ], [ -12, %if.then6.i.i165.i ], [ %call90.i.i, %for.body77.i.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge ], [ %call59.i.i, %for.body53.i.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge ], [ %call37.i.i, %for.body31.i.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge ], [ %call19.i.i, %for.body13.i.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge ], [ %call6.i151.i, %for.body.i152.i.scarlett2_add_line_in_ctls.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %s.i145.i) #11
  br label %do.end20

if.end28.i:                                       ; preds = %if.end7.i.i171.i.if.end28.i_crit_edge, %if.end100.i.i.if.end28.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %s.i145.i) #11
  %call29.i = call fastcc i32 @scarlett2_add_mux_enums(ptr noundef %mixer) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %if.end28.i.do.end20_crit_edge, label %if.end32.i

if.end28.i.do.end20_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

if.end32.i:                                       ; preds = %if.end28.i
  %call33.i = call fastcc i32 @scarlett2_add_mixer_ctls(ptr noundef %mixer) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp slt i32 %call33.i, 0
  br i1 %cmp34.i, label %if.end32.i.do.end20_crit_edge, label %if.end36.i

if.end32.i.do.end20_crit_edge:                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

if.end36.i:                                       ; preds = %if.end32.i
  %call37.i = call fastcc i32 @scarlett2_add_meter_ctl(ptr noundef %mixer) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %if.end36.i.do.end20_crit_edge, label %if.end40.i

if.end36.i.do.end20_crit_edge:                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

if.end40.i:                                       ; preds = %if.end36.i
  %call41.i = call fastcc i32 @scarlett2_add_sync_ctl(ptr noundef %mixer) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp42.i = icmp slt i32 %call41.i, 0
  br i1 %cmp42.i, label %if.end40.i.do.end20_crit_edge, label %if.end44.i

if.end40.i.do.end20_crit_edge:                    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

if.end44.i:                                       ; preds = %if.end40.i
  %call45.i = call fastcc i32 @scarlett2_add_direct_monitor_ctl(ptr noundef %mixer) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp46.i = icmp slt i32 %call45.i, 0
  br i1 %cmp46.i, label %if.end44.i.do.end20_crit_edge, label %if.end48.i

if.end44.i.do.end20_crit_edge:                    ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

if.end48.i:                                       ; preds = %if.end44.i
  %call49.i = call fastcc i32 @scarlett2_add_speaker_switch_ctl(ptr noundef %mixer) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %cmp50.i = icmp slt i32 %call49.i, 0
  br i1 %cmp50.i, label %if.end48.i.do.end20_crit_edge, label %if.end52.i

if.end48.i.do.end20_crit_edge:                    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

if.end52.i:                                       ; preds = %if.end48.i
  %call53.i = call fastcc i32 @scarlett2_add_talkback_ctls(ptr noundef %mixer) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp slt i32 %call53.i, 0
  br i1 %cmp54.i, label %if.end52.i.do.end20_crit_edge, label %if.end56.i

if.end52.i.do.end20_crit_edge:                    ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

if.end56.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  %call57.i = call fastcc i32 @scarlett2_init_notify(ptr noundef %mixer) #11
  %270 = call i32 @llvm.smin.i32(i32 %call57.i, i32 0) #11
  br label %snd_scarlett_gen2_controls_create.exit

snd_scarlett_gen2_controls_create.exit:           ; preds = %if.end56.i, %scarlett2_add_line_out_ctls.exit.i.snd_scarlett_gen2_controls_create.exit_crit_edge, %scarlett2_add_msd_ctl.exit.i.snd_scarlett_gen2_controls_create.exit_crit_edge
  %retval.0.i = phi i32 [ %188, %scarlett2_add_msd_ctl.exit.i.snd_scarlett_gen2_controls_create.exit_crit_edge ], [ %238, %scarlett2_add_line_out_ctls.exit.i.snd_scarlett_gen2_controls_create.exit_crit_edge ], [ %270, %if.end56.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %snd_scarlett_gen2_controls_create.exit.do.end20_crit_edge, label %snd_scarlett_gen2_controls_create.exit.cleanup_crit_edge

snd_scarlett_gen2_controls_create.exit.cleanup_crit_edge: ; preds = %snd_scarlett_gen2_controls_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

snd_scarlett_gen2_controls_create.exit.do.end20_crit_edge: ; preds = %snd_scarlett_gen2_controls_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

do.end20:                                         ; preds = %snd_scarlett_gen2_controls_create.exit.do.end20_crit_edge, %if.end52.i.do.end20_crit_edge, %if.end48.i.do.end20_crit_edge, %if.end44.i.do.end20_crit_edge, %if.end40.i.do.end20_crit_edge, %if.end36.i.do.end20_crit_edge, %if.end32.i.do.end20_crit_edge, %if.end28.i.do.end20_crit_edge, %scarlett2_add_line_in_ctls.exit.thread.i, %scarlett2_add_line_out_ctls.exit.thread.i, %if.then6.i.i.i, %if.end5.i.i.do.end20_crit_edge, %scarlett2_read_configs.exit.i.do.end20_crit_edge, %scarlett2_read_configs.exit.thread.i, %scarlett2_usb_init.exit.i.do.end20_crit_edge, %scarlett2_usb_init.exit.thread.i, %for.cond.i.i.i.do.end20_crit_edge, %do.body.i.i.do.end20_crit_edge, %switch.lookup.do.end20_crit_edge, %switch.hole_check.do.end20_crit_edge, %do.end10.do.end20_crit_edge
  %retval.0.i38 = phi i32 [ %retval.0.i, %snd_scarlett_gen2_controls_create.exit.do.end20_crit_edge ], [ -22, %do.end10.do.end20_crit_edge ], [ -12, %if.end5.i.i.do.end20_crit_edge ], [ -12, %if.then6.i.i.i ], [ -12, %switch.lookup.do.end20_crit_edge ], [ -22, %do.body.i.i.do.end20_crit_edge ], [ %retval.2.i172.ph.i, %scarlett2_add_line_in_ctls.exit.thread.i ], [ %retval.2.i.ph.i, %scarlett2_add_line_out_ctls.exit.thread.i ], [ %retval.0.i123.ph.i, %scarlett2_read_configs.exit.thread.i ], [ %retval.0.i112.ph.i, %scarlett2_usb_init.exit.thread.i ], [ %call53.i, %if.end52.i.do.end20_crit_edge ], [ %call49.i, %if.end48.i.do.end20_crit_edge ], [ %call45.i, %if.end44.i.do.end20_crit_edge ], [ %call41.i, %if.end40.i.do.end20_crit_edge ], [ %call37.i, %if.end36.i.do.end20_crit_edge ], [ %call33.i, %if.end32.i.do.end20_crit_edge ], [ %call29.i, %if.end28.i.do.end20_crit_edge ], [ %call124.i.i, %scarlett2_read_configs.exit.i.do.end20_crit_edge ], [ %call13.i.i, %scarlett2_usb_init.exit.i.do.end20_crit_edge ], [ -22, %switch.hole_check.do.end20_crit_edge ], [ -22, %for.cond.i.i.i.do.end20_crit_edge ]
  %271 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %mixer, align 4
  %dev22 = getelementptr inbounds %struct.snd_usb_audio, ptr %272, i32 0, i32 1
  %273 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %dev22, align 4
  %dev23 = getelementptr inbounds %struct.usb_device, ptr %274, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i38) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %snd_scarlett_gen2_controls_create.exit.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i38, %do.end20 ], [ 0, %snd_scarlett_gen2_controls_create.exit.cleanup_crit_edge ], [ 0, %if.end17.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_add_mux_enums(ptr noundef %mixer) unnamed_addr #0 align 64 {
entry:
  %s = alloca [44 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %info1 = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info1, align 4
  %port_count2 = getelementptr inbounds %struct.scarlett2_device_info, ptr %3, i32 0, i32 16
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc18.for.cond3.preheader_crit_edge, %entry
  %i.044 = phi i32 [ 0, %entry ], [ %i.1.lcssa, %for.inc18.for.cond3.preheader_crit_edge ]
  %port_type.042 = phi i32 [ 0, %entry ], [ %inc19, %for.inc18.for.cond3.preheader_crit_edge ]
  %arrayidx4 = getelementptr [2 x i32], ptr %port_count2, i32 %port_type.042, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp539 = icmp sgt i32 %5, 0
  br i1 %cmp539, label %for.body6.lr.ph, label %for.cond3.preheader.for.inc18_crit_edge

for.cond3.preheader.for.inc18_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc18

for.body6.lr.ph:                                  ; preds = %for.cond3.preheader
  %dst_descr = getelementptr [6 x %struct.scarlett2_port], ptr @scarlett2_ports, i32 0, i32 %port_type.042, i32 3
  %6 = ptrtoint ptr %dst_descr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dst_descr, align 4
  br label %for.body6

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.body6.lr.ph
  %i.141 = phi i32 [ %i.044, %for.body6.lr.ph ], [ %inc17, %for.inc.for.body6_crit_edge ]
  %channel.040 = phi i32 [ 0, %for.body6.lr.ph ], [ %add, %for.inc.for.body6_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %s) #11
  %8 = call ptr @memset(ptr %s, i32 255, i32 44)
  %add = add nuw nsw i32 %channel.040, 1
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %s, i32 noundef 39, ptr noundef %7, i32 noundef %add)
  %strlen = call i32 @strlen(ptr noundef nonnull %s) #16
  %endptr = getelementptr i8, ptr %s, i32 %strlen
  %9 = call ptr @memcpy(ptr %endptr, ptr @.str.79, i32 6)
  %arrayidx12 = getelementptr %struct.scarlett2_data, ptr %1, i32 0, i32 44, i32 %i.141
  %call13 = call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @scarlett2_mux_src_enum_ctl, i32 noundef %i.141, i32 noundef 1, ptr noundef nonnull %s, ptr noundef %arrayidx12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %s) #11
  br i1 %cmp14, label %for.body6.cleanup21_crit_edge, label %for.inc

for.body6.cleanup21_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup21

for.inc:                                          ; preds = %for.body6
  %inc17 = add i32 %i.141, 1
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4, align 4
  %cmp5 = icmp slt i32 %add, %11
  br i1 %cmp5, label %for.inc.for.body6_crit_edge, label %for.inc.for.inc18_crit_edge

for.inc.for.inc18_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc18

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body6

for.inc18:                                        ; preds = %for.inc.for.inc18_crit_edge, %for.cond3.preheader.for.inc18_crit_edge
  %i.1.lcssa = phi i32 [ %i.044, %for.cond3.preheader.for.inc18_crit_edge ], [ %inc17, %for.inc.for.inc18_crit_edge ]
  %inc19 = add nuw nsw i32 %port_type.042, 1
  %exitcond.not = icmp eq i32 %inc19, 6
  br i1 %exitcond.not, label %for.inc18.cleanup21_crit_edge, label %for.inc18.for.cond3.preheader_crit_edge

for.inc18.for.cond3.preheader_crit_edge:          ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond3.preheader

for.inc18.cleanup21_crit_edge:                    ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup21

cleanup21:                                        ; preds = %for.inc18.cleanup21_crit_edge, %for.body6.cleanup21_crit_edge
  %retval.3 = phi i32 [ %call13, %for.body6.cleanup21_crit_edge ], [ 0, %for.inc18.cleanup21_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_add_mixer_ctls(ptr noundef %mixer) unnamed_addr #0 align 64 {
entry:
  %s = alloca [44 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %info1 = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info1, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %s) #11
  %4 = call ptr @memset(ptr %s, i32 255, i32 44)
  %arrayidx = getelementptr %struct.scarlett2_device_info, ptr %3, i32 0, i32 16, i32 4
  %arrayidx3 = getelementptr %struct.scarlett2_device_info, ptr %3, i32 0, i32 16, i32 4, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx3, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp44 = icmp sgt i32 %8, 0
  br i1 %cmp44, label %for.cond6.preheader.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond6.preheader.lr.ph:                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp741 = icmp sgt i32 %6, 0
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.inc15.for.cond6.preheader_crit_edge, %for.cond6.preheader.lr.ph
  %index.047 = phi i32 [ 0, %for.cond6.preheader.lr.ph ], [ %index.1.lcssa, %for.inc15.for.cond6.preheader_crit_edge ]
  %i.045 = phi i32 [ 0, %for.cond6.preheader.lr.ph ], [ %inc16, %for.inc15.for.cond6.preheader_crit_edge ]
  br i1 %cmp741, label %for.body8.lr.ph, label %for.cond6.preheader.for.inc15_crit_edge

for.cond6.preheader.for.inc15_crit_edge:          ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc15

for.body8.lr.ph:                                  ; preds = %for.cond6.preheader
  %add = add nuw i32 %i.045, 65
  br label %for.body8

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %for.body8.lr.ph
  %index.143 = phi i32 [ %index.047, %for.body8.lr.ph ], [ %inc14, %for.inc.for.body8_crit_edge ]
  %j.042 = phi i32 [ 0, %for.body8.lr.ph ], [ %add10, %for.inc.for.body8_crit_edge ]
  %add10 = add nuw nsw i32 %j.042, 1
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %s, i32 noundef 44, ptr noundef nonnull @.str.80, i32 noundef %add, i32 noundef %add10)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 152) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body8.cleanup_crit_edge, label %if.end.i

for.body8.cleanup_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %for.body8
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mixer, ptr %call7.i.i.i, align 8
  %control.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %index.143, ptr %control.i, align 4
  %id.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %id.i, align 4
  %channels3.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %channels3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %channels3.i, align 8
  %val_type.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %val_type.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %val_type.i, align 4
  %call4.i = call ptr @snd_ctl_new1(ptr noundef nonnull @scarlett2_mixer_ctl, ptr noundef nonnull %call7.i.i.i) #11
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %private_free.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call4.i, i32 0, i32 9
  %15 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i, align 4
  %name9.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call4.i, i32 0, i32 1, i32 4
  %call10.i = call i32 @strscpy(ptr noundef %name9.i, ptr noundef nonnull %s, i32 noundef 44) #11
  %call12.i = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call4.i, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp.i = icmp slt i32 %call12.i, 0
  br i1 %cmp.i, label %if.end7.i.cleanup_crit_edge, label %for.inc

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %if.end7.i
  %inc14 = add i32 %index.143, 1
  %exitcond.not = icmp eq i32 %add10, %6
  br i1 %exitcond.not, label %for.inc.for.inc15_crit_edge, label %for.inc.for.body8_crit_edge

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body8

for.inc.for.inc15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc15

for.inc15:                                        ; preds = %for.inc.for.inc15_crit_edge, %for.cond6.preheader.for.inc15_crit_edge
  %index.1.lcssa = phi i32 [ %index.047, %for.cond6.preheader.for.inc15_crit_edge ], [ %inc14, %for.inc.for.inc15_crit_edge ]
  %inc16 = add nuw nsw i32 %i.045, 1
  %exitcond51.not = icmp eq i32 %inc16, %8
  br i1 %exitcond51.not, label %for.inc15.cleanup_crit_edge, label %for.inc15.for.cond6.preheader_crit_edge

for.inc15.for.cond6.preheader_crit_edge:          ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond6.preheader

for.inc15.cleanup_crit_edge:                      ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc15.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.then6.i, %for.body8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then6.i ], [ 0, %entry.cleanup_crit_edge ], [ -12, %for.body8.cleanup_crit_edge ], [ %call12.i, %if.end7.i.cleanup_crit_edge ], [ 0, %for.inc15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %s) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_add_meter_ctl(ptr noundef %mixer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %info = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %has_mixer = getelementptr inbounds %struct.scarlett2_device_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %has_mixer to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_mixer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_mux_dsts = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %num_mux_dsts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_mux_dsts, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 152) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %9 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mixer, ptr %call7.i.i.i, align 8
  %control.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %control.i, align 4
  %id.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %id.i, align 4
  %channels3.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %channels3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %7, ptr %channels3.i, align 8
  %val_type.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %val_type.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %val_type.i, align 4
  %call4.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @scarlett2_meter_ctl, ptr noundef nonnull %call7.i.i.i) #11
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %private_free.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call4.i, i32 0, i32 9
  %14 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i, align 4
  %name9.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call4.i, i32 0, i32 1, i32 4
  %call10.i = tail call i32 @strscpy(ptr noundef %name9.i, ptr noundef nonnull @.str.81, i32 noundef 44) #11
  %call12.i = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call4.i, i1 noundef zeroext true) #11
  %15 = tail call i32 @llvm.smin.i32(i32 %call12.i, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end7.i, %if.then6.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.then6.i ], [ -12, %if.end.cleanup_crit_edge ], [ %15, %if.end7.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_add_sync_ctl(ptr noundef %mixer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %info = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %has_mixer = getelementptr inbounds %struct.scarlett2_device_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %has_mixer to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_mixer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sync_ctl = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 34
  %call = tail call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @scarlett2_sync_ctl, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.82, ptr noundef %sync_ctl)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_add_direct_monitor_ctl(ptr noundef %mixer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %info1 = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info1, align 4
  %direct_monitor = getelementptr inbounds %struct.scarlett2_device_info, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %direct_monitor to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %direct_monitor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  %cond = select i1 %cmp, ptr @.str.85, ptr @.str.86
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr [2 x %struct.snd_kcontrol_new], ptr @scarlett2_direct_monitor_ctl, i32 0, i32 %sub
  %direct_monitor_ctl = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 45
  %call = tail call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %mixer, ptr noundef %arrayidx, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %cond, ptr noundef %direct_monitor_ctl)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_add_speaker_switch_ctl(ptr noundef %mixer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %info1 = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info1, align 4
  %has_speaker_switching = getelementptr inbounds %struct.scarlett2_device_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %has_speaker_switching to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_speaker_switching, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %speaker_switching_ctl = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 46
  %call = tail call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @scarlett2_speaker_switch_enum_ctl, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.89, ptr noundef %speaker_switching_ctl)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_add_talkback_ctls(ptr noundef %mixer) unnamed_addr #0 align 64 {
entry:
  %s = alloca [44 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %info1 = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info1, align 4
  %arrayidx = getelementptr %struct.scarlett2_device_info, ptr %3, i32 0, i32 16, i32 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %s) #11
  %6 = call ptr @memset(ptr %s, i32 255, i32 44)
  %has_talkback = getelementptr inbounds %struct.scarlett2_device_info, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %has_talkback to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %has_talkback, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %talkback_ctl = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 47
  %call = tail call fastcc i32 @scarlett2_add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @scarlett2_talkback_enum_ctl, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.92, ptr noundef %talkback_ctl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp632 = icmp sgt i32 %5, 0
  br i1 %cmp632, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %if.end7.i
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.033 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add = add nuw i32 %i.033, 65
  %call8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %s, i32 noundef 44, ptr noundef nonnull @.str.93, i32 noundef %add)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 152) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.cleanup_crit_edge, label %if.end.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mixer, ptr %call7.i.i.i, align 8
  %control.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %i.033, ptr %control.i, align 4
  %id.i = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %id.i, align 4
  %channels3.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %channels3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %channels3.i, align 8
  %val_type.i = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %val_type.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %val_type.i, align 4
  %call4.i = call ptr @snd_ctl_new1(ptr noundef nonnull @scarlett2_talkback_map_ctl, ptr noundef nonnull %call7.i.i.i) #11
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %private_free.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call4.i, i32 0, i32 9
  %15 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free.i, align 4
  %name9.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call4.i, i32 0, i32 1, i32 4
  %call10.i = call i32 @strscpy(ptr noundef %name9.i, ptr noundef nonnull %s, i32 noundef 44) #11
  %call12.i = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call4.i, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp.i = icmp slt i32 %call12.i, 0
  br i1 %cmp.i, label %if.end7.i.cleanup_crit_edge, label %for.cond

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end7.i.cleanup_crit_edge, %if.then6.i, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -12, %if.then6.i ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ], [ %call12.i, %if.end7.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %s) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_init_notify(ptr noundef %mixer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mixer, align 4
  %dev1 = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %private_data = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %bEndpointAddress = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 8
  %shl.i = shl i32 %9, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or2 = or i32 %or.i, 1073741952
  %urb = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 4
  %10 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @usb_pipe_type_check(ptr noundef %3, i32 noundef %or2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %12 = ptrtoint ptr %urb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call10, ptr %urb, align 4
  %tobool13.not = icmp eq ptr %call10, null
  br i1 %tobool13.not, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %wMaxPacketSize = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 7
  %13 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %wMaxPacketSize, align 2
  %conv16 = zext i16 %14 to i32
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv16, i32 noundef 3264) #17
  %tobool18.not = icmp eq ptr %call9.i, null
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %15 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %urb, align 4
  %17 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %wMaxPacketSize, align 2
  %conv23 = zext i16 %18 to i32
  %bInterval = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 8
  %19 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bInterval, align 4
  %conv24 = zext i8 %20 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 8
  %21 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %3, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 10
  %22 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or2, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 14
  %23 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 19
  %24 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv23, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 28
  %25 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @scarlett2_notify, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 27
  %26 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %mixer, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 4
  %27 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp.i45 = icmp eq i32 %28, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp6.i = icmp ugt i32 %28, 4
  %or.cond.i = or i1 %cmp.i45, %cmp6.i
  br i1 %or.cond.i, label %if.then.i47, label %if.end20.usb_fill_int_urb.exit_crit_edge

if.end20.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_fill_int_urb.exit

if.then.i47:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %29 = tail call i32 @llvm.smax.i32(i32 %conv24, i32 1) #11
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 16) #11
  %sub.i = add nsw i32 %30, -1
  %shl.i46 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i47, %if.end20.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i46, %if.then.i47 ], [ %conv24, %if.end20.usb_fill_int_urb.exit_crit_edge ]
  %31 = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 25
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %interval.sink.i, ptr %31, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 23
  %33 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %start_frame.i, align 4
  %34 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %urb, align 4
  %call26 = tail call i32 @usb_submit_urb(ptr noundef %35, i32 noundef 3264) #11
  br label %cleanup

cleanup:                                          ; preds = %usb_fill_int_urb.exit, %if.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call26, %usb_fill_int_urb.exit ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scarlett2_config_save_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  %req.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -188
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #11
  %2 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 100663296, ptr %req.i, align 4
  %call.i = call fastcc i32 @scarlett2_usb(ptr noundef %1, i32 noundef 8388610, ptr noundef nonnull %req.i, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scarlett2_private_free(ptr nocapture noundef %mixer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %work = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 3
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #11
  tail call void @kfree(ptr noundef %1) #11
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %private_data, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scarlett2_private_suspend(ptr nocapture noundef readonly %mixer) #0 align 64 {
entry:
  %req.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %work = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 3
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #11
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #11
  %4 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 100663296, ptr %req.i, align 4
  %call.i = call fastcc i32 @scarlett2_usb(ptr noundef %3, i32 noundef 8388610, ptr noundef nonnull %req.i, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_usb(ptr nocapture noundef readonly %mixer, i32 noundef %cmd, ptr nocapture noundef readonly %req_data, i16 noundef zeroext %req_size, ptr noundef writeonly %resp_data, i16 noundef zeroext %resp_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mixer, align 4
  %dev1 = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %conv = zext i16 %req_size to i32
  %add = add i16 %req_size, 16
  %conv3 = zext i16 %resp_size to i32
  %add4 = add i16 %resp_size, 16
  %conv6 = zext i16 %add to i32
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv6, i32 noundef 3264) #17
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.error97_crit_edge, label %if.end

entry.error97_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %error97

if.end:                                           ; preds = %entry
  %conv7 = zext i16 %add4 to i32
  %call9.i175 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv7, i32 noundef 3264) #17
  %tobool9.not = icmp eq ptr %call9.i175, null
  br i1 %tobool9.not, label %if.end.error97_crit_edge, label %if.end11

if.end.error97_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %error97

if.end11:                                         ; preds = %if.end
  %usb_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex, i32 noundef 0) #11
  %scarlett2_seq.i = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %scarlett2_seq.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %scarlett2_seq.i, align 4
  %inc.i = add i16 %7, 1
  store i16 %inc.i, ptr %scarlett2_seq.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %cmd) #11
  %9 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %call9.i, align 128
  %10 = tail call i16 @llvm.bswap.i16(i16 %req_size) #11
  %size.i = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %call9.i, i32 0, i32 1
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %size.i, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %7) #11
  %seq2.i = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %call9.i, i32 0, i32 2
  %13 = ptrtoint ptr %seq2.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %seq2.i, align 2
  %error.i = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %call9.i, i32 0, i32 3
  %14 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %error.i, align 8
  %pad.i = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %call9.i, i32 0, i32 4
  %15 = ptrtoint ptr %pad.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pad.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %req_size)
  %tobool12.not = icmp eq i16 %req_size, 0
  br i1 %tobool12.not, label %if.end11.if.end15_crit_edge, label %if.then13

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %data = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %call9.i, i32 0, i32 5
  %16 = call ptr @memcpy(ptr %data, ptr %req_data, i32 %conv)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11.if.end15_crit_edge
  %bInterfaceNumber = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bInterfaceNumber, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %20, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = zext i8 %18 to i16
  %call1.i = tail call i32 @snd_usb_ctl_msg(ptr noundef %5, i32 noundef %or.i, i8 noundef zeroext 2, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext %conv.i, ptr noundef nonnull %call9.i, i16 noundef zeroext %add) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %conv6)
  %cmp.not = icmp eq i32 %call1.i, %conv6
  br i1 %cmp.not, label %if.end24, label %do.end

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mixer, align 4
  %dev22 = getelementptr inbounds %struct.snd_usb_audio, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev22, align 4
  %dev23 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.33, i32 noundef %cmd, i32 noundef %call1.i) #14
  br label %unlock

if.end24:                                         ; preds = %if.end15
  %25 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bInterfaceNumber, align 4
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %5, align 8
  %shl.i.i179 = shl i32 %28, 8
  %or1.i = or i32 %shl.i.i179, -2147483520
  %conv2.i = zext i8 %26 to i16
  %call3.i = tail call i32 @snd_usb_ctl_msg(ptr noundef %5, i32 noundef %or1.i, i8 noundef zeroext 3, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext %conv2.i, ptr noundef nonnull %call9.i175, i16 noundef zeroext %add4) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %conv7)
  %cmp29.not = icmp eq i32 %call3.i, %conv7
  br i1 %cmp29.not, label %if.end39, label %do.end34

do.end34:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mixer, align 4
  %dev36 = getelementptr inbounds %struct.snd_usb_audio, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev36, align 4
  %dev37 = getelementptr inbounds %struct.usb_device, ptr %32, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37, ptr noundef nonnull @.str.36, i32 noundef %cmd, i32 noundef %call3.i, i32 noundef %conv7) #14
  br label %unlock

if.end39:                                         ; preds = %if.end24
  %33 = ptrtoint ptr %call9.i175 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call9.i175, align 128
  %35 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call9.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp42.not = icmp eq i32 %34, %36
  br i1 %cmp42.not, label %lor.lhs.false, label %if.end39.do.end70_crit_edge

if.end39.do.end70_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end70

lor.lhs.false:                                    ; preds = %if.end39
  %seq = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %call9.i175, i32 0, i32 2
  %37 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %seq, align 2
  %39 = ptrtoint ptr %seq2.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %seq2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %40)
  %cmp47.not = icmp eq i16 %38, %40
  br i1 %cmp47.not, label %lor.lhs.false.lor.lhs.false58_crit_edge, label %land.lhs.true

lor.lhs.false.lor.lhs.false58_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false58

land.lhs.true:                                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %40)
  %cmp51.not = icmp eq i16 %40, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp56.not = icmp eq i16 %38, 0
  %or.cond = select i1 %cmp51.not, i1 %cmp56.not, i1 false
  br i1 %or.cond, label %land.lhs.true.lor.lhs.false58_crit_edge, label %land.lhs.true.do.end70_crit_edge

land.lhs.true.do.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end70

land.lhs.true.lor.lhs.false58_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %land.lhs.true.lor.lhs.false58_crit_edge, %lor.lhs.false.lor.lhs.false58_crit_edge
  %size = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %call9.i175, i32 0, i32 1
  %41 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %size, align 4
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %resp_size)
  %cmp61.not = icmp eq i16 %43, %resp_size
  br i1 %cmp61.not, label %lor.lhs.false63, label %lor.lhs.false58.do.end70_crit_edge

lor.lhs.false58.do.end70_crit_edge:               ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end70

lor.lhs.false63:                                  ; preds = %lor.lhs.false58
  %error = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %call9.i175, i32 0, i32 3
  %44 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool64.not = icmp eq i32 %45, 0
  br i1 %tobool64.not, label %lor.lhs.false65, label %lor.lhs.false63.do.end70_crit_edge

lor.lhs.false63.do.end70_crit_edge:               ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end70

lor.lhs.false65:                                  ; preds = %lor.lhs.false63
  %pad = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %call9.i175, i32 0, i32 4
  %46 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool66.not = icmp eq i32 %47, 0
  br i1 %tobool66.not, label %if.end85, label %lor.lhs.false65.do.end70_crit_edge

lor.lhs.false65.do.end70_crit_edge:               ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end70

do.end70:                                         ; preds = %lor.lhs.false65.do.end70_crit_edge, %lor.lhs.false63.do.end70_crit_edge, %lor.lhs.false58.do.end70_crit_edge, %land.lhs.true.do.end70_crit_edge, %if.end39.do.end70_crit_edge
  %48 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mixer, align 4
  %dev72 = getelementptr inbounds %struct.snd_usb_audio, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev72, align 4
  %dev73 = getelementptr inbounds %struct.usb_device, ptr %51, i32 0, i32 15
  %52 = tail call i32 @llvm.bswap.i32(i32 %36)
  %53 = tail call i32 @llvm.bswap.i32(i32 %34)
  %54 = ptrtoint ptr %seq2.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %seq2.i, align 2
  %56 = tail call i16 @llvm.bswap.i16(i16 %55)
  %conv77 = zext i16 %56 to i32
  %seq78 = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %call9.i175, i32 0, i32 2
  %57 = ptrtoint ptr %seq78 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %seq78, align 2
  %59 = tail call i16 @llvm.bswap.i16(i16 %58)
  %conv79 = zext i16 %59 to i32
  %size81 = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %call9.i175, i32 0, i32 1
  %60 = ptrtoint ptr %size81 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %size81, align 4
  %62 = tail call i16 @llvm.bswap.i16(i16 %61)
  %conv82 = zext i16 %62 to i32
  %error83 = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %call9.i175, i32 0, i32 3
  %63 = ptrtoint ptr %error83 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %error83, align 8
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %pad84 = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %call9.i175, i32 0, i32 4
  %66 = ptrtoint ptr %pad84 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pad84, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev73, ptr noundef nonnull @.str.39, i32 noundef %52, i32 noundef %53, i32 noundef %conv77, i32 noundef %conv79, i32 noundef %conv3, i32 noundef %conv82, i32 noundef %65, i32 noundef %68) #14
  br label %unlock

if.end85:                                         ; preds = %lor.lhs.false65
  %tobool86.not = icmp eq ptr %resp_data, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %resp_size)
  %cmp89.not = icmp eq i16 %resp_size, 0
  %or.cond149 = or i1 %tobool86.not, %cmp89.not
  br i1 %or.cond149, label %if.end85.unlock_crit_edge, label %if.then91

if.end85.unlock_crit_edge:                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.then91:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  %data92 = getelementptr inbounds %struct.scarlett2_usb_packet, ptr %call9.i175, i32 0, i32 5
  %69 = call ptr @memcpy(ptr %resp_data, ptr %data92, i32 %conv3)
  br label %unlock

unlock:                                           ; preds = %if.then91, %if.end85.unlock_crit_edge, %do.end70, %do.end34, %do.end
  %err.0 = phi i32 [ -22, %do.end ], [ -22, %do.end34 ], [ -22, %do.end70 ], [ %conv7, %if.then91 ], [ %conv7, %if.end85.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %usb_mutex) #11
  br label %error97

error97:                                          ; preds = %unlock, %if.end.error97_crit_edge, %entry.error97_crit_edge
  %retval.1.i184 = phi ptr [ %call9.i, %unlock ], [ null, %entry.error97_crit_edge ], [ %call9.i, %if.end.error97_crit_edge ]
  %resp.0 = phi ptr [ %call9.i175, %unlock ], [ null, %entry.error97_crit_edge ], [ null, %if.end.error97_crit_edge ]
  %err.1 = phi i32 [ %err.0, %unlock ], [ -12, %entry.error97_crit_edge ], [ -12, %if.end.error97_crit_edge ]
  tail call void @kfree(ptr noundef %retval.1.i184) #11
  tail call void @kfree(ptr noundef %resp.0) #11
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_ctl_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_pipe_type_check(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_usb_get_config(ptr nocapture noundef readonly %mixer, i32 noundef %config_item_num, i32 noundef %count, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  %req.i65 = alloca %struct.anon.79, align 4
  %req.i = alloca %struct.anon.79, align 4
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %info1 = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info1, align 4
  %has_mixer = getelementptr inbounds %struct.scarlett2_device_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %has_mixer to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_mixer, align 1
  %idxprom = zext i8 %5 to i32
  %arrayidx2 = getelementptr [2 x [14 x %struct.scarlett2_config]], ptr @scarlett2_config_items, i32 0, i32 %idxprom, i32 %config_item_num
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #11
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %value, align 1, !annotation !274
  %size3 = getelementptr [2 x [14 x %struct.scarlett2_config]], ptr @scarlett2_config_items, i32 0, i32 %idxprom, i32 %config_item_num, i32 1
  %7 = ptrtoint ptr %size3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %size3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %8)
  %cmp = icmp ugt i8 %8, 7
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %9 = lshr i8 %8, 3
  %div = zext i8 %9 to i32
  %mul = mul i32 %div, %count
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx2, align 1
  %conv7 = zext i8 %11 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req.i) #11
  %12 = getelementptr inbounds %struct.anon.79, ptr %req.i, i32 0, i32 1
  %13 = shl nuw i32 %conv7, 24
  %14 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %req.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %mul) #11
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %12, align 4
  %conv.i = trunc i32 %mul to i16
  %call.i = call fastcc i32 @scarlett2_usb(ptr noundef %mixer, i32 noundef 8388608, ptr noundef nonnull %req.i, i16 noundef zeroext 8, ptr noundef %buf, i16 noundef zeroext %conv.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mul)
  %cmp11 = icmp eq i32 %mul, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp1472 = icmp sgt i32 %count, 0
  %or.cond75 = and i1 %cmp11, %cmp1472
  br i1 %or.cond75, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %buf_16.074 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %buf, %if.end.for.body_crit_edge ]
  %i.073 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %17 = ptrtoint ptr %buf_16.074 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %buf_16.074, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %20 = ptrtoint ptr %buf_16.074 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %buf_16.074, align 2
  %inc = add nuw nsw i32 %i.073, 1
  %incdec.ptr = getelementptr i16, ptr %buf_16.074, i32 1
  %exitcond76.not = icmp eq i32 %inc, %count
  br i1 %exitcond76.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %entry
  %21 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx2, align 1
  %conv19 = zext i8 %22 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req.i65) #11
  %23 = getelementptr inbounds %struct.anon.79, ptr %req.i65, i32 0, i32 1
  %24 = shl nuw i32 %conv19, 24
  %25 = ptrtoint ptr %req.i65 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %req.i65, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16777216, ptr %23, align 4
  %call.i66 = call fastcc i32 @scarlett2_usb(ptr noundef %mixer, i32 noundef 8388608, ptr noundef nonnull %req.i65, i16 noundef zeroext 8, ptr noundef nonnull %value, i16 noundef zeroext 1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req.i65) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %cmp21 = icmp slt i32 %call.i66, 0
  br i1 %cmp21, label %if.end17.cleanup_crit_edge, label %for.cond25.preheader

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond25.preheader:                             ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp2868 = icmp sgt i32 %count, 0
  br i1 %cmp2868, label %for.body30.preheader, label %for.cond25.preheader.cleanup_crit_edge

for.cond25.preheader.cleanup_crit_edge:           ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body30.preheader:                             ; preds = %for.cond25.preheader
  %27 = add nsw i32 %count, -1
  %umin = call i32 @llvm.umin.i32(i32 %27, i32 7)
  %28 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %28)
  %value.promoted = load i8, ptr %value, align 1
  %29 = and i8 %value.promoted, 1
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %umin)
  %exitcond.not = icmp eq i32 %umin, 0
  br i1 %exitcond.not, label %for.body30.preheader.cleanup_crit_edge, label %for.body30.1

for.body30.preheader.cleanup_crit_edge:           ; preds = %for.body30.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body30.1:                                     ; preds = %for.body30.preheader
  %31 = lshr i8 %value.promoted, 1
  %incdec.ptr33 = getelementptr i8, ptr %buf, i32 1
  %32 = and i8 %31, 1
  %33 = ptrtoint ptr %incdec.ptr33 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %incdec.ptr33, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %umin)
  %exitcond.not.1 = icmp eq i32 %umin, 1
  br i1 %exitcond.not.1, label %for.body30.1.cleanup_crit_edge, label %for.body30.2

for.body30.1.cleanup_crit_edge:                   ; preds = %for.body30.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body30.2:                                     ; preds = %for.body30.1
  %34 = lshr i8 %value.promoted, 2
  %incdec.ptr33.1 = getelementptr i8, ptr %buf, i32 2
  %35 = and i8 %34, 1
  %36 = ptrtoint ptr %incdec.ptr33.1 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %incdec.ptr33.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umin)
  %exitcond.not.2 = icmp eq i32 %umin, 2
  br i1 %exitcond.not.2, label %for.body30.2.cleanup_crit_edge, label %for.body30.3

for.body30.2.cleanup_crit_edge:                   ; preds = %for.body30.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body30.3:                                     ; preds = %for.body30.2
  %37 = lshr i8 %value.promoted, 3
  %incdec.ptr33.2 = getelementptr i8, ptr %buf, i32 3
  %38 = and i8 %37, 1
  %39 = ptrtoint ptr %incdec.ptr33.2 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %incdec.ptr33.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %umin)
  %exitcond.not.3 = icmp eq i32 %umin, 3
  br i1 %exitcond.not.3, label %for.body30.3.cleanup_crit_edge, label %for.body30.4

for.body30.3.cleanup_crit_edge:                   ; preds = %for.body30.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body30.4:                                     ; preds = %for.body30.3
  %40 = lshr i8 %value.promoted, 4
  %incdec.ptr33.3 = getelementptr i8, ptr %buf, i32 4
  %41 = and i8 %40, 1
  %42 = ptrtoint ptr %incdec.ptr33.3 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %incdec.ptr33.3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %umin)
  %exitcond.not.4 = icmp eq i32 %umin, 4
  br i1 %exitcond.not.4, label %for.body30.4.cleanup_crit_edge, label %for.body30.5

for.body30.4.cleanup_crit_edge:                   ; preds = %for.body30.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body30.5:                                     ; preds = %for.body30.4
  %43 = lshr i8 %value.promoted, 5
  %incdec.ptr33.4 = getelementptr i8, ptr %buf, i32 5
  %44 = and i8 %43, 1
  %45 = ptrtoint ptr %incdec.ptr33.4 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %incdec.ptr33.4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %umin)
  %exitcond.not.5 = icmp eq i32 %umin, 5
  br i1 %exitcond.not.5, label %for.body30.5.cleanup_crit_edge, label %for.body30.6

for.body30.5.cleanup_crit_edge:                   ; preds = %for.body30.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body30.6:                                     ; preds = %for.body30.5
  %46 = lshr i8 %value.promoted, 6
  %incdec.ptr33.5 = getelementptr i8, ptr %buf, i32 6
  %47 = and i8 %46, 1
  %48 = ptrtoint ptr %incdec.ptr33.5 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %incdec.ptr33.5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %umin)
  %exitcond.not.6 = icmp eq i32 %umin, 6
  br i1 %exitcond.not.6, label %for.body30.6.cleanup_crit_edge, label %for.body30.7

for.body30.6.cleanup_crit_edge:                   ; preds = %for.body30.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body30.7:                                     ; preds = %for.body30.6
  call void @__sanitizer_cov_trace_pc() #13
  %49 = lshr i8 %value.promoted, 7
  %incdec.ptr33.6 = getelementptr i8, ptr %buf, i32 7
  %50 = ptrtoint ptr %incdec.ptr33.6 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %incdec.ptr33.6, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.body30.7, %for.body30.6.cleanup_crit_edge, %for.body30.5.cleanup_crit_edge, %for.body30.4.cleanup_crit_edge, %for.body30.3.cleanup_crit_edge, %for.body30.2.cleanup_crit_edge, %for.body30.1.cleanup_crit_edge, %for.body30.preheader.cleanup_crit_edge, %for.cond25.preheader.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i66, %if.end17.cleanup_crit_edge ], [ 0, %for.cond25.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ], [ 0, %for.body30.7 ], [ 0, %for.body30.6.cleanup_crit_edge ], [ 0, %for.body30.5.cleanup_crit_edge ], [ 0, %for.body30.4.cleanup_crit_edge ], [ 0, %for.body30.3.cleanup_crit_edge ], [ 0, %for.body30.2.cleanup_crit_edge ], [ 0, %for.body30.1.cleanup_crit_edge ], [ 0, %for.body30.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_update_input_other(ptr nocapture noundef readonly %mixer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %info1 = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info1, align 4
  %input_other_updated = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %input_other_updated to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %input_other_updated, align 4
  %level_input_count = getelementptr inbounds %struct.scarlett2_device_info, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %level_input_count to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %level_input_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  %conv = zext i8 %6 to i32
  %level_input_first = getelementptr inbounds %struct.scarlett2_device_info, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %level_input_first to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %level_input_first, align 2
  %conv3 = zext i8 %8 to i32
  %add = add nuw nsw i32 %conv3, %conv
  %level_switch = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 23
  %call = tail call fastcc i32 @scarlett2_usb_get_config(ptr noundef %mixer, i32 noundef 4, i32 noundef %add, ptr noundef %level_switch)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup57_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then.cleanup57_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %pad_input_count = getelementptr inbounds %struct.scarlett2_device_info, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %pad_input_count to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pad_input_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp eq i8 %10, 0
  br i1 %tobool7.not, label %if.end6.if.end21_crit_edge, label %if.then8

if.end6.if.end21_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then8:                                         ; preds = %if.end6
  %conv11 = zext i8 %10 to i32
  %pad_switch = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 24
  %call13 = tail call fastcc i32 @scarlett2_usb_get_config(ptr noundef %mixer, i32 noundef 5, i32 noundef %conv11, ptr noundef %pad_switch)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then8.cleanup57_crit_edge, label %if.then8.if.end21_crit_edge

if.then8.if.end21_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then8.cleanup57_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

if.end21:                                         ; preds = %if.then8.if.end21_crit_edge, %if.end6.if.end21_crit_edge
  %air_input_count = getelementptr inbounds %struct.scarlett2_device_info, ptr %3, i32 0, i32 9
  %11 = ptrtoint ptr %air_input_count to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %air_input_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool22.not = icmp eq i8 %12, 0
  br i1 %tobool22.not, label %if.end21.if.end36_crit_edge, label %if.then23

if.end21.if.end36_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then23:                                        ; preds = %if.end21
  %conv26 = zext i8 %12 to i32
  %air_switch = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 26
  %call28 = tail call fastcc i32 @scarlett2_usb_get_config(ptr noundef %mixer, i32 noundef 7, i32 noundef %conv26, ptr noundef %air_switch)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then23.cleanup57_crit_edge, label %if.then23.if.end36_crit_edge

if.then23.if.end36_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then23.cleanup57_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

if.end36:                                         ; preds = %if.then23.if.end36_crit_edge, %if.end21.if.end36_crit_edge
  %phantom_count = getelementptr inbounds %struct.scarlett2_device_info, ptr %3, i32 0, i32 10
  %13 = ptrtoint ptr %phantom_count to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %phantom_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool37.not = icmp eq i8 %14, 0
  br i1 %tobool37.not, label %if.end36.if.end56_crit_edge, label %if.then38

if.end36.if.end56_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then38:                                        ; preds = %if.end36
  %conv41 = zext i8 %14 to i32
  %phantom_switch = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 27
  %call43 = tail call fastcc i32 @scarlett2_usb_get_config(ptr noundef %mixer, i32 noundef 8, i32 noundef %conv41, ptr noundef %phantom_switch)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then38.cleanup57_crit_edge, label %cleanup53

if.then38.cleanup57_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

cleanup53:                                        ; preds = %if.then38
  %phantom_persistence = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 28
  %call48 = tail call fastcc i32 @scarlett2_usb_get_config(ptr noundef %mixer, i32 noundef 9, i32 noundef 1, ptr noundef %phantom_persistence)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %cleanup53.cleanup57_crit_edge, label %cleanup53.if.end56_crit_edge

cleanup53.if.end56_crit_edge:                     ; preds = %cleanup53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

cleanup53.cleanup57_crit_edge:                    ; preds = %cleanup53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

if.end56:                                         ; preds = %cleanup53.if.end56_crit_edge, %if.end36.if.end56_crit_edge
  br label %cleanup57

cleanup57:                                        ; preds = %if.end56, %cleanup53.cleanup57_crit_edge, %if.then38.cleanup57_crit_edge, %if.then23.cleanup57_crit_edge, %if.then8.cleanup57_crit_edge, %if.then.cleanup57_crit_edge
  %retval.7 = phi i32 [ 0, %if.end56 ], [ %call48, %cleanup53.cleanup57_crit_edge ], [ %call28, %if.then23.cleanup57_crit_edge ], [ %call13, %if.then8.cleanup57_crit_edge ], [ %call, %if.then.cleanup57_crit_edge ], [ %call43, %if.then38.cleanup57_crit_edge ]
  ret i32 %retval.7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_update_monitor_other(ptr nocapture noundef readonly %mixer) unnamed_addr #0 align 64 {
entry:
  %monitor_other_enable = alloca [2 x i8], align 1
  %monitor_other_switch = alloca [2 x i8], align 1
  %bitmap = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %info1 = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %monitor_other_enable) #11
  %4 = ptrtoint ptr %monitor_other_enable to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %monitor_other_enable, align 1, !annotation !274
  %5 = getelementptr inbounds [2 x i8], ptr %monitor_other_enable, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !274
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %monitor_other_switch) #11
  %7 = ptrtoint ptr %monitor_other_switch to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %monitor_other_switch, align 1, !annotation !274
  %8 = getelementptr inbounds [2 x i8], ptr %monitor_other_switch, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !274
  %monitor_other_updated = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %monitor_other_updated to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %monitor_other_updated, align 1
  %direct_monitor = getelementptr inbounds %struct.scarlett2_device_info, ptr %3, i32 0, i32 12
  %11 = ptrtoint ptr %direct_monitor to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %direct_monitor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %direct_monitor_switch = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 29
  %call = tail call fastcc i32 @scarlett2_usb_get_config(ptr noundef %mixer, i32 noundef 10, i32 noundef 1, ptr noundef %direct_monitor_switch)
  br label %cleanup51

if.end:                                           ; preds = %entry
  %has_speaker_switching = getelementptr inbounds %struct.scarlett2_device_info, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %has_speaker_switching to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %has_speaker_switching, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool2.not = icmp eq i8 %14, 0
  br i1 %tobool2.not, label %if.end.cleanup51_crit_edge, label %if.end4

if.end.cleanup51_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup51

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @scarlett2_usb_get_config(ptr noundef %mixer, i32 noundef 12, i32 noundef 2, ptr noundef nonnull %monitor_other_enable)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end4.cleanup51_crit_edge, label %if.end7

if.end4.cleanup51_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup51

if.end7:                                          ; preds = %if.end4
  %call9 = call fastcc i32 @scarlett2_usb_get_config(ptr noundef %mixer, i32 noundef 11, i32 noundef 2, ptr noundef nonnull %monitor_other_switch)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end7.cleanup51_crit_edge, label %if.end12

if.end7.cleanup51_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup51

if.end12:                                         ; preds = %if.end7
  %15 = ptrtoint ptr %monitor_other_enable to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %monitor_other_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool13.not = icmp eq i8 %16, 0
  br i1 %tobool13.not, label %if.end12.if.end18_crit_edge, label %if.else

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %monitor_other_switch to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %monitor_other_switch, align 1
  %add = add i8 %18, 1
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end12.if.end18_crit_edge
  %add.sink = phi i8 [ %add, %if.else ], [ 0, %if.end12.if.end18_crit_edge ]
  %19 = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 30
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %add.sink, ptr %19, align 4
  %has_talkback = getelementptr inbounds %struct.scarlett2_device_info, ptr %3, i32 0, i32 5
  %21 = ptrtoint ptr %has_talkback to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %has_talkback, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool19.not = icmp eq i8 %22, 0
  br i1 %tobool19.not, label %if.end18.cleanup51_crit_edge, label %if.then20

if.end18.cleanup51_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup51

if.then20:                                        ; preds = %if.end18
  %arrayidx23 = getelementptr %struct.scarlett2_device_info, ptr %3, i32 0, i32 16, i32 4
  %23 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx23, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bitmap) #11
  %25 = ptrtoint ptr %bitmap to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %bitmap, align 2, !annotation !274
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool26.not = icmp eq i8 %27, 0
  br i1 %tobool26.not, label %if.then20.if.end34_crit_edge, label %if.else28

if.then20.if.end34_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.else28:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %8, align 1
  %add31 = add i8 %29, 1
  br label %if.end34

if.end34:                                         ; preds = %if.else28, %if.then20.if.end34_crit_edge
  %add31.sink = phi i8 [ %add31, %if.else28 ], [ 0, %if.then20.if.end34_crit_edge ]
  %30 = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 31
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %add31.sink, ptr %30, align 1
  %call35 = call fastcc i32 @scarlett2_usb_get_config(ptr noundef %mixer, i32 noundef 13, i32 noundef 1, ptr noundef nonnull %bitmap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %cleanup51.critedge, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp4077 = icmp sgt i32 %24, 0
  br i1 %cmp4077, label %for.cond.preheader.for.body_crit_edge, label %if.end50.critedge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.078 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %32 = ptrtoint ptr %bitmap to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %bitmap, align 2
  %34 = trunc i16 %33 to i8
  %conv43 = and i8 %34, 1
  %arrayidx44 = getelementptr %struct.scarlett2_data, ptr %1, i32 0, i32 32, i32 %i.078
  %35 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv43, ptr %arrayidx44, align 1
  %inc = add nuw nsw i32 %i.078, 1
  %36 = load i16, ptr %bitmap, align 2
  %37 = lshr i16 %36, 1
  store i16 %37, ptr %bitmap, align 2
  %exitcond.not = icmp eq i32 %inc, %24
  br i1 %exitcond.not, label %cleanup, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bitmap) #11
  br label %cleanup51

if.end50.critedge:                                ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bitmap) #11
  br label %cleanup51

cleanup51.critedge:                               ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bitmap) #11
  br label %cleanup51

cleanup51:                                        ; preds = %cleanup51.critedge, %if.end50.critedge, %cleanup, %if.end18.cleanup51_crit_edge, %if.end7.cleanup51_crit_edge, %if.end4.cleanup51_crit_edge, %if.end.cleanup51_crit_edge, %if.then
  %retval.1 = phi i32 [ %call, %if.then ], [ 0, %if.end.cleanup51_crit_edge ], [ %call5, %if.end4.cleanup51_crit_edge ], [ %call9, %if.end7.cleanup51_crit_edge ], [ %call35, %cleanup51.critedge ], [ 0, %cleanup ], [ 0, %if.end50.critedge ], [ 0, %if.end18.cleanup51_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %monitor_other_switch) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %monitor_other_enable) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_usb_get_mux(ptr nocapture noundef readonly %mixer) unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.anon.81, align 2
  %data = alloca [77 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %num_mux_dsts = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num_mux_dsts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_mux_dsts, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #11
  %4 = getelementptr inbounds %struct.anon.81, ptr %req, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 308, ptr nonnull %data) #11
  %5 = call ptr @memset(ptr %data, i32 255, i32 308)
  %mux_updated = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %mux_updated to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %mux_updated, align 2
  %7 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %req, align 2
  %conv = trunc i32 %3 to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %4, align 2
  %conv2 = shl i16 %conv, 2
  %call = call fastcc i32 @scarlett2_usb(ptr noundef %mixer, i32 noundef 12289, ptr noundef nonnull %req, i16 noundef zeroext 4, ptr noundef nonnull %data, i16 noundef zeroext %conv2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp419 = icmp sgt i32 %3, 0
  br i1 %cmp419, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %info1.i = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 4
  %num_mux_srcs.i = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %scarlett2_usb_populate_mux.exit.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %scarlett2_usb_populate_mux.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [77 x i32], ptr %data, i32 0, i32 %i.020
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info1.i, align 4
  %port_count2.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %14, i32 0, i32 16
  %and.i = and i32 %12, 4095
  %arrayidx3.i.i = getelementptr %struct.scarlett2_device_info, ptr %14, i32 0, i32 16, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %and.i)
  %cmp6.i.i = icmp ugt i32 %16, %and.i
  br i1 %cmp6.i.i, label %for.body.if.end.i_crit_edge, label %for.inc.i.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.inc.i.i:                                      ; preds = %for.body
  %arrayidx3.1.i.i = getelementptr %struct.scarlett2_device_info, ptr %14, i32 0, i32 16, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx3.1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx3.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %and.i)
  %cmp4.not.1.i.i = icmp ugt i32 %and.i, 127
  %add.1.i.i = add i32 %18, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1.i.i, i32 %and.i)
  %cmp6.1.i.i = icmp ugt i32 %add.1.i.i, %and.i
  %or.cond.1.i.i = select i1 %cmp4.not.1.i.i, i1 %cmp6.1.i.i, i1 false
  %add8.1.i.i = add nsw i32 %and.i, -128
  %sub.1.i.i = add i32 %add8.1.i.i, %16
  br i1 %or.cond.1.i.i, label %for.inc.i.i.scarlett2_mux_id_to_num.exit.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.scarlett2_mux_id_to_num.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_mux_id_to_num.exit.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %port_num.1.1.i.i = add i32 %18, %16
  %arrayidx3.2.i.i = getelementptr %struct.scarlett2_device_info, ptr %14, i32 0, i32 16, i32 2, i32 1
  %19 = ptrtoint ptr %arrayidx3.2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx3.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 383, i32 %and.i)
  %cmp4.not.2.i.i = icmp ugt i32 %and.i, 383
  %add.2.i.i = add i32 %20, 384
  call void @__sanitizer_cov_trace_cmp4(i32 %add.2.i.i, i32 %and.i)
  %cmp6.2.i.i = icmp ugt i32 %add.2.i.i, %and.i
  %or.cond.2.i.i = select i1 %cmp4.not.2.i.i, i1 %cmp6.2.i.i, i1 false
  %add8.2.i.i = add nsw i32 %and.i, -384
  %sub.2.i.i = add i32 %add8.2.i.i, %port_num.1.1.i.i
  br i1 %or.cond.2.i.i, label %for.inc.1.i.i.scarlett2_mux_id_to_num.exit.i_crit_edge, label %for.inc.2.i.i

for.inc.1.i.i.scarlett2_mux_id_to_num.exit.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_mux_id_to_num.exit.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %port_num.1.2.i.i = add i32 %20, %port_num.1.1.i.i
  %arrayidx3.3.i.i = getelementptr %struct.scarlett2_device_info, ptr %14, i32 0, i32 16, i32 3, i32 1
  %21 = ptrtoint ptr %arrayidx3.3.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx3.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %and.i)
  %cmp4.not.3.i.i = icmp ugt i32 %and.i, 511
  %add.3.i.i = add i32 %22, 512
  call void @__sanitizer_cov_trace_cmp4(i32 %add.3.i.i, i32 %and.i)
  %cmp6.3.i.i = icmp ugt i32 %add.3.i.i, %and.i
  %or.cond.3.i.i = select i1 %cmp4.not.3.i.i, i1 %cmp6.3.i.i, i1 false
  %add8.3.i.i = add i32 %port_num.1.2.i.i, %and.i
  %sub.3.i.i = add i32 %add8.3.i.i, -512
  br i1 %or.cond.3.i.i, label %for.inc.2.i.i.scarlett2_mux_id_to_num.exit.i_crit_edge, label %for.inc.3.i.i

for.inc.2.i.i.scarlett2_mux_id_to_num.exit.i_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_mux_id_to_num.exit.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %arrayidx3.4.i.i = getelementptr %struct.scarlett2_device_info, ptr %14, i32 0, i32 16, i32 4, i32 1
  %23 = ptrtoint ptr %arrayidx3.4.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx3.4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 767, i32 %and.i)
  %cmp4.not.4.i.i = icmp ugt i32 %and.i, 767
  %add.4.i.i = add i32 %24, 768
  call void @__sanitizer_cov_trace_cmp4(i32 %add.4.i.i, i32 %and.i)
  %cmp6.4.i.i = icmp ugt i32 %add.4.i.i, %and.i
  %or.cond.4.i.i = select i1 %cmp4.not.4.i.i, i1 %cmp6.4.i.i, i1 false
  %add8.4.i.i = add i32 %add8.3.i.i, %22
  %sub.4.i.i = add i32 %add8.4.i.i, -768
  br i1 %or.cond.4.i.i, label %for.inc.3.i.i.scarlett2_mux_id_to_num.exit.i_crit_edge, label %for.inc.4.i.i

for.inc.3.i.i.scarlett2_mux_id_to_num.exit.i_crit_edge: ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_mux_id_to_num.exit.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %arrayidx3.5.i.i = getelementptr %struct.scarlett2_device_info, ptr %14, i32 0, i32 16, i32 5, i32 1
  %25 = ptrtoint ptr %arrayidx3.5.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx3.5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1535, i32 %and.i)
  %cmp4.not.5.i.i = icmp ugt i32 %and.i, 1535
  %add.5.i.i = add i32 %26, 1536
  call void @__sanitizer_cov_trace_cmp4(i32 %add.5.i.i, i32 %and.i)
  %cmp6.5.i.i = icmp ugt i32 %add.5.i.i, %and.i
  %or.cond.5.i.i = select i1 %cmp4.not.5.i.i, i1 %cmp6.5.i.i, i1 false
  %add8.5.i.i = add i32 %add8.4.i.i, -1536
  %sub.5.i.i = add i32 %add8.5.i.i, %24
  br i1 %or.cond.5.i.i, label %for.inc.4.i.i.scarlett2_mux_id_to_num.exit.i_crit_edge, label %for.inc.4.i.i.scarlett2_usb_populate_mux.exit_crit_edge

for.inc.4.i.i.scarlett2_usb_populate_mux.exit_crit_edge: ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_usb_populate_mux.exit

for.inc.4.i.i.scarlett2_mux_id_to_num.exit.i_crit_edge: ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_mux_id_to_num.exit.i

scarlett2_mux_id_to_num.exit.i:                   ; preds = %for.inc.4.i.i.scarlett2_mux_id_to_num.exit.i_crit_edge, %for.inc.3.i.i.scarlett2_mux_id_to_num.exit.i_crit_edge, %for.inc.2.i.i.scarlett2_mux_id_to_num.exit.i_crit_edge, %for.inc.1.i.i.scarlett2_mux_id_to_num.exit.i_crit_edge, %for.inc.i.i.scarlett2_mux_id_to_num.exit.i_crit_edge
  %retval.2.i.i = phi i32 [ %sub.1.i.i, %for.inc.i.i.scarlett2_mux_id_to_num.exit.i_crit_edge ], [ %sub.2.i.i, %for.inc.1.i.i.scarlett2_mux_id_to_num.exit.i_crit_edge ], [ %sub.3.i.i, %for.inc.2.i.i.scarlett2_mux_id_to_num.exit.i_crit_edge ], [ %sub.4.i.i, %for.inc.3.i.i.scarlett2_mux_id_to_num.exit.i_crit_edge ], [ %sub.5.i.i, %for.inc.4.i.i.scarlett2_mux_id_to_num.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i.i)
  %cmp.i = icmp slt i32 %retval.2.i.i, 0
  br i1 %cmp.i, label %scarlett2_mux_id_to_num.exit.i.scarlett2_usb_populate_mux.exit_crit_edge, label %scarlett2_mux_id_to_num.exit.i.if.end.i_crit_edge

scarlett2_mux_id_to_num.exit.i.if.end.i_crit_edge: ; preds = %scarlett2_mux_id_to_num.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

scarlett2_mux_id_to_num.exit.i.scarlett2_usb_populate_mux.exit_crit_edge: ; preds = %scarlett2_mux_id_to_num.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_usb_populate_mux.exit

if.end.i:                                         ; preds = %scarlett2_mux_id_to_num.exit.i.if.end.i_crit_edge, %for.body.if.end.i_crit_edge
  %retval.2.i97.i = phi i32 [ %retval.2.i.i, %scarlett2_mux_id_to_num.exit.i.if.end.i_crit_edge ], [ %and.i, %for.body.if.end.i_crit_edge ]
  %27 = ptrtoint ptr %num_mux_dsts to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_mux_dsts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.2.i97.i, i32 %28)
  %cmp3.not.i = icmp slt i32 %retval.2.i97.i, %28
  br i1 %cmp3.not.i, label %if.end7.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i, ptr noundef nonnull @.str.41, i32 noundef %12, i32 noundef %retval.2.i97.i, i32 noundef %28) #14
  br label %scarlett2_usb_populate_mux.exit

if.end7.i:                                        ; preds = %if.end.i
  %shr.i = lshr i32 %12, 12
  %35 = ptrtoint ptr %port_count2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port_count2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %shr.i)
  %cmp6.i44.i = icmp ugt i32 %36, %shr.i
  br i1 %cmp6.i44.i, label %if.end7.i.if.end11.i_crit_edge, label %for.inc.i52.i

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

for.inc.i52.i:                                    ; preds = %if.end7.i
  %arrayidx3.1.i45.i = getelementptr %struct.scarlett2_device_info, ptr %14, i32 0, i32 16, i32 1
  %37 = ptrtoint ptr %arrayidx3.1.i45.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx3.1.i45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 524287, i32 %12)
  %cmp4.not.1.i46.i = icmp ugt i32 %12, 524287
  %add.1.i47.i = add i32 %38, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1.i47.i, i32 %shr.i)
  %cmp6.1.i48.i = icmp ugt i32 %add.1.i47.i, %shr.i
  %or.cond.1.i49.i = select i1 %cmp4.not.1.i46.i, i1 %cmp6.1.i48.i, i1 false
  %add8.1.i50.i = add nsw i32 %shr.i, -128
  %sub.1.i51.i = add i32 %add8.1.i50.i, %36
  br i1 %or.cond.1.i49.i, label %for.inc.i52.i.scarlett2_mux_id_to_num.exit91.i_crit_edge, label %for.inc.1.i61.i

for.inc.i52.i.scarlett2_mux_id_to_num.exit91.i_crit_edge: ; preds = %for.inc.i52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_mux_id_to_num.exit91.i

for.inc.1.i61.i:                                  ; preds = %for.inc.i52.i
  %port_num.1.1.i53.i = add i32 %38, %36
  %arrayidx3.2.i54.i = getelementptr %struct.scarlett2_device_info, ptr %14, i32 0, i32 16, i32 2
  %39 = ptrtoint ptr %arrayidx3.2.i54.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx3.2.i54.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572863, i32 %12)
  %cmp4.not.2.i55.i = icmp ugt i32 %12, 1572863
  %add.2.i56.i = add i32 %40, 384
  call void @__sanitizer_cov_trace_cmp4(i32 %add.2.i56.i, i32 %shr.i)
  %cmp6.2.i57.i = icmp ugt i32 %add.2.i56.i, %shr.i
  %or.cond.2.i58.i = select i1 %cmp4.not.2.i55.i, i1 %cmp6.2.i57.i, i1 false
  %add8.2.i59.i = add nsw i32 %shr.i, -384
  %sub.2.i60.i = add i32 %add8.2.i59.i, %port_num.1.1.i53.i
  br i1 %or.cond.2.i58.i, label %for.inc.1.i61.i.scarlett2_mux_id_to_num.exit91.i_crit_edge, label %for.inc.2.i70.i

for.inc.1.i61.i.scarlett2_mux_id_to_num.exit91.i_crit_edge: ; preds = %for.inc.1.i61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_mux_id_to_num.exit91.i

for.inc.2.i70.i:                                  ; preds = %for.inc.1.i61.i
  %port_num.1.2.i62.i = add i32 %40, %port_num.1.1.i53.i
  %arrayidx3.3.i63.i = getelementptr %struct.scarlett2_device_info, ptr %14, i32 0, i32 16, i32 3
  %41 = ptrtoint ptr %arrayidx3.3.i63.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx3.3.i63.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %12)
  %cmp4.not.3.i64.i = icmp ugt i32 %12, 2097151
  %add.3.i65.i = add i32 %42, 512
  call void @__sanitizer_cov_trace_cmp4(i32 %add.3.i65.i, i32 %shr.i)
  %cmp6.3.i66.i = icmp ugt i32 %add.3.i65.i, %shr.i
  %or.cond.3.i67.i = select i1 %cmp4.not.3.i64.i, i1 %cmp6.3.i66.i, i1 false
  %add8.3.i68.i = add i32 %port_num.1.2.i62.i, %shr.i
  %sub.3.i69.i = add i32 %add8.3.i68.i, -512
  br i1 %or.cond.3.i67.i, label %for.inc.2.i70.i.scarlett2_mux_id_to_num.exit91.i_crit_edge, label %for.inc.3.i79.i

for.inc.2.i70.i.scarlett2_mux_id_to_num.exit91.i_crit_edge: ; preds = %for.inc.2.i70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_mux_id_to_num.exit91.i

for.inc.3.i79.i:                                  ; preds = %for.inc.2.i70.i
  %arrayidx3.4.i72.i = getelementptr %struct.scarlett2_device_info, ptr %14, i32 0, i32 16, i32 4
  %43 = ptrtoint ptr %arrayidx3.4.i72.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx3.4.i72.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3145727, i32 %12)
  %cmp4.not.4.i73.i = icmp ugt i32 %12, 3145727
  %add.4.i74.i = add i32 %44, 768
  call void @__sanitizer_cov_trace_cmp4(i32 %add.4.i74.i, i32 %shr.i)
  %cmp6.4.i75.i = icmp ugt i32 %add.4.i74.i, %shr.i
  %or.cond.4.i76.i = select i1 %cmp4.not.4.i73.i, i1 %cmp6.4.i75.i, i1 false
  %add8.4.i77.i = add i32 %add8.3.i68.i, %42
  %sub.4.i78.i = add i32 %add8.4.i77.i, -768
  br i1 %or.cond.4.i76.i, label %for.inc.3.i79.i.scarlett2_mux_id_to_num.exit91.i_crit_edge, label %for.inc.4.i89.i

for.inc.3.i79.i.scarlett2_mux_id_to_num.exit91.i_crit_edge: ; preds = %for.inc.3.i79.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_mux_id_to_num.exit91.i

for.inc.4.i89.i:                                  ; preds = %for.inc.3.i79.i
  %arrayidx3.5.i81.i = getelementptr %struct.scarlett2_device_info, ptr %14, i32 0, i32 16, i32 5
  %45 = ptrtoint ptr %arrayidx3.5.i81.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx3.5.i81.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291455, i32 %12)
  %cmp4.not.5.i82.i = icmp ugt i32 %12, 6291455
  %add.5.i83.i = add i32 %46, 1536
  call void @__sanitizer_cov_trace_cmp4(i32 %add.5.i83.i, i32 %shr.i)
  %cmp6.5.i84.i = icmp ugt i32 %add.5.i83.i, %shr.i
  %or.cond.5.i85.i = select i1 %cmp4.not.5.i82.i, i1 %cmp6.5.i84.i, i1 false
  %add8.5.i86.i = add i32 %add8.4.i77.i, -1536
  %sub.5.i87.i = add i32 %add8.5.i86.i, %44
  br i1 %or.cond.5.i85.i, label %for.inc.4.i89.i.scarlett2_mux_id_to_num.exit91.i_crit_edge, label %for.inc.4.i89.i.scarlett2_usb_populate_mux.exit_crit_edge

for.inc.4.i89.i.scarlett2_usb_populate_mux.exit_crit_edge: ; preds = %for.inc.4.i89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_usb_populate_mux.exit

for.inc.4.i89.i.scarlett2_mux_id_to_num.exit91.i_crit_edge: ; preds = %for.inc.4.i89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_mux_id_to_num.exit91.i

scarlett2_mux_id_to_num.exit91.i:                 ; preds = %for.inc.4.i89.i.scarlett2_mux_id_to_num.exit91.i_crit_edge, %for.inc.3.i79.i.scarlett2_mux_id_to_num.exit91.i_crit_edge, %for.inc.2.i70.i.scarlett2_mux_id_to_num.exit91.i_crit_edge, %for.inc.1.i61.i.scarlett2_mux_id_to_num.exit91.i_crit_edge, %for.inc.i52.i.scarlett2_mux_id_to_num.exit91.i_crit_edge
  %retval.2.i90.i = phi i32 [ %sub.1.i51.i, %for.inc.i52.i.scarlett2_mux_id_to_num.exit91.i_crit_edge ], [ %sub.2.i60.i, %for.inc.1.i61.i.scarlett2_mux_id_to_num.exit91.i_crit_edge ], [ %sub.3.i69.i, %for.inc.2.i70.i.scarlett2_mux_id_to_num.exit91.i_crit_edge ], [ %sub.4.i78.i, %for.inc.3.i79.i.scarlett2_mux_id_to_num.exit91.i_crit_edge ], [ %sub.5.i87.i, %for.inc.4.i89.i.scarlett2_mux_id_to_num.exit91.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i90.i)
  %cmp9.i = icmp slt i32 %retval.2.i90.i, 0
  br i1 %cmp9.i, label %scarlett2_mux_id_to_num.exit91.i.scarlett2_usb_populate_mux.exit_crit_edge, label %scarlett2_mux_id_to_num.exit91.i.if.end11.i_crit_edge

scarlett2_mux_id_to_num.exit91.i.if.end11.i_crit_edge: ; preds = %scarlett2_mux_id_to_num.exit91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

scarlett2_mux_id_to_num.exit91.i.scarlett2_usb_populate_mux.exit_crit_edge: ; preds = %scarlett2_mux_id_to_num.exit91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_usb_populate_mux.exit

if.end11.i:                                       ; preds = %scarlett2_mux_id_to_num.exit91.i.if.end11.i_crit_edge, %if.end7.i.if.end11.i_crit_edge
  %retval.2.i90104.i = phi i32 [ %retval.2.i90.i, %scarlett2_mux_id_to_num.exit91.i.if.end11.i_crit_edge ], [ %shr.i, %if.end7.i.if.end11.i_crit_edge ]
  %47 = ptrtoint ptr %num_mux_srcs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_mux_srcs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.2.i90104.i, i32 %48)
  %cmp12.not.i = icmp slt i32 %retval.2.i90104.i, %48
  br i1 %cmp12.not.i, label %if.end22.i, label %do.end16.i

do.end16.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %dev19.i = getelementptr inbounds %struct.snd_usb_audio, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev19.i, align 4
  %dev20.i = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i, ptr noundef nonnull @.str.44, i32 noundef %12, i32 noundef %retval.2.i90104.i, i32 noundef %48) #14
  br label %scarlett2_usb_populate_mux.exit

if.end22.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = trunc i32 %retval.2.i90104.i to i8
  %arrayidx.i = getelementptr %struct.scarlett2_data, ptr %1, i32 0, i32 48, i32 %retval.2.i97.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  br label %scarlett2_usb_populate_mux.exit

scarlett2_usb_populate_mux.exit:                  ; preds = %if.end22.i, %do.end16.i, %scarlett2_mux_id_to_num.exit91.i.scarlett2_usb_populate_mux.exit_crit_edge, %for.inc.4.i89.i.scarlett2_usb_populate_mux.exit_crit_edge, %do.end.i, %scarlett2_mux_id_to_num.exit.i.scarlett2_usb_populate_mux.exit_crit_edge, %for.inc.4.i.i.scarlett2_usb_populate_mux.exit_crit_edge
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %scarlett2_usb_populate_mux.exit.cleanup_crit_edge, label %scarlett2_usb_populate_mux.exit.for.body_crit_edge

scarlett2_usb_populate_mux.exit.for.body_crit_edge: ; preds = %scarlett2_usb_populate_mux.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

scarlett2_usb_populate_mux.exit.cleanup_crit_edge: ; preds = %scarlett2_usb_populate_mux.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %scarlett2_usb_populate_mux.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %scarlett2_usb_populate_mux.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 308, ptr nonnull %data) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_add_new_ctl(ptr noundef %mixer, ptr noundef %ncontrol, i32 noundef %index, i32 noundef %channels, ptr noundef %name, ptr noundef writeonly %kctl_return) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 152) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mixer, ptr %call7.i.i, align 8
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %index, ptr %control, align 4
  %id = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %id, align 4
  %channels3 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %channels3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %channels, ptr %channels3, align 8
  %val_type = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %val_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %val_type, align 4
  %call4 = tail call ptr @snd_ctl_new1(ptr noundef %ncontrol, ptr noundef nonnull %call7.i.i) #11
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %private_free = getelementptr inbounds %struct.snd_kcontrol, ptr %call4, i32 0, i32 9
  %6 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @snd_usb_mixer_elem_free, ptr %private_free, align 4
  %name9 = getelementptr inbounds %struct.snd_kcontrol, ptr %call4, i32 0, i32 1, i32 4
  %call10 = tail call i32 @strscpy(ptr noundef %name9, ptr noundef %name, i32 noundef 44) #11
  %call12 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call4, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %tobool15.not = icmp eq ptr %kctl_return, null
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.then16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %kctl_return to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %kctl_return, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end14.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then6 ], [ -12, %entry.cleanup_crit_edge ], [ %call12, %if.end7.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_mixer_elem_free(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_mixer_add_list(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @scarlett2_msd_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %private_data1 = getelementptr inbounds %struct.usb_mixer_interface, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 4
  %msd_switch = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %msd_switch to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %msd_switch, align 2
  %conv = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_msd_ctl_put(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %msd_switch = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %msd_switch to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %msd_switch, align 2
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool = icmp ne i32 %9, 0
  %10 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %10)
  %cmp = icmp eq i8 %7, %10
  br i1 %cmp, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %lnot.ext = zext i1 %tobool to i32
  %11 = ptrtoint ptr %msd_switch to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %msd_switch, align 2
  %call = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %3, i32 noundef 6, i32 noundef 0, i32 noundef %lnot.ext)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp eq i32 %call, 0
  %spec.store.select = select i1 %cmp7, i32 1, i32 %call
  br label %unlock

unlock:                                           ; preds = %if.end, %entry.unlock_crit_edge
  %err.0 = phi i32 [ 0, %entry.unlock_crit_edge ], [ %spec.store.select, %if.end ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_usb_set_config(ptr nocapture noundef readonly %mixer, i32 noundef %config_item_num, i32 noundef %index, i32 noundef %value) unnamed_addr #0 align 64 {
entry:
  %req.i = alloca %struct.anon.79, align 4
  %req = alloca %struct.anon.83, align 4
  %req2 = alloca i32, align 4
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %info1 = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info1, align 4
  %has_mixer = getelementptr inbounds %struct.scarlett2_device_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %has_mixer to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_mixer, align 1
  %idxprom = zext i8 %5 to i32
  %arrayidx2 = getelementptr [2 x [14 x %struct.scarlett2_config]], ptr @scarlett2_config_items, i32 0, i32 %idxprom, i32 %config_item_num
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req) #11
  %6 = getelementptr inbounds %struct.anon.83, ptr %req, i32 0, i32 1
  %7 = getelementptr inbounds %struct.anon.83, ptr %req, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req2) #11
  %work = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 3
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #11
  %size3 = getelementptr [2 x [14 x %struct.scarlett2_config]], ptr @scarlett2_config_items, i32 0, i32 %idxprom, i32 %config_item_num, i32 1
  %8 = ptrtoint ptr %size3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %size3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %9)
  %cmp = icmp ugt i8 %9, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %10 = lshr i8 %9, 3
  %div = zext i8 %10 to i32
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx2, align 1
  %conv8 = zext i8 %12 to i32
  %mul = mul i32 %div, %index
  %add = add i32 %mul, %conv8
  br label %if.end20

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #11
  %13 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %tmp, align 1, !annotation !274
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx2, align 1
  %conv10 = zext i8 %15 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req.i) #11
  %16 = getelementptr inbounds %struct.anon.79, ptr %req.i, i32 0, i32 1
  %17 = shl nuw i32 %conv10, 24
  %18 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %req.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16777216, ptr %16, align 4
  %call.i = call fastcc i32 @scarlett2_usb(ptr noundef %mixer, i32 noundef 8388608, ptr noundef nonnull %req.i, i16 noundef zeroext 8, ptr noundef nonnull %tmp, i16 noundef zeroext 1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %shl16 = shl nuw i32 1, %index
  %20 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tmp, align 1
  %22 = trunc i32 %shl16 to i8
  %23 = xor i8 %22, -1
  %conv18 = and i8 %21, %23
  %conv14 = or i8 %21, %22
  %storemerge = select i1 %tobool.not, i8 %conv18, i8 %conv14
  %conv19 = zext i8 %storemerge to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #11
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then
  %value.addr.0 = phi i32 [ %value, %if.then ], [ %conv19, %if.else ]
  %offset.0 = phi i32 [ %add, %if.then ], [ %conv10, %if.else ]
  %size.0 = phi i32 [ %div, %if.then ], [ 1, %if.else ]
  %24 = call i32 @llvm.bswap.i32(i32 %offset.0)
  %25 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %req, align 4
  %26 = shl nuw nsw i32 %size.0, 24
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %6, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %value.addr.0)
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %7, align 4
  %30 = trunc i32 %size.0 to i16
  %conv24 = add nuw nsw i16 %30, 8
  %call25 = call fastcc i32 @scarlett2_usb(ptr noundef %mixer, i32 noundef 8388609, ptr noundef nonnull %req, i16 noundef zeroext %conv24, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end20.cleanup_crit_edge, label %if.end29

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %activate = getelementptr [2 x [14 x %struct.scarlett2_config]], ptr @scarlett2_config_items, i32 0, i32 %idxprom, i32 %config_item_num, i32 2
  %31 = ptrtoint ptr %activate to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %activate, align 1
  %conv30 = zext i8 %32 to i32
  %33 = shl nuw i32 %conv30, 24
  %34 = ptrtoint ptr %req2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %req2, align 4
  %call31 = call fastcc i32 @scarlett2_usb(ptr noundef %mixer, i32 noundef 8388610, ptr noundef nonnull %req2, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end29.cleanup_crit_edge, label %if.end35

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %32)
  %cmp38.not = icmp eq i8 %32, 6
  br i1 %cmp38.not, label %if.end35.cleanup_crit_edge, label %if.then40

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %35 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %35, ptr noundef %work, i32 noundef 200) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end35.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end20.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end20.cleanup_crit_edge ], [ %call31, %if.end29.cleanup_crit_edge ], [ 0, %if.then40 ], [ 0, %if.end35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req2) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @scarlett2_volume_ctl_info(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 8
  %channels = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channels, align 4
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 127, ptr %max, align 4
  %step = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 2
  %8 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %step, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_master_volume_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %vol_updated = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %vol_updated to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vol_updated, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @scarlett2_update_volumes(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  %master_vol = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 19
  %8 = ptrtoint ptr %master_vol to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %master_vol, align 1
  %conv = zext i8 %9 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scarlett2_update_volumes(ptr nocapture noundef readonly %mixer) unnamed_addr #0 align 64 {
entry:
  %req.i.i = alloca %struct.anon.79, align 4
  %volume_status = alloca %struct.scarlett2_usb_volume_status, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %info1 = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info1, align 4
  call void @llvm.lifetime.start.p0(i64 71, ptr nonnull %volume_status) #11
  %4 = call ptr @memset(ptr %volume_status, i32 255, i32 71)
  %arrayidx3 = getelementptr %struct.scarlett2_device_info, ptr %3, i32 0, i32 16, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx3, align 4
  %vol_updated = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %vol_updated to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %vol_updated, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req.i.i) #11
  %8 = getelementptr inbounds %struct.anon.79, ptr %req.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 822083584, ptr %req.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1191182336, ptr %8, align 4
  %call.i.i = call fastcc i32 @scarlett2_usb(ptr noundef %mixer, i32 noundef 8388608, ptr noundef nonnull %req.i.i, i16 noundef zeroext 8, ptr noundef nonnull %volume_status, i16 noundef zeroext 71) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %master_vol = getelementptr inbounds %struct.scarlett2_usb_volume_status, ptr %volume_status, i32 0, i32 7
  %11 = ptrtoint ptr %master_vol to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %master_vol, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -127, i16 %12)
  %cmp4 = icmp sgt i16 %12, -127
  %13 = call i16 @llvm.smin.i16(i16 %12, i16 0)
  %14 = trunc i16 %13 to i8
  %15 = add i8 %14, 127
  %conv13 = select i1 %cmp4, i8 %15, i8 0
  %master_vol14 = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 19
  %16 = ptrtoint ptr %master_vol14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv13, ptr %master_vol14, align 1
  %line_out_hw_vol = getelementptr inbounds %struct.scarlett2_device_info, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %line_out_hw_vol to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %line_out_hw_vol, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.end.if.end24_crit_edge, label %for.body.preheader

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

for.body.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %volume_status to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %volume_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool19 = icmp ne i8 %20, 0
  %conv21 = zext i1 %tobool19 to i8
  %arrayidx23 = getelementptr %struct.scarlett2_data, ptr %1, i32 0, i32 25, i32 0
  %21 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv21, ptr %arrayidx23, align 1
  %arrayidx18.1 = getelementptr inbounds [2 x i8], ptr %volume_status, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx18.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool19.1 = icmp ne i8 %23, 0
  %conv21.1 = zext i1 %tobool19.1 to i8
  %arrayidx23.1 = getelementptr %struct.scarlett2_data, ptr %1, i32 0, i32 25, i32 1
  %24 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv21.1, ptr %arrayidx23.1, align 1
  br label %if.end24

if.end24:                                         ; preds = %for.body.preheader, %if.end.if.end24_crit_edge
  %dim_mute25 = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 25
  %25 = ptrtoint ptr %dim_mute25 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dim_mute25, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp293 = icmp sgt i32 %6, 0
  br i1 %cmp293, label %if.end24.for.body31_crit_edge, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24.for.body31_crit_edge:                    ; preds = %if.end24
  br label %for.body31

for.body31:                                       ; preds = %for.inc40.for.body31_crit_edge, %if.end24.for.body31_crit_edge
  %i.14 = phi i32 [ %inc41, %for.inc40.for.body31_crit_edge ], [ 0, %if.end24.for.body31_crit_edge ]
  %arrayidx32 = getelementptr %struct.scarlett2_data, ptr %1, i32 0, i32 21, i32 %i.14
  %27 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool33.not = icmp eq i8 %28, 0
  br i1 %tobool33.not, label %for.body31.for.inc40_crit_edge, label %if.then34

for.body31.for.inc40_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc40

if.then34:                                        ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %master_vol14 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %master_vol14, align 1
  %arrayidx36 = getelementptr %struct.scarlett2_data, ptr %1, i32 0, i32 20, i32 %i.14
  %31 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx36, align 1
  %arrayidx38 = getelementptr %struct.scarlett2_data, ptr %1, i32 0, i32 22, i32 %i.14
  %32 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %26, ptr %arrayidx38, align 1
  br label %for.inc40

for.inc40:                                        ; preds = %if.then34, %for.body31.for.inc40_crit_edge
  %inc41 = add nuw nsw i32 %i.14, 1
  %exitcond.not = icmp eq i32 %inc41, %6
  br i1 %exitcond.not, label %for.inc40.cleanup_crit_edge, label %for.inc40.for.body31_crit_edge

for.inc40.for.body31_crit_edge:                   ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body31

for.inc40.cleanup_crit_edge:                      ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc40.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 71, ptr nonnull %volume_status) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_volume_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %control, align 4
  %info1.i = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info1.i, align 4
  %line_out_remap_enable.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %line_out_remap_enable.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %line_out_remap_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %entry.line_out_remap.exit_crit_edge, label %if.end.i

entry.line_out_remap.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %line_out_remap.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.scarlett2_device_info, ptr %9, i32 0, i32 14, i32 %7
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %13 to i32
  br label %line_out_remap.exit

line_out_remap.exit:                              ; preds = %if.end.i, %entry.line_out_remap.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.end.i ], [ %7, %entry.line_out_remap.exit_crit_edge ]
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %vol_updated = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 13
  %14 = ptrtoint ptr %vol_updated to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vol_updated, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %line_out_remap.exit.if.end_crit_edge, label %if.then

line_out_remap.exit.if.end_crit_edge:             ; preds = %line_out_remap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %line_out_remap.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @scarlett2_update_volumes(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %line_out_remap.exit.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  %arrayidx = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 20, i32 %retval.0.i
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %17 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_volume_ctl_put(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %control, align 4
  %info1.i = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info1.i, align 4
  %line_out_remap_enable.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %line_out_remap_enable.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %line_out_remap_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %entry.line_out_remap.exit_crit_edge, label %if.end.i

entry.line_out_remap.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %line_out_remap.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.scarlett2_device_info, ptr %9, i32 0, i32 14, i32 %7
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %13 to i32
  br label %line_out_remap.exit

line_out_remap.exit:                              ; preds = %if.end.i, %entry.line_out_remap.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.end.i ], [ %7, %entry.line_out_remap.exit_crit_edge ]
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %arrayidx = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 20, i32 %retval.0.i
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %15 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %16 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv)
  %cmp = icmp eq i32 %17, %conv
  br i1 %cmp, label %line_out_remap.exit.unlock_crit_edge, label %if.end

line_out_remap.exit.unlock_crit_edge:             ; preds = %line_out_remap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end:                                           ; preds = %line_out_remap.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv5 = trunc i32 %17 to i8
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv5, ptr %arrayidx, align 1
  %sub = add i32 %17, -127
  %call8 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %3, i32 noundef 1, i32 noundef %retval.0.i, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  %spec.store.select = select i1 %cmp9, i32 1, i32 %call8
  br label %unlock

unlock:                                           ; preds = %if.end, %line_out_remap.exit.unlock_crit_edge
  %err.0 = phi i32 [ 0, %line_out_remap.exit.unlock_crit_edge ], [ %spec.store.select, %if.end ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_mute_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %control, align 4
  %info1.i = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info1.i, align 4
  %line_out_remap_enable.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %line_out_remap_enable.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %line_out_remap_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %entry.line_out_remap.exit_crit_edge, label %if.end.i

entry.line_out_remap.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %line_out_remap.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.scarlett2_device_info, ptr %9, i32 0, i32 14, i32 %7
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %13 to i32
  br label %line_out_remap.exit

line_out_remap.exit:                              ; preds = %if.end.i, %entry.line_out_remap.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.end.i ], [ %7, %entry.line_out_remap.exit_crit_edge ]
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %vol_updated = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 13
  %14 = ptrtoint ptr %vol_updated to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vol_updated, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %line_out_remap.exit.if.end_crit_edge, label %if.then

line_out_remap.exit.if.end_crit_edge:             ; preds = %line_out_remap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %line_out_remap.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @scarlett2_update_volumes(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %line_out_remap.exit.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  %arrayidx = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 22, i32 %retval.0.i
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %17 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_mute_ctl_put(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %control, align 4
  %info1.i = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info1.i, align 4
  %line_out_remap_enable.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %line_out_remap_enable.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %line_out_remap_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %entry.line_out_remap.exit_crit_edge, label %if.end.i

entry.line_out_remap.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %line_out_remap.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.scarlett2_device_info, ptr %9, i32 0, i32 14, i32 %7
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %13 to i32
  br label %line_out_remap.exit

line_out_remap.exit:                              ; preds = %if.end.i, %entry.line_out_remap.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.end.i ], [ %7, %entry.line_out_remap.exit_crit_edge ]
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %arrayidx = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 22, i32 %retval.0.i
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %16 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool = icmp ne i32 %17, 0
  %18 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %18)
  %cmp = icmp eq i8 %15, %18
  br i1 %cmp, label %line_out_remap.exit.unlock_crit_edge, label %if.end

line_out_remap.exit.unlock_crit_edge:             ; preds = %line_out_remap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end:                                           ; preds = %line_out_remap.exit
  call void @__sanitizer_cov_trace_pc() #13
  %lnot.ext = zext i1 %tobool to i32
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx, align 1
  %call9 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %3, i32 noundef 2, i32 noundef %retval.0.i, i32 noundef %lnot.ext)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  %spec.store.select = select i1 %cmp10, i32 1, i32 %call9
  br label %unlock

unlock:                                           ; preds = %if.end, %line_out_remap.exit.unlock_crit_edge
  %err.0 = phi i32 [ 0, %line_out_remap.exit.unlock_crit_edge ], [ %spec.store.select, %if.end ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_sw_hw_enum_ctl_info(ptr nocapture noundef readnone %kctl, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @scarlett2_sw_hw_enum_ctl_info.values) #11
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @scarlett2_sw_hw_enum_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %private_data1 = getelementptr inbounds %struct.usb_mixer_interface, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 4
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %control, align 4
  %info1.i = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info1.i, align 4
  %line_out_remap_enable.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %line_out_remap_enable.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %line_out_remap_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %entry.line_out_remap.exit_crit_edge, label %if.end.i

entry.line_out_remap.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %line_out_remap.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.scarlett2_device_info, ptr %9, i32 0, i32 14, i32 %7
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %13 to i32
  br label %line_out_remap.exit

line_out_remap.exit:                              ; preds = %if.end.i, %entry.line_out_remap.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.end.i ], [ %7, %entry.line_out_remap.exit_crit_edge ]
  %arrayidx = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 21, i32 %retval.0.i
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %15 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %16 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_sw_hw_enum_ctl_put(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %control, align 4
  %info1.i = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info1.i, align 4
  %line_out_remap_enable.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %line_out_remap_enable.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %line_out_remap_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %entry.line_out_remap.exit_crit_edge, label %if.end.i

entry.line_out_remap.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %line_out_remap.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.scarlett2_device_info, ptr %9, i32 0, i32 14, i32 %7
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %13 to i32
  br label %line_out_remap.exit

line_out_remap.exit:                              ; preds = %if.end.i, %entry.line_out_remap.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.end.i ], [ %7, %entry.line_out_remap.exit_crit_edge ]
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %arrayidx = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 21, i32 %retval.0.i
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %16 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool = icmp ne i32 %17, 0
  %18 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %18)
  %cmp = icmp eq i8 %15, %18
  br i1 %cmp, label %line_out_remap.exit.unlock_crit_edge, label %if.end

line_out_remap.exit.unlock_crit_edge:             ; preds = %line_out_remap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end:                                           ; preds = %line_out_remap.exit
  call void @__sanitizer_cov_trace_pc() #13
  %lnot.ext = zext i1 %tobool to i32
  %call6 = tail call fastcc i32 @scarlett2_sw_hw_change(ptr noundef %3, i32 noundef %7, i32 noundef %lnot.ext)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  %spec.store.select = select i1 %cmp7, i32 1, i32 %call6
  br label %unlock

unlock:                                           ; preds = %if.end, %line_out_remap.exit.unlock_crit_edge
  %err.0 = phi i32 [ 0, %line_out_remap.exit.unlock_crit_edge ], [ %spec.store.select, %if.end ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scarlett2_sw_hw_change(ptr nocapture noundef readonly %mixer, i32 noundef %ctl_index, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %info1.i = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info1.i, align 4
  %line_out_remap_enable.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %line_out_remap_enable.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %line_out_remap_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.line_out_remap.exit_crit_edge, label %if.end.i

entry.line_out_remap.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %line_out_remap.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.scarlett2_device_info, ptr %3, i32 0, i32 14, i32 %ctl_index
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  br label %line_out_remap.exit

line_out_remap.exit:                              ; preds = %if.end.i, %entry.line_out_remap.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.end.i ], [ %ctl_index, %entry.line_out_remap.exit_crit_edge ]
  %conv = trunc i32 %val to i8
  %arrayidx = getelementptr %struct.scarlett2_data, ptr %1, i32 0, i32 21, i32 %retval.0.i
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.not = icmp eq i32 %val, 0
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data, align 4
  %11 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mixer, align 4
  %card1.i = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card1.i, align 4
  %arrayidx9.i = getelementptr %struct.scarlett2_data, ptr %10, i32 0, i32 36, i32 %ctl_index
  %15 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx9.i, align 4
  %access12.i = getelementptr inbounds %struct.snd_kcontrol, ptr %16, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %access12.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %access12.i, align 4
  br i1 %tobool.not.not, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %line_out_remap.exit
  call void @__sanitizer_cov_trace_pc() #13
  %or.i = or i32 %18, 2
  %19 = ptrtoint ptr %access12.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i, ptr %access12.i, align 4
  %arrayidx3.i = getelementptr %struct.scarlett2_data, ptr %10, i32 0, i32 38, i32 %ctl_index
  %20 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx3.i, align 4
  %access6.i = getelementptr inbounds %struct.snd_kcontrol, ptr %21, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %access6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %access6.i, align 4
  %or7.i = or i32 %23, 2
  store i32 %or7.i, ptr %access6.i, align 4
  br label %scarlett2_vol_ctl_set_writable.exit

if.else.i:                                        ; preds = %line_out_remap.exit
  call void @__sanitizer_cov_trace_pc() #13
  %and.i = and i32 %18, -3
  %24 = ptrtoint ptr %access12.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and.i, ptr %access12.i, align 4
  %arrayidx14.i = getelementptr %struct.scarlett2_data, ptr %10, i32 0, i32 38, i32 %ctl_index
  %25 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx14.i, align 4
  %access17.i = getelementptr inbounds %struct.snd_kcontrol, ptr %26, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %access17.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %access17.i, align 4
  %and18.i = and i32 %28, -3
  store i32 %and18.i, ptr %access17.i, align 4
  br label %scarlett2_vol_ctl_set_writable.exit

scarlett2_vol_ctl_set_writable.exit:              ; preds = %if.else.i, %if.then.i
  %29 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx9.i, align 4
  %id.i = getelementptr inbounds %struct.snd_kcontrol, ptr %30, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %14, i32 noundef 3, ptr noundef %id.i) #11
  %arrayidx22.i = getelementptr %struct.scarlett2_data, ptr %10, i32 0, i32 38, i32 %ctl_index
  %31 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx22.i, align 4
  %id23.i = getelementptr inbounds %struct.snd_kcontrol, ptr %32, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %14, i32 noundef 3, ptr noundef %id23.i) #11
  %master_vol = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 19
  %33 = ptrtoint ptr %master_vol to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %master_vol, align 1
  %arrayidx1 = getelementptr %struct.scarlett2_data, ptr %1, i32 0, i32 20, i32 %retval.0.i
  %35 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx1, align 1
  %dim_mute = getelementptr inbounds %struct.scarlett2_data, ptr %1, i32 0, i32 25
  %36 = ptrtoint ptr %dim_mute to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dim_mute, align 2
  %arrayidx3 = getelementptr %struct.scarlett2_data, ptr %1, i32 0, i32 22, i32 %retval.0.i
  %38 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx3, align 1
  %39 = load i8, ptr %master_vol, align 1
  %conv5 = zext i8 %39 to i32
  %sub = add nsw i32 %conv5, -127
  %call6 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %mixer, i32 noundef 1, i32 noundef %retval.0.i, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %scarlett2_vol_ctl_set_writable.exit.cleanup_crit_edge, label %if.end

scarlett2_vol_ctl_set_writable.exit.cleanup_crit_edge: ; preds = %scarlett2_vol_ctl_set_writable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %scarlett2_vol_ctl_set_writable.exit
  %40 = ptrtoint ptr %dim_mute to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %dim_mute, align 2
  %conv10 = zext i8 %41 to i32
  %call11 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %mixer, i32 noundef 2, i32 noundef %retval.0.i, i32 noundef %conv10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %mixer, i32 noundef 3, i32 noundef %retval.0.i, i32 noundef %val)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge, %scarlett2_vol_ctl_set_writable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ %call6, %scarlett2_vol_ctl_set_writable.exit.cleanup_crit_edge ], [ %call11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_dim_mute_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %vol_updated = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %vol_updated to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vol_updated, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @scarlett2_update_volumes(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %control, align 4
  %arrayidx = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 25, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_dim_mute_ctl_put(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %info3 = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %info3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info3, align 4
  %arrayidx5 = getelementptr %struct.scarlett2_device_info, ptr %7, i32 0, i32 16, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %control, align 4
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %arrayidx6 = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 25, i32 %11
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx6, align 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool = icmp ne i32 %15, 0
  %16 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %16)
  %cmp = icmp eq i8 %13, %16
  br i1 %cmp, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end:                                           ; preds = %entry
  %lnot.ext = zext i1 %tobool to i32
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx6, align 1
  %call = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %3, i32 noundef 0, i32 noundef %11, i32 noundef %lnot.ext)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp13 = icmp eq i32 %call, 0
  %spec.store.select = select i1 %cmp13, i32 1, i32 %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp17 = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2054 = icmp sgt i32 %9, 0
  %or.cond = select i1 %cmp17, i1 %cmp2054, i1 false
  br i1 %or.cond, label %if.end.for.body_crit_edge, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %if.end29.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.055 = phi i32 [ %inc, %if.end29.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %18 = ptrtoint ptr %info3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info3, align 4
  %line_out_remap_enable.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %line_out_remap_enable.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %line_out_remap_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %for.body.line_out_remap.exit_crit_edge, label %if.end.i

for.body.line_out_remap.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %line_out_remap.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.scarlett2_device_info, ptr %19, i32 0, i32 14, i32 %i.055
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %23 to i32
  br label %line_out_remap.exit

line_out_remap.exit:                              ; preds = %if.end.i, %for.body.line_out_remap.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.end.i ], [ %i.055, %for.body.line_out_remap.exit_crit_edge ]
  %arrayidx23 = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 21, i32 %retval.0.i
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool24.not = icmp eq i8 %25, 0
  br i1 %tobool24.not, label %line_out_remap.exit.if.end29_crit_edge, label %if.then25

line_out_remap.exit.if.end29_crit_edge:           ; preds = %line_out_remap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then25:                                        ; preds = %line_out_remap.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx27 = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 22, i32 %retval.0.i
  %26 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %16, ptr %arrayidx27, align 1
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card, align 4
  %arrayidx28 = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 38, i32 %i.055
  %31 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx28, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %32, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %30, i32 noundef 1, ptr noundef %id) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %line_out_remap.exit.if.end29_crit_edge
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %if.end29.unlock_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end29.unlock_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

unlock:                                           ; preds = %if.end29.unlock_crit_edge, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  %err.0 = phi i32 [ 0, %entry.unlock_crit_edge ], [ %spec.store.select, %if.end.unlock_crit_edge ], [ %spec.store.select, %if.end29.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_level_enum_ctl_info(ptr nocapture noundef readnone %kctl, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @scarlett2_level_enum_ctl_info.values) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_level_enum_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %info3 = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %info3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info3, align 4
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %control, align 4
  %level_input_first = getelementptr inbounds %struct.scarlett2_device_info, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %level_input_first to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %level_input_first, align 2
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %input_other_updated = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 14
  %12 = ptrtoint ptr %input_other_updated to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %input_other_updated, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @scarlett2_update_input_other(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv = zext i8 %11 to i32
  %add = add i32 %9, %conv
  %arrayidx = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 23, i32 %add
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv4 = zext i8 %15 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %16 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv4, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_level_enum_ctl_put(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %info3 = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %info3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info3, align 4
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %control, align 4
  %level_input_first = getelementptr inbounds %struct.scarlett2_device_info, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %level_input_first to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %level_input_first, align 2
  %conv = zext i8 %11 to i32
  %add = add i32 %9, %conv
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %arrayidx = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 23, i32 %add
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool = icmp ne i32 %15, 0
  %16 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %16)
  %cmp = icmp eq i8 %13, %16
  br i1 %cmp, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %lnot.ext = zext i1 %tobool to i32
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx, align 1
  %call = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %3, i32 noundef 4, i32 noundef %add, i32 noundef %lnot.ext)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp11 = icmp eq i32 %call, 0
  %spec.store.select = select i1 %cmp11, i32 1, i32 %call
  br label %unlock

unlock:                                           ; preds = %if.end, %entry.unlock_crit_edge
  %err.0 = phi i32 [ 0, %entry.unlock_crit_edge ], [ %spec.store.select, %if.end ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_pad_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %input_other_updated = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %input_other_updated to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %input_other_updated, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @scarlett2_update_input_other(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %control, align 4
  %arrayidx = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 24, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_pad_ctl_put(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %control, align 4
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %arrayidx = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 24, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool = icmp ne i32 %11, 0
  %12 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %12)
  %cmp = icmp eq i8 %9, %12
  br i1 %cmp, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %lnot.ext = zext i1 %tobool to i32
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx, align 1
  %call = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %3, i32 noundef 5, i32 noundef %7, i32 noundef %lnot.ext)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp eq i32 %call, 0
  %spec.store.select = select i1 %cmp9, i32 1, i32 %call
  br label %unlock

unlock:                                           ; preds = %if.end, %entry.unlock_crit_edge
  %err.0 = phi i32 [ 0, %entry.unlock_crit_edge ], [ %spec.store.select, %if.end ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_air_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %input_other_updated = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %input_other_updated to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %input_other_updated, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @scarlett2_update_input_other(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %control, align 4
  %arrayidx = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 26, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_air_ctl_put(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %control, align 4
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %arrayidx = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 26, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool = icmp ne i32 %11, 0
  %12 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %12)
  %cmp = icmp eq i8 %9, %12
  br i1 %cmp, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %lnot.ext = zext i1 %tobool to i32
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx, align 1
  %call = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %3, i32 noundef 7, i32 noundef %7, i32 noundef %lnot.ext)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp eq i32 %call, 0
  %spec.store.select = select i1 %cmp9, i32 1, i32 %call
  br label %unlock

unlock:                                           ; preds = %if.end, %entry.unlock_crit_edge
  %err.0 = phi i32 [ 0, %entry.unlock_crit_edge ], [ %spec.store.select, %if.end ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_phantom_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %input_other_updated = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %input_other_updated to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %input_other_updated, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @scarlett2_update_input_other(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %control, align 4
  %arrayidx = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 27, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_phantom_ctl_put(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %control, align 4
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %arrayidx = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 27, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool = icmp ne i32 %11, 0
  %12 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %12)
  %cmp = icmp eq i8 %9, %12
  br i1 %cmp, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %lnot.ext = zext i1 %tobool to i32
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx, align 1
  %call = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %3, i32 noundef 8, i32 noundef %7, i32 noundef %lnot.ext)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp eq i32 %call, 0
  %spec.store.select = select i1 %cmp9, i32 1, i32 %call
  br label %unlock

unlock:                                           ; preds = %if.end, %entry.unlock_crit_edge
  %err.0 = phi i32 [ 0, %entry.unlock_crit_edge ], [ %spec.store.select, %if.end ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @scarlett2_phantom_persistence_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %private_data1 = getelementptr inbounds %struct.usb_mixer_interface, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 4
  %phantom_persistence = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 28
  %6 = ptrtoint ptr %phantom_persistence to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %phantom_persistence, align 2
  %conv = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_phantom_persistence_ctl_put(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %control, align 4
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %phantom_persistence = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 28
  %8 = ptrtoint ptr %phantom_persistence to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %phantom_persistence, align 2
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool = icmp ne i32 %11, 0
  %12 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %12)
  %cmp = icmp eq i8 %9, %12
  br i1 %cmp, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %lnot.ext = zext i1 %tobool to i32
  %13 = ptrtoint ptr %phantom_persistence to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %phantom_persistence, align 2
  %call = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %3, i32 noundef 9, i32 noundef %7, i32 noundef %lnot.ext)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp eq i32 %call, 0
  %spec.store.select = select i1 %cmp7, i32 1, i32 %call
  br label %unlock

unlock:                                           ; preds = %if.end, %entry.unlock_crit_edge
  %err.0 = phi i32 [ 0, %entry.unlock_crit_edge ], [ %spec.store.select, %if.end ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 %err.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_mux_src_enum_ctl_info(ptr nocapture noundef readonly %kctl, ptr nocapture noundef %uinfo) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %private_data1 = getelementptr inbounds %struct.usb_mixer_interface, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 4
  %info2 = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info2, align 4
  %port_count3 = getelementptr inbounds %struct.scarlett2_device_info, ptr %7, i32 0, i32 16
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %item4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %8 = ptrtoint ptr %item4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %item4, align 4
  %num_mux_srcs = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 9
  %10 = ptrtoint ptr %num_mux_srcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_mux_srcs, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %type, align 8
  %channels = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channels, align 4
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %15 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %count, align 8
  %16 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %11, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp ult i32 %9, %11
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %11, -1
  %17 = ptrtoint ptr %item4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %item4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %item.0 = phi i32 [ %sub, %if.then ], [ %9, %entry.if.end_crit_edge ]
  %18 = ptrtoint ptr %port_count3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_count3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %item.0, i32 %19)
  %cmp11 = icmp ult i32 %item.0, %19
  br i1 %cmp11, label %if.end.if.then12_crit_edge, label %if.end16

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.then12:                                        ; preds = %if.end16.4.if.then12_crit_edge, %if.end16.3.if.then12_crit_edge, %if.end16.2.if.then12_crit_edge, %if.end16.1.if.then12_crit_edge, %if.end16.if.then12_crit_edge, %if.end.if.then12_crit_edge
  %port_type.049.lcssa = phi i32 [ 0, %if.end.if.then12_crit_edge ], [ 1, %if.end16.if.then12_crit_edge ], [ 2, %if.end16.1.if.then12_crit_edge ], [ 3, %if.end16.2.if.then12_crit_edge ], [ 4, %if.end16.3.if.then12_crit_edge ], [ 5, %if.end16.4.if.then12_crit_edge ]
  %item.148.lcssa = phi i32 [ %item.0, %if.end.if.then12_crit_edge ], [ %sub19, %if.end16.if.then12_crit_edge ], [ %sub19.1, %if.end16.1.if.then12_crit_edge ], [ %sub19.2, %if.end16.2.if.then12_crit_edge ], [ %sub19.3, %if.end16.3.if.then12_crit_edge ], [ %sub19.4, %if.end16.4.if.then12_crit_edge ]
  %name = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 2
  %src_descr = getelementptr [6 x %struct.scarlett2_port], ptr @scarlett2_ports, i32 0, i32 %port_type.049.lcssa, i32 1
  %20 = ptrtoint ptr %src_descr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %src_descr, align 4
  %src_num_offset = getelementptr [6 x %struct.scarlett2_port], ptr @scarlett2_ports, i32 0, i32 %port_type.049.lcssa, i32 2
  %22 = ptrtoint ptr %src_num_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %src_num_offset, align 4
  %add = add i32 %23, %item.148.lcssa
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef %21, i32 noundef %add)
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %sub19 = sub i32 %item.0, %19
  %arrayidx.1 = getelementptr %struct.scarlett2_device_info, ptr %7, i32 0, i32 16, i32 1
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub19, i32 %25)
  %cmp11.1 = icmp ult i32 %sub19, %25
  br i1 %cmp11.1, label %if.end16.if.then12_crit_edge, label %if.end16.1

if.end16.if.then12_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.end16.1:                                       ; preds = %if.end16
  %sub19.1 = sub i32 %sub19, %25
  %arrayidx.2 = getelementptr %struct.scarlett2_device_info, ptr %7, i32 0, i32 16, i32 2
  %26 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub19.1, i32 %27)
  %cmp11.2 = icmp ult i32 %sub19.1, %27
  br i1 %cmp11.2, label %if.end16.1.if.then12_crit_edge, label %if.end16.2

if.end16.1.if.then12_crit_edge:                   ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.end16.2:                                       ; preds = %if.end16.1
  %sub19.2 = sub i32 %sub19.1, %27
  %arrayidx.3 = getelementptr %struct.scarlett2_device_info, ptr %7, i32 0, i32 16, i32 3
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub19.2, i32 %29)
  %cmp11.3 = icmp ult i32 %sub19.2, %29
  br i1 %cmp11.3, label %if.end16.2.if.then12_crit_edge, label %if.end16.3

if.end16.2.if.then12_crit_edge:                   ; preds = %if.end16.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.end16.3:                                       ; preds = %if.end16.2
  %sub19.3 = sub i32 %sub19.2, %29
  %arrayidx.4 = getelementptr %struct.scarlett2_device_info, ptr %7, i32 0, i32 16, i32 4
  %30 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub19.3, i32 %31)
  %cmp11.4 = icmp ult i32 %sub19.3, %31
  br i1 %cmp11.4, label %if.end16.3.if.then12_crit_edge, label %if.end16.4

if.end16.3.if.then12_crit_edge:                   ; preds = %if.end16.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.end16.4:                                       ; preds = %if.end16.3
  %sub19.4 = sub i32 %sub19.3, %31
  %arrayidx.5 = getelementptr %struct.scarlett2_device_info, ptr %7, i32 0, i32 16, i32 5
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub19.4, i32 %33)
  %cmp11.5 = icmp ult i32 %sub19.4, %33
  br i1 %cmp11.5, label %if.end16.4.if.then12_crit_edge, label %if.end16.4.cleanup_crit_edge

if.end16.4.cleanup_crit_edge:                     ; preds = %if.end16.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16.4.if.then12_crit_edge:                   ; preds = %if.end16.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

cleanup:                                          ; preds = %if.end16.4.cleanup_crit_edge, %if.then12
  %retval.0 = phi i32 [ 0, %if.then12 ], [ -22, %if.end16.4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_mux_src_enum_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %info3 = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %info3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info3, align 4
  %arrayidx5 = getelementptr %struct.scarlett2_device_info, ptr %7, i32 0, i32 16, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %control, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp = icmp slt i32 %11, %9
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %line_out_remap_enable.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %7, i32 0, i32 13
  %12 = ptrtoint ptr %line_out_remap_enable.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %line_out_remap_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.scarlett2_device_info, ptr %7, i32 0, i32 14, i32 %11
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %15 to i32
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %index.0 = phi i32 [ %11, %entry.if.end_crit_edge ], [ %conv.i, %if.end.i ], [ %11, %if.then.if.end_crit_edge ]
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %mux_updated = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 16
  %16 = ptrtoint ptr %mux_updated to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mux_updated, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call fastcc i32 @scarlett2_usb_get_mux(ptr noundef %3)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %arrayidx9 = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 48, i32 %index.0
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx9, align 1
  %conv = zext i8 %19 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %20 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_mux_src_enum_ctl_put(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %req.i = alloca %struct.anon.84, align 2
  call void @__sanitizer_cov_trace_pc() #13
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
  %info3 = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %info3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info3, align 4
  %arrayidx5 = getelementptr %struct.scarlett2_device_info, ptr %7, i32 0, i32 16, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %control, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp = icmp slt i32 %11, %9
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %line_out_remap_enable.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %7, i32 0, i32 13
  %12 = ptrtoint ptr %line_out_remap_enable.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %line_out_remap_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.scarlett2_device_info, ptr %7, i32 0, i32 14, i32 %11
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %15 to i32
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %index.0 = phi i32 [ %11, %entry.if.end_crit_edge ], [ %conv.i, %if.end.i ], [ %11, %if.then.if.end_crit_edge ]
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %arrayidx6 = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 48, i32 %index.0
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx6, align 1
  %conv = zext i8 %17 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value, align 8
  %num_mux_srcs = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 9
  %20 = ptrtoint ptr %num_mux_srcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_mux_srcs, align 4
  %sub = add i32 %21, -1
  %22 = tail call i32 @llvm.umin.i32(i32 %19, i32 %sub)
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv)
  %cmp10 = icmp eq i32 %22, %conv
  br i1 %cmp10, label %if.end.unlock_crit_edge, label %if.end13

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end13:                                         ; preds = %if.end
  %conv14 = trunc i32 %22 to i8
  %23 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv14, ptr %arrayidx6, align 1
  %24 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private_data2, align 4
  %info1.i39 = getelementptr inbounds %struct.scarlett2_data, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %info1.i39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info1.i39, align 4
  %port_count2.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %27, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 312, ptr nonnull %req.i) #11
  %28 = getelementptr inbounds i8, ptr %req.i, i32 4
  %29 = call ptr @memset(ptr %28, i32 255, i32 308)
  %30 = ptrtoint ptr %req.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %req.i, align 2
  %num.i = getelementptr inbounds %struct.anon.84, ptr %req.i, i32 0, i32 1
  %arrayidx.1.i.i = getelementptr %struct.scarlett2_device_info, ptr %27, i32 0, i32 16, i32 1
  %arrayidx.2.i.i = getelementptr %struct.scarlett2_device_info, ptr %27, i32 0, i32 16, i32 2
  %arrayidx.3.i.i = getelementptr %struct.scarlett2_device_info, ptr %27, i32 0, i32 16, i32 3
  %arrayidx.4.i.i = getelementptr %struct.scarlett2_device_info, ptr %27, i32 0, i32 16, i32 4
  %arrayidx.5.i.i = getelementptr %struct.scarlett2_device_info, ptr %27, i32 0, i32 16, i32 5
  br label %for.body.i

for.cond.i:                                       ; preds = %for.end44.i
  %inc58.i = add nuw nsw i32 %table.098.i, 1
  %exitcond103.not.i = icmp eq i32 %inc58.i, 3
  br i1 %exitcond103.not.i, label %72, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end13
  %table.098.i = phi i32 [ 0, %if.end13 ], [ %inc58.i, %for.cond.i.for.body.i_crit_edge ]
  %conv.i40 = trunc i32 %table.098.i to i16
  %31 = tail call i16 @llvm.bswap.i16(i16 %conv.i40) #11
  %32 = ptrtoint ptr %num.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %num.i, align 2
  %arrayidx.i41 = getelementptr %struct.scarlett2_device_info, ptr %27, i32 0, i32 17, i32 %table.098.i
  %count94.i = getelementptr inbounds %struct.scarlett2_mux_entry, ptr %arrayidx.i41, i32 0, i32 2
  %33 = ptrtoint ptr %count94.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %count94.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not95.i = icmp eq i8 %34, 0
  br i1 %tobool.not95.i, label %for.body.i.for.end44.i_crit_edge, label %for.body.i.for.body6.i_crit_edge

for.body.i.for.body6.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body6.i

for.body.i.for.end44.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end44.i

for.body6.i:                                      ; preds = %cleanup.i.for.body6.i_crit_edge, %for.body.i.for.body6.i_crit_edge
  %35 = phi i8 [ %70, %cleanup.i.for.body6.i_crit_edge ], [ %34, %for.body.i.for.body6.i_crit_edge ]
  %i.097.i = phi i32 [ %i.3.i, %cleanup.i.for.body6.i_crit_edge ], [ 0, %for.body.i.for.body6.i_crit_edge ]
  %entry3.096.i = phi ptr [ %incdec.ptr.i, %cleanup.i.for.body6.i_crit_edge ], [ %arrayidx.i41, %for.body.i.for.body6.i_crit_edge ]
  %36 = ptrtoint ptr %entry3.096.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %entry3.096.i, align 1
  %conv8.i = zext i8 %37 to i32
  %start.i = getelementptr inbounds %struct.scarlett2_mux_entry, ptr %entry3.096.i, i32 0, i32 1
  %38 = ptrtoint ptr %start.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %start.i, align 1
  %conv9.i = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp1.i.not.i = icmp eq i8 %37, 0
  br i1 %cmp1.i.not.i, label %for.body6.i.scarlett2_get_port_start_num.exit.i_crit_edge, label %for.body6.i.for.body.i.i_crit_edge

for.body6.i.for.body.i.i_crit_edge:               ; preds = %for.body6.i
  br label %for.body.i.i

for.body6.i.scarlett2_get_port_start_num.exit.i_crit_edge: ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_get_port_start_num.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body6.i.for.body.i.i_crit_edge
  %num.03.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body6.i.for.body.i.i_crit_edge ]
  %i.02.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body6.i.for.body.i.i_crit_edge ]
  %arrayidx1.i.i = getelementptr [2 x i32], ptr %port_count2.i, i32 %i.02.i.i, i32 1
  %40 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i = add i32 %41, %num.03.i.i
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv8.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.scarlett2_get_port_start_num.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i.scarlett2_get_port_start_num.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_get_port_start_num.exit.i

scarlett2_get_port_start_num.exit.i:              ; preds = %for.body.i.i.scarlett2_get_port_start_num.exit.i_crit_edge, %for.body6.i.scarlett2_get_port_start_num.exit.i_crit_edge
  %num.0.lcssa.i.i = phi i32 [ 0, %for.body6.i.scarlett2_get_port_start_num.exit.i_crit_edge ], [ %add.i.i, %for.body.i.i.scarlett2_get_port_start_num.exit.i_crit_edge ]
  %arrayidx10.i = getelementptr [6 x %struct.scarlett2_port], ptr @scarlett2_ports, i32 0, i32 %conv8.i
  %42 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx10.i, align 4
  %conv11.i = zext i16 %43 to i32
  %add12.i = add nuw nsw i32 %conv11.i, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add12.i)
  %tobool13.not.i = icmp eq i32 %add12.i, 0
  br i1 %tobool13.not.i, label %for.cond14.preheader.i, label %if.end.i42

for.cond14.preheader.i:                           ; preds = %scarlett2_get_port_start_num.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %44 = shl i32 %i.097.i, 2
  %uglygep100.i = getelementptr i8, ptr %28, i32 %44
  %45 = tail call i8 @llvm.umax.i8(i8 %35, i8 1) #11
  %umax101.i = zext i8 %45 to i32
  %46 = shl nuw nsw i32 %umax101.i, 2
  %47 = call ptr @memset(ptr %uglygep100.i, i32 0, i32 %46)
  %48 = add i32 %i.097.i, %umax101.i
  br label %cleanup.i

if.end.i42:                                       ; preds = %scarlett2_get_port_start_num.exit.i
  %add.i = add i32 %num.0.lcssa.i.i, %conv9.i
  %49 = ptrtoint ptr %port_count2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port_count2.i, align 4
  %51 = tail call i8 @llvm.umax.i8(i8 %35, i8 1) #11
  %umax.i = zext i8 %51 to i32
  %52 = add i32 %i.097.i, %umax.i
  br label %for.body27.i

for.body27.i:                                     ; preds = %scarlett2_mux_src_num_to_id.exit.i.for.body27.i_crit_edge, %if.end.i42
  %dst_id.091.i = phi i32 [ %add12.i, %if.end.i42 ], [ %inc35.i, %scarlett2_mux_src_num_to_id.exit.i.for.body27.i_crit_edge ]
  %mux_idx.090.i = phi i32 [ %add.i, %if.end.i42 ], [ %inc28.i, %scarlett2_mux_src_num_to_id.exit.i.for.body27.i_crit_edge ]
  %i.288.i = phi i32 [ %i.097.i, %if.end.i42 ], [ %inc33.i, %scarlett2_mux_src_num_to_id.exit.i.for.body27.i_crit_edge ]
  %inc28.i = add i32 %mux_idx.090.i, 1
  %arrayidx29.i = getelementptr %struct.scarlett2_data, ptr %25, i32 0, i32 48, i32 %mux_idx.090.i
  %53 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx29.i, align 1
  %conv30.i = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %conv30.i)
  %cmp2.i.i = icmp sgt i32 %50, %conv30.i
  br i1 %cmp2.i.i, label %for.body27.i.if.then.i.i_crit_edge, label %if.end.i.i

for.body27.i.if.then.i.i_crit_edge:               ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.4.i.i.if.then.i.i_crit_edge, %if.end.3.i.i.if.then.i.i_crit_edge, %if.end.2.i.i.if.then.i.i_crit_edge, %if.end.1.i.i.if.then.i.i_crit_edge, %if.end.i.i.if.then.i.i_crit_edge, %for.body27.i.if.then.i.i_crit_edge
  %port_type.016.lcssa.i.i = phi i32 [ 0, %for.body27.i.if.then.i.i_crit_edge ], [ 1, %if.end.i.i.if.then.i.i_crit_edge ], [ 2, %if.end.1.i.i.if.then.i.i_crit_edge ], [ 3, %if.end.2.i.i.if.then.i.i_crit_edge ], [ 4, %if.end.3.i.i.if.then.i.i_crit_edge ], [ 5, %if.end.4.i.i.if.then.i.i_crit_edge ]
  %num.addr.015.lcssa.i.i = phi i32 [ %conv30.i, %for.body27.i.if.then.i.i_crit_edge ], [ %sub.i.i, %if.end.i.i.if.then.i.i_crit_edge ], [ %sub.1.i.i, %if.end.1.i.i.if.then.i.i_crit_edge ], [ %sub.2.i.i, %if.end.2.i.i.if.then.i.i_crit_edge ], [ %sub.3.i.i, %if.end.3.i.i.if.then.i.i_crit_edge ], [ %sub.4.i.i, %if.end.4.i.i.if.then.i.i_crit_edge ]
  %arrayidx3.i.i = getelementptr [6 x %struct.scarlett2_port], ptr @scarlett2_ports, i32 0, i32 %port_type.016.lcssa.i.i
  %55 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx3.i.i, align 4
  %conv.i.i = zext i16 %56 to i32
  %or.i.i = or i32 %num.addr.015.lcssa.i.i, %conv.i.i
  br label %scarlett2_mux_src_num_to_id.exit.i

if.end.i.i:                                       ; preds = %for.body27.i
  %sub.i.i = sub i32 %conv30.i, %50
  %57 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %58)
  %cmp2.1.i.i = icmp slt i32 %sub.i.i, %58
  br i1 %cmp2.1.i.i, label %if.end.i.i.if.then.i.i_crit_edge, label %if.end.1.i.i

if.end.i.i.if.then.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end.1.i.i:                                     ; preds = %if.end.i.i
  %sub.1.i.i = sub i32 %sub.i.i, %58
  %59 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.i.i, i32 %60)
  %cmp2.2.i.i = icmp slt i32 %sub.1.i.i, %60
  br i1 %cmp2.2.i.i, label %if.end.1.i.i.if.then.i.i_crit_edge, label %if.end.2.i.i

if.end.1.i.i.if.then.i.i_crit_edge:               ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end.2.i.i:                                     ; preds = %if.end.1.i.i
  %sub.2.i.i = sub i32 %sub.1.i.i, %60
  %61 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.2.i.i, i32 %62)
  %cmp2.3.i.i = icmp slt i32 %sub.2.i.i, %62
  br i1 %cmp2.3.i.i, label %if.end.2.i.i.if.then.i.i_crit_edge, label %if.end.3.i.i

if.end.2.i.i.if.then.i.i_crit_edge:               ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end.3.i.i:                                     ; preds = %if.end.2.i.i
  %sub.3.i.i = sub i32 %sub.2.i.i, %62
  %63 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.3.i.i, i32 %64)
  %cmp2.4.i.i = icmp slt i32 %sub.3.i.i, %64
  br i1 %cmp2.4.i.i, label %if.end.3.i.i.if.then.i.i_crit_edge, label %if.end.4.i.i

if.end.3.i.i.if.then.i.i_crit_edge:               ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end.4.i.i:                                     ; preds = %if.end.3.i.i
  %sub.4.i.i = sub i32 %sub.3.i.i, %64
  %65 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.4.i.i, i32 %66)
  %cmp2.5.i.i = icmp slt i32 %sub.4.i.i, %66
  br i1 %cmp2.5.i.i, label %if.end.4.i.i.if.then.i.i_crit_edge, label %if.end.4.i.i.scarlett2_mux_src_num_to_id.exit.i_crit_edge

if.end.4.i.i.scarlett2_mux_src_num_to_id.exit.i_crit_edge: ; preds = %if.end.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_mux_src_num_to_id.exit.i

if.end.4.i.i.if.then.i.i_crit_edge:               ; preds = %if.end.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

scarlett2_mux_src_num_to_id.exit.i:               ; preds = %if.end.4.i.i.scarlett2_mux_src_num_to_id.exit.i_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %or.i.i, %if.then.i.i ], [ 0, %if.end.4.i.i.scarlett2_mux_src_num_to_id.exit.i_crit_edge ]
  %shl.i = shl i32 %retval.0.i.i, 12
  %or.i = or i32 %shl.i, %dst_id.091.i
  %67 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %inc33.i = add i32 %i.288.i, 1
  %arrayidx34.i = getelementptr %struct.anon.84, ptr %req.i, i32 0, i32 2, i32 %i.288.i
  %68 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %67, ptr %arrayidx34.i, align 2
  %inc35.i = add nuw nsw i32 %dst_id.091.i, 1
  %exitcond.not.i = icmp eq i32 %inc33.i, %52
  br i1 %exitcond.not.i, label %scarlett2_mux_src_num_to_id.exit.i.cleanup.i_crit_edge, label %scarlett2_mux_src_num_to_id.exit.i.for.body27.i_crit_edge

scarlett2_mux_src_num_to_id.exit.i.for.body27.i_crit_edge: ; preds = %scarlett2_mux_src_num_to_id.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body27.i

scarlett2_mux_src_num_to_id.exit.i.cleanup.i_crit_edge: ; preds = %scarlett2_mux_src_num_to_id.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

cleanup.i:                                        ; preds = %scarlett2_mux_src_num_to_id.exit.i.cleanup.i_crit_edge, %for.cond14.preheader.i
  %i.3.i = phi i32 [ %48, %for.cond14.preheader.i ], [ %52, %scarlett2_mux_src_num_to_id.exit.i.cleanup.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.scarlett2_mux_entry, ptr %entry3.096.i, i32 1
  %count.i = getelementptr %struct.scarlett2_mux_entry, ptr %entry3.096.i, i32 1, i32 2
  %69 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %count.i, align 1
  %tobool.not.i43 = icmp eq i8 %70, 0
  br i1 %tobool.not.i43, label %cleanup.i.for.end44.i_crit_edge, label %cleanup.i.for.body6.i_crit_edge

cleanup.i.for.body6.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body6.i

cleanup.i.for.end44.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end44.i

for.end44.i:                                      ; preds = %cleanup.i.for.end44.i_crit_edge, %for.body.i.for.end44.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.body.i.for.end44.i_crit_edge ], [ %i.3.i, %cleanup.i.for.end44.i_crit_edge ]
  %i.0.tr.i = trunc i32 %i.0.lcssa.i to i16
  %71 = shl i16 %i.0.tr.i, 2
  %conv46.i = add i16 %71, 4
  %call47.i = call fastcc i32 @scarlett2_usb(ptr noundef %3, i32 noundef 12290, ptr noundef nonnull %req.i, i16 noundef zeroext %conv46.i, ptr noundef null, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %cmp48.i = icmp slt i32 %call47.i, 0
  br i1 %cmp48.i, label %scarlett2_usb_set_mux.exit, label %for.cond.i

scarlett2_usb_set_mux.exit:                       ; preds = %for.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 312, ptr nonnull %req.i) #11
  br label %unlock

72:                                               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 312, ptr nonnull %req.i) #11
  br label %unlock

unlock:                                           ; preds = %72, %scarlett2_usb_set_mux.exit, %if.end.unlock_crit_edge
  %err.0 = phi i32 [ 0, %if.end.unlock_crit_edge ], [ 1, %72 ], [ %call47.i, %scarlett2_usb_set_mux.exit ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 %err.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @scarlett2_mixer_ctl_info(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 8
  %channels = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channels, align 4
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 172, ptr %max, align 4
  %step = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 2
  %8 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %step, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @scarlett2_mixer_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %private_data1 = getelementptr inbounds %struct.usb_mixer_interface, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 4
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %control, align 4
  %arrayidx = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 49, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_mixer_ctl_put(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %req.i = alloca %struct.anon.85, align 2
  call void @__sanitizer_cov_trace_pc() #13
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
  %info3 = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %info3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info3, align 4
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %control, align 4
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %arrayidx = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 49, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp = icmp eq i32 %13, %conv
  br i1 %cmp, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end:                                           ; preds = %entry
  %arrayidx7 = getelementptr %struct.scarlett2_device_info, ptr %7, i32 0, i32 16, i32 4, i32 1
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7, align 4
  %div = sdiv i32 %9, %15
  %conv9 = trunc i32 %13 to i8
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv9, ptr %arrayidx, align 1
  %17 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private_data2, align 4
  %info1.i = getelementptr inbounds %struct.scarlett2_data, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %info1.i, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %req.i) #11
  %21 = getelementptr inbounds i8, ptr %req.i, i32 2
  %22 = call ptr @memset(ptr %21, i32 255, i32 50)
  %arrayidx2.i = getelementptr %struct.scarlett2_device_info, ptr %20, i32 0, i32 16, i32 4, i32 1
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx2.i, align 4
  %conv.i = trunc i32 %div to i16
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #11
  %26 = ptrtoint ptr %req.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %req.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp19.i = icmp sgt i32 %24, 0
  br i1 %cmp19.i, label %for.body.preheader.i, label %if.end.scarlett2_usb_set_mix.exit_crit_edge

if.end.scarlett2_usb_set_mix.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_usb_set_mix.exit

for.body.preheader.i:                             ; preds = %if.end
  %mul.i = mul i32 %24, %div
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %j.021.i = phi i32 [ %inc8.i, %for.body.i.for.body.i_crit_edge ], [ %mul.i, %for.body.preheader.i ]
  %i.020.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx5.i = getelementptr %struct.scarlett2_data, ptr %18, i32 0, i32 49, i32 %j.021.i
  %27 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx5.i, align 1
  %idxprom.i = zext i8 %28 to i32
  %arrayidx6.i = getelementptr [173 x i16], ptr @scarlett2_mixer_values, i32 0, i32 %idxprom.i
  %29 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx6.i, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #11
  %arrayidx7.i = getelementptr %struct.anon.85, ptr %req.i, i32 0, i32 1, i32 %i.020.i
  %32 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %arrayidx7.i, align 2
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %inc8.i = add i32 %j.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %24
  br i1 %exitcond.not.i, label %for.body.i.scarlett2_usb_set_mix.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.scarlett2_usb_set_mix.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_usb_set_mix.exit

scarlett2_usb_set_mix.exit:                       ; preds = %for.body.i.scarlett2_usb_set_mix.exit_crit_edge, %if.end.scarlett2_usb_set_mix.exit_crit_edge
  %.tr.i = trunc i32 %24 to i16
  %33 = shl i16 %.tr.i, 1
  %conv10.i = add i16 %33, 2
  %call.i = call fastcc i32 @scarlett2_usb(ptr noundef %3, i32 noundef 8194, ptr noundef nonnull %req.i, i16 noundef zeroext %conv10.i, ptr noundef null, i16 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %req.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12 = icmp eq i32 %call.i, 0
  %spec.store.select = select i1 %cmp12, i32 1, i32 %call.i
  br label %unlock

unlock:                                           ; preds = %scarlett2_usb_set_mix.exit, %entry.unlock_crit_edge
  %err.0 = phi i32 [ 0, %entry.unlock_crit_edge ], [ %spec.store.select, %scarlett2_usb_set_mix.exit ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @scarlett2_meter_ctl_info(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 8
  %channels = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channels, align 4
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4095, ptr %max, align 4
  %step = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 2
  %8 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %step, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_meter_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %req.i = alloca %struct.anon.86, align 2
  %resp.i = alloca [65 x i32], align 4
  %meter_levels = alloca [65 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %meter_levels) #11
  %2 = call ptr @memset(ptr %meter_levels, i32 255, i32 130)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %channels = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channels, align 4
  %conv = trunc i32 %6 to i16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req.i) #11
  %7 = getelementptr inbounds %struct.anon.86, ptr %req.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.anon.86, ptr %req.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %resp.i) #11
  %9 = call ptr @memset(ptr %resp.i, i32 255, i32 260)
  %10 = ptrtoint ptr %req.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %req.i, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv) #11
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %7, align 2
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 16777216, ptr %8, align 2
  %conv.i = and i32 %6, 65535
  %mul.i = shl i16 %conv, 2
  %call.i = call fastcc i32 @scarlett2_usb(ptr noundef %4, i32 noundef 4097, ptr noundef nonnull %req.i, i16 noundef zeroext 8, ptr noundef nonnull %resp.i, i16 noundef zeroext %mul.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %scarlett2_usb_get_meter_levels.exit.thread, label %for.cond.preheader.i

scarlett2_usb_get_meter_levels.exit.thread:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %resp.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req.i) #11
  br label %cleanup

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %cmp518.not.i = icmp eq i16 %conv, 0
  br i1 %cmp518.not.i, label %for.cond.preheader.i.scarlett2_usb_get_meter_levels.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.scarlett2_usb_get_meter_levels.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_usb_get_meter_levels.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [65 x i32], ptr %resp.i, i32 0, i32 %i.019.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %conv7.i = trunc i32 %15 to i16
  %arrayidx8.i = getelementptr i16, ptr %meter_levels, i32 %i.019.i
  %16 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv7.i, ptr %arrayidx8.i, align 2
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.body.i.scarlett2_usb_get_meter_levels.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.scarlett2_usb_get_meter_levels.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_usb_get_meter_levels.exit

scarlett2_usb_get_meter_levels.exit:              ; preds = %for.body.i.scarlett2_usb_get_meter_levels.exit_crit_edge, %for.cond.preheader.i.scarlett2_usb_get_meter_levels.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %resp.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req.i) #11
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp318 = icmp sgt i32 %18, 0
  br i1 %cmp318, label %for.body.lr.ph, label %scarlett2_usb_get_meter_levels.exit.cleanup_crit_edge

scarlett2_usb_get_meter_levels.exit.cleanup_crit_edge: ; preds = %scarlett2_usb_get_meter_levels.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %scarlett2_usb_get_meter_levels.exit
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [65 x i16], ptr %meter_levels, i32 0, i32 %i.019
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx, align 2
  %conv5 = zext i16 %20 to i32
  %arrayidx6 = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.019
  %21 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv5, ptr %arrayidx6, align 4
  %inc = add nuw nsw i32 %i.019, 1
  %22 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channels, align 4
  %cmp3 = icmp slt i32 %inc, %23
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %scarlett2_usb_get_meter_levels.exit.cleanup_crit_edge, %scarlett2_usb_get_meter_levels.exit.thread
  %retval.0 = phi i32 [ %call.i, %scarlett2_usb_get_meter_levels.exit.thread ], [ 0, %scarlett2_usb_get_meter_levels.exit.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %meter_levels) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_sync_ctl_info(ptr nocapture noundef readnone %kctl, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @scarlett2_sync_ctl_info.texts) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_sync_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %data.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
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
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %sync_updated = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sync_updated to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sync_updated, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data2, align 4
  %sync_updated.i = getelementptr inbounds %struct.scarlett2_data, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %sync_updated.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %sync_updated.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i) #11
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %data.i.i, align 4, !annotation !274
  %call.i.i = call fastcc i32 @scarlett2_usb(ptr noundef %3, i32 noundef 24580, ptr noundef null, i16 noundef zeroext 0, ptr noundef nonnull %data.i.i, i16 noundef zeroext 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.scarlett2_update_sync.exit_crit_edge, label %if.end.i.i

if.then.scarlett2_update_sync.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %scarlett2_update_sync.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %sync.i = getelementptr inbounds %struct.scarlett2_data, ptr %9, i32 0, i32 18
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.i = icmp ne i32 %13, 0
  %conv.i.i = zext i1 %tobool.i.i to i8
  %14 = ptrtoint ptr %sync.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i.i, ptr %sync.i, align 1
  br label %scarlett2_update_sync.exit

scarlett2_update_sync.exit:                       ; preds = %if.end.i.i, %if.then.scarlett2_update_sync.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #11
  br label %if.end

if.end:                                           ; preds = %scarlett2_update_sync.exit, %entry.if.end_crit_edge
  %sync = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 18
  %15 = ptrtoint ptr %sync to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sync, align 4
  %conv = zext i8 %16 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %17 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %value, align 8
  call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_direct_monitor_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %private_data4 = getelementptr inbounds %struct.usb_mixer_interface, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %private_data4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data4, align 4
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %monitor_other_updated = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %monitor_other_updated to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %monitor_other_updated, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @scarlett2_update_monitor_other(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %direct_monitor_switch = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 29
  %8 = ptrtoint ptr %direct_monitor_switch to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %direct_monitor_switch, align 1
  %conv = zext i8 %9 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_direct_monitor_ctl_put(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %control, align 4
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %direct_monitor_switch = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 29
  %8 = ptrtoint ptr %direct_monitor_switch to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %direct_monitor_switch, align 1
  %conv = zext i8 %9 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 2)
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv)
  %cmp4 = icmp eq i32 %12, %conv
  br i1 %cmp4, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv6 = trunc i32 %12 to i8
  %13 = ptrtoint ptr %direct_monitor_switch to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv6, ptr %direct_monitor_switch, align 1
  %call = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %3, i32 noundef 10, i32 noundef %7, i32 noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp eq i32 %call, 0
  %spec.store.select = select i1 %cmp8, i32 1, i32 %call
  br label %unlock

unlock:                                           ; preds = %if.end, %entry.unlock_crit_edge
  %err.0 = phi i32 [ 0, %entry.unlock_crit_edge ], [ %spec.store.select, %if.end ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_direct_monitor_stereo_enum_ctl_info(ptr nocapture noundef readnone %kctl, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @scarlett2_direct_monitor_stereo_enum_ctl_info.values) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_speaker_switch_enum_ctl_info(ptr nocapture noundef readnone %kctl, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @scarlett2_speaker_switch_enum_ctl_info.values) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_speaker_switch_enum_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %monitor_other_updated = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %monitor_other_updated to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %monitor_other_updated, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @scarlett2_update_monitor_other(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %speaker_switching_switch = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 30
  %8 = ptrtoint ptr %speaker_switching_switch to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %speaker_switching_switch, align 4
  %conv = zext i8 %9 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_speaker_switch_enum_ctl_put(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %speaker_switching_switch = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %speaker_switching_switch to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %speaker_switching_switch, align 4
  %conv = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 2)
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp4 = icmp eq i32 %10, %conv
  br i1 %cmp4, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end:                                           ; preds = %entry
  %conv6 = trunc i32 %10 to i8
  %11 = ptrtoint ptr %speaker_switching_switch to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv6, ptr %speaker_switching_switch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool = icmp ne i32 %10, 0
  %lnot.ext = zext i1 %tobool to i32
  %call = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %3, i32 noundef 12, i32 noundef 0, i32 noundef %lnot.ext)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp slt i32 %call, 0
  br i1 %cmp9, label %if.end.unlock_crit_edge, label %if.end12

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp13 = icmp ugt i32 %9, 1
  %conv14 = zext i1 %cmp13 to i32
  %call15 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %3, i32 noundef 11, i32 noundef 0, i32 noundef %conv14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end12.unlock_crit_edge, label %if.end19

if.end12.unlock_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool20.not = icmp eq i8 %7, 0
  %12 = select i1 %tobool20.not, i1 %tobool, i1 false
  br i1 %12, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end19
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %card1.i = getelementptr inbounds %struct.snd_usb_audio, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card1.i, align 4
  %17 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private_data2, align 4
  %info1.i.i = getelementptr inbounds %struct.scarlett2_data, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %info1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %info1.i.i, align 4
  %line_out_remap_enable.i.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %line_out_remap_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %line_out_remap_enable.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i, label %if.then22.line_out_remap.exit.i_crit_edge, label %if.end.i.i

if.then22.line_out_remap.exit.i_crit_edge:        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %line_out_remap.exit.i

if.end.i.i:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr %struct.scarlett2_device_info, ptr %20, i32 0, i32 14, i32 0
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %24 to i32
  br label %line_out_remap.exit.i

line_out_remap.exit.i:                            ; preds = %if.end.i.i, %if.then22.line_out_remap.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.end.i.i ], [ 0, %if.then22.line_out_remap.exit.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.scarlett2_data, ptr %18, i32 0, i32 21, i32 %retval.0.i.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.then.i, label %line_out_remap.exit.i.for.inc.i_crit_edge

line_out_remap.exit.i.for.inc.i_crit_edge:        ; preds = %line_out_remap.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %line_out_remap.exit.i
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %18, align 4
  %call3.i = tail call fastcc i32 @scarlett2_sw_hw_change(ptr noundef %28, i32 noundef 0, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then.i.unlock_crit_edge, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i.unlock_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %line_out_remap.exit.i.for.inc.i_crit_edge
  %arrayidx.i24.i = getelementptr %struct.scarlett2_data, ptr %18, i32 0, i32 37, i32 0
  %29 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i24.i, align 4
  %access.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %30, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %access.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %access.i.i, align 4
  %and.i.i = and i32 %32, -3
  store i32 %and.i.i, ptr %access.i.i, align 4
  %33 = load ptr, ptr %arrayidx.i24.i, align 4
  %id.i = getelementptr inbounds %struct.snd_kcontrol, ptr %33, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %16, i32 noundef 3, ptr noundef %id.i) #11
  %34 = ptrtoint ptr %info1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %info1.i.i, align 4
  %line_out_remap_enable.i.1.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %35, i32 0, i32 13
  %36 = ptrtoint ptr %line_out_remap_enable.i.1.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %line_out_remap_enable.i.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.1.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i.1.i, label %for.inc.i.line_out_remap.exit.1.i_crit_edge, label %if.end.i.1.i

for.inc.i.line_out_remap.exit.1.i_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %line_out_remap.exit.1.i

if.end.i.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.1.i = getelementptr %struct.scarlett2_device_info, ptr %35, i32 0, i32 14, i32 1
  %38 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.1.i, align 1
  %conv.i.1.i = zext i8 %39 to i32
  br label %line_out_remap.exit.1.i

line_out_remap.exit.1.i:                          ; preds = %if.end.i.1.i, %for.inc.i.line_out_remap.exit.1.i_crit_edge
  %retval.0.i.1.i = phi i32 [ %conv.i.1.i, %if.end.i.1.i ], [ 1, %for.inc.i.line_out_remap.exit.1.i_crit_edge ]
  %arrayidx.1.i = getelementptr %struct.scarlett2_data, ptr %18, i32 0, i32 21, i32 %retval.0.i.1.i
  %40 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.1.i = icmp eq i8 %41, 0
  br i1 %tobool.not.1.i, label %if.then.1.i, label %line_out_remap.exit.1.i.for.inc.1.i_crit_edge

line_out_remap.exit.1.i.for.inc.1.i_crit_edge:    ; preds = %line_out_remap.exit.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %line_out_remap.exit.1.i
  %42 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %18, align 4
  %call3.1.i = tail call fastcc i32 @scarlett2_sw_hw_change(ptr noundef %43, i32 noundef 1, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1.i)
  %cmp4.1.i = icmp slt i32 %call3.1.i, 0
  br i1 %cmp4.1.i, label %if.then.1.i.unlock_crit_edge, label %if.then.1.i.for.inc.1.i_crit_edge

if.then.1.i.for.inc.1.i_crit_edge:                ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

if.then.1.i.unlock_crit_edge:                     ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

for.inc.1.i:                                      ; preds = %if.then.1.i.for.inc.1.i_crit_edge, %line_out_remap.exit.1.i.for.inc.1.i_crit_edge
  %arrayidx.i24.1.i = getelementptr %struct.scarlett2_data, ptr %18, i32 0, i32 37, i32 1
  %44 = ptrtoint ptr %arrayidx.i24.1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i24.1.i, align 4
  %access.i.1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %45, i32 1, i32 0, i32 1
  %46 = ptrtoint ptr %access.i.1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %access.i.1.i, align 4
  %and.i.1.i = and i32 %47, -3
  store i32 %and.i.1.i, ptr %access.i.1.i, align 4
  %48 = load ptr, ptr %arrayidx.i24.1.i, align 4
  %id.1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %48, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %16, i32 noundef 3, ptr noundef %id.1.i) #11
  %49 = ptrtoint ptr %info1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %info1.i.i, align 4
  %line_out_remap_enable.i.2.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %50, i32 0, i32 13
  %51 = ptrtoint ptr %line_out_remap_enable.i.2.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %line_out_remap_enable.i.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i.2.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i.2.i, label %for.inc.1.i.line_out_remap.exit.2.i_crit_edge, label %if.end.i.2.i

for.inc.1.i.line_out_remap.exit.2.i_crit_edge:    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %line_out_remap.exit.2.i

if.end.i.2.i:                                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.2.i = getelementptr %struct.scarlett2_device_info, ptr %50, i32 0, i32 14, i32 2
  %53 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i.2.i, align 1
  %conv.i.2.i = zext i8 %54 to i32
  br label %line_out_remap.exit.2.i

line_out_remap.exit.2.i:                          ; preds = %if.end.i.2.i, %for.inc.1.i.line_out_remap.exit.2.i_crit_edge
  %retval.0.i.2.i = phi i32 [ %conv.i.2.i, %if.end.i.2.i ], [ 2, %for.inc.1.i.line_out_remap.exit.2.i_crit_edge ]
  %arrayidx.2.i = getelementptr %struct.scarlett2_data, ptr %18, i32 0, i32 21, i32 %retval.0.i.2.i
  %55 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.2.i = icmp eq i8 %56, 0
  br i1 %tobool.not.2.i, label %if.then.2.i, label %line_out_remap.exit.2.i.for.inc.2.i_crit_edge

line_out_remap.exit.2.i.for.inc.2.i_crit_edge:    ; preds = %line_out_remap.exit.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %line_out_remap.exit.2.i
  %57 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %18, align 4
  %call3.2.i = tail call fastcc i32 @scarlett2_sw_hw_change(ptr noundef %58, i32 noundef 2, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2.i)
  %cmp4.2.i = icmp slt i32 %call3.2.i, 0
  br i1 %cmp4.2.i, label %if.then.2.i.unlock_crit_edge, label %if.then.2.i.for.inc.2.i_crit_edge

if.then.2.i.for.inc.2.i_crit_edge:                ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i

if.then.2.i.unlock_crit_edge:                     ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

for.inc.2.i:                                      ; preds = %if.then.2.i.for.inc.2.i_crit_edge, %line_out_remap.exit.2.i.for.inc.2.i_crit_edge
  %arrayidx.i24.2.i = getelementptr %struct.scarlett2_data, ptr %18, i32 0, i32 37, i32 2
  %59 = ptrtoint ptr %arrayidx.i24.2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i24.2.i, align 4
  %access.i.2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %60, i32 1, i32 0, i32 1
  %61 = ptrtoint ptr %access.i.2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %access.i.2.i, align 4
  %and.i.2.i = and i32 %62, -3
  store i32 %and.i.2.i, ptr %access.i.2.i, align 4
  %63 = load ptr, ptr %arrayidx.i24.2.i, align 4
  %id.2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %63, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %16, i32 noundef 3, ptr noundef %id.2.i) #11
  %64 = ptrtoint ptr %info1.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %info1.i.i, align 4
  %line_out_remap_enable.i.3.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %65, i32 0, i32 13
  %66 = ptrtoint ptr %line_out_remap_enable.i.3.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %line_out_remap_enable.i.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i.3.i = icmp eq i8 %67, 0
  br i1 %tobool.not.i.3.i, label %for.inc.2.i.line_out_remap.exit.3.i_crit_edge, label %if.end.i.3.i

for.inc.2.i.line_out_remap.exit.3.i_crit_edge:    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %line_out_remap.exit.3.i

if.end.i.3.i:                                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.3.i = getelementptr %struct.scarlett2_device_info, ptr %65, i32 0, i32 14, i32 3
  %68 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i.3.i, align 1
  %conv.i.3.i = zext i8 %69 to i32
  br label %line_out_remap.exit.3.i

line_out_remap.exit.3.i:                          ; preds = %if.end.i.3.i, %for.inc.2.i.line_out_remap.exit.3.i_crit_edge
  %retval.0.i.3.i = phi i32 [ %conv.i.3.i, %if.end.i.3.i ], [ 3, %for.inc.2.i.line_out_remap.exit.3.i_crit_edge ]
  %arrayidx.3.i = getelementptr %struct.scarlett2_data, ptr %18, i32 0, i32 21, i32 %retval.0.i.3.i
  %70 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.3.i = icmp eq i8 %71, 0
  br i1 %tobool.not.3.i, label %if.then.3.i, label %line_out_remap.exit.3.i.for.inc.3.i_crit_edge

line_out_remap.exit.3.i.for.inc.3.i_crit_edge:    ; preds = %line_out_remap.exit.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %line_out_remap.exit.3.i
  %72 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %18, align 4
  %call3.3.i = tail call fastcc i32 @scarlett2_sw_hw_change(ptr noundef %73, i32 noundef 3, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3.i)
  %cmp4.3.i = icmp slt i32 %call3.3.i, 0
  br i1 %cmp4.3.i, label %if.then.3.i.unlock_crit_edge, label %if.then.3.i.for.inc.3.i_crit_edge

if.then.3.i.for.inc.3.i_crit_edge:                ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3.i

if.then.3.i.unlock_crit_edge:                     ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

for.inc.3.i:                                      ; preds = %if.then.3.i.for.inc.3.i_crit_edge, %line_out_remap.exit.3.i.for.inc.3.i_crit_edge
  %arrayidx.i24.3.i = getelementptr %struct.scarlett2_data, ptr %18, i32 0, i32 37, i32 3
  %74 = ptrtoint ptr %arrayidx.i24.3.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i24.3.i, align 4
  %access.i.3.i = getelementptr inbounds %struct.snd_kcontrol, ptr %75, i32 1, i32 0, i32 1
  %76 = ptrtoint ptr %access.i.3.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %access.i.3.i, align 4
  %and.i.3.i = and i32 %77, -3
  store i32 %and.i.3.i, ptr %access.i.3.i, align 4
  %78 = load ptr, ptr %arrayidx.i24.3.i, align 4
  %id.3.i = getelementptr inbounds %struct.snd_kcontrol, ptr %78, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %16, i32 noundef 3, ptr noundef %id.3.i) #11
  br label %unlock.sink.split

if.else:                                          ; preds = %if.end19
  %brmerge54 = select i1 %tobool20.not, i1 true, i1 %tobool
  br i1 %brmerge54, label %if.else.unlock_crit_edge, label %if.then27

if.else.unlock_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %3, align 4
  %card1.i55 = getelementptr inbounds %struct.snd_usb_audio, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %card1.i55 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %card1.i55, align 4
  %83 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %private_data2, align 4
  %arrayidx.i.i57 = getelementptr %struct.scarlett2_data, ptr %84, i32 0, i32 37, i32 0
  %85 = ptrtoint ptr %arrayidx.i.i57 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i.i57, align 4
  %access.i.i58 = getelementptr inbounds %struct.snd_kcontrol, ptr %86, i32 1, i32 0, i32 1
  %87 = ptrtoint ptr %access.i.i58 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %access.i.i58, align 4
  %or.i.i = or i32 %88, 2
  store i32 %or.i.i, ptr %access.i.i58, align 4
  %89 = load ptr, ptr %arrayidx.i.i57, align 4
  %id.i59 = getelementptr inbounds %struct.snd_kcontrol, ptr %89, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %82, i32 noundef 2, ptr noundef %id.i59) #11
  %arrayidx.i.1.i60 = getelementptr %struct.scarlett2_data, ptr %84, i32 0, i32 37, i32 1
  %90 = ptrtoint ptr %arrayidx.i.1.i60 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.i.1.i60, align 4
  %access.i.1.i61 = getelementptr inbounds %struct.snd_kcontrol, ptr %91, i32 1, i32 0, i32 1
  %92 = ptrtoint ptr %access.i.1.i61 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %access.i.1.i61, align 4
  %or.i.1.i = or i32 %93, 2
  store i32 %or.i.1.i, ptr %access.i.1.i61, align 4
  %94 = load ptr, ptr %arrayidx.i.1.i60, align 4
  %id.1.i62 = getelementptr inbounds %struct.snd_kcontrol, ptr %94, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %82, i32 noundef 2, ptr noundef %id.1.i62) #11
  %arrayidx.i.2.i63 = getelementptr %struct.scarlett2_data, ptr %84, i32 0, i32 37, i32 2
  %95 = ptrtoint ptr %arrayidx.i.2.i63 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i.2.i63, align 4
  %access.i.2.i64 = getelementptr inbounds %struct.snd_kcontrol, ptr %96, i32 1, i32 0, i32 1
  %97 = ptrtoint ptr %access.i.2.i64 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %access.i.2.i64, align 4
  %or.i.2.i = or i32 %98, 2
  store i32 %or.i.2.i, ptr %access.i.2.i64, align 4
  %99 = load ptr, ptr %arrayidx.i.2.i63, align 4
  %id.2.i65 = getelementptr inbounds %struct.snd_kcontrol, ptr %99, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %82, i32 noundef 2, ptr noundef %id.2.i65) #11
  %arrayidx.i.3.i66 = getelementptr %struct.scarlett2_data, ptr %84, i32 0, i32 37, i32 3
  %100 = ptrtoint ptr %arrayidx.i.3.i66 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i.3.i66, align 4
  %access.i.3.i67 = getelementptr inbounds %struct.snd_kcontrol, ptr %101, i32 1, i32 0, i32 1
  %102 = ptrtoint ptr %access.i.3.i67 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %access.i.3.i67, align 4
  %or.i.3.i = or i32 %103, 2
  store i32 %or.i.3.i, ptr %access.i.3.i67, align 4
  %104 = load ptr, ptr %arrayidx.i.3.i66, align 4
  %id.3.i68 = getelementptr inbounds %struct.snd_kcontrol, ptr %104, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %82, i32 noundef 2, ptr noundef %id.3.i68) #11
  br label %unlock.sink.split

unlock.sink.split:                                ; preds = %if.then27, %for.inc.3.i
  %.sink = phi ptr [ %84, %if.then27 ], [ %18, %for.inc.3.i ]
  %speaker_switching_switched.i69 = getelementptr inbounds %struct.scarlett2_data, ptr %.sink, i32 0, i32 17
  %105 = ptrtoint ptr %speaker_switching_switched.i69 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %speaker_switching_switched.i69, align 1
  br label %unlock

unlock:                                           ; preds = %unlock.sink.split, %if.else.unlock_crit_edge, %if.then.3.i.unlock_crit_edge, %if.then.2.i.unlock_crit_edge, %if.then.1.i.unlock_crit_edge, %if.then.i.unlock_crit_edge, %if.end12.unlock_crit_edge, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  %err.1 = phi i32 [ 0, %entry.unlock_crit_edge ], [ %call, %if.end.unlock_crit_edge ], [ %call15, %if.end12.unlock_crit_edge ], [ 1, %if.else.unlock_crit_edge ], [ %call3.3.i, %if.then.3.i.unlock_crit_edge ], [ %call3.2.i, %if.then.2.i.unlock_crit_edge ], [ %call3.1.i, %if.then.1.i.unlock_crit_edge ], [ %call3.i, %if.then.i.unlock_crit_edge ], [ 1, %unlock.sink.split ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_talkback_enum_ctl_info(ptr nocapture noundef readnone %kctl, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @scarlett2_talkback_enum_ctl_info.values) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_talkback_enum_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %monitor_other_updated = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %monitor_other_updated to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %monitor_other_updated, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @scarlett2_update_monitor_other(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %talkback_switch = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 31
  %8 = ptrtoint ptr %talkback_switch to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %talkback_switch, align 1
  %conv = zext i8 %9 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_talkback_enum_ctl_put(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %talkback_switch = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 31
  %6 = ptrtoint ptr %talkback_switch to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %talkback_switch, align 1
  %conv = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 2)
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp4 = icmp eq i32 %10, %conv
  br i1 %cmp4, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end:                                           ; preds = %entry
  %conv6 = trunc i32 %10 to i8
  %11 = ptrtoint ptr %talkback_switch to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv6, ptr %talkback_switch, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool = icmp ne i32 %10, 0
  %lnot.ext = zext i1 %tobool to i32
  %call = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %3, i32 noundef 12, i32 noundef 1, i32 noundef %lnot.ext)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp slt i32 %call, 0
  br i1 %cmp9, label %if.end.unlock_crit_edge, label %if.end12

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp13 = icmp ugt i32 %9, 1
  %conv14 = zext i1 %cmp13 to i32
  %call15 = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %3, i32 noundef 11, i32 noundef 1, i32 noundef %conv14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 0
  %spec.store.select = select i1 %cmp16, i32 1, i32 %call15
  br label %unlock

unlock:                                           ; preds = %if.end12, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  %err.0 = phi i32 [ 0, %entry.unlock_crit_edge ], [ %call, %if.end.unlock_crit_edge ], [ %spec.store.select, %if.end12 ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @scarlett2_talkback_map_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %control, align 4
  %arrayidx = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 32, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scarlett2_talkback_map_ctl_put(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %info = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %arrayidx = getelementptr %struct.scarlett2_device_info, ptr %7, i32 0, i32 16, i32 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %control, align 4
  %data_mutex = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #11
  %arrayidx5 = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 32, i32 %11
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx5, align 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool = icmp ne i32 %15, 0
  %16 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %16)
  %cmp = icmp eq i8 %13, %16
  br i1 %cmp, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1239 = icmp sgt i32 %9, 0
  br i1 %cmp1239, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %bitmap.041 = phi i32 [ %phi.cast, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %i.040 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx15 = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 32, i32 %i.040
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %19 to i32
  %shl = shl i32 %conv16, %i.040
  %inc = add nuw nsw i32 %i.040, 1
  %shl.masked = and i32 %shl, 65535
  %phi.cast = or i32 %shl.masked, %bitmap.041
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %bitmap.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %phi.cast, %for.body.for.end_crit_edge ]
  %call = tail call fastcc i32 @scarlett2_usb_set_config(ptr noundef %3, i32 noundef 13, i32 noundef 0, i32 noundef %bitmap.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp20 = icmp eq i32 %call, 0
  %spec.store.select = select i1 %cmp20, i32 1, i32 %call
  br label %unlock

unlock:                                           ; preds = %for.end, %entry.unlock_crit_edge
  %err.0 = phi i32 [ 0, %entry.unlock_crit_edge ], [ %spec.store.select, %for.end ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #11
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scarlett2_notify(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %3, label %entry.if.then24_crit_edge [
    i32 0, label %lor.lhs.false
    i32 -2, label %entry.if.end26_crit_edge
    i32 -104, label %entry.if.end26_crit_edge62
    i32 -108, label %entry.if.end26_crit_edge63
  ]

entry.if.end26_crit_edge63:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

entry.if.end26_crit_edge62:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

entry.if.then24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

lor.lhs.false:                                    ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %5 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp1.not = icmp eq i32 %6, 8
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.if.then24_crit_edge

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

if.end:                                           ; preds = %lor.lhs.false
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %7 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %transfer_buffer, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %and = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %private_data.i = getelementptr inbounds %struct.usb_mixer_interface, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data.i, align 4
  %sync_updated.i = getelementptr inbounds %struct.scarlett2_data, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %sync_updated.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %sync_updated.i, align 2
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %card.i = getelementptr inbounds %struct.snd_usb_audio, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card.i, align 4
  %sync_ctl.i = getelementptr inbounds %struct.scarlett2_data, ptr %13, i32 0, i32 34
  %19 = ptrtoint ptr %sync_ctl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sync_ctl.i, align 4
  %id.i = getelementptr inbounds %struct.snd_kcontrol, ptr %20, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %18, i32 noundef 1, ptr noundef %id.i) #11
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %and4 = and i32 %11, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.if.end7_crit_edge, label %if.then6

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then6:                                         ; preds = %if.end3
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %card1.i = getelementptr inbounds %struct.snd_usb_audio, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card1.i, align 4
  %private_data.i44 = getelementptr inbounds %struct.usb_mixer_interface, ptr %1, i32 0, i32 16
  %25 = ptrtoint ptr %private_data.i44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %private_data.i44, align 4
  %info2.i = getelementptr inbounds %struct.scarlett2_data, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %info2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info2.i, align 4
  %arrayidx4.i = getelementptr %struct.scarlett2_device_info, ptr %28, i32 0, i32 16, i32 1, i32 1
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx4.i, align 4
  %line_out_hw_vol.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %28, i32 0, i32 3
  %31 = ptrtoint ptr %line_out_hw_vol.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %line_out_hw_vol.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i, label %if.then6.if.end7_crit_edge, label %if.end.i

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end.i:                                         ; preds = %if.then6
  %vol_updated.i = getelementptr inbounds %struct.scarlett2_data, ptr %26, i32 0, i32 13
  %33 = ptrtoint ptr %vol_updated.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %vol_updated.i, align 1
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %card6.i = getelementptr inbounds %struct.snd_usb_audio, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %card6.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %card6.i, align 4
  %master_vol_ctl.i = getelementptr inbounds %struct.scarlett2_data, ptr %26, i32 0, i32 35
  %38 = ptrtoint ptr %master_vol_ctl.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %master_vol_ctl.i, align 4
  %id.i45 = getelementptr inbounds %struct.snd_kcontrol, ptr %39, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %37, i32 noundef 1, ptr noundef %id.i45) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp29.i = icmp sgt i32 %30, 0
  br i1 %cmp29.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.if.end7_crit_edge

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %40 = ptrtoint ptr %info2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info2.i, align 4
  %line_out_remap_enable.i.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %41, i32 0, i32 13
  %42 = ptrtoint ptr %line_out_remap_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %line_out_remap_enable.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i.i, label %for.body.i.line_out_remap.exit.i_crit_edge, label %if.end.i.i

for.body.i.line_out_remap.exit.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %line_out_remap.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr %struct.scarlett2_device_info, ptr %41, i32 0, i32 14, i32 %i.030.i
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %45 to i32
  br label %line_out_remap.exit.i

line_out_remap.exit.i:                            ; preds = %if.end.i.i, %for.body.i.line_out_remap.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.end.i.i ], [ %i.030.i, %for.body.i.line_out_remap.exit.i_crit_edge ]
  %arrayidx7.i = getelementptr %struct.scarlett2_data, ptr %26, i32 0, i32 21, i32 %retval.0.i.i
  %46 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool8.not.i = icmp eq i8 %47, 0
  br i1 %tobool8.not.i, label %line_out_remap.exit.i.for.inc.i_crit_edge, label %if.then9.i

line_out_remap.exit.i.for.inc.i_crit_edge:        ; preds = %line_out_remap.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then9.i:                                       ; preds = %line_out_remap.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx10.i = getelementptr %struct.scarlett2_data, ptr %26, i32 0, i32 36, i32 %i.030.i
  %48 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx10.i, align 4
  %id11.i = getelementptr inbounds %struct.snd_kcontrol, ptr %49, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %24, i32 noundef 1, ptr noundef %id11.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then9.i, %line_out_remap.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %30
  br i1 %exitcond.not.i, label %for.inc.i.if.end7_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end7_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end7:                                          ; preds = %for.inc.i.if.end7_crit_edge, %if.end.i.if.end7_crit_edge, %if.then6.if.end7_crit_edge, %if.end3.if.end7_crit_edge
  %and8 = and i32 %11, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end11_crit_edge, label %if.then10

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @scarlett2_notify_dim_mute(ptr noundef %1)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  %and12 = and i32 %11, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end15_crit_edge, label %if.then14

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %card1.i46 = getelementptr inbounds %struct.snd_usb_audio, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %card1.i46 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %card1.i46, align 4
  %private_data.i47 = getelementptr inbounds %struct.usb_mixer_interface, ptr %1, i32 0, i32 16
  %54 = ptrtoint ptr %private_data.i47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %private_data.i47, align 4
  %info2.i48 = getelementptr inbounds %struct.scarlett2_data, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %info2.i48 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %info2.i48, align 4
  %input_other_updated.i = getelementptr inbounds %struct.scarlett2_data, ptr %55, i32 0, i32 14
  %58 = ptrtoint ptr %input_other_updated.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %input_other_updated.i, align 4
  %level_input_count.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %57, i32 0, i32 6
  %59 = ptrtoint ptr %level_input_count.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %level_input_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp58.not.i = icmp eq i8 %60, 0
  br i1 %cmp58.not.i, label %if.then14.for.cond4.preheader.i_crit_edge, label %if.then14.for.body.i51_crit_edge

if.then14.for.body.i51_crit_edge:                 ; preds = %if.then14
  br label %for.body.i51

if.then14.for.cond4.preheader.i_crit_edge:        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.body.i51.for.cond4.preheader.i_crit_edge, %if.then14.for.cond4.preheader.i_crit_edge
  %pad_input_count.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %57, i32 0, i32 8
  %61 = ptrtoint ptr %pad_input_count.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %pad_input_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp661.not.i = icmp eq i8 %62, 0
  br i1 %cmp661.not.i, label %for.cond4.preheader.i.for.cond14.preheader.i_crit_edge, label %for.cond4.preheader.i.for.body8.i_crit_edge

for.cond4.preheader.i.for.body8.i_crit_edge:      ; preds = %for.cond4.preheader.i
  br label %for.body8.i

for.cond4.preheader.i.for.cond14.preheader.i_crit_edge: ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond14.preheader.i

for.body.i51:                                     ; preds = %for.body.i51.for.body.i51_crit_edge, %if.then14.for.body.i51_crit_edge
  %i.059.i = phi i32 [ %inc.i50, %for.body.i51.for.body.i51_crit_edge ], [ 0, %if.then14.for.body.i51_crit_edge ]
  %arrayidx.i = getelementptr %struct.scarlett2_data, ptr %55, i32 0, i32 40, i32 %i.059.i
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i, align 4
  %id.i49 = getelementptr inbounds %struct.snd_kcontrol, ptr %64, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %53, i32 noundef 1, ptr noundef %id.i49) #11
  %inc.i50 = add nuw nsw i32 %i.059.i, 1
  %65 = ptrtoint ptr %level_input_count.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %level_input_count.i, align 1
  %conv.i = zext i8 %66 to i32
  %cmp.i = icmp ult i32 %inc.i50, %conv.i
  br i1 %cmp.i, label %for.body.i51.for.body.i51_crit_edge, label %for.body.i51.for.cond4.preheader.i_crit_edge

for.body.i51.for.cond4.preheader.i_crit_edge:     ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond4.preheader.i

for.body.i51.for.body.i51_crit_edge:              ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i51

for.cond14.preheader.i:                           ; preds = %for.body8.i.for.cond14.preheader.i_crit_edge, %for.cond4.preheader.i.for.cond14.preheader.i_crit_edge
  %air_input_count.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %57, i32 0, i32 9
  %67 = ptrtoint ptr %air_input_count.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %air_input_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp1664.not.i = icmp eq i8 %68, 0
  br i1 %cmp1664.not.i, label %for.cond14.preheader.i.for.cond24.preheader.i_crit_edge, label %for.cond14.preheader.i.for.body18.i_crit_edge

for.cond14.preheader.i.for.body18.i_crit_edge:    ; preds = %for.cond14.preheader.i
  br label %for.body18.i

for.cond14.preheader.i.for.cond24.preheader.i_crit_edge: ; preds = %for.cond14.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond24.preheader.i

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.cond4.preheader.i.for.body8.i_crit_edge
  %i.162.i = phi i32 [ %inc12.i, %for.body8.i.for.body8.i_crit_edge ], [ 0, %for.cond4.preheader.i.for.body8.i_crit_edge ]
  %arrayidx9.i = getelementptr %struct.scarlett2_data, ptr %55, i32 0, i32 41, i32 %i.162.i
  %69 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx9.i, align 4
  %id10.i = getelementptr inbounds %struct.snd_kcontrol, ptr %70, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %53, i32 noundef 1, ptr noundef %id10.i) #11
  %inc12.i = add nuw nsw i32 %i.162.i, 1
  %71 = ptrtoint ptr %pad_input_count.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %pad_input_count.i, align 1
  %conv5.i = zext i8 %72 to i32
  %cmp6.i = icmp ult i32 %inc12.i, %conv5.i
  br i1 %cmp6.i, label %for.body8.i.for.body8.i_crit_edge, label %for.body8.i.for.cond14.preheader.i_crit_edge

for.body8.i.for.cond14.preheader.i_crit_edge:     ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond14.preheader.i

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body8.i

for.cond24.preheader.i:                           ; preds = %for.body18.i.for.cond24.preheader.i_crit_edge, %for.cond14.preheader.i.for.cond24.preheader.i_crit_edge
  %phantom_count.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %57, i32 0, i32 10
  %73 = ptrtoint ptr %phantom_count.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %phantom_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp2667.not.i = icmp eq i8 %74, 0
  br i1 %cmp2667.not.i, label %for.cond24.preheader.i.if.end15_crit_edge, label %for.cond24.preheader.i.for.body28.i_crit_edge

for.cond24.preheader.i.for.body28.i_crit_edge:    ; preds = %for.cond24.preheader.i
  br label %for.body28.i

for.cond24.preheader.i.if.end15_crit_edge:        ; preds = %for.cond24.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %for.cond14.preheader.i.for.body18.i_crit_edge
  %i.265.i = phi i32 [ %inc22.i, %for.body18.i.for.body18.i_crit_edge ], [ 0, %for.cond14.preheader.i.for.body18.i_crit_edge ]
  %arrayidx19.i = getelementptr %struct.scarlett2_data, ptr %55, i32 0, i32 42, i32 %i.265.i
  %75 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx19.i, align 4
  %id20.i = getelementptr inbounds %struct.snd_kcontrol, ptr %76, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %53, i32 noundef 1, ptr noundef %id20.i) #11
  %inc22.i = add nuw nsw i32 %i.265.i, 1
  %77 = ptrtoint ptr %air_input_count.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %air_input_count.i, align 4
  %conv15.i = zext i8 %78 to i32
  %cmp16.i = icmp ult i32 %inc22.i, %conv15.i
  br i1 %cmp16.i, label %for.body18.i.for.body18.i_crit_edge, label %for.body18.i.for.cond24.preheader.i_crit_edge

for.body18.i.for.cond24.preheader.i_crit_edge:    ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond24.preheader.i

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body18.i

for.body28.i:                                     ; preds = %for.body28.i.for.body28.i_crit_edge, %for.cond24.preheader.i.for.body28.i_crit_edge
  %i.368.i = phi i32 [ %inc32.i, %for.body28.i.for.body28.i_crit_edge ], [ 0, %for.cond24.preheader.i.for.body28.i_crit_edge ]
  %arrayidx29.i = getelementptr %struct.scarlett2_data, ptr %55, i32 0, i32 43, i32 %i.368.i
  %79 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx29.i, align 4
  %id30.i = getelementptr inbounds %struct.snd_kcontrol, ptr %80, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %53, i32 noundef 1, ptr noundef %id30.i) #11
  %inc32.i = add nuw nsw i32 %i.368.i, 1
  %81 = ptrtoint ptr %phantom_count.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %phantom_count.i, align 1
  %conv25.i = zext i8 %82 to i32
  %cmp26.i = icmp ult i32 %inc32.i, %conv25.i
  br i1 %cmp26.i, label %for.body28.i.for.body28.i_crit_edge, label %for.body28.i.if.end15_crit_edge

for.body28.i.if.end15_crit_edge:                  ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

for.body28.i.for.body28.i_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body28.i

if.end15:                                         ; preds = %for.body28.i.if.end15_crit_edge, %for.cond24.preheader.i.if.end15_crit_edge, %if.end11.if.end15_crit_edge
  %and16 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.then24_crit_edge, label %if.then18

if.end15.if.then24_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

if.then18:                                        ; preds = %if.end15
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  %card1.i52 = getelementptr inbounds %struct.snd_usb_audio, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %card1.i52 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %card1.i52, align 4
  %private_data.i53 = getelementptr inbounds %struct.usb_mixer_interface, ptr %1, i32 0, i32 16
  %87 = ptrtoint ptr %private_data.i53 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %private_data.i53, align 4
  %info2.i54 = getelementptr inbounds %struct.scarlett2_data, ptr %88, i32 0, i32 4
  %89 = ptrtoint ptr %info2.i54 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %info2.i54, align 4
  %monitor_other_updated.i = getelementptr inbounds %struct.scarlett2_data, ptr %88, i32 0, i32 15
  %91 = ptrtoint ptr %monitor_other_updated.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %monitor_other_updated.i, align 1
  %direct_monitor.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %90, i32 0, i32 12
  %92 = ptrtoint ptr %direct_monitor.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %direct_monitor.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i55 = icmp eq i8 %93, 0
  br i1 %tobool.not.i55, label %if.end.i57, label %if.then.i

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %direct_monitor_ctl.i = getelementptr inbounds %struct.scarlett2_data, ptr %88, i32 0, i32 45
  %94 = ptrtoint ptr %direct_monitor_ctl.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %direct_monitor_ctl.i, align 4
  %id.i56 = getelementptr inbounds %struct.snd_kcontrol, ptr %95, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %86, i32 noundef 1, ptr noundef %id.i56) #11
  br label %if.then24

if.end.i57:                                       ; preds = %if.then18
  %has_speaker_switching.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %90, i32 0, i32 4
  %96 = ptrtoint ptr %has_speaker_switching.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %has_speaker_switching.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool3.not.i = icmp eq i8 %97, 0
  br i1 %tobool3.not.i, label %if.end.i57.if.end6.i_crit_edge, label %if.then4.i

if.end.i57.if.end6.i_crit_edge:                   ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #13
  %speaker_switching_ctl.i = getelementptr inbounds %struct.scarlett2_data, ptr %88, i32 0, i32 46
  %98 = ptrtoint ptr %speaker_switching_ctl.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %speaker_switching_ctl.i, align 4
  %id5.i = getelementptr inbounds %struct.snd_kcontrol, ptr %99, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %86, i32 noundef 1, ptr noundef %id5.i) #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i57.if.end6.i_crit_edge
  %has_talkback.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %90, i32 0, i32 5
  %100 = ptrtoint ptr %has_talkback.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %has_talkback.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool7.not.i = icmp eq i8 %101, 0
  br i1 %tobool7.not.i, label %if.end6.i.if.end10.i_crit_edge, label %if.then8.i

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %talkback_ctl.i = getelementptr inbounds %struct.scarlett2_data, ptr %88, i32 0, i32 47
  %102 = ptrtoint ptr %talkback_ctl.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %talkback_ctl.i, align 4
  %id9.i = getelementptr inbounds %struct.snd_kcontrol, ptr %103, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %86, i32 noundef 1, ptr noundef %id9.i) #11
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end6.i.if.end10.i_crit_edge
  %speaker_switching_switched.i = getelementptr inbounds %struct.scarlett2_data, ptr %88, i32 0, i32 17
  %104 = ptrtoint ptr %speaker_switching_switched.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %speaker_switching_switched.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool11.not.i = icmp eq i8 %105, 0
  br i1 %tobool11.not.i, label %if.end10.i.if.then24_crit_edge, label %if.then12.i

if.end10.i.if.then24_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

if.then12.i:                                      ; preds = %if.end10.i
  tail call fastcc void @scarlett2_notify_dim_mute(ptr noundef %1) #11
  %106 = ptrtoint ptr %speaker_switching_switched.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %speaker_switching_switched.i, align 1
  %mux_updated.i = getelementptr inbounds %struct.scarlett2_data, ptr %88, i32 0, i32 16
  %107 = ptrtoint ptr %mux_updated.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %mux_updated.i, align 2
  %num_mux_dsts.i = getelementptr inbounds %struct.scarlett2_data, ptr %88, i32 0, i32 10
  %108 = ptrtoint ptr %num_mux_dsts.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_mux_dsts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp36.i = icmp sgt i32 %109, 0
  br i1 %cmp36.i, label %if.then12.i.for.body.i61_crit_edge, label %if.then12.i.if.then24_crit_edge

if.then12.i.if.then24_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

if.then12.i.for.body.i61_crit_edge:               ; preds = %if.then12.i
  br label %for.body.i61

for.body.i61:                                     ; preds = %for.body.i61.for.body.i61_crit_edge, %if.then12.i.for.body.i61_crit_edge
  %i.037.i = phi i32 [ %inc.i59, %for.body.i61.for.body.i61_crit_edge ], [ 0, %if.then12.i.for.body.i61_crit_edge ]
  %arrayidx.i58 = getelementptr %struct.scarlett2_data, ptr %88, i32 0, i32 44, i32 %i.037.i
  %110 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx.i58, align 4
  %id14.i = getelementptr inbounds %struct.snd_kcontrol, ptr %111, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %86, i32 noundef 1, ptr noundef %id14.i) #11
  %inc.i59 = add nuw nsw i32 %i.037.i, 1
  %112 = ptrtoint ptr %num_mux_dsts.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %num_mux_dsts.i, align 4
  %cmp.i60 = icmp slt i32 %inc.i59, %113
  br i1 %cmp.i60, label %for.body.i61.for.body.i61_crit_edge, label %for.body.i61.if.then24_crit_edge

for.body.i61.if.then24_crit_edge:                 ; preds = %for.body.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

for.body.i61.for.body.i61_crit_edge:              ; preds = %for.body.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i61

if.then24:                                        ; preds = %for.body.i61.if.then24_crit_edge, %if.then12.i.if.then24_crit_edge, %if.end10.i.if.then24_crit_edge, %if.then.i, %if.end15.if.then24_crit_edge, %lor.lhs.false.if.then24_crit_edge, %entry.if.then24_crit_edge
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev, align 4
  %dev25 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %118 = ptrtoint ptr %dev25 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %117, ptr %dev25, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %entry.if.end26_crit_edge, %entry.if.end26_crit_edge62, %entry.if.end26_crit_edge63
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scarlett2_notify_dim_mute(ptr nocapture noundef readonly %mixer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mixer, align 4
  %card1 = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %private_data = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %info2 = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info2, align 4
  %arrayidx4 = getelementptr %struct.scarlett2_device_info, ptr %7, i32 0, i32 16, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %vol_updated = getelementptr inbounds %struct.scarlett2_data, ptr %5, i32 0, i32 13
  %10 = ptrtoint ptr %vol_updated to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %vol_updated, align 1
  %line_out_hw_vol = getelementptr inbounds %struct.scarlett2_device_info, ptr %7, i32 0, i32 3
  %11 = ptrtoint ptr %line_out_hw_vol to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %line_out_hw_vol, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx5 = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 39, i32 0
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx5, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %14, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %3, i32 noundef 1, ptr noundef %id) #11
  %arrayidx5.1 = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 39, i32 1
  %15 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx5.1, align 4
  %id.1 = getelementptr inbounds %struct.snd_kcontrol, ptr %16, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %3, i32 noundef 1, ptr noundef %id.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp738 = icmp sgt i32 %9, 0
  br i1 %cmp738, label %for.body.preheader.for.body8_crit_edge, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader.for.body8_crit_edge:           ; preds = %for.body.preheader
  br label %for.body8

for.body8:                                        ; preds = %for.inc15.for.body8_crit_edge, %for.body.preheader.for.body8_crit_edge
  %i.139 = phi i32 [ %inc16, %for.inc15.for.body8_crit_edge ], [ 0, %for.body.preheader.for.body8_crit_edge ]
  %17 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info2, align 4
  %line_out_remap_enable.i = getelementptr inbounds %struct.scarlett2_device_info, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %line_out_remap_enable.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %line_out_remap_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %for.body8.line_out_remap.exit_crit_edge, label %if.end.i

for.body8.line_out_remap.exit_crit_edge:          ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %line_out_remap.exit

if.end.i:                                         ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.scarlett2_device_info, ptr %18, i32 0, i32 14, i32 %i.139
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %22 to i32
  br label %line_out_remap.exit

line_out_remap.exit:                              ; preds = %if.end.i, %for.body8.line_out_remap.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.end.i ], [ %i.139, %for.body8.line_out_remap.exit_crit_edge ]
  %arrayidx9 = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 21, i32 %retval.0.i
  %23 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool10.not = icmp eq i8 %24, 0
  br i1 %tobool10.not, label %line_out_remap.exit.for.inc15_crit_edge, label %if.then11

line_out_remap.exit.for.inc15_crit_edge:          ; preds = %line_out_remap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc15

if.then11:                                        ; preds = %line_out_remap.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx12 = getelementptr %struct.scarlett2_data, ptr %5, i32 0, i32 38, i32 %i.139
  %25 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx12, align 4
  %id13 = getelementptr inbounds %struct.snd_kcontrol, ptr %26, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %3, i32 noundef 1, ptr noundef %id13) #11
  br label %for.inc15

for.inc15:                                        ; preds = %if.then11, %line_out_remap.exit.for.inc15_crit_edge
  %inc16 = add nuw nsw i32 %i.139, 1
  %exitcond.not = icmp eq i32 %inc16, %9
  br i1 %exitcond.not, label %for.inc15.cleanup_crit_edge, label %for.inc15.for.body8_crit_edge

for.inc15.for.body8_crit_edge:                    ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body8

for.inc15.cleanup_crit_edge:                      ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc15.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strlen(ptr nocapture) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 138)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 138)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !93, !95, !96, !97, !98, !100, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !263, !264}
!llvm.module.flags = !{!265, !266, !267, !268, !269, !270, !271, !272}
!llvm.ident = !{!273}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3978, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @snd_scarlett_gen2_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @snd_scarlett_gen2_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3988, i32 2}
!10 = !{ptr @snd_scarlett_gen2_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @snd_scarlett_gen2_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3994, i32 3}
!14 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @snd_scarlett_gen2_init._entry.8, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @snd_scarlett_gen2_init._entry_ptr.11, !13, !"_entry_ptr", i1 false, i1 false}
!17 = distinct !{null, !18, !"scarlett2_devices", i1 false, i1 false}
!18 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 832, i32 44}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 434, i32 3}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 435, i32 3}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 436, i32 3}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 437, i32 3}
!27 = !{ptr @s6i6_gen2_info, !28, !"s6i6_gen2_info", i1 false, i1 false}
!28 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 426, i32 43}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 480, i32 3}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 481, i32 3}
!33 = !{ptr @s18i8_gen2_info, !34, !"s18i8_gen2_info", i1 false, i1 false}
!34 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 472, i32 43}
!35 = !{ptr @s18i20_gen2_info, !36, !"s18i20_gen2_info", i1 false, i1 false}
!36 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 521, i32 43}
!37 = !{ptr @solo_gen3_info, !38, !"solo_gen3_info", i1 false, i1 false}
!38 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 575, i32 43}
!39 = !{ptr @s2i2_gen3_info, !40, !"s2i2_gen3_info", i1 false, i1 false}
!40 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 587, i32 43}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 612, i32 3}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 613, i32 3}
!45 = !{ptr @s4i4_gen3_info, !46, !"s4i4_gen3_info", i1 false, i1 false}
!46 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 598, i32 43}
!47 = !{ptr @s8i6_gen3_info, !48, !"s8i6_gen3_info", i1 false, i1 false}
!48 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 644, i32 43}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 716, i32 3}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 717, i32 3}
!53 = !{ptr @s18i8_gen3_info, !54, !"s18i8_gen3_info", i1 false, i1 false}
!54 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 697, i32 43}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 782, i32 3}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 783, i32 3}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 784, i32 3}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 785, i32 3}
!63 = !{ptr @s18i20_gen3_info, !64, !"s18i20_gen3_info", i1 false, i1 false}
!64 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 767, i32 43}
!65 = !{ptr @scarlett2_init_private.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3557, i32 2}
!67 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @scarlett2_init_private.__key.27, !69, !"__key", i1 false, i1 false}
!69 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3558, i32 2}
!70 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @scarlett2_init_private.__key.29, !72, !"__key", i1 false, i1 false}
!72 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3559, i32 2}
!73 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @scarlett2_init_private.__key.31, !72, !"__key", i1 false, i1 false}
!75 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 1094, i32 3}
!78 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @scarlett2_usb._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @scarlett2_usb._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 1111, i32 3}
!83 = !{ptr @scarlett2_usb._entry.35, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @scarlett2_usb._entry_ptr.37, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 1129, i32 3}
!87 = !{ptr @scarlett2_usb._entry.38, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @scarlett2_usb._entry_ptr.40, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @scarlett2_config_items, !90, !"scarlett2_config_items", i1 false, i1 false}
!90 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 951, i32 2}
!91 = !{ptr @scarlett2_mixer_values, !92, !"scarlett2_mixer_values", i1 false, i1 false}
!92 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 158, i32 18}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 1454, i32 3}
!95 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @scarlett2_usb_populate_mux._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @scarlett2_usb_populate_mux._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 1466, i32 3}
!100 = !{ptr @scarlett2_usb_populate_mux._entry.43, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @scarlett2_usb_populate_mux._entry_ptr.45, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 250, i32 16}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 254, i32 16}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 256, i32 16}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 260, i32 16}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 262, i32 16}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 266, i32 16}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 268, i32 16}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 272, i32 16}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 274, i32 16}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 278, i32 16}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 280, i32 16}
!124 = !{ptr @scarlett2_ports, !125, !"scarlett2_ports", i1 false, i1 false}
!125 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 247, i32 36}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3474, i32 16}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3454, i32 10}
!130 = !{ptr @scarlett2_msd_ctl, !131, !"scarlett2_msd_ctl", i1 false, i1 false}
!131 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3452, i32 38}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2964, i32 26}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2979, i32 6}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2983, i32 6}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2993, i32 5}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3011, i32 6}
!142 = !{ptr @scarlett2_master_volume_ctl, !143, !"scarlett2_master_volume_ctl", i1 false, i1 false}
!143 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 1830, i32 38}
!144 = !{ptr @db_scale_scarlett2_gain, !145, !"db_scale_scarlett2_gain", i1 false, i1 false}
!145 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 1826, i32 14}
!146 = !{ptr @scarlett2_line_out_volume_ctl, !147, !"scarlett2_line_out_volume_ctl", i1 false, i1 false}
!147 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 1841, i32 38}
!148 = !{ptr @scarlett2_mute_ctl, !149, !"scarlett2_mute_ctl", i1 false, i1 false}
!149 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 1902, i32 38}
!150 = !{ptr @scarlett2_sw_hw_enum_ctl, !151, !"scarlett2_sw_hw_enum_ctl", i1 false, i1 false}
!151 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2037, i32 38}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 1928, i32 3}
!154 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 1928, i32 9}
!156 = !{ptr @scarlett2_sw_hw_enum_ctl_info.values, !157, !"values", i1 false, i1 false}
!157 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 1927, i32 27}
!158 = !{ptr @scarlett2_dim_mute_ctl, !159, !"scarlett2_dim_mute_ctl", i1 false, i1 false}
!159 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2942, i32 38}
!160 = !{ptr @.str.66, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 231, i32 2}
!162 = !{ptr @.str.67, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 231, i32 26}
!164 = distinct !{null, !165, !"scarlett2_dim_mute_names", i1 false, i1 false}
!165 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 230, i32 26}
!166 = !{ptr @.str.68, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3050, i32 20}
!168 = !{ptr @.str.69, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3051, i32 21}
!170 = !{ptr @.str.70, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3056, i32 5}
!172 = !{ptr @.str.71, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3056, i32 14}
!174 = !{ptr @.str.72, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3065, i32 38}
!176 = !{ptr @.str.73, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3065, i32 45}
!178 = !{ptr @.str.74, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3074, i32 38}
!180 = !{ptr @.str.75, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3085, i32 6}
!182 = !{ptr @.str.76, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3109, i32 4}
!184 = !{ptr @scarlett2_level_enum_ctl, !185, !"scarlett2_level_enum_ctl", i1 false, i1 false}
!185 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2157, i32 38}
!186 = !{ptr @.str.77, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2100, i32 3}
!188 = !{ptr @.str.78, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2100, i32 11}
!190 = !{ptr @scarlett2_level_enum_ctl_info.values, !191, !"values", i1 false, i1 false}
!191 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2099, i32 27}
!192 = !{ptr @scarlett2_pad_ctl, !193, !"scarlett2_pad_ctl", i1 false, i1 false}
!193 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2215, i32 38}
!194 = !{ptr @scarlett2_air_ctl, !195, !"scarlett2_air_ctl", i1 false, i1 false}
!195 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2272, i32 38}
!196 = !{ptr @scarlett2_phantom_ctl, !197, !"scarlett2_phantom_ctl", i1 false, i1 false}
!197 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2330, i32 38}
!198 = !{ptr @scarlett2_phantom_persistence_ctl, !199, !"scarlett2_phantom_persistence_ctl", i1 false, i1 false}
!199 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2381, i32 38}
!200 = !{ptr @.str.79, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3342, i32 14}
!202 = !{ptr @scarlett2_mux_src_enum_ctl, !203, !"scarlett2_mux_src_enum_ctl", i1 false, i1 false}
!203 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3315, i32 38}
!204 = !{ptr @.str.80, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3208, i32 6}
!206 = !{ptr @scarlett2_mixer_ctl, !207, !"scarlett2_mixer_ctl", i1 false, i1 false}
!207 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3179, i32 38}
!208 = !{ptr @db_scale_scarlett2_mixer, !209, !"db_scale_scarlett2_mixer", i1 false, i1 false}
!209 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3173, i32 14}
!210 = !{ptr @.str.81, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3407, i32 10}
!212 = !{ptr @scarlett2_meter_ctl, !213, !"scarlett2_meter_ctl", i1 false, i1 false}
!213 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3389, i32 38}
!214 = !{ptr @.str.82, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 1699, i32 16}
!216 = !{ptr @scarlett2_sync_ctl, !217, !"scarlett2_sync_ctl", i1 false, i1 false}
!217 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 1682, i32 38}
!218 = !{ptr @.str.83, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 1661, i32 3}
!220 = !{ptr @.str.84, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 1661, i32 15}
!222 = !{ptr @scarlett2_sync_ctl_info.texts, !223, !"texts", i1 false, i1 false}
!223 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 1660, i32 21}
!224 = !{ptr @.str.85, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2549, i32 10}
!226 = !{ptr @.str.86, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2550, i32 10}
!228 = !{ptr @scarlett2_direct_monitor_ctl, !229, !"scarlett2_direct_monitor_ctl", i1 false, i1 false}
!229 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2522, i32 38}
!230 = !{ptr @.str.87, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2513, i32 10}
!232 = !{ptr @.str.88, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2513, i32 18}
!234 = !{ptr @scarlett2_direct_monitor_stereo_enum_ctl_info.values, !235, !"values", i1 false, i1 false}
!235 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2512, i32 27}
!236 = !{ptr @.str.89, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2708, i32 9}
!238 = !{ptr @scarlett2_speaker_switch_enum_ctl, !239, !"scarlett2_speaker_switch_enum_ctl", i1 false, i1 false}
!239 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2689, i32 38}
!240 = !{ptr @.str.90, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2563, i32 10}
!242 = !{ptr @.str.91, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2563, i32 18}
!244 = !{ptr @scarlett2_speaker_switch_enum_ctl_info.values, !245, !"values", i1 false, i1 false}
!245 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2562, i32 27}
!246 = !{ptr @.str.92, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2860, i32 9}
!248 = !{ptr @.str.93, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2867, i32 5}
!250 = !{ptr @scarlett2_talkback_enum_ctl, !251, !"scarlett2_talkback_enum_ctl", i1 false, i1 false}
!251 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2778, i32 38}
!252 = !{ptr @.str.94, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2718, i32 3}
!254 = !{ptr @.str.95, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2718, i32 22}
!256 = !{ptr @scarlett2_talkback_enum_ctl_info.values, !257, !"values", i1 false, i1 false}
!257 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2717, i32 27}
!258 = !{ptr @scarlett2_talkback_map_ctl, !259, !"scarlett2_talkback_map_ctl", i1 false, i1 false}
!259 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 2837, i32 38}
!260 = !{ptr @.str.96, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/usb/mixer_scarlett_gen2.c", i32 3857, i32 3}
!262 = !{ptr @.str.97, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @scarlett2_init_notify._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @scarlett2_init_notify._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{i32 1, !"wchar_size", i32 2}
!266 = !{i32 1, !"min_enum_size", i32 4}
!267 = !{i32 8, !"branch-target-enforcement", i32 0}
!268 = !{i32 8, !"sign-return-address", i32 0}
!269 = !{i32 8, !"sign-return-address-all", i32 0}
!270 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!271 = !{i32 7, !"uwtable", i32 1}
!272 = !{i32 7, !"frame-pointer", i32 2}
!273 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!274 = !{!"auto-init"}
