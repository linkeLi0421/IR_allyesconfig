; ModuleID = '/llk/IR_all_yes/sound/usb/midi.c_pt.bc'
source_filename = "../sound/usb/midi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_usbmidi_disconnect\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_usbmidi_disconnect\09\09\09\09"
module asm "\09.long\09__crc_snd_usbmidi_disconnect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_usbmidi_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_usbmidi_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_snd_usbmidi_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_usbmidi_input_stop\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_usbmidi_input_stop\09\09\09\09"
module asm "\09.long\09__crc_snd_usbmidi_input_stop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_usbmidi_input_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_usbmidi_input_stop\22\09\09\09\09\09"
module asm "__kstrtabns_snd_usbmidi_input_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_usbmidi_input_start\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_usbmidi_input_start\09\09\09\09"
module asm "\09.long\09__crc_snd_usbmidi_input_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_usbmidi_input_start:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_usbmidi_input_start\22\09\09\09\09\09"
module asm "__kstrtabns_snd_usbmidi_input_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_usbmidi_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_usbmidi_suspend\09\09\09\09"
module asm "\09.long\09__crc_snd_usbmidi_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_usbmidi_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_usbmidi_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_snd_usbmidi_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_usbmidi_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_usbmidi_resume\09\09\09\09"
module asm "\09.long\09__crc_snd_usbmidi_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_usbmidi_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_usbmidi_resume\22\09\09\09\09\09"
module asm "__kstrtabns_snd_usbmidi_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__snd_usbmidi_create\22, \22a\22\09"
module asm "\09.weak\09__crc___snd_usbmidi_create\09\09\09\09"
module asm "\09.long\09__crc___snd_usbmidi_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___snd_usbmidi_create:\09\09\09\09\09"
module asm "\09.asciz \09\22__snd_usbmidi_create\22\09\09\09\09\09"
module asm "__kstrtabns___snd_usbmidi_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.usb_protocol_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.79, i32 }
%union.anon.79 = type { ptr }
%struct.snd_rawmidi_global_ops = type { ptr, ptr, ptr }
%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.port_info = type { i32, i16, i16, ptr, i32 }
%struct.snd_usb_midi_endpoint = type { ptr, ptr }
%struct.snd_usb_midi_out_endpoint = type { ptr, [7 x %struct.out_urb_context], i32, i32, i32, %struct.work_struct, i32, %struct.spinlock, [16 x %struct.usbmidi_out_port], i32, %struct.wait_queue_head }
%struct.out_urb_context = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.usbmidi_out_port = type { ptr, ptr, i32, i8, i8, [2 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_usb_midi_in_endpoint = type { ptr, [7 x ptr], [16 x %struct.usbmidi_in_port], i8, i8, i8, i8, i32 }
%struct.usbmidi_in_port = type { ptr, i8 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.snd_usb_midi_endpoint_info = type { i8, i8, i8, i8, i16, i16, [16 x i16], [16 x i16] }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.snd_usb_midi = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.timer_list, %struct.spinlock, %struct.rw_semaphore, %struct.mutex, i32, i32, [2 x %struct.snd_usb_midi_endpoint], i32, [2 x i32], i8, i8, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_usb_audio_quirk = type { ptr, ptr, i16, i16, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.usb_ms_header_descriptor = type <{ i8, i8, i8, i16, i16 }>
%struct.usb_ms_endpoint_descriptor = type { i8, i8, i8, i8, [0 x i8] }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.73, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.73 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.68, [128 x i8] }
%union.anon.68 = type { %union.anon.70 }
%union.anon.70 = type { [64 x i64] }
%struct.snd_seq_port_info = type { %struct.snd_seq_addr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, [59 x i8] }
%struct.snd_seq_addr = type { i8, i8 }
%struct.snd_rawmidi_runtime = type { ptr, i8, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, %struct.work_struct, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.usb_midi_out_jack_descriptor = type { i8, i8, i8, i8, i8, i8, [0 x %struct.usb_midi_source_pin] }
%struct.usb_midi_source_pin = type { i8, i8 }
%struct.usb_midi_in_jack_descriptor = type { i8, i8, i8, i8, i8, i8 }

@__UNIQUE_ID_author238 = internal constant [60 x i8] c"snd_usbmidi_lib.author=Clemens Ladisch <clemens@ladisch.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [57 x i8] c"snd_usbmidi_lib.description=USB Audio/MIDI helper module\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [47 x i8] c"snd_usbmidi_lib.file=sound/usb/snd-usbmidi-lib\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [37 x i8] c"snd_usbmidi_lib.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__kstrtab_snd_usbmidi_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_usbmidi_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_usbmidi_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_usbmidi_disconnect to i32), ptr @__kstrtab_snd_usbmidi_disconnect, ptr @__kstrtabns_snd_usbmidi_disconnect }, section "___ksymtab+snd_usbmidi_disconnect", align 4
@__kstrtab_snd_usbmidi_input_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_usbmidi_input_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_usbmidi_input_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_usbmidi_input_stop to i32), ptr @__kstrtab_snd_usbmidi_input_stop, ptr @__kstrtabns_snd_usbmidi_input_stop }, section "___ksymtab+snd_usbmidi_input_stop", align 4
@__kstrtab_snd_usbmidi_input_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_usbmidi_input_start = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_usbmidi_input_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_usbmidi_input_start to i32), ptr @__kstrtab_snd_usbmidi_input_start, ptr @__kstrtabns_snd_usbmidi_input_start }, section "___ksymtab+snd_usbmidi_input_start", align 4
@__kstrtab_snd_usbmidi_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_usbmidi_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_usbmidi_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_usbmidi_suspend to i32), ptr @__kstrtab_snd_usbmidi_suspend, ptr @__kstrtabns_snd_usbmidi_suspend }, section "___ksymtab+snd_usbmidi_suspend", align 4
@__kstrtab_snd_usbmidi_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_usbmidi_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_usbmidi_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_usbmidi_resume to i32), ptr @__kstrtab_snd_usbmidi_resume, ptr @__kstrtabns_snd_usbmidi_resume }, section "___ksymtab+snd_usbmidi_resume", align 4
@snd_usbmidi_standard_ops = internal constant { %struct.usb_protocol_ops, [44 x i8] } { %struct.usb_protocol_ops { ptr @snd_usbmidi_standard_input, ptr @snd_usbmidi_standard_output, ptr @snd_usbmidi_output_standard_packet, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@__snd_usbmidi_create.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&umidi->disc_lock\00", [46 x i8] zeroinitializer }, align 32
@__snd_usbmidi_create.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&umidi->disc_rwsem\00", [45 x i8] zeroinitializer }, align 32
@__snd_usbmidi_create.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&umidi->mutex\00", [18 x i8] zeroinitializer }, align 32
@__snd_usbmidi_create.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&umidi->error_timer)\00", [42 x i8] zeroinitializer }, align 32
@snd_usbmidi_maudio_broken_running_status_ops = internal constant { %struct.usb_protocol_ops, [44 x i8] } { %struct.usb_protocol_ops { ptr @snd_usbmidi_maudio_broken_running_status_input, ptr @snd_usbmidi_standard_output, ptr @snd_usbmidi_output_standard_packet, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@snd_usbmidi_122l_ops = internal constant { %struct.usb_protocol_ops, [44 x i8] } { %struct.usb_protocol_ops { ptr @snd_usbmidi_us122l_input, ptr @snd_usbmidi_us122l_output, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@snd_usbmidi_midiman_ops = internal constant { %struct.usb_protocol_ops, [44 x i8] } { %struct.usb_protocol_ops { ptr @snd_usbmidi_midiman_input, ptr @snd_usbmidi_standard_output, ptr @snd_usbmidi_output_midiman_packet, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@snd_usbmidi_novation_ops = internal constant { %struct.usb_protocol_ops, [44 x i8] } { %struct.usb_protocol_ops { ptr @snd_usbmidi_novation_input, ptr @snd_usbmidi_novation_output, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@snd_usbmidi_raw_ops = internal constant { %struct.usb_protocol_ops, [44 x i8] } { %struct.usb_protocol_ops { ptr @snd_usbmidi_raw_input, ptr @snd_usbmidi_raw_output, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@snd_usbmidi_emagic_ops = internal constant { %struct.usb_protocol_ops, [44 x i8] } { %struct.usb_protocol_ops { ptr @snd_usbmidi_emagic_input, ptr @snd_usbmidi_emagic_output, ptr null, ptr @snd_usbmidi_emagic_init_out, ptr @snd_usbmidi_emagic_finish_out }, [44 x i8] zeroinitializer }, align 32
@snd_usbmidi_cme_ops = internal constant { %struct.usb_protocol_ops, [44 x i8] } { %struct.usb_protocol_ops { ptr @snd_usbmidi_cme_input, ptr @snd_usbmidi_standard_output, ptr @snd_usbmidi_output_standard_packet, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@snd_usbmidi_akai_ops = internal constant { %struct.usb_protocol_ops, [44 x i8] } { %struct.usb_protocol_ops { ptr @snd_usbmidi_akai_input, ptr @snd_usbmidi_akai_output, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@snd_usbmidi_ftdi_ops = internal constant { %struct.usb_protocol_ops, [44 x i8] } { %struct.usb_protocol_ops { ptr @snd_usbmidi_ftdi_input, ptr @snd_usbmidi_raw_output, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@snd_usbmidi_ch345_broken_sysex_ops = internal constant { %struct.usb_protocol_ops, [44 x i8] } { %struct.usb_protocol_ops { ptr @ch345_broken_sysex_input, ptr @snd_usbmidi_standard_output, ptr @snd_usbmidi_output_standard_packet, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@__snd_usbmidi_create._entry = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 2567, ptr @.str.10, ptr @.str.11 }, align 1
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid quirk type %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__snd_usbmidi_create\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sound/usb/midi.c\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__snd_usbmidi_create._entry_ptr = internal global ptr @__snd_usbmidi_create._entry, section ".printk_index", align 4
@__kstrtab___snd_usbmidi_create = external dso_local constant [0 x i8], align 1
@__kstrtabns___snd_usbmidi_create = external dso_local constant [0 x i8], align 1
@__ksymtab___snd_usbmidi_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__snd_usbmidi_create to i32), ptr @__kstrtab___snd_usbmidi_create, ptr @__kstrtabns___snd_usbmidi_create }, section "___ksymtab+__snd_usbmidi_create", align 4
@snd_usbmidi_submit_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.9, i32 180, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usb_submit_urb: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_usbmidi_submit_urb\00", [41 x i8] zeroinitializer }, align 32
@snd_usbmidi_submit_urb._entry_ptr = internal global ptr @snd_usbmidi_submit_urb._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@snd_usbmidi_cin_length = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\00\02\03\03\01\02\03\03\03\03\03\02\02\03\01", [16 x i8] zeroinitializer }, align 32
@snd_usbmidi_input_data.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.9, ptr @.str.16, i8 0, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_usbmidi_lib\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_usbmidi_input_data\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unexpected port %d!\0A\00", [43 x i8] zeroinitializer }, align 32
@snd_usbmidi_get_ms_info.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.17, ptr @.str.9, ptr @.str.18, i8 1, i8 -26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_usbmidi_get_ms_info\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MIDIStreaming version %02x.%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@snd_usbmidi_get_ms_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.9, i32 1949, ptr @.str.20, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MIDIStreaming interface descriptor not found\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@snd_usbmidi_get_ms_info._entry_ptr = internal global ptr @snd_usbmidi_get_ms_info._entry, section ".printk_index", align 4
@snd_usbmidi_get_ms_info._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.9, i32 1970, ptr @.str.20, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"too many endpoints\0A\00", [44 x i8] zeroinitializer }, align 32
@snd_usbmidi_get_ms_info._entry_ptr.23 = internal global ptr @snd_usbmidi_get_ms_info._entry.21, section ".printk_index", align 4
@snd_usbmidi_get_ms_info.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.17, ptr @.str.9, ptr @.str.24, i8 1, i8 -15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EP %02X: %d jack(s)\0A\00", [43 x i8] zeroinitializer }, align 32
@snd_usbmidi_get_ms_info._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.9, i32 1996, ptr @.str.20, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@snd_usbmidi_get_ms_info._entry_ptr.26 = internal global ptr @snd_usbmidi_get_ms_info._entry.25, section ".printk_index", align 4
@snd_usbmidi_get_ms_info.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.17, ptr @.str.9, ptr @.str.24, i8 1, i8 -9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@snd_usbmidi_switch_roland_altsetting.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.27, ptr @.str.9, ptr @.str.28, i8 2, i8 9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"snd_usbmidi_switch_roland_altsetting\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"switching to altsetting %d with int ep\0A\00", [56 x i8] zeroinitializer }, align 32
@roland_load_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @roland_load_info, ptr @roland_load_get, ptr @roland_load_put, %union.anon.79 zeroinitializer, i32 1 }, [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MIDI Input Mode\00", [16 x i8] zeroinitializer }, align 32
@roland_load_info.names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.30, ptr @.str.31], [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"High Load\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Light Load\00", [21 x i8] zeroinitializer }, align 32
@snd_usbmidi_emagic_init_out.init_data = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\F0\00 1d\0B\00\00\F7", [23 x i8] zeroinitializer }, align 32
@snd_usbmidi_emagic_finish_out.finish_data = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\F0\00 1d\10\00\7F@\F7", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"USB MIDI\00", [23 x i8] zeroinitializer }, align 32
@snd_usbmidi_ops = internal constant { %struct.snd_rawmidi_global_ops, [20 x i8] } { %struct.snd_rawmidi_global_ops { ptr null, ptr null, ptr @snd_usbmidi_get_port_info }, [20 x i8] zeroinitializer }, align 32
@snd_usbmidi_output_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_usbmidi_output_open, ptr @snd_usbmidi_output_close, ptr @snd_usbmidi_output_trigger, ptr @snd_usbmidi_output_drain }, [16 x i8] zeroinitializer }, align 32
@snd_usbmidi_input_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_usbmidi_input_open, ptr @snd_usbmidi_input_close, ptr @snd_usbmidi_input_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_usbmidi_port_info = internal constant { [88 x %struct.port_info], [352 x i8] } { [88 x %struct.port_info] [%struct.port_info { i32 77140060, i16 0, i16 128, ptr @.str.33, i32 327686 }, %struct.port_info { i32 77140060, i16 1, i16 0, ptr @.str.34, i32 65538 }, %struct.port_info { i32 77140060, i16 2, i16 0, ptr @.str.35, i32 589826 }, %struct.port_info { i32 77140060, i16 3, i16 0, ptr @.str.36, i32 65538 }, %struct.port_info { i32 92405760, i16 2, i16 0, ptr @.str.37, i32 65538 }, %struct.port_info { i32 92405763, i16 0, i16 128, ptr @.str.38, i32 327806 }, %struct.port_info { i32 92405763, i16 1, i16 128, ptr @.str.39, i32 327806 }, %struct.port_info { i32 92405763, i16 2, i16 128, ptr @.str.40, i32 327806 }, %struct.port_info { i32 92405763, i16 3, i16 128, ptr @.str.41, i32 327806 }, %struct.port_info { i32 92405763, i16 4, i16 0, ptr @.str.42, i32 589826 }, %struct.port_info { i32 92405763, i16 5, i16 0, ptr @.str.43, i32 589826 }, %struct.port_info { i32 92405764, i16 0, i16 0, ptr @.str.44, i32 589826 }, %struct.port_info { i32 92405764, i16 1, i16 0, ptr @.str.37, i32 65538 }, %struct.port_info { i32 92405767, i16 0, i16 64, ptr @.str.38, i32 327806 }, %struct.port_info { i32 92405767, i16 1, i16 64, ptr @.str.39, i32 327806 }, %struct.port_info { i32 92405767, i16 2, i16 0, ptr @.str.44, i32 589826 }, %struct.port_info { i32 92405771, i16 0, i16 64, ptr @.str.38, i32 327806 }, %struct.port_info { i32 92405771, i16 1, i16 64, ptr @.str.39, i32 327806 }, %struct.port_info { i32 92405771, i16 2, i16 0, ptr @.str.44, i32 589826 }, %struct.port_info { i32 92405772, i16 0, i16 64, ptr @.str.38, i32 327806 }, %struct.port_info { i32 92405772, i16 1, i16 64, ptr @.str.39, i32 327806 }, %struct.port_info { i32 92405772, i16 2, i16 0, ptr @.str.44, i32 589826 }, %struct.port_info { i32 92405780, i16 8, i16 0, ptr @.str.37, i32 65538 }, %struct.port_info { i32 92405782, i16 0, i16 128, ptr @.str.38, i32 327774 }, %struct.port_info { i32 92405782, i16 1, i16 128, ptr @.str.39, i32 327774 }, %struct.port_info { i32 92405782, i16 2, i16 0, ptr @.str.42, i32 589826 }, %struct.port_info { i32 92405782, i16 3, i16 0, ptr @.str.43, i32 589826 }, %struct.port_info { i32 92405795, i16 5, i16 0, ptr @.str.37, i32 65538 }, %struct.port_info { i32 92405799, i16 0, i16 64, ptr @.str.38, i32 327774 }, %struct.port_info { i32 92405799, i16 1, i16 64, ptr @.str.39, i32 327774 }, %struct.port_info { i32 92405799, i16 2, i16 0, ptr @.str.44, i32 589826 }, %struct.port_info { i32 92405801, i16 0, i16 128, ptr @.str.38, i32 327774 }, %struct.port_info { i32 92405801, i16 1, i16 128, ptr @.str.39, i32 327774 }, %struct.port_info { i32 92405801, i16 2, i16 0, ptr @.str.42, i32 589826 }, %struct.port_info { i32 92405801, i16 3, i16 0, ptr @.str.43, i32 589826 }, %struct.port_info { i32 92405803, i16 0, i16 0, ptr @.str.44, i32 589826 }, %struct.port_info { i32 92405803, i16 1, i16 0, ptr @.str.37, i32 65538 }, %struct.port_info { i32 92405807, i16 0, i16 0, ptr @.str.44, i32 589826 }, %struct.port_info { i32 92405807, i16 1, i16 0, ptr @.str.45, i32 589826 }, %struct.port_info { i32 92405807, i16 2, i16 0, ptr @.str.46, i32 589826 }, %struct.port_info { i32 92405811, i16 0, i16 0, ptr @.str.44, i32 589826 }, %struct.port_info { i32 92405811, i16 1, i16 0, ptr @.str.47, i32 589826 }, %struct.port_info { i32 92405811, i16 2, i16 0, ptr @.str.48, i32 589826 }, %struct.port_info { i32 92405819, i16 0, i16 0, ptr @.str.44, i32 589826 }, %struct.port_info { i32 92405819, i16 1, i16 0, ptr @.str.37, i32 65538 }, %struct.port_info { i32 92405828, i16 0, i16 0, ptr @.str.44, i32 589826 }, %struct.port_info { i32 92405828, i16 1, i16 0, ptr @.str.37, i32 65538 }, %struct.port_info { i32 92405832, i16 0, i16 0, ptr @.str.44, i32 589826 }, %struct.port_info { i32 92405832, i16 1, i16 0, ptr @.str.47, i32 589826 }, %struct.port_info { i32 92405832, i16 2, i16 0, ptr @.str.48, i32 589826 }, %struct.port_info { i32 92405837, i16 0, i16 0, ptr @.str.44, i32 589826 }, %struct.port_info { i32 92405837, i16 1, i16 0, ptr @.str.47, i32 589826 }, %struct.port_info { i32 92405837, i16 2, i16 0, ptr @.str.48, i32 589826 }, %struct.port_info { i32 92405897, i16 0, i16 0, ptr @.str.37, i32 65538 }, %struct.port_info { i32 92405914, i16 3, i16 0, ptr @.str.37, i32 65538 }, %struct.port_info { i32 92405938, i16 0, i16 0, ptr @.str.37, i32 65538 }, %struct.port_info { i32 92405938, i16 1, i16 0, ptr @.str.44, i32 589826 }, %struct.port_info { i32 92405995, i16 0, i16 0, ptr @.str.44, i32 589826 }, %struct.port_info { i32 92405995, i16 1, i16 0, ptr @.str.37, i32 65538 }, %struct.port_info { i32 92406018, i16 0, i16 0, ptr @.str.37, i32 65538 }, %struct.port_info { i32 92406018, i16 1, i16 0, ptr @.str.44, i32 589826 }, %struct.port_info { i32 92406031, i16 0, i16 0, ptr @.str.44, i32 589826 }, %struct.port_info { i32 92406031, i16 1, i16 0, ptr @.str.47, i32 65538 }, %struct.port_info { i32 92406031, i16 2, i16 0, ptr @.str.48, i32 65538 }, %struct.port_info { i32 92406036, i16 0, i16 128, ptr @.str.49, i32 327774 }, %struct.port_info { i32 92406036, i16 1, i16 0, ptr @.str.44, i32 589826 }, %struct.port_info { i32 92406036, i16 2, i16 0, ptr @.str.37, i32 65538 }, %struct.port_info { i32 92406048, i16 0, i16 0, ptr @.str.44, i32 589826 }, %struct.port_info { i32 92406048, i16 1, i16 0, ptr @.str.37, i32 65538 }, %struct.port_info { i32 92406049, i16 0, i16 0, ptr @.str.44, i32 589826 }, %struct.port_info { i32 92406049, i16 1, i16 0, ptr @.str.37, i32 65538 }, %struct.port_info { i32 92406085, i16 0, i16 0, ptr @.str.37, i32 65538 }, %struct.port_info { i32 92406085, i16 1, i16 0, ptr @.str.44, i32 589826 }, %struct.port_info { i32 92406102, i16 0, i16 0, ptr @.str.50, i32 65538 }, %struct.port_info { i32 92406102, i16 1, i16 0, ptr @.str.44, i32 589826 }, %struct.port_info { i32 92406107, i16 0, i16 128, ptr @.str.49, i32 327774 }, %struct.port_info { i32 92406107, i16 1, i16 0, ptr @.str.37, i32 65538 }, %struct.port_info { i32 123932721, i16 8, i16 0, ptr @.str.37, i32 65538 }, %struct.port_info { i32 123932723, i16 8, i16 0, ptr @.str.37, i32 65538 }, %struct.port_info { i32 134021121, i16 0, i16 0, ptr @.str.51, i32 589826 }, %struct.port_info { i32 134021121, i16 1, i16 0, ptr @.str.52, i32 589826 }, %struct.port_info { i32 141164545, i16 8, i16 0, ptr @.str.53, i32 589826 }, %struct.port_info { i32 141164546, i16 8, i16 0, ptr @.str.53, i32 589826 }, %struct.port_info { i32 141164547, i16 4, i16 0, ptr @.str.53, i32 589826 }, %struct.port_info { i32 166199394, i16 0, i16 0, ptr @.str.37, i32 65538 }, %struct.port_info { i32 166199394, i16 1, i16 0, ptr @.str.44, i32 65538 }, %struct.port_info { i32 322832405, i16 0, i16 0, ptr @.str.44, i32 589826 }, %struct.port_info { i32 322832405, i16 1, i16 0, ptr @.str.49, i32 327682 }], [352 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s Tone Generator\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s Remote Control\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s Thru\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s Editor\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s Control\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s Part A\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s Part B\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s Part C\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s Part D\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s MIDI 1\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s MIDI 2\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s MIDI\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s External MIDI\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s Sync\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s 1\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s 2\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s Synth\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s Keyboard\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s MIDI A\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s MIDI B\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s Broadcast\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@system_highpri_wq = external dso_local local_unnamed_addr global ptr, align 4
@snd_usbmidi_create_endpoints_midiman.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.55, ptr @.str.9, ptr @.str.56, i8 2, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"snd_usbmidi_create_endpoints_midiman\00", [59 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"not enough endpoints\0A\00", [42 x i8] zeroinitializer }, align 32
@snd_usbmidi_create_endpoints_midiman.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.55, ptr @.str.9, ptr @.str.57, i8 2, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"endpoint[0] isn't interrupt\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_usbmidi_create_endpoints_midiman.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.55, ptr @.str.9, ptr @.str.58, i8 2, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"endpoint[2] isn't bulk output\0A\00", [33 x i8] zeroinitializer }, align 32
@snd_usbmidi_create_endpoints_midiman.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.55, ptr @.str.9, ptr @.str.59, i8 2, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"endpoint[4] isn't bulk output\0A\00", [33 x i8] zeroinitializer }, align 32
@snd_usbmidi_out_endpoint_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.9, i32 1421, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid MIDI out EP %x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"snd_usbmidi_out_endpoint_create\00", [32 x i8] zeroinitializer }, align 32
@snd_usbmidi_out_endpoint_create._entry_ptr = internal global ptr @snd_usbmidi_out_endpoint_create._entry, section ".printk_index", align 4
@snd_usbmidi_out_endpoint_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ep->buffer_lock\00", [47 x i8] zeroinitializer }, align 32
@snd_usbmidi_out_endpoint_create.__key.63 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&ep->work)\00", [35 x i8] zeroinitializer }, align 32
@snd_usbmidi_out_endpoint_create.__key.65 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ep->drain_wait\00", [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@snd_usbmidi_urb_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.9, i32 202, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"urb status %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_usbmidi_urb_error\00", [42 x i8] zeroinitializer }, align 32
@snd_usbmidi_urb_error._entry_ptr = internal global ptr @snd_usbmidi_urb_error._entry, section ".printk_index", align 4
@snd_usbmidi_in_endpoint_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.9, i32 1309, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid MIDI in EP %x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"snd_usbmidi_in_endpoint_create\00", [33 x i8] zeroinitializer }, align 32
@snd_usbmidi_in_endpoint_create._entry_ptr = internal global ptr @snd_usbmidi_in_endpoint_create._entry, section ".printk_index", align 4
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIDI\00", [27 x i8] zeroinitializer }, align 32
@snd_usbmidi_init_substream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.9, i32 1810, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"substream %d:%d not found\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snd_usbmidi_init_substream\00", [37 x i8] zeroinitializer }, align 32
@snd_usbmidi_init_substream._entry_ptr = internal global ptr @snd_usbmidi_init_substream._entry, section ".printk_index", align 4
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s %s %d\00", [23 x i8] zeroinitializer }, align 32
@snd_usbmidi_create_endpoints.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.77, ptr @.str.9, ptr @.str.78, i8 1, i8 -39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snd_usbmidi_create_endpoints\00", [35 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"created %d output and %d input ports\0A\00", [58 x i8] zeroinitializer }, align 32
@switch.table.snd_usbmidi_us122l_output = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 1, i32 1], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 16, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.80 = internal global [10 x i64] [i64 8, i64 8, i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.82 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.83 = internal global [11 x i64] [i64 9, i64 4, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 15]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 8, i64 240, i64 247]
@__sancov_gen_cov_switch_values.85 = internal global [11 x i64] [i64 9, i64 32, i64 105152526, i64 105152527, i64 174542865, i64 177344544, i64 338708299, i64 365560065, i64 365565958, i64 445019437, i64 4228382977]
@__sancov_gen_cov_switch_values.86 = internal global [9 x i64] [i64 7, i64 32, i64 4294967188, i64 4294967192, i64 4294967212, i64 4294967225, i64 4294967234, i64 4294967277, i64 4294967294]
@__sancov_gen_cov_switch_values.87 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967212, i64 4294967225, i64 4294967234, i64 4294967277, i64 4294967294]
@___asan_gen_.88 = private unnamed_addr constant [25 x i8] c"snd_usbmidi_standard_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 659, i32 38 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2477, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2478, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2479, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2484, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [45 x i8] c"snd_usbmidi_maudio_broken_running_status_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 672, i32 25 }
@___asan_gen_.106 = private unnamed_addr constant [21 x i8] c"snd_usbmidi_122l_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 917, i32 38 }
@___asan_gen_.109 = private unnamed_addr constant [24 x i8] c"snd_usbmidi_midiman_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 665, i32 38 }
@___asan_gen_.112 = private unnamed_addr constant [25 x i8] c"snd_usbmidi_novation_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 824, i32 38 }
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c"snd_usbmidi_raw_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 856, i32 38 }
@___asan_gen_.118 = private unnamed_addr constant [23 x i8] c"snd_usbmidi_emagic_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1050, i32 38 }
@___asan_gen_.121 = private unnamed_addr constant [20 x i8] c"snd_usbmidi_cme_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 678, i32 38 }
@___asan_gen_.124 = private unnamed_addr constant [21 x i8] c"snd_usbmidi_akai_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 784, i32 38 }
@___asan_gen_.127 = private unnamed_addr constant [21 x i8] c"snd_usbmidi_ftdi_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 872, i32 38 }
@___asan_gen_.130 = private unnamed_addr constant [35 x i8] c"snd_usbmidi_ch345_broken_sysex_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 684, i32 38 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2566, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 180, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [23 x i8] c"snd_usbmidi_cin_length\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 169, i32 22 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 216, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1945, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1948, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1969, i32 6 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1990, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1995, i32 6 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2084, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [16 x i8] c"roland_load_ctl\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2049, i32 38 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2051, i32 10 }
@___asan_gen_.208 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2021, i32 27 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2021, i32 39 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2021, i32 52 }
@___asan_gen_.217 = private unnamed_addr constant [10 x i8] c"init_data\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 928, i32 18 }
@___asan_gen_.220 = private unnamed_addr constant [12 x i8] c"finish_data\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 945, i32 18 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2349, i32 37 }
@___asan_gen_.226 = private unnamed_addr constant [16 x i8] c"snd_usbmidi_ops\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2339, i32 44 }
@___asan_gen_.229 = private unnamed_addr constant [23 x i8] c"snd_usbmidi_output_ops\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1221, i32 37 }
@___asan_gen_.232 = private unnamed_addr constant [22 x i8] c"snd_usbmidi_input_ops\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1228, i32 37 }
@___asan_gen_.235 = private unnamed_addr constant [22 x i8] c"snd_usbmidi_port_info\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1548, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1588, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1589, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1590, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1591, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1593, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1595, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1596, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1597, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1598, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1599, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1600, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1602, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1639, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1640, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1643, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1644, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1677, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1689, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1698, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1699, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1701, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1137, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2270, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2276, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2281, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2288, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1420, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1427, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1428, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1429, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 202, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1308, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1800, i32 31 }
@___asan_gen_.367 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1809, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1842, i32 38 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1842, i32 48 }
@___asan_gen_.385 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.386 = private constant [20 x i8] c"../sound/usb/midi.c\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1893, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [39 x i8] c"switch.table.snd_usbmidi_us122l_output\00", align 1
@llvm.compiler.used = appending global [121 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__ksymtab___snd_usbmidi_create, ptr @__ksymtab_snd_usbmidi_disconnect, ptr @__ksymtab_snd_usbmidi_input_start, ptr @__ksymtab_snd_usbmidi_input_stop, ptr @__ksymtab_snd_usbmidi_resume, ptr @__ksymtab_snd_usbmidi_suspend, ptr @__snd_usbmidi_create._entry, ptr @__snd_usbmidi_create._entry_ptr, ptr @snd_usbmidi_get_ms_info._entry, ptr @snd_usbmidi_get_ms_info._entry.21, ptr @snd_usbmidi_get_ms_info._entry.25, ptr @snd_usbmidi_get_ms_info._entry_ptr, ptr @snd_usbmidi_get_ms_info._entry_ptr.23, ptr @snd_usbmidi_get_ms_info._entry_ptr.26, ptr @snd_usbmidi_in_endpoint_create._entry, ptr @snd_usbmidi_in_endpoint_create._entry_ptr, ptr @snd_usbmidi_init_substream._entry, ptr @snd_usbmidi_init_substream._entry_ptr, ptr @snd_usbmidi_out_endpoint_create._entry, ptr @snd_usbmidi_out_endpoint_create._entry_ptr, ptr @snd_usbmidi_submit_urb._entry, ptr @snd_usbmidi_submit_urb._entry_ptr, ptr @snd_usbmidi_urb_error._entry, ptr @snd_usbmidi_urb_error._entry_ptr, ptr @snd_usbmidi_standard_ops, ptr @.str, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @snd_usbmidi_maudio_broken_running_status_ops, ptr @snd_usbmidi_122l_ops, ptr @snd_usbmidi_midiman_ops, ptr @snd_usbmidi_novation_ops, ptr @snd_usbmidi_raw_ops, ptr @snd_usbmidi_emagic_ops, ptr @snd_usbmidi_cme_ops, ptr @snd_usbmidi_akai_ops, ptr @snd_usbmidi_ftdi_ops, ptr @snd_usbmidi_ch345_broken_sysex_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @snd_usbmidi_cin_length, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @roland_load_ctl, ptr @.str.29, ptr @roland_load_info.names, ptr @.str.30, ptr @.str.31, ptr @snd_usbmidi_emagic_init_out.init_data, ptr @snd_usbmidi_emagic_finish_out.finish_data, ptr @.str.32, ptr @snd_usbmidi_ops, ptr @snd_usbmidi_output_ops, ptr @snd_usbmidi_input_ops, ptr @snd_usbmidi_port_info, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @snd_usbmidi_out_endpoint_create.__key, ptr @.str.62, ptr @snd_usbmidi_out_endpoint_create.__key.63, ptr @.str.64, ptr @snd_usbmidi_out_endpoint_create.__key.65, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @switch.table.snd_usbmidi_us122l_output], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_standard_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_maudio_broken_running_status_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_122l_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_midiman_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_novation_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_raw_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_emagic_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_cme_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_akai_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_ftdi_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_ch345_broken_sysex_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_submit_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_cin_length to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_get_ms_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_get_ms_info._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_get_ms_info._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @roland_load_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @roland_load_info.names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_emagic_init_out.init_data to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_emagic_finish_out.finish_data to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_output_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_input_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_port_info to i32), i32 1408, i32 1760, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_out_endpoint_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_out_endpoint_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_out_endpoint_create.__key.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_out_endpoint_create.__key.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_urb_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_in_endpoint_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbmidi_init_substream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_usbmidi_us122l_output to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usbmidi_disconnect(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_rwsem = getelementptr i8, ptr %p, i32 100
  tail call void @down_write(ptr noundef %disc_rwsem) #12
  %disc_lock = getelementptr i8, ptr %p, i32 56
  tail call void @_raw_spin_lock_irq(ptr noundef %disc_lock) #12
  %disconnected = getelementptr i8, ptr %p, i32 324
  %0 = ptrtoint ptr %disconnected to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %disconnected, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %disc_lock) #12
  tail call void @up_write(ptr noundef %disc_rwsem) #12
  %error_timer = getelementptr i8, ptr %p, i32 8
  %call = tail call i32 @del_timer_sync(ptr noundef %error_timer) #12
  %endpoints = getelementptr i8, ptr %p, i32 296
  %usb_protocol_ops = getelementptr i8, ptr %p, i32 -4
  br label %for.body

for.body:                                         ; preds = %if.end50.for.body_crit_edge, %entry
  %i.090 = phi i32 [ 0, %entry ], [ %inc52, %if.end50.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.snd_usb_midi_endpoint], ptr %endpoints, i32 0, i32 %i.090
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.if.end27_crit_edge, label %if.end

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.end:                                           ; preds = %for.body
  %work = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %2, i32 0, i32 5
  %call4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #12
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %.pr, null
  br i1 %tobool6.not, label %if.end.if.end27_crit_edge, label %for.body10.preheader

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

for.body10.preheader:                             ; preds = %if.end
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %arrayidx12 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 1, i32 0
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx12, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #12
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %arrayidx12.1 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %9, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx12.1, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #12
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %arrayidx12.2 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %13, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx12.2, align 4
  tail call void @usb_kill_urb(ptr noundef %15) #12
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %arrayidx12.3 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %17, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx12.3, align 4
  tail call void @usb_kill_urb(ptr noundef %19) #12
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %arrayidx12.4 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %21, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx12.4, align 4
  tail call void @usb_kill_urb(ptr noundef %23) #12
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %arrayidx12.5 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %25, i32 0, i32 1, i32 5
  %26 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx12.5, align 4
  tail call void @usb_kill_urb(ptr noundef %27) #12
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %arrayidx12.6 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %29, i32 0, i32 1, i32 6
  %30 = ptrtoint ptr %arrayidx12.6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx12.6, align 4
  tail call void @usb_kill_urb(ptr noundef %31) #12
  %32 = ptrtoint ptr %usb_protocol_ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb_protocol_ops, align 4
  %finish_out_endpoint = getelementptr inbounds %struct.usb_protocol_ops, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %finish_out_endpoint to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %finish_out_endpoint, align 4
  %tobool13.not = icmp eq ptr %35, null
  br i1 %tobool13.not, label %for.body10.preheader.if.end18_crit_edge, label %if.then14

for.body10.preheader.if.end18_crit_edge:          ; preds = %for.body10.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then14:                                        ; preds = %for.body10.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  tail call void %35(ptr noundef %37) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %for.body10.preheader.if.end18_crit_edge
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %active_urbs = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %active_urbs to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %active_urbs, align 4
  %41 = load ptr, ptr %arrayidx, align 4
  %drain_urbs = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %drain_urbs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %drain_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool21.not = icmp eq i32 %43, 0
  br i1 %tobool21.not, label %if.end18.if.end27_crit_edge, label %if.then22

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %drain_urbs to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %drain_urbs, align 4
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx, align 4
  %drain_wait = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %46, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %drain_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end18.if.end27_crit_edge, %if.end.if.end27_crit_edge, %for.body.if.end27_crit_edge
  %in = getelementptr inbounds %struct.snd_usb_midi_endpoint, ptr %arrayidx, i32 0, i32 1
  %47 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %in, align 4
  %tobool28.not = icmp eq ptr %48, null
  br i1 %tobool28.not, label %if.end27.if.end39_crit_edge, label %for.body32.preheader

if.end27.if.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

for.body32.preheader:                             ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %in, align 4
  %arrayidx35 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %50, i32 0, i32 1, i32 0
  %51 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx35, align 4
  tail call void @usb_kill_urb(ptr noundef %52) #12
  %53 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %in, align 4
  %arrayidx35.1 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %54, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx35.1, align 4
  tail call void @usb_kill_urb(ptr noundef %56) #12
  %57 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %in, align 4
  %arrayidx35.2 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %58, i32 0, i32 1, i32 2
  %59 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx35.2, align 4
  tail call void @usb_kill_urb(ptr noundef %60) #12
  %61 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %in, align 4
  %arrayidx35.3 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %62, i32 0, i32 1, i32 3
  %63 = ptrtoint ptr %arrayidx35.3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx35.3, align 4
  tail call void @usb_kill_urb(ptr noundef %64) #12
  %65 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %in, align 4
  %arrayidx35.4 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %66, i32 0, i32 1, i32 4
  %67 = ptrtoint ptr %arrayidx35.4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx35.4, align 4
  tail call void @usb_kill_urb(ptr noundef %68) #12
  %69 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %in, align 4
  %arrayidx35.5 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %70, i32 0, i32 1, i32 5
  %71 = ptrtoint ptr %arrayidx35.5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx35.5, align 4
  tail call void @usb_kill_urb(ptr noundef %72) #12
  %73 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %in, align 4
  %arrayidx35.6 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %74, i32 0, i32 1, i32 6
  %75 = ptrtoint ptr %arrayidx35.6 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx35.6, align 4
  tail call void @usb_kill_urb(ptr noundef %76) #12
  br label %if.end39

if.end39:                                         ; preds = %for.body32.preheader, %if.end27.if.end39_crit_edge
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx, align 4
  %tobool41.not = icmp eq ptr %78, null
  br i1 %tobool41.not, label %if.end39.if.end44_crit_edge, label %if.then42

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @snd_usbmidi_out_endpoint_clear(ptr noundef nonnull %78)
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end39.if.end44_crit_edge
  %79 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %in, align 4
  %tobool46.not = icmp eq ptr %80, null
  br i1 %tobool46.not, label %if.end44.if.end50_crit_edge, label %if.then47

if.end44.if.end50_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @snd_usbmidi_in_endpoint_delete(ptr noundef nonnull %80)
  %81 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %in, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end44.if.end50_crit_edge
  %inc52 = add nuw nsw i32 %i.090, 1
  %exitcond.not = icmp eq i32 %inc52, 2
  br i1 %exitcond.not, label %for.end53, label %if.end50.for.body_crit_edge

if.end50.for.body_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_usbmidi_out_endpoint_clear(ptr nocapture noundef %ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %max_transfer = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 4
  %arrayidx = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 1, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %4 = ptrtoint ptr %max_transfer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_transfer, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_buffer.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %transfer_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %7, i32 noundef %5, ptr noundef %9, i32 noundef %11) #12
  tail call void @usb_free_urb(ptr noundef nonnull %1) #12
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %14, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ep, align 4
  %17 = ptrtoint ptr %max_transfer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_transfer, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %transfer_buffer.i.1 = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 14
  %21 = ptrtoint ptr %transfer_buffer.i.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %transfer_buffer.i.1, align 4
  %transfer_dma.i.1 = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 15
  %23 = ptrtoint ptr %transfer_dma.i.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %transfer_dma.i.1, align 4
  tail call void @usb_free_coherent(ptr noundef %20, i32 noundef %18, ptr noundef %22, i32 noundef %24) #12
  tail call void @usb_free_urb(ptr noundef nonnull %14) #12
  %25 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %27, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ep, align 4
  %30 = ptrtoint ptr %max_transfer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_transfer, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  %transfer_buffer.i.2 = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 14
  %34 = ptrtoint ptr %transfer_buffer.i.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %transfer_buffer.i.2, align 4
  %transfer_dma.i.2 = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 15
  %36 = ptrtoint ptr %transfer_dma.i.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %transfer_dma.i.2, align 4
  tail call void @usb_free_coherent(ptr noundef %33, i32 noundef %31, ptr noundef %35, i32 noundef %37) #12
  tail call void @usb_free_urb(ptr noundef nonnull %27) #12
  %38 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %40, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ep, align 4
  %43 = ptrtoint ptr %max_transfer to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_transfer, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %42, align 4
  %transfer_buffer.i.3 = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 14
  %47 = ptrtoint ptr %transfer_buffer.i.3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %transfer_buffer.i.3, align 4
  %transfer_dma.i.3 = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 15
  %49 = ptrtoint ptr %transfer_dma.i.3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %transfer_dma.i.3, align 4
  tail call void @usb_free_coherent(ptr noundef %46, i32 noundef %44, ptr noundef %48, i32 noundef %50) #12
  tail call void @usb_free_urb(ptr noundef nonnull %40) #12
  %51 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %arrayidx.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 1, i32 4
  %52 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %53, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ep, align 4
  %56 = ptrtoint ptr %max_transfer to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max_transfer, align 4
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %55, align 4
  %transfer_buffer.i.4 = getelementptr inbounds %struct.urb, ptr %53, i32 0, i32 14
  %60 = ptrtoint ptr %transfer_buffer.i.4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %transfer_buffer.i.4, align 4
  %transfer_dma.i.4 = getelementptr inbounds %struct.urb, ptr %53, i32 0, i32 15
  %62 = ptrtoint ptr %transfer_dma.i.4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %transfer_dma.i.4, align 4
  tail call void @usb_free_coherent(ptr noundef %59, i32 noundef %57, ptr noundef %61, i32 noundef %63) #12
  tail call void @usb_free_urb(ptr noundef nonnull %53) #12
  %64 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %arrayidx.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 1, i32 5
  %65 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %66, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ep, align 4
  %69 = ptrtoint ptr %max_transfer to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %max_transfer, align 4
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %68, align 4
  %transfer_buffer.i.5 = getelementptr inbounds %struct.urb, ptr %66, i32 0, i32 14
  %73 = ptrtoint ptr %transfer_buffer.i.5 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %transfer_buffer.i.5, align 4
  %transfer_dma.i.5 = getelementptr inbounds %struct.urb, ptr %66, i32 0, i32 15
  %75 = ptrtoint ptr %transfer_dma.i.5 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %transfer_dma.i.5, align 4
  tail call void @usb_free_coherent(ptr noundef %72, i32 noundef %70, ptr noundef %74, i32 noundef %76) #12
  tail call void @usb_free_urb(ptr noundef nonnull %66) #12
  %77 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %arrayidx.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 1, i32 6
  %78 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %79, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ep, align 4
  %82 = ptrtoint ptr %max_transfer to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max_transfer, align 4
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %81, align 4
  %transfer_buffer.i.6 = getelementptr inbounds %struct.urb, ptr %79, i32 0, i32 14
  %86 = ptrtoint ptr %transfer_buffer.i.6 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %transfer_buffer.i.6, align 4
  %transfer_dma.i.6 = getelementptr inbounds %struct.urb, ptr %79, i32 0, i32 15
  %88 = ptrtoint ptr %transfer_dma.i.6 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %transfer_dma.i.6, align 4
  tail call void @usb_free_coherent(ptr noundef %85, i32 noundef %83, ptr noundef %87, i32 noundef %89) #12
  tail call void @usb_free_urb(ptr noundef nonnull %79) #12
  %90 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %arrayidx.6, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_usbmidi_in_endpoint_delete(ptr noundef %ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 1, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %transfer_buffer_length, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_buffer.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %transfer_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %7, i32 noundef %5, ptr noundef %9, i32 noundef %11) #12
  tail call void @usb_free_urb(ptr noundef nonnull %1) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %13, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ep, align 4
  %transfer_buffer_length.1 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 19
  %16 = ptrtoint ptr %transfer_buffer_length.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %transfer_buffer_length.1, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %transfer_buffer.i.1 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 14
  %20 = ptrtoint ptr %transfer_buffer.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer_buffer.i.1, align 4
  %transfer_dma.i.1 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 15
  %22 = ptrtoint ptr %transfer_dma.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %transfer_dma.i.1, align 4
  tail call void @usb_free_coherent(ptr noundef %19, i32 noundef %17, ptr noundef %21, i32 noundef %23) #12
  tail call void @usb_free_urb(ptr noundef nonnull %13) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %25, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ep, align 4
  %transfer_buffer_length.2 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 19
  %28 = ptrtoint ptr %transfer_buffer_length.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %transfer_buffer_length.2, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  %transfer_buffer.i.2 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 14
  %32 = ptrtoint ptr %transfer_buffer.i.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %transfer_buffer.i.2, align 4
  %transfer_dma.i.2 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 15
  %34 = ptrtoint ptr %transfer_dma.i.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %transfer_dma.i.2, align 4
  tail call void @usb_free_coherent(ptr noundef %31, i32 noundef %29, ptr noundef %33, i32 noundef %35) #12
  tail call void @usb_free_urb(ptr noundef nonnull %25) #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %37, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ep, align 4
  %transfer_buffer_length.3 = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 19
  %40 = ptrtoint ptr %transfer_buffer_length.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %transfer_buffer_length.3, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %transfer_buffer.i.3 = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 14
  %44 = ptrtoint ptr %transfer_buffer.i.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %transfer_buffer.i.3, align 4
  %transfer_dma.i.3 = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 15
  %46 = ptrtoint ptr %transfer_dma.i.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %transfer_dma.i.3, align 4
  tail call void @usb_free_coherent(ptr noundef %43, i32 noundef %41, ptr noundef %45, i32 noundef %47) #12
  tail call void @usb_free_urb(ptr noundef nonnull %37) #12
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 1, i32 4
  %48 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %49, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ep, align 4
  %transfer_buffer_length.4 = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 19
  %52 = ptrtoint ptr %transfer_buffer_length.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %transfer_buffer_length.4, align 4
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %51, align 4
  %transfer_buffer.i.4 = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 14
  %56 = ptrtoint ptr %transfer_buffer.i.4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %transfer_buffer.i.4, align 4
  %transfer_dma.i.4 = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 15
  %58 = ptrtoint ptr %transfer_dma.i.4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %transfer_dma.i.4, align 4
  tail call void @usb_free_coherent(ptr noundef %55, i32 noundef %53, ptr noundef %57, i32 noundef %59) #12
  tail call void @usb_free_urb(ptr noundef nonnull %49) #12
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 1, i32 5
  %60 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %61, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ep, align 4
  %transfer_buffer_length.5 = getelementptr inbounds %struct.urb, ptr %61, i32 0, i32 19
  %64 = ptrtoint ptr %transfer_buffer_length.5 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %transfer_buffer_length.5, align 4
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %63, align 4
  %transfer_buffer.i.5 = getelementptr inbounds %struct.urb, ptr %61, i32 0, i32 14
  %68 = ptrtoint ptr %transfer_buffer.i.5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %transfer_buffer.i.5, align 4
  %transfer_dma.i.5 = getelementptr inbounds %struct.urb, ptr %61, i32 0, i32 15
  %70 = ptrtoint ptr %transfer_dma.i.5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %transfer_dma.i.5, align 4
  tail call void @usb_free_coherent(ptr noundef %67, i32 noundef %65, ptr noundef %69, i32 noundef %71) #12
  tail call void @usb_free_urb(ptr noundef nonnull %61) #12
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 1, i32 6
  %72 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %73, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ep, align 4
  %transfer_buffer_length.6 = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 19
  %76 = ptrtoint ptr %transfer_buffer_length.6 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %transfer_buffer_length.6, align 4
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %75, align 4
  %transfer_buffer.i.6 = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 14
  %80 = ptrtoint ptr %transfer_buffer.i.6 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %transfer_buffer.i.6, align 4
  %transfer_dma.i.6 = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 15
  %82 = ptrtoint ptr %transfer_dma.i.6 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %transfer_dma.i.6, align 4
  tail call void @usb_free_coherent(ptr noundef %79, i32 noundef %77, ptr noundef %81, i32 noundef %83) #12
  tail call void @usb_free_urb(ptr noundef nonnull %73) #12
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  tail call void @kfree(ptr noundef %ep) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usbmidi_input_stop(ptr nocapture noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %input_running = getelementptr i8, ptr %p, i32 325
  %0 = ptrtoint ptr %input_running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %input_running, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %in = getelementptr i8, ptr %p, i32 300
  %2 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %for.cond.preheader.if.end8_crit_edge, label %for.body5.preheader

for.cond.preheader.if.end8_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

for.body5.preheader:                              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in, align 4
  %arrayidx7 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %5, i32 0, i32 1, i32 0
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #12
  %8 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %in, align 4
  %arrayidx7.1 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %9, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx7.1, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #12
  %12 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %in, align 4
  %arrayidx7.2 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %13, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx7.2, align 4
  tail call void @usb_kill_urb(ptr noundef %15) #12
  %16 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %in, align 4
  %arrayidx7.3 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %17, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx7.3, align 4
  tail call void @usb_kill_urb(ptr noundef %19) #12
  %20 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %in, align 4
  %arrayidx7.4 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %21, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx7.4, align 4
  tail call void @usb_kill_urb(ptr noundef %23) #12
  %24 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %in, align 4
  %arrayidx7.5 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %25, i32 0, i32 1, i32 5
  %26 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx7.5, align 4
  tail call void @usb_kill_urb(ptr noundef %27) #12
  %28 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %in, align 4
  %arrayidx7.6 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %29, i32 0, i32 1, i32 6
  %30 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx7.6, align 4
  tail call void @usb_kill_urb(ptr noundef %31) #12
  br label %if.end8

if.end8:                                          ; preds = %for.body5.preheader, %for.cond.preheader.if.end8_crit_edge
  %in.1 = getelementptr i8, ptr %p, i32 308
  %32 = ptrtoint ptr %in.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %in.1, align 4
  %tobool1.not.1 = icmp eq ptr %33, null
  br i1 %tobool1.not.1, label %if.end8.if.end8.1_crit_edge, label %for.body5.preheader.1

if.end8.if.end8.1_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.1

for.body5.preheader.1:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %in.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %in.1, align 4
  %arrayidx7.124 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %35, i32 0, i32 1, i32 0
  %36 = ptrtoint ptr %arrayidx7.124 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx7.124, align 4
  tail call void @usb_kill_urb(ptr noundef %37) #12
  %38 = ptrtoint ptr %in.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %in.1, align 4
  %arrayidx7.1.1 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %39, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %arrayidx7.1.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx7.1.1, align 4
  tail call void @usb_kill_urb(ptr noundef %41) #12
  %42 = ptrtoint ptr %in.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %in.1, align 4
  %arrayidx7.2.1 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %43, i32 0, i32 1, i32 2
  %44 = ptrtoint ptr %arrayidx7.2.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx7.2.1, align 4
  tail call void @usb_kill_urb(ptr noundef %45) #12
  %46 = ptrtoint ptr %in.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %in.1, align 4
  %arrayidx7.3.1 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %47, i32 0, i32 1, i32 3
  %48 = ptrtoint ptr %arrayidx7.3.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx7.3.1, align 4
  tail call void @usb_kill_urb(ptr noundef %49) #12
  %50 = ptrtoint ptr %in.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %in.1, align 4
  %arrayidx7.4.1 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %51, i32 0, i32 1, i32 4
  %52 = ptrtoint ptr %arrayidx7.4.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx7.4.1, align 4
  tail call void @usb_kill_urb(ptr noundef %53) #12
  %54 = ptrtoint ptr %in.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %in.1, align 4
  %arrayidx7.5.1 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %55, i32 0, i32 1, i32 5
  %56 = ptrtoint ptr %arrayidx7.5.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx7.5.1, align 4
  tail call void @usb_kill_urb(ptr noundef %57) #12
  %58 = ptrtoint ptr %in.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %in.1, align 4
  %arrayidx7.6.1 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %59, i32 0, i32 1, i32 6
  %60 = ptrtoint ptr %arrayidx7.6.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx7.6.1, align 4
  tail call void @usb_kill_urb(ptr noundef %61) #12
  br label %if.end8.1

if.end8.1:                                        ; preds = %for.body5.preheader.1, %if.end8.if.end8.1_crit_edge
  %62 = ptrtoint ptr %input_running to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %input_running, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end8.1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usbmidi_input_start(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %input_running = getelementptr i8, ptr %p, i32 325
  %0 = ptrtoint ptr %input_running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %input_running, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr i8, ptr %p, i32 320
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %disc_lock.i = getelementptr i8, ptr %p, i32 56
  %in = getelementptr i8, ptr %p, i32 300
  %4 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.cond.preheader.snd_usbmidi_input_start_ep.exit_crit_edge, label %for.cond.preheader.for.body.i_crit_edge

for.cond.preheader.for.body.i_crit_edge:          ; preds = %for.cond.preheader
  br label %for.body.i

for.cond.preheader.snd_usbmidi_input_start_ep.exit_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_usbmidi_input_start_ep.exit

for.body.i:                                       ; preds = %if.end12.i.for.body.i_crit_edge, %for.cond.preheader.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %if.end12.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %5, i32 0, i32 1, i32 %i.022.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %disc_lock.i) #12
  %use_count.i = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %use_count.i, i32 noundef 4) #12
  %8 = ptrtoint ptr %use_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %use_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not.i = icmp eq i32 %9, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %for.body.i.if.end12.i_crit_edge

for.body.i.if.end12.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then8.i:                                       ; preds = %for.body.i
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev10.i = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 8
  %14 = ptrtoint ptr %dev10.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %dev10.i, align 4
  %call.i.i = tail call i32 @usb_submit_urb(ptr noundef %7, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i)
  %cmp1.not.i.i = icmp eq i32 %call.i.i, -19
  %or.cond.i.i = or i1 %cmp.i.i, %cmp1.not.i.i
  br i1 %or.cond.i.i, label %if.then8.i.if.end12.i_crit_edge, label %do.end.i.i

if.then8.i.if.end12.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

do.end.i.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev10.i, align 4
  %dev2.i.i = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.12, i32 noundef %call.i.i) #15
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end.i.i, %if.then8.i.if.end12.i_crit_edge, %for.body.i.if.end12.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %disc_lock.i, i32 noundef %call3.i) #12
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 7
  br i1 %exitcond.not.i, label %if.end12.i.snd_usbmidi_input_start_ep.exit_crit_edge, label %if.end12.i.for.body.i_crit_edge

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end12.i.snd_usbmidi_input_start_ep.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_usbmidi_input_start_ep.exit

snd_usbmidi_input_start_ep.exit:                  ; preds = %if.end12.i.snd_usbmidi_input_start_ep.exit_crit_edge, %for.cond.preheader.snd_usbmidi_input_start_ep.exit_crit_edge
  %in.1 = getelementptr i8, ptr %p, i32 308
  %17 = ptrtoint ptr %in.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in.1, align 4
  %tobool.not.i.1 = icmp eq ptr %18, null
  br i1 %tobool.not.i.1, label %snd_usbmidi_input_start_ep.exit.snd_usbmidi_input_start_ep.exit.1_crit_edge, label %snd_usbmidi_input_start_ep.exit.for.body.i.1_crit_edge

snd_usbmidi_input_start_ep.exit.for.body.i.1_crit_edge: ; preds = %snd_usbmidi_input_start_ep.exit
  br label %for.body.i.1

snd_usbmidi_input_start_ep.exit.snd_usbmidi_input_start_ep.exit.1_crit_edge: ; preds = %snd_usbmidi_input_start_ep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_usbmidi_input_start_ep.exit.1

for.body.i.1:                                     ; preds = %if.end12.i.1.for.body.i.1_crit_edge, %snd_usbmidi_input_start_ep.exit.for.body.i.1_crit_edge
  %i.022.i.1 = phi i32 [ %inc.i.1, %if.end12.i.1.for.body.i.1_crit_edge ], [ 0, %snd_usbmidi_input_start_ep.exit.for.body.i.1_crit_edge ]
  %arrayidx.i.1 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %18, i32 0, i32 1, i32 %i.022.i.1
  %19 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.1, align 4
  %call3.i.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %disc_lock.i) #12
  %use_count.i.1 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 3
  %call.i.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %use_count.i.1, i32 noundef 4) #12
  %21 = ptrtoint ptr %use_count.i.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %use_count.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool7.not.i.1 = icmp eq i32 %22, 0
  br i1 %tobool7.not.i.1, label %if.then8.i.1, label %for.body.i.1.if.end12.i.1_crit_edge

for.body.i.1.if.end12.i.1_crit_edge:              ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.1

if.then8.i.1:                                     ; preds = %for.body.i.1
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %18, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %dev10.i.1 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 8
  %27 = ptrtoint ptr %dev10.i.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %dev10.i.1, align 4
  %call.i.i.1 = tail call i32 @usb_submit_urb(ptr noundef %20, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.1)
  %cmp.i.i.1 = icmp sgt i32 %call.i.i.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i.1)
  %cmp1.not.i.i.1 = icmp eq i32 %call.i.i.1, -19
  %or.cond.i.i.1 = or i1 %cmp.i.i.1, %cmp1.not.i.i.1
  br i1 %or.cond.i.i.1, label %if.then8.i.1.if.end12.i.1_crit_edge, label %do.end.i.i.1

if.then8.i.1.if.end12.i.1_crit_edge:              ; preds = %if.then8.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.1

do.end.i.i.1:                                     ; preds = %if.then8.i.1
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %dev10.i.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev10.i.1, align 4
  %dev2.i.i.1 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i.1, ptr noundef nonnull @.str.12, i32 noundef %call.i.i.1) #15
  br label %if.end12.i.1

if.end12.i.1:                                     ; preds = %do.end.i.i.1, %if.then8.i.1.if.end12.i.1_crit_edge, %for.body.i.1.if.end12.i.1_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %disc_lock.i, i32 noundef %call3.i.1) #12
  %inc.i.1 = add nuw nsw i32 %i.022.i.1, 1
  %exitcond.not.i.1 = icmp eq i32 %inc.i.1, 7
  br i1 %exitcond.not.i.1, label %if.end12.i.1.snd_usbmidi_input_start_ep.exit.1_crit_edge, label %if.end12.i.1.for.body.i.1_crit_edge

if.end12.i.1.for.body.i.1_crit_edge:              ; preds = %if.end12.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.1

if.end12.i.1.snd_usbmidi_input_start_ep.exit.1_crit_edge: ; preds = %if.end12.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_usbmidi_input_start_ep.exit.1

snd_usbmidi_input_start_ep.exit.1:                ; preds = %if.end12.i.1.snd_usbmidi_input_start_ep.exit.1_crit_edge, %snd_usbmidi_input_start_ep.exit.snd_usbmidi_input_start_ep.exit.1_crit_edge
  %30 = ptrtoint ptr %input_running to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %input_running, align 1
  br label %cleanup

cleanup:                                          ; preds = %snd_usbmidi_input_start_ep.exit.1, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usbmidi_suspend(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %p, i32 196
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  tail call void @snd_usbmidi_input_stop(ptr noundef %p)
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usbmidi_resume(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %p, i32 196
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  tail call void @snd_usbmidi_input_start(ptr noundef %p)
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__snd_usbmidi_create(ptr noundef %card, ptr noundef %iface, ptr noundef %midi_list, ptr noundef %quirk, i32 noundef %usb_id) #0 align 64 {
entry:
  %rmidi.i = alloca ptr, align 4
  %endpoints = alloca [2 x %struct.snd_usb_midi_endpoint_info], align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %endpoints) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 356) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 -128
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %card2 = getelementptr inbounds %struct.snd_usb_midi, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %card2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %card, ptr %card2, align 4
  %iface3 = getelementptr inbounds %struct.snd_usb_midi, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %iface3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %iface, ptr %iface3, align 8
  %quirk4 = getelementptr inbounds %struct.snd_usb_midi, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %quirk4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %quirk, ptr %quirk4, align 4
  %usb_protocol_ops = getelementptr inbounds %struct.snd_usb_midi, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %usb_protocol_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @snd_usbmidi_standard_ops, ptr %usb_protocol_ops, align 4
  %disc_lock = getelementptr inbounds %struct.snd_usb_midi, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %disc_lock, ptr noundef nonnull @.str, ptr noundef nonnull @__snd_usbmidi_create.__key, i16 noundef signext 3) #12
  %disc_rwsem = getelementptr inbounds %struct.snd_usb_midi, ptr %call7.i.i, i32 0, i32 9
  tail call void @__init_rwsem(ptr noundef %disc_rwsem, ptr noundef nonnull @.str.2, ptr noundef nonnull @__snd_usbmidi_create.__key.1) #12
  %mutex = getelementptr inbounds %struct.snd_usb_midi, ptr %call7.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @__snd_usbmidi_create.__key.3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %usb_id)
  %tobool12.not = icmp eq i32 %usb_id, 0
  br i1 %tobool12.not, label %if.then13, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call7.i.i, align 8
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 16, i32 7
  %10 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %idVendor, align 8
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 16, i32 8
  %12 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %idProduct, align 2
  %14 = zext i16 %11 to i32
  %15 = zext i16 %13 to i32
  %16 = shl nuw i32 %15, 16
  %17 = or i32 %16, %14
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end.if.end18_crit_edge
  %usb_id.addr.0 = phi i32 [ %usb_id, %if.end.if.end18_crit_edge ], [ %18, %if.then13 ]
  %usb_id19 = getelementptr inbounds %struct.snd_usb_midi, ptr %call7.i.i, i32 0, i32 11
  %19 = ptrtoint ptr %usb_id19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %usb_id.addr.0, ptr %usb_id19, align 8
  %error_timer = getelementptr inbounds %struct.snd_usb_midi, ptr %call7.i.i, i32 0, i32 7
  tail call void @init_timer_key(ptr noundef %error_timer, ptr noundef nonnull @snd_usbmidi_error_timer, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @__snd_usbmidi_create.__key.5) #12
  %20 = call ptr @memset(ptr %endpoints, i32 0, i32 144)
  %tobool23.not = icmp eq ptr %quirk, null
  br i1 %tobool23.not, label %if.end18.sw.bb_crit_edge, label %cond.end

if.end18.sw.bb_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

cond.end:                                         ; preds = %if.end18
  %type = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %quirk, i32 0, i32 3
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %type, align 2
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i16 %22, label %do.end96 [
    i16 3, label %cond.end.sw.bb_crit_edge
    i16 13, label %sw.bb32
    i16 4, label %cond.end.sw.bb34_crit_edge
    i16 5, label %sw.bb37
    i16 6, label %sw.bb40
    i16 7, label %sw.epilog.thread
    i16 8, label %sw.bb47
    i16 9, label %sw.bb51
    i16 10, label %sw.bb62
    i16 11, label %sw.bb68
    i16 12, label %sw.bb72
    i16 14, label %sw.bb77
    i16 15, label %sw.bb90
  ]

cond.end.sw.bb34_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb34

cond.end.sw.bb_crit_edge:                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %cond.end.sw.bb_crit_edge, %if.end18.sw.bb_crit_edge
  %call26 = call fastcc i32 @snd_usbmidi_get_ms_info(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %endpoints)
  %24 = ptrtoint ptr %usb_id19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %usb_id19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 123928912, i32 %25)
  %cmp = icmp eq i32 %25, 123928912
  br i1 %cmp, label %if.then29, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then29:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %usb_protocol_ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @snd_usbmidi_maudio_broken_running_status_ops, ptr %usb_protocol_ops, align 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %usb_protocol_ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @snd_usbmidi_122l_ops, ptr %usb_protocol_ops, align 4
  br label %sw.bb34

sw.bb34:                                          ; preds = %sw.bb32, %cond.end.sw.bb34_crit_edge
  %data = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %quirk, i32 0, i32 4
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %30 = call ptr @memcpy(ptr %endpoints, ptr %29, i32 72)
  %call36 = call fastcc i32 @snd_usbmidi_detect_endpoints(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %endpoints, i32 noundef 1)
  br label %sw.epilog

sw.bb37:                                          ; preds = %cond.end
  %31 = ptrtoint ptr %iface3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iface3, align 8
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %sw.bb37.free_midi_crit_edge, label %if.end.i

sw.bb37.free_midi_crit_edge:                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_midi

if.end.i:                                         ; preds = %sw.bb37
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bNumEndpoints.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp.i = icmp eq i8 %36, 0
  br i1 %cmp.i, label %if.end.i.free_midi_crit_edge, label %if.end3.i

if.end.i.free_midi_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_midi

if.end3.i:                                        ; preds = %if.end.i
  %extra.i = getelementptr inbounds %struct.usb_host_interface, ptr %34, i32 0, i32 2
  %37 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %extra.i, align 4
  %extralen.i = getelementptr inbounds %struct.usb_host_interface, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %extralen.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %extralen.i, align 4
  %add.ptr65.i = getelementptr i8, ptr %38, i32 %40
  %cmp566.i = icmp ult ptr %38, %add.ptr65.i
  br i1 %cmp566.i, label %land.rhs.lr.ph.i, label %if.end3.i.for.end.i_crit_edge

if.end3.i.for.end.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

land.rhs.lr.ph.i:                                 ; preds = %if.end3.i
  %out_cables.i = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 4
  %in_cables.i = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 5
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %cs_desc.067.i = phi ptr [ %38, %land.rhs.lr.ph.i ], [ %add.ptr38.i, %for.inc.i.land.rhs.i_crit_edge ]
  %41 = ptrtoint ptr %cs_desc.067.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %cs_desc.067.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp8.i = icmp ugt i8 %42, 1
  br i1 %cmp8.i, label %for.body.i, label %land.rhs.i.for.end.i_crit_edge

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %land.rhs.i
  %arrayidx10.i = getelementptr i8, ptr %cs_desc.067.i, i32 1
  %43 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %44)
  %cmp12.i = icmp eq i8 %44, 36
  br i1 %cmp12.i, label %if.then14.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then14.i:                                      ; preds = %for.body.i
  %arrayidx15.i = getelementptr i8, ptr %cs_desc.067.i, i32 2
  %45 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx15.i, align 1
  %47 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %46, label %if.then14.i.for.inc.i_crit_edge [
    i8 2, label %if.then14.i.for.inc.sink.split.i_crit_edge
    i8 3, label %if.then27.i
  ]

if.then14.i.for.inc.sink.split.i_crit_edge:       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split.i

if.then14.i.for.inc.i_crit_edge:                  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then27.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.then27.i, %if.then14.i.for.inc.sink.split.i_crit_edge
  %out_cables.sink69.i = phi ptr [ %out_cables.i, %if.then27.i ], [ %in_cables.i, %if.then14.i.for.inc.sink.split.i_crit_edge ]
  %48 = ptrtoint ptr %out_cables.sink69.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %out_cables.sink69.i, align 2
  %shl29.i = shl i16 %49, 1
  %or30.i = or i16 %shl29.i, 1
  store i16 %or30.i, ptr %out_cables.sink69.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.then14.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %50 = ptrtoint ptr %cs_desc.067.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %cs_desc.067.i, align 1
  %conv37.i = zext i8 %51 to i32
  %add.ptr38.i = getelementptr i8, ptr %cs_desc.067.i, i32 %conv37.i
  %52 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %extra.i, align 4
  %54 = ptrtoint ptr %extralen.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %extralen.i, align 4
  %add.ptr.i622 = getelementptr i8, ptr %53, i32 %55
  %cmp5.i = icmp ult ptr %add.ptr38.i, %add.ptr.i622
  br i1 %cmp5.i, label %for.inc.i.land.rhs.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %land.rhs.i.for.end.i_crit_edge, %if.end3.i.for.end.i_crit_edge
  %in_cables39.i = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 5
  %56 = ptrtoint ptr %in_cables39.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %in_cables39.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool40.not.i = icmp eq i16 %57, 0
  br i1 %tobool40.not.i, label %land.lhs.true.i, label %for.end.i.if.end44.i_crit_edge

for.end.i.if.end44.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %out_cables41.i = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 4
  %58 = ptrtoint ptr %out_cables41.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %out_cables41.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool42.not.i = icmp eq i16 %59, 0
  br i1 %tobool42.not.i, label %land.lhs.true.i.free_midi_crit_edge, label %land.lhs.true.i.if.end44.i_crit_edge

land.lhs.true.i.if.end44.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i

land.lhs.true.i.free_midi_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_midi

if.end44.i:                                       ; preds = %land.lhs.true.i.if.end44.i_crit_edge, %for.end.i.if.end44.i_crit_edge
  %call.i = call fastcc i32 @snd_usbmidi_detect_endpoints(ptr noundef %call7.i.i, ptr noundef nonnull %endpoints, i32 noundef 1) #12
  br label %sw.epilog

sw.bb40:                                          ; preds = %cond.end
  %60 = ptrtoint ptr %iface3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %iface3, align 8
  %tobool.not.i624 = icmp eq ptr %61, null
  br i1 %tobool.not.i624, label %sw.bb40.free_midi_crit_edge, label %if.end.i628

sw.bb40.free_midi_crit_edge:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_midi

if.end.i628:                                      ; preds = %sw.bb40
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %extra.i625 = getelementptr inbounds %struct.usb_host_interface, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %extra.i625 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %extra.i625, align 4
  %extralen.i626 = getelementptr inbounds %struct.usb_host_interface, ptr %63, i32 0, i32 1
  %66 = ptrtoint ptr %extralen.i626 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %extralen.i626, align 4
  %add.ptr.i627 = getelementptr i8, ptr %65, i32 %67
  %cmp88.i = icmp ult ptr %65, %add.ptr.i627
  br i1 %cmp88.i, label %if.end.i628.land.rhs.i629_crit_edge, label %if.end.i628.free_midi_crit_edge

if.end.i628.free_midi_crit_edge:                  ; preds = %if.end.i628
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_midi

if.end.i628.land.rhs.i629_crit_edge:              ; preds = %if.end.i628
  br label %land.rhs.i629

land.rhs.i629:                                    ; preds = %for.inc.i637.land.rhs.i629_crit_edge, %if.end.i628.land.rhs.i629_crit_edge
  %cs_desc.089.i = phi ptr [ %add.ptr61.i, %for.inc.i637.land.rhs.i629_crit_edge ], [ %65, %if.end.i628.land.rhs.i629_crit_edge ]
  %68 = ptrtoint ptr %cs_desc.089.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %cs_desc.089.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %69)
  %cmp2.i = icmp ugt i8 %69, 1
  br i1 %cmp2.i, label %for.body.i630, label %land.rhs.i629.free_midi_crit_edge

land.rhs.i629.free_midi_crit_edge:                ; preds = %land.rhs.i629
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_midi

for.body.i630:                                    ; preds = %land.rhs.i629
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %69)
  %cmp6.i = icmp ugt i8 %69, 5
  br i1 %cmp6.i, label %land.lhs.true.i631, label %for.body.i630.for.inc.i637_crit_edge

for.body.i630.for.inc.i637_crit_edge:             ; preds = %for.body.i630
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i637

land.lhs.true.i631:                               ; preds = %for.body.i630
  %arrayidx8.i = getelementptr i8, ptr %cs_desc.089.i, i32 1
  %70 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %71)
  %cmp10.i = icmp eq i8 %71, 36
  br i1 %cmp10.i, label %land.lhs.true12.i, label %land.lhs.true.i631.for.inc.i637_crit_edge

land.lhs.true.i631.for.inc.i637_crit_edge:        ; preds = %land.lhs.true.i631
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i637

land.lhs.true12.i:                                ; preds = %land.lhs.true.i631
  %arrayidx13.i = getelementptr i8, ptr %cs_desc.089.i, i32 2
  %72 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %73)
  %cmp15.i = icmp eq i8 %73, -15
  br i1 %cmp15.i, label %land.lhs.true17.i, label %land.lhs.true12.i.if.else.i_crit_edge

land.lhs.true12.i.if.else.i_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true17.i:                                ; preds = %land.lhs.true12.i
  %arrayidx18.i = getelementptr i8, ptr %cs_desc.089.i, i32 3
  %74 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx18.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %75)
  %cmp20.i = icmp eq i8 %75, 2
  br i1 %cmp20.i, label %if.then22.i, label %land.lhs.true17.i.if.else.i_crit_edge

land.lhs.true17.i.if.else.i_crit_edge:            ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then22.i:                                      ; preds = %land.lhs.true17.i
  %arrayidx23.i = getelementptr i8, ptr %cs_desc.089.i, i32 4
  %76 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx23.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %77)
  %cmp25.i = icmp ugt i8 %77, 16
  br i1 %cmp25.i, label %if.then22.i.for.inc.i637_crit_edge, label %lor.lhs.false.i

if.then22.i.for.inc.i637_crit_edge:               ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i637

lor.lhs.false.i:                                  ; preds = %if.then22.i
  %arrayidx27.i = getelementptr i8, ptr %cs_desc.089.i, i32 5
  %78 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx27.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %79)
  %cmp29.i = icmp ugt i8 %79, 16
  br i1 %cmp29.i, label %lor.lhs.false.i.for.inc.i637_crit_edge, label %if.end32.i

lor.lhs.false.i.for.inc.i637_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i637

if.end32.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx27.i.le = getelementptr i8, ptr %cs_desc.089.i, i32 5
  %conv24.le.i = zext i8 %77 to i32
  %notmask.i = shl nsw i32 -1, %conv24.le.i
  %80 = trunc i32 %notmask.i to i16
  %conv35.i = xor i16 %80, -1
  %in_cables.i632 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 5
  %81 = ptrtoint ptr %in_cables.i632 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv35.i, ptr %in_cables.i632, align 2
  %82 = ptrtoint ptr %arrayidx27.i.le to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx27.i.le, align 1
  %conv37.i633 = zext i8 %83 to i32
  %notmask86.i = shl nsw i32 -1, %conv37.i633
  %84 = trunc i32 %notmask86.i to i16
  %conv40.i = xor i16 %84, -1
  %out_cables.i634 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 4
  %85 = ptrtoint ptr %out_cables.i634 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv40.i, ptr %out_cables.i634, align 2
  %call.i635 = call fastcc i32 @snd_usbmidi_detect_endpoints(ptr noundef %call7.i.i, ptr noundef nonnull %endpoints, i32 noundef 1) #12
  br label %sw.epilog

if.else.i:                                        ; preds = %land.lhs.true17.i.if.else.i_crit_edge, %land.lhs.true12.i.if.else.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %69)
  %cmp43.i = icmp ugt i8 %69, 6
  br i1 %cmp43.i, label %land.lhs.true50.i.critedge, label %if.else.i.for.inc.i637_crit_edge

if.else.i.for.inc.i637_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i637

land.lhs.true50.i.critedge:                       ; preds = %if.else.i
  %86 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %87)
  %cmp53.i = icmp eq i8 %87, 1
  br i1 %cmp53.i, label %if.then55.i, label %land.lhs.true50.i.critedge.for.inc.i637_crit_edge

land.lhs.true50.i.critedge.for.inc.i637_crit_edge: ; preds = %land.lhs.true50.i.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i637

if.then55.i:                                      ; preds = %land.lhs.true50.i.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %call56.i = call fastcc i32 @snd_usbmidi_get_ms_info(ptr noundef %call7.i.i, ptr noundef nonnull %endpoints) #12
  br label %sw.epilog

for.inc.i637:                                     ; preds = %land.lhs.true50.i.critedge.for.inc.i637_crit_edge, %if.else.i.for.inc.i637_crit_edge, %lor.lhs.false.i.for.inc.i637_crit_edge, %if.then22.i.for.inc.i637_crit_edge, %land.lhs.true.i631.for.inc.i637_crit_edge, %for.body.i630.for.inc.i637_crit_edge
  %conv60.i = zext i8 %69 to i32
  %add.ptr61.i = getelementptr i8, ptr %cs_desc.089.i, i32 %conv60.i
  %cmp.i636 = icmp ult ptr %add.ptr61.i, %add.ptr.i627
  br i1 %cmp.i636, label %for.inc.i637.land.rhs.i629_crit_edge, label %for.inc.i637.free_midi_crit_edge

for.inc.i637.free_midi_crit_edge:                 ; preds = %for.inc.i637
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_midi

for.inc.i637.land.rhs.i629_crit_edge:             ; preds = %for.inc.i637
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i629

sw.epilog.thread:                                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %usb_protocol_ops to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @snd_usbmidi_midiman_ops, ptr %usb_protocol_ops, align 4
  %data46 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %quirk, i32 0, i32 4
  %89 = ptrtoint ptr %data46 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data46, align 4
  %91 = call ptr @memcpy(ptr %endpoints, ptr %90, i32 72)
  br label %cond.false279

sw.bb47:                                          ; preds = %cond.end
  %92 = ptrtoint ptr %usb_protocol_ops to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @snd_usbmidi_novation_ops, ptr %usb_protocol_ops, align 4
  %call.i639 = call fastcc i32 @snd_usbmidi_detect_endpoints(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %endpoints, i32 noundef 2) #12
  %93 = ptrtoint ptr %endpoints to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %endpoints, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i640 = icmp eq i8 %94, 0
  br i1 %tobool.not.i640, label %sw.bb47.if.end.i642_crit_edge, label %if.then.i

sw.bb47.if.end.i642_crit_edge:                    ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i642

if.then.i:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #14
  %out_cables.i641 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 4
  %95 = ptrtoint ptr %out_cables.i641 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 1, ptr %out_cables.i641, align 2
  br label %if.end.i642

if.end.i642:                                      ; preds = %if.then.i, %sw.bb47.if.end.i642_crit_edge
  %in_ep.i = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 2
  %96 = ptrtoint ptr %in_ep.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %in_ep.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool3.not.i = icmp eq i8 %97, 0
  br i1 %tobool3.not.i, label %if.end.i642.for.inc.i644_crit_edge, label %if.then4.i

if.end.i642.for.inc.i644_crit_edge:               ; preds = %if.end.i642
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i644

if.then4.i:                                       ; preds = %if.end.i642
  call void @__sanitizer_cov_trace_pc() #14
  %in_cables.i643 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 5
  %98 = ptrtoint ptr %in_cables.i643 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 1, ptr %in_cables.i643, align 2
  br label %for.inc.i644

for.inc.i644:                                     ; preds = %if.then4.i, %if.end.i642.for.inc.i644_crit_edge
  %arrayidx.1.i = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1
  %99 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.1.i = icmp eq i8 %100, 0
  br i1 %tobool.not.1.i, label %for.inc.i644.if.end.1.i_crit_edge, label %if.then.1.i

for.inc.i644.if.end.1.i_crit_edge:                ; preds = %for.inc.i644
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %for.inc.i644
  call void @__sanitizer_cov_trace_pc() #14
  %out_cables.1.i = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1, i32 4
  %101 = ptrtoint ptr %out_cables.1.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 1, ptr %out_cables.1.i, align 2
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %for.inc.i644.if.end.1.i_crit_edge
  %in_ep.1.i = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1, i32 2
  %102 = ptrtoint ptr %in_ep.1.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %in_ep.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool3.not.1.i = icmp eq i8 %103, 0
  br i1 %tobool3.not.1.i, label %if.end.1.i.sw.epilog_crit_edge, label %if.then4.1.i

if.end.1.i.sw.epilog_crit_edge:                   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then4.1.i:                                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %in_cables.1.i = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1, i32 5
  %104 = ptrtoint ptr %in_cables.1.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 1, ptr %in_cables.1.i, align 2
  br label %sw.epilog

sw.bb51:                                          ; preds = %cond.end
  %105 = ptrtoint ptr %usb_protocol_ops to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @snd_usbmidi_raw_ops, ptr %usb_protocol_ops, align 4
  %106 = ptrtoint ptr %usb_id19 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %usb_id19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 134021121, i32 %107)
  %cmp54 = icmp eq i32 %107, 134021121
  br i1 %cmp54, label %if.then56, label %sw.bb51.if.end59_crit_edge

sw.bb51.if.end59_crit_edge:                       ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then56:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #14
  %108 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %call7.i.i, align 8
  %call58 = tail call i32 @usb_set_interface(ptr noundef %109, i32 noundef 0, i32 noundef 0) #12
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %sw.bb51.if.end59_crit_edge
  %call.i645 = call fastcc i32 @snd_usbmidi_detect_endpoints(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %endpoints, i32 noundef 2) #12
  %110 = ptrtoint ptr %endpoints to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %endpoints, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.not.i646 = icmp eq i8 %111, 0
  br i1 %tobool.not.i646, label %if.end59.if.end.i651_crit_edge, label %if.then.i648

if.end59.if.end.i651_crit_edge:                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i651

if.then.i648:                                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  %out_cables.i647 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 4
  %112 = ptrtoint ptr %out_cables.i647 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 1, ptr %out_cables.i647, align 2
  br label %if.end.i651

if.end.i651:                                      ; preds = %if.then.i648, %if.end59.if.end.i651_crit_edge
  %in_ep.i649 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 2
  %113 = ptrtoint ptr %in_ep.i649 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %in_ep.i649, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool3.not.i650 = icmp eq i8 %114, 0
  br i1 %tobool3.not.i650, label %if.end.i651.for.inc.i656_crit_edge, label %if.then4.i653

if.end.i651.for.inc.i656_crit_edge:               ; preds = %if.end.i651
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i656

if.then4.i653:                                    ; preds = %if.end.i651
  call void @__sanitizer_cov_trace_pc() #14
  %in_cables.i652 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 5
  %115 = ptrtoint ptr %in_cables.i652 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 1, ptr %in_cables.i652, align 2
  br label %for.inc.i656

for.inc.i656:                                     ; preds = %if.then4.i653, %if.end.i651.for.inc.i656_crit_edge
  %arrayidx.1.i654 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1
  %116 = ptrtoint ptr %arrayidx.1.i654 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.1.i654, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.1.i655 = icmp eq i8 %117, 0
  br i1 %tobool.not.1.i655, label %for.inc.i656.if.end.1.i661_crit_edge, label %if.then.1.i658

for.inc.i656.if.end.1.i661_crit_edge:             ; preds = %for.inc.i656
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.1.i661

if.then.1.i658:                                   ; preds = %for.inc.i656
  call void @__sanitizer_cov_trace_pc() #14
  %out_cables.1.i657 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1, i32 4
  %118 = ptrtoint ptr %out_cables.1.i657 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 1, ptr %out_cables.1.i657, align 2
  br label %if.end.1.i661

if.end.1.i661:                                    ; preds = %if.then.1.i658, %for.inc.i656.if.end.1.i661_crit_edge
  %in_ep.1.i659 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1, i32 2
  %119 = ptrtoint ptr %in_ep.1.i659 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %in_ep.1.i659, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool3.not.1.i660 = icmp eq i8 %120, 0
  br i1 %tobool3.not.1.i660, label %if.end.1.i661.sw.epilog_crit_edge, label %if.then4.1.i663

if.end.1.i661.sw.epilog_crit_edge:                ; preds = %if.end.1.i661
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then4.1.i663:                                  ; preds = %if.end.1.i661
  call void @__sanitizer_cov_trace_pc() #14
  %in_cables.1.i662 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1, i32 5
  %121 = ptrtoint ptr %in_cables.1.i662 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 1, ptr %in_cables.1.i662, align 2
  br label %sw.epilog

sw.bb62:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %122 = ptrtoint ptr %usb_protocol_ops to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @snd_usbmidi_emagic_ops, ptr %usb_protocol_ops, align 4
  %data65 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %quirk, i32 0, i32 4
  %123 = ptrtoint ptr %data65 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %data65, align 4
  %125 = call ptr @memcpy(ptr %endpoints, ptr %124, i32 72)
  %call67 = call fastcc i32 @snd_usbmidi_detect_endpoints(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %endpoints, i32 noundef 1)
  br label %sw.epilog

sw.bb68:                                          ; preds = %cond.end
  %126 = ptrtoint ptr %usb_protocol_ops to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @snd_usbmidi_cme_ops, ptr %usb_protocol_ops, align 4
  %call.i665 = call fastcc i32 @snd_usbmidi_detect_endpoints(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %endpoints, i32 noundef 2) #12
  %127 = ptrtoint ptr %endpoints to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %endpoints, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool.not.i666 = icmp eq i8 %128, 0
  br i1 %tobool.not.i666, label %sw.bb68.if.end.i671_crit_edge, label %if.then.i668

sw.bb68.if.end.i671_crit_edge:                    ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i671

if.then.i668:                                     ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #14
  %out_cables.i667 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 4
  %129 = ptrtoint ptr %out_cables.i667 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 1, ptr %out_cables.i667, align 2
  br label %if.end.i671

if.end.i671:                                      ; preds = %if.then.i668, %sw.bb68.if.end.i671_crit_edge
  %in_ep.i669 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 2
  %130 = ptrtoint ptr %in_ep.i669 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %in_ep.i669, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool3.not.i670 = icmp eq i8 %131, 0
  br i1 %tobool3.not.i670, label %if.end.i671.for.inc.i676_crit_edge, label %if.then4.i673

if.end.i671.for.inc.i676_crit_edge:               ; preds = %if.end.i671
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i676

if.then4.i673:                                    ; preds = %if.end.i671
  call void @__sanitizer_cov_trace_pc() #14
  %in_cables.i672 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 5
  %132 = ptrtoint ptr %in_cables.i672 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 1, ptr %in_cables.i672, align 2
  br label %for.inc.i676

for.inc.i676:                                     ; preds = %if.then4.i673, %if.end.i671.for.inc.i676_crit_edge
  %arrayidx.1.i674 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1
  %133 = ptrtoint ptr %arrayidx.1.i674 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx.1.i674, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool.not.1.i675 = icmp eq i8 %134, 0
  br i1 %tobool.not.1.i675, label %for.inc.i676.if.end.1.i681_crit_edge, label %if.then.1.i678

for.inc.i676.if.end.1.i681_crit_edge:             ; preds = %for.inc.i676
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.1.i681

if.then.1.i678:                                   ; preds = %for.inc.i676
  call void @__sanitizer_cov_trace_pc() #14
  %out_cables.1.i677 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1, i32 4
  %135 = ptrtoint ptr %out_cables.1.i677 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 1, ptr %out_cables.1.i677, align 2
  br label %if.end.1.i681

if.end.1.i681:                                    ; preds = %if.then.1.i678, %for.inc.i676.if.end.1.i681_crit_edge
  %in_ep.1.i679 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1, i32 2
  %136 = ptrtoint ptr %in_ep.1.i679 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %in_ep.1.i679, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool3.not.1.i680 = icmp eq i8 %137, 0
  br i1 %tobool3.not.1.i680, label %if.end.1.i681.sw.epilog_crit_edge, label %if.then4.1.i683

if.end.1.i681.sw.epilog_crit_edge:                ; preds = %if.end.1.i681
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then4.1.i683:                                  ; preds = %if.end.1.i681
  call void @__sanitizer_cov_trace_pc() #14
  %in_cables.1.i682 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1, i32 5
  %138 = ptrtoint ptr %in_cables.1.i682 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 1, ptr %in_cables.1.i682, align 2
  br label %sw.epilog

sw.bb72:                                          ; preds = %cond.end
  %139 = ptrtoint ptr %usb_protocol_ops to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @snd_usbmidi_akai_ops, ptr %usb_protocol_ops, align 4
  %call.i685 = call fastcc i32 @snd_usbmidi_detect_endpoints(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %endpoints, i32 noundef 2) #12
  %140 = ptrtoint ptr %endpoints to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %endpoints, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool.not.i686 = icmp eq i8 %141, 0
  br i1 %tobool.not.i686, label %sw.bb72.if.end.i691_crit_edge, label %if.then.i688

sw.bb72.if.end.i691_crit_edge:                    ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i691

if.then.i688:                                     ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #14
  %out_cables.i687 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 4
  %142 = ptrtoint ptr %out_cables.i687 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 1, ptr %out_cables.i687, align 2
  br label %if.end.i691

if.end.i691:                                      ; preds = %if.then.i688, %sw.bb72.if.end.i691_crit_edge
  %in_ep.i689 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 2
  %143 = ptrtoint ptr %in_ep.i689 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %in_ep.i689, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool3.not.i690 = icmp eq i8 %144, 0
  br i1 %tobool3.not.i690, label %if.end.i691.for.inc.i696_crit_edge, label %if.then4.i693

if.end.i691.for.inc.i696_crit_edge:               ; preds = %if.end.i691
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i696

if.then4.i693:                                    ; preds = %if.end.i691
  call void @__sanitizer_cov_trace_pc() #14
  %in_cables.i692 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 5
  %145 = ptrtoint ptr %in_cables.i692 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 1, ptr %in_cables.i692, align 2
  br label %for.inc.i696

for.inc.i696:                                     ; preds = %if.then4.i693, %if.end.i691.for.inc.i696_crit_edge
  %in_ep.1.i699 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1, i32 2
  %146 = ptrtoint ptr %in_ep.1.i699 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %in_ep.1.i699, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool3.not.1.i700 = icmp eq i8 %147, 0
  br i1 %tobool3.not.1.i700, label %for.inc.i696.snd_usbmidi_detect_per_port_endpoints.exit704_crit_edge, label %if.then4.1.i703

for.inc.i696.snd_usbmidi_detect_per_port_endpoints.exit704_crit_edge: ; preds = %for.inc.i696
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_usbmidi_detect_per_port_endpoints.exit704

if.then4.1.i703:                                  ; preds = %for.inc.i696
  call void @__sanitizer_cov_trace_pc() #14
  %in_cables.1.i702 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1, i32 5
  %148 = ptrtoint ptr %in_cables.1.i702 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 1, ptr %in_cables.1.i702, align 2
  br label %snd_usbmidi_detect_per_port_endpoints.exit704

snd_usbmidi_detect_per_port_endpoints.exit704:    ; preds = %if.then4.1.i703, %for.inc.i696.snd_usbmidi_detect_per_port_endpoints.exit704_crit_edge
  %out_cables = getelementptr inbounds [2 x %struct.snd_usb_midi_endpoint_info], ptr %endpoints, i32 0, i32 1, i32 4
  %149 = ptrtoint ptr %out_cables to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 0, ptr %out_cables, align 2
  br label %sw.epilog

sw.bb77:                                          ; preds = %cond.end
  %150 = ptrtoint ptr %usb_protocol_ops to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @snd_usbmidi_ftdi_ops, ptr %usb_protocol_ops, align 4
  %151 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %call7.i.i, align 8
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %152, align 8
  %shl.i = shl i32 %154, 8
  %or82 = or i32 %shl.i, -2147483648
  %call83 = tail call i32 @usb_control_msg(ptr noundef %152, i32 noundef %or82, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 96, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %sw.bb77.free_midi_crit_edge, label %if.end87

sw.bb77.free_midi_crit_edge:                      ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_midi

if.end87:                                         ; preds = %sw.bb77
  %call.i705 = call fastcc i32 @snd_usbmidi_detect_endpoints(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %endpoints, i32 noundef 2) #12
  %155 = ptrtoint ptr %endpoints to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %endpoints, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool.not.i706 = icmp eq i8 %156, 0
  br i1 %tobool.not.i706, label %if.end87.if.end.i711_crit_edge, label %if.then.i708

if.end87.if.end.i711_crit_edge:                   ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i711

if.then.i708:                                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  %out_cables.i707 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 4
  %157 = ptrtoint ptr %out_cables.i707 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 1, ptr %out_cables.i707, align 2
  br label %if.end.i711

if.end.i711:                                      ; preds = %if.then.i708, %if.end87.if.end.i711_crit_edge
  %in_ep.i709 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 2
  %158 = ptrtoint ptr %in_ep.i709 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %in_ep.i709, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool3.not.i710 = icmp eq i8 %159, 0
  br i1 %tobool3.not.i710, label %if.end.i711.for.inc.i716_crit_edge, label %if.then4.i713

if.end.i711.for.inc.i716_crit_edge:               ; preds = %if.end.i711
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i716

if.then4.i713:                                    ; preds = %if.end.i711
  call void @__sanitizer_cov_trace_pc() #14
  %in_cables.i712 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 5
  %160 = ptrtoint ptr %in_cables.i712 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 1, ptr %in_cables.i712, align 2
  br label %for.inc.i716

for.inc.i716:                                     ; preds = %if.then4.i713, %if.end.i711.for.inc.i716_crit_edge
  %arrayidx.1.i714 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1
  %161 = ptrtoint ptr %arrayidx.1.i714 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx.1.i714, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool.not.1.i715 = icmp eq i8 %162, 0
  br i1 %tobool.not.1.i715, label %for.inc.i716.if.end.1.i721_crit_edge, label %if.then.1.i718

for.inc.i716.if.end.1.i721_crit_edge:             ; preds = %for.inc.i716
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.1.i721

if.then.1.i718:                                   ; preds = %for.inc.i716
  call void @__sanitizer_cov_trace_pc() #14
  %out_cables.1.i717 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1, i32 4
  %163 = ptrtoint ptr %out_cables.1.i717 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 1, ptr %out_cables.1.i717, align 2
  br label %if.end.1.i721

if.end.1.i721:                                    ; preds = %if.then.1.i718, %for.inc.i716.if.end.1.i721_crit_edge
  %in_ep.1.i719 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1, i32 2
  %164 = ptrtoint ptr %in_ep.1.i719 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %in_ep.1.i719, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool3.not.1.i720 = icmp eq i8 %165, 0
  br i1 %tobool3.not.1.i720, label %if.end.1.i721.sw.epilog_crit_edge, label %if.then4.1.i723

if.end.1.i721.sw.epilog_crit_edge:                ; preds = %if.end.1.i721
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then4.1.i723:                                  ; preds = %if.end.1.i721
  call void @__sanitizer_cov_trace_pc() #14
  %in_cables.1.i722 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1, i32 5
  %166 = ptrtoint ptr %in_cables.1.i722 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 1, ptr %in_cables.1.i722, align 2
  br label %sw.epilog

sw.bb90:                                          ; preds = %cond.end
  %167 = ptrtoint ptr %usb_protocol_ops to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr @snd_usbmidi_ch345_broken_sysex_ops, ptr %usb_protocol_ops, align 4
  %call.i725 = call fastcc i32 @snd_usbmidi_detect_endpoints(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %endpoints, i32 noundef 2) #12
  %168 = ptrtoint ptr %endpoints to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %endpoints, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool.not.i726 = icmp eq i8 %169, 0
  br i1 %tobool.not.i726, label %sw.bb90.if.end.i731_crit_edge, label %if.then.i728

sw.bb90.if.end.i731_crit_edge:                    ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i731

if.then.i728:                                     ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #14
  %out_cables.i727 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 4
  %170 = ptrtoint ptr %out_cables.i727 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 1, ptr %out_cables.i727, align 2
  br label %if.end.i731

if.end.i731:                                      ; preds = %if.then.i728, %sw.bb90.if.end.i731_crit_edge
  %in_ep.i729 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 2
  %171 = ptrtoint ptr %in_ep.i729 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %in_ep.i729, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool3.not.i730 = icmp eq i8 %172, 0
  br i1 %tobool3.not.i730, label %if.end.i731.for.inc.i736_crit_edge, label %if.then4.i733

if.end.i731.for.inc.i736_crit_edge:               ; preds = %if.end.i731
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i736

if.then4.i733:                                    ; preds = %if.end.i731
  call void @__sanitizer_cov_trace_pc() #14
  %in_cables.i732 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 5
  %173 = ptrtoint ptr %in_cables.i732 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 1, ptr %in_cables.i732, align 2
  br label %for.inc.i736

for.inc.i736:                                     ; preds = %if.then4.i733, %if.end.i731.for.inc.i736_crit_edge
  %arrayidx.1.i734 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1
  %174 = ptrtoint ptr %arrayidx.1.i734 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx.1.i734, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool.not.1.i735 = icmp eq i8 %175, 0
  br i1 %tobool.not.1.i735, label %for.inc.i736.if.end.1.i741_crit_edge, label %if.then.1.i738

for.inc.i736.if.end.1.i741_crit_edge:             ; preds = %for.inc.i736
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.1.i741

if.then.1.i738:                                   ; preds = %for.inc.i736
  call void @__sanitizer_cov_trace_pc() #14
  %out_cables.1.i737 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1, i32 4
  %176 = ptrtoint ptr %out_cables.1.i737 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 1, ptr %out_cables.1.i737, align 2
  br label %if.end.1.i741

if.end.1.i741:                                    ; preds = %if.then.1.i738, %for.inc.i736.if.end.1.i741_crit_edge
  %in_ep.1.i739 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1, i32 2
  %177 = ptrtoint ptr %in_ep.1.i739 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %in_ep.1.i739, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool3.not.1.i740 = icmp eq i8 %178, 0
  br i1 %tobool3.not.1.i740, label %if.end.1.i741.sw.epilog_crit_edge, label %if.then4.1.i743

if.end.1.i741.sw.epilog_crit_edge:                ; preds = %if.end.1.i741
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then4.1.i743:                                  ; preds = %if.end.1.i741
  call void @__sanitizer_cov_trace_pc() #14
  %in_cables.1.i742 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1, i32 5
  %179 = ptrtoint ptr %in_cables.1.i742 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 1, ptr %in_cables.1.i742, align 2
  br label %sw.epilog

do.end96:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %180 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %call7.i.i, align 8
  %dev98 = getelementptr inbounds %struct.usb_device, ptr %181, i32 0, i32 15
  %182 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %type, align 2
  %conv100 = zext i16 %183 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev98, ptr noundef nonnull @.str.7, i32 noundef %conv100) #15
  br label %free_midi

sw.epilog:                                        ; preds = %if.then4.1.i743, %if.end.1.i741.sw.epilog_crit_edge, %if.then4.1.i723, %if.end.1.i721.sw.epilog_crit_edge, %snd_usbmidi_detect_per_port_endpoints.exit704, %if.then4.1.i683, %if.end.1.i681.sw.epilog_crit_edge, %sw.bb62, %if.then4.1.i663, %if.end.1.i661.sw.epilog_crit_edge, %if.then4.1.i, %if.end.1.i.sw.epilog_crit_edge, %if.then55.i, %if.end32.i, %if.end44.i, %sw.bb34, %if.then29, %sw.bb.sw.epilog_crit_edge
  %err.0 = phi i32 [ %call.i685, %snd_usbmidi_detect_per_port_endpoints.exit704 ], [ %call67, %sw.bb62 ], [ %call36, %sw.bb34 ], [ %call26, %if.then29 ], [ %call26, %sw.bb.sw.epilog_crit_edge ], [ %call.i, %if.end44.i ], [ %call.i635, %if.end32.i ], [ %call56.i, %if.then55.i ], [ %call.i639, %if.end.1.i.sw.epilog_crit_edge ], [ %call.i639, %if.then4.1.i ], [ %call.i645, %if.end.1.i661.sw.epilog_crit_edge ], [ %call.i645, %if.then4.1.i663 ], [ %call.i665, %if.end.1.i681.sw.epilog_crit_edge ], [ %call.i665, %if.then4.1.i683 ], [ %call.i705, %if.end.1.i721.sw.epilog_crit_edge ], [ %call.i705, %if.then4.1.i723 ], [ %call.i725, %if.end.1.i741.sw.epilog_crit_edge ], [ %call.i725, %if.then4.1.i743 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp101 = icmp slt i32 %err.0, 0
  br i1 %cmp101, label %sw.epilog.free_midi_crit_edge, label %sw.epilog.cond.false279_crit_edge

sw.epilog.cond.false279_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false279

sw.epilog.free_midi_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_midi

cond.false279:                                    ; preds = %sw.epilog.cond.false279_crit_edge, %sw.epilog.thread
  %out_cables108 = getelementptr inbounds [2 x %struct.snd_usb_midi_endpoint_info], ptr %endpoints, i32 0, i32 0, i32 4
  %184 = ptrtoint ptr %out_cables108 to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %out_cables108, align 2
  %conv282 = zext i16 %185 to i32
  %call.i745 = tail call i32 @__sw_hweight16(i32 noundef %conv282) #12
  %in_cables = getelementptr inbounds [2 x %struct.snd_usb_midi_endpoint_info], ptr %endpoints, i32 0, i32 0, i32 5
  %186 = ptrtoint ptr %in_cables to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %in_cables, align 2
  %conv467 = zext i16 %187 to i32
  %call.i746 = tail call i32 @__sw_hweight16(i32 noundef %conv467) #12
  %out_cables108.1 = getelementptr inbounds [2 x %struct.snd_usb_midi_endpoint_info], ptr %endpoints, i32 0, i32 1, i32 4
  %188 = ptrtoint ptr %out_cables108.1 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %out_cables108.1, align 2
  %conv282.1 = zext i16 %189 to i32
  %call.i745.1 = tail call i32 @__sw_hweight16(i32 noundef %conv282.1) #12
  %add286.1 = add i32 %call.i745.1, %call.i745
  %in_cables.1 = getelementptr inbounds [2 x %struct.snd_usb_midi_endpoint_info], ptr %endpoints, i32 0, i32 1, i32 5
  %190 = ptrtoint ptr %in_cables.1 to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %in_cables.1, align 2
  %conv467.1 = zext i16 %191 to i32
  %call.i746.1 = tail call i32 @__sw_hweight16(i32 noundef %conv467.1) #12
  %add471.1 = add i32 %call.i746.1, %call.i746
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi.i) #12
  %192 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi.i, align 4, !annotation !230
  %193 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %card2, align 4
  %next_midi_device.i = getelementptr inbounds %struct.snd_usb_midi, ptr %call7.i.i, i32 0, i32 12
  %195 = ptrtoint ptr %next_midi_device.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %next_midi_device.i, align 4
  %inc.i = add i32 %196, 1
  store i32 %inc.i, ptr %next_midi_device.i, align 4
  %call.i747 = call i32 @snd_rawmidi_new(ptr noundef %194, ptr noundef nonnull @.str.32, i32 noundef %196, i32 noundef %add286.1, i32 noundef %add471.1, ptr noundef nonnull %rmidi.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i747)
  %cmp.i748 = icmp slt i32 %call.i747, 0
  br i1 %cmp.i748, label %snd_usbmidi_create_rawmidi.exit.thread, label %if.end476

snd_usbmidi_create_rawmidi.exit.thread:           ; preds = %cond.false279
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi.i) #12
  br label %free_midi

if.end476:                                        ; preds = %cond.false279
  %197 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %rmidi.i, align 4
  %name.i = getelementptr inbounds %struct.snd_rawmidi, ptr %198, i32 0, i32 5
  %199 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %card2, align 4
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %200, i32 0, i32 3
  %call3.i = call ptr @strcpy(ptr noundef %name.i, ptr noundef %shortname.i) #17
  %info_flags.i = getelementptr inbounds %struct.snd_rawmidi, ptr %198, i32 0, i32 3
  %201 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 7, ptr %info_flags.i, align 8
  %ops.i = getelementptr inbounds %struct.snd_rawmidi, ptr %198, i32 0, i32 7
  %202 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr @snd_usbmidi_ops, ptr %ops.i, align 8
  %private_data.i = getelementptr inbounds %struct.snd_rawmidi, ptr %198, i32 0, i32 9
  %203 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %call7.i.i, ptr %private_data.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_rawmidi, ptr %198, i32 0, i32 10
  %204 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr @snd_usbmidi_rawmidi_free, ptr %private_free.i, align 8
  call void @snd_rawmidi_set_ops(ptr noundef %198, i32 noundef 0, ptr noundef nonnull @snd_usbmidi_output_ops) #12
  %205 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %rmidi.i, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %206, i32 noundef 1, ptr noundef nonnull @snd_usbmidi_input_ops) #12
  %207 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %rmidi.i, align 4
  %rmidi4.i = getelementptr inbounds %struct.snd_usb_midi, ptr %call7.i.i, i32 0, i32 4
  %209 = ptrtoint ptr %rmidi4.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %208, ptr %rmidi4.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi.i) #12
  br i1 %tobool23.not, label %if.end476.if.else_crit_edge, label %land.lhs.true

if.end476.if.else_crit_edge:                      ; preds = %if.end476
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.end476
  %type478 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %quirk, i32 0, i32 3
  %210 = ptrtoint ptr %type478 to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %type478, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %211)
  %cmp480 = icmp eq i16 %211, 7
  br i1 %cmp480, label %if.then482, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then482:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call484 = call fastcc i32 @snd_usbmidi_create_endpoints_midiman(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %endpoints)
  br label %if.end487

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end476.if.else_crit_edge
  %call486 = call fastcc i32 @snd_usbmidi_create_endpoints(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %endpoints)
  br label %if.end487

if.end487:                                        ; preds = %if.else, %if.then482
  %err.1 = phi i32 [ %call484, %if.then482 ], [ %call486, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp488 = icmp slt i32 %err.1, 0
  br i1 %cmp488, label %if.end487.cleanup_crit_edge, label %if.end491

if.end487.cleanup_crit_edge:                      ; preds = %if.end487
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end491:                                        ; preds = %if.end487
  %212 = ptrtoint ptr %iface3 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %iface3, align 8
  call void @usb_autopm_get_interface_no_resume(ptr noundef %213) #12
  %list = getelementptr inbounds %struct.snd_usb_midi, ptr %call7.i.i, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.list_head, ptr %midi_list, i32 0, i32 1
  %214 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %215, ptr noundef %midi_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end491.cleanup_crit_edge

if.end491.cleanup_crit_edge:                      ; preds = %if.end491
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end491
  call void @__sanitizer_cov_trace_pc() #14
  %216 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %list, ptr %prev.i, align 4
  %217 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %midi_list, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.snd_usb_midi, ptr %call7.i.i, i32 0, i32 6, i32 1
  %218 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %215, ptr %prev3.i.i, align 4
  %219 = ptrtoint ptr %215 to i32
  call void @__asan_store4_noabort(i32 %219)
  store volatile ptr %list, ptr %215, align 4
  br label %cleanup

free_midi:                                        ; preds = %snd_usbmidi_create_rawmidi.exit.thread, %sw.epilog.free_midi_crit_edge, %do.end96, %sw.bb77.free_midi_crit_edge, %for.inc.i637.free_midi_crit_edge, %land.rhs.i629.free_midi_crit_edge, %if.end.i628.free_midi_crit_edge, %sw.bb40.free_midi_crit_edge, %land.lhs.true.i.free_midi_crit_edge, %if.end.i.free_midi_crit_edge, %sw.bb37.free_midi_crit_edge
  %err.2 = phi i32 [ %err.0, %sw.epilog.free_midi_crit_edge ], [ %call.i747, %snd_usbmidi_create_rawmidi.exit.thread ], [ -19, %if.end.i628.free_midi_crit_edge ], [ -2, %sw.bb40.free_midi_crit_edge ], [ -2, %land.lhs.true.i.free_midi_crit_edge ], [ -2, %if.end.i.free_midi_crit_edge ], [ -2, %sw.bb37.free_midi_crit_edge ], [ %call83, %sw.bb77.free_midi_crit_edge ], [ -6, %do.end96 ], [ -19, %land.rhs.i629.free_midi_crit_edge ], [ -19, %for.inc.i637.free_midi_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %free_midi, %if.end.i.i, %if.end491.cleanup_crit_edge, %if.end487.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %err.2, %free_midi ], [ %err.1, %if.end487.cleanup_crit_edge ], [ 0, %if.end491.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %endpoints) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_error_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -32
  %disc_lock = getelementptr i8, ptr %t, i32 48
  tail call void @_raw_spin_lock(ptr noundef %disc_lock) #12
  %disconnected = getelementptr i8, ptr %t, i32 316
  %0 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %endpoints = getelementptr i8, ptr %t, i32 288
  %in2 = getelementptr i8, ptr %t, i32 292
  %2 = ptrtoint ptr %in2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in2, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %for.cond.preheader.if.end21_crit_edge, label %land.lhs.true

for.cond.preheader.if.end21_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true:                                    ; preds = %for.cond.preheader
  %error_resubmit = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %error_resubmit to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %error_resubmit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end21_crit_edge, label %if.then5

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then5:                                         ; preds = %land.lhs.true
  %6 = ptrtoint ptr %error_resubmit to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %error_resubmit, align 1
  br label %for.body10

for.body10:                                       ; preds = %for.inc.for.body10_crit_edge, %if.then5
  %j.057 = phi i32 [ 0, %if.then5 ], [ %inc, %for.inc.for.body10_crit_edge ]
  %arrayidx11 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %3, i32 0, i32 1, i32 %j.057
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx11, align 4
  %use_count = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %use_count, i32 noundef 4) #12
  %9 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %use_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp eq i32 %10, 0
  br i1 %tobool12.not, label %if.end14, label %for.body10.for.inc_crit_edge

for.body10.for.inc_crit_edge:                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end14:                                         ; preds = %for.body10
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx11, align 4
  %dev17 = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %dev17, align 4
  %16 = load ptr, ptr %arrayidx11, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %16, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, -19
  %or.cond.i = or i1 %cmp.i, %cmp1.not.i
  br i1 %or.cond.i, label %if.end14.for.inc_crit_edge, label %do.end.i

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %dev2.i = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.12, i32 noundef %call.i) #15
  br label %for.inc

for.inc:                                          ; preds = %do.end.i, %if.end14.for.inc_crit_edge, %for.body10.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.057, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.inc.if.end21_crit_edge, label %for.inc.for.body10_crit_edge

for.inc.for.body10_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body10

for.inc.if.end21_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end21:                                         ; preds = %for.inc.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %for.cond.preheader.if.end21_crit_edge
  %19 = ptrtoint ptr %endpoints to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %endpoints, align 4
  %tobool24.not = icmp eq ptr %20, null
  br i1 %tobool24.not, label %if.end21.if.end29_crit_edge, label %if.then25

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @snd_usbmidi_do_output(ptr noundef nonnull %20)
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end21.if.end29_crit_edge
  %arrayidx.1 = getelementptr i8, ptr %t, i32 296
  %in2.1 = getelementptr i8, ptr %t, i32 300
  %21 = ptrtoint ptr %in2.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %in2.1, align 4
  %tobool3.not.1 = icmp eq ptr %22, null
  br i1 %tobool3.not.1, label %if.end29.if.end21.1_crit_edge, label %land.lhs.true.1

if.end29.if.end21.1_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.1

land.lhs.true.1:                                  ; preds = %if.end29
  %error_resubmit.1 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %error_resubmit.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %error_resubmit.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool4.not.1 = icmp eq i8 %24, 0
  br i1 %tobool4.not.1, label %land.lhs.true.1.if.end21.1_crit_edge, label %if.then5.1

land.lhs.true.1.if.end21.1_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.1

if.then5.1:                                       ; preds = %land.lhs.true.1
  %25 = ptrtoint ptr %error_resubmit.1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %error_resubmit.1, align 1
  br label %for.body10.1

for.body10.1:                                     ; preds = %for.inc.1.for.body10.1_crit_edge, %if.then5.1
  %j.057.1 = phi i32 [ 0, %if.then5.1 ], [ %inc.1, %for.inc.1.for.body10.1_crit_edge ]
  %arrayidx11.1 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %22, i32 0, i32 1, i32 %j.057.1
  %26 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx11.1, align 4
  %use_count.1 = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 3
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %use_count.1, i32 noundef 4) #12
  %28 = ptrtoint ptr %use_count.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %use_count.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool12.not.1 = icmp eq i32 %29, 0
  br i1 %tobool12.not.1, label %if.end14.1, label %for.body10.1.for.inc.1_crit_edge

for.body10.1.for.inc.1_crit_edge:                 ; preds = %for.body10.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end14.1:                                       ; preds = %for.body10.1
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %32 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx11.1, align 4
  %dev17.1 = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %dev17.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %dev17.1, align 4
  %35 = load ptr, ptr %arrayidx11.1, align 4
  %call.i.1 = tail call i32 @usb_submit_urb(ptr noundef %35, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.1)
  %cmp.i.1 = icmp sgt i32 %call.i.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.1)
  %cmp1.not.i.1 = icmp eq i32 %call.i.1, -19
  %or.cond.i.1 = or i1 %cmp.i.1, %cmp1.not.i.1
  br i1 %or.cond.i.1, label %if.end14.1.for.inc.1_crit_edge, label %do.end.i.1

if.end14.1.for.inc.1_crit_edge:                   ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

do.end.i.1:                                       ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.1 = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %dev.i.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i.1, align 4
  %dev2.i.1 = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.1, ptr noundef nonnull @.str.12, i32 noundef %call.i.1) #15
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end.i.1, %if.end14.1.for.inc.1_crit_edge, %for.body10.1.for.inc.1_crit_edge
  %inc.1 = add nuw nsw i32 %j.057.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 7
  br i1 %exitcond.1.not, label %for.inc.1.if.end21.1_crit_edge, label %for.inc.1.for.body10.1_crit_edge

for.inc.1.for.body10.1_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body10.1

for.inc.1.if.end21.1_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.1

if.end21.1:                                       ; preds = %for.inc.1.if.end21.1_crit_edge, %land.lhs.true.1.if.end21.1_crit_edge, %if.end29.if.end21.1_crit_edge
  %38 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.1, align 4
  %tobool24.not.1 = icmp eq ptr %39, null
  br i1 %tobool24.not.1, label %if.end21.1.cleanup_crit_edge, label %if.then25.1

if.end21.1.cleanup_crit_edge:                     ; preds = %if.end21.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then25.1:                                      ; preds = %if.end21.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @snd_usbmidi_do_output(ptr noundef nonnull %39)
  br label %cleanup

cleanup:                                          ; preds = %if.then25.1, %if.end21.1.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %disc_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_usbmidi_get_ms_info(ptr nocapture noundef readonly %umidi, ptr nocapture noundef %endpoints) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iface = getelementptr inbounds %struct.snd_usb_midi, ptr %umidi, i32 0, i32 2
  %0 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iface, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %extra = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %extra, align 4
  %extralen = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %extralen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %extralen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp = icmp sgt i32 %7, 6
  br i1 %cmp, label %land.lhs.true, label %if.end.do.end25_crit_edge

if.end.do.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

land.lhs.true:                                    ; preds = %if.end
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %9)
  %cmp1 = icmp ugt i8 %9, 6
  br i1 %cmp1, label %land.lhs.true3, label %land.lhs.true.do.end25_crit_edge

land.lhs.true.do.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

land.lhs.true3:                                   ; preds = %land.lhs.true
  %bDescriptorType = getelementptr inbounds %struct.usb_ms_header_descriptor, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %11)
  %cmp5 = icmp eq i8 %11, 36
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true3.do.end25_crit_edge

land.lhs.true3.do.end25_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

land.lhs.true7:                                   ; preds = %land.lhs.true3
  %bDescriptorSubtype = getelementptr inbounds %struct.usb_ms_header_descriptor, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %bDescriptorSubtype to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bDescriptorSubtype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp9 = icmp eq i8 %13, 1
  br i1 %cmp9, label %do.body, label %land.lhs.true7.do.end25_crit_edge

land.lhs.true7.do.end25_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

do.body:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usbmidi_get_ms_info.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usbmidi_get_ms_info, %if.then15)) #12
          to label %if.end28 [label %if.then15], !srcloc !231

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %umidi, align 4
  %dev16 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  %bcdMSC = getelementptr inbounds %struct.usb_ms_header_descriptor, ptr %5, i32 0, i32 3
  %arrayidx17 = getelementptr i8, ptr %bcdMSC, i32 1
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %17 to i32
  %18 = ptrtoint ptr %bcdMSC to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bcdMSC, align 1
  %conv21 = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usbmidi_get_ms_info.__UNIQUE_ID_ddebug244, ptr noundef %dev16, ptr noundef nonnull @.str.18, i32 noundef %conv18, i32 noundef %conv21) #12
  br label %if.end28

do.end25:                                         ; preds = %land.lhs.true7.do.end25_crit_edge, %land.lhs.true3.do.end25_crit_edge, %land.lhs.true.do.end25_crit_edge, %if.end.do.end25_crit_edge
  %20 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %umidi, align 4
  %dev27 = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev27, ptr noundef nonnull @.str.19) #15
  br label %if.end28

if.end28:                                         ; preds = %do.end25, %if.then15, %do.body
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bNumEndpoints, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp30362.not = icmp eq i8 %23, 0
  br i1 %cmp30362.not, label %if.end28.cleanup_crit_edge, label %for.body.lr.ph

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end28
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 3
  %uglygep = getelementptr i8, ptr %endpoints, i32 40
  %uglygep368 = getelementptr i8, ptr %endpoints, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc230.for.body_crit_edge, %for.body.lr.ph
  %epidx.0365 = phi i32 [ 0, %for.body.lr.ph ], [ %epidx.3, %for.inc230.for.body_crit_edge ]
  %i.0363 = phi i32 [ 0, %for.body.lr.ph ], [ %inc231, %for.inc230.for.body_crit_edge ]
  %24 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %endpoint, align 4
  %arrayidx32 = getelementptr %struct.usb_host_endpoint, ptr %25, i32 %i.0363
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx32, i32 0, i32 3
  %26 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bmAttributes.i, align 1
  %28 = and i8 %27, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %switch.not = icmp eq i8 %28, 0
  br i1 %switch.not, label %for.body.for.inc230_crit_edge, label %if.end40

for.body.for.inc230_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc230

if.end40:                                         ; preds = %for.body
  %extralen2.i = getelementptr %struct.usb_host_endpoint, ptr %25, i32 %i.0363, i32 8
  %29 = ptrtoint ptr %extralen2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %extralen2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp39.i = icmp sgt i32 %30, 3
  br i1 %cmp39.i, label %while.body.preheader.i, label %if.end40.for.inc230_crit_edge

if.end40.for.inc230_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc230

while.body.preheader.i:                           ; preds = %if.end40
  %extra1.i = getelementptr %struct.usb_host_endpoint, ptr %25, i32 %i.0363, i32 7
  %31 = ptrtoint ptr %extra1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %extra1.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.backedge, %while.body.preheader.i
  %extralen.042.i = phi i32 [ %30, %while.body.preheader.i ], [ %extralen.042.i.be, %while.body.i.backedge ]
  %extra.040.i = phi ptr [ %32, %while.body.preheader.i ], [ %extra.040.i.be, %while.body.i.backedge ]
  %33 = ptrtoint ptr %extra.040.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %extra.040.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %34)
  %cmp3.i = icmp ugt i8 %34, 3
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %bDescriptorType.i = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, ptr %extra.040.i, i32 0, i32 1
  %35 = ptrtoint ptr %bDescriptorType.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bDescriptorType.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %36)
  %cmp6.i = icmp eq i8 %36, 37
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true.i.cleanup.i_crit_edge

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %bDescriptorSubtype.i = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, ptr %extra.040.i, i32 0, i32 2
  %37 = ptrtoint ptr %bDescriptorSubtype.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bDescriptorSubtype.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp10.i = icmp eq i8 %38, 1
  br i1 %cmp10.i, label %find_usb_ms_endpoint_descriptor.exit, label %land.lhs.true8.i.cleanup.i_crit_edge

land.lhs.true8.i.cleanup.i_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp ne i8 %34, 0
  %conv15.i = zext i8 %34 to i32
  %sub.i = sub nsw i32 %extralen.042.i, %conv15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i)
  %cmp.i334 = icmp sgt i32 %sub.i, 3
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i334, i1 false
  br i1 %or.cond.i, label %if.end.i.while.body.i.backedge_crit_edge, label %if.end.i.for.inc230_crit_edge

if.end.i.for.inc230_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc230

if.end.i.while.body.i.backedge_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.backedge

while.body.i.backedge:                            ; preds = %cleanup.i.while.body.i.backedge_crit_edge, %if.end.i.while.body.i.backedge_crit_edge
  %extralen.042.i.be = phi i32 [ %sub.old.i, %cleanup.i.while.body.i.backedge_crit_edge ], [ %sub.i, %if.end.i.while.body.i.backedge_crit_edge ]
  %conv15.old.i.pn = phi i32 [ %conv15.old.i, %cleanup.i.while.body.i.backedge_crit_edge ], [ %conv15.i, %if.end.i.while.body.i.backedge_crit_edge ]
  %extra.040.i.be = getelementptr i8, ptr %extra.040.i, i32 %conv15.old.i.pn
  br label %while.body.i

cleanup.i:                                        ; preds = %land.lhs.true8.i.cleanup.i_crit_edge, %land.lhs.true.i.cleanup.i_crit_edge
  %conv15.old.i = zext i8 %34 to i32
  %sub.old.i = sub nsw i32 %extralen.042.i, %conv15.old.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.old.i)
  %cmp.old.i = icmp sgt i32 %sub.old.i, 3
  br i1 %cmp.old.i, label %cleanup.i.while.body.i.backedge_crit_edge, label %cleanup.i.for.inc230_crit_edge

cleanup.i.for.inc230_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc230

cleanup.i.while.body.i.backedge_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.backedge

find_usb_ms_endpoint_descriptor.exit:             ; preds = %land.lhs.true8.i
  %tobool42.not = icmp eq ptr %extra.040.i, null
  br i1 %tobool42.not, label %find_usb_ms_endpoint_descriptor.exit.for.inc230_crit_edge, label %if.end44

find_usb_ms_endpoint_descriptor.exit.for.inc230_crit_edge: ; preds = %find_usb_ms_endpoint_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc230

if.end44:                                         ; preds = %find_usb_ms_endpoint_descriptor.exit
  %39 = ptrtoint ptr %extra.040.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %extra.040.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %40)
  %cmp47 = icmp ult i8 %40, 5
  br i1 %cmp47, label %if.end44.for.inc230_crit_edge, label %if.end50

if.end44.for.inc230_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc230

if.end50:                                         ; preds = %if.end44
  %conv46 = zext i8 %40 to i32
  %bNumEmbMIDIJack = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, ptr %extra.040.i, i32 0, i32 3
  %41 = ptrtoint ptr %bNumEmbMIDIJack to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bNumEmbMIDIJack, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %42)
  %cmp52 = icmp ugt i8 %42, 16
  %conv51 = zext i8 %42 to i32
  %add = add nuw nsw i32 %conv51, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv46)
  %cmp60 = icmp ugt i32 %add, %conv46
  %or.cond = select i1 %cmp52, i1 true, i1 %cmp60
  br i1 %or.cond, label %if.end50.for.inc230_crit_edge, label %if.end63

if.end50.for.inc230_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc230

if.end63:                                         ; preds = %if.end50
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx32, i32 0, i32 2
  %43 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool65.not = icmp slt i8 %44, 0
  br i1 %tobool65.not, label %if.else143, label %if.then66

if.then66:                                        ; preds = %if.end63
  %arrayidx67 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 %epidx.0365
  %45 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx67, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool68.not = icmp eq i8 %46, 0
  br i1 %tobool68.not, label %if.then66.if.end79_crit_edge, label %if.then69

if.then66.if.end79_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

if.then69:                                        ; preds = %if.then66
  %inc = add i32 %epidx.0365, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc)
  %cmp70 = icmp sgt i32 %inc, 1
  br i1 %cmp70, label %if.then69.cleanup.sink.split_crit_edge, label %if.then69.if.end79_crit_edge

if.then69.if.end79_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

if.then69.cleanup.sink.split_crit_edge:           ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end79:                                         ; preds = %if.then69.if.end79_crit_edge, %if.then66.if.end79_crit_edge
  %epidx.1 = phi i32 [ 1, %if.then69.if.end79_crit_edge ], [ %epidx.0365, %if.then66.if.end79_crit_edge ]
  %47 = and i8 %44, 15
  %arrayidx82 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 %epidx.1
  %48 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx82, align 2
  %49 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bmAttributes.i, align 1
  %51 = and i8 %50, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %51)
  %cmp.i337.not = icmp eq i8 %51, 3
  br i1 %cmp.i337.not, label %if.then86, label %if.else88

if.then86:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx32, i32 0, i32 5
  %52 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bInterval, align 1
  br label %if.end96.sink.split

if.else88:                                        ; preds = %if.end79
  %54 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %umidi, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp90 = icmp eq i32 %57, 1
  br i1 %cmp90, label %if.else88.if.end96.sink.split_crit_edge, label %if.else88.if.end96_crit_edge

if.else88.if.end96_crit_edge:                     ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.else88.if.end96.sink.split_crit_edge:          ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96.sink.split

if.end96.sink.split:                              ; preds = %if.else88.if.end96.sink.split_crit_edge, %if.then86
  %.sink = phi i8 [ %53, %if.then86 ], [ 1, %if.else88.if.end96.sink.split_crit_edge ]
  %out_interval94 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 %epidx.1, i32 1
  %58 = ptrtoint ptr %out_interval94 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %.sink, ptr %out_interval94, align 1
  br label %if.end96

if.end96:                                         ; preds = %if.end96.sink.split, %if.else88.if.end96_crit_edge
  %59 = ptrtoint ptr %bNumEmbMIDIJack to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bNumEmbMIDIJack, align 1
  %conv98 = zext i8 %60 to i32
  %notmask324 = shl nsw i32 -1, %conv98
  %61 = trunc i32 %notmask324 to i16
  %conv99 = xor i16 %61, -1
  %out_cables = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 %epidx.1, i32 4
  %62 = ptrtoint ptr %out_cables to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv99, ptr %out_cables, align 2
  %63 = load i8, ptr %bNumEmbMIDIJack, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp104351.not = icmp eq i8 %63, 0
  br i1 %cmp104351.not, label %if.end96.for.body115.preheader_crit_edge, label %if.end96.for.body106_crit_edge

if.end96.for.body106_crit_edge:                   ; preds = %if.end96
  br label %for.body106

if.end96.for.body115.preheader_crit_edge:         ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body115.preheader

for.cond112.preheader:                            ; preds = %for.body106
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %j.0352)
  %cmp113353 = icmp ult i32 %j.0352, 15
  br i1 %cmp113353, label %for.cond112.preheader.for.body115.preheader_crit_edge, label %for.cond112.preheader.do.body122_crit_edge

for.cond112.preheader.do.body122_crit_edge:       ; preds = %for.cond112.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body122

for.cond112.preheader.for.body115.preheader_crit_edge: ; preds = %for.cond112.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body115.preheader

for.body115.preheader:                            ; preds = %for.cond112.preheader.for.body115.preheader_crit_edge, %if.end96.for.body115.preheader_crit_edge
  %j.0.lcssa372 = phi i32 [ %inc111, %for.cond112.preheader.for.body115.preheader_crit_edge ], [ 0, %if.end96.for.body115.preheader_crit_edge ]
  %64 = mul i32 %epidx.1, 72
  %65 = shl nuw nsw i32 %j.0.lcssa372, 1
  %66 = add i32 %64, %65
  %uglygep367 = getelementptr i8, ptr %uglygep, i32 %66
  %67 = sub nuw nsw i32 32, %65
  %68 = call ptr @memset(ptr %uglygep367, i32 255, i32 %67)
  br label %do.body122

for.body106:                                      ; preds = %for.body106.for.body106_crit_edge, %if.end96.for.body106_crit_edge
  %j.0352 = phi i32 [ %inc111, %for.body106.for.body106_crit_edge ], [ 0, %if.end96.for.body106_crit_edge ]
  %arrayidx107 = getelementptr %struct.usb_ms_endpoint_descriptor, ptr %extra.040.i, i32 0, i32 4, i32 %j.0352
  %69 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx107, align 1
  %conv108 = zext i8 %70 to i16
  %arrayidx110 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 %epidx.1, i32 7, i32 %j.0352
  %71 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv108, ptr %arrayidx110, align 2
  %inc111 = add nuw nsw i32 %j.0352, 1
  %72 = ptrtoint ptr %bNumEmbMIDIJack to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bNumEmbMIDIJack, align 1
  %conv103 = zext i8 %73 to i32
  %cmp104 = icmp ult i32 %inc111, %conv103
  br i1 %cmp104, label %for.body106.for.body106_crit_edge, label %for.cond112.preheader

for.body106.for.body106_crit_edge:                ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body106

do.body122:                                       ; preds = %for.body115.preheader, %for.cond112.preheader.do.body122_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usbmidi_get_ms_info.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usbmidi_get_ms_info, %for.inc230.sink.split)) #12
          to label %for.inc230 [label %for.inc230.sink.split], !srcloc !231

if.else143:                                       ; preds = %if.end63
  %in_ep = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 %epidx.0365, i32 2
  %74 = ptrtoint ptr %in_ep to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %in_ep, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool145.not = icmp eq i8 %75, 0
  br i1 %tobool145.not, label %if.else143.if.end157_crit_edge, label %if.then146

if.else143.if.end157_crit_edge:                   ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end157

if.then146:                                       ; preds = %if.else143
  %inc147 = add i32 %epidx.0365, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc147)
  %cmp148 = icmp sgt i32 %inc147, 1
  br i1 %cmp148, label %if.then146.cleanup.sink.split_crit_edge, label %if.then146.if.end157_crit_edge

if.then146.if.end157_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end157

if.then146.cleanup.sink.split_crit_edge:          ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end157:                                        ; preds = %if.then146.if.end157_crit_edge, %if.else143.if.end157_crit_edge
  %epidx.2 = phi i32 [ 1, %if.then146.if.end157_crit_edge ], [ %epidx.0365, %if.else143.if.end157_crit_edge ]
  %76 = and i8 %44, 15
  %in_ep161 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 %epidx.2, i32 2
  %77 = ptrtoint ptr %in_ep161 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %in_ep161, align 2
  %78 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bmAttributes.i, align 1
  %80 = and i8 %79, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %80)
  %cmp.i342.not = icmp eq i8 %80, 3
  br i1 %cmp.i342.not, label %if.then164, label %if.else167

if.then164:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #14
  %bInterval165 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx32, i32 0, i32 5
  %81 = ptrtoint ptr %bInterval165 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %bInterval165, align 1
  br label %if.end176.sink.split

if.else167:                                       ; preds = %if.end157
  %83 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %umidi, align 4
  %speed169 = getelementptr inbounds %struct.usb_device, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %speed169 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %speed169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp170 = icmp eq i32 %86, 1
  br i1 %cmp170, label %if.else167.if.end176.sink.split_crit_edge, label %if.else167.if.end176_crit_edge

if.else167.if.end176_crit_edge:                   ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end176

if.else167.if.end176.sink.split_crit_edge:        ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end176.sink.split

if.end176.sink.split:                             ; preds = %if.else167.if.end176.sink.split_crit_edge, %if.then164
  %.sink377 = phi i8 [ %82, %if.then164 ], [ 1, %if.else167.if.end176.sink.split_crit_edge ]
  %in_interval174 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 %epidx.2, i32 3
  %87 = ptrtoint ptr %in_interval174 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %.sink377, ptr %in_interval174, align 1
  br label %if.end176

if.end176:                                        ; preds = %if.end176.sink.split, %if.else167.if.end176_crit_edge
  %88 = ptrtoint ptr %bNumEmbMIDIJack to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %bNumEmbMIDIJack, align 1
  %conv178 = zext i8 %89 to i32
  %notmask = shl nsw i32 -1, %conv178
  %90 = trunc i32 %notmask to i16
  %conv181 = xor i16 %90, -1
  %in_cables = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 %epidx.2, i32 5
  %91 = ptrtoint ptr %in_cables to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv181, ptr %in_cables, align 2
  %92 = load i8, ptr %bNumEmbMIDIJack, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp186356.not = icmp eq i8 %92, 0
  br i1 %cmp186356.not, label %if.end176.for.body200.preheader_crit_edge, label %if.end176.for.body188_crit_edge

if.end176.for.body188_crit_edge:                  ; preds = %if.end176
  br label %for.body188

if.end176.for.body200.preheader_crit_edge:        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body200.preheader

for.cond197.preheader:                            ; preds = %for.body188
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %j.2357)
  %cmp198359 = icmp ult i32 %j.2357, 15
  br i1 %cmp198359, label %for.cond197.preheader.for.body200.preheader_crit_edge, label %for.cond197.preheader.do.body207_crit_edge

for.cond197.preheader.do.body207_crit_edge:       ; preds = %for.cond197.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body207

for.cond197.preheader.for.body200.preheader_crit_edge: ; preds = %for.cond197.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body200.preheader

for.body200.preheader:                            ; preds = %for.cond197.preheader.for.body200.preheader_crit_edge, %if.end176.for.body200.preheader_crit_edge
  %j.2.lcssa375 = phi i32 [ %inc195, %for.cond197.preheader.for.body200.preheader_crit_edge ], [ 0, %if.end176.for.body200.preheader_crit_edge ]
  %93 = mul i32 %epidx.2, 72
  %94 = shl nuw nsw i32 %j.2.lcssa375, 1
  %95 = add i32 %93, %94
  %uglygep369 = getelementptr i8, ptr %uglygep368, i32 %95
  %96 = sub nuw nsw i32 32, %94
  %97 = call ptr @memset(ptr %uglygep369, i32 255, i32 %96)
  br label %do.body207

for.body188:                                      ; preds = %for.body188.for.body188_crit_edge, %if.end176.for.body188_crit_edge
  %j.2357 = phi i32 [ %inc195, %for.body188.for.body188_crit_edge ], [ 0, %if.end176.for.body188_crit_edge ]
  %arrayidx190 = getelementptr %struct.usb_ms_endpoint_descriptor, ptr %extra.040.i, i32 0, i32 4, i32 %j.2357
  %98 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx190, align 1
  %conv191 = zext i8 %99 to i16
  %arrayidx193 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 %epidx.2, i32 6, i32 %j.2357
  %100 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv191, ptr %arrayidx193, align 2
  %inc195 = add nuw nsw i32 %j.2357, 1
  %101 = ptrtoint ptr %bNumEmbMIDIJack to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %bNumEmbMIDIJack, align 1
  %conv185 = zext i8 %102 to i32
  %cmp186 = icmp ult i32 %inc195, %conv185
  br i1 %cmp186, label %for.body188.for.body188_crit_edge, label %for.cond197.preheader

for.body188.for.body188_crit_edge:                ; preds = %for.body188
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body188

do.body207:                                       ; preds = %for.body200.preheader, %for.cond197.preheader.do.body207_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usbmidi_get_ms_info.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usbmidi_get_ms_info, %for.inc230.sink.split)) #12
          to label %for.inc230 [label %for.inc230.sink.split], !srcloc !231

for.inc230.sink.split:                            ; preds = %do.body207, %do.body122
  %snd_usbmidi_get_ms_info.__UNIQUE_ID_ddebug245.sink = phi ptr [ @snd_usbmidi_get_ms_info.__UNIQUE_ID_ddebug245, %do.body122 ], [ @snd_usbmidi_get_ms_info.__UNIQUE_ID_ddebug246, %do.body207 ]
  %epidx.3.ph = phi i32 [ %epidx.1, %do.body122 ], [ %epidx.2, %do.body207 ]
  call void @__sanitizer_cov_trace_pc() #14
  %103 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %umidi, align 4
  %dev136 = getelementptr inbounds %struct.usb_device, ptr %104, i32 0, i32 15
  %105 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %bEndpointAddress.i, align 1
  %conv137 = zext i8 %106 to i32
  %107 = ptrtoint ptr %bNumEmbMIDIJack to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %bNumEmbMIDIJack, align 1
  %conv139 = zext i8 %108 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull %snd_usbmidi_get_ms_info.__UNIQUE_ID_ddebug245.sink, ptr noundef %dev136, ptr noundef nonnull @.str.24, i32 noundef %conv137, i32 noundef %conv139) #12
  br label %for.inc230

for.inc230:                                       ; preds = %for.inc230.sink.split, %do.body207, %do.body122, %if.end50.for.inc230_crit_edge, %if.end44.for.inc230_crit_edge, %find_usb_ms_endpoint_descriptor.exit.for.inc230_crit_edge, %cleanup.i.for.inc230_crit_edge, %if.end.i.for.inc230_crit_edge, %if.end40.for.inc230_crit_edge, %for.body.for.inc230_crit_edge
  %epidx.3 = phi i32 [ %epidx.0365, %if.end44.for.inc230_crit_edge ], [ %epidx.0365, %if.end50.for.inc230_crit_edge ], [ %epidx.0365, %find_usb_ms_endpoint_descriptor.exit.for.inc230_crit_edge ], [ %epidx.1, %do.body122 ], [ %epidx.2, %do.body207 ], [ %epidx.0365, %if.end40.for.inc230_crit_edge ], [ %epidx.0365, %for.body.for.inc230_crit_edge ], [ %epidx.3.ph, %for.inc230.sink.split ], [ %epidx.0365, %if.end.i.for.inc230_crit_edge ], [ %epidx.0365, %cleanup.i.for.inc230_crit_edge ]
  %inc231 = add nuw nsw i32 %i.0363, 1
  %109 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %bNumEndpoints, align 1
  %conv29 = zext i8 %110 to i32
  %cmp30 = icmp ult i32 %inc231, %conv29
  br i1 %cmp30, label %for.inc230.for.body_crit_edge, label %for.inc230.cleanup_crit_edge

for.inc230.cleanup_crit_edge:                     ; preds = %for.inc230
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc230.for.body_crit_edge:                    ; preds = %for.inc230
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup.sink.split:                               ; preds = %if.then146.cleanup.sink.split_crit_edge, %if.then69.cleanup.sink.split_crit_edge
  %111 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %umidi, align 4
  %dev77 = getelementptr inbounds %struct.usb_device, ptr %112, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev77, ptr noundef nonnull @.str.22) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc230.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ 0, %for.inc230.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_usbmidi_detect_endpoints(ptr noundef %umidi, ptr nocapture noundef %endpoint, i32 noundef %max_endpoints) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_id = getelementptr inbounds %struct.snd_usb_midi, ptr %umidi, i32 0, i32 11
  %0 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_id, align 4
  %shr.mask = and i32 %1, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 92405760, i32 %shr.mask)
  %cmp = icmp eq i32 %shr.mask, 92405760
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @snd_usbmidi_switch_roland_altsetting(ptr noundef %umidi)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %endpoint to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %endpoint, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %in_ep = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoint, i32 0, i32 2
  %4 = ptrtoint ptr %in_ep to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_ep, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %iface = getelementptr inbounds %struct.snd_usb_midi, ptr %umidi, i32 0, i32 2
  %6 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iface, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %lor.lhs.false7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false7:                                   ; preds = %if.end5
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8 = icmp eq i32 %9, 0
  br i1 %cmp8, label %lor.lhs.false7.cleanup_crit_edge, label %if.end11

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false7
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bNumEndpoints, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp13110.not = icmp eq i8 %13, 0
  br i1 %cmp13110.not, label %if.end11.for.end_crit_edge, label %for.body.lr.ph

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %endpoint15 = getelementptr inbounds %struct.usb_host_interface, ptr %11, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %in_eps.0114 = phi i32 [ 0, %for.body.lr.ph ], [ %in_eps.1, %for.inc.for.body_crit_edge ]
  %out_eps.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %out_eps.2, %for.inc.for.body_crit_edge ]
  %i.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %inc57, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %endpoint15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %endpoint15, align 4
  %arrayidx16 = getelementptr %struct.usb_host_endpoint, ptr %15, i32 %i.0111
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx16, i32 0, i32 3
  %16 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bmAttributes.i, align 1
  %18 = and i8 %17, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %switch.not = icmp eq i8 %18, 0
  br i1 %switch.not, label %for.body.for.inc_crit_edge, label %if.end22

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end22:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %out_eps.0112, i32 %max_endpoints)
  %cmp23 = icmp slt i32 %out_eps.0112, %max_endpoints
  br i1 %cmp23, label %land.lhs.true25, label %if.end22.if.end38_crit_edge

if.end22.if.end38_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.lhs.true25:                                  ; preds = %if.end22
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx16, i32 0, i32 2
  %19 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool27.not = icmp slt i8 %20, 0
  br i1 %tobool27.not, label %land.lhs.true25.if.end38_crit_edge, label %if.then28

land.lhs.true25.if.end38_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then28:                                        ; preds = %land.lhs.true25
  %21 = and i8 %20, 15
  %arrayidx31 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %endpoint, i32 %out_eps.0112
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx31, align 2
  %23 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bmAttributes.i, align 1
  %25 = and i8 %24, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %cmp.i101.not = icmp eq i8 %25, 3
  br i1 %cmp.i101.not, label %if.then35, label %if.then28.if.end37_crit_edge

if.then28.if.end37_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then35:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx16, i32 0, i32 5
  %26 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bInterval, align 1
  %out_interval = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %endpoint, i32 %out_eps.0112, i32 1
  %28 = ptrtoint ptr %out_interval to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %out_interval, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.then28.if.end37_crit_edge
  %inc = add nsw i32 %out_eps.0112, 1
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %land.lhs.true25.if.end38_crit_edge, %if.end22.if.end38_crit_edge
  %out_eps.1 = phi i32 [ %inc, %if.end37 ], [ %out_eps.0112, %land.lhs.true25.if.end38_crit_edge ], [ %out_eps.0112, %if.end22.if.end38_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %in_eps.0114, i32 %max_endpoints)
  %cmp39 = icmp slt i32 %in_eps.0114, %max_endpoints
  br i1 %cmp39, label %land.lhs.true41, label %if.end38.for.inc_crit_edge

if.end38.for.inc_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true41:                                  ; preds = %if.end38
  %bEndpointAddress.i103 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx16, i32 0, i32 2
  %29 = ptrtoint ptr %bEndpointAddress.i103 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bEndpointAddress.i103, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %tobool43.not = icmp sgt i8 %30, -1
  br i1 %tobool43.not, label %land.lhs.true41.for.inc_crit_edge, label %if.then44

land.lhs.true41.for.inc_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then44:                                        ; preds = %land.lhs.true41
  %31 = and i8 %30, 15
  %in_ep48 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %endpoint, i32 %in_eps.0114, i32 2
  %32 = ptrtoint ptr %in_ep48 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %in_ep48, align 2
  %33 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bmAttributes.i, align 1
  %35 = and i8 %34, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %35)
  %cmp.i107.not = icmp eq i8 %35, 3
  br i1 %cmp.i107.not, label %if.then51, label %if.then44.if.end54_crit_edge

if.then44.if.end54_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then51:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %bInterval52 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx16, i32 0, i32 5
  %36 = ptrtoint ptr %bInterval52 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bInterval52, align 1
  %in_interval = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %endpoint, i32 %in_eps.0114, i32 3
  %38 = ptrtoint ptr %in_interval to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %in_interval, align 1
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.then44.if.end54_crit_edge
  %inc55 = add nsw i32 %in_eps.0114, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end54, %land.lhs.true41.for.inc_crit_edge, %if.end38.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %out_eps.2 = phi i32 [ %out_eps.1, %if.end54 ], [ %out_eps.1, %land.lhs.true41.for.inc_crit_edge ], [ %out_eps.1, %if.end38.for.inc_crit_edge ], [ %out_eps.0112, %for.body.for.inc_crit_edge ]
  %in_eps.1 = phi i32 [ %inc55, %if.end54 ], [ %in_eps.0114, %land.lhs.true41.for.inc_crit_edge ], [ %in_eps.0114, %if.end38.for.inc_crit_edge ], [ %in_eps.0114, %for.body.for.inc_crit_edge ]
  %inc57 = add nuw nsw i32 %i.0111, 1
  %39 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bNumEndpoints, align 1
  %conv12 = zext i8 %40 to i32
  %cmp13 = icmp ult i32 %inc57, %conv12
  br i1 %cmp13, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end11.for.end_crit_edge
  %out_eps.0.lcssa = phi i32 [ 0, %if.end11.for.end_crit_edge ], [ %out_eps.2, %for.inc.for.end_crit_edge ]
  %in_eps.0.lcssa = phi i32 [ 0, %if.end11.for.end_crit_edge ], [ %in_eps.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out_eps.0.lcssa)
  %tobool58.not = icmp eq i32 %out_eps.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_eps.0.lcssa)
  %tobool59.not = icmp eq i32 %in_eps.0.lcssa, 0
  %41 = select i1 %tobool58.not, i1 %tobool59.not, i1 false
  %42 = select i1 %41, i32 -2, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %42, %for.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -2, %lor.lhs.false7.cleanup_crit_edge ], [ -2, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_usbmidi_create_endpoints_midiman(ptr noundef %umidi, ptr nocapture noundef readonly %endpoint) unnamed_addr #0 align 64 {
entry:
  %ep_info = alloca %struct.snd_usb_midi_endpoint_info, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ep_info) #12
  %0 = getelementptr inbounds i8, ptr %ep_info, i32 2
  %1 = call ptr @memset(ptr %0, i32 255, i32 70)
  %iface = getelementptr inbounds %struct.snd_usb_midi, ptr %umidi, i32 0, i32 2
  %2 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iface, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bNumEndpoints, align 1
  %conv = zext i8 %7 to i32
  %out_cables = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoint, i32 0, i32 4
  %8 = ptrtoint ptr %out_cables to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %out_cables, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp = icmp ugt i16 %9, 1
  %cond = select i1 %cmp, i32 5, i32 3
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv)
  %cmp3 = icmp ugt i32 %cond, %conv
  br i1 %cmp3, label %do.body, label %if.end12

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usbmidi_create_endpoints_midiman.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usbmidi_create_endpoints_midiman, %if.then9)) #12
          to label %cleanup [label %if.then9], !srcloc !231

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %umidi, align 4
  %dev10 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usbmidi_create_endpoints_midiman.__UNIQUE_ID_ddebug248, ptr noundef %dev10, ptr noundef nonnull @.str.56) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %endpoint13 = getelementptr inbounds %struct.usb_host_interface, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %endpoint13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %endpoint13, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %tobool16.not = icmp sgt i8 %15, -1
  br i1 %tobool16.not, label %if.end12.do.body20_crit_edge, label %lor.lhs.false

if.end12.do.body20_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body20

lor.lhs.false:                                    ; preds = %if.end12
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bmAttributes.i, align 1
  %18 = and i8 %17, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp.i.not = icmp eq i8 %18, 3
  br i1 %cmp.i.not, label %if.end38, label %lor.lhs.false.do.body20_crit_edge

lor.lhs.false.do.body20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body20

do.body20:                                        ; preds = %lor.lhs.false.do.body20_crit_edge, %if.end12.do.body20_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usbmidi_create_endpoints_midiman.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usbmidi_create_endpoints_midiman, %if.then32)) #12
          to label %cleanup [label %if.then32], !srcloc !231

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %umidi, align 4
  %dev34 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usbmidi_create_endpoints_midiman.__UNIQUE_ID_ddebug249, ptr noundef %dev34, ptr noundef nonnull @.str.57) #12
  br label %cleanup

if.end38:                                         ; preds = %lor.lhs.false
  %bEndpointAddress.i247 = getelementptr %struct.usb_host_endpoint, ptr %13, i32 2, i32 0, i32 2
  %21 = ptrtoint ptr %bEndpointAddress.i247 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bEndpointAddress.i247, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool43.not = icmp slt i8 %22, 0
  br i1 %tobool43.not, label %if.end38.do.body48_crit_edge, label %lor.lhs.false44

if.end38.do.body48_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body48

lor.lhs.false44:                                  ; preds = %if.end38
  %bmAttributes.i248 = getelementptr %struct.usb_host_endpoint, ptr %13, i32 2, i32 0, i32 3
  %23 = ptrtoint ptr %bmAttributes.i248 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bmAttributes.i248, align 1
  %25 = and i8 %24, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp.i249.not = icmp eq i8 %25, 2
  br i1 %cmp.i249.not, label %if.end66, label %lor.lhs.false44.do.body48_crit_edge

lor.lhs.false44.do.body48_crit_edge:              ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body48

do.body48:                                        ; preds = %lor.lhs.false44.do.body48_crit_edge, %if.end38.do.body48_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usbmidi_create_endpoints_midiman.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usbmidi_create_endpoints_midiman, %if.then60)) #12
          to label %cleanup [label %if.then60], !srcloc !231

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %umidi, align 4
  %dev62 = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usbmidi_create_endpoints_midiman.__UNIQUE_ID_ddebug250, ptr noundef %dev62, ptr noundef nonnull @.str.58) #12
  br label %cleanup

if.end66:                                         ; preds = %lor.lhs.false44
  br i1 %cmp, label %if.then71, label %if.end66.if.end100_crit_edge

if.end66.if.end100_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

if.then71:                                        ; preds = %if.end66
  %bEndpointAddress.i251 = getelementptr %struct.usb_host_endpoint, ptr %13, i32 4, i32 0, i32 2
  %28 = ptrtoint ptr %bEndpointAddress.i251 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bEndpointAddress.i251, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool76.not = icmp slt i8 %29, 0
  br i1 %tobool76.not, label %if.then71.do.body81_crit_edge, label %lor.lhs.false77

if.then71.do.body81_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body81

lor.lhs.false77:                                  ; preds = %if.then71
  %bmAttributes.i253 = getelementptr %struct.usb_host_endpoint, ptr %13, i32 4, i32 0, i32 3
  %30 = ptrtoint ptr %bmAttributes.i253 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bmAttributes.i253, align 1
  %32 = and i8 %31, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %cmp.i254.not = icmp eq i8 %32, 2
  br i1 %cmp.i254.not, label %lor.lhs.false77.if.end100_crit_edge, label %lor.lhs.false77.do.body81_crit_edge

lor.lhs.false77.do.body81_crit_edge:              ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body81

lor.lhs.false77.if.end100_crit_edge:              ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

do.body81:                                        ; preds = %lor.lhs.false77.do.body81_crit_edge, %if.then71.do.body81_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usbmidi_create_endpoints_midiman.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usbmidi_create_endpoints_midiman, %if.then93)) #12
          to label %cleanup [label %if.then93], !srcloc !231

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %umidi, align 4
  %dev95 = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usbmidi_create_endpoints_midiman.__UNIQUE_ID_ddebug251, ptr noundef %dev95, ptr noundef nonnull @.str.59) #12
  br label %cleanup

if.end100:                                        ; preds = %lor.lhs.false77.if.end100_crit_edge, %if.end66.if.end100_crit_edge
  %35 = ptrtoint ptr %bEndpointAddress.i247 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bEndpointAddress.i247, align 2
  %37 = and i8 %36, 15
  %38 = ptrtoint ptr %ep_info to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %ep_info, align 2
  %out_interval = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %ep_info, i32 0, i32 1
  %39 = ptrtoint ptr %out_interval to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %out_interval, align 1
  %40 = and i16 %9, 21845
  %out_cables110 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %ep_info, i32 0, i32 4
  %41 = ptrtoint ptr %out_cables110 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %out_cables110, align 2
  %endpoints = getelementptr inbounds %struct.snd_usb_midi, ptr %umidi, i32 0, i32 13
  %call112 = call fastcc i32 @snd_usbmidi_out_endpoint_create(ptr noundef %umidi, ptr noundef nonnull %ep_info, ptr noundef %endpoints)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %if.end100.cleanup_crit_edge, label %if.end116

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end116:                                        ; preds = %if.end100
  %42 = ptrtoint ptr %endpoint13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %endpoint13, align 4
  %bEndpointAddress120 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %bEndpointAddress120 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bEndpointAddress120, align 2
  %46 = and i8 %45, 15
  %in_ep = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %ep_info, i32 0, i32 2
  %47 = ptrtoint ptr %in_ep to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %in_ep, align 2
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %43, i32 0, i32 5
  %48 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bInterval, align 2
  %in_interval = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %ep_info, i32 0, i32 3
  %50 = ptrtoint ptr %in_interval to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %in_interval, align 1
  %in_cables = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %endpoint, i32 0, i32 5
  %51 = ptrtoint ptr %in_cables to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %in_cables, align 2
  %in_cables127 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %ep_info, i32 0, i32 5
  %53 = ptrtoint ptr %in_cables127 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %in_cables127, align 2
  %call130 = call fastcc i32 @snd_usbmidi_in_endpoint_create(ptr noundef %umidi, ptr noundef nonnull %ep_info, ptr noundef %endpoints)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %if.end116.cleanup_crit_edge, label %if.end134

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end134:                                        ; preds = %if.end116
  %54 = ptrtoint ptr %out_cables to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %out_cables, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %55)
  %cmp137 = icmp ugt i16 %55, 1
  br i1 %cmp137, label %if.then139, label %if.end134.if.end160_crit_edge

if.end134.if.end160_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end160

if.then139:                                       ; preds = %if.end134
  %56 = ptrtoint ptr %endpoint13 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %endpoint13, align 4
  %bEndpointAddress143 = getelementptr %struct.usb_host_endpoint, ptr %57, i32 4, i32 0, i32 2
  %58 = ptrtoint ptr %bEndpointAddress143 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bEndpointAddress143, align 2
  %60 = and i8 %59, 15
  %61 = ptrtoint ptr %ep_info to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %ep_info, align 2
  %62 = and i16 %55, -21846
  %63 = ptrtoint ptr %out_cables110 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %out_cables110, align 2
  %arrayidx154 = getelementptr %struct.snd_usb_midi, ptr %umidi, i32 0, i32 13, i32 1
  %call155 = call fastcc i32 @snd_usbmidi_out_endpoint_create(ptr noundef %umidi, ptr noundef nonnull %ep_info, ptr noundef %arrayidx154)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %cmp156 = icmp slt i32 %call155, 0
  br i1 %cmp156, label %if.then139.cleanup_crit_edge, label %if.then139.if.end160_crit_edge

if.then139.if.end160_crit_edge:                   ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end160

if.then139.cleanup_crit_edge:                     ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end160:                                        ; preds = %if.then139.if.end160_crit_edge, %if.end134.if.end160_crit_edge
  %in = getelementptr inbounds %struct.snd_usb_midi, ptr %umidi, i32 0, i32 13, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end160
  %cable.0260 = phi i32 [ 0, %if.end160 ], [ %inc, %for.inc.for.body_crit_edge ]
  %64 = ptrtoint ptr %out_cables to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %out_cables, align 2
  %conv164 = zext i16 %65 to i32
  %shl = shl nuw nsw i32 1, %cable.0260
  %and165 = and i32 %shl, %conv164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %for.body.if.end172_crit_edge, label %if.then167

for.body.if.end172_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end172

if.then167:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %and169 = and i32 %cable.0260, 1
  %arrayidx170 = getelementptr %struct.snd_usb_midi, ptr %umidi, i32 0, i32 13, i32 %and169
  %66 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx170, align 4
  %substream = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %67, i32 0, i32 8, i32 %cable.0260, i32 1
  tail call fastcc void @snd_usbmidi_init_substream(ptr noundef %umidi, i32 noundef 0, i32 noundef %cable.0260, i32 noundef -1, ptr noundef %substream)
  br label %if.end172

if.end172:                                        ; preds = %if.then167, %for.body.if.end172_crit_edge
  %68 = ptrtoint ptr %in_cables to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %in_cables, align 2
  %conv174 = zext i16 %69 to i32
  %and176 = and i32 %shl, %conv174
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %if.end172.for.inc_crit_edge, label %if.then178

if.end172.for.inc_crit_edge:                      ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then178:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %in, align 4
  %arrayidx182 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %71, i32 0, i32 2, i32 %cable.0260
  tail call fastcc void @snd_usbmidi_init_substream(ptr noundef %umidi, i32 noundef 1, i32 noundef %cable.0260, i32 noundef -1, ptr noundef %arrayidx182)
  br label %for.inc

for.inc:                                          ; preds = %if.then178, %if.end172.for.inc_crit_edge
  %inc = add nuw nsw i32 %cable.0260, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then139.cleanup_crit_edge, %if.end116.cleanup_crit_edge, %if.end100.cleanup_crit_edge, %if.then93, %do.body81, %if.then60, %do.body48, %if.then32, %do.body20, %if.then9, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -2, %if.then9 ], [ -6, %if.then32 ], [ -6, %if.then60 ], [ -6, %if.then93 ], [ %call112, %if.end100.cleanup_crit_edge ], [ %call130, %if.end116.cleanup_crit_edge ], [ %call155, %if.then139.cleanup_crit_edge ], [ -2, %do.body ], [ -6, %do.body20 ], [ -6, %do.body48 ], [ -6, %do.body81 ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ep_info) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_usbmidi_create_endpoints(ptr noundef %umidi, ptr nocapture noundef readonly %endpoints) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %out_cables = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 4
  %0 = ptrtoint ptr %out_cables to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %out_cables, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  %arrayidx3 = getelementptr %struct.snd_usb_midi, ptr %umidi, i32 0, i32 13, i32 0
  %call = tail call fastcc i32 @snd_usbmidi_out_endpoint_create(ptr noundef %umidi, ptr noundef %endpoints, ptr noundef %arrayidx3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %in_cables = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 5
  %2 = ptrtoint ptr %in_cables to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %in_cables, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool8.not = icmp eq i16 %3, 0
  br i1 %tobool8.not, label %if.end6.if.end17_crit_edge, label %if.then9

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then9:                                         ; preds = %if.end6
  %arrayidx12 = getelementptr %struct.snd_usb_midi, ptr %umidi, i32 0, i32 13, i32 0
  %call13 = tail call fastcc i32 @snd_usbmidi_in_endpoint_create(ptr noundef %umidi, ptr noundef %endpoints, ptr noundef %arrayidx12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then9.cleanup_crit_edge, label %if.then9.if.end17_crit_edge

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.then9.if.end17_crit_edge, %if.end6.if.end17_crit_edge
  %arrayidx29 = getelementptr %struct.snd_usb_midi, ptr %umidi, i32 0, i32 13, i32 0
  %in = getelementptr %struct.snd_usb_midi, ptr %umidi, i32 0, i32 13, i32 0, i32 1
  br label %for.body20

for.body20:                                       ; preds = %for.inc.for.body20_crit_edge, %if.end17
  %in_ports.1113 = phi i32 [ 0, %if.end17 ], [ %in_ports.2, %for.inc.for.body20_crit_edge ]
  %out_ports.1112 = phi i32 [ 0, %if.end17 ], [ %out_ports.2, %for.inc.for.body20_crit_edge ]
  %j.0109 = phi i32 [ 0, %if.end17 ], [ %inc49, %for.inc.for.body20_crit_edge ]
  %4 = ptrtoint ptr %out_cables to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %out_cables, align 2
  %conv = zext i16 %5 to i32
  %shl = shl nuw nsw i32 1, %j.0109
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %for.body20.if.end31_crit_edge, label %if.then24

for.body20.if.end31_crit_edge:                    ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then24:                                        ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx26 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 7, i32 %j.0109
  %6 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx26, align 2
  %conv27 = sext i16 %7 to i32
  %8 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx29, align 4
  %substream = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %9, i32 0, i32 8, i32 %j.0109, i32 1
  tail call fastcc void @snd_usbmidi_init_substream(ptr noundef %umidi, i32 noundef 0, i32 noundef %out_ports.1112, i32 noundef %conv27, ptr noundef %substream)
  %inc = add i32 %out_ports.1112, 1
  br label %if.end31

if.end31:                                         ; preds = %if.then24, %for.body20.if.end31_crit_edge
  %out_ports.2 = phi i32 [ %inc, %if.then24 ], [ %out_ports.1112, %for.body20.if.end31_crit_edge ]
  %10 = ptrtoint ptr %in_cables to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %in_cables, align 2
  %conv34 = zext i16 %11 to i32
  %and36 = and i32 %shl, %conv34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end31.for.inc_crit_edge, label %if.then38

if.end31.for.inc_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then38:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx40 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 0, i32 6, i32 %j.0109
  %12 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx40, align 2
  %conv41 = sext i16 %13 to i32
  %14 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %in, align 4
  %arrayidx45 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %15, i32 0, i32 2, i32 %j.0109
  tail call fastcc void @snd_usbmidi_init_substream(ptr noundef %umidi, i32 noundef 1, i32 noundef %in_ports.1113, i32 noundef %conv41, ptr noundef %arrayidx45)
  %inc47 = add i32 %in_ports.1113, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then38, %if.end31.for.inc_crit_edge
  %in_ports.2 = phi i32 [ %inc47, %if.then38 ], [ %in_ports.1113, %if.end31.for.inc_crit_edge ]
  %inc49 = add nuw nsw i32 %j.0109, 1
  %exitcond.not = icmp eq i32 %inc49, 16
  br i1 %exitcond.not, label %for.inc50, label %for.inc.for.body20_crit_edge

for.inc.for.body20_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body20

for.inc50:                                        ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1
  %out_cables.1 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1, i32 4
  %16 = ptrtoint ptr %out_cables.1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %out_cables.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.1 = icmp eq i16 %17, 0
  br i1 %tobool.not.1, label %for.inc50.if.end6.1_crit_edge, label %if.then.1

for.inc50.if.end6.1_crit_edge:                    ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.1

if.then.1:                                        ; preds = %for.inc50
  %arrayidx3.1 = getelementptr %struct.snd_usb_midi, ptr %umidi, i32 0, i32 13, i32 1
  %call.1 = tail call fastcc i32 @snd_usbmidi_out_endpoint_create(ptr noundef %umidi, ptr noundef %arrayidx.1, ptr noundef %arrayidx3.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp4.1 = icmp slt i32 %call.1, 0
  br i1 %cmp4.1, label %if.then.1.cleanup_crit_edge, label %if.then.1.if.end6.1_crit_edge

if.then.1.if.end6.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.1

if.then.1.cleanup_crit_edge:                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6.1:                                        ; preds = %if.then.1.if.end6.1_crit_edge, %for.inc50.if.end6.1_crit_edge
  %in_cables.1 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1, i32 5
  %18 = ptrtoint ptr %in_cables.1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %in_cables.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool8.not.1 = icmp eq i16 %19, 0
  br i1 %tobool8.not.1, label %if.end6.1.if.end17.1_crit_edge, label %if.then9.1

if.end6.1.if.end17.1_crit_edge:                   ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.1

if.then9.1:                                       ; preds = %if.end6.1
  %arrayidx12.1 = getelementptr %struct.snd_usb_midi, ptr %umidi, i32 0, i32 13, i32 1
  %call13.1 = tail call fastcc i32 @snd_usbmidi_in_endpoint_create(ptr noundef %umidi, ptr noundef %arrayidx.1, ptr noundef %arrayidx12.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.1)
  %cmp14.1 = icmp slt i32 %call13.1, 0
  br i1 %cmp14.1, label %if.then9.1.cleanup_crit_edge, label %if.then9.1.if.end17.1_crit_edge

if.then9.1.if.end17.1_crit_edge:                  ; preds = %if.then9.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.1

if.then9.1.cleanup_crit_edge:                     ; preds = %if.then9.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17.1:                                       ; preds = %if.then9.1.if.end17.1_crit_edge, %if.end6.1.if.end17.1_crit_edge
  %arrayidx29.1 = getelementptr %struct.snd_usb_midi, ptr %umidi, i32 0, i32 13, i32 1
  %in.1 = getelementptr %struct.snd_usb_midi, ptr %umidi, i32 0, i32 13, i32 1, i32 1
  br label %for.body20.1

for.body20.1:                                     ; preds = %for.inc.1.for.body20.1_crit_edge, %if.end17.1
  %in_ports.1113.1 = phi i32 [ %in_ports.2, %if.end17.1 ], [ %in_ports.2.1, %for.inc.1.for.body20.1_crit_edge ]
  %out_ports.1112.1 = phi i32 [ %out_ports.2, %if.end17.1 ], [ %out_ports.2.1, %for.inc.1.for.body20.1_crit_edge ]
  %j.0109.1 = phi i32 [ 0, %if.end17.1 ], [ %inc49.1, %for.inc.1.for.body20.1_crit_edge ]
  %20 = ptrtoint ptr %out_cables.1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %out_cables.1, align 2
  %conv.1 = zext i16 %21 to i32
  %shl.1 = shl nuw nsw i32 1, %j.0109.1
  %and.1 = and i32 %shl.1, %conv.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool23.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool23.not.1, label %for.body20.1.if.end31.1_crit_edge, label %if.then24.1

for.body20.1.if.end31.1_crit_edge:                ; preds = %for.body20.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.1

if.then24.1:                                      ; preds = %for.body20.1
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx26.1 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1, i32 7, i32 %j.0109.1
  %22 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx26.1, align 2
  %conv27.1 = sext i16 %23 to i32
  %24 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx29.1, align 4
  %substream.1 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %25, i32 0, i32 8, i32 %j.0109.1, i32 1
  tail call fastcc void @snd_usbmidi_init_substream(ptr noundef %umidi, i32 noundef 0, i32 noundef %out_ports.1112.1, i32 noundef %conv27.1, ptr noundef %substream.1)
  %inc.1 = add i32 %out_ports.1112.1, 1
  br label %if.end31.1

if.end31.1:                                       ; preds = %if.then24.1, %for.body20.1.if.end31.1_crit_edge
  %out_ports.2.1 = phi i32 [ %inc.1, %if.then24.1 ], [ %out_ports.1112.1, %for.body20.1.if.end31.1_crit_edge ]
  %26 = ptrtoint ptr %in_cables.1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %in_cables.1, align 2
  %conv34.1 = zext i16 %27 to i32
  %and36.1 = and i32 %shl.1, %conv34.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.1)
  %tobool37.not.1 = icmp eq i32 %and36.1, 0
  br i1 %tobool37.not.1, label %if.end31.1.for.inc.1_crit_edge, label %if.then38.1

if.end31.1.for.inc.1_crit_edge:                   ; preds = %if.end31.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then38.1:                                      ; preds = %if.end31.1
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx40.1 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %endpoints, i32 1, i32 6, i32 %j.0109.1
  %28 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx40.1, align 2
  %conv41.1 = sext i16 %29 to i32
  %30 = ptrtoint ptr %in.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %in.1, align 4
  %arrayidx45.1 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %31, i32 0, i32 2, i32 %j.0109.1
  tail call fastcc void @snd_usbmidi_init_substream(ptr noundef %umidi, i32 noundef 1, i32 noundef %in_ports.1113.1, i32 noundef %conv41.1, ptr noundef %arrayidx45.1)
  %inc47.1 = add i32 %in_ports.1113.1, 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then38.1, %if.end31.1.for.inc.1_crit_edge
  %in_ports.2.1 = phi i32 [ %inc47.1, %if.then38.1 ], [ %in_ports.1113.1, %if.end31.1.for.inc.1_crit_edge ]
  %inc49.1 = add nuw nsw i32 %j.0109.1, 1
  %exitcond.1.not = icmp eq i32 %inc49.1, 16
  br i1 %exitcond.1.not, label %for.inc50.1, label %for.inc.1.for.body20.1_crit_edge

for.inc.1.for.body20.1_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body20.1

for.inc50.1:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usbmidi_create_endpoints.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usbmidi_create_endpoints, %if.then57)) #12
          to label %cleanup [label %if.then57], !srcloc !231

if.then57:                                        ; preds = %for.inc50.1
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %umidi, align 4
  %dev58 = getelementptr inbounds %struct.usb_device, ptr %33, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usbmidi_create_endpoints.__UNIQUE_ID_ddebug243, ptr noundef %dev58, ptr noundef nonnull @.str.78, i32 noundef %out_ports.2.1, i32 noundef %in_ports.2.1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %for.inc50.1, %if.then9.1.cleanup_crit_edge, %if.then.1.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then57 ], [ 0, %for.inc50.1 ], [ %call, %if.then.cleanup_crit_edge ], [ %call13, %if.then9.cleanup_crit_edge ], [ %call.1, %if.then.1.cleanup_crit_edge ], [ %call13.1, %if.then9.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_get_interface_no_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_standard_input(ptr nocapture noundef readonly %ep, ptr noundef %buffer, i32 noundef %buffer_length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %buffer_length)
  %cmp20 = icmp sgt i32 %buffer_length, 3
  br i1 %cmp20, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.021 = phi i32 [ %add11, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buffer, i32 %i.021
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp1.not = icmp eq i8 %1, 0
  br i1 %cmp1.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  %conv = zext i8 %1 to i32
  %2 = lshr i32 %conv, 4
  %and = and i32 %conv, 15
  %arrayidx7 = getelementptr [16 x i8], ptr @snd_usbmidi_cin_length, i32 0, i32 %and
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %4 to i32
  %add9 = or i32 %i.021, 1
  %arrayidx10 = getelementptr i8, ptr %buffer, i32 %add9
  %arrayidx.i = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 2, i32 %2
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usbmidi_standard_input, %if.then4.i)) #12
          to label %for.inc [label %if.then4.i], !srcloc !231

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ep, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, ptr noundef %dev5.i, ptr noundef nonnull @.str.16, i32 noundef %2) #12
  br label %for.inc

if.end6.i:                                        ; preds = %if.then
  %number.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %number.i, align 4
  %13 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ep, align 4
  %input_triggered.i = getelementptr inbounds %struct.snd_usb_midi, ptr %14, i32 0, i32 14
  %div3.i.i = lshr i32 %12, 5
  %arrayidx.i.i = getelementptr i32, ptr %input_triggered.i, i32 %div3.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %12, 31
  %17 = shl nuw i32 1, %and.i.i
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool10.not.i = icmp eq i32 %18, 0
  br i1 %tobool10.not.i, label %if.end6.i.for.inc_crit_edge, label %if.end12.i

if.end6.i.for.inc_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %6, ptr noundef %arrayidx10, i32 noundef %conv8) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end12.i, %if.end6.i.for.inc_crit_edge, %if.then4.i, %do.body.i, %for.body.for.inc_crit_edge
  %add11 = add i32 %i.021, 4
  %add = or i32 %add11, 3
  %cmp = icmp slt i32 %add, %buffer_length
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_standard_output(ptr noundef %ep, ptr noundef %urb) #0 align 64 {
entry:
  %b = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %max_transfer = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %cleanup6.for.body_crit_edge, %entry
  %p.020 = phi i32 [ 0, %entry ], [ %inc, %cleanup6.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 8, i32 %p.020
  %active = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 8, i32 %p.020, i32 2
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.cleanup6_crit_edge, label %while.cond.preheader

for.body.cleanup6_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup6

while.cond.preheader:                             ; preds = %for.body
  %2 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %transfer_buffer_length, align 4
  %add18 = add i32 %3, 3
  %4 = ptrtoint ptr %max_transfer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_transfer, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add18, i32 %5)
  %cmp119 = icmp ult i32 %add18, %5
  br i1 %cmp119, label %while.body.lr.ph, label %while.cond.preheader.cleanup6_crit_edge

while.cond.preheader.cleanup6_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup6

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %substream = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 8, i32 %p.020, i32 1
  %cable.i = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 8, i32 %p.020, i32 3
  %state66.i = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 8, i32 %p.020, i32 4
  %data130.i = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 8, i32 %p.020, i32 5
  %arrayidx133.i = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 8, i32 %p.020, i32 5, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b) #12
  %6 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %b, align 1, !annotation !230
  %7 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %substream, align 4
  %call = call i32 @snd_rawmidi_transmit(ptr noundef %8, ptr noundef nonnull %b, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp2.not = icmp eq i32 %call, 1
  br i1 %cmp2.not, label %if.end5, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %active, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b) #12
  br label %cleanup6

if.end5:                                          ; preds = %while.body
  %10 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %b, align 1
  %12 = ptrtoint ptr %cable.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cable.i, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %usb_protocol_ops.i = getelementptr inbounds %struct.snd_usb_midi, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %usb_protocol_ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_protocol_ops.i, align 4
  %output_packet1.i = getelementptr inbounds %struct.usb_protocol_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %output_packet1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %output_packet1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %11)
  %cmp.i = icmp ugt i8 %11, -9
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %22 = or i8 %13, 15
  call void %21(ptr noundef %urb, i8 noundef zeroext %22, i8 noundef zeroext %11, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  br label %cleanup

if.else.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %11)
  %cmp6.i = icmp ugt i8 %11, -17
  br i1 %cmp6.i, label %if.then8.i, label %if.else48.i

if.then8.i:                                       ; preds = %if.else.i
  %23 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %11, label %if.then8.i.cleanup_crit_edge [
    i8 -16, label %sw.bb.i
    i8 -15, label %if.then8.i.sw.bb10.i_crit_edge
    i8 -13, label %if.then8.i.sw.bb10.i_crit_edge23
    i8 -14, label %sw.bb14.i
    i8 -12, label %if.then8.i.sw.bb18.i_crit_edge
    i8 -11, label %if.then8.i.sw.bb18.i_crit_edge24
    i8 -10, label %sw.bb20.i
    i8 -9, label %sw.bb25.i
  ]

if.then8.i.sw.bb18.i_crit_edge24:                 ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18.i

if.then8.i.sw.bb18.i_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18.i

if.then8.i.sw.bb10.i_crit_edge23:                 ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10.i

if.then8.i.sw.bb10.i_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10.i

if.then8.i.cleanup_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %data130.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -16, ptr %data130.i, align 2
  %25 = ptrtoint ptr %state66.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 5, ptr %state66.i, align 1
  br label %cleanup

sw.bb10.i:                                        ; preds = %if.then8.i.sw.bb10.i_crit_edge, %if.then8.i.sw.bb10.i_crit_edge23
  %26 = ptrtoint ptr %data130.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %11, ptr %data130.i, align 2
  %27 = ptrtoint ptr %state66.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %state66.i, align 1
  br label %cleanup

sw.bb14.i:                                        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %data130.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -14, ptr %data130.i, align 2
  %29 = ptrtoint ptr %state66.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %state66.i, align 1
  br label %cleanup

sw.bb18.i:                                        ; preds = %if.then8.i.sw.bb18.i_crit_edge, %if.then8.i.sw.bb18.i_crit_edge24
  %30 = ptrtoint ptr %state66.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %state66.i, align 1
  br label %cleanup

sw.bb20.i:                                        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = or i8 %13, 5
  call void %21(ptr noundef %urb, i8 noundef zeroext %31, i8 noundef zeroext -10, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %32 = ptrtoint ptr %state66.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %state66.i, align 1
  br label %cleanup

sw.bb25.i:                                        ; preds = %if.then8.i
  %33 = ptrtoint ptr %state66.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %state66.i, align 1
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %34, label %sw.bb25.i.sw.epilog.i_crit_edge [
    i8 4, label %sw.bb28.i
    i8 5, label %sw.bb32.i
    i8 6, label %sw.bb38.i
  ]

sw.bb25.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb28.i:                                        ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = or i8 %13, 5
  call void %21(ptr noundef %urb, i8 noundef zeroext %36, i8 noundef zeroext -9, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  br label %sw.epilog.i

sw.bb32.i:                                        ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #14
  %37 = or i8 %13, 6
  %38 = ptrtoint ptr %data130.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %data130.i, align 2
  call void %21(ptr noundef %urb, i8 noundef zeroext %37, i8 noundef zeroext %39, i8 noundef zeroext -9, i8 noundef zeroext 0) #12
  br label %sw.epilog.i

sw.bb38.i:                                        ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = or i8 %13, 7
  %41 = ptrtoint ptr %data130.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %data130.i, align 2
  %43 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx133.i, align 1
  call void %21(ptr noundef %urb, i8 noundef zeroext %40, i8 noundef zeroext %42, i8 noundef zeroext %44, i8 noundef zeroext -9) #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb38.i, %sw.bb32.i, %sw.bb28.i, %sw.bb25.i.sw.epilog.i_crit_edge
  %45 = ptrtoint ptr %state66.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %state66.i, align 1
  br label %cleanup

if.else48.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp50.i = icmp slt i8 %11, 0
  br i1 %cmp50.i, label %if.then52.i, label %if.else65.i

if.then52.i:                                      ; preds = %if.else48.i
  %46 = ptrtoint ptr %data130.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %11, ptr %data130.i, align 2
  %47 = and i8 %11, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %47)
  %48 = icmp eq i8 %47, -64
  br i1 %48, label %if.then61.i, label %if.else63.i

if.then61.i:                                      ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %state66.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %state66.i, align 1
  br label %cleanup

if.else63.i:                                      ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %state66.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 2, ptr %state66.i, align 1
  br label %cleanup

if.else65.i:                                      ; preds = %if.else48.i
  %51 = ptrtoint ptr %state66.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %state66.i, align 1
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %52, label %if.else65.i.cleanup_crit_edge [
    i8 1, label %sw.bb68.i
    i8 2, label %sw.bb89.i
    i8 3, label %sw.bb93.i
    i8 4, label %sw.bb118.i
    i8 5, label %sw.bb122.i
    i8 6, label %sw.bb126.i
  ]

if.else65.i.cleanup_crit_edge:                    ; preds = %if.else65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb68.i:                                        ; preds = %if.else65.i
  %54 = ptrtoint ptr %data130.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %data130.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %55)
  %cmp72.i = icmp ult i8 %55, -16
  br i1 %cmp72.i, label %if.then74.i, label %if.else81.i

if.then74.i:                                      ; preds = %sw.bb68.i
  call void @__sanitizer_cov_trace_pc() #14
  %56 = lshr i8 %55, 4
  br label %if.end86.i

if.else81.i:                                      ; preds = %sw.bb68.i
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %state66.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %state66.i, align 1
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.else81.i, %if.then74.i
  %.pn.i = phi i8 [ %56, %if.then74.i ], [ 2, %if.else81.i ]
  %p0.0.i = or i8 %.pn.i, %13
  call void %21(ptr noundef %urb, i8 noundef zeroext %p0.0.i, i8 noundef zeroext %55, i8 noundef zeroext %11, i8 noundef zeroext 0) #12
  br label %cleanup

sw.bb89.i:                                        ; preds = %if.else65.i
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %11, ptr %arrayidx133.i, align 1
  %59 = ptrtoint ptr %state66.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 3, ptr %state66.i, align 1
  br label %cleanup

sw.bb93.i:                                        ; preds = %if.else65.i
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %data130.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %data130.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %61)
  %cmp97.i = icmp ult i8 %61, -16
  %62 = lshr i8 %61, 4
  %storemerge.i = select i1 %cmp97.i, i8 2, i8 0
  %p0.1.v.i = select i1 %cmp97.i, i8 %62, i8 3
  %p0.1.i = or i8 %p0.1.v.i, %13
  %63 = ptrtoint ptr %state66.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %storemerge.i, ptr %state66.i, align 1
  %64 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx133.i, align 1
  call void %21(ptr noundef %urb, i8 noundef zeroext %p0.1.i, i8 noundef zeroext %61, i8 noundef zeroext %65, i8 noundef zeroext %11) #12
  br label %cleanup

sw.bb118.i:                                       ; preds = %if.else65.i
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %data130.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %11, ptr %data130.i, align 2
  %67 = ptrtoint ptr %state66.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 5, ptr %state66.i, align 1
  br label %cleanup

sw.bb122.i:                                       ; preds = %if.else65.i
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %11, ptr %arrayidx133.i, align 1
  %69 = ptrtoint ptr %state66.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 6, ptr %state66.i, align 1
  br label %cleanup

sw.bb126.i:                                       ; preds = %if.else65.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = or i8 %13, 4
  %71 = ptrtoint ptr %data130.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %data130.i, align 2
  %73 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx133.i, align 1
  call void %21(ptr noundef %urb, i8 noundef zeroext %70, i8 noundef zeroext %72, i8 noundef zeroext %74, i8 noundef zeroext %11) #12
  %75 = ptrtoint ptr %state66.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 4, ptr %state66.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb126.i, %sw.bb122.i, %sw.bb118.i, %sw.bb93.i, %sw.bb89.i, %if.end86.i, %if.else65.i.cleanup_crit_edge, %if.else63.i, %if.then61.i, %sw.epilog.i, %sw.bb20.i, %sw.bb18.i, %sw.bb14.i, %sw.bb10.i, %sw.bb.i, %if.then8.i.cleanup_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b) #12
  %76 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %transfer_buffer_length, align 4
  %add = add i32 %77, 3
  %78 = ptrtoint ptr %max_transfer to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_transfer, align 4
  %cmp1 = icmp ult i32 %add, %79
  br i1 %cmp1, label %cleanup.while.body_crit_edge, label %cleanup.cleanup6_crit_edge

cleanup.cleanup6_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup6

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup6:                                         ; preds = %cleanup.cleanup6_crit_edge, %cleanup.thread, %while.cond.preheader.cleanup6_crit_edge, %for.body.cleanup6_crit_edge
  %inc = add nuw nsw i32 %p.020, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %cleanup6.for.body_crit_edge

cleanup6.for.body_crit_edge:                      ; preds = %cleanup6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup6
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_usbmidi_output_standard_packet(ptr nocapture noundef %urb, i8 noundef zeroext %p0, i8 noundef zeroext %p1, i8 noundef zeroext %p2, i8 noundef zeroext %p3) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %0 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer_buffer, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %2 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %transfer_buffer_length, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %p0, ptr %add.ptr, align 1
  %arrayidx1 = getelementptr i8, ptr %add.ptr, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %p1, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %add.ptr, i32 2
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %p2, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr i8, ptr %add.ptr, i32 3
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %p3, ptr %arrayidx3, align 1
  %8 = load i32, ptr %transfer_buffer_length, align 4
  %add = add i32 %8, 4
  store i32 %add, ptr %transfer_buffer_length, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_usbmidi_do_output(ptr noundef %ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_lock = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffer_lock) #12
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %disconnected = getelementptr inbounds %struct.snd_usb_midi, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %next_urb = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 6
  %4 = ptrtoint ptr %next_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next_urb, align 4
  %active_urbs = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %if.end24.for.cond_crit_edge, %if.end
  %urb_index.0 = phi i32 [ %5, %if.end ], [ %spec.store.select, %if.end24.for.cond_crit_edge ]
  %6 = ptrtoint ptr %active_urbs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active_urbs, align 4
  %shl = shl nuw i32 1, %urb_index.0
  %and = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then7, label %for.cond.if.end24_crit_edge

for.cond.if.end24_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then7:                                         ; preds = %for.cond
  %arrayidx = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 1, i32 %urb_index.0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %transfer_buffer_length, align 4
  %11 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ep, align 4
  %usb_protocol_ops = getelementptr inbounds %struct.snd_usb_midi, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %usb_protocol_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_protocol_ops, align 4
  %output = getelementptr inbounds %struct.usb_protocol_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %output, align 4
  tail call void %16(ptr noundef %ep, ptr noundef %9) #12
  %17 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %transfer_buffer_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp11 = icmp eq i32 %18, 0
  br i1 %cmp11, label %if.then7.for.end_crit_edge, label %if.end14

if.then7.for.end_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end14:                                         ; preds = %if.then7
  %19 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ep, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %dev16 = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 8
  %23 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %dev16, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %9, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, -19
  %or.cond.i = or i1 %cmp.i, %cmp1.not.i
  br i1 %or.cond.i, label %snd_usbmidi_submit_urb.exit, label %snd_usbmidi_submit_urb.exit.thread

snd_usbmidi_submit_urb.exit.thread:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %dev16.le = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 8
  %24 = ptrtoint ptr %dev16.le to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev16.le, align 4
  %dev2.i = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.12, i32 noundef %call.i) #15
  br label %for.end

snd_usbmidi_submit_urb.exit:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp18 = icmp slt i32 %call.i, 0
  br i1 %cmp18, label %snd_usbmidi_submit_urb.exit.for.end_crit_edge, label %if.end21

snd_usbmidi_submit_urb.exit.for.end_crit_edge:    ; preds = %snd_usbmidi_submit_urb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end21:                                         ; preds = %snd_usbmidi_submit_urb.exit
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %active_urbs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %active_urbs, align 4
  %or = or i32 %27, %shl
  store i32 %or, ptr %active_urbs, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end21, %for.cond.if.end24_crit_edge
  %inc = add i32 %urb_index.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc)
  %cmp25 = icmp ugt i32 %inc, 6
  %spec.store.select = select i1 %cmp25, i32 0, i32 %inc
  %28 = ptrtoint ptr %next_urb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %next_urb, align 4
  %cmp30 = icmp eq i32 %spec.store.select, %29
  br i1 %cmp30, label %if.end24.for.end_crit_edge, label %if.end24.for.cond_crit_edge

if.end24.for.cond_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end24.for.end_crit_edge, %snd_usbmidi_submit_urb.exit.for.end_crit_edge, %snd_usbmidi_submit_urb.exit.thread, %if.then7.for.end_crit_edge
  %urb_index.1 = phi i32 [ %urb_index.0, %snd_usbmidi_submit_urb.exit.thread ], [ %urb_index.0, %snd_usbmidi_submit_urb.exit.for.end_crit_edge ], [ %urb_index.0, %if.then7.for.end_crit_edge ], [ %spec.store.select, %if.end24.for.end_crit_edge ]
  %30 = ptrtoint ptr %next_urb to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %urb_index.1, ptr %next_urb, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffer_lock, i32 noundef %call2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_maudio_broken_running_status_input(ptr nocapture noundef %ep, ptr noundef %buffer, i32 noundef %buffer_length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %buffer_length)
  %cmp77 = icmp sgt i32 %buffer_length, 3
  br i1 %cmp77, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.078 = phi i32 [ %add54, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buffer, i32 %i.078
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp1.not = icmp eq i8 %1, 0
  br i1 %cmp1.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  %2 = lshr i8 %1, 4
  %3 = zext i8 %2 to i32
  %and = and i8 %1, 15
  %idxprom = zext i8 %and to i32
  %arrayidx9 = getelementptr [16 x i8], ptr @snd_usbmidi_cin_length, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx9, align 1
  %trunc = trunc i8 %1 to i4
  %6 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.83)
  switch i4 %trunc, label %if.then27 [
    i4 -1, label %land.lhs.true
    i4 4, label %land.lhs.true33
    i4 0, label %if.then.if.end50.sink.split_crit_edge
    i4 1, label %if.then.if.end50.sink.split_crit_edge82
    i4 2, label %if.then.if.end50.sink.split_crit_edge83
    i4 3, label %if.then.if.end50.sink.split_crit_edge84
    i4 5, label %if.then.if.end50.sink.split_crit_edge85
    i4 6, label %if.then.if.end50.sink.split_crit_edge86
    i4 7, label %if.then.if.end50.sink.split_crit_edge87
  ]

if.then.if.end50.sink.split_crit_edge87:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.sink.split

if.then.if.end50.sink.split_crit_edge86:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.sink.split

if.then.if.end50.sink.split_crit_edge85:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.sink.split

if.then.if.end50.sink.split_crit_edge84:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.sink.split

if.then.if.end50.sink.split_crit_edge83:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.sink.split

if.then.if.end50.sink.split_crit_edge82:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.sink.split

if.then.if.end50.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.sink.split

land.lhs.true:                                    ; preds = %if.then
  %add14 = or i32 %i.078, 1
  %arrayidx15 = getelementptr i8, ptr %buffer, i32 %add14
  %7 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %8)
  %cmp17 = icmp ugt i8 %8, -9
  br i1 %cmp17, label %land.lhs.true.if.end50_crit_edge, label %land.lhs.true.if.end50.sink.split_crit_edge

land.lhs.true.if.end50.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.sink.split

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then27:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add i8 %5, -1
  br label %if.end50.sink.split

land.lhs.true33:                                  ; preds = %if.then
  %running_status_length34 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 2, i32 %3, i32 1
  %9 = ptrtoint ptr %running_status_length34 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %running_status_length34, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp36.not = icmp eq i8 %10, 0
  br i1 %cmp36.not, label %land.lhs.true33.if.end50.sink.split_crit_edge, label %land.lhs.true38

land.lhs.true33.if.end50.sink.split_crit_edge:    ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.sink.split

land.lhs.true38:                                  ; preds = %land.lhs.true33
  %add39 = or i32 %i.078, 1
  %arrayidx40 = getelementptr i8, ptr %buffer, i32 %add39
  %11 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp42 = icmp sgt i8 %12, -1
  br i1 %cmp42, label %land.lhs.true38.if.end50_crit_edge, label %land.lhs.true38.if.end50.sink.split_crit_edge

land.lhs.true38.if.end50.sink.split_crit_edge:    ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.sink.split

land.lhs.true38.if.end50_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.end50.sink.split:                              ; preds = %land.lhs.true38.if.end50.sink.split_crit_edge, %land.lhs.true33.if.end50.sink.split_crit_edge, %if.then27, %land.lhs.true.if.end50.sink.split_crit_edge, %if.then.if.end50.sink.split_crit_edge, %if.then.if.end50.sink.split_crit_edge82, %if.then.if.end50.sink.split_crit_edge83, %if.then.if.end50.sink.split_crit_edge84, %if.then.if.end50.sink.split_crit_edge85, %if.then.if.end50.sink.split_crit_edge86, %if.then.if.end50.sink.split_crit_edge87
  %sub.sink = phi i8 [ %sub, %if.then27 ], [ 0, %land.lhs.true.if.end50.sink.split_crit_edge ], [ 0, %if.then.if.end50.sink.split_crit_edge ], [ 0, %if.then.if.end50.sink.split_crit_edge82 ], [ 0, %if.then.if.end50.sink.split_crit_edge83 ], [ 0, %if.then.if.end50.sink.split_crit_edge84 ], [ 0, %if.then.if.end50.sink.split_crit_edge85 ], [ 0, %if.then.if.end50.sink.split_crit_edge86 ], [ 0, %if.then.if.end50.sink.split_crit_edge87 ], [ 0, %land.lhs.true38.if.end50.sink.split_crit_edge ], [ 0, %land.lhs.true33.if.end50.sink.split_crit_edge ]
  %running_status_length = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 2, i32 %3, i32 1
  %13 = ptrtoint ptr %running_status_length to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %sub.sink, ptr %running_status_length, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end50.sink.split, %land.lhs.true38.if.end50_crit_edge, %land.lhs.true.if.end50_crit_edge
  %length.0.in = phi i8 [ %5, %land.lhs.true.if.end50_crit_edge ], [ %10, %land.lhs.true38.if.end50_crit_edge ], [ %5, %if.end50.sink.split ]
  %length.0 = zext i8 %length.0.in to i32
  %add51 = or i32 %i.078, 1
  %arrayidx52 = getelementptr i8, ptr %buffer, i32 %add51
  %arrayidx.i = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 2, i32 %3
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usbmidi_maudio_broken_running_status_input, %if.then4.i)) #12
          to label %for.inc [label %if.then4.i], !srcloc !231

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ep, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, ptr noundef %dev5.i, ptr noundef nonnull @.str.16, i32 noundef %3) #12
  br label %for.inc

if.end6.i:                                        ; preds = %if.end50
  %number.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %number.i, align 4
  %22 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ep, align 4
  %input_triggered.i = getelementptr inbounds %struct.snd_usb_midi, ptr %23, i32 0, i32 14
  %div3.i.i = lshr i32 %21, 5
  %arrayidx.i.i = getelementptr i32, ptr %input_triggered.i, i32 %div3.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %21, 31
  %26 = shl nuw i32 1, %and.i.i
  %27 = and i32 %25, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool10.not.i = icmp eq i32 %27, 0
  br i1 %tobool10.not.i, label %if.end6.i.for.inc_crit_edge, label %if.end12.i

if.end6.i.for.inc_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %15, ptr noundef %arrayidx52, i32 noundef %length.0) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end12.i, %if.end6.i.for.inc_crit_edge, %if.then4.i, %do.body.i, %for.body.for.inc_crit_edge
  %add54 = add i32 %i.078, 4
  %add = or i32 %add54, 3
  %cmp = icmp slt i32 %add, %buffer_length
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_us122l_input(ptr nocapture noundef readonly %ep, ptr noundef %buffer, i32 noundef %buffer_length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %buffer_length)
  %cmp.not = icmp eq i32 %buffer_length, 9
  br i1 %cmp.not, label %while.cond.preheader, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

while.cond.preheader:                             ; preds = %entry
  %arrayidx = getelementptr i8, ptr %buffer, i32 7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %1)
  %cmp1 = icmp eq i8 %1, -3
  br i1 %cmp1, label %while.cond.1, label %while.cond.preheader.if.then4.critedge_crit_edge

while.cond.preheader.if.then4.critedge_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4.critedge

while.cond.1:                                     ; preds = %while.cond.preheader
  %arrayidx.1 = getelementptr i8, ptr %buffer, i32 6
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %3)
  %cmp1.1 = icmp eq i8 %3, -3
  br i1 %cmp1.1, label %while.cond.2, label %while.cond.1.if.then4.critedge_crit_edge

while.cond.1.if.then4.critedge_crit_edge:         ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4.critedge

while.cond.2:                                     ; preds = %while.cond.1
  %arrayidx.2 = getelementptr i8, ptr %buffer, i32 5
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %5)
  %cmp1.2 = icmp eq i8 %5, -3
  br i1 %cmp1.2, label %while.cond.3, label %while.cond.2.if.then4.critedge_crit_edge

while.cond.2.if.then4.critedge_crit_edge:         ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4.critedge

while.cond.3:                                     ; preds = %while.cond.2
  %arrayidx.3 = getelementptr i8, ptr %buffer, i32 4
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %7)
  %cmp1.3 = icmp eq i8 %7, -3
  br i1 %cmp1.3, label %while.cond.4, label %while.cond.3.if.then4.critedge_crit_edge

while.cond.3.if.then4.critedge_crit_edge:         ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4.critedge

while.cond.4:                                     ; preds = %while.cond.3
  %arrayidx.4 = getelementptr i8, ptr %buffer, i32 3
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %9)
  %cmp1.4 = icmp eq i8 %9, -3
  br i1 %cmp1.4, label %while.cond.5, label %while.cond.4.if.then4.critedge_crit_edge

while.cond.4.if.then4.critedge_crit_edge:         ; preds = %while.cond.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4.critedge

while.cond.5:                                     ; preds = %while.cond.4
  %arrayidx.5 = getelementptr i8, ptr %buffer, i32 2
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %11)
  %cmp1.5 = icmp eq i8 %11, -3
  br i1 %cmp1.5, label %while.cond.6, label %while.cond.5.if.then4.critedge_crit_edge

while.cond.5.if.then4.critedge_crit_edge:         ; preds = %while.cond.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4.critedge

while.cond.6:                                     ; preds = %while.cond.5
  %arrayidx.6 = getelementptr i8, ptr %buffer, i32 1
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %13)
  %cmp1.6 = icmp eq i8 %13, -3
  br i1 %cmp1.6, label %while.cond.7, label %while.cond.6.if.then4.critedge_crit_edge

while.cond.6.if.then4.critedge_crit_edge:         ; preds = %while.cond.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4.critedge

while.cond.7:                                     ; preds = %while.cond.6
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buffer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %15)
  %cmp1.7 = icmp eq i8 %15, -3
  br i1 %cmp1.7, label %while.cond.7.if.end5_crit_edge, label %while.cond.7.if.then4.critedge_crit_edge

while.cond.7.if.then4.critedge_crit_edge:         ; preds = %while.cond.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4.critedge

while.cond.7.if.end5_crit_edge:                   ; preds = %while.cond.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4.critedge:                                ; preds = %while.cond.7.if.then4.critedge_crit_edge, %while.cond.6.if.then4.critedge_crit_edge, %while.cond.5.if.then4.critedge_crit_edge, %while.cond.4.if.then4.critedge_crit_edge, %while.cond.3.if.then4.critedge_crit_edge, %while.cond.2.if.then4.critedge_crit_edge, %while.cond.1.if.then4.critedge_crit_edge, %while.cond.preheader.if.then4.critedge_crit_edge
  %buffer_length.addr.0.lcssa13 = phi i32 [ 8, %while.cond.preheader.if.then4.critedge_crit_edge ], [ 7, %while.cond.1.if.then4.critedge_crit_edge ], [ 6, %while.cond.2.if.then4.critedge_crit_edge ], [ 5, %while.cond.3.if.then4.critedge_crit_edge ], [ 4, %while.cond.4.if.then4.critedge_crit_edge ], [ 3, %while.cond.5.if.then4.critedge_crit_edge ], [ 2, %while.cond.6.if.then4.critedge_crit_edge ], [ 1, %while.cond.7.if.then4.critedge_crit_edge ]
  %arrayidx.i = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 2, i32 0
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %if.then4.critedge
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usbmidi_us122l_input, %if.then4.i)) #12
          to label %if.end5 [label %if.then4.i], !srcloc !231

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, ptr noundef %dev5.i, ptr noundef nonnull @.str.16, i32 noundef 0) #12
  br label %if.end5

if.end6.i:                                        ; preds = %if.then4.critedge
  %number.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %17, i32 0, i32 2
  %22 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %number.i, align 4
  %24 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ep, align 4
  %input_triggered.i = getelementptr inbounds %struct.snd_usb_midi, ptr %25, i32 0, i32 14
  %div3.i.i = lshr i32 %23, 5
  %arrayidx.i.i = getelementptr i32, ptr %input_triggered.i, i32 %div3.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %23, 31
  %28 = shl nuw i32 1, %and.i.i
  %29 = and i32 %27, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool10.not.i = icmp eq i32 %29, 0
  br i1 %tobool10.not.i, label %if.end6.i.if.end5_crit_edge, label %if.end12.i

if.end6.i.if.end5_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %17, ptr noundef %buffer, i32 noundef %buffer_length.addr.0.lcssa13) #12
  br label %if.end5

if.end5:                                          ; preds = %if.end12.i, %if.end6.i.if.end5_crit_edge, %if.then4.i, %do.body.i, %while.cond.7.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_us122l_output(ptr nocapture noundef %ep, ptr nocapture noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 8, i32 0, i32 2
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 4
  %switch.tableidx = add i32 %7, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 4
  br i1 %8, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.snd_usbmidi_us122l_output, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %count.0 = phi i32 [ %switch.load, %switch.lookup ], [ 2, %if.end.sw.epilog_crit_edge ]
  %substream = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 8, i32 0, i32 1
  %10 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %substream, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %12 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transfer_buffer, align 4
  %call = tail call i32 @snd_rawmidi_transmit(ptr noundef %11, ptr noundef %13, i32 noundef %count.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then3, label %if.end7

if.then3:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %active, align 4
  br label %cleanup

if.end7:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %transfer_buffer, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %call
  %max_transfer = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 4
  %17 = ptrtoint ptr %max_transfer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_transfer, align 4
  %sub = sub i32 %18, %call
  %19 = call ptr @memset(ptr %add.ptr, i32 253, i32 %sub)
  %20 = load i32, ptr %max_transfer, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %21 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %transfer_buffer_length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_usbmidi_switch_roland_altsetting(ptr noundef %umidi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iface = getelementptr inbounds %struct.snd_usb_midi, ptr %umidi, i32 0, i32 2
  %0 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iface, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %bNumEndpoints = getelementptr %struct.usb_host_interface, ptr %5, i32 1, i32 0, i32 4
  %6 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bNumEndpoints, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp1.not = icmp eq i8 %7, 2
  br i1 %cmp1.not, label %lor.lhs.false3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false3:                                   ; preds = %if.end
  %endpoint = getelementptr %struct.usb_host_interface, ptr %5, i32 1, i32 3
  %8 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %endpoint, align 4
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bmAttributes, align 1
  %12 = and i8 %11, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp7 = icmp eq i8 %12, 3
  br i1 %cmp7, label %lor.lhs.false3.do.body_crit_edge, label %lor.lhs.false9

lor.lhs.false3.do.body_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.lhs.false9:                                   ; preds = %lor.lhs.false3
  %bmAttributes13 = getelementptr %struct.usb_host_endpoint, ptr %9, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %bmAttributes13 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bmAttributes13, align 1
  %15 = and i8 %14, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp16 = icmp eq i8 %15, 3
  br i1 %cmp16, label %lor.lhs.false9.do.body_crit_edge, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false9.do.body_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false9.do.body_crit_edge, %lor.lhs.false3.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usbmidi_switch_roland_altsetting.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usbmidi_switch_roland_altsetting, %if.then23)) #12
          to label %do.end [label %if.then23], !srcloc !231

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %umidi, align 4
  %dev24 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  %bAlternateSetting = getelementptr %struct.usb_host_interface, ptr %5, i32 1, i32 0, i32 3
  %18 = ptrtoint ptr %bAlternateSetting to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bAlternateSetting, align 1
  %conv25 = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usbmidi_switch_roland_altsetting.__UNIQUE_ID_ddebug247, ptr noundef %dev24, ptr noundef nonnull @.str.28, i32 noundef %conv25) #12
  br label %do.end

do.end:                                           ; preds = %if.then23, %do.body
  %20 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %umidi, align 4
  %bInterfaceNumber = getelementptr %struct.usb_host_interface, ptr %5, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bInterfaceNumber, align 1
  %conv28 = zext i8 %23 to i32
  %bAlternateSetting29 = getelementptr %struct.usb_host_interface, ptr %5, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %bAlternateSetting29 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bAlternateSetting29, align 1
  %conv30 = zext i8 %25 to i32
  %call31 = tail call i32 @usb_set_interface(ptr noundef %21, i32 noundef %conv28, i32 noundef %conv30) #12
  %call32 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @roland_load_ctl, ptr noundef %umidi) #12
  %roland_load_ctl = getelementptr inbounds %struct.snd_usb_midi, ptr %umidi, i32 0, i32 18
  %26 = ptrtoint ptr %roland_load_ctl to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call32, ptr %roland_load_ctl, align 4
  %card = getelementptr inbounds %struct.snd_usb_midi, ptr %umidi, i32 0, i32 1
  %27 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card, align 4
  %call34 = tail call i32 @snd_ctl_add(ptr noundef %28, ptr noundef %call32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then37:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %roland_load_ctl to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %roland_load_ctl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %do.end.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roland_load_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %info, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @roland_load_info.names) #12
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @roland_load_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %value) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %2 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %value1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roland_load_put(ptr nocapture noundef %kcontrol, ptr nocapture noundef readonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %0 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.snd_usb_midi, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %4 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value1, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp4 = icmp ne i32 %5, %7
  %conv = zext i1 %cmp4 to i32
  br i1 %cmp4, label %if.then5, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %private_value, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end9 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_midiman_input(ptr nocapture noundef readonly %ep, ptr noundef %buffer, i32 noundef %buffer_length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %buffer_length)
  %cmp20 = icmp sgt i32 %buffer_length, 3
  br i1 %cmp20, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %add22 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 3, %entry.for.body_crit_edge ]
  %i.021 = phi i32 [ %add11, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buffer, i32 %add22
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp2.not = icmp eq i8 %1, 0
  br i1 %cmp2.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  %conv = zext i8 %1 to i32
  %2 = lshr i32 %conv, 4
  %and = and i32 %conv, 3
  %arrayidx10 = getelementptr i8, ptr %buffer, i32 %i.021
  %arrayidx.i = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 2, i32 %2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usbmidi_midiman_input, %if.then4.i)) #12
          to label %for.inc [label %if.then4.i], !srcloc !231

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ep, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, ptr noundef %dev5.i, ptr noundef nonnull @.str.16, i32 noundef %2) #12
  br label %for.inc

if.end6.i:                                        ; preds = %if.then
  %number.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %number.i, align 4
  %11 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ep, align 4
  %input_triggered.i = getelementptr inbounds %struct.snd_usb_midi, ptr %12, i32 0, i32 14
  %div3.i.i = lshr i32 %10, 5
  %arrayidx.i.i = getelementptr i32, ptr %input_triggered.i, i32 %div3.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %10, 31
  %15 = shl nuw i32 1, %and.i.i
  %16 = and i32 %14, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not.i = icmp eq i32 %16, 0
  br i1 %tobool10.not.i, label %if.end6.i.for.inc_crit_edge, label %if.end12.i

if.end6.i.for.inc_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %4, ptr noundef %arrayidx10, i32 noundef %and) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end12.i, %if.end6.i.for.inc_crit_edge, %if.then4.i, %do.body.i, %for.body.for.inc_crit_edge
  %add11 = add i32 %i.021, 4
  %add = or i32 %add11, 3
  %cmp = icmp slt i32 %add, %buffer_length
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_usbmidi_output_midiman_packet(ptr nocapture noundef %urb, i8 noundef zeroext %p0, i8 noundef zeroext %p1, i8 noundef zeroext %p2, i8 noundef zeroext %p3) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %0 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer_buffer, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %2 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %transfer_buffer_length, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %p1, ptr %add.ptr, align 1
  %arrayidx1 = getelementptr i8, ptr %add.ptr, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %p2, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %add.ptr, i32 2
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %p3, ptr %arrayidx2, align 1
  %and = and i8 %p0, -16
  %7 = and i8 %p0, 15
  %and4 = zext i8 %7 to i32
  %arrayidx5 = getelementptr [16 x i8], ptr @snd_usbmidi_cin_length, i32 0, i32 %and4
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 1
  %or = or i8 %9, %and
  %arrayidx8 = getelementptr i8, ptr %add.ptr, i32 3
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %or, ptr %arrayidx8, align 1
  %11 = load i32, ptr %transfer_buffer_length, align 4
  %add = add i32 %11, 4
  store i32 %add, ptr %transfer_buffer_length, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_novation_input(ptr nocapture noundef readonly %ep, ptr noundef %buffer, i32 noundef %buffer_length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %buffer_length)
  %cmp = icmp slt i32 %buffer_length, 2
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buffer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false1

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %buffer_length)
  %cmp3.not = icmp ult i32 %conv, %buffer_length
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false1.return_crit_edge

lor.lhs.false1.return_crit_edge:                  ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %lor.lhs.false1
  %arrayidx5 = getelementptr i8, ptr %buffer, i32 2
  %sub = add nsw i32 %conv, -1
  %arrayidx.i = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usbmidi_novation_input, %if.then4.i)) #12
          to label %return [label %if.then4.i], !srcloc !231

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, ptr noundef %dev5.i, ptr noundef nonnull @.str.16, i32 noundef 0) #12
  br label %return

if.end6.i:                                        ; preds = %if.end
  %number.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number.i, align 4
  %10 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep, align 4
  %input_triggered.i = getelementptr inbounds %struct.snd_usb_midi, ptr %11, i32 0, i32 14
  %div3.i.i = lshr i32 %9, 5
  %arrayidx.i.i = getelementptr i32, ptr %input_triggered.i, i32 %div3.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %9, 31
  %14 = shl nuw i32 1, %and.i.i
  %15 = and i32 %13, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not.i = icmp eq i32 %15, 0
  br i1 %tobool10.not.i, label %if.end6.i.return_crit_edge, label %if.end12.i

if.end6.i.return_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %3, ptr noundef %arrayidx5, i32 noundef %sub) #12
  br label %return

return:                                           ; preds = %if.end12.i, %if.end6.i.return_crit_edge, %if.then4.i, %do.body.i, %lor.lhs.false1.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_novation_output(ptr nocapture noundef %ep, ptr nocapture noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 8, i32 0, i32 2
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %transfer_buffer1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer1, align 4
  %substream = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 8, i32 0, i32 1
  %4 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %substream, align 4
  %arrayidx4 = getelementptr i8, ptr %3, i32 2
  %max_transfer = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 4
  %6 = ptrtoint ptr %max_transfer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_transfer, align 4
  %sub = add i32 %7, -2
  %call = tail call i32 @snd_rawmidi_transmit(ptr noundef %5, ptr noundef %arrayidx4, i32 noundef %sub) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %active, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 1
  %conv = trunc i32 %call to i8
  %arrayidx11 = getelementptr i8, ptr %3, i32 1
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx11, align 1
  %add = add nuw i32 %call, 2
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %11 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %transfer_buffer_length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_raw_input(ptr nocapture noundef readonly %ep, ptr noundef %buffer, i32 noundef %buffer_length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 2, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usbmidi_raw_input, %if.then4.i)) #12
          to label %snd_usbmidi_input_data.exit [label %if.then4.i], !srcloc !231

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, ptr noundef %dev5.i, ptr noundef nonnull @.str.16, i32 noundef 0) #12
  br label %snd_usbmidi_input_data.exit

if.end6.i:                                        ; preds = %entry
  %number.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number.i, align 4
  %8 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ep, align 4
  %input_triggered.i = getelementptr inbounds %struct.snd_usb_midi, ptr %9, i32 0, i32 14
  %div3.i.i = lshr i32 %7, 5
  %arrayidx.i.i = getelementptr i32, ptr %input_triggered.i, i32 %div3.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %7, 31
  %12 = shl nuw i32 1, %and.i.i
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not.i = icmp eq i32 %13, 0
  br i1 %tobool10.not.i, label %if.end6.i.snd_usbmidi_input_data.exit_crit_edge, label %if.end12.i

if.end6.i.snd_usbmidi_input_data.exit_crit_edge:  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_usbmidi_input_data.exit

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %1, ptr noundef %buffer, i32 noundef %buffer_length) #12
  br label %snd_usbmidi_input_data.exit

snd_usbmidi_input_data.exit:                      ; preds = %if.end12.i, %if.end6.i.snd_usbmidi_input_data.exit_crit_edge, %if.then4.i, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_raw_output(ptr nocapture noundef %ep, ptr nocapture noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 8, i32 0, i32 2
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %substream = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 8, i32 0, i32 1
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %max_transfer = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 4
  %6 = ptrtoint ptr %max_transfer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_transfer, align 4
  %call = tail call i32 @snd_rawmidi_transmit(ptr noundef %3, ptr noundef %5, i32 noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %active, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %9 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call, ptr %transfer_buffer_length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_emagic_input(ptr nocapture noundef %ep, ptr noundef %buffer, i32 noundef %buffer_length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buffer_length)
  %cmp70 = icmp sgt i32 %buffer_length, 0
  br i1 %cmp70, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.071 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buffer, i32 %i.071
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp1 = icmp eq i8 %1, -1
  br i1 %cmp1, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, %buffer_length
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %buffer_length.addr.0 = phi i32 [ %buffer_length, %entry.for.end_crit_edge ], [ %i.071, %for.body.for.end_crit_edge ], [ %buffer_length, %for.inc.for.end_crit_edge ]
  %seen_f5 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 3
  %2 = ptrtoint ptr %seen_f5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %seen_f5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.end.while.cond_crit_edge, label %for.end.switch_port_crit_edge

for.end.switch_port_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %switch_port

for.end.while.cond_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.cond:                                       ; preds = %if.end40, %for.end.while.cond_crit_edge
  %buffer.addr.0 = phi ptr [ %buffer.addr.2, %if.end40 ], [ %buffer, %for.end.while.cond_crit_edge ]
  %buffer_length.addr.1 = phi i32 [ %buffer_length.addr.3, %if.end40 ], [ %buffer_length.addr.0, %for.end.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buffer_length.addr.1)
  %cmp5 = icmp sgt i32 %buffer_length.addr.1, 0
  br i1 %cmp5, label %while.cond.for.body10_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.cond.for.body10_crit_edge:                  ; preds = %while.cond
  br label %for.body10

for.body10:                                       ; preds = %for.inc17.for.body10_crit_edge, %while.cond.for.body10_crit_edge
  %i.174 = phi i32 [ %inc18, %for.inc17.for.body10_crit_edge ], [ 0, %while.cond.for.body10_crit_edge ]
  %arrayidx11 = getelementptr i8, ptr %buffer.addr.0, i32 %i.174
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -11, i8 %5)
  %cmp13 = icmp eq i8 %5, -11
  br i1 %cmp13, label %for.body10.for.end19_crit_edge, label %for.inc17

for.body10.for.end19_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end19

for.inc17:                                        ; preds = %for.body10
  %inc18 = add nuw nsw i32 %i.174, 1
  %exitcond77.not = icmp eq i32 %inc18, %buffer_length.addr.1
  br i1 %exitcond77.not, label %for.inc17.for.end19_crit_edge, label %for.inc17.for.body10_crit_edge

for.inc17.for.body10_crit_edge:                   ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body10

for.inc17.for.end19_crit_edge:                    ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end19

for.end19:                                        ; preds = %for.inc17.for.end19_crit_edge, %for.body10.for.end19_crit_edge
  %i.1.lcssa = phi i32 [ %i.174, %for.body10.for.end19_crit_edge ], [ %buffer_length.addr.1, %for.inc17.for.end19_crit_edge ]
  %current_port = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 7
  %6 = ptrtoint ptr %current_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %current_port, align 4
  %arrayidx.i = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 2, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %for.end19
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usbmidi_emagic_input, %if.then4.i)) #12
          to label %snd_usbmidi_input_data.exit [label %if.then4.i], !srcloc !231

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, ptr noundef %dev5.i, ptr noundef nonnull @.str.16, i32 noundef %7) #12
  br label %snd_usbmidi_input_data.exit

if.end6.i:                                        ; preds = %for.end19
  %number.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %number.i, align 4
  %16 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ep, align 4
  %input_triggered.i = getelementptr inbounds %struct.snd_usb_midi, ptr %17, i32 0, i32 14
  %div3.i.i = lshr i32 %15, 5
  %arrayidx.i.i = getelementptr i32, ptr %input_triggered.i, i32 %div3.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %15, 31
  %20 = shl nuw i32 1, %and.i.i
  %21 = and i32 %19, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool10.not.i = icmp eq i32 %21, 0
  br i1 %tobool10.not.i, label %if.end6.i.snd_usbmidi_input_data.exit_crit_edge, label %if.end12.i

if.end6.i.snd_usbmidi_input_data.exit_crit_edge:  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_usbmidi_input_data.exit

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %9, ptr noundef %buffer.addr.0, i32 noundef %i.1.lcssa) #12
  br label %snd_usbmidi_input_data.exit

snd_usbmidi_input_data.exit:                      ; preds = %if.end12.i, %if.end6.i.snd_usbmidi_input_data.exit_crit_edge, %if.then4.i, %do.body.i
  %sub = sub i32 %buffer_length.addr.1, %i.1.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp20 = icmp slt i32 %sub, 1
  br i1 %cmp20, label %snd_usbmidi_input_data.exit.while.end_crit_edge, label %if.end23

snd_usbmidi_input_data.exit.while.end_crit_edge:  ; preds = %snd_usbmidi_input_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end23:                                         ; preds = %snd_usbmidi_input_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %buffer.addr.0, i32 %i.1.lcssa
  %22 = ptrtoint ptr %seen_f5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %seen_f5, align 4
  %incdec.ptr = getelementptr i8, ptr %add.ptr, i32 1
  %dec = add nsw i32 %sub, -1
  br label %switch_port

switch_port:                                      ; preds = %if.end23, %for.end.switch_port_crit_edge
  %buffer.addr.1 = phi ptr [ %buffer, %for.end.switch_port_crit_edge ], [ %incdec.ptr, %if.end23 ]
  %buffer_length.addr.2 = phi i32 [ %buffer_length.addr.0, %for.end.switch_port_crit_edge ], [ %dec, %if.end23 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %buffer_length.addr.2)
  %cmp25 = icmp slt i32 %buffer_length.addr.2, 1
  br i1 %cmp25, label %switch_port.while.end_crit_edge, label %if.end28

switch_port.while.end_crit_edge:                  ; preds = %switch_port
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end28:                                         ; preds = %switch_port
  %23 = ptrtoint ptr %buffer.addr.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %buffer.addr.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp31 = icmp sgt i8 %24, -1
  br i1 %cmp31, label %if.then33, label %if.end28.if.end40_crit_edge

if.end28.if.end40_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %25 = add nuw i8 %24, 15
  %26 = and i8 %25, 15
  %and = zext i8 %26 to i32
  %current_port37 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 7
  %27 = ptrtoint ptr %current_port37 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and, ptr %current_port37, align 4
  %incdec.ptr38 = getelementptr i8, ptr %buffer.addr.1, i32 1
  %dec39 = add nsw i32 %buffer_length.addr.2, -1
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %if.end28.if.end40_crit_edge
  %buffer.addr.2 = phi ptr [ %incdec.ptr38, %if.then33 ], [ %buffer.addr.1, %if.end28.if.end40_crit_edge ]
  %buffer_length.addr.3 = phi i32 [ %dec39, %if.then33 ], [ %buffer_length.addr.2, %if.end28.if.end40_crit_edge ]
  %28 = ptrtoint ptr %seen_f5 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %seen_f5, align 4
  br label %while.cond

while.end:                                        ; preds = %switch_port.while.end_crit_edge, %snd_usbmidi_input_data.exit.while.end_crit_edge, %while.cond.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_emagic_output(ptr nocapture noundef %ep, ptr nocapture noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %current_port = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 9
  %0 = ptrtoint ptr %current_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_port, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %max_transfer = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 4
  %4 = ptrtoint ptr %max_transfer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_transfer, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.089 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %buf_free.088 = phi i32 [ %5, %entry ], [ %buf_free.3, %for.inc.for.body_crit_edge ]
  %buf.087 = phi ptr [ %3, %entry ], [ %buf.3, %for.inc.for.body_crit_edge ]
  %add = add i32 %i.089, %1
  %and = and i32 %add, 15
  %active = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 8, i32 %and, i32 2
  %6 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %substream = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 8, i32 %and, i32 1
  %8 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %substream, align 4
  %call = tail call i32 @snd_rawmidi_transmit_peek(ptr noundef %9, ptr noundef %buf.087, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp1.not = icmp eq i32 %call, 1
  br i1 %cmp1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %active, align 4
  br label %for.inc

if.end4:                                          ; preds = %if.end
  %11 = ptrtoint ptr %current_port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %current_port, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %12)
  %cmp6.not = icmp eq i32 %and, %12
  br i1 %cmp6.not, label %if.end4.if.end16_crit_edge, label %if.then7

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %buf_free.088)
  %cmp8 = icmp slt i32 %buf_free.088, 2
  br i1 %cmp8, label %if.then7.for.end_crit_edge, label %if.end10

if.then7.for.end_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end10:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %current_port to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %current_port, align 4
  %14 = ptrtoint ptr %buf.087 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -11, ptr %buf.087, align 1
  %15 = trunc i32 %add to i8
  %16 = add i8 %15, 1
  %conv = and i8 %16, 15
  %arrayidx15 = getelementptr i8, ptr %buf.087, i32 1
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %arrayidx15, align 1
  %add.ptr = getelementptr i8, ptr %buf.087, i32 2
  %sub = add nsw i32 %buf_free.088, -2
  br label %if.end16

if.end16:                                         ; preds = %if.end10, %if.end4.if.end16_crit_edge
  %buf.1 = phi ptr [ %add.ptr, %if.end10 ], [ %buf.087, %if.end4.if.end16_crit_edge ]
  %buf_free.1 = phi i32 [ %sub, %if.end10 ], [ %buf_free.088, %if.end4.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %buf_free.1)
  %cmp17 = icmp slt i32 %buf_free.1, 1
  br i1 %cmp17, label %if.end16.if.end40_crit_edge, label %if.end20

if.end16.if.end40_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.end20:                                         ; preds = %if.end16
  %18 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %substream, align 4
  %call22 = tail call i32 @snd_rawmidi_transmit(ptr noundef %19, ptr noundef %buf.1, i32 noundef %buf_free.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp sgt i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end20.for.inc_crit_edge

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then25:                                        ; preds = %if.end20
  %add.ptr26 = getelementptr i8, ptr %buf.1, i32 %call22
  %sub27 = sub nsw i32 %buf_free.1, %call22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub27)
  %cmp28 = icmp slt i32 %sub27, 1
  br i1 %cmp28, label %if.then25.if.end40_crit_edge, label %if.then25.for.inc_crit_edge

if.then25.for.inc_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then25.if.end40_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

for.inc:                                          ; preds = %if.then25.for.inc_crit_edge, %if.end20.for.inc_crit_edge, %if.then2, %for.body.for.inc_crit_edge
  %buf.3 = phi ptr [ %buf.087, %if.then2 ], [ %buf.087, %for.body.for.inc_crit_edge ], [ %add.ptr26, %if.then25.for.inc_crit_edge ], [ %buf.1, %if.end20.for.inc_crit_edge ]
  %buf_free.3 = phi i32 [ %buf_free.088, %if.then2 ], [ %buf_free.088, %for.body.for.inc_crit_edge ], [ %sub27, %if.then25.for.inc_crit_edge ], [ %buf_free.1, %if.end20.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then7.for.end_crit_edge
  %buf.0.lcssa = phi ptr [ %buf.087, %if.then7.for.end_crit_edge ], [ %buf.3, %for.inc.for.end_crit_edge ]
  %buf_free.0.lcssa = phi i32 [ %buf_free.088, %if.then7.for.end_crit_edge ], [ %buf_free.3, %for.inc.for.end_crit_edge ]
  %20 = ptrtoint ptr %max_transfer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_transfer, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %buf_free.0.lcssa, i32 %21)
  %cmp35 = icmp slt i32 %buf_free.0.lcssa, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_free.0.lcssa)
  %cmp37 = icmp sgt i32 %buf_free.0.lcssa, 0
  %or.cond = and i1 %cmp37, %cmp35
  br i1 %or.cond, label %if.then39, label %for.end.if.end40_crit_edge

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then39:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %buf.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %buf.0.lcssa, align 1
  %dec = add nsw i32 %buf_free.0.lcssa, -1
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %for.end.if.end40_crit_edge, %if.then25.if.end40_crit_edge, %if.end16.if.end40_crit_edge
  %buf_free.5 = phi i32 [ %dec, %if.then39 ], [ %buf_free.0.lcssa, %for.end.if.end40_crit_edge ], [ %sub27, %if.then25.if.end40_crit_edge ], [ %buf_free.1, %if.end16.if.end40_crit_edge ]
  %23 = ptrtoint ptr %max_transfer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_transfer, align 4
  %sub42 = sub i32 %24, %buf_free.5
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %25 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub42, ptr %transfer_buffer_length, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_emagic_init_out(ptr nocapture noundef readonly %ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmemdup(ptr noundef nonnull @snd_usbmidi_emagic_init_out.init_data, i32 noundef 9, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.send_bulk_static_data.exit_crit_edge, label %if.end.i

entry.send_bulk_static_data.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_bulk_static_data.exit

if.end.i:                                         ; preds = %entry
  %urbs.i = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %urbs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %urbs.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then2.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %pipe.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipe.i, align 4
  %call6.i = tail call i32 @usb_bulk_msg(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %call.i, i32 noundef 9, ptr noundef null, i32 noundef 250) #12
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then2.i, %if.end.i.if.end7.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call.i) #12
  br label %send_bulk_static_data.exit

send_bulk_static_data.exit:                       ; preds = %if.end7.i, %entry.send_bulk_static_data.exit_crit_edge
  %call.i3 = tail call ptr @kmemdup(ptr noundef nonnull @snd_usbmidi_emagic_init_out.init_data, i32 noundef 9, i32 noundef 3264) #12
  %tobool.not.i4 = icmp eq ptr %call.i3, null
  br i1 %tobool.not.i4, label %send_bulk_static_data.exit.send_bulk_static_data.exit12_crit_edge, label %if.end.i7

send_bulk_static_data.exit.send_bulk_static_data.exit12_crit_edge: ; preds = %send_bulk_static_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_bulk_static_data.exit12

if.end.i7:                                        ; preds = %send_bulk_static_data.exit
  %urbs.i5 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 1
  %8 = ptrtoint ptr %urbs.i5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urbs.i5, align 4
  %tobool1.not.i6 = icmp eq ptr %9, null
  br i1 %tobool1.not.i6, label %if.end.i7.if.end7.i11_crit_edge, label %if.then2.i10

if.end.i7.if.end7.i11_crit_edge:                  ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i11

if.then2.i10:                                     ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %pipe.i8 = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 10
  %14 = ptrtoint ptr %pipe.i8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pipe.i8, align 4
  %call6.i9 = tail call i32 @usb_bulk_msg(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %call.i3, i32 noundef 9, ptr noundef null, i32 noundef 250) #12
  br label %if.end7.i11

if.end7.i11:                                      ; preds = %if.then2.i10, %if.end.i7.if.end7.i11_crit_edge
  tail call void @kfree(ptr noundef nonnull %call.i3) #12
  br label %send_bulk_static_data.exit12

send_bulk_static_data.exit12:                     ; preds = %if.end7.i11, %send_bulk_static_data.exit.send_bulk_static_data.exit12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_emagic_finish_out(ptr nocapture noundef readonly %ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmemdup(ptr noundef nonnull @snd_usbmidi_emagic_finish_out.finish_data, i32 noundef 10, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.send_bulk_static_data.exit_crit_edge, label %if.end.i

entry.send_bulk_static_data.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_bulk_static_data.exit

if.end.i:                                         ; preds = %entry
  %urbs.i = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %urbs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %urbs.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then2.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %pipe.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipe.i, align 4
  %call6.i = tail call i32 @usb_bulk_msg(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %call.i, i32 noundef 10, ptr noundef null, i32 noundef 250) #12
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then2.i, %if.end.i.if.end7.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call.i) #12
  br label %send_bulk_static_data.exit

send_bulk_static_data.exit:                       ; preds = %if.end7.i, %entry.send_bulk_static_data.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit_peek(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_cme_input(ptr nocapture noundef readonly %ep, ptr noundef %buffer, i32 noundef %buffer_length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %buffer_length)
  %cmp = icmp slt i32 %buffer_length, 2
  br i1 %cmp, label %entry.if.end_crit_edge, label %lor.lhs.false

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buffer, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and)
  %cmp1.not = icmp eq i32 %and, 15
  br i1 %cmp1.not, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %buffer_length)
  %cmp20.i = icmp ugt i32 %buffer_length, 3
  br i1 %cmp20.i, label %if.then.for.body.i_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.021.i = phi i32 [ %add11.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %buffer, i32 %i.021.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp1.not.i = icmp eq i8 %3, 0
  br i1 %cmp1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %conv.i = zext i8 %3 to i32
  %4 = lshr i32 %conv.i, 4
  %and.i = and i32 %conv.i, 15
  %arrayidx7.i = getelementptr [16 x i8], ptr @snd_usbmidi_cin_length, i32 0, i32 %and.i
  %5 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %6 to i32
  %add9.i = or i32 %i.021.i, 1
  %arrayidx10.i = getelementptr i8, ptr %buffer, i32 %add9.i
  %arrayidx.i.i = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 2, i32 %4
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.end6.i.i

do.body.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usbmidi_cme_input, %if.then4.i.i)) #12
          to label %for.inc.i [label %if.then4.i.i], !srcloc !231

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ep, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %dev5.i.i = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, ptr noundef %dev5.i.i, ptr noundef nonnull @.str.16, i32 noundef %4) #12
  br label %for.inc.i

if.end6.i.i:                                      ; preds = %if.then.i
  %number.i.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %number.i.i, align 4
  %15 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ep, align 4
  %input_triggered.i.i = getelementptr inbounds %struct.snd_usb_midi, ptr %16, i32 0, i32 14
  %div3.i.i.i = lshr i32 %14, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %input_triggered.i.i, i32 %div3.i.i.i
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %14, 31
  %19 = shl nuw i32 1, %and.i.i.i
  %20 = and i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool10.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool10.not.i.i, label %if.end6.i.i.for.inc.i_crit_edge, label %if.end12.i.i

if.end6.i.i.for.inc.i_crit_edge:                  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end12.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i.i = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %8, ptr noundef %arrayidx10.i, i32 noundef %conv8.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i.i, %if.end6.i.i.for.inc.i_crit_edge, %if.then4.i.i, %do.body.i.i, %for.body.i.for.inc.i_crit_edge
  %add11.i = add i32 %i.021.i, 4
  %add.i = or i32 %add11.i, 3
  %cmp.i = icmp slt i32 %add.i, %buffer_length
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.else:                                          ; preds = %lor.lhs.false
  %21 = lshr i32 %conv, 4
  %arrayidx5 = getelementptr i8, ptr %buffer, i32 1
  %sub = add nsw i32 %buffer_length, -1
  %arrayidx.i12 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 2, i32 %21
  %22 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i12, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usbmidi_cme_input, %if.then4.i)) #12
          to label %if.end [label %if.then4.i], !srcloc !231

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ep, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, ptr noundef %dev5.i, ptr noundef nonnull @.str.16, i32 noundef %21) #12
  br label %if.end

if.end6.i:                                        ; preds = %if.else
  %number.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %23, i32 0, i32 2
  %28 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %number.i, align 4
  %30 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ep, align 4
  %input_triggered.i = getelementptr inbounds %struct.snd_usb_midi, ptr %31, i32 0, i32 14
  %div3.i.i = lshr i32 %29, 5
  %arrayidx.i.i13 = getelementptr i32, ptr %input_triggered.i, i32 %div3.i.i
  %32 = ptrtoint ptr %arrayidx.i.i13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.i.i13, align 4
  %and.i.i = and i32 %29, 31
  %34 = shl nuw i32 1, %and.i.i
  %35 = and i32 %33, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool10.not.i = icmp eq i32 %35, 0
  br i1 %tobool10.not.i, label %if.end6.i.if.end_crit_edge, label %if.end12.i

if.end6.i.if.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %23, ptr noundef %arrayidx5, i32 noundef %sub) #12
  br label %if.end

if.end:                                           ; preds = %if.end12.i, %if.end6.i.if.end_crit_edge, %if.then4.i, %do.body.i, %for.inc.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_akai_input(ptr nocapture noundef readonly %ep, ptr noundef %buffer, i32 noundef %buffer_length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buffer_length)
  %cmp20.not = icmp eq i32 %buffer_length, 0
  br i1 %cmp20.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %arrayidx.i = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 2, i32 0
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %pos.021 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %if.end.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buffer, i32 %pos.021
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 15
  %inc = add nuw i32 %pos.021, 1
  %add = add i32 %and, %inc
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %buffer_length)
  %cmp3.not = icmp ule i32 %add, %buffer_length
  %2 = lshr i32 %conv, 4
  %sub = add nsw i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp5 = icmp ult i32 %sub, 2
  %or.cond = select i1 %cmp3.not, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %while.body
  %arrayidx7 = getelementptr i8, ptr %buffer, i32 %inc
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usbmidi_akai_input, %if.then4.i)) #12
          to label %if.end [label %if.then4.i], !srcloc !231

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ep, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, ptr noundef %dev5.i, ptr noundef nonnull @.str.16, i32 noundef 0) #12
  br label %if.end

if.end6.i:                                        ; preds = %if.then
  %number.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %number.i, align 4
  %11 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ep, align 4
  %input_triggered.i = getelementptr inbounds %struct.snd_usb_midi, ptr %12, i32 0, i32 14
  %div3.i.i = lshr i32 %10, 5
  %arrayidx.i.i = getelementptr i32, ptr %input_triggered.i, i32 %div3.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %10, 31
  %15 = shl nuw i32 1, %and.i.i
  %16 = and i32 %14, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not.i = icmp eq i32 %16, 0
  br i1 %tobool10.not.i, label %if.end6.i.if.end_crit_edge, label %if.end12.i

if.end6.i.if.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %4, ptr noundef %arrayidx7, i32 noundef %and) #12
  br label %if.end

if.end:                                           ; preds = %if.end12.i, %if.end6.i.if.end_crit_edge, %if.then4.i, %do.body.i, %while.body.if.end_crit_edge
  %cmp = icmp ult i32 %add, %buffer_length
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_akai_output(ptr nocapture noundef %ep, ptr nocapture noundef %urb) #0 align 64 {
entry:
  %tmp = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %tmp) #12
  %substream1 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 8, i32 0, i32 1
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 9)
  %1 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %substream1, align 4
  %active = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 8, i32 0, i32 2
  %3 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %5 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %transfer_buffer_length, align 4
  %max_transfer = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %ep, i32 0, i32 4
  %7 = ptrtoint ptr %max_transfer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_transfer, align 4
  %sub4 = add i32 %8, -10
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %sub4)
  %cmp118119 = icmp ult i32 %6, %sub4
  br i1 %cmp118119, label %while.body.lr.ph.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.lr.ph.preheader:                       ; preds = %if.end
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %9 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %transfer_buffer, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 %6
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then50.while.body.lr.ph_crit_edge, %while.body.lr.ph.preheader
  %msg.0.ph120 = phi ptr [ %add.ptr60, %if.then50.while.body.lr.ph_crit_edge ], [ %add.ptr, %while.body.lr.ph.preheader ]
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call = call i32 @snd_rawmidi_transmit_peek(ptr noundef %2, ptr noundef nonnull %tmp, i32 noundef 9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp12113 = icmp sgt i32 %call, 0
  br i1 %cmp12113, label %while.body.land.rhs_crit_edge, label %while.body.cleanup.sink.split_crit_edge

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %while.body.land.rhs_crit_edge
  %pos.0114 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %while.body.land.rhs_crit_edge ]
  %arrayidx13 = getelementptr [9 x i8], ptr %tmp, i32 0, i32 %pos.0114
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %12)
  %cmp14.not = icmp eq i8 %12, -16
  br i1 %cmp14.not, label %land.rhs.for.end_crit_edge, label %for.inc

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %land.rhs
  %inc = add nuw nsw i32 %pos.0114, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %pos.0.lcssa = phi i32 [ %pos.0114, %land.rhs.for.end_crit_edge ], [ %call, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos.0.lcssa)
  %cmp16.not = icmp eq i32 %pos.0.lcssa, 0
  br i1 %cmp16.not, label %for.cond21.preheader, label %for.end.while.cond.backedge_crit_edge

for.end.while.cond.backedge_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

for.cond21.preheader:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp22116 = icmp sgt i32 %call, 1
  br i1 %cmp22116, label %for.cond21.preheader.land.rhs24_crit_edge, label %for.cond21.preheader.cleanup.sink.split_crit_edge

for.cond21.preheader.cleanup.sink.split_crit_edge: ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

for.cond21.preheader.land.rhs24_crit_edge:        ; preds = %for.cond21.preheader
  br label %land.rhs24

while.cond.backedge:                              ; preds = %if.end61.while.cond.backedge_crit_edge, %land.lhs.true.critedge.while.cond.backedge_crit_edge, %for.end.while.cond.backedge_crit_edge
  %pos.0.lcssa.sink = phi i32 [ %end.0117, %land.lhs.true.critedge.while.cond.backedge_crit_edge ], [ %call, %if.end61.while.cond.backedge_crit_edge ], [ %pos.0.lcssa, %for.end.while.cond.backedge_crit_edge ]
  %call19 = call i32 @snd_rawmidi_transmit_ack(ptr noundef %2, i32 noundef %pos.0.lcssa.sink) #12
  %13 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %transfer_buffer_length, align 4
  %cmp = icmp ult i32 %14, %sub4
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.cleanup_crit_edge

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

land.rhs24:                                       ; preds = %for.inc31.land.rhs24_crit_edge, %for.cond21.preheader.land.rhs24_crit_edge
  %end.0117 = phi i32 [ %inc32, %for.inc31.land.rhs24_crit_edge ], [ 1, %for.cond21.preheader.land.rhs24_crit_edge ]
  %arrayidx25 = getelementptr [9 x i8], ptr %tmp, i32 0, i32 %end.0117
  %15 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %16)
  %cmp27 = icmp ult i8 %16, -16
  br i1 %cmp27, label %for.inc31, label %land.lhs.true.critedge

for.inc31:                                        ; preds = %land.rhs24
  %inc32 = add nuw nsw i32 %end.0117, 1
  %exitcond124.not = icmp eq i32 %inc32, %call
  br i1 %exitcond124.not, label %for.inc31.if.end61_crit_edge, label %for.inc31.land.rhs24_crit_edge

for.inc31.land.rhs24_crit_edge:                   ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs24

for.inc31.if.end61_crit_edge:                     ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

land.lhs.true.critedge:                           ; preds = %land.rhs24
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %16, label %land.lhs.true.critedge.if.end61_crit_edge [
    i8 -16, label %land.lhs.true.critedge.while.cond.backedge_crit_edge
    i8 -9, label %if.then50
  ]

land.lhs.true.critedge.while.cond.backedge_crit_edge: ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

land.lhs.true.critedge.if.end61_crit_edge:        ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then50:                                        ; preds = %land.lhs.true.critedge
  %add = add nuw nsw i32 %end.0117, 1
  %18 = trunc i32 %add to i8
  %conv51 = or i8 %18, 16
  %19 = ptrtoint ptr %msg.0.ph120 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv51, ptr %msg.0.ph120, align 1
  %arrayidx53 = getelementptr i8, ptr %msg.0.ph120, i32 1
  %20 = call ptr @memcpy(ptr %arrayidx53, ptr %tmp, i32 %add)
  %call55 = call i32 @snd_rawmidi_transmit_ack(ptr noundef %2, i32 noundef %add) #12
  %add56 = add nuw i32 %end.0117, 2
  %21 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %transfer_buffer_length, align 4
  %add58 = add i32 %22, %add56
  store i32 %add58, ptr %transfer_buffer_length, align 4
  %add.ptr60 = getelementptr i8, ptr %msg.0.ph120, i32 %add56
  %cmp118 = icmp ult i32 %add58, %sub4
  br i1 %cmp118, label %if.then50.while.body.lr.ph_crit_edge, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then50.while.body.lr.ph_crit_edge:             ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.lr.ph

if.end61:                                         ; preds = %land.lhs.true.critedge.if.end61_crit_edge, %for.inc31.if.end61_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call)
  %cmp62 = icmp slt i32 %call, 9
  br i1 %cmp62, label %if.end61.cleanup.sink.split_crit_edge, label %if.end61.while.cond.backedge_crit_edge

if.end61.while.cond.backedge_crit_edge:           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.end61.cleanup.sink.split_crit_edge:            ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end61.cleanup.sink.split_crit_edge, %for.cond21.preheader.cleanup.sink.split_crit_edge, %while.body.cleanup.sink.split_crit_edge
  %23 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %active, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then50.cleanup_crit_edge, %while.cond.backedge.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %tmp) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit_ack(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_ftdi_input(ptr nocapture noundef readonly %ep, ptr noundef %buffer, i32 noundef %buffer_length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %buffer_length)
  %cmp = icmp sgt i32 %buffer_length, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %buffer, i32 2
  %sub = add nsw i32 %buffer_length, -2
  %arrayidx.i = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 2, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usbmidi_ftdi_input, %if.then4.i)) #12
          to label %if.end [label %if.then4.i], !srcloc !231

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, ptr noundef %dev5.i, ptr noundef nonnull @.str.16, i32 noundef 0) #12
  br label %if.end

if.end6.i:                                        ; preds = %if.then
  %number.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number.i, align 4
  %8 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ep, align 4
  %input_triggered.i = getelementptr inbounds %struct.snd_usb_midi, ptr %9, i32 0, i32 14
  %div3.i.i = lshr i32 %7, 5
  %arrayidx.i.i = getelementptr i32, ptr %input_triggered.i, i32 %div3.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %7, 31
  %12 = shl nuw i32 1, %and.i.i
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not.i = icmp eq i32 %13, 0
  br i1 %tobool10.not.i, label %if.end6.i.if.end_crit_edge, label %if.end12.i

if.end6.i.if.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %1, ptr noundef %add.ptr, i32 noundef %sub) #12
  br label %if.end

if.end:                                           ; preds = %if.end12.i, %if.end6.i.if.end_crit_edge, %if.then4.i, %do.body.i, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch345_broken_sysex_input(ptr nocapture noundef %ep, ptr noundef %buffer, i32 noundef %buffer_length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %buffer_length)
  %cmp56 = icmp ugt i32 %buffer_length, 3
  br i1 %cmp56, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %in_sysex = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 4
  %last_cin = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 5
  %arrayidx.i = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %ep, i32 0, i32 2, i32 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %add37, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buffer, i32 %i.057
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp1 = icmp ne i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.057)
  %cmp3.not = icmp eq i32 %i.057, 0
  %or.cond = select i1 %cmp1, i1 true, i1 %cmp3.not
  br i1 %or.cond, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end:                                           ; preds = %for.body
  %2 = and i8 %1, 15
  %3 = ptrtoint ptr %in_sysex to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %in_sysex, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end.if.end23_crit_edge, label %land.lhs.true8

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true8:                                   ; preds = %if.end
  %5 = ptrtoint ptr %last_cin to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %last_cin, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %6)
  %cmp10 = icmp eq i8 %2, %6
  br i1 %cmp10, label %land.lhs.true12, label %land.lhs.true8.if.end23_crit_edge

land.lhs.true8.if.end23_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true12:                                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  %add13 = or i32 %i.057, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %2)
  %cmp14 = icmp eq i8 %2, 6
  %conv15 = zext i1 %cmp14 to i32
  %add16 = add nuw nsw i32 %add13, %conv15
  %arrayidx17 = getelementptr i8, ptr %buffer, i32 %add16
  %7 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp20 = icmp sgt i8 %8, -1
  %spec.select = select i1 %cmp20, i8 4, i8 %2
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true12, %land.lhs.true8.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %cin.0.shrunk = phi i8 [ %2, %land.lhs.true8.if.end23_crit_edge ], [ %2, %if.end.if.end23_crit_edge ], [ %spec.select, %land.lhs.true12 ]
  %cin.0 = zext i8 %cin.0.shrunk to i32
  %arrayidx24 = getelementptr [16 x i8], ptr @snd_usbmidi_cin_length, i32 0, i32 %cin.0
  %9 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %10 to i32
  %add26 = or i32 %i.057, 1
  %arrayidx27 = getelementptr i8, ptr %buffer, i32 %add26
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch345_broken_sysex_input, %if.then4.i)) #12
          to label %snd_usbmidi_input_data.exit [label %if.then4.i], !srcloc !231

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ep, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, ptr noundef %dev5.i, ptr noundef nonnull @.str.16, i32 noundef 0) #12
  br label %snd_usbmidi_input_data.exit

if.end6.i:                                        ; preds = %if.end23
  %number.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %number.i, align 4
  %19 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ep, align 4
  %input_triggered.i = getelementptr inbounds %struct.snd_usb_midi, ptr %20, i32 0, i32 14
  %div3.i.i = lshr i32 %18, 5
  %arrayidx.i.i = getelementptr i32, ptr %input_triggered.i, i32 %div3.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %18, 31
  %23 = shl nuw i32 1, %and.i.i
  %24 = and i32 %22, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool10.not.i = icmp eq i32 %24, 0
  br i1 %tobool10.not.i, label %if.end6.i.snd_usbmidi_input_data.exit_crit_edge, label %if.end12.i

if.end6.i.snd_usbmidi_input_data.exit_crit_edge:  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_usbmidi_input_data.exit

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %12, ptr noundef %arrayidx27, i32 noundef %conv25) #12
  br label %snd_usbmidi_input_data.exit

snd_usbmidi_input_data.exit:                      ; preds = %if.end12.i, %if.end6.i.snd_usbmidi_input_data.exit_crit_edge, %if.then4.i, %do.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %cin.0.shrunk)
  %cmp28 = icmp eq i8 %cin.0.shrunk, 4
  %frombool = zext i1 %cmp28 to i8
  %25 = ptrtoint ptr %in_sysex to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool, ptr %in_sysex, align 1
  br i1 %cmp28, label %snd_usbmidi_input_data.exit.for.inc_crit_edge, label %if.then33

snd_usbmidi_input_data.exit.for.inc_crit_edge:    ; preds = %snd_usbmidi_input_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then33:                                        ; preds = %snd_usbmidi_input_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %last_cin to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %cin.0.shrunk, ptr %last_cin, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %snd_usbmidi_input_data.exit.for.inc_crit_edge
  %add37 = add i32 %i.057, 4
  %add = or i32 %add37, 3
  %cmp = icmp ult i32 %add, %buffer_length
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight16(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_rawmidi_free(ptr nocapture noundef readonly %rmidi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %rmidi, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx.i = getelementptr %struct.snd_usb_midi, ptr %1, i32 0, i32 13, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @snd_usbmidi_out_endpoint_clear(ptr noundef nonnull %3) #12
  tail call void @kfree(ptr noundef nonnull %3) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %in.i = getelementptr %struct.snd_usb_midi, ptr %1, i32 0, i32 13, i32 0, i32 1
  %4 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @snd_usbmidi_in_endpoint_delete(ptr noundef nonnull %5) #12
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.snd_usb_midi, ptr %1, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %7, null
  br i1 %tobool.not.1.i, label %if.end5.i.if.end.1.i_crit_edge, label %if.then.1.i

if.end5.i.if.end.1.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @snd_usbmidi_out_endpoint_clear(ptr noundef nonnull %7) #12
  tail call void @kfree(ptr noundef nonnull %7) #12
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end5.i.if.end.1.i_crit_edge
  %in.1.i = getelementptr %struct.snd_usb_midi, ptr %1, i32 0, i32 13, i32 1, i32 1
  %8 = ptrtoint ptr %in.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %in.1.i, align 4
  %tobool2.not.1.i = icmp eq ptr %9, null
  br i1 %tobool2.not.1.i, label %if.end.1.i.snd_usbmidi_free.exit_crit_edge, label %if.then3.1.i

if.end.1.i.snd_usbmidi_free.exit_crit_edge:       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_usbmidi_free.exit

if.then3.1.i:                                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @snd_usbmidi_in_endpoint_delete(ptr noundef nonnull %9) #12
  br label %snd_usbmidi_free.exit

snd_usbmidi_free.exit:                            ; preds = %if.then3.1.i, %if.end.1.i.snd_usbmidi_free.exit_crit_edge
  %mutex.i = getelementptr inbounds %struct.snd_usb_midi, ptr %1, i32 0, i32 10
  tail call void @mutex_destroy(ptr noundef %mutex.i) #12
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_get_port_info(ptr nocapture noundef readonly %rmidi, i32 noundef %number, ptr nocapture noundef writeonly %seq_port_info) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %rmidi, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %usb_id.i = getelementptr inbounds %struct.snd_usb_midi, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %usb_id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb_id.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.010.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [88 x %struct.port_info], ptr @snd_usbmidi_port_info, i32 0, i32 %i.010.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp1.i = icmp eq i32 %5, %3
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %port.i = getelementptr [88 x %struct.port_info], ptr @snd_usbmidi_port_info, i32 0, i32 %i.010.i, i32 1
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %port.i, align 4
  %conv.i = sext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %number)
  %cmp3.i = icmp eq i32 %conv.i, %number
  br i1 %cmp3.i, label %find_port_info.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 88
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

find_port_info.exit:                              ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %find_port_info.exit.if.end_crit_edge, label %if.then

find_port_info.exit.if.end_crit_edge:             ; preds = %find_port_info.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %find_port_info.exit
  call void @__sanitizer_cov_trace_pc() #14
  %seq_flags = getelementptr [88 x %struct.port_info], ptr @snd_usbmidi_port_info, i32 0, i32 %i.010.i, i32 4
  %8 = ptrtoint ptr %seq_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seq_flags, align 4
  %type = getelementptr inbounds %struct.snd_seq_port_info, ptr %seq_port_info, i32 0, i32 3
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %type, align 4
  %voices = getelementptr [88 x %struct.port_info], ptr @snd_usbmidi_port_info, i32 0, i32 %i.010.i, i32 2
  %11 = ptrtoint ptr %voices to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %voices, align 2
  %conv = sext i16 %12 to i32
  %midi_voices = getelementptr inbounds %struct.snd_seq_port_info, ptr %seq_port_info, i32 0, i32 5
  %13 = ptrtoint ptr %midi_voices to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %midi_voices, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %find_port_info.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usbmidi_output_open(ptr noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %arrayidx = getelementptr %struct.snd_usb_midi, ptr %3, i32 0, i32 13, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.for.inc17_crit_edge, label %for.body3.preheader

entry.for.inc17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc17

for.body3.preheader:                              ; preds = %entry
  %substream8 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 8, i32 0, i32 1
  %6 = ptrtoint ptr %substream8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %substream8, align 4
  %cmp9 = icmp eq ptr %7, %substream
  br i1 %cmp9, label %for.body3.preheader.if.then10_crit_edge, label %for.inc

for.body3.preheader.if.then10_crit_edge:          ; preds = %for.body3.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

if.then10:                                        ; preds = %for.inc.14.if.then10_crit_edge, %for.inc.13.if.then10_crit_edge, %for.inc.12.if.then10_crit_edge, %for.inc.11.if.then10_crit_edge, %for.inc.10.if.then10_crit_edge, %for.inc.9.if.then10_crit_edge, %for.inc.8.if.then10_crit_edge, %for.inc.7.if.then10_crit_edge, %for.inc.6.if.then10_crit_edge, %for.inc.5.if.then10_crit_edge, %for.inc.4.if.then10_crit_edge, %for.inc.3.if.then10_crit_edge, %for.inc.2.if.then10_crit_edge, %for.inc.1.if.then10_crit_edge, %for.inc.if.then10_crit_edge, %for.body3.preheader.if.then10_crit_edge
  %j.060.lcssa = phi i32 [ 0, %for.body3.preheader.if.then10_crit_edge ], [ 1, %for.inc.if.then10_crit_edge ], [ 2, %for.inc.1.if.then10_crit_edge ], [ 3, %for.inc.2.if.then10_crit_edge ], [ 4, %for.inc.3.if.then10_crit_edge ], [ 5, %for.inc.4.if.then10_crit_edge ], [ 6, %for.inc.5.if.then10_crit_edge ], [ 7, %for.inc.6.if.then10_crit_edge ], [ 8, %for.inc.7.if.then10_crit_edge ], [ 9, %for.inc.8.if.then10_crit_edge ], [ 10, %for.inc.9.if.then10_crit_edge ], [ 11, %for.inc.10.if.then10_crit_edge ], [ 12, %for.inc.11.if.then10_crit_edge ], [ 13, %for.inc.12.if.then10_crit_edge ], [ 14, %for.inc.13.if.then10_crit_edge ], [ 15, %for.inc.14.if.then10_crit_edge ]
  %arrayidx7 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 8, i32 %j.060.lcssa
  br label %for.inc17

for.inc:                                          ; preds = %for.body3.preheader
  %substream8.1 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 8, i32 1, i32 1
  %8 = ptrtoint ptr %substream8.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %substream8.1, align 4
  %cmp9.1 = icmp eq ptr %9, %substream
  br i1 %cmp9.1, label %for.inc.if.then10_crit_edge, label %for.inc.1

for.inc.if.then10_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

for.inc.1:                                        ; preds = %for.inc
  %substream8.2 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 8, i32 2, i32 1
  %10 = ptrtoint ptr %substream8.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %substream8.2, align 4
  %cmp9.2 = icmp eq ptr %11, %substream
  br i1 %cmp9.2, label %for.inc.1.if.then10_crit_edge, label %for.inc.2

for.inc.1.if.then10_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

for.inc.2:                                        ; preds = %for.inc.1
  %substream8.3 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 8, i32 3, i32 1
  %12 = ptrtoint ptr %substream8.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %substream8.3, align 4
  %cmp9.3 = icmp eq ptr %13, %substream
  br i1 %cmp9.3, label %for.inc.2.if.then10_crit_edge, label %for.inc.3

for.inc.2.if.then10_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

for.inc.3:                                        ; preds = %for.inc.2
  %substream8.4 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 8, i32 4, i32 1
  %14 = ptrtoint ptr %substream8.4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %substream8.4, align 4
  %cmp9.4 = icmp eq ptr %15, %substream
  br i1 %cmp9.4, label %for.inc.3.if.then10_crit_edge, label %for.inc.4

for.inc.3.if.then10_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

for.inc.4:                                        ; preds = %for.inc.3
  %substream8.5 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 8, i32 5, i32 1
  %16 = ptrtoint ptr %substream8.5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %substream8.5, align 4
  %cmp9.5 = icmp eq ptr %17, %substream
  br i1 %cmp9.5, label %for.inc.4.if.then10_crit_edge, label %for.inc.5

for.inc.4.if.then10_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

for.inc.5:                                        ; preds = %for.inc.4
  %substream8.6 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 8, i32 6, i32 1
  %18 = ptrtoint ptr %substream8.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %substream8.6, align 4
  %cmp9.6 = icmp eq ptr %19, %substream
  br i1 %cmp9.6, label %for.inc.5.if.then10_crit_edge, label %for.inc.6

for.inc.5.if.then10_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

for.inc.6:                                        ; preds = %for.inc.5
  %substream8.7 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 8, i32 7, i32 1
  %20 = ptrtoint ptr %substream8.7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %substream8.7, align 4
  %cmp9.7 = icmp eq ptr %21, %substream
  br i1 %cmp9.7, label %for.inc.6.if.then10_crit_edge, label %for.inc.7

for.inc.6.if.then10_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

for.inc.7:                                        ; preds = %for.inc.6
  %substream8.8 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 8, i32 8, i32 1
  %22 = ptrtoint ptr %substream8.8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %substream8.8, align 4
  %cmp9.8 = icmp eq ptr %23, %substream
  br i1 %cmp9.8, label %for.inc.7.if.then10_crit_edge, label %for.inc.8

for.inc.7.if.then10_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

for.inc.8:                                        ; preds = %for.inc.7
  %substream8.9 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 8, i32 9, i32 1
  %24 = ptrtoint ptr %substream8.9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %substream8.9, align 4
  %cmp9.9 = icmp eq ptr %25, %substream
  br i1 %cmp9.9, label %for.inc.8.if.then10_crit_edge, label %for.inc.9

for.inc.8.if.then10_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

for.inc.9:                                        ; preds = %for.inc.8
  %substream8.10 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 8, i32 10, i32 1
  %26 = ptrtoint ptr %substream8.10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %substream8.10, align 4
  %cmp9.10 = icmp eq ptr %27, %substream
  br i1 %cmp9.10, label %for.inc.9.if.then10_crit_edge, label %for.inc.10

for.inc.9.if.then10_crit_edge:                    ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

for.inc.10:                                       ; preds = %for.inc.9
  %substream8.11 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 8, i32 11, i32 1
  %28 = ptrtoint ptr %substream8.11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %substream8.11, align 4
  %cmp9.11 = icmp eq ptr %29, %substream
  br i1 %cmp9.11, label %for.inc.10.if.then10_crit_edge, label %for.inc.11

for.inc.10.if.then10_crit_edge:                   ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

for.inc.11:                                       ; preds = %for.inc.10
  %substream8.12 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 8, i32 12, i32 1
  %30 = ptrtoint ptr %substream8.12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %substream8.12, align 4
  %cmp9.12 = icmp eq ptr %31, %substream
  br i1 %cmp9.12, label %for.inc.11.if.then10_crit_edge, label %for.inc.12

for.inc.11.if.then10_crit_edge:                   ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

for.inc.12:                                       ; preds = %for.inc.11
  %substream8.13 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 8, i32 13, i32 1
  %32 = ptrtoint ptr %substream8.13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %substream8.13, align 4
  %cmp9.13 = icmp eq ptr %33, %substream
  br i1 %cmp9.13, label %for.inc.12.if.then10_crit_edge, label %for.inc.13

for.inc.12.if.then10_crit_edge:                   ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

for.inc.13:                                       ; preds = %for.inc.12
  %substream8.14 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 8, i32 14, i32 1
  %34 = ptrtoint ptr %substream8.14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %substream8.14, align 4
  %cmp9.14 = icmp eq ptr %35, %substream
  br i1 %cmp9.14, label %for.inc.13.if.then10_crit_edge, label %for.inc.14

for.inc.13.if.then10_crit_edge:                   ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

for.inc.14:                                       ; preds = %for.inc.13
  %substream8.15 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 8, i32 15, i32 1
  %36 = ptrtoint ptr %substream8.15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %substream8.15, align 4
  %cmp9.15 = icmp eq ptr %37, %substream
  br i1 %cmp9.15, label %for.inc.14.if.then10_crit_edge, label %for.inc.14.for.inc17_crit_edge

for.inc.14.for.inc17_crit_edge:                   ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc17

for.inc.14.if.then10_crit_edge:                   ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

for.inc17:                                        ; preds = %for.inc.14.for.inc17_crit_edge, %if.then10, %entry.for.inc17_crit_edge
  %port.1 = phi ptr [ %arrayidx7, %if.then10 ], [ null, %entry.for.inc17_crit_edge ], [ null, %for.inc.14.for.inc17_crit_edge ]
  %arrayidx.1 = getelementptr %struct.snd_usb_midi, ptr %3, i32 0, i32 13, i32 1
  %38 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %39, null
  br i1 %tobool.not.1, label %for.inc17.for.inc17.1_crit_edge, label %for.body3.preheader.1

for.inc17.for.inc17.1_crit_edge:                  ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc17.1

for.body3.preheader.1:                            ; preds = %for.inc17
  %substream8.164 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %39, i32 0, i32 8, i32 0, i32 1
  %40 = ptrtoint ptr %substream8.164 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %substream8.164, align 4
  %cmp9.165 = icmp eq ptr %41, %substream
  br i1 %cmp9.165, label %for.body3.preheader.1.if.then10.1_crit_edge, label %for.inc.166

for.body3.preheader.1.if.then10.1_crit_edge:      ; preds = %for.body3.preheader.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.1

for.inc.166:                                      ; preds = %for.body3.preheader.1
  %substream8.1.1 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %39, i32 0, i32 8, i32 1, i32 1
  %42 = ptrtoint ptr %substream8.1.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %substream8.1.1, align 4
  %cmp9.1.1 = icmp eq ptr %43, %substream
  br i1 %cmp9.1.1, label %for.inc.166.if.then10.1_crit_edge, label %for.inc.1.1

for.inc.166.if.then10.1_crit_edge:                ; preds = %for.inc.166
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.1

for.inc.1.1:                                      ; preds = %for.inc.166
  %substream8.2.1 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %39, i32 0, i32 8, i32 2, i32 1
  %44 = ptrtoint ptr %substream8.2.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %substream8.2.1, align 4
  %cmp9.2.1 = icmp eq ptr %45, %substream
  br i1 %cmp9.2.1, label %for.inc.1.1.if.then10.1_crit_edge, label %for.inc.2.1

for.inc.1.1.if.then10.1_crit_edge:                ; preds = %for.inc.1.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.1

for.inc.2.1:                                      ; preds = %for.inc.1.1
  %substream8.3.1 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %39, i32 0, i32 8, i32 3, i32 1
  %46 = ptrtoint ptr %substream8.3.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %substream8.3.1, align 4
  %cmp9.3.1 = icmp eq ptr %47, %substream
  br i1 %cmp9.3.1, label %for.inc.2.1.if.then10.1_crit_edge, label %for.inc.3.1

for.inc.2.1.if.then10.1_crit_edge:                ; preds = %for.inc.2.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.1

for.inc.3.1:                                      ; preds = %for.inc.2.1
  %substream8.4.1 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %39, i32 0, i32 8, i32 4, i32 1
  %48 = ptrtoint ptr %substream8.4.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %substream8.4.1, align 4
  %cmp9.4.1 = icmp eq ptr %49, %substream
  br i1 %cmp9.4.1, label %for.inc.3.1.if.then10.1_crit_edge, label %for.inc.4.1

for.inc.3.1.if.then10.1_crit_edge:                ; preds = %for.inc.3.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.1

for.inc.4.1:                                      ; preds = %for.inc.3.1
  %substream8.5.1 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %39, i32 0, i32 8, i32 5, i32 1
  %50 = ptrtoint ptr %substream8.5.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %substream8.5.1, align 4
  %cmp9.5.1 = icmp eq ptr %51, %substream
  br i1 %cmp9.5.1, label %for.inc.4.1.if.then10.1_crit_edge, label %for.inc.5.1

for.inc.4.1.if.then10.1_crit_edge:                ; preds = %for.inc.4.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.1

for.inc.5.1:                                      ; preds = %for.inc.4.1
  %substream8.6.1 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %39, i32 0, i32 8, i32 6, i32 1
  %52 = ptrtoint ptr %substream8.6.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %substream8.6.1, align 4
  %cmp9.6.1 = icmp eq ptr %53, %substream
  br i1 %cmp9.6.1, label %for.inc.5.1.if.then10.1_crit_edge, label %for.inc.6.1

for.inc.5.1.if.then10.1_crit_edge:                ; preds = %for.inc.5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.1

for.inc.6.1:                                      ; preds = %for.inc.5.1
  %substream8.7.1 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %39, i32 0, i32 8, i32 7, i32 1
  %54 = ptrtoint ptr %substream8.7.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %substream8.7.1, align 4
  %cmp9.7.1 = icmp eq ptr %55, %substream
  br i1 %cmp9.7.1, label %for.inc.6.1.if.then10.1_crit_edge, label %for.inc.7.1

for.inc.6.1.if.then10.1_crit_edge:                ; preds = %for.inc.6.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.1

for.inc.7.1:                                      ; preds = %for.inc.6.1
  %substream8.8.1 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %39, i32 0, i32 8, i32 8, i32 1
  %56 = ptrtoint ptr %substream8.8.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %substream8.8.1, align 4
  %cmp9.8.1 = icmp eq ptr %57, %substream
  br i1 %cmp9.8.1, label %for.inc.7.1.if.then10.1_crit_edge, label %for.inc.8.1

for.inc.7.1.if.then10.1_crit_edge:                ; preds = %for.inc.7.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.1

for.inc.8.1:                                      ; preds = %for.inc.7.1
  %substream8.9.1 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %39, i32 0, i32 8, i32 9, i32 1
  %58 = ptrtoint ptr %substream8.9.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %substream8.9.1, align 4
  %cmp9.9.1 = icmp eq ptr %59, %substream
  br i1 %cmp9.9.1, label %for.inc.8.1.if.then10.1_crit_edge, label %for.inc.9.1

for.inc.8.1.if.then10.1_crit_edge:                ; preds = %for.inc.8.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.1

for.inc.9.1:                                      ; preds = %for.inc.8.1
  %substream8.10.1 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %39, i32 0, i32 8, i32 10, i32 1
  %60 = ptrtoint ptr %substream8.10.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %substream8.10.1, align 4
  %cmp9.10.1 = icmp eq ptr %61, %substream
  br i1 %cmp9.10.1, label %for.inc.9.1.if.then10.1_crit_edge, label %for.inc.10.1

for.inc.9.1.if.then10.1_crit_edge:                ; preds = %for.inc.9.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.1

for.inc.10.1:                                     ; preds = %for.inc.9.1
  %substream8.11.1 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %39, i32 0, i32 8, i32 11, i32 1
  %62 = ptrtoint ptr %substream8.11.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %substream8.11.1, align 4
  %cmp9.11.1 = icmp eq ptr %63, %substream
  br i1 %cmp9.11.1, label %for.inc.10.1.if.then10.1_crit_edge, label %for.inc.11.1

for.inc.10.1.if.then10.1_crit_edge:               ; preds = %for.inc.10.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.1

for.inc.11.1:                                     ; preds = %for.inc.10.1
  %substream8.12.1 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %39, i32 0, i32 8, i32 12, i32 1
  %64 = ptrtoint ptr %substream8.12.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %substream8.12.1, align 4
  %cmp9.12.1 = icmp eq ptr %65, %substream
  br i1 %cmp9.12.1, label %for.inc.11.1.if.then10.1_crit_edge, label %for.inc.12.1

for.inc.11.1.if.then10.1_crit_edge:               ; preds = %for.inc.11.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.1

for.inc.12.1:                                     ; preds = %for.inc.11.1
  %substream8.13.1 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %39, i32 0, i32 8, i32 13, i32 1
  %66 = ptrtoint ptr %substream8.13.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %substream8.13.1, align 4
  %cmp9.13.1 = icmp eq ptr %67, %substream
  br i1 %cmp9.13.1, label %for.inc.12.1.if.then10.1_crit_edge, label %for.inc.13.1

for.inc.12.1.if.then10.1_crit_edge:               ; preds = %for.inc.12.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.1

for.inc.13.1:                                     ; preds = %for.inc.12.1
  %substream8.14.1 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %39, i32 0, i32 8, i32 14, i32 1
  %68 = ptrtoint ptr %substream8.14.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %substream8.14.1, align 4
  %cmp9.14.1 = icmp eq ptr %69, %substream
  br i1 %cmp9.14.1, label %for.inc.13.1.if.then10.1_crit_edge, label %for.inc.14.1

for.inc.13.1.if.then10.1_crit_edge:               ; preds = %for.inc.13.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.1

for.inc.14.1:                                     ; preds = %for.inc.13.1
  %substream8.15.1 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %39, i32 0, i32 8, i32 15, i32 1
  %70 = ptrtoint ptr %substream8.15.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %substream8.15.1, align 4
  %cmp9.15.1 = icmp eq ptr %71, %substream
  br i1 %cmp9.15.1, label %for.inc.14.1.if.then10.1_crit_edge, label %for.inc.14.1.for.inc17.1_crit_edge

for.inc.14.1.for.inc17.1_crit_edge:               ; preds = %for.inc.14.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc17.1

for.inc.14.1.if.then10.1_crit_edge:               ; preds = %for.inc.14.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.1

if.then10.1:                                      ; preds = %for.inc.14.1.if.then10.1_crit_edge, %for.inc.13.1.if.then10.1_crit_edge, %for.inc.12.1.if.then10.1_crit_edge, %for.inc.11.1.if.then10.1_crit_edge, %for.inc.10.1.if.then10.1_crit_edge, %for.inc.9.1.if.then10.1_crit_edge, %for.inc.8.1.if.then10.1_crit_edge, %for.inc.7.1.if.then10.1_crit_edge, %for.inc.6.1.if.then10.1_crit_edge, %for.inc.5.1.if.then10.1_crit_edge, %for.inc.4.1.if.then10.1_crit_edge, %for.inc.3.1.if.then10.1_crit_edge, %for.inc.2.1.if.then10.1_crit_edge, %for.inc.1.1.if.then10.1_crit_edge, %for.inc.166.if.then10.1_crit_edge, %for.body3.preheader.1.if.then10.1_crit_edge
  %j.060.lcssa.1 = phi i32 [ 0, %for.body3.preheader.1.if.then10.1_crit_edge ], [ 1, %for.inc.166.if.then10.1_crit_edge ], [ 2, %for.inc.1.1.if.then10.1_crit_edge ], [ 3, %for.inc.2.1.if.then10.1_crit_edge ], [ 4, %for.inc.3.1.if.then10.1_crit_edge ], [ 5, %for.inc.4.1.if.then10.1_crit_edge ], [ 6, %for.inc.5.1.if.then10.1_crit_edge ], [ 7, %for.inc.6.1.if.then10.1_crit_edge ], [ 8, %for.inc.7.1.if.then10.1_crit_edge ], [ 9, %for.inc.8.1.if.then10.1_crit_edge ], [ 10, %for.inc.9.1.if.then10.1_crit_edge ], [ 11, %for.inc.10.1.if.then10.1_crit_edge ], [ 12, %for.inc.11.1.if.then10.1_crit_edge ], [ 13, %for.inc.12.1.if.then10.1_crit_edge ], [ 14, %for.inc.13.1.if.then10.1_crit_edge ], [ 15, %for.inc.14.1.if.then10.1_crit_edge ]
  %arrayidx7.1 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %39, i32 0, i32 8, i32 %j.060.lcssa.1
  br label %for.inc17.1

for.inc17.1:                                      ; preds = %if.then10.1, %for.inc.14.1.for.inc17.1_crit_edge, %for.inc17.for.inc17.1_crit_edge
  %port.1.1 = phi ptr [ %arrayidx7.1, %if.then10.1 ], [ %port.1, %for.inc17.for.inc17.1_crit_edge ], [ %port.1, %for.inc.14.1.for.inc17.1_crit_edge ]
  %tobool20.not = icmp eq ptr %port.1.1, null
  br i1 %tobool20.not, label %do.end, label %if.end39

do.end:                                           ; preds = %for.inc17.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1137, i32 noundef 9, ptr noundef nonnull @.str.54) #12
  br label %cleanup

if.end39:                                         ; preds = %for.inc17.1
  call void @__sanitizer_cov_trace_pc() #14
  %runtime = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 13
  %72 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %runtime, align 4
  %private_data40 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %73, i32 0, i32 14
  %74 = ptrtoint ptr %private_data40 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %port.1.1, ptr %private_data40, align 4
  %state = getelementptr inbounds %struct.usbmidi_out_port, ptr %port.1.1, i32 0, i32 4
  %75 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %state, align 1
  %call = tail call fastcc i32 @substream_open(ptr noundef %substream, i32 noundef 0, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end
  %retval.0 = phi i32 [ %call, %if.end39 ], [ -6, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usbmidi_output_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @substream_open(ptr noundef %substream, i32 noundef 0, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_output_trigger(ptr noundef %substream, i32 noundef %up) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 13
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %active = getelementptr inbounds %struct.usbmidi_out_port, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %up, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %disconnected = getelementptr inbounds %struct.snd_usb_midi, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool1.not = icmp eq i8 %10, 0
  br i1 %tobool1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @snd_rawmidi_proceed(ptr noundef %substream) #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %11 = load ptr, ptr @system_highpri_wq, align 4
  %work = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %6, i32 0, i32 5
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %work) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_output_drain(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 13
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #12
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %wait, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @autoremove_wake_function, ptr %7, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %8, ptr %8, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %8, ptr %9, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %disconnected = getelementptr inbounds %struct.snd_usb_midi, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %buffer_lock = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 7
  call void @_raw_spin_lock_irq(ptr noundef %buffer_lock) #12
  %active_urbs = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 2
  %23 = ptrtoint ptr %active_urbs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %active_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool6.not = icmp eq i32 %24, 0
  br i1 %tobool6.not, label %if.end.if.end16_crit_edge, label %if.then7

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then7:                                         ; preds = %if.end
  %drain_urbs8 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 3
  %25 = ptrtoint ptr %drain_urbs8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %drain_urbs8, align 4
  %or = or i32 %26, %24
  store i32 %or, ptr %drain_urbs8, align 4
  %drain_wait = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 10
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then7
  %drain_urbs.0 = phi i32 [ %24, %if.then7 ], [ %and, %do.body.do.body_crit_edge ]
  %timeout.0 = phi i32 [ 5, %if.then7 ], [ %call10, %do.body.do.body_crit_edge ]
  call void @prepare_to_wait(ptr noundef %drain_wait, ptr noundef nonnull %wait, i32 noundef 2) #12
  call void @_raw_spin_unlock_irq(ptr noundef %buffer_lock) #12
  %call10 = call i32 @schedule_timeout(i32 noundef %timeout.0) #12
  call void @_raw_spin_lock_irq(ptr noundef %buffer_lock) #12
  %27 = ptrtoint ptr %drain_urbs8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %drain_urbs8, align 4
  %and = and i32 %28, %drain_urbs.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool14.not = icmp eq i32 %call10, 0
  %or.cond = select i1 %tobool13.not, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @finish_wait(ptr noundef %drain_wait, ptr noundef nonnull %wait) #12
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.end.if.end16_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %buffer_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @substream_open(ptr nocapture noundef readonly %substream, i32 noundef %dir, i32 noundef %open) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %disc_rwsem = getelementptr inbounds %struct.snd_usb_midi, ptr %3, i32 0, i32 9
  tail call void @down_read(ptr noundef %disc_rwsem) #12
  %disconnected = getelementptr inbounds %struct.snd_usb_midi, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @up_read(ptr noundef %disc_rwsem) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %open)
  %tobool2.not = icmp eq i32 %open, 0
  %cond = select i1 %tobool2.not, i32 0, i32 -19
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.snd_usb_midi, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %open)
  %tobool3.not = icmp eq i32 %open, 0
  %opened23 = getelementptr inbounds %struct.snd_usb_midi, ptr %3, i32 0, i32 15
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %6 = ptrtoint ptr %opened23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %opened23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.then4.if.end15_crit_edge

if.then4.if.end15_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true:                                    ; preds = %if.then4
  %arrayidx7 = getelementptr %struct.snd_usb_midi, ptr %3, i32 0, i32 15, i32 1
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp eq i32 %9, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then9:                                         ; preds = %land.lhs.true
  %roland_load_ctl = getelementptr inbounds %struct.snd_usb_midi, ptr %3, i32 0, i32 18
  %10 = ptrtoint ptr %roland_load_ctl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %roland_load_ctl, align 4
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %if.then9.if.end15_crit_edge, label %if.then11

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then11:                                        ; preds = %if.then9
  %access = getelementptr inbounds %struct.snd_kcontrol, ptr %11, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %access, align 4
  %or = or i32 %13, 256
  store i32 %or, ptr %access, align 4
  %card = getelementptr inbounds %struct.snd_usb_midi, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %11, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %15, i32 noundef 2, ptr noundef %id) #12
  %iface.i = getelementptr inbounds %struct.snd_usb_midi, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %iface.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iface.i, align 4
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cur_altsetting.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 8
  %cmp.i = icmp ne ptr %19, %21
  %conv.i = zext i1 %cmp.i to i32
  %22 = ptrtoint ptr %roland_load_ctl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %roland_load_ctl, align 4
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %private_value.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %private_value.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv.i)
  %cmp1.i = icmp eq i32 %25, %conv.i
  br i1 %cmp1.i, label %if.then11.if.end15_crit_edge, label %if.end.i

if.then11.if.end15_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.usb_host_interface, ptr %21, i32 %25
  %list.i = getelementptr inbounds %struct.snd_usb_midi, ptr %3, i32 0, i32 6
  tail call void @snd_usbmidi_input_stop(ptr noundef %list.i) #12
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i, i32 0, i32 2
  %28 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bInterfaceNumber.i, align 1
  %conv6.i = zext i8 %29 to i32
  %bAlternateSetting.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i, i32 0, i32 3
  %30 = ptrtoint ptr %bAlternateSetting.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bAlternateSetting.i, align 1
  %conv7.i = zext i8 %31 to i32
  %call.i = tail call i32 @usb_set_interface(ptr noundef %27, i32 noundef %conv6.i, i32 noundef %conv7.i) #12
  tail call void @snd_usbmidi_input_start(ptr noundef %list.i) #12
  br label %if.end15

if.end15:                                         ; preds = %if.end.i, %if.then11.if.end15_crit_edge, %if.then9.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.then4.if.end15_crit_edge
  %arrayidx17 = getelementptr %struct.snd_usb_midi, ptr %3, i32 0, i32 15, i32 %dir
  %32 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx17, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %arrayidx17, align 4
  %arrayidx19 = getelementptr %struct.snd_usb_midi, ptr %3, i32 0, i32 15, i32 1
  %34 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool20.not = icmp eq i32 %35, 0
  br i1 %tobool20.not, label %if.end15.if.end50_crit_edge, label %if.then21

if.end15.if.end50_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %list = getelementptr inbounds %struct.snd_usb_midi, ptr %3, i32 0, i32 6
  tail call void @snd_usbmidi_input_start(ptr noundef %list)
  br label %if.end50

if.else:                                          ; preds = %if.end
  %arrayidx24 = getelementptr %struct.snd_usb_midi, ptr %3, i32 0, i32 15, i32 %dir
  %36 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx24, align 4
  %dec = add i32 %37, -1
  store i32 %dec, ptr %arrayidx24, align 4
  %arrayidx26 = getelementptr %struct.snd_usb_midi, ptr %3, i32 0, i32 15, i32 1
  %38 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool27.not = icmp eq i32 %39, 0
  br i1 %tobool27.not, label %if.then28, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %list29 = getelementptr inbounds %struct.snd_usb_midi, ptr %3, i32 0, i32 6
  tail call void @snd_usbmidi_input_stop(ptr noundef %list29)
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.else.if.end30_crit_edge
  %40 = ptrtoint ptr %opened23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %opened23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool33.not = icmp eq i32 %41, 0
  br i1 %tobool33.not, label %land.lhs.true34, label %if.end30.if.end50_crit_edge

if.end30.if.end50_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

land.lhs.true34:                                  ; preds = %if.end30
  %42 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool37.not = icmp eq i32 %43, 0
  br i1 %tobool37.not, label %if.then38, label %land.lhs.true34.if.end50_crit_edge

land.lhs.true34.if.end50_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then38:                                        ; preds = %land.lhs.true34
  %roland_load_ctl39 = getelementptr inbounds %struct.snd_usb_midi, ptr %3, i32 0, i32 18
  %44 = ptrtoint ptr %roland_load_ctl39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %roland_load_ctl39, align 4
  %tobool40.not = icmp eq ptr %45, null
  br i1 %tobool40.not, label %if.then38.if.end50_crit_edge, label %if.then41

if.then38.if.end50_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then41:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  %access45 = getelementptr inbounds %struct.snd_kcontrol, ptr %45, i32 1, i32 0, i32 1
  %46 = ptrtoint ptr %access45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %access45, align 4
  %and = and i32 %47, -257
  store i32 %and, ptr %access45, align 4
  %card46 = getelementptr inbounds %struct.snd_usb_midi, ptr %3, i32 0, i32 1
  %48 = ptrtoint ptr %card46 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %card46, align 4
  %id47 = getelementptr inbounds %struct.snd_kcontrol, ptr %45, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %49, i32 noundef 2, ptr noundef %id47) #12
  br label %if.end50

if.end50:                                         ; preds = %if.then41, %if.then38.if.end50_crit_edge, %land.lhs.true34.if.end50_crit_edge, %if.end30.if.end50_crit_edge, %if.then21, %if.end15.if.end50_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  tail call void @up_read(ptr noundef %disc_rwsem) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.end50 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_proceed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usbmidi_input_open(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @substream_open(ptr noundef %substream, i32 noundef 1, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usbmidi_input_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @substream_open(ptr noundef %substream, i32 noundef 1, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_input_trigger(ptr nocapture noundef readonly %substream, i32 noundef %up) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  %number1 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %number1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number1, align 4
  %input_triggered2 = getelementptr inbounds %struct.snd_usb_midi, ptr %3, i32 0, i32 14
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef %5, ptr noundef %input_triggered2) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef %5, ptr noundef %input_triggered2) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_usbmidi_out_endpoint_create(ptr noundef %umidi, ptr nocapture noundef readonly %ep_info, ptr nocapture noundef writeonly %rep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rep to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rep, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 476) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %umidi, ptr %call7.i.i, align 8
  %call2 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %arrayidx = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 1, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %call2, null
  br i1 %tobool6.not, label %if.end.error_crit_edge, label %if.end8

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end8:                                          ; preds = %if.end
  %ep11 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %ep11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %ep11, align 8
  %call2.1 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %arrayidx.1 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2.1, ptr %arrayidx.1, align 4
  %tobool6.not.1 = icmp eq ptr %call2.1, null
  br i1 %tobool6.not.1, label %if.end8.error_crit_edge, label %if.end8.1

if.end8.error_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end8.1:                                        ; preds = %if.end8
  %ep11.1 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %ep11.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %ep11.1, align 8
  %call2.2 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %arrayidx.2 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2.2, ptr %arrayidx.2, align 4
  %tobool6.not.2 = icmp eq ptr %call2.2, null
  br i1 %tobool6.not.2, label %if.end8.1.error_crit_edge, label %if.end8.2

if.end8.1.error_crit_edge:                        ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end8.2:                                        ; preds = %if.end8.1
  %ep11.2 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 1
  %8 = ptrtoint ptr %ep11.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %ep11.2, align 8
  %call2.3 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %arrayidx.3 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2.3, ptr %arrayidx.3, align 4
  %tobool6.not.3 = icmp eq ptr %call2.3, null
  br i1 %tobool6.not.3, label %if.end8.2.error_crit_edge, label %if.end8.3

if.end8.2.error_crit_edge:                        ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end8.3:                                        ; preds = %if.end8.2
  %ep11.3 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 1
  %10 = ptrtoint ptr %ep11.3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %ep11.3, align 8
  %call2.4 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %arrayidx.4 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call2.4, ptr %arrayidx.4, align 4
  %tobool6.not.4 = icmp eq ptr %call2.4, null
  br i1 %tobool6.not.4, label %if.end8.3.error_crit_edge, label %if.end8.4

if.end8.3.error_crit_edge:                        ; preds = %if.end8.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end8.4:                                        ; preds = %if.end8.3
  %ep11.4 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 1
  %12 = ptrtoint ptr %ep11.4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %ep11.4, align 8
  %call2.5 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %arrayidx.5 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 1, i32 5
  %13 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call2.5, ptr %arrayidx.5, align 4
  %tobool6.not.5 = icmp eq ptr %call2.5, null
  br i1 %tobool6.not.5, label %if.end8.4.error_crit_edge, label %if.end8.5

if.end8.4.error_crit_edge:                        ; preds = %if.end8.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end8.5:                                        ; preds = %if.end8.4
  %ep11.5 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 1
  %14 = ptrtoint ptr %ep11.5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %ep11.5, align 8
  %call2.6 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %arrayidx.6 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 1, i32 6
  %15 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call2.6, ptr %arrayidx.6, align 4
  %tobool6.not.6 = icmp eq ptr %call2.6, null
  br i1 %tobool6.not.6, label %if.end8.5.error_crit_edge, label %if.end8.6

if.end8.5.error_crit_edge:                        ; preds = %if.end8.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end8.6:                                        ; preds = %if.end8.5
  %ep11.6 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 1, i32 6, i32 1
  %16 = ptrtoint ptr %ep11.6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %ep11.6, align 8
  %out_interval = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %ep_info, i32 0, i32 1
  %17 = ptrtoint ptr %out_interval to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %out_interval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool12.not = icmp eq i8 %18, 0
  %19 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %umidi, align 4
  %21 = ptrtoint ptr %ep_info to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ep_info, align 2
  %conv17 = sext i8 %22 to i32
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %20, align 8
  %shl.i194 = shl i32 %24, 8
  %shl1.i195 = shl nsw i32 %conv17, 15
  %or.i196 = or i32 %shl1.i195, %shl.i194
  %. = select i1 %tobool12.not, i32 -1073741824, i32 1073741824
  %or19 = or i32 %or.i196, %.
  %usb_id = getelementptr inbounds %struct.snd_usb_midi, ptr %umidi, i32 0, i32 11
  %25 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %usb_id, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %26, label %if.end.i [
    i32 174542865, label %if.end8.6.sw.epilog_crit_edge
    i32 177344544, label %if.end8.6.sw.epilog_crit_edge218
    i32 338708299, label %if.end8.6.sw.epilog_crit_edge219
    i32 365560065, label %if.end8.6.sw.epilog_crit_edge220
    i32 365565958, label %if.end8.6.sw.epilog_crit_edge221
    i32 445019437, label %if.end8.6.sw.epilog_crit_edge222
    i32 -66584319, label %if.end8.6.sw.epilog_crit_edge223
    i32 105152526, label %if.end8.6.sw.bb25_crit_edge
    i32 105152527, label %if.end8.6.sw.bb25_crit_edge224
  ]

if.end8.6.sw.bb25_crit_edge224:                   ; preds = %if.end8.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25

if.end8.6.sw.bb25_crit_edge:                      ; preds = %if.end8.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25

if.end8.6.sw.epilog_crit_edge223:                 ; preds = %if.end8.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end8.6.sw.epilog_crit_edge222:                 ; preds = %if.end8.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end8.6.sw.epilog_crit_edge221:                 ; preds = %if.end8.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end8.6.sw.epilog_crit_edge220:                 ; preds = %if.end8.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end8.6.sw.epilog_crit_edge219:                 ; preds = %if.end8.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end8.6.sw.epilog_crit_edge218:                 ; preds = %if.end8.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end8.6.sw.epilog_crit_edge:                    ; preds = %if.end8.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i:                                         ; preds = %if.end8.6
  %28 = lshr i32 %or.i196, 15
  %and.i = and i32 %28, 15
  %29 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %umidi, align 4
  %arrayidx.i = getelementptr %struct.usb_device, ptr %30, i32 0, i32 22, i32 %and.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %ep.0.i = load ptr, ptr %arrayidx.i, align 4
  %tobool59.not.i = icmp eq ptr %ep.0.i, null
  br i1 %tobool59.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.end61.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end61.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0.i, i32 0, i32 4
  %32 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %34 = and i16 %33, -249
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #12
  %phi.cast = zext i16 %35 to i32
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end8.6.sw.bb25_crit_edge, %if.end8.6.sw.bb25_crit_edge224
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %if.end61.i, %if.end.i.sw.epilog_crit_edge, %if.end8.6.sw.epilog_crit_edge, %if.end8.6.sw.epilog_crit_edge218, %if.end8.6.sw.epilog_crit_edge219, %if.end8.6.sw.epilog_crit_edge220, %if.end8.6.sw.epilog_crit_edge221, %if.end8.6.sw.epilog_crit_edge222, %if.end8.6.sw.epilog_crit_edge223
  %.sink214 = phi i32 [ 9, %sw.bb25 ], [ %phi.cast, %if.end61.i ], [ 0, %if.end.i.sw.epilog_crit_edge ], [ 4, %if.end8.6.sw.epilog_crit_edge ], [ 4, %if.end8.6.sw.epilog_crit_edge218 ], [ 4, %if.end8.6.sw.epilog_crit_edge219 ], [ 4, %if.end8.6.sw.epilog_crit_edge220 ], [ 4, %if.end8.6.sw.epilog_crit_edge221 ], [ 4, %if.end8.6.sw.epilog_crit_edge222 ], [ 4, %if.end8.6.sw.epilog_crit_edge223 ]
  %max_transfer26 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %max_transfer26 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink214, ptr %max_transfer26, align 4
  %max_transfer32 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 4
  br label %for.body30

for.body30:                                       ; preds = %if.end72.for.body30_crit_edge, %sw.epilog
  %i.1207 = phi i32 [ 0, %sw.epilog ], [ %inc77, %if.end72.for.body30_crit_edge ]
  %37 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %umidi, align 4
  %39 = ptrtoint ptr %max_transfer32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_transfer32, align 4
  %arrayidx34 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 1, i32 %i.1207
  %41 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx34, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 15
  %call36 = tail call ptr @usb_alloc_coherent(ptr noundef %38, i32 noundef %40, i32 noundef 3264, ptr noundef %transfer_dma) #12
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %for.body30.error_crit_edge, label %if.end39

for.body30.error_crit_edge:                       ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end39:                                         ; preds = %for.body30
  %43 = ptrtoint ptr %out_interval to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %out_interval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool41.not = icmp eq i8 %44, 0
  %45 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx34, align 4
  %47 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %umidi, align 4
  %49 = ptrtoint ptr %max_transfer32 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_transfer32, align 4
  br i1 %tobool41.not, label %if.else52, label %if.then42

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %conv51 = zext i8 %44 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 8
  %51 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 10
  %52 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or19, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 14
  %53 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call36, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 19
  %54 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %50, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 28
  %55 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @snd_usbmidi_out_urb_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 27
  %56 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx34, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %48, i32 0, i32 4
  %57 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %58)
  %cmp.i = icmp eq i32 %58, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %58)
  %cmp6.i = icmp ugt i32 %58, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  %59 = tail call i32 @llvm.umin.i32(i32 %conv51, i32 16) #12
  %sub.i = add nsw i32 %59, -1
  %shl.i197 = shl nuw nsw i32 1, %sub.i
  %interval.sink.i = select i1 %or.cond.i, i32 %shl.i197, i32 %conv51
  %60 = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 25
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %interval.sink.i, ptr %60, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 23
  %62 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %start_frame.i, align 4
  br label %if.end60

if.else52:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %dev1.i199 = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 8
  %63 = ptrtoint ptr %dev1.i199 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %48, ptr %dev1.i199, align 4
  %pipe2.i200 = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 10
  %64 = ptrtoint ptr %pipe2.i200 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or19, ptr %pipe2.i200, align 4
  %transfer_buffer3.i201 = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 14
  %65 = ptrtoint ptr %transfer_buffer3.i201 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call36, ptr %transfer_buffer3.i201, align 4
  %transfer_buffer_length.i202 = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 19
  %66 = ptrtoint ptr %transfer_buffer_length.i202 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %50, ptr %transfer_buffer_length.i202, align 4
  %complete.i203 = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 28
  %67 = ptrtoint ptr %complete.i203 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @snd_usbmidi_out_urb_complete, ptr %complete.i203, align 4
  %context4.i204 = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 27
  %68 = ptrtoint ptr %context4.i204 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %arrayidx34, ptr %context4.i204, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.else52, %if.then42
  %69 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx34, align 4
  %call64 = tail call i32 @usb_urb_ep_type_check(ptr noundef %70) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %do.end, label %if.end72

do.end:                                           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %umidi, align 4
  %dev69 = getelementptr inbounds %struct.usb_device, ptr %72, i32 0, i32 15
  %73 = ptrtoint ptr %ep_info to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %ep_info, align 2
  %conv71 = sext i8 %74 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev69, ptr noundef nonnull @.str.60, i32 noundef %conv71) #15
  br label %error

if.end72:                                         ; preds = %if.end60
  %75 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx34, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %76, i32 0, i32 13
  %77 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 4, ptr %transfer_flags, align 4
  %inc77 = add nuw nsw i32 %i.1207, 1
  %exitcond.not = icmp eq i32 %inc77, 7
  br i1 %exitcond.not, label %do.body79, label %if.end72.for.body30_crit_edge

if.end72.for.body30_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body30

do.body79:                                        ; preds = %if.end72
  %buffer_lock = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %buffer_lock, ptr noundef nonnull @.str.62, ptr noundef nonnull @snd_usbmidi_out_endpoint_create.__key, i16 noundef signext 3) #12
  %work = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #12
  %78 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.64, ptr noundef nonnull @snd_usbmidi_out_endpoint_create.__key.63, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry87 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 5, i32 1
  %79 = ptrtoint ptr %entry87 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %entry87, ptr %entry87, align 4
  %prev.i = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 5, i32 1, i32 1
  %80 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %entry87, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 5, i32 2
  %81 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @snd_usbmidi_out_work, ptr %func, align 4
  %drain_wait = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %drain_wait, ptr noundef nonnull @.str.66, ptr noundef nonnull @snd_usbmidi_out_endpoint_create.__key.65) #12
  %out_cables = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %ep_info, i32 0, i32 4
  %82 = ptrtoint ptr %out_cables to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %out_cables, align 2
  %conv98 = zext i16 %83 to i32
  br label %for.body97

for.body97:                                       ; preds = %for.inc108.for.body97_crit_edge, %do.body79
  %i.2208 = phi i32 [ 0, %do.body79 ], [ %inc109, %for.inc108.for.body97_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.2208
  %and = and i32 %shl, %conv98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool99.not = icmp eq i32 %and, 0
  br i1 %tobool99.not, label %for.body97.for.inc108_crit_edge, label %if.then100

for.body97.for.inc108_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc108

if.then100:                                       ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx101 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 8, i32 %i.2208
  %84 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call7.i.i, ptr %arrayidx101, align 4
  %i.2.tr = trunc i32 %i.2208 to i8
  %conv104 = shl nuw i8 %i.2.tr, 4
  %cable = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %call7.i.i, i32 0, i32 8, i32 %i.2208, i32 3
  %85 = ptrtoint ptr %cable to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv104, ptr %cable, align 8
  br label %for.inc108

for.inc108:                                       ; preds = %if.then100, %for.body97.for.inc108_crit_edge
  %inc109 = add nuw nsw i32 %i.2208, 1
  %exitcond212.not = icmp eq i32 %inc109, 16
  br i1 %exitcond212.not, label %for.end110, label %for.inc108.for.body97_crit_edge

for.inc108.for.body97_crit_edge:                  ; preds = %for.inc108
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body97

for.end110:                                       ; preds = %for.inc108
  %usb_protocol_ops = getelementptr inbounds %struct.snd_usb_midi, ptr %umidi, i32 0, i32 5
  %86 = ptrtoint ptr %usb_protocol_ops to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %usb_protocol_ops, align 4
  %init_out_endpoint = getelementptr inbounds %struct.usb_protocol_ops, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %init_out_endpoint to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %init_out_endpoint, align 4
  %tobool111.not = icmp eq ptr %89, null
  br i1 %tobool111.not, label %for.end110.if.end115_crit_edge, label %if.then112

for.end110.if.end115_crit_edge:                   ; preds = %for.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

if.then112:                                       ; preds = %for.end110
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %89(ptr noundef nonnull %call7.i.i) #12
  br label %if.end115

if.end115:                                        ; preds = %if.then112, %for.end110.if.end115_crit_edge
  %90 = ptrtoint ptr %rep to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call7.i.i, ptr %rep, align 4
  br label %cleanup

error:                                            ; preds = %do.end, %for.body30.error_crit_edge, %if.end8.5.error_crit_edge, %if.end8.4.error_crit_edge, %if.end8.3.error_crit_edge, %if.end8.2.error_crit_edge, %if.end8.1.error_crit_edge, %if.end8.error_crit_edge, %if.end.error_crit_edge
  %err.0 = phi i32 [ %call64, %do.end ], [ -12, %if.end8.5.error_crit_edge ], [ -12, %if.end8.4.error_crit_edge ], [ -12, %if.end8.3.error_crit_edge ], [ -12, %if.end8.2.error_crit_edge ], [ -12, %if.end8.1.error_crit_edge ], [ -12, %if.end8.error_crit_edge ], [ -12, %if.end.error_crit_edge ], [ -12, %for.body30.error_crit_edge ]
  tail call fastcc void @snd_usbmidi_out_endpoint_clear(ptr noundef nonnull %call7.i.i) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end115, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %if.end115 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_usbmidi_in_endpoint_create(ptr noundef %umidi, ptr nocapture noundef readonly %ep_info, ptr nocapture noundef writeonly %rep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %in = getelementptr inbounds %struct.snd_usb_midi_endpoint, ptr %rep, i32 0, i32 1
  %0 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %in, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 168) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %umidi, ptr %call7.i.i, align 8
  %call2 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %arrayidx = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %call7.i.i, i32 0, i32 1, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %call2, null
  br i1 %tobool5.not, label %if.end.error_crit_edge, label %for.cond

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

for.cond:                                         ; preds = %if.end
  %call2.1 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %arrayidx.1 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2.1, ptr %arrayidx.1, align 8
  %tobool5.not.1 = icmp eq ptr %call2.1, null
  br i1 %tobool5.not.1, label %for.cond.error_crit_edge, label %for.cond.1

for.cond.error_crit_edge:                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

for.cond.1:                                       ; preds = %for.cond
  %call2.2 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %arrayidx.2 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %call7.i.i, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2.2, ptr %arrayidx.2, align 4
  %tobool5.not.2 = icmp eq ptr %call2.2, null
  br i1 %tobool5.not.2, label %for.cond.1.error_crit_edge, label %for.cond.2

for.cond.1.error_crit_edge:                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

for.cond.2:                                       ; preds = %for.cond.1
  %call2.3 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %arrayidx.3 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %call7.i.i, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2.3, ptr %arrayidx.3, align 8
  %tobool5.not.3 = icmp eq ptr %call2.3, null
  br i1 %tobool5.not.3, label %for.cond.2.error_crit_edge, label %for.cond.3

for.cond.2.error_crit_edge:                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

for.cond.3:                                       ; preds = %for.cond.2
  %call2.4 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %arrayidx.4 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %call7.i.i, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2.4, ptr %arrayidx.4, align 4
  %tobool5.not.4 = icmp eq ptr %call2.4, null
  br i1 %tobool5.not.4, label %for.cond.3.error_crit_edge, label %for.cond.4

for.cond.3.error_crit_edge:                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

for.cond.4:                                       ; preds = %for.cond.3
  %call2.5 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %arrayidx.5 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %call7.i.i, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2.5, ptr %arrayidx.5, align 8
  %tobool5.not.5 = icmp eq ptr %call2.5, null
  br i1 %tobool5.not.5, label %for.cond.4.error_crit_edge, label %for.cond.5

for.cond.4.error_crit_edge:                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

for.cond.5:                                       ; preds = %for.cond.4
  %call2.6 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %arrayidx.6 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %call7.i.i, i32 0, i32 1, i32 6
  %9 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2.6, ptr %arrayidx.6, align 4
  %tobool5.not.6 = icmp eq ptr %call2.6, null
  br i1 %tobool5.not.6, label %for.cond.5.error_crit_edge, label %for.cond.6

for.cond.5.error_crit_edge:                       ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

for.cond.6:                                       ; preds = %for.cond.5
  %in_interval = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %ep_info, i32 0, i32 3
  %10 = ptrtoint ptr %in_interval to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %in_interval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not = icmp eq i8 %11, 0
  %12 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %umidi, align 4
  %in_ep13 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %ep_info, i32 0, i32 2
  %14 = ptrtoint ptr %in_ep13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %in_ep13, align 2
  %conv14 = sext i8 %15 to i32
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 8
  %shl.i110 = shl i32 %17, 8
  %shl1.i111 = shl nsw i32 %conv14, 15
  %or.i112 = or i32 %shl1.i111, %shl.i110
  %. = select i1 %tobool8.not, i32 -1073741696, i32 1073741952
  %or17 = or i32 %or.i112, %.
  %18 = load ptr, ptr %umidi, align 4
  %19 = lshr i32 %or.i112, 15
  %and.i = and i32 %19, 15
  %arrayidx57.i = getelementptr %struct.usb_device, ptr %18, i32 0, i32 21, i32 %and.i
  %20 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %ep.0.i = load ptr, ptr %arrayidx57.i, align 4
  %tobool59.not.i = icmp eq ptr %ep.0.i, null
  br i1 %tobool59.not.i, label %for.cond.6.usb_maxpacket.exit_crit_edge, label %if.end61.i

for.cond.6.usb_maxpacket.exit_crit_edge:          ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_maxpacket.exit

if.end61.i:                                       ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #14
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0.i, i32 0, i32 4
  %21 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %23 = and i16 %22, -249
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #12
  %phi.cast = zext i16 %24 to i32
  br label %usb_maxpacket.exit

usb_maxpacket.exit:                               ; preds = %if.end61.i, %for.cond.6.usb_maxpacket.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %if.end61.i ], [ 0, %for.cond.6.usb_maxpacket.exit_crit_edge ]
  br label %for.body25

for.cond22:                                       ; preds = %if.end45
  %inc60 = add nuw nsw i32 %i.1122, 1
  %exitcond.not = icmp eq i32 %inc60, 7
  br i1 %exitcond.not, label %for.end61, label %for.cond22.for.body25_crit_edge

for.cond22.for.body25_crit_edge:                  ; preds = %for.cond22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body25

for.body25:                                       ; preds = %for.cond22.for.body25_crit_edge, %usb_maxpacket.exit
  %i.1122 = phi i32 [ 0, %usb_maxpacket.exit ], [ %inc60, %for.cond22.for.body25_crit_edge ]
  %25 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %umidi, align 4
  %arrayidx28 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %call7.i.i, i32 0, i32 1, i32 %i.1122
  %27 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx28, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 15
  %call29 = tail call ptr @usb_alloc_coherent(ptr noundef %26, i32 noundef %retval.0.i, i32 noundef 3264, ptr noundef %transfer_dma) #12
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %for.body25.error_crit_edge, label %if.end32

for.body25.error_crit_edge:                       ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end32:                                         ; preds = %for.body25
  %29 = ptrtoint ptr %in_interval to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %in_interval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool34.not = icmp eq i8 %30, 0
  %31 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx28, align 4
  %33 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %umidi, align 4
  br i1 %tobool34.not, label %if.else41, label %if.then35

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %conv40 = zext i8 %30 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 8
  %35 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 10
  %36 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or17, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 14
  %37 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call29, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 19
  %38 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.0.i, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 28
  %39 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @snd_usbmidi_in_urb_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 27
  %40 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 4
  %41 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp.i = icmp eq i32 %42, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %cmp6.i = icmp ugt i32 %42, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  %43 = tail call i32 @llvm.umin.i32(i32 %conv40, i32 16) #12
  %sub.i = add nsw i32 %43, -1
  %shl.i113 = shl nuw nsw i32 1, %sub.i
  %interval.sink.i = select i1 %or.cond.i, i32 %shl.i113, i32 %conv40
  %44 = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 25
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %interval.sink.i, ptr %44, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 23
  %46 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %start_frame.i, align 4
  br label %if.end45

if.else41:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %dev1.i114 = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 8
  %47 = ptrtoint ptr %dev1.i114 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %34, ptr %dev1.i114, align 4
  %pipe2.i115 = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 10
  %48 = ptrtoint ptr %pipe2.i115 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or17, ptr %pipe2.i115, align 4
  %transfer_buffer3.i116 = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 14
  %49 = ptrtoint ptr %transfer_buffer3.i116 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call29, ptr %transfer_buffer3.i116, align 4
  %transfer_buffer_length.i117 = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 19
  %50 = ptrtoint ptr %transfer_buffer_length.i117 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval.0.i, ptr %transfer_buffer_length.i117, align 4
  %complete.i118 = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 28
  %51 = ptrtoint ptr %complete.i118 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @snd_usbmidi_in_urb_complete, ptr %complete.i118, align 4
  %context4.i119 = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 27
  %52 = ptrtoint ptr %context4.i119 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i, ptr %context4.i119, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else41, %if.then35
  %53 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx28, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %54, i32 0, i32 13
  %55 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 4, ptr %transfer_flags, align 4
  %56 = load ptr, ptr %arrayidx28, align 4
  %call50 = tail call i32 @usb_urb_ep_type_check(ptr noundef %56) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.end, label %for.cond22

do.end:                                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %umidi, align 4
  %dev55 = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 15
  %in_ep56 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %ep_info, i32 0, i32 2
  %59 = ptrtoint ptr %in_ep56 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %in_ep56, align 2
  %conv57 = sext i8 %60 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull @.str.70, i32 noundef %conv57) #15
  br label %error

for.end61:                                        ; preds = %for.cond22
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i, ptr %in, align 4
  br label %cleanup

error:                                            ; preds = %do.end, %for.body25.error_crit_edge, %for.cond.5.error_crit_edge, %for.cond.4.error_crit_edge, %for.cond.3.error_crit_edge, %for.cond.2.error_crit_edge, %for.cond.1.error_crit_edge, %for.cond.error_crit_edge, %if.end.error_crit_edge
  %err.0 = phi i32 [ %call50, %do.end ], [ -12, %for.cond.5.error_crit_edge ], [ -12, %for.cond.4.error_crit_edge ], [ -12, %for.cond.3.error_crit_edge ], [ -12, %for.cond.2.error_crit_edge ], [ -12, %for.cond.1.error_crit_edge ], [ -12, %for.cond.error_crit_edge ], [ -12, %if.end.error_crit_edge ], [ -12, %for.body25.error_crit_edge ]
  tail call fastcc void @snd_usbmidi_in_endpoint_delete(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %error, %for.end61, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %for.end61 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_usbmidi_init_substream(ptr nocapture noundef readonly %umidi, i32 noundef %stream, i32 noundef %number, i32 noundef %jack_id, ptr nocapture noundef writeonly %rsubstream) unnamed_addr #0 align 64 {
entry:
  %jack_name_buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %jack_name_buf) #12
  %rmidi.i = getelementptr inbounds %struct.snd_usb_midi, ptr %umidi, i32 0, i32 4
  %0 = call ptr @memset(ptr %jack_name_buf, i32 255, i32 32)
  %1 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmidi.i, align 4
  %substreams.i = getelementptr %struct.snd_rawmidi, ptr %2, i32 0, i32 8, i32 %stream, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %substream.0.in.i = phi ptr [ %substreams.i, %entry ], [ %substream.0.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %substream.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %substream.0.i = load ptr, ptr %substream.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %substream.0.i, %substreams.i
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %number5.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream.0.i, i32 0, i32 2
  %4 = ptrtoint ptr %number5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number5.i, align 4
  %cmp6.i = icmp eq i32 %5, %number
  br i1 %cmp6.i, label %snd_usbmidi_find_substream.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

snd_usbmidi_find_substream.exit:                  ; preds = %for.body.i
  %tobool.not = icmp eq ptr %substream.0.i, null
  br i1 %tobool.not, label %snd_usbmidi_find_substream.exit.do.end_crit_edge, label %if.end

snd_usbmidi_find_substream.exit.do.end_crit_edge: ; preds = %snd_usbmidi_find_substream.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %snd_usbmidi_find_substream.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  %6 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %umidi, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.73, i32 noundef %stream, i32 noundef %number) #15
  br label %cleanup

if.end:                                           ; preds = %snd_usbmidi_find_substream.exit
  %iface = getelementptr inbounds %struct.snd_usb_midi, ptr %umidi, i32 0, i32 2
  %8 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iface, align 4
  %tobool2.not = icmp ne ptr %9, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %jack_id)
  %cmp = icmp sgt i32 %jack_id, -1
  %or.cond = and i1 %cmp, %tobool2.not
  br i1 %or.cond, label %if.then3, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then3:                                         ; preds = %if.end
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur_altsetting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream)
  %cmp4.not = icmp eq i32 %stream, 0
  %conv17 = trunc i32 %jack_id to i8
  %extralen2.i85 = getelementptr inbounds %struct.usb_host_interface, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %extralen2.i85 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %extralen2.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp45.i86 = icmp sgt i32 %13, 4
  br i1 %cmp4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then3
  br i1 %cmp45.i86, label %while.body.preheader.i, label %if.then5.if.end36_crit_edge

if.then5.if.end36_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

while.body.preheader.i:                           ; preds = %if.then5
  %extra1.i = getelementptr inbounds %struct.usb_host_interface, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %extra1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %extra1.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.backedge, %while.body.preheader.i
  %extralen.048.i = phi i32 [ %13, %while.body.preheader.i ], [ %extralen.048.i.be, %while.body.i.backedge ]
  %extra.046.i = phi ptr [ %15, %while.body.preheader.i ], [ %extra.046.i.be, %while.body.i.backedge ]
  %16 = ptrtoint ptr %extra.046.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %extra.046.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %17)
  %cmp3.i = icmp ugt i8 %17, 5
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %bDescriptorType.i = getelementptr inbounds %struct.usb_midi_out_jack_descriptor, ptr %extra.046.i, i32 0, i32 1
  %18 = ptrtoint ptr %bDescriptorType.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bDescriptorType.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %19)
  %cmp6.i84 = icmp eq i8 %19, 36
  br i1 %cmp6.i84, label %land.lhs.true8.i, label %land.lhs.true.i.cleanup.i_crit_edge

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %bDescriptorSubtype.i = getelementptr inbounds %struct.usb_midi_out_jack_descriptor, ptr %extra.046.i, i32 0, i32 2
  %20 = ptrtoint ptr %bDescriptorSubtype.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bDescriptorSubtype.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %cmp10.i = icmp eq i8 %21, 3
  br i1 %cmp10.i, label %land.lhs.true12.i, label %land.lhs.true8.i.cleanup.i_crit_edge

land.lhs.true8.i.cleanup.i_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

land.lhs.true12.i:                                ; preds = %land.lhs.true8.i
  %bJackID.i = getelementptr inbounds %struct.usb_midi_out_jack_descriptor, ptr %extra.046.i, i32 0, i32 4
  %22 = ptrtoint ptr %bJackID.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bJackID.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %conv17)
  %cmp15.i = icmp eq i8 %23, %conv17
  br i1 %cmp15.i, label %find_usb_out_jack_descriptor.exit, label %land.lhs.true12.i.cleanup.i_crit_edge

land.lhs.true12.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp ne i8 %17, 0
  %conv20.i = zext i8 %17 to i32
  %sub.i = sub nsw i32 %extralen.048.i, %conv20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, 4
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.end.i.while.body.i.backedge_crit_edge, label %if.end.i.if.end36_crit_edge

if.end.i.if.end36_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.end.i.while.body.i.backedge_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.backedge

while.body.i.backedge:                            ; preds = %cleanup.i.while.body.i.backedge_crit_edge, %if.end.i.while.body.i.backedge_crit_edge
  %extralen.048.i.be = phi i32 [ %sub.old.i, %cleanup.i.while.body.i.backedge_crit_edge ], [ %sub.i, %if.end.i.while.body.i.backedge_crit_edge ]
  %conv20.old.i.pn = phi i32 [ %conv20.old.i, %cleanup.i.while.body.i.backedge_crit_edge ], [ %conv20.i, %if.end.i.while.body.i.backedge_crit_edge ]
  %extra.046.i.be = getelementptr i8, ptr %extra.046.i, i32 %conv20.old.i.pn
  br label %while.body.i

cleanup.i:                                        ; preds = %land.lhs.true12.i.cleanup.i_crit_edge, %land.lhs.true8.i.cleanup.i_crit_edge, %land.lhs.true.i.cleanup.i_crit_edge
  %conv20.old.i = zext i8 %17 to i32
  %sub.old.i = sub nsw i32 %extralen.048.i, %conv20.old.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.old.i)
  %cmp.old.i = icmp sgt i32 %sub.old.i, 4
  br i1 %cmp.old.i, label %cleanup.i.while.body.i.backedge_crit_edge, label %cleanup.i.if.end36_crit_edge

cleanup.i.if.end36_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

cleanup.i.while.body.i.backedge_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.backedge

find_usb_out_jack_descriptor.exit:                ; preds = %land.lhs.true12.i
  %tobool7.not = icmp eq ptr %extra.046.i, null
  br i1 %tobool7.not, label %find_usb_out_jack_descriptor.exit.if.end36_crit_edge, label %if.then8

find_usb_out_jack_descriptor.exit.if.end36_crit_edge: ; preds = %find_usb_out_jack_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then8:                                         ; preds = %find_usb_out_jack_descriptor.exit
  %bNrInputPins = getelementptr inbounds %struct.usb_midi_out_jack_descriptor, ptr %extra.046.i, i32 0, i32 5
  %24 = ptrtoint ptr %bNrInputPins to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bNrInputPins, align 1
  %conv9 = zext i8 %25 to i32
  %mul = shl nuw nsw i32 %conv9, 1
  %add = add nuw nsw i32 %mul, 7
  %26 = ptrtoint ptr %extra.046.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %extra.046.i, align 1
  %conv10 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv10)
  %cmp11.not = icmp ugt i32 %add, %conv10
  br i1 %cmp11.not, label %if.then8.if.end36_crit_edge, label %if.then13

if.then8.if.end36_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %extra.046.i, i32 %add
  %add.ptr14 = getelementptr i8, ptr %add.ptr, i32 -1
  br label %if.end23

if.else:                                          ; preds = %if.then3
  br i1 %cmp45.i86, label %while.body.preheader.i88, label %if.else.if.end36_crit_edge

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

while.body.preheader.i88:                         ; preds = %if.else
  %extra1.i87 = getelementptr inbounds %struct.usb_host_interface, ptr %11, i32 0, i32 2
  %28 = ptrtoint ptr %extra1.i87 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %extra1.i87, align 4
  br label %while.body.i92

while.body.i92:                                   ; preds = %while.body.i92.backedge, %while.body.preheader.i88
  %extralen.048.i89 = phi i32 [ %13, %while.body.preheader.i88 ], [ %extralen.048.i89.be, %while.body.i92.backedge ]
  %extra.046.i90 = phi ptr [ %29, %while.body.preheader.i88 ], [ %extra.046.i90.be, %while.body.i92.backedge ]
  %30 = ptrtoint ptr %extra.046.i90 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %extra.046.i90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %31)
  %cmp3.i91 = icmp ugt i8 %31, 5
  br i1 %cmp3.i91, label %land.lhs.true.i95, label %if.end.i108

land.lhs.true.i95:                                ; preds = %while.body.i92
  %bDescriptorType.i93 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, ptr %extra.046.i90, i32 0, i32 1
  %32 = ptrtoint ptr %bDescriptorType.i93 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bDescriptorType.i93, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %33)
  %cmp6.i94 = icmp eq i8 %33, 36
  br i1 %cmp6.i94, label %land.lhs.true8.i98, label %land.lhs.true.i95.cleanup.i113_crit_edge

land.lhs.true.i95.cleanup.i113_crit_edge:         ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i113

land.lhs.true8.i98:                               ; preds = %land.lhs.true.i95
  %bDescriptorSubtype.i96 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, ptr %extra.046.i90, i32 0, i32 2
  %34 = ptrtoint ptr %bDescriptorSubtype.i96 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bDescriptorSubtype.i96, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp10.i97 = icmp eq i8 %35, 2
  br i1 %cmp10.i97, label %land.lhs.true12.i101, label %land.lhs.true8.i98.cleanup.i113_crit_edge

land.lhs.true8.i98.cleanup.i113_crit_edge:        ; preds = %land.lhs.true8.i98
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i113

land.lhs.true12.i101:                             ; preds = %land.lhs.true8.i98
  %bJackID.i99 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, ptr %extra.046.i90, i32 0, i32 4
  %36 = ptrtoint ptr %bJackID.i99 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bJackID.i99, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %conv17)
  %cmp15.i100 = icmp eq i8 %37, %conv17
  br i1 %cmp15.i100, label %find_usb_in_jack_descriptor.exit, label %land.lhs.true12.i101.cleanup.i113_crit_edge

land.lhs.true12.i101.cleanup.i113_crit_edge:      ; preds = %land.lhs.true12.i101
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i113

if.end.i108:                                      ; preds = %while.body.i92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i102 = icmp ne i8 %31, 0
  %conv20.i103 = zext i8 %31 to i32
  %sub.i104 = sub nsw i32 %extralen.048.i89, %conv20.i103
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i104)
  %cmp.i106 = icmp sgt i32 %sub.i104, 4
  %or.cond.i107 = select i1 %tobool.not.i102, i1 %cmp.i106, i1 false
  br i1 %or.cond.i107, label %if.end.i108.while.body.i92.backedge_crit_edge, label %if.end.i108.if.end36_crit_edge

if.end.i108.if.end36_crit_edge:                   ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.end.i108.while.body.i92.backedge_crit_edge:    ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i92.backedge

while.body.i92.backedge:                          ; preds = %cleanup.i113.while.body.i92.backedge_crit_edge, %if.end.i108.while.body.i92.backedge_crit_edge
  %extralen.048.i89.be = phi i32 [ %sub.old.i110, %cleanup.i113.while.body.i92.backedge_crit_edge ], [ %sub.i104, %if.end.i108.while.body.i92.backedge_crit_edge ]
  %conv20.old.i109.pn = phi i32 [ %conv20.old.i109, %cleanup.i113.while.body.i92.backedge_crit_edge ], [ %conv20.i103, %if.end.i108.while.body.i92.backedge_crit_edge ]
  %extra.046.i90.be = getelementptr i8, ptr %extra.046.i90, i32 %conv20.old.i109.pn
  br label %while.body.i92

cleanup.i113:                                     ; preds = %land.lhs.true12.i101.cleanup.i113_crit_edge, %land.lhs.true8.i98.cleanup.i113_crit_edge, %land.lhs.true.i95.cleanup.i113_crit_edge
  %conv20.old.i109 = zext i8 %31 to i32
  %sub.old.i110 = sub nsw i32 %extralen.048.i89, %conv20.old.i109
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.old.i110)
  %cmp.old.i112 = icmp sgt i32 %sub.old.i110, 4
  br i1 %cmp.old.i112, label %cleanup.i113.while.body.i92.backedge_crit_edge, label %cleanup.i113.if.end36_crit_edge

cleanup.i113.if.end36_crit_edge:                  ; preds = %cleanup.i113
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

cleanup.i113.while.body.i92.backedge_crit_edge:   ; preds = %cleanup.i113
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i92.backedge

find_usb_in_jack_descriptor.exit:                 ; preds = %land.lhs.true12.i101
  %tobool19.not = icmp eq ptr %extra.046.i90, null
  br i1 %tobool19.not, label %find_usb_in_jack_descriptor.exit.if.end36_crit_edge, label %if.then20

find_usb_in_jack_descriptor.exit.if.end36_crit_edge: ; preds = %find_usb_in_jack_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then20:                                        ; preds = %find_usb_in_jack_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #14
  %iJack21 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, ptr %extra.046.i90, i32 0, i32 5
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.then13
  %iJack.0.in = phi ptr [ %add.ptr14, %if.then13 ], [ %iJack21, %if.then20 ]
  %38 = ptrtoint ptr %iJack.0.in to i32
  call void @__asan_load1_noabort(i32 %38)
  %iJack.0 = load i8, ptr %iJack.0.in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %iJack.0)
  %cmp25.not = icmp eq i8 %iJack.0, 0
  br i1 %cmp25.not, label %if.end23.if.end36_crit_edge, label %if.then27

if.end23.if.end36_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %conv24 = zext i8 %iJack.0 to i32
  %39 = ptrtoint ptr %umidi to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %umidi, align 4
  %call30 = call i32 @usb_string(ptr noundef %40, i32 noundef %conv24, ptr noundef nonnull %jack_name_buf, i32 noundef 32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  %spec.select = select i1 %tobool31.not, ptr @.str.72, ptr %jack_name_buf
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %if.end23.if.end36_crit_edge, %find_usb_in_jack_descriptor.exit.if.end36_crit_edge, %cleanup.i113.if.end36_crit_edge, %if.end.i108.if.end36_crit_edge, %if.else.if.end36_crit_edge, %if.then8.if.end36_crit_edge, %find_usb_out_jack_descriptor.exit.if.end36_crit_edge, %cleanup.i.if.end36_crit_edge, %if.end.i.if.end36_crit_edge, %if.then5.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %jack_name.0 = phi ptr [ @.str.72, %if.end23.if.end36_crit_edge ], [ @.str.72, %if.end.if.end36_crit_edge ], [ %spec.select, %if.then27 ], [ @.str.72, %if.then8.if.end36_crit_edge ], [ @.str.72, %find_usb_out_jack_descriptor.exit.if.end36_crit_edge ], [ @.str.72, %find_usb_in_jack_descriptor.exit.if.end36_crit_edge ], [ @.str.72, %if.then5.if.end36_crit_edge ], [ @.str.72, %if.else.if.end36_crit_edge ], [ @.str.72, %if.end.i108.if.end36_crit_edge ], [ @.str.72, %cleanup.i113.if.end36_crit_edge ], [ @.str.72, %if.end.i.if.end36_crit_edge ], [ @.str.72, %cleanup.i.if.end36_crit_edge ]
  %usb_id.i = getelementptr inbounds %struct.snd_usb_midi, ptr %umidi, i32 0, i32 11
  %41 = ptrtoint ptr %usb_id.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %usb_id.i, align 4
  br label %for.body.i115

for.body.i115:                                    ; preds = %for.inc.i.for.body.i115_crit_edge, %if.end36
  %i.010.i = phi i32 [ 0, %if.end36 ], [ %inc.i, %for.inc.i.for.body.i115_crit_edge ]
  %arrayidx.i = getelementptr [88 x %struct.port_info], ptr @snd_usbmidi_port_info, i32 0, i32 %i.010.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %42)
  %cmp1.i = icmp eq i32 %44, %42
  br i1 %cmp1.i, label %land.lhs.true.i117, label %for.body.i115.for.inc.i_crit_edge

for.body.i115.for.inc.i_crit_edge:                ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i117:                               ; preds = %for.body.i115
  %port.i = getelementptr [88 x %struct.port_info], ptr @snd_usbmidi_port_info, i32 0, i32 %i.010.i, i32 1
  %45 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %port.i, align 4
  %conv.i = sext i16 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %number)
  %cmp3.i116 = icmp eq i32 %conv.i, %number
  br i1 %cmp3.i116, label %find_port_info.exit, label %land.lhs.true.i117.for.inc.i_crit_edge

land.lhs.true.i117.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i117
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i117.for.inc.i_crit_edge, %for.body.i115.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 88
  br i1 %exitcond.not.i, label %for.inc.i.cond.false_crit_edge, label %for.inc.i.for.body.i115_crit_edge

for.inc.i.for.body.i115_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i115

for.inc.i.cond.false_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

find_port_info.exit:                              ; preds = %land.lhs.true.i117
  %tobool38.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool38.not, label %find_port_info.exit.cond.false_crit_edge, label %cond.true

find_port_info.exit.cond.false_crit_edge:         ; preds = %find_port_info.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

cond.true:                                        ; preds = %find_port_info.exit
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr [88 x %struct.port_info], ptr @snd_usbmidi_port_info, i32 0, i32 %i.010.i, i32 3
  %47 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %name, align 4
  br label %cond.end

cond.false:                                       ; preds = %find_port_info.exit.cond.false_crit_edge, %for.inc.i.cond.false_crit_edge
  %cmp39.not = icmp eq ptr %jack_name.0, @.str.72
  %cond = select i1 %cmp39.not, ptr @.str.76, ptr @.str.75
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond41 = phi ptr [ %48, %cond.true ], [ %cond, %cond.false ]
  %name42 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream.0.i, i32 0, i32 12
  %card = getelementptr inbounds %struct.snd_usb_midi, ptr %umidi, i32 0, i32 1
  %49 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %card, align 4
  %shortname = getelementptr inbounds %struct.snd_card, ptr %50, i32 0, i32 3
  %add45 = add i32 %number, 1
  %call46 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name42, i32 noundef 32, ptr noundef %cond41, ptr noundef %shortname, ptr noundef nonnull %jack_name.0, i32 noundef %add45)
  %51 = ptrtoint ptr %rsubstream to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %substream.0.i, ptr %rsubstream, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %jack_name_buf) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_out_urb_complete(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context1, align 4
  %ep2 = getelementptr inbounds %struct.out_urb_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ep2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep2, align 4
  %buffer_lock = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %3, i32 0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffer_lock) #12
  %urbs = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %3, i32 0, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %urbs to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  %shl = shl nuw i32 1, %sub.ptr.div
  %neg = xor i32 %shl, -1
  %active_urbs = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %active_urbs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active_urbs, align 4
  %and = and i32 %5, %neg
  store i32 %and, ptr %active_urbs, align 4
  %drain_urbs = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %drain_urbs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %drain_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !233

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and12 = and i32 %7, %neg
  %8 = ptrtoint ptr %drain_urbs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and12, ptr %drain_urbs, align 4
  %drain_wait = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %3, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %drain_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffer_lock, i32 noundef %call4) #12
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp14 = icmp slt i32 %10, 0
  br i1 %cmp14, label %if.then16, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then16:                                        ; preds = %if.end
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %10, label %snd_usbmidi_urb_error.exit [
    i32 -2, label %if.then16.cleanup28_crit_edge
    i32 -104, label %if.then16.cleanup28_crit_edge53
    i32 -108, label %if.then16.cleanup28_crit_edge54
    i32 -19, label %if.then16.cleanup28_crit_edge55
    i32 -71, label %if.then16.if.then23_crit_edge
    i32 -62, label %if.then16.if.then23_crit_edge56
    i32 -84, label %if.then16.if.then23_crit_edge57
  ]

if.then16.if.then23_crit_edge57:                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23

if.then16.if.then23_crit_edge56:                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23

if.then16.if.then23_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23

if.then16.cleanup28_crit_edge55:                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup28

if.then16.cleanup28_crit_edge54:                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup28

if.then16.cleanup28_crit_edge53:                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup28

if.then16.cleanup28_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup28

snd_usbmidi_urb_error.exit:                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %dev2.i = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.68, i32 noundef %10) #15
  br label %if.end27

if.then23:                                        ; preds = %if.then16.if.then23_crit_edge, %if.then16.if.then23_crit_edge56, %if.then16.if.then23_crit_edge57
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %error_timer = getelementptr inbounds %struct.snd_usb_midi, ptr %15, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %16, 10
  %call24 = tail call i32 @mod_timer(ptr noundef %error_timer, i32 noundef %add) #12
  br label %cleanup28

if.end27:                                         ; preds = %snd_usbmidi_urb_error.exit, %if.end.if.end27_crit_edge
  tail call fastcc void @snd_usbmidi_do_output(ptr noundef %3)
  br label %cleanup28

cleanup28:                                        ; preds = %if.end27, %if.then23, %if.then16.cleanup28_crit_edge, %if.then16.cleanup28_crit_edge53, %if.then16.cleanup28_crit_edge54, %if.then16.cleanup28_crit_edge55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_urb_ep_type_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_out_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -72
  tail call fastcc void @snd_usbmidi_do_output(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbmidi_in_urb_complete(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %3, label %snd_usbmidi_urb_error.exit [
    i32 0, label %if.then
    i32 -2, label %entry.cleanup12_crit_edge
    i32 -104, label %entry.cleanup12_crit_edge35
    i32 -108, label %entry.cleanup12_crit_edge36
    i32 -19, label %entry.cleanup12_crit_edge37
    i32 -71, label %entry.if.then4_crit_edge
    i32 -62, label %entry.if.then4_crit_edge38
    i32 -84, label %entry.if.then4_crit_edge39
  ]

entry.if.then4_crit_edge39:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

entry.if.then4_crit_edge38:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

entry.cleanup12_crit_edge37:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup12

entry.cleanup12_crit_edge36:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup12

entry.cleanup12_crit_edge35:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup12

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %usb_protocol_ops = getelementptr inbounds %struct.snd_usb_midi, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %usb_protocol_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_protocol_ops, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %11 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %13 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual_length, align 4
  tail call void %10(ptr noundef %1, ptr noundef %12, i32 noundef %14) #12
  br label %if.end8

snd_usbmidi_urb_error.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %dev2.i = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.68, i32 noundef %3) #15
  br label %if.end8

if.then4:                                         ; preds = %entry.if.then4_crit_edge, %entry.if.then4_crit_edge38, %entry.if.then4_crit_edge39
  %error_resubmit = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %error_resubmit to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %error_resubmit, align 1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %error_timer = getelementptr inbounds %struct.snd_usb_midi, ptr %19, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %20, 10
  %call6 = tail call i32 @mod_timer(ptr noundef %error_timer, i32 noundef %add) #12
  br label %cleanup12

if.end8:                                          ; preds = %snd_usbmidi_urb_error.exit, %if.then
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %dev10 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %25 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %dev10, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, -19
  %or.cond.i = or i1 %cmp.i, %cmp1.not.i
  br i1 %or.cond.i, label %if.end8.cleanup12_crit_edge, label %do.end.i29

if.end8.cleanup12_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup12

do.end.i29:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev10, align 4
  %dev2.i28 = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i28, ptr noundef nonnull @.str.12, i32 noundef %call.i) #15
  br label %cleanup12

cleanup12:                                        ; preds = %do.end.i29, %if.end8.cleanup12_crit_edge, %if.then4, %entry.cleanup12_crit_edge, %entry.cleanup12_crit_edge35, %entry.cleanup12_crit_edge36, %entry.cleanup12_crit_edge37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !33, !34, !35, !36, !37, !39, !41, !42, !43, !44, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !71, !72, !74, !76, !78, !80, !81, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !183, !184, !186, !187, !189, !190, !192, !193, !195, !197, !198, !199, !200, !202, !203, !204, !205, !207, !209, !210, !211, !212, !214, !216, !218, !219}
!llvm.named.register.sp = !{!220}
!llvm.module.flags = !{!221, !222, !223, !224, !225, !226, !227, !228}
!llvm.ident = !{!229}

!0 = !{ptr @__UNIQUE_ID_author238, !1, !"__UNIQUE_ID_author238", i1 false, i1 false}
!1 = !{!"../sound/usb/midi.c", i32 77, i32 1}
!2 = !{ptr @__UNIQUE_ID_description239, !3, !"__UNIQUE_ID_description239", i1 false, i1 false}
!3 = !{!"../sound/usb/midi.c", i32 78, i32 1}
!4 = !{ptr @__UNIQUE_ID_file240, !5, !"__UNIQUE_ID_file240", i1 false, i1 false}
!5 = !{!"../sound/usb/midi.c", i32 79, i32 1}
!6 = !{ptr @__UNIQUE_ID_license241, !5, !"__UNIQUE_ID_license241", i1 false, i1 false}
!7 = !{ptr @__ksymtab_snd_usbmidi_disconnect, !8, !"__ksymtab_snd_usbmidi_disconnect", i1 false, i1 false}
!8 = !{!"../sound/usb/midi.c", i32 1515, i32 1}
!9 = !{ptr @__ksymtab_snd_usbmidi_input_stop, !10, !"__ksymtab_snd_usbmidi_input_stop", i1 false, i1 false}
!10 = !{!"../sound/usb/midi.c", i32 2389, i32 1}
!11 = !{ptr @__ksymtab_snd_usbmidi_input_start, !12, !"__ksymtab_snd_usbmidi_input_start", i1 false, i1 false}
!12 = !{!"../sound/usb/midi.c", i32 2425, i32 1}
!13 = !{ptr @__ksymtab_snd_usbmidi_suspend, !14, !"__ksymtab_snd_usbmidi_suspend", i1 false, i1 false}
!14 = !{!"../sound/usb/midi.c", i32 2439, i32 1}
!15 = !{ptr @__ksymtab_snd_usbmidi_resume, !16, !"__ksymtab_snd_usbmidi_resume", i1 false, i1 false}
!16 = !{!"../sound/usb/midi.c", i32 2453, i32 1}
!17 = !{ptr @__snd_usbmidi_create.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../sound/usb/midi.c", i32 2477, i32 2}
!19 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__snd_usbmidi_create.__key.1, !21, !"__key", i1 false, i1 false}
!21 = !{!"../sound/usb/midi.c", i32 2478, i32 2}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__snd_usbmidi_create.__key.3, !24, !"__key", i1 false, i1 false}
!24 = !{!"../sound/usb/midi.c", i32 2479, i32 2}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__snd_usbmidi_create.__key.5, !27, !"__key", i1 false, i1 false}
!27 = !{!"../sound/usb/midi.c", i32 2484, i32 2}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/usb/midi.c", i32 2566, i32 3}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @__snd_usbmidi_create._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @__snd_usbmidi_create._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @__ksymtab___snd_usbmidi_create, !38, !"__ksymtab___snd_usbmidi_create", i1 false, i1 false}
!38 = !{!"../sound/usb/midi.c", i32 2603, i32 1}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/usb/midi.c", i32 180, i32 3}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @snd_usbmidi_submit_urb._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @snd_usbmidi_submit_urb._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @snd_usbmidi_standard_ops, !45, !"snd_usbmidi_standard_ops", i1 false, i1 false}
!45 = !{!"../sound/usb/midi.c", i32 659, i32 38}
!46 = !{ptr @snd_usbmidi_cin_length, !47, !"snd_usbmidi_cin_length", i1 false, i1 false}
!47 = !{!"../sound/usb/midi.c", i32 169, i32 22}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/usb/midi.c", i32 216, i32 3}
!50 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @snd_usbmidi_input_data.__UNIQUE_ID_ddebug242, !49, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/usb/midi.c", i32 1945, i32 3}
!55 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @snd_usbmidi_get_ms_info.__UNIQUE_ID_ddebug244, !54, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/usb/midi.c", i32 1948, i32 3}
!59 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @snd_usbmidi_get_ms_info._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @snd_usbmidi_get_ms_info._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/usb/midi.c", i32 1969, i32 6}
!64 = !{ptr @snd_usbmidi_get_ms_info._entry.21, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @snd_usbmidi_get_ms_info._entry_ptr.23, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/usb/midi.c", i32 1990, i32 4}
!68 = !{ptr @snd_usbmidi_get_ms_info.__UNIQUE_ID_ddebug245, !67, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!69 = !{ptr @snd_usbmidi_get_ms_info._entry.25, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../sound/usb/midi.c", i32 1995, i32 6}
!71 = !{ptr @snd_usbmidi_get_ms_info._entry_ptr.26, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @snd_usbmidi_get_ms_info.__UNIQUE_ID_ddebug246, !73, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!73 = !{!"../sound/usb/midi.c", i32 2011, i32 4}
!74 = !{ptr @snd_usbmidi_maudio_broken_running_status_ops, !75, !"snd_usbmidi_maudio_broken_running_status_ops", i1 false, i1 false}
!75 = !{!"../sound/usb/midi.c", i32 672, i32 25}
!76 = !{ptr @snd_usbmidi_122l_ops, !77, !"snd_usbmidi_122l_ops", i1 false, i1 false}
!77 = !{!"../sound/usb/midi.c", i32 917, i32 38}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/usb/midi.c", i32 2084, i32 2}
!80 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @snd_usbmidi_switch_roland_altsetting.__UNIQUE_ID_ddebug247, !79, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/usb/midi.c", i32 2051, i32 10}
!84 = !{ptr @roland_load_ctl, !85, !"roland_load_ctl", i1 false, i1 false}
!85 = !{!"../sound/usb/midi.c", i32 2049, i32 38}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/usb/midi.c", i32 2021, i32 39}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/usb/midi.c", i32 2021, i32 52}
!90 = !{ptr @roland_load_info.names, !91, !"names", i1 false, i1 false}
!91 = !{!"../sound/usb/midi.c", i32 2021, i32 27}
!92 = !{ptr @snd_usbmidi_midiman_ops, !93, !"snd_usbmidi_midiman_ops", i1 false, i1 false}
!93 = !{!"../sound/usb/midi.c", i32 665, i32 38}
!94 = !{ptr @snd_usbmidi_novation_ops, !95, !"snd_usbmidi_novation_ops", i1 false, i1 false}
!95 = !{!"../sound/usb/midi.c", i32 824, i32 38}
!96 = !{ptr @snd_usbmidi_raw_ops, !97, !"snd_usbmidi_raw_ops", i1 false, i1 false}
!97 = !{!"../sound/usb/midi.c", i32 856, i32 38}
!98 = !{ptr @snd_usbmidi_emagic_ops, !99, !"snd_usbmidi_emagic_ops", i1 false, i1 false}
!99 = !{!"../sound/usb/midi.c", i32 1050, i32 38}
!100 = !{ptr @snd_usbmidi_emagic_init_out.init_data, !101, !"init_data", i1 false, i1 false}
!101 = !{!"../sound/usb/midi.c", i32 928, i32 18}
!102 = !{ptr @snd_usbmidi_emagic_finish_out.finish_data, !103, !"finish_data", i1 false, i1 false}
!103 = !{!"../sound/usb/midi.c", i32 945, i32 18}
!104 = !{ptr @snd_usbmidi_cme_ops, !105, !"snd_usbmidi_cme_ops", i1 false, i1 false}
!105 = !{!"../sound/usb/midi.c", i32 678, i32 38}
!106 = !{ptr @snd_usbmidi_akai_ops, !107, !"snd_usbmidi_akai_ops", i1 false, i1 false}
!107 = !{!"../sound/usb/midi.c", i32 784, i32 38}
!108 = !{ptr @snd_usbmidi_ftdi_ops, !109, !"snd_usbmidi_ftdi_ops", i1 false, i1 false}
!109 = !{!"../sound/usb/midi.c", i32 872, i32 38}
!110 = !{ptr @snd_usbmidi_ch345_broken_sysex_ops, !111, !"snd_usbmidi_ch345_broken_sysex_ops", i1 false, i1 false}
!111 = !{!"../sound/usb/midi.c", i32 684, i32 38}
!112 = !{ptr @.str.32, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/usb/midi.c", i32 2349, i32 37}
!114 = !{ptr @snd_usbmidi_ops, !115, !"snd_usbmidi_ops", i1 false, i1 false}
!115 = !{!"../sound/usb/midi.c", i32 2339, i32 44}
!116 = !{ptr @.str.33, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/usb/midi.c", i32 1588, i32 2}
!118 = !{ptr @.str.34, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/usb/midi.c", i32 1589, i32 2}
!120 = !{ptr @.str.35, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/usb/midi.c", i32 1590, i32 2}
!122 = !{ptr @.str.36, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/usb/midi.c", i32 1591, i32 2}
!124 = !{ptr @.str.37, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/usb/midi.c", i32 1593, i32 2}
!126 = !{ptr @.str.38, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/usb/midi.c", i32 1595, i32 2}
!128 = !{ptr @.str.39, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/usb/midi.c", i32 1596, i32 2}
!130 = !{ptr @.str.40, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/usb/midi.c", i32 1597, i32 2}
!132 = !{ptr @.str.41, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/usb/midi.c", i32 1598, i32 2}
!134 = !{ptr @.str.42, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/usb/midi.c", i32 1599, i32 2}
!136 = !{ptr @.str.43, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/usb/midi.c", i32 1600, i32 2}
!138 = !{ptr @.str.44, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/usb/midi.c", i32 1602, i32 2}
!140 = !{ptr @.str.45, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/usb/midi.c", i32 1639, i32 2}
!142 = !{ptr @.str.46, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/usb/midi.c", i32 1640, i32 2}
!144 = !{ptr @.str.47, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/usb/midi.c", i32 1643, i32 2}
!146 = !{ptr @.str.48, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/usb/midi.c", i32 1644, i32 2}
!148 = !{ptr @.str.49, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/usb/midi.c", i32 1677, i32 2}
!150 = !{ptr @.str.50, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/usb/midi.c", i32 1689, i32 2}
!152 = !{ptr @.str.51, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/usb/midi.c", i32 1698, i32 2}
!154 = !{ptr @.str.52, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/usb/midi.c", i32 1699, i32 2}
!156 = !{ptr @.str.53, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/usb/midi.c", i32 1701, i32 2}
!158 = !{ptr @snd_usbmidi_port_info, !159, !"snd_usbmidi_port_info", i1 false, i1 false}
!159 = !{!"../sound/usb/midi.c", i32 1548, i32 3}
!160 = !{ptr @snd_usbmidi_output_ops, !161, !"snd_usbmidi_output_ops", i1 false, i1 false}
!161 = !{!"../sound/usb/midi.c", i32 1221, i32 37}
!162 = !{ptr @.str.54, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/usb/midi.c", i32 1137, i32 3}
!164 = !{ptr @snd_usbmidi_input_ops, !165, !"snd_usbmidi_input_ops", i1 false, i1 false}
!165 = !{!"../sound/usb/midi.c", i32 1228, i32 37}
!166 = !{ptr @.str.55, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/usb/midi.c", i32 2270, i32 3}
!168 = !{ptr @.str.56, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @snd_usbmidi_create_endpoints_midiman.__UNIQUE_ID_ddebug248, !167, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!170 = !{ptr @.str.57, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/usb/midi.c", i32 2276, i32 3}
!172 = !{ptr @snd_usbmidi_create_endpoints_midiman.__UNIQUE_ID_ddebug249, !171, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!173 = !{ptr @.str.58, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/usb/midi.c", i32 2281, i32 3}
!175 = !{ptr @snd_usbmidi_create_endpoints_midiman.__UNIQUE_ID_ddebug250, !174, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!176 = !{ptr @.str.59, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/usb/midi.c", i32 2288, i32 4}
!178 = !{ptr @snd_usbmidi_create_endpoints_midiman.__UNIQUE_ID_ddebug251, !177, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!179 = !{ptr @.str.60, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/usb/midi.c", i32 1420, i32 4}
!181 = !{ptr @.str.61, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @snd_usbmidi_out_endpoint_create._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @snd_usbmidi_out_endpoint_create._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @snd_usbmidi_out_endpoint_create.__key, !185, !"__key", i1 false, i1 false}
!185 = !{!"../sound/usb/midi.c", i32 1427, i32 2}
!186 = !{ptr @.str.62, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @snd_usbmidi_out_endpoint_create.__key.63, !188, !"__key", i1 false, i1 false}
!188 = !{!"../sound/usb/midi.c", i32 1428, i32 2}
!189 = !{ptr @.str.64, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @snd_usbmidi_out_endpoint_create.__key.65, !191, !"__key", i1 false, i1 false}
!191 = !{!"../sound/usb/midi.c", i32 1429, i32 2}
!192 = !{ptr @.str.66, !191, !"<string literal>", i1 false, i1 false}
!193 = distinct !{null, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!195 = !{ptr @.str.68, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/usb/midi.c", i32 202, i32 3}
!197 = !{ptr @.str.69, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @snd_usbmidi_urb_error._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @snd_usbmidi_urb_error._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.70, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/usb/midi.c", i32 1308, i32 4}
!202 = !{ptr @.str.71, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @snd_usbmidi_in_endpoint_create._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @snd_usbmidi_in_endpoint_create._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.72, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/usb/midi.c", i32 1800, i32 31}
!207 = !{ptr @.str.73, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/usb/midi.c", i32 1809, i32 3}
!209 = !{ptr @.str.74, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @snd_usbmidi_init_substream._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @snd_usbmidi_init_substream._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.75, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/usb/midi.c", i32 1842, i32 38}
!214 = !{ptr @.str.76, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/usb/midi.c", i32 1842, i32 48}
!216 = !{ptr @.str.77, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/usb/midi.c", i32 1893, i32 2}
!218 = !{ptr @.str.78, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @snd_usbmidi_create_endpoints.__UNIQUE_ID_ddebug243, !217, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!220 = !{!"sp"}
!221 = !{i32 1, !"wchar_size", i32 2}
!222 = !{i32 1, !"min_enum_size", i32 4}
!223 = !{i32 8, !"branch-target-enforcement", i32 0}
!224 = !{i32 8, !"sign-return-address", i32 0}
!225 = !{i32 8, !"sign-return-address-all", i32 0}
!226 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!227 = !{i32 7, !"uwtable", i32 1}
!228 = !{i32 7, !"frame-pointer", i32 2}
!229 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!230 = !{!"auto-init"}
!231 = !{i64 2148763567, i64 2148763572, i64 2148763585, i64 2148763629, i64 2148763663, i64 2148763684}
!232 = !{i8 0, i8 2}
!233 = !{!"branch_weights", i32 2000, i32 1}
