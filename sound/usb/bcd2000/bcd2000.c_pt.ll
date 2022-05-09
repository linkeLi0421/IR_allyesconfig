; ModuleID = '/llk/IR_all_yes/sound/usb/bcd2000/bcd2000.c_pt.bc'
source_filename = "../sound/usb/bcd2000/bcd2000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.bcd2000 = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, ptr, %struct.usb_anchor }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }

@__initcall__kmod_snd_bcd2000__239_454_bcd2000_driver_init6 = internal global ptr @bcd2000_driver_init, section ".initcall6.init", align 4
@bcd2000_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @bcd2000_probe, ptr @bcd2000_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_bcd2000_driver_exit = internal global ptr @bcd2000_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author240 = internal constant [52 x i8] c"snd_bcd2000.author=Mario Kicherer, dev@kicherer.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [49 x i8] c"snd_bcd2000.description=Behringer BCD2000 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [47 x i8] c"snd_bcd2000.file=sound/usb/bcd2000/snd-bcd2000\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [24 x i8] c"snd_bcd2000.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_bcd2000\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd-bcd2000\00", [20 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5015, i16 189, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@devices_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @devices_mutex, i64 52), ptr getelementptr (i8, ptr @devices_mutex, i64 52) }, ptr @devices_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@devices_used = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@index = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Behringer BCD2000 at %s\00", [40 x i8] zeroinitializer }, align 32
@bcd2000_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 419, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"snd-bcd2000: error during probing\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcd2000_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/usb/bcd2000/bcd2000.c\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcd2000_probe._entry_ptr = internal global ptr @bcd2000_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"devices_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"devices_mutex\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@bcd2000_midi_output = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @bcd2000_midi_output_open, ptr @bcd2000_midi_output_close, ptr @bcd2000_midi_output_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@bcd2000_midi_input = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @bcd2000_midi_input_open, ptr @bcd2000_midi_input_close, ptr @bcd2000_midi_input_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@bcd2000_init_midi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.6, i32 322, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"snd-bcd2000: usb_alloc_urb failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcd2000_init_midi\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@bcd2000_init_midi._entry_ptr = internal global ptr @bcd2000_init_midi._entry, section ".printk_index", align 4
@bcd2000_init_midi._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.6, i32 339, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid MIDI EP\0A\00", [47 x i8] zeroinitializer }, align 32
@bcd2000_init_midi._entry_ptr.17 = internal global ptr @bcd2000_init_midi._entry.15, section ".printk_index", align 4
@bcd2000_midi_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.6, i32 150, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: snd_rawmidi_transmit error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcd2000_midi_send\00", [46 x i8] zeroinitializer }, align 32
@bcd2000_midi_send._entry_ptr = internal global ptr @bcd2000_midi_send._entry, section ".printk_index", align 4
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"snd-bcd2000: sending to device: \00", [63 x i8] zeroinitializer }, align 32
@bcd2000_midi_send._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.6, i32 167, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"snd-bcd2000: %s (%p): usb_submit_urb() failed, ret=%d, len=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@bcd2000_midi_send._entry_ptr.23 = internal global ptr @bcd2000_midi_send._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@bcd2000_input_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.6, i32 229, ptr @.str.27, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"snd-bcd2000: input urb->status: %i\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bcd2000_input_complete\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bcd2000_input_complete._entry_ptr = internal global ptr @bcd2000_input_complete._entry, section ".printk_index", align 4
@bcd2000_input_complete._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.26, ptr @.str.6, i32 243, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"snd-bcd2000: %s: usb_submit_urb() failed, ret=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@bcd2000_input_complete._entry_ptr.30 = internal global ptr @bcd2000_input_complete._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"snd-bcd2000: received from device: \00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"snd-bcd2000: sending to userspace: \00", [60 x i8] zeroinitializer }, align 32
@bcd2000_output_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.6, i32 213, ptr @.str.27, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"snd-bcd2000: output urb->status: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bcd2000_output_complete\00", [40 x i8] zeroinitializer }, align 32
@bcd2000_output_complete._entry_ptr = internal global ptr @bcd2000_output_complete._entry, section ".printk_index", align 4
@bcd2000_init_sequence = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\07\00\00\00xH\1C\81\C4\00\00\00^SJ\F7\18\FA\11\FFl\F3\90\FF\00\00\00\00\01\00\00\00\18\FA\11\FF\14\00\00\00\00\00\00\00\F24J\F7\18\FA\11\FF", [44 x i8] zeroinitializer }, align 32
@bcd2000_init_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.6, i32 275, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"snd-bcd2000: %s: usb_submit_urb() out failed, ret=%d: \00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcd2000_init_device\00", [44 x i8] zeroinitializer }, align 32
@bcd2000_init_device._entry_ptr = internal global ptr @bcd2000_init_device._entry, section ".printk_index", align 4
@bcd2000_init_device._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.6, i32 284, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"snd-bcd2000: %s: usb_submit_urb() in failed, ret=%d: \00", [42 x i8] zeroinitializer }, align 32
@bcd2000_init_device._entry_ptr.39 = internal global ptr @bcd2000_init_device._entry.37, section ".printk_index", align 4
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd-bcd2000\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"BCD2000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"bcd2000_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 447, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 454, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 448, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 23, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"devices_mutex\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"devices_used\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 64, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 60, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 401, i32 7 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 419, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 63, i32 8 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 912, i32 31 }
@___asan_gen_.95 = private unnamed_addr constant [20 x i8] c"bcd2000_midi_output\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 246, i32 37 }
@___asan_gen_.98 = private unnamed_addr constant [19 x i8] c"bcd2000_midi_input\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 252, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 322, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 339, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 149, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 159, i32 22 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 165, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 70, i32 17 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 228, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 241, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 106, i32 22 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 119, i32 22 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 212, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [22 x i8] c"bcd2000_init_sequence\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 30, i32 28 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 273, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.189 = private constant [31 x i8] c"../sound/usb/bcd2000/bcd2000.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 282, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1367, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1368, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [7 x i8] c"str.43\00", align 1
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_bcd2000_driver_exit, ptr @__initcall__kmod_snd_bcd2000__239_454_bcd2000_driver_init6, ptr @bcd2000_driver_exit, ptr @bcd2000_init_device._entry, ptr @bcd2000_init_device._entry.37, ptr @bcd2000_init_device._entry_ptr, ptr @bcd2000_init_device._entry_ptr.39, ptr @bcd2000_init_midi._entry, ptr @bcd2000_init_midi._entry.15, ptr @bcd2000_init_midi._entry_ptr, ptr @bcd2000_init_midi._entry_ptr.17, ptr @bcd2000_input_complete._entry, ptr @bcd2000_input_complete._entry.28, ptr @bcd2000_input_complete._entry_ptr, ptr @bcd2000_input_complete._entry_ptr.30, ptr @bcd2000_midi_send._entry, ptr @bcd2000_midi_send._entry.21, ptr @bcd2000_midi_send._entry_ptr, ptr @bcd2000_midi_send._entry_ptr.23, ptr @bcd2000_output_complete._entry, ptr @bcd2000_output_complete._entry_ptr, ptr @bcd2000_probe._entry, ptr @bcd2000_probe._entry_ptr, ptr @bcd2000_driver, ptr @.str, ptr @.str.1, ptr @id_table, ptr @devices_mutex, ptr @devices_used, ptr @index, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @bcd2000_midi_output, ptr @bcd2000_midi_input, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @bcd2000_init_sequence, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @init_usb_anchor.__key, ptr @.str.40, ptr @init_usb_anchor.__key.41, ptr @.str.42, ptr @str, ptr @str.43], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcd2000_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices_used to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcd2000_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcd2000_midi_output to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcd2000_midi_input to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcd2000_init_midi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcd2000_init_midi._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcd2000_midi_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcd2000_midi_send._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcd2000_input_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcd2000_input_complete._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcd2000_output_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcd2000_init_sequence to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcd2000_init_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcd2000_init_device._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcd2000_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @bcd2000_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcd2000_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @bcd2000_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcd2000_probe(ptr noundef %interface, ptr nocapture noundef readnone %usb_id) #2 align 64 {
entry:
  %rmidi.i = alloca ptr, align 4
  %card = alloca ptr, align 4
  %usb_path = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #9
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !115
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %usb_path) #9
  %1 = call ptr @memset(ptr %usb_path, i32 255, i32 32)
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_mutex, i32 noundef 0) #9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %card_index.074 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = load volatile i32, ptr @devices_used, align 4
  %3 = shl nuw i32 1, %card_index.074
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end3, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %card_index.074, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %if.then2, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.then2:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #9
  br label %cleanup

if.end3:                                          ; preds = %for.body
  %dev = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %arrayidx = getelementptr [32 x i32], ptr @index, i32 0, i32 %card_index.074
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %call5 = call i32 @snd_card_new(ptr noundef %dev, i32 noundef %6, ptr noundef null, ptr noundef null, i32 noundef 280, ptr noundef nonnull %card) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data, align 8
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 -128
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %10, align 4
  %14 = load ptr, ptr %card, align 4
  %card11 = getelementptr inbounds %struct.bcd2000, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %card11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %card11, align 4
  %card_index12 = getelementptr inbounds %struct.bcd2000, ptr %10, i32 0, i32 3
  %16 = ptrtoint ptr %card_index12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %card_index.074, ptr %card_index12, align 4
  %intf = getelementptr inbounds %struct.bcd2000, ptr %10, i32 0, i32 2
  %17 = ptrtoint ptr %intf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %interface, ptr %intf, align 4
  %dev14 = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %18 = ptrtoint ptr %dev14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %dev14, align 8
  %driver = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 2
  %19 = call ptr @memcpy(ptr %driver, ptr @str, i32 16)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 3
  %20 = call ptr @memcpy(ptr %shortname, ptr @str.43, i32 32)
  %21 = load ptr, ptr %10, align 4
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 1
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %usb_path, i32 noundef 32, ptr noundef nonnull @.str.11, ptr noundef %25, ptr noundef %devpath.i) #9
  %26 = ptrtoint ptr %card11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card11, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %27, i32 0, i32 4
  %call24 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname, i32 noundef 80, ptr noundef nonnull @.str.3, ptr noundef nonnull %usb_path)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi.i) #9
  %28 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi.i, align 4, !annotation !115
  %29 = ptrtoint ptr %card11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card11, align 4
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %30, i32 0, i32 3
  %call.i65 = call i32 @snd_rawmidi_new(ptr noundef %30, ptr noundef %shortname.i, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %rmidi.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %cmp.i = icmp slt i32 %call.i65, 0
  br i1 %cmp.i, label %if.end8.bcd2000_init_midi.exit.thread_crit_edge, label %if.end.i

if.end8.bcd2000_init_midi.exit.thread_crit_edge:  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcd2000_init_midi.exit.thread

if.end.i:                                         ; preds = %if.end8
  %31 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rmidi.i, align 4
  %name.i = getelementptr inbounds %struct.snd_rawmidi, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %card11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %card11, align 4
  %shortname4.i = getelementptr inbounds %struct.snd_card, ptr %34, i32 0, i32 3
  %call6.i = call i32 @strscpy(ptr noundef %name.i, ptr noundef %shortname4.i, i32 noundef 80) #9
  %35 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmidi.i, align 4
  %info_flags.i = getelementptr inbounds %struct.snd_rawmidi, ptr %36, i32 0, i32 3
  %private_data.i = getelementptr inbounds %struct.snd_rawmidi, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %10, ptr %private_data.i, align 4
  %38 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 5, ptr %info_flags.i, align 8
  call void @snd_rawmidi_set_ops(ptr noundef %36, i32 noundef 0, ptr noundef nonnull @bcd2000_midi_output) #9
  %39 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmidi.i, align 4
  %info_flags8.i = getelementptr inbounds %struct.snd_rawmidi, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %info_flags8.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %info_flags8.i, align 8
  %or9.i = or i32 %42, 2
  store i32 %or9.i, ptr %info_flags8.i, align 8
  call void @snd_rawmidi_set_ops(ptr noundef %40, i32 noundef 1, ptr noundef nonnull @bcd2000_midi_input) #9
  %43 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmidi.i, align 4
  %rmidi10.i = getelementptr inbounds %struct.bcd2000, ptr %10, i32 0, i32 5
  %45 = ptrtoint ptr %rmidi10.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %rmidi10.i, align 4
  %call11.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %midi_in_urb.i = getelementptr inbounds %struct.bcd2000, ptr %10, i32 0, i32 11
  %46 = ptrtoint ptr %midi_in_urb.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call11.i, ptr %midi_in_urb.i, align 4
  %call12.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %midi_out_urb.i = getelementptr inbounds %struct.bcd2000, ptr %10, i32 0, i32 10
  %47 = ptrtoint ptr %midi_out_urb.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call12.i, ptr %midi_out_urb.i, align 4
  %48 = ptrtoint ptr %midi_in_urb.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %midi_in_urb.i, align 4
  %tobool.not.i = icmp eq ptr %49, null
  %tobool15.not.i = icmp eq ptr %call12.i, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool15.not.i
  %50 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %10, align 4
  br i1 %or.cond.i, label %if.end.i.bcd2000_init_midi.exit.thread.sink.split_crit_edge, label %if.end18.i

if.end.i.bcd2000_init_midi.exit.thread.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcd2000_init_midi.exit.thread.sink.split

if.end18.i:                                       ; preds = %if.end.i
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  %shl.i.i = shl i32 %53, 8
  %or24.i = or i32 %shl.i.i, 1077969024
  %midi_in_buf.i = getelementptr inbounds %struct.bcd2000, ptr %10, i32 0, i32 8
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 8
  %54 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 10
  %55 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or24.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 14
  %56 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %midi_in_buf.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 19
  %57 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 64, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 28
  %58 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @bcd2000_input_complete, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 27
  %59 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %10, ptr %context4.i.i, align 4
  %60 = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 25
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %60, align 4
  %start_frame.i.i = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 23
  %62 = ptrtoint ptr %start_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %start_frame.i.i, align 4
  %63 = ptrtoint ptr %midi_out_urb.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %midi_out_urb.i, align 4
  %65 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %10, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 8
  %shl.i71.i = shl i32 %68, 8
  %or30.i = or i32 %shl.i71.i, 1073774592
  %midi_out_buf.i = getelementptr inbounds %struct.bcd2000, ptr %10, i32 0, i32 9
  %dev1.i73.i = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 8
  %69 = ptrtoint ptr %dev1.i73.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %dev1.i73.i, align 4
  %pipe2.i74.i = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 10
  %70 = ptrtoint ptr %pipe2.i74.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or30.i, ptr %pipe2.i74.i, align 4
  %transfer_buffer3.i75.i = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 14
  %71 = ptrtoint ptr %transfer_buffer3.i75.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %midi_out_buf.i, ptr %transfer_buffer3.i75.i, align 4
  %transfer_buffer_length.i76.i = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 19
  %72 = ptrtoint ptr %transfer_buffer_length.i76.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 64, ptr %transfer_buffer_length.i76.i, align 4
  %complete.i77.i = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 28
  %73 = ptrtoint ptr %complete.i77.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @bcd2000_output_complete, ptr %complete.i77.i, align 4
  %context4.i78.i = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 27
  %74 = ptrtoint ptr %context4.i78.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %10, ptr %context4.i78.i, align 4
  %75 = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 25
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %75, align 4
  %start_frame.i79.i = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 23
  %77 = ptrtoint ptr %start_frame.i79.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %start_frame.i79.i, align 4
  %78 = ptrtoint ptr %midi_in_urb.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %midi_in_urb.i, align 4
  %call33.i = call i32 @usb_urb_ep_type_check(ptr noundef %79) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %lor.lhs.false35.i, label %if.end18.i.do.end42.i_crit_edge

if.end18.i.do.end42.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42.i

lor.lhs.false35.i:                                ; preds = %if.end18.i
  %80 = ptrtoint ptr %midi_out_urb.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %midi_out_urb.i, align 4
  %call37.i = call i32 @usb_urb_ep_type_check(ptr noundef %81) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end45.i, label %lor.lhs.false35.i.do.end42.i_crit_edge

lor.lhs.false35.i.do.end42.i_crit_edge:           ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42.i

do.end42.i:                                       ; preds = %lor.lhs.false35.i.do.end42.i_crit_edge, %if.end18.i.do.end42.i_crit_edge
  %82 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %10, align 4
  br label %bcd2000_init_midi.exit.thread.sink.split

if.end45.i:                                       ; preds = %lor.lhs.false35.i
  %anchor.i.i = getelementptr inbounds %struct.bcd2000, ptr %10, i32 0, i32 12
  %84 = getelementptr inbounds %struct.bcd2000, ptr %10, i32 0, i32 12, i32 1
  %85 = call ptr @memset(ptr %84, i32 0, i32 104)
  %86 = ptrtoint ptr %anchor.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %anchor.i.i, ptr %anchor.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.bcd2000, ptr %10, i32 0, i32 12, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %anchor.i.i, ptr %prev.i.i.i.i, align 4
  call void @__init_waitqueue_head(ptr noundef %84, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_usb_anchor.__key) #9
  %lock.i.i.i = getelementptr inbounds %struct.bcd2000, ptr %10, i32 0, i32 12, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_usb_anchor.__key.41, i16 noundef signext 3) #9
  %88 = ptrtoint ptr %midi_out_urb.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %midi_out_urb.i, align 4
  call void @usb_anchor_urb(ptr noundef %89, ptr noundef %anchor.i.i) #9
  %90 = ptrtoint ptr %midi_in_urb.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %midi_in_urb.i, align 4
  call void @usb_anchor_urb(ptr noundef %91, ptr noundef %anchor.i.i) #9
  %92 = call ptr @memcpy(ptr %midi_out_buf.i, ptr @bcd2000_init_sequence, i32 52)
  %93 = ptrtoint ptr %midi_out_urb.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %midi_out_urb.i, align 4
  %transfer_buffer_length.i80.i = getelementptr inbounds %struct.urb, ptr %94, i32 0, i32 19
  %95 = ptrtoint ptr %transfer_buffer_length.i80.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 52, ptr %transfer_buffer_length.i80.i, align 4
  %96 = load ptr, ptr %midi_out_urb.i, align 4
  %call.i.i = call i32 @usb_submit_urb(ptr noundef %96, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.else.i.i

do.end.i.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %10, align 4
  %dev5.i.i = getelementptr inbounds %struct.usb_device, ptr %98, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %call.i.i) #12
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  %midi_out_active.i.i = getelementptr inbounds %struct.bcd2000, ptr %10, i32 0, i32 4
  %99 = ptrtoint ptr %midi_out_active.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %midi_out_active.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %do.end.i.i
  %100 = ptrtoint ptr %midi_in_urb.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %midi_in_urb.i, align 4
  %call7.i.i = call i32 @usb_submit_urb(ptr noundef %101, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp8.i.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp8.i.i, label %do.end12.i.i, label %if.end.i.i.if.end28_crit_edge

if.end.i.i.if.end28_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

do.end12.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %10, align 4
  %dev14.i.i = getelementptr inbounds %struct.usb_device, ptr %103, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef %call7.i.i) #12
  br label %if.end28

bcd2000_init_midi.exit.thread.sink.split:         ; preds = %do.end42.i, %if.end.i.bcd2000_init_midi.exit.thread.sink.split_crit_edge
  %.sink = phi ptr [ %83, %do.end42.i ], [ %51, %if.end.i.bcd2000_init_midi.exit.thread.sink.split_crit_edge ]
  %.str.16.sink = phi ptr [ @.str.16, %do.end42.i ], [ @.str.12, %if.end.i.bcd2000_init_midi.exit.thread.sink.split_crit_edge ]
  %retval.0.i.ph.ph = phi i32 [ -22, %do.end42.i ], [ -12, %if.end.i.bcd2000_init_midi.exit.thread.sink.split_crit_edge ]
  %dev44.i = getelementptr inbounds %struct.usb_device, ptr %.sink, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44.i, ptr noundef nonnull %.str.16.sink) #12
  br label %bcd2000_init_midi.exit.thread

bcd2000_init_midi.exit.thread:                    ; preds = %bcd2000_init_midi.exit.thread.sink.split, %if.end8.bcd2000_init_midi.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i65, %if.end8.bcd2000_init_midi.exit.thread_crit_edge ], [ %retval.0.i.ph.ph, %bcd2000_init_midi.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi.i) #9
  br label %do.end

if.end28:                                         ; preds = %do.end12.i.i, %if.end.i.i.if.end28_crit_edge
  %call17.i.i = call i32 @usb_wait_anchor_empty_timeout(ptr noundef %anchor.i.i, i32 noundef 1000) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi.i) #9
  %104 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %card, align 4
  %call29 = call i32 @snd_card_register(ptr noundef %105) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end28.do.end_crit_edge, label %if.end32

if.end28.do.end_crit_edge:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %106 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %10, ptr %driver_data.i.i, align 4
  call void @_set_bit(i32 noundef %card_index.074, ptr noundef nonnull @devices_used) #9
  call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #9
  br label %cleanup

do.end:                                           ; preds = %if.end28.do.end_crit_edge, %bcd2000_init_midi.exit.thread
  %err.0 = phi i32 [ %call29, %if.end28.do.end_crit_edge ], [ %retval.0.i.ph, %bcd2000_init_midi.exit.thread ]
  %107 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %10, align 4
  %dev34 = getelementptr inbounds %struct.usb_device, ptr %108, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev34, ptr noundef nonnull @.str.4) #12
  %midi_out_urb.i66 = getelementptr inbounds %struct.bcd2000, ptr %10, i32 0, i32 10
  %109 = ptrtoint ptr %midi_out_urb.i66 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %midi_out_urb.i66, align 4
  call void @usb_free_urb(ptr noundef %110) #9
  %midi_in_urb.i67 = getelementptr inbounds %struct.bcd2000, ptr %10, i32 0, i32 11
  %111 = ptrtoint ptr %midi_in_urb.i67 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %midi_in_urb.i67, align 4
  call void @usb_free_urb(ptr noundef %112) #9
  %113 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %intf, align 4
  %tobool.not.i68 = icmp eq ptr %114, null
  br i1 %tobool.not.i68, label %do.end.bcd2000_free_usb_related_resources.exit_crit_edge, label %if.then.i

do.end.bcd2000_free_usb_related_resources.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcd2000_free_usb_related_resources.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %114, i32 0, i32 7, i32 8
  %115 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %driver_data.i.i.i, align 4
  %116 = ptrtoint ptr %intf to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %intf, align 4
  br label %bcd2000_free_usb_related_resources.exit

bcd2000_free_usb_related_resources.exit:          ; preds = %if.then.i, %do.end.bcd2000_free_usb_related_resources.exit_crit_edge
  %117 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %card, align 4
  %call35 = call i32 @snd_card_free(ptr noundef %118) #9
  call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %bcd2000_free_usb_related_resources.exit, %if.end32, %if.then7, %if.then2
  %retval.0 = phi i32 [ -2, %if.then2 ], [ %call5, %if.then7 ], [ %err.0, %bcd2000_free_usb_related_resources.exit ], [ 0, %if.end32 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %usb_path) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcd2000_disconnect(ptr nocapture noundef readonly %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_mutex, i32 noundef 0) #9
  %card = getelementptr inbounds %struct.bcd2000, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %call1 = tail call i32 @snd_card_disconnect(ptr noundef %3) #9
  %midi_out_urb.i = getelementptr inbounds %struct.bcd2000, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %midi_out_urb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %midi_out_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %5) #9
  %midi_in_urb.i = getelementptr inbounds %struct.bcd2000, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %midi_in_urb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %midi_in_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %7) #9
  %intf.i = getelementptr inbounds %struct.bcd2000, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.bcd2000_free_usb_related_resources.exit_crit_edge, label %if.then.i

if.end.bcd2000_free_usb_related_resources.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcd2000_free_usb_related_resources.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %driver_data.i.i.i, align 4
  %11 = ptrtoint ptr %intf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %intf.i, align 4
  br label %bcd2000_free_usb_related_resources.exit

bcd2000_free_usb_related_resources.exit:          ; preds = %if.then.i, %if.end.bcd2000_free_usb_related_resources.exit_crit_edge
  %card_index = getelementptr inbounds %struct.bcd2000, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %card_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %card_index, align 4
  tail call void @_clear_bit(i32 noundef %13, ptr noundef nonnull @devices_used) #9
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %call3 = tail call i32 @snd_card_free_when_closed(ptr noundef %15) #9
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %bcd2000_free_usb_related_resources.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcd2000_input_complete(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %3) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -108, i32 %7)
  %cmp = icmp eq i32 %7, -108
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp7.not = icmp eq i32 %9, 0
  br i1 %cmp7.not, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %10 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transfer_buffer, align 4
  %midi_receive_substream1.i = getelementptr inbounds %struct.bcd2000, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %midi_receive_substream1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %midi_receive_substream1.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then8.if.end10_crit_edge, label %if.end.i

if.then8.if.end10_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end.i:                                         ; preds = %if.then8
  tail call void @print_hex_dump(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %11, i32 noundef %9, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i = icmp ult i32 %9, 2
  br i1 %cmp.i, label %if.end.i.if.end10_crit_edge, label %if.end3.i

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end3.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp4.i = icmp eq i8 %15, 0
  br i1 %cmp4.i, label %if.end3.i.if.end10_crit_edge, label %if.end7.i

if.end3.i.if.end10_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end7.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %15 to i32
  %sub.i = add i32 %9, -1
  %16 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %conv.i) #9
  %arrayidx11.i = getelementptr i8, ptr %11, i32 1
  tail call void @print_hex_dump(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.32, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %arrayidx11.i, i32 noundef %16, i1 noundef zeroext false) #9
  %call.i = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %13, ptr noundef %arrayidx11.i, i32 noundef %16) #9
  br label %if.end10

if.end10:                                         ; preds = %if.end7.i, %if.end3.i.if.end10_crit_edge, %if.end.i.if.end10_crit_edge, %if.then8.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  %midi_in_urb = getelementptr inbounds %struct.bcd2000, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %midi_in_urb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %midi_in_urb, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %18, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp11 = icmp slt i32 %call, 0
  br i1 %cmp11, label %do.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %dev17 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.26, i32 noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.end10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcd2000_output_complete(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %midi_out_active = getelementptr inbounds %struct.bcd2000, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %midi_out_active to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %midi_out_active, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.end

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %4) #12
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -108, i32 %.pr)
  %cmp = icmp eq i32 %.pr, -108
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  tail call fastcc void @bcd2000_midi_send(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_urb_ep_type_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcd2000_midi_output_open(ptr nocapture noundef readnone %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcd2000_midi_output_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %midi_out_active = getelementptr inbounds %struct.bcd2000, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %midi_out_active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %midi_out_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %midi_out_urb = getelementptr inbounds %struct.bcd2000, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %midi_out_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %midi_out_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #9
  %8 = ptrtoint ptr %midi_out_active to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %midi_out_active, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcd2000_midi_output_trigger(ptr noundef %substream, i32 noundef %up) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %midi_out_substream3 = getelementptr inbounds %struct.bcd2000, ptr %3, i32 0, i32 7
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %midi_out_substream3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %midi_out_substream3, align 4
  %midi_out_active = getelementptr inbounds %struct.bcd2000, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %midi_out_active to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %midi_out_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @bcd2000_midi_send(ptr noundef %3)
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %midi_out_substream3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %midi_out_substream3, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2, %if.then.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcd2000_midi_send(ptr noundef %bcd2k) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %midi_out_substream4 = getelementptr inbounds %struct.bcd2000, ptr %bcd2k, i32 0, i32 7
  %0 = ptrtoint ptr %midi_out_substream4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %midi_out_substream4, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %midi_out_buf = getelementptr inbounds %struct.bcd2000, ptr %bcd2k, i32 0, i32 9
  %2 = ptrtoint ptr %midi_out_buf to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 768, ptr %midi_out_buf, align 4
  %add.ptr = getelementptr %struct.bcd2000, ptr %bcd2k, i32 0, i32 9, i32 3
  %call = tail call i32 @snd_rawmidi_transmit(ptr noundef nonnull %1, ptr noundef %add.ptr, i32 noundef 61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end12.thread, label %if.end12

if.end12.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %bcd2k to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bcd2k, align 4
  %dev11 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %call) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp13 = icmp eq i32 %call, 0
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %conv = trunc i32 %call to i8
  %arrayidx = getelementptr %struct.bcd2000, ptr %bcd2k, i32 0, i32 9, i32 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %arrayidx, align 2
  %midi_out_urb = getelementptr inbounds %struct.bcd2000, ptr %bcd2k, i32 0, i32 10
  %6 = ptrtoint ptr %midi_out_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %midi_out_urb, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 64, ptr %transfer_buffer_length, align 4
  %add = add nuw i32 %call, 3
  tail call void @print_hex_dump(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.20, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %midi_out_buf, i32 noundef %add, i1 noundef zeroext false) #9
  %9 = ptrtoint ptr %midi_out_urb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %midi_out_urb, align 4
  %call20 = tail call i32 @usb_submit_urb(ptr noundef %10, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end26, label %if.else

do.end26:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %bcd2k to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bcd2k, align 4
  %dev28 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.19, ptr noundef nonnull %1, i32 noundef %call20, i32 noundef %call) #12
  br label %cleanup

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %midi_out_active = getelementptr inbounds %struct.bcd2000, ptr %bcd2k, i32 0, i32 4
  %13 = ptrtoint ptr %midi_out_active to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %midi_out_active, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end26, %if.end12.cleanup_crit_edge, %if.end12.thread, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcd2000_midi_input_open(ptr nocapture noundef readnone %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcd2000_midi_input_close(ptr nocapture noundef readnone %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bcd2000_midi_input_trigger(ptr noundef %substream, i32 noundef %up) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %spec.select = select i1 %tobool.not, ptr null, ptr %substream
  %midi_receive_substream = getelementptr inbounds %struct.bcd2000, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %midi_receive_substream to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spec.select, ptr %midi_receive_substream, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_wait_anchor_empty_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free_when_closed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !41, !42, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !56, !58, !60, !61, !62, !64, !66, !68, !70, !71, !72, !73, !74, !76, !77, !78, !80, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !101, !102, !104}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__initcall__kmod_snd_bcd2000__239_454_bcd2000_driver_init6, !1, !"__initcall__kmod_snd_bcd2000__239_454_bcd2000_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 454, i32 1}
!2 = !{ptr @__exitcall_bcd2000_driver_exit, !1, !"__exitcall_bcd2000_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author240, !4, !"__UNIQUE_ID_author240", i1 false, i1 false}
!4 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 457, i32 1}
!5 = !{ptr @__UNIQUE_ID_description241, !6, !"__UNIQUE_ID_description241", i1 false, i1 false}
!6 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 458, i32 1}
!7 = !{ptr @__UNIQUE_ID_file242, !8, !"__UNIQUE_ID_file242", i1 false, i1 false}
!8 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 459, i32 1}
!9 = !{ptr @__UNIQUE_ID_license243, !8, !"__UNIQUE_ID_license243", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 448, i32 11}
!13 = !{ptr @bcd2000_driver, !14, !"bcd2000_driver", i1 false, i1 false}
!14 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 447, i32 26}
!15 = distinct !{null, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 398, i32 27}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 401, i32 7}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 419, i32 2}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @bcd2000_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @bcd2000_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 63, i32 8}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @devices_mutex, !28, !"devices_mutex", i1 false, i1 false}
!31 = !{ptr @devices_used, !32, !"devices_used", i1 false, i1 false}
!32 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 64, i32 8}
!33 = !{ptr @index, !34, !"index", i1 false, i1 false}
!34 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 60, i32 12}
!35 = distinct !{null, !36, !"id", i1 false, i1 false}
!36 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 61, i32 14}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/usb.h", i32 912, i32 31}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 322, i32 3}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @bcd2000_init_midi._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @bcd2000_init_midi._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 339, i32 3}
!47 = !{ptr @bcd2000_init_midi._entry.15, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @bcd2000_init_midi._entry_ptr.17, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @bcd2000_midi_output, !50, !"bcd2000_midi_output", i1 false, i1 false}
!50 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 246, i32 37}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 149, i32 3}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @bcd2000_midi_send._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @bcd2000_midi_send._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 159, i32 22}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 165, i32 3}
!60 = !{ptr @bcd2000_midi_send._entry.21, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @bcd2000_midi_send._entry_ptr.23, !59, !"_entry_ptr", i1 false, i1 false}
!62 = distinct !{null, !63, !"device_cmd_prefix", i1 false, i1 false}
!63 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 28, i32 28}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 70, i32 17}
!66 = !{ptr @bcd2000_midi_input, !67, !"bcd2000_midi_input", i1 false, i1 false}
!67 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 252, i32 37}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 228, i32 3}
!70 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @bcd2000_input_complete._entry, !69, !"_entry", i1 false, i1 false}
!73 = !{ptr @bcd2000_input_complete._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 241, i32 3}
!76 = !{ptr @bcd2000_input_complete._entry.28, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @bcd2000_input_complete._entry_ptr.30, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 106, i32 22}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 119, i32 22}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 212, i32 3}
!84 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @bcd2000_output_complete._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @bcd2000_output_complete._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 273, i32 3}
!89 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @bcd2000_init_device._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @bcd2000_init_device._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 282, i32 3}
!94 = !{ptr @bcd2000_init_device._entry.37, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @bcd2000_init_device._entry_ptr.39, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @init_usb_anchor.__key, !97, !"__key", i1 false, i1 false}
!97 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!98 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @init_usb_anchor.__key.41, !100, !"__key", i1 false, i1 false}
!100 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!101 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @bcd2000_init_sequence, !103, !"bcd2000_init_sequence", i1 false, i1 false}
!103 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 30, i32 28}
!104 = !{ptr @id_table, !105, !"id_table", i1 false, i1 false}
!105 = !{!"../sound/usb/bcd2000/bcd2000.c", i32 23, i32 35}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{!"auto-init"}
