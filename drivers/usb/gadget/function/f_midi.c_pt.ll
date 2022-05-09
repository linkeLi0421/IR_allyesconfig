; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/f_midi.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_midi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_function_driver = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.uac1_ac_header_descriptor_1 = type <{ i8, i8, i8, i16, i16, i8, [1 x i8] }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ms_header_descriptor = type <{ i8, i8, i8, i16, i16 }>
%struct.usb_ms_endpoint_descriptor_16 = type { i8, i8, i8, i8, [16 x i8] }
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.f_midi_opts = type { %struct.usb_function_instance, i32, ptr, i8, i32, i32, i32, i32, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.f_midi = type { %struct.usb_function, ptr, ptr, ptr, ptr, ptr, i8, [16 x ptr], i32, %struct.work_struct, i32, i32, i32, ptr, i32, i32, %struct.anon.71, %struct.spinlock, i32, i8, [0 x %struct.gmidi_in_port] }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.71 = type { %union.anon.72, [0 x ptr] }
%union.anon.72 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.gmidi_in_port = type { ptr, i32, i8, i8, [2 x i8] }
%struct.usb_midi_in_jack_descriptor = type { i8, i8, i8, i8, i8, i8 }
%struct.usb_midi_out_jack_descriptor_1 = type { i8, i8, i8, i8, i8, i8, [1 x %struct.usb_midi_source_pin], i8 }
%struct.usb_midi_source_pin = type { i8, i8 }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }

@__UNIQUE_ID_author234 = internal constant [33 x i8] c"usb_f_midi.author=Ben Williamson\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [55 x i8] c"usb_f_midi.file=drivers/usb/gadget/function/usb_f_midi\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [26 x i8] c"usb_f_midi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias248 = internal constant [30 x i8] c"usb_f_midi.alias=usbfunc:midi\00", section ".modinfo", align 1
@midiusb_func = internal global { %struct.usb_function_driver, [40 x i8] } { %struct.usb_function_driver { ptr @.str, ptr null, %struct.list_head zeroinitializer, ptr @f_midi_alloc_inst, ptr @f_midi_alloc }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_usb_f_midi__249_1408_midimod_init6 = internal global ptr @midimod_init, section ".initcall6.init", align 4
@__exitcall_midimod_exit = internal global ptr @midimod_exit, section ".exitcall.exit", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"midi\00", [27 x i8] zeroinitializer }, align 32
@f_midi_alloc_inst.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&opts->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@midi_func_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @midi_item_ops, ptr null, ptr @midi_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@midi_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @midi_attr_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@midi_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @f_midi_opts_attr_index, ptr @f_midi_opts_attr_buflen, ptr @f_midi_opts_attr_qlen, ptr @f_midi_opts_attr_in_ports, ptr @f_midi_opts_attr_out_ports, ptr @f_midi_opts_attr_id, ptr null], [36 x i8] zeroinitializer }, align 32
@f_midi_opts_attr_index = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.3, ptr null, i16 420, ptr @f_midi_opts_index_show, ptr @f_midi_opts_index_store }, [44 x i8] zeroinitializer }, align 32
@f_midi_opts_attr_buflen = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.5, ptr null, i16 420, ptr @f_midi_opts_buflen_show, ptr @f_midi_opts_buflen_store }, [44 x i8] zeroinitializer }, align 32
@f_midi_opts_attr_qlen = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.7, ptr null, i16 420, ptr @f_midi_opts_qlen_show, ptr @f_midi_opts_qlen_store }, [44 x i8] zeroinitializer }, align 32
@f_midi_opts_attr_in_ports = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.8, ptr null, i16 420, ptr @f_midi_opts_in_ports_show, ptr @f_midi_opts_in_ports_store }, [44 x i8] zeroinitializer }, align 32
@f_midi_opts_attr_out_ports = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.9, ptr null, i16 420, ptr @f_midi_opts_out_ports_show, ptr @f_midi_opts_out_ports_store }, [44 x i8] zeroinitializer }, align 32
@f_midi_opts_attr_id = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.10, ptr null, i16 420, ptr @f_midi_opts_id_show, ptr @f_midi_opts_id_store }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"index\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"buflen\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qlen\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in_ports\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"out_ports\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@f_midi_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&midi->transmit_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gmidi function\00", [17 x i8] zeroinitializer }, align 32
@f_midi_bind.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&midi->work)\00", [33 x i8] zeroinitializer }, align 32
@midi_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @midi_stringtab, ptr null], [24 x i8] zeroinitializer }, align 32
@ac_interface_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@ms_interface_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 2, i8 1, i8 3, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@ac_header_desc = internal global { %struct.uac1_ac_header_descriptor_1, [23 x i8] } { %struct.uac1_ac_header_descriptor_1 <{ i8 9, i8 36, i8 1, i16 1, i16 2304, i8 1, [1 x i8] zeroinitializer }>, [23 x i8] zeroinitializer }, align 32
@bulk_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 9, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@bulk_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 9, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ms_header_desc = internal global { %struct.usb_ms_header_descriptor, [25 x i8] } { %struct.usb_ms_header_descriptor <{ i8 7, i8 36, i8 1, i16 1, i16 0 }>, [25 x i8] zeroinitializer }, align 32
@ms_in_desc = internal global { %struct.usb_ms_endpoint_descriptor_16, [44 x i8] } { %struct.usb_ms_endpoint_descriptor_16 { i8 0, i8 37, i8 1, i8 0, [16 x i8] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@ms_out_desc = internal global { %struct.usb_ms_endpoint_descriptor_16, [44 x i8] } { %struct.usb_ms_endpoint_descriptor_16 { i8 0, i8 37, i8 1, i8 0, [16 x i8] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@bulk_out_ss_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, [26 x i8] zeroinitializer }, align 32
@bulk_in_ss_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, [26 x i8] zeroinitializer }, align 32
@f_midi_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.16, i32 1071, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: can't bind, err %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"f_midi_bind\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/usb/gadget/function/f_midi.c\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@f_midi_bind._entry_ptr = internal global ptr @f_midi_bind._entry, section ".printk_index", align 4
@f_midi_do_transmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.16, i32 619, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Couldn't get usb request\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"f_midi_do_transmit\00", [45 x i8] zeroinitializer }, align 32
@f_midi_do_transmit._entry_ptr = internal global ptr @f_midi_do_transmit._entry, section ".printk_index", align 4
@f_midi_do_transmit._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.16, i32 661, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s failed to queue req: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@f_midi_do_transmit._entry_ptr.23 = internal global ptr @f_midi_do_transmit._entry.21, section ".printk_index", align 4
@f_midi_register_card.ops = internal global { %struct.snd_device_ops, [20 x i8] } { %struct.snd_device_ops { ptr @f_midi_snd_free, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@f_midi_register_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.16, i32 810, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_card_new() failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"f_midi_register_card\00", [43 x i8] zeroinitializer }, align 32
@f_midi_register_card._entry_ptr = internal global ptr @f_midi_register_card._entry, section ".printk_index", align 4
@f_midi_register_card._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.16, i32 817, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"snd_device_new() failed: error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@f_midi_register_card._entry_ptr.28 = internal global ptr @f_midi_register_card._entry.26, section ".printk_index", align 4
@f_midi_longname = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MIDI Gadget\00", [20 x i8] zeroinitializer }, align 32
@f_midi_shortname = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"f_midi\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIDI\00", [27 x i8] zeroinitializer }, align 32
@f_midi_register_card._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.25, ptr @.str.16, i32 830, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"snd_rawmidi_new() failed: error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@f_midi_register_card._entry_ptr.32 = internal global ptr @f_midi_register_card._entry.30, section ".printk_index", align 4
@gmidi_in_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @f_midi_in_open, ptr @f_midi_in_close, ptr @f_midi_in_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@gmidi_out_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @f_midi_out_open, ptr @f_midi_out_close, ptr @f_midi_out_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@f_midi_register_card._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.25, ptr @.str.16, i32 853, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snd_card_register() failed\0A\00", [36 x i8] zeroinitializer }, align 32
@f_midi_register_card._entry_ptr.35 = internal global ptr @f_midi_register_card._entry.33, section ".printk_index", align 4
@f_midi_register_card.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.25, ptr @.str.16, ptr @.str.37, i8 0, i8 -42, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usb_f_midi\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s() finished ok\0A\00", [46 x i8] zeroinitializer }, align 32
@f_midi_in_open.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.38, ptr @.str.16, ptr @.str.39, i8 0, i8 -77, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"f_midi_in_open\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@f_midi_in_close.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.40, ptr @.str.16, ptr @.str.39, i8 0, i8 -74, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"f_midi_in_close\00", [16 x i8] zeroinitializer }, align 32
@f_midi_in_trigger.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.41, ptr @.str.16, ptr @.str.42, i8 0, i8 -72, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"f_midi_in_trigger\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s() %d\0A\00", [23 x i8] zeroinitializer }, align 32
@system_highpri_wq = external dso_local local_unnamed_addr global ptr, align 4
@f_midi_out_open.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.43, ptr @.str.16, ptr @.str.39, i8 0, i8 -68, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"f_midi_out_open\00", [16 x i8] zeroinitializer }, align 32
@f_midi_out_close.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.44, ptr @.str.16, ptr @.str.39, i8 0, i8 -66, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"f_midi_out_close\00", [47 x i8] zeroinitializer }, align 32
@f_midi_out_trigger.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.45, ptr @.str.16, ptr @.str.39, i8 0, i8 -64, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"f_midi_out_trigger\00", [45 x i8] zeroinitializer }, align 32
@midi_stringtab = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @midi_string_defs }, [24 x i8] zeroinitializer }, align 32
@midi_string_defs = internal global { [2 x %struct.usb_string], [16 x i8] } { [2 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.46 }, %struct.usb_string zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MIDI function\00", [18 x i8] zeroinitializer }, align 32
@f_midi_unbind.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.47, ptr @.str.16, ptr @.str.48, i8 1, i8 75, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"f_midi_unbind\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unbind\0A\00", [24 x i8] zeroinitializer }, align 32
@f_midi_set_alt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.16, i32 407, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: couldn't enqueue request: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"f_midi_set_alt\00", [17 x i8] zeroinitializer }, align 32
@f_midi_set_alt._entry_ptr = internal global ptr @f_midi_set_alt._entry, section ".printk_index", align 4
@f_midi_start_ep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.16, i32 348, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't configure %s: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"f_midi_start_ep\00", [16 x i8] zeroinitializer }, align 32
@f_midi_start_ep._entry_ptr = internal global ptr @f_midi_start_ep._entry, section ".printk_index", align 4
@f_midi_start_ep._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.16, i32 354, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"can't start %s: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@f_midi_start_ep._entry_ptr.55 = internal global ptr @f_midi_start_ep._entry.53, section ".printk_index", align 4
@f_midi_complete.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.56, ptr @.str.16, ptr @.str.57, i8 0, i8 73, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"f_midi_complete\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s gone (%d), %d/%d\0A\00", [43 x i8] zeroinitializer }, align 32
@f_midi_complete.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.56, ptr @.str.16, ptr @.str.58, i8 0, i8 77, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s complete --> %d, %d/%d\0A\00", [37 x i8] zeroinitializer }, align 32
@f_midi_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.56, ptr @.str.16, i32 318, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"kill %s:  resubmit %d bytes --> %d\0A\00", [60 x i8] zeroinitializer }, align 32
@f_midi_complete._entry_ptr = internal global ptr @f_midi_complete._entry, section ".printk_index", align 4
@f_midi_cin_length = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\00\02\03\03\01\02\03\03\03\03\03\02\02\03\01", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/usb/gadget/u_f.h\00", [39 x i8] zeroinitializer }, align 32
@f_midi_disable.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.61, ptr @.str.16, ptr @.str.62, i8 0, i8 105, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"f_midi_disable\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disable\0A\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 8, i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247, i64 248, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254, i64 255]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.64 = internal global [7 x i64] [i64 5, i64 8, i64 240, i64 241, i64 242, i64 243, i64 246]
@__sancov_gen_cov_switch_values.65 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.67 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967175, i64 4294967188, i64 4294967192, i64 4294967193]
@___asan_gen_.68 = private unnamed_addr constant [13 x i8] c"midiusb_func\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1408, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1279, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1289, i32 54 }
@___asan_gen_.83 = private unnamed_addr constant [15 x i8] c"midi_func_type\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1245, i32 38 }
@___asan_gen_.86 = private unnamed_addr constant [14 x i8] c"midi_item_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1089, i32 40 }
@___asan_gen_.89 = private unnamed_addr constant [11 x i8] c"midi_attrs\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1235, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant [23 x i8] c"f_midi_opts_attr_index\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [24 x i8] c"f_midi_opts_attr_buflen\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [22 x i8] c"f_midi_opts_attr_qlen\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [26 x i8] c"f_midi_opts_attr_in_ports\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [27 x i8] c"f_midi_opts_attr_out_ports\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [20 x i8] c"f_midi_opts_attr_id\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1181, i32 1 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1182, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1183, i32 1 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1184, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1185, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1233, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1384, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1389, i32 21 }
@___asan_gen_.143 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 880, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [13 x i8] c"midi_strings\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 222, i32 35 }
@___asan_gen_.152 = private unnamed_addr constant [18 x i8] c"ac_interface_desc\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 119, i32 40 }
@___asan_gen_.155 = private unnamed_addr constant [18 x i8] c"ms_interface_desc\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 141, i32 40 }
@___asan_gen_.158 = private unnamed_addr constant [15 x i8] c"ac_header_desc\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 130, i32 43 }
@___asan_gen_.161 = private unnamed_addr constant [13 x i8] c"bulk_in_desc\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 185, i32 39 }
@___asan_gen_.164 = private unnamed_addr constant [14 x i8] c"bulk_out_desc\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 161, i32 39 }
@___asan_gen_.167 = private unnamed_addr constant [15 x i8] c"ms_header_desc\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 152, i32 40 }
@___asan_gen_.170 = private unnamed_addr constant [11 x i8] c"ms_in_desc\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 200, i32 45 }
@___asan_gen_.173 = private unnamed_addr constant [12 x i8] c"ms_out_desc\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 176, i32 45 }
@___asan_gen_.176 = private unnamed_addr constant [22 x i8] c"bulk_out_ss_comp_desc\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 168, i32 41 }
@___asan_gen_.179 = private unnamed_addr constant [21 x i8] c"bulk_in_ss_comp_desc\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 192, i32 41 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1071, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 619, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 660, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 803, i32 31 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 810, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 817, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant [16 x i8] c"f_midi_longname\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 44, i32 19 }
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"f_midi_shortname\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 43, i32 19 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 826, i32 26 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 830, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [13 x i8] c"gmidi_in_ops\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 777, i32 37 }
@___asan_gen_.251 = private unnamed_addr constant [14 x i8] c"gmidi_out_ops\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 783, i32 37 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 853, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 857, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 717, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 728, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 739, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 752, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 761, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 769, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant [15 x i8] c"midi_stringtab\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 217, i32 34 }
@___asan_gen_.293 = private unnamed_addr constant [17 x i8] c"midi_string_defs\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 212, i32 26 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 213, i32 24 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1327, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 406, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 348, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 354, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 294, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 308, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 317, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant [18 x i8] c"f_midi_cin_length\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 233, i32 22 }
@___asan_gen_.348 = private unnamed_addr constant [28 x i8] c"../drivers/usb/gadget/u_f.h\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 80, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.354 = private constant [40 x i8] c"../drivers/usb/gadget/function/f_midi.c\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 423, i32 2 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @__UNIQUE_ID_alias248, ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_midimod_exit, ptr @__initcall__kmod_usb_f_midi__249_1408_midimod_init6, ptr @f_midi_bind._entry, ptr @f_midi_bind._entry_ptr, ptr @f_midi_complete._entry, ptr @f_midi_complete._entry_ptr, ptr @f_midi_do_transmit._entry, ptr @f_midi_do_transmit._entry.21, ptr @f_midi_do_transmit._entry_ptr, ptr @f_midi_do_transmit._entry_ptr.23, ptr @f_midi_register_card._entry, ptr @f_midi_register_card._entry.26, ptr @f_midi_register_card._entry.30, ptr @f_midi_register_card._entry.33, ptr @f_midi_register_card._entry_ptr, ptr @f_midi_register_card._entry_ptr.28, ptr @f_midi_register_card._entry_ptr.32, ptr @f_midi_register_card._entry_ptr.35, ptr @f_midi_set_alt._entry, ptr @f_midi_set_alt._entry_ptr, ptr @f_midi_start_ep._entry, ptr @f_midi_start_ep._entry.53, ptr @f_midi_start_ep._entry_ptr, ptr @f_midi_start_ep._entry_ptr.55, ptr @midimod_exit, ptr @midiusb_func, ptr @.str, ptr @f_midi_alloc_inst.__key, ptr @.str.1, ptr @.str.2, ptr @midi_func_type, ptr @midi_item_ops, ptr @midi_attrs, ptr @f_midi_opts_attr_index, ptr @f_midi_opts_attr_buflen, ptr @f_midi_opts_attr_qlen, ptr @f_midi_opts_attr_in_ports, ptr @f_midi_opts_attr_out_ports, ptr @f_midi_opts_attr_id, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @f_midi_alloc.__key, ptr @.str.11, ptr @.str.12, ptr @f_midi_bind.__key, ptr @.str.13, ptr @midi_strings, ptr @ac_interface_desc, ptr @ms_interface_desc, ptr @ac_header_desc, ptr @bulk_in_desc, ptr @bulk_out_desc, ptr @ms_header_desc, ptr @ms_in_desc, ptr @ms_out_desc, ptr @bulk_out_ss_comp_desc, ptr @bulk_in_ss_comp_desc, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @f_midi_register_card.ops, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @f_midi_longname, ptr @f_midi_shortname, ptr @.str.29, ptr @.str.31, ptr @gmidi_in_ops, ptr @gmidi_out_ops, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @midi_stringtab, ptr @midi_string_defs, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @f_midi_cin_length, ptr @.str.60, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midiusb_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_alloc_inst.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midi_func_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midi_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midi_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_opts_attr_index to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_opts_attr_buflen to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_opts_attr_qlen to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_opts_attr_in_ports to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_opts_attr_out_ports to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_opts_attr_id to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_bind.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midi_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_interface_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_interface_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_header_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bulk_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bulk_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_header_desc to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_in_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_out_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bulk_out_ss_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bulk_in_ss_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_do_transmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_do_transmit._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_register_card.ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_register_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_register_card._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_longname to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_shortname to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_register_card._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmidi_in_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmidi_out_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_register_card._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midi_stringtab to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midi_string_defs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_set_alt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_start_ep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_start_ep._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi_cin_length to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @midimod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usb_function_unregister(ptr noundef nonnull @midiusb_func) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @midimod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_function_register(ptr noundef nonnull @midiusb_func) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @f_midi_alloc_inst() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 224) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr inbounds %struct.f_midi_opts, ptr %call7.i.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @f_midi_alloc_inst.__key) #13
  %free_func_inst = getelementptr inbounds %struct.usb_function_instance, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %free_func_inst to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @f_midi_free_inst, ptr %free_func_inst, align 8
  %index = getelementptr inbounds %struct.f_midi_opts, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %index, align 4
  %id = getelementptr inbounds %struct.f_midi_opts, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %id, align 8
  %buflen = getelementptr inbounds %struct.f_midi_opts, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 512, ptr %buflen, align 8
  %qlen = getelementptr inbounds %struct.f_midi_opts, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %qlen, align 4
  %in_ports = getelementptr inbounds %struct.f_midi_opts, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %in_ports to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %in_ports, align 8
  %out_ports = getelementptr inbounds %struct.f_midi_opts, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %out_ports to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %out_ports, align 4
  %refcnt = getelementptr inbounds %struct.f_midi_opts, ptr %call7.i.i, i32 0, i32 9
  %8 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %refcnt, align 4
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @midi_func_type) #13
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %do.body ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @f_midi_alloc(ptr noundef %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_midi_opts, ptr %fi, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %in_ports = getelementptr inbounds %struct.f_midi_opts, ptr %fi, i32 0, i32 4
  %0 = ptrtoint ptr %in_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp ugt i32 %1, 16
  br i1 %cmp, label %entry.setup_fail_crit_edge, label %lor.lhs.false

entry.setup_fail_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %setup_fail

lor.lhs.false:                                    ; preds = %entry
  %out_ports = getelementptr inbounds %struct.f_midi_opts, ptr %fi, i32 0, i32 5
  %2 = ptrtoint ptr %out_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp1 = icmp ugt i32 %3, 16
  br i1 %cmp1, label %lor.lhs.false.setup_fail_crit_edge, label %if.end8.i.i

lor.lhs.false.setup_fail_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %setup_fail

if.end8.i.i:                                      ; preds = %lor.lhs.false
  %4 = mul nuw nsw i32 %1, 12
  %spec.select.i89 = add nuw nsw i32 %4, 340
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i89, i32 noundef 3520) #17
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.setup_fail_crit_edge, label %for.cond.preheader

if.end8.i.i.setup_fail_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %setup_fail

for.cond.preheader:                               ; preds = %if.end8.i.i
  %5 = ptrtoint ptr %in_ports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %in_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp790.not = icmp eq i32 %6, 0
  br i1 %cmp790.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.091 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %conv = trunc i32 %i.091 to i8
  %cable = getelementptr %struct.f_midi, ptr %call9.i.i, i32 0, i32 20, i32 %i.091, i32 2
  %7 = ptrtoint ptr %cable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %cable, align 4
  %inc = add nuw i32 %i.091, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %id = getelementptr inbounds %struct.f_midi_opts, ptr %fi, i32 0, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %id, align 4
  %call8 = tail call noalias ptr @kstrdup(ptr noundef %9, i32 noundef 3264) #13
  %id9 = getelementptr inbounds %struct.f_midi, ptr %call9.i.i, i32 0, i32 13
  %10 = ptrtoint ptr %id9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8, ptr %id9, align 128
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %id, align 4
  %tobool11.not = icmp ne ptr %12, null
  %tobool13.not = icmp eq ptr %call8, null
  %or.cond = select i1 %tobool11.not, i1 %tobool13.not, i1 false
  br i1 %or.cond, label %for.end.if.then40_crit_edge, label %if.end15

for.end.if.then40_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then40

if.end15:                                         ; preds = %for.end
  %13 = ptrtoint ptr %in_ports to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %in_ports, align 4
  %in_ports17 = getelementptr inbounds %struct.f_midi, ptr %call9.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %in_ports17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %in_ports17, align 4
  %16 = ptrtoint ptr %out_ports to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %out_ports, align 4
  %out_ports19 = getelementptr inbounds %struct.f_midi, ptr %call9.i.i, i32 0, i32 11
  %18 = ptrtoint ptr %out_ports19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %out_ports19, align 8
  %index = getelementptr inbounds %struct.f_midi_opts, ptr %fi, i32 0, i32 1
  %19 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index, align 4
  %index20 = getelementptr inbounds %struct.f_midi, ptr %call9.i.i, i32 0, i32 12
  %21 = ptrtoint ptr %index20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %index20, align 4
  %buflen = getelementptr inbounds %struct.f_midi_opts, ptr %fi, i32 0, i32 6
  %22 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buflen, align 4
  %buflen21 = getelementptr inbounds %struct.f_midi, ptr %call9.i.i, i32 0, i32 14
  %24 = ptrtoint ptr %buflen21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %buflen21, align 4
  %qlen = getelementptr inbounds %struct.f_midi_opts, ptr %fi, i32 0, i32 7
  %25 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qlen, align 4
  %qlen22 = getelementptr inbounds %struct.f_midi, ptr %call9.i.i, i32 0, i32 15
  %27 = ptrtoint ptr %qlen22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %qlen22, align 8
  %in_last_port = getelementptr inbounds %struct.f_midi, ptr %call9.i.i, i32 0, i32 18
  %28 = ptrtoint ptr %in_last_port to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %in_last_port, align 4
  %free_ref = getelementptr inbounds %struct.f_midi, ptr %call9.i.i, i32 0, i32 19
  %29 = ptrtoint ptr %free_ref to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %free_ref, align 16
  %in_req_fifo = getelementptr inbounds %struct.f_midi, ptr %call9.i.i, i32 0, i32 16
  %call25 = tail call i32 @__kfifo_alloc(ptr noundef %in_req_fifo, i32 noundef %26, i32 noundef 4, i32 noundef 3264) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool27.not = icmp eq i32 %call25, 0
  br i1 %tobool27.not, label %do.body, label %if.end15.if.then40_crit_edge

if.end15.if.then40_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then40

do.body:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %transmit_lock = getelementptr inbounds %struct.f_midi, ptr %call9.i.i, i32 0, i32 17
  tail call void @__raw_spin_lock_init(ptr noundef %transmit_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @f_midi_alloc.__key, i16 noundef signext 3) #13
  %refcnt = getelementptr inbounds %struct.f_midi_opts, ptr %fi, i32 0, i32 9
  %30 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %refcnt, align 4
  %inc31 = add i32 %31, 1
  store i32 %inc31, ptr %refcnt, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #13
  %32 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.12, ptr %call9.i.i, align 128
  %bind = getelementptr inbounds %struct.usb_function, ptr %call9.i.i, i32 0, i32 9
  %33 = ptrtoint ptr %bind to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @f_midi_bind, ptr %bind, align 4
  %unbind = getelementptr inbounds %struct.usb_function, ptr %call9.i.i, i32 0, i32 10
  %34 = ptrtoint ptr %unbind to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @f_midi_unbind, ptr %unbind, align 8
  %set_alt = getelementptr inbounds %struct.usb_function, ptr %call9.i.i, i32 0, i32 13
  %35 = ptrtoint ptr %set_alt to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @f_midi_set_alt, ptr %set_alt, align 4
  %disable = getelementptr inbounds %struct.usb_function, ptr %call9.i.i, i32 0, i32 15
  %36 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @f_midi_disable, ptr %disable, align 4
  %free_func = getelementptr inbounds %struct.usb_function, ptr %call9.i.i, i32 0, i32 11
  %37 = ptrtoint ptr %free_func to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @f_midi_free, ptr %free_func, align 4
  br label %cleanup

if.then40:                                        ; preds = %if.end15.if.then40_crit_edge, %for.end.if.then40_crit_edge
  %status.0 = phi i32 [ %call25, %if.end15.if.then40_crit_edge ], [ -12, %for.end.if.then40_crit_edge ]
  %38 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %id9, align 128
  tail call void @kfree(ptr noundef %39) #13
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %setup_fail

setup_fail:                                       ; preds = %if.then40, %if.end8.i.i.setup_fail_crit_edge, %lor.lhs.false.setup_fail_crit_edge, %entry.setup_fail_crit_edge
  %status.1 = phi i32 [ %status.0, %if.then40 ], [ -22, %lor.lhs.false.setup_fail_crit_edge ], [ -22, %entry.setup_fail_crit_edge ], [ -12, %if.end8.i.i.setup_fail_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #13
  %40 = inttoptr i32 %status.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %setup_fail, %do.body
  %retval.0 = phi ptr [ %40, %setup_fail ], [ %call9.i.i, %do.body ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f_midi_free_inst(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_midi_opts, ptr %f, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %refcnt = getelementptr inbounds %struct.f_midi_opts, ptr %f, i32 0, i32 9
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  tail call void @mutex_unlock(ptr noundef %lock) #13
  br i1 %tobool.not, label %if.then3, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then3:                                         ; preds = %entry
  %id_allocated = getelementptr inbounds %struct.f_midi_opts, ptr %f, i32 0, i32 3
  %2 = ptrtoint ptr %id_allocated to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id_allocated, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.then3.if.end6_crit_edge, label %if.then5

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  %id = getelementptr inbounds %struct.f_midi_opts, ptr %f, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %id, align 4
  tail call void @kfree(ptr noundef %5) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then3.if.end6_crit_edge
  tail call void @kfree(ptr noundef %f) #13
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @midi_attr_release(ptr noundef %item) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_put_function_instance(ptr noundef %item) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_midi_opts_index_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %index = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_midi_opts_index_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #13
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !195
  %lock = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %refcnt = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 9
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtoint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end3, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %4)
  %cmp4 = icmp sgt i32 %4, 32
  br i1 %cmp4, label %if.end3.end_crit_edge, label %if.end6

if.end3.end_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %index = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %index, align 4
  br label %end

end:                                              ; preds = %if.end6, %if.end3.end_crit_edge, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end6 ], [ -16, %entry.end_crit_edge ], [ -22, %if.end3.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #13
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_midi_opts_buflen_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %buflen = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 6
  %0 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buflen, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_midi_opts_buflen_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #13
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !195
  %lock = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %refcnt = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 9
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end3, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  %buflen = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 6
  %5 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %buflen, align 4
  br label %end

end:                                              ; preds = %if.end3, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end3 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #13
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_midi_opts_qlen_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %qlen = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 7
  %0 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_midi_opts_qlen_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #13
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !195
  %lock = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %refcnt = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 9
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end3, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  %qlen = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 7
  %5 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %qlen, align 4
  br label %end

end:                                              ; preds = %if.end3, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end3 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_midi_opts_in_ports_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %in_ports = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %in_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in_ports, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_midi_opts_in_ports_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #13
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !195
  %lock = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %refcnt = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 9
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end3, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %cmp4 = icmp ugt i32 %4, 16
  br i1 %cmp4, label %if.end3.end_crit_edge, label %if.end6

if.end3.end_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %in_ports = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 4
  %5 = ptrtoint ptr %in_ports to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %in_ports, align 4
  br label %end

end:                                              ; preds = %if.end6, %if.end3.end_crit_edge, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end6 ], [ -16, %entry.end_crit_edge ], [ -22, %if.end3.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_midi_opts_out_ports_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %out_ports = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %out_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out_ports, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_midi_opts_out_ports_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #13
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !195
  %lock = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %refcnt = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 9
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end3, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %cmp4 = icmp ugt i32 %4, 16
  br i1 %cmp4, label %if.end3.end_crit_edge, label %if.end6

if.end3.end_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %out_ports = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 5
  %5 = ptrtoint ptr %out_ports to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %out_ports, align 4
  br label %end

end:                                              ; preds = %if.end6, %if.end3.end_crit_edge, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end6 ], [ -16, %entry.end_crit_edge ], [ -22, %if.end3.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_midi_opts_id_show(ptr noundef %item, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %id = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 @strlcpy(ptr noundef %page, ptr noundef nonnull %1, i32 noundef 4096) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %page to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %page, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %result.0 = phi i32 [ %call2, %if.then ], [ 0, %if.else ]
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_midi_opts_id_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %refcnt = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 9
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @kstrndup(ptr noundef %page, i32 noundef %len, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.end_crit_edge, label %if.end3

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end3:                                          ; preds = %if.end
  %id_allocated = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 3
  %2 = ptrtoint ptr %id_allocated to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id_allocated, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %id = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %id, align 4
  tail call void @kfree(ptr noundef %5) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %id7 = getelementptr inbounds %struct.f_midi_opts, ptr %item, i32 0, i32 2
  %6 = ptrtoint ptr %id7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %id7, align 4
  %7 = ptrtoint ptr %id_allocated to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %id_allocated, align 4
  br label %end

end:                                              ; preds = %if.end6, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %len, %if.end6 ], [ -16, %entry.end_crit_edge ], [ -12, %if.end.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 %ret.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_midi_bind(ptr noundef %c, ptr noundef %f) #2 align 64 {
entry:
  %jack_in_ext_desc = alloca [16 x %struct.usb_midi_in_jack_descriptor], align 1
  %jack_in_emb_desc = alloca [16 x %struct.usb_midi_in_jack_descriptor], align 1
  %jack_out_ext_desc = alloca [16 x %struct.usb_midi_out_jack_descriptor_1], align 1
  %jack_out_emb_desc = alloca [16 x %struct.usb_midi_out_jack_descriptor_1], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %jack_in_ext_desc) #13
  %0 = call ptr @memset(ptr %jack_in_ext_desc, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %jack_in_emb_desc) #13
  %1 = call ptr @memset(ptr %jack_in_emb_desc, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %jack_out_ext_desc) #13
  %2 = call ptr @memset(ptr %jack_out_ext_desc, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %jack_out_emb_desc) #13
  %3 = call ptr @memset(ptr %jack_out_emb_desc, i32 255, i32 144)
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %4 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %gadget2 = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 1
  %8 = ptrtoint ptr %gadget2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %gadget2, align 4
  %work = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 9
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #13
  %9 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @f_midi_bind.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry6 = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry6, ptr %entry6, align 4
  %prev.i = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 9, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry6, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 9, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @f_midi_in_work, ptr %func, align 4
  %call8 = tail call fastcc i32 @f_midi_register_card(ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %entry.do.end189_crit_edge, label %if.end

entry.do.end189_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end189

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cdev1, align 4
  %call10 = tail call ptr @usb_gstrings_attach(ptr noundef %14, ptr noundef nonnull @midi_strings, i32 noundef 2) #13
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %call10 to i32
  br label %fail

if.end14:                                         ; preds = %if.end
  %16 = ptrtoint ptr %call10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %call10, align 4
  store i8 %17, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ac_interface_desc, i32 0, i32 8), align 1
  %call15 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.fail_crit_edge, label %if.end18

if.end14.fail_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end18:                                         ; preds = %if.end14
  %conv = trunc i32 %call15 to i8
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ac_interface_desc, i32 0, i32 2), align 1
  %call19 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.fail_crit_edge, label %if.end23

if.end18.fail_crit_edge:                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end23:                                         ; preds = %if.end18
  %conv24 = trunc i32 %call19 to i8
  store i8 %conv24, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ms_interface_desc, i32 0, i32 2), align 1
  store i8 %conv24, ptr getelementptr inbounds (%struct.uac1_ac_header_descriptor_1, ptr @ac_header_desc, i32 0, i32 6), align 1
  %ms_id = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 6
  %18 = ptrtoint ptr %ms_id to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv24, ptr %ms_id, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %call28 = tail call ptr @usb_ep_autoconfig(ptr noundef %20, ptr noundef nonnull @bulk_in_desc) #13
  %in_ep = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 2
  %21 = ptrtoint ptr %in_ep to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call28, ptr %in_ep, align 4
  %tobool.not = icmp eq ptr %call28, null
  br i1 %tobool.not, label %if.end23.fail_crit_edge, label %if.end31

if.end23.fail_crit_edge:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end31:                                         ; preds = %if.end23
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  %call33 = tail call ptr @usb_ep_autoconfig(ptr noundef %23, ptr noundef nonnull @bulk_out_desc) #13
  %out_ep = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 3
  %24 = ptrtoint ptr %out_ep to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call33, ptr %out_ep, align 4
  %tobool35.not = icmp eq ptr %call33, null
  br i1 %tobool35.not, label %if.end31.fail_crit_edge, label %if.end37

if.end31.fail_crit_edge:                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end37:                                         ; preds = %if.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 300) #16
  %tobool39.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool39.not, label %if.end37.fail_crit_edge, label %if.end41

if.end37.fail_crit_edge:                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end41:                                         ; preds = %if.end37
  %26 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ac_interface_desc, ptr %call7.i.i.i, align 8
  %arrayidx44 = getelementptr ptr, ptr %call7.i.i.i, i32 1
  %27 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ac_header_desc, ptr %arrayidx44, align 4
  %arrayidx46 = getelementptr ptr, ptr %call7.i.i.i, i32 2
  %28 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ms_interface_desc, ptr %arrayidx46, align 8
  %in_ports = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 10
  %29 = ptrtoint ptr %in_ports to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %in_ports, align 4
  %out_ports = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 11
  %31 = ptrtoint ptr %out_ports to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %out_ports, align 4
  %add = add i32 %32, %30
  %33 = trunc i32 %add to i16
  %34 = mul i16 %33, 15
  %conv48 = add i16 %34, 7
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv48)
  store i16 %35, ptr getelementptr inbounds (%struct.usb_ms_header_descriptor, ptr @ms_header_desc, i32 0, i32 4), align 1
  %arrayidx50 = getelementptr ptr, ptr %call7.i.i.i, i32 3
  %36 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ms_header_desc, ptr %arrayidx50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp52352.not = icmp eq i32 %30, 0
  br i1 %cmp52352.not, label %if.end41.for.cond77.preheader_crit_edge, label %if.end41.for.body_crit_edge

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  br label %for.body

if.end41.for.cond77.preheader_crit_edge:          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond77.preheader

for.cond77.preheader:                             ; preds = %for.body.for.cond77.preheader_crit_edge, %if.end41.for.cond77.preheader_crit_edge
  %jack.0.lcssa = phi i32 [ 1, %if.end41.for.cond77.preheader_crit_edge ], [ %inc64, %for.body.for.cond77.preheader_crit_edge ]
  %i.0.lcssa = phi i32 [ 4, %if.end41.for.cond77.preheader_crit_edge ], [ %inc72, %for.body.for.cond77.preheader_crit_edge ]
  %37 = ptrtoint ptr %out_ports to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %out_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp79357.not = icmp eq i32 %38, 0
  br i1 %cmp79357.not, label %for.cond77.preheader.for.end116_crit_edge, label %for.cond77.preheader.for.body81_crit_edge

for.cond77.preheader.for.body81_crit_edge:        ; preds = %for.cond77.preheader
  br label %for.body81

for.cond77.preheader.for.end116_crit_edge:        ; preds = %for.cond77.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end116

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end41.for.body_crit_edge
  %i.0355 = phi i32 [ %inc72, %for.body.for.body_crit_edge ], [ 4, %if.end41.for.body_crit_edge ]
  %jack.0354 = phi i32 [ %inc64, %for.body.for.body_crit_edge ], [ 1, %if.end41.for.body_crit_edge ]
  %n.0353 = phi i32 [ %inc76, %for.body.for.body_crit_edge ], [ 0, %if.end41.for.body_crit_edge ]
  %arrayidx54 = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %jack_in_ext_desc, i32 0, i32 %n.0353
  %arrayidx55 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %jack_out_emb_desc, i32 0, i32 %n.0353
  %39 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 6, ptr %arrayidx54, align 1
  %bDescriptorType = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %jack_in_ext_desc, i32 0, i32 %n.0353, i32 1
  %40 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 36, ptr %bDescriptorType, align 1
  %bDescriptorSubtype = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %jack_in_ext_desc, i32 0, i32 %n.0353, i32 2
  %41 = ptrtoint ptr %bDescriptorSubtype to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 2, ptr %bDescriptorSubtype, align 1
  %bJackType = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %jack_in_ext_desc, i32 0, i32 %n.0353, i32 3
  %42 = ptrtoint ptr %bJackType to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %bJackType, align 1
  %conv57 = trunc i32 %jack.0354 to i8
  %bJackID = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %jack_in_ext_desc, i32 0, i32 %n.0353, i32 4
  %43 = ptrtoint ptr %bJackID to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv57, ptr %bJackID, align 1
  %iJack = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %jack_in_ext_desc, i32 0, i32 %n.0353, i32 5
  %44 = ptrtoint ptr %iJack to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %iJack, align 1
  %inc58 = or i32 %i.0355, 1
  %arrayidx59 = getelementptr ptr, ptr %call7.i.i.i, i32 %i.0355
  %45 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx54, ptr %arrayidx59, align 8
  %46 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 9, ptr %arrayidx55, align 1
  %bDescriptorType61 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %jack_out_emb_desc, i32 0, i32 %n.0353, i32 1
  %47 = ptrtoint ptr %bDescriptorType61 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 36, ptr %bDescriptorType61, align 1
  %bDescriptorSubtype62 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %jack_out_emb_desc, i32 0, i32 %n.0353, i32 2
  %48 = ptrtoint ptr %bDescriptorSubtype62 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 3, ptr %bDescriptorSubtype62, align 1
  %bJackType63 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %jack_out_emb_desc, i32 0, i32 %n.0353, i32 3
  %49 = ptrtoint ptr %bJackType63 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %bJackType63, align 1
  %inc64 = add i32 %jack.0354, 2
  %conv65 = add i8 %conv57, 1
  %bJackID66 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %jack_out_emb_desc, i32 0, i32 %n.0353, i32 4
  %50 = ptrtoint ptr %bJackID66 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv65, ptr %bJackID66, align 1
  %bNrInputPins = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %jack_out_emb_desc, i32 0, i32 %n.0353, i32 5
  %51 = ptrtoint ptr %bNrInputPins to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %bNrInputPins, align 1
  %pins = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %jack_out_emb_desc, i32 0, i32 %n.0353, i32 6
  %baSourcePin = getelementptr inbounds %struct.usb_midi_source_pin, ptr %pins, i32 0, i32 1
  %52 = ptrtoint ptr %baSourcePin to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %baSourcePin, align 1
  %53 = ptrtoint ptr %pins to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv57, ptr %pins, align 1
  %iJack71 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %jack_out_emb_desc, i32 0, i32 %n.0353, i32 7
  %54 = ptrtoint ptr %iJack71 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %iJack71, align 1
  %inc72 = add i32 %i.0355, 2
  %arrayidx73 = getelementptr ptr, ptr %call7.i.i.i, i32 %inc58
  %55 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %arrayidx55, ptr %arrayidx73, align 4
  %arrayidx75 = getelementptr %struct.usb_ms_endpoint_descriptor_16, ptr @ms_in_desc, i32 0, i32 4, i32 %n.0353
  %56 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv65, ptr %arrayidx75, align 1
  %inc76 = add nuw i32 %n.0353, 1
  %57 = ptrtoint ptr %in_ports to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %in_ports, align 4
  %cmp52 = icmp ult i32 %inc76, %58
  br i1 %cmp52, label %for.body.for.body_crit_edge, label %for.body.for.cond77.preheader_crit_edge

for.body.for.cond77.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond77.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body81:                                       ; preds = %for.body81.for.body81_crit_edge, %for.cond77.preheader.for.body81_crit_edge
  %i.1360 = phi i32 [ %inc110, %for.body81.for.body81_crit_edge ], [ %i.0.lcssa, %for.cond77.preheader.for.body81_crit_edge ]
  %jack.1359 = phi i32 [ %inc98, %for.body81.for.body81_crit_edge ], [ %jack.0.lcssa, %for.cond77.preheader.for.body81_crit_edge ]
  %n.1358 = phi i32 [ %inc115, %for.body81.for.body81_crit_edge ], [ 0, %for.cond77.preheader.for.body81_crit_edge ]
  %arrayidx82 = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %jack_in_emb_desc, i32 0, i32 %n.1358
  %arrayidx83 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %jack_out_ext_desc, i32 0, i32 %n.1358
  %59 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 6, ptr %arrayidx82, align 1
  %bDescriptorType85 = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %jack_in_emb_desc, i32 0, i32 %n.1358, i32 1
  %60 = ptrtoint ptr %bDescriptorType85 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 36, ptr %bDescriptorType85, align 1
  %bDescriptorSubtype86 = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %jack_in_emb_desc, i32 0, i32 %n.1358, i32 2
  %61 = ptrtoint ptr %bDescriptorSubtype86 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 2, ptr %bDescriptorSubtype86, align 1
  %bJackType87 = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %jack_in_emb_desc, i32 0, i32 %n.1358, i32 3
  %62 = ptrtoint ptr %bJackType87 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %bJackType87, align 1
  %conv89 = trunc i32 %jack.1359 to i8
  %bJackID90 = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %jack_in_emb_desc, i32 0, i32 %n.1358, i32 4
  %63 = ptrtoint ptr %bJackID90 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv89, ptr %bJackID90, align 1
  %iJack91 = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %jack_in_emb_desc, i32 0, i32 %n.1358, i32 5
  %64 = ptrtoint ptr %iJack91 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %iJack91, align 1
  %inc92 = or i32 %i.1360, 1
  %arrayidx93 = getelementptr ptr, ptr %call7.i.i.i, i32 %i.1360
  %65 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %arrayidx82, ptr %arrayidx93, align 8
  %66 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 9, ptr %arrayidx83, align 1
  %bDescriptorType95 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %jack_out_ext_desc, i32 0, i32 %n.1358, i32 1
  %67 = ptrtoint ptr %bDescriptorType95 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 36, ptr %bDescriptorType95, align 1
  %bDescriptorSubtype96 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %jack_out_ext_desc, i32 0, i32 %n.1358, i32 2
  %68 = ptrtoint ptr %bDescriptorSubtype96 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 3, ptr %bDescriptorSubtype96, align 1
  %bJackType97 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %jack_out_ext_desc, i32 0, i32 %n.1358, i32 3
  %69 = ptrtoint ptr %bJackType97 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 2, ptr %bJackType97, align 1
  %inc98 = add i32 %jack.1359, 2
  %conv99 = add i8 %conv89, 1
  %bJackID100 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %jack_out_ext_desc, i32 0, i32 %n.1358, i32 4
  %70 = ptrtoint ptr %bJackID100 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv99, ptr %bJackID100, align 1
  %bNrInputPins101 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %jack_out_ext_desc, i32 0, i32 %n.1358, i32 5
  %71 = ptrtoint ptr %bNrInputPins101 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %bNrInputPins101, align 1
  %iJack102 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %jack_out_ext_desc, i32 0, i32 %n.1358, i32 7
  %72 = ptrtoint ptr %iJack102 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %iJack102, align 1
  %pins104 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %jack_out_ext_desc, i32 0, i32 %n.1358, i32 6
  %73 = ptrtoint ptr %pins104 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv89, ptr %pins104, align 1
  %baSourcePin109 = getelementptr inbounds %struct.usb_midi_source_pin, ptr %pins104, i32 0, i32 1
  %74 = ptrtoint ptr %baSourcePin109 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %baSourcePin109, align 1
  %inc110 = add i32 %i.1360, 2
  %arrayidx111 = getelementptr ptr, ptr %call7.i.i.i, i32 %inc92
  %75 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %arrayidx83, ptr %arrayidx111, align 4
  %arrayidx113 = getelementptr %struct.usb_ms_endpoint_descriptor_16, ptr @ms_out_desc, i32 0, i32 4, i32 %n.1358
  %76 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv89, ptr %arrayidx113, align 1
  %inc115 = add nuw i32 %n.1358, 1
  %77 = ptrtoint ptr %out_ports to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %out_ports, align 4
  %cmp79 = icmp ult i32 %inc115, %78
  br i1 %cmp79, label %for.body81.for.body81_crit_edge, label %for.end116.loopexit

for.body81.for.body81_crit_edge:                  ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body81

for.end116.loopexit:                              ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast = trunc i32 %78 to i8
  br label %for.end116

for.end116:                                       ; preds = %for.end116.loopexit, %for.cond77.preheader.for.end116_crit_edge
  %i.1.lcssa = phi i32 [ %i.0.lcssa, %for.cond77.preheader.for.end116_crit_edge ], [ %inc110, %for.end116.loopexit ]
  %.lcssa = phi i8 [ 0, %for.cond77.preheader.for.end116_crit_edge ], [ %phi.cast, %for.end116.loopexit ]
  %79 = ptrtoint ptr %in_ports to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %in_ports, align 4
  %81 = trunc i32 %80 to i8
  %conv119 = add i8 %81, 4
  store i8 %conv119, ptr @ms_out_desc, align 1
  store i8 %81, ptr getelementptr inbounds (%struct.usb_ms_endpoint_descriptor_16, ptr @ms_out_desc, i32 0, i32 3), align 1
  %conv124 = add i8 %.lcssa, 4
  store i8 %conv124, ptr @ms_in_desc, align 1
  store i8 %.lcssa, ptr getelementptr inbounds (%struct.usb_ms_endpoint_descriptor_16, ptr @ms_in_desc, i32 0, i32 3), align 1
  %inc127 = or i32 %i.1.lcssa, 1
  %arrayidx128 = getelementptr ptr, ptr %call7.i.i.i, i32 %i.1.lcssa
  %82 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @bulk_out_desc, ptr %arrayidx128, align 8
  %inc129 = add i32 %i.1.lcssa, 2
  %arrayidx130 = getelementptr ptr, ptr %call7.i.i.i, i32 %inc127
  %83 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @ms_out_desc, ptr %arrayidx130, align 4
  %inc131 = add i32 %i.1.lcssa, 3
  %arrayidx132 = getelementptr ptr, ptr %call7.i.i.i, i32 %inc129
  %84 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @bulk_in_desc, ptr %arrayidx132, align 8
  %inc133 = add i32 %i.1.lcssa, 4
  %arrayidx134 = getelementptr ptr, ptr %call7.i.i.i, i32 %inc131
  %85 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @ms_in_desc, ptr %arrayidx134, align 4
  %arrayidx136 = getelementptr ptr, ptr %call7.i.i.i, i32 %inc133
  %86 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %arrayidx136, align 8
  %call137 = call ptr @usb_copy_descriptors(ptr noundef nonnull %call7.i.i.i) #13
  %fs_descriptors = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 2
  %87 = ptrtoint ptr %fs_descriptors to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call137, ptr %fs_descriptors, align 4
  %tobool139.not = icmp eq ptr %call137, null
  br i1 %tobool139.not, label %for.end116.fail_f_midi_crit_edge, label %if.end141

for.end116.fail_f_midi_crit_edge:                 ; preds = %for.end116
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail_f_midi

if.end141:                                        ; preds = %for.end116
  %88 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cdev1, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %max_speed.i = getelementptr inbounds %struct.usb_gadget, ptr %91, i32 0, i32 6
  %92 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %max_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %93)
  %cmp.i345 = icmp ult i32 %93, 3
  br i1 %cmp.i345, label %if.end141.if.end152_crit_edge, label %if.then146

if.end141.if.end152_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

if.then146:                                       ; preds = %if.end141
  store i16 2, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @bulk_in_desc, i32 0, i32 4), align 1
  store i16 2, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @bulk_out_desc, i32 0, i32 4), align 1
  %call147 = call ptr @usb_copy_descriptors(ptr noundef nonnull %call7.i.i.i) #13
  %hs_descriptors = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 3
  %94 = ptrtoint ptr %hs_descriptors to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call147, ptr %hs_descriptors, align 4
  %tobool149.not = icmp eq ptr %call147, null
  br i1 %tobool149.not, label %if.then146.fail_f_midi_crit_edge, label %if.then146.if.end152_crit_edge

if.then146.if.end152_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

if.then146.fail_f_midi_crit_edge:                 ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail_f_midi

if.end152:                                        ; preds = %if.then146.if.end152_crit_edge, %if.end141.if.end152_crit_edge
  %95 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cdev1, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %max_speed.i346 = getelementptr inbounds %struct.usb_gadget, ptr %98, i32 0, i32 6
  %99 = ptrtoint ptr %max_speed.i346 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %max_speed.i346, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %100)
  %cmp.i347 = icmp ult i32 %100, 5
  br i1 %cmp.i347, label %if.end152.if.end186_crit_edge, label %if.then157

if.end152.if.end186_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end186

if.then157:                                       ; preds = %if.end152
  store i16 4, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @bulk_in_desc, i32 0, i32 4), align 1
  store i16 4, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @bulk_out_desc, i32 0, i32 4), align 1
  %101 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @bulk_out_desc, ptr %arrayidx128, align 8
  %102 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @bulk_out_ss_comp_desc, ptr %arrayidx130, align 4
  %103 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @ms_out_desc, ptr %arrayidx132, align 8
  %104 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @bulk_in_desc, ptr %arrayidx134, align 4
  %inc166 = add i32 %i.1.lcssa, 5
  %105 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @bulk_in_ss_comp_desc, ptr %arrayidx136, align 8
  %arrayidx169 = getelementptr ptr, ptr %call7.i.i.i, i32 %inc166
  %106 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @ms_in_desc, ptr %arrayidx169, align 4
  %call170 = call ptr @usb_copy_descriptors(ptr noundef nonnull %call7.i.i.i) #13
  %ss_descriptors = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 4
  %107 = ptrtoint ptr %ss_descriptors to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call170, ptr %ss_descriptors, align 4
  %tobool172.not = icmp eq ptr %call170, null
  br i1 %tobool172.not, label %if.then157.fail_f_midi_crit_edge, label %if.end174

if.then157.fail_f_midi_crit_edge:                 ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail_f_midi

if.end174:                                        ; preds = %if.then157
  %108 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cdev1, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %max_speed.i349 = getelementptr inbounds %struct.usb_gadget, ptr %111, i32 0, i32 6
  %112 = ptrtoint ptr %max_speed.i349 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %max_speed.i349, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %113)
  %cmp.i350 = icmp ult i32 %113, 6
  br i1 %cmp.i350, label %if.end174.if.end186_crit_edge, label %if.then179

if.end174.if.end186_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end186

if.then179:                                       ; preds = %if.end174
  %call180 = call ptr @usb_copy_descriptors(ptr noundef nonnull %call7.i.i.i) #13
  %ssp_descriptors = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 5
  %114 = ptrtoint ptr %ssp_descriptors to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call180, ptr %ssp_descriptors, align 4
  %tobool182.not = icmp eq ptr %call180, null
  br i1 %tobool182.not, label %if.then179.fail_f_midi_crit_edge, label %if.then179.if.end186_crit_edge

if.then179.if.end186_crit_edge:                   ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end186

if.then179.fail_f_midi_crit_edge:                 ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail_f_midi

if.end186:                                        ; preds = %if.then179.if.end186_crit_edge, %if.end174.if.end186_crit_edge, %if.end152.if.end186_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %cleanup

fail_f_midi:                                      ; preds = %if.then179.fail_f_midi_crit_edge, %if.then157.fail_f_midi_crit_edge, %if.then146.fail_f_midi_crit_edge, %for.end116.fail_f_midi_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  call void @usb_free_all_descriptors(ptr noundef %f) #13
  br label %fail

fail:                                             ; preds = %fail_f_midi, %if.end37.fail_crit_edge, %if.end31.fail_crit_edge, %if.end23.fail_crit_edge, %if.end18.fail_crit_edge, %if.end14.fail_crit_edge, %if.then12
  %status.0 = phi i32 [ %15, %if.then12 ], [ %call15, %if.end14.fail_crit_edge ], [ %call19, %if.end18.fail_crit_edge ], [ -19, %fail_f_midi ], [ -19, %if.end31.fail_crit_edge ], [ -19, %if.end23.fail_crit_edge ], [ -12, %if.end37.fail_crit_edge ]
  %card.i = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 4
  %115 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %card.i, align 4
  %tobool.not.i = icmp eq ptr %116, null
  br i1 %tobool.not.i, label %fail.do.end189_crit_edge, label %if.then.i

fail.do.end189_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end189

if.then.i:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = call i32 @snd_card_free(ptr noundef nonnull %116) #13
  %117 = ptrtoint ptr %card.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %card.i, align 4
  br label %do.end189

do.end189:                                        ; preds = %if.then.i, %fail.do.end189_crit_edge, %entry.do.end189_crit_edge
  %status.1 = phi i32 [ %call8, %entry.do.end189_crit_edge ], [ %status.0, %fail.do.end189_crit_edge ], [ %status.0, %if.then.i ]
  %118 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %119, i32 0, i32 11
  %120 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %f, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef %121, i32 noundef %status.1) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end189, %if.end186
  %retval.0 = phi i32 [ %status.1, %do.end189 ], [ 0, %if.end186 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %jack_out_emb_desc) #13
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %jack_out_ext_desc) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %jack_in_emb_desc) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %jack_in_ext_desc) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f_midi_unbind(ptr nocapture noundef readnone %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f_midi_unbind.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@f_midi_unbind, %do.end)) #13
          to label %if.then [label %do.end], !srcloc !196

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f_midi_unbind.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.48) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @f_midi_disable(ptr noundef %f)
  %card6 = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 4
  %6 = ptrtoint ptr %card6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card6, align 4
  store ptr null, ptr %card6, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %do.end.if.end11_crit_edge, label %if.then9

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call i32 @snd_card_free_when_closed(ptr noundef nonnull %7) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.end.if.end11_crit_edge
  tail call void @usb_free_all_descriptors(ptr noundef %f) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_midi_set_alt(ptr noundef %f, i32 noundef %intf, i32 noundef %alt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_id = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %ms_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ms_id, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %intf)
  %cmp.not = icmp eq i32 %conv, %intf
  br i1 %cmp.not, label %if.end, label %entry.cleanup77_crit_edge

entry.cleanup77_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup77

if.end:                                           ; preds = %entry
  %in_ep = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 2
  %2 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_ep, align 4
  %call2 = tail call fastcc i32 @f_midi_start_ep(ptr noundef %f, ptr noundef %f, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup77_crit_edge

if.end.cleanup77_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup77

if.end4:                                          ; preds = %if.end
  %out_ep = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 3
  %4 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out_ep, align 4
  %call5 = tail call fastcc i32 @f_midi_start_ep(ptr noundef %f, ptr noundef %f, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %while.cond.preheader, label %if.end4.cleanup77_crit_edge

if.end4.cleanup77_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup77

while.cond.preheader:                             ; preds = %if.end4
  %in_req_fifo = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 16
  %mask = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 16, i32 0, i32 0, i32 2
  %out = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 16, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %8 = ptrtoint ptr %in_req_fifo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %in_req_fifo, align 4
  %10 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %out, align 4
  %sub.neg131 = sub i32 %11, %9
  %sub9132 = xor i32 %7, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.neg131, i32 %sub9132)
  %tobool12.not133 = icmp eq i32 %sub.neg131, %sub9132
  br i1 %tobool12.not133, label %while.cond.preheader.for.cond.preheader_crit_edge, label %while.body.lr.ph

while.cond.preheader.for.cond.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %buflen = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 14
  %data = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 16, i32 0, i32 0, i32 4
  br label %while.body

for.cond.preheader:                               ; preds = %while.cond.backedge.for.cond.preheader_crit_edge, %while.cond.preheader.for.cond.preheader_crit_edge
  %qlen = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 15
  %12 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp46134.not = icmp eq i32 %13, 0
  br i1 %cmp46134.not, label %for.cond.preheader.cleanup77_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup77_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup77

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %buflen52 = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 14
  br label %for.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %14 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %in_ep, align 4
  %16 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buflen, align 4
  %call.i = tail call ptr @alloc_ep_req(ptr noundef %15, i32 noundef %17) #13
  %cmp15 = icmp eq ptr %call.i, null
  br i1 %cmp15, label %while.body.cleanup77_crit_edge, label %if.end18

while.body.cleanup77_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup77

if.end18:                                         ; preds = %while.body
  %length = getelementptr inbounds %struct.usb_request, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %length, align 4
  %complete = getelementptr inbounds %struct.usb_request, ptr %call.i, i32 0, i32 7
  %19 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @f_midi_complete, ptr %complete, align 4
  %20 = ptrtoint ptr %in_req_fifo to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %in_req_fifo, align 4
  %22 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %out, align 4
  %sub30 = sub i32 %21, %23
  %24 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub30, i32 %25)
  %cmp32.not = icmp ugt i32 %sub30, %25
  br i1 %cmp32.not, label %if.end18.while.cond.backedge_crit_edge, label %if.then36

if.end18.while.cond.backedge_crit_edge:           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.then36:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %and = and i32 %25, %21
  %arrayidx = getelementptr ptr, ptr %27, i32 %and
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !197
  %29 = ptrtoint ptr %in_req_fifo to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %in_req_fifo, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %in_req_fifo, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then36, %if.end18.while.cond.backedge_crit_edge
  %31 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mask, align 4
  %33 = ptrtoint ptr %in_req_fifo to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %in_req_fifo, align 4
  %35 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %out, align 4
  %sub.neg = sub i32 %36, %34
  %sub9 = xor i32 %32, -1
  %tobool12.not = icmp eq i32 %sub.neg, %sub9
  br i1 %tobool12.not, label %while.cond.backedge.for.cond.preheader_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.cond.backedge.for.cond.preheader_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

for.cond:                                         ; preds = %if.end57
  %inc76 = add nuw i32 %i.0137, 1
  %37 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %qlen, align 4
  %cmp46 = icmp ult i32 %inc76, %38
  br i1 %cmp46, label %for.cond.for.body_crit_edge, label %for.cond.cleanup77_crit_edge

for.cond.cleanup77_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup77

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0137 = phi i32 [ 0, %for.body.lr.ph ], [ %inc76, %for.cond.for.body_crit_edge ]
  %39 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %out_ep, align 4
  %41 = ptrtoint ptr %buflen52 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %buflen52, align 4
  %call.i126 = tail call ptr @alloc_ep_req(ptr noundef %40, i32 noundef %42) #13
  %cmp54 = icmp eq ptr %call.i126, null
  br i1 %cmp54, label %for.body.cleanup77_crit_edge, label %if.end57

for.body.cleanup77_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup77

if.end57:                                         ; preds = %for.body
  %complete58 = getelementptr inbounds %struct.usb_request, ptr %call.i126, i32 0, i32 7
  %43 = ptrtoint ptr %complete58 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @f_midi_complete, ptr %complete58, align 4
  %44 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %out_ep, align 4
  %call60 = tail call i32 @usb_ep_queue(ptr noundef %45, ptr noundef nonnull %call.i126, i32 noundef 2592) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %for.cond, label %do.end65

do.end65:                                         ; preds = %if.end57
  %gadget = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 1
  %46 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gadget, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %out_ep, align 4
  %name = getelementptr inbounds %struct.usb_ep, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef %51, i32 noundef %call60) #18
  %52 = ptrtoint ptr %call.i126 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i126, align 4
  %cmp67.not = icmp eq ptr %53, null
  br i1 %cmp67.not, label %do.end65.cleanup77_crit_edge, label %if.then69

do.end65.cleanup77_crit_edge:                     ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup77

if.then69:                                        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %out_ep, align 4
  tail call fastcc void @free_ep_req(ptr noundef %55, ptr noundef nonnull %call.i126)
  br label %cleanup77

cleanup77:                                        ; preds = %if.then69, %do.end65.cleanup77_crit_edge, %for.body.cleanup77_crit_edge, %for.cond.cleanup77_crit_edge, %while.body.cleanup77_crit_edge, %for.cond.preheader.cleanup77_crit_edge, %if.end4.cleanup77_crit_edge, %if.end.cleanup77_crit_edge, %entry.cleanup77_crit_edge
  %retval.4 = phi i32 [ 0, %entry.cleanup77_crit_edge ], [ %call2, %if.end.cleanup77_crit_edge ], [ %call5, %if.end4.cleanup77_crit_edge ], [ %call60, %do.end65.cleanup77_crit_edge ], [ %call60, %if.then69 ], [ 0, %for.cond.preheader.cleanup77_crit_edge ], [ 0, %for.cond.cleanup77_crit_edge ], [ -12, %for.body.cleanup77_crit_edge ], [ -12, %while.body.cleanup77_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f_midi_disable(ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f_midi_disable.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@f_midi_disable, %do.end)) #13
          to label %if.then [label %do.end], !srcloc !196

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f_midi_disable.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.62) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %in_ep = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 2
  %6 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %in_ep, align 4
  %call6 = tail call i32 @usb_ep_disable(ptr noundef %7) #13
  %out_ep = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 3
  %8 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %out_ep, align 4
  %call7 = tail call i32 @usb_ep_disable(ptr noundef %9) #13
  %in_req_fifo = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 16
  %out = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 16, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %in_req_fifo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %in_req_fifo, align 4
  %12 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not42 = icmp eq i32 %11, %13
  br i1 %cmp.not42, label %do.end.while.end_crit_edge, label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %data = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 16, i32 0, i32 0, i32 4
  %mask = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 16, i32 0, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %free_ep_req.exit.while.body_crit_edge, %while.body.lr.ph
  %14 = phi i32 [ %13, %while.body.lr.ph ], [ %33, %free_ep_req.exit.while.body_crit_edge ]
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mask, align 4
  %and = and i32 %18, %14
  %arrayidx = getelementptr ptr, ptr %16, i32 %and
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !198
  %21 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %out, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %out, align 4
  %23 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %in_ep, align 4
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %20, align 4
  %cmp.i = icmp eq ptr %26, null
  br i1 %cmp.i, label %do.end.i, label %while.body.free_ep_req.exit_crit_edge, !prof !199

while.body.free_ep_req.exit_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_ep_req.exit

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 80, i32 noundef 9, ptr noundef null) #13
  br label %free_ep_req.exit

free_ep_req.exit:                                 ; preds = %do.end.i, %while.body.free_ep_req.exit_crit_edge
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %20, align 4
  tail call void @kfree(ptr noundef %28) #13
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %20, align 4
  tail call void @usb_ep_free_request(ptr noundef %24, ptr noundef %20) #13
  %30 = ptrtoint ptr %in_req_fifo to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %in_req_fifo, align 4
  %32 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %out, align 4
  %cmp.not = icmp eq i32 %31, %33
  br i1 %cmp.not, label %free_ep_req.exit.while.end_crit_edge, label %free_ep_req.exit.while.body_crit_edge

free_ep_req.exit.while.body_crit_edge:            ; preds = %free_ep_req.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

free_ep_req.exit.while.end_crit_edge:             ; preds = %free_ep_req.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %free_ep_req.exit.while.end_crit_edge, %do.end.while.end_crit_edge
  %in_ports.i = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 10
  %34 = ptrtoint ptr %in_ports.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %in_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp8.not.i = icmp eq i32 %35, 0
  br i1 %cmp8.not.i, label %while.end.f_midi_drop_out_substreams.exit_crit_edge, label %for.body.lr.ph.i

while.end.f_midi_drop_out_substreams.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %f_midi_drop_out_substreams.exit

for.body.lr.ph.i:                                 ; preds = %while.end
  %in_ports_array.i = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 20
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.gmidi_in_port, ptr %in_ports_array.i, i32 %i.09.i
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 4
  %active.i = getelementptr %struct.gmidi_in_port, ptr %in_ports_array.i, i32 %i.09.i, i32 1
  %38 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  %tobool2.not.i = icmp eq ptr %37, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 @snd_rawmidi_drop_output(ptr noundef nonnull %37) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw i32 %i.09.i, 1
  %40 = ptrtoint ptr %in_ports.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %in_ports.i, align 4
  %cmp.i38 = icmp ult i32 %inc.i, %41
  br i1 %cmp.i38, label %if.end.i.for.body.i_crit_edge, label %if.end.i.f_midi_drop_out_substreams.exit_crit_edge

if.end.i.f_midi_drop_out_substreams.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %f_midi_drop_out_substreams.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

f_midi_drop_out_substreams.exit:                  ; preds = %if.end.i.f_midi_drop_out_substreams.exit_crit_edge, %while.end.f_midi_drop_out_substreams.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f_midi_free(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %0 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fi, align 4
  %lock = getelementptr inbounds %struct.f_midi_opts, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %free_ref = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 19
  %2 = ptrtoint ptr %free_ref to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %free_ref, align 4
  %dec = add i8 %3, -1
  store i8 %dec, ptr %free_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool.not = icmp eq i8 %dec, 0
  br i1 %tobool.not, label %if.then, label %if.end4.critedge

if.then:                                          ; preds = %entry
  %id = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 13
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %id, align 4
  tail call void @kfree(ptr noundef %5) #13
  %in_req_fifo = getelementptr inbounds %struct.f_midi, ptr %f, i32 0, i32 16
  tail call void @__kfifo_free(ptr noundef %in_req_fifo) #13
  tail call void @kfree(ptr noundef %f) #13
  tail call void @mutex_unlock(ptr noundef %lock) #13
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %refcnt.i = getelementptr inbounds %struct.f_midi_opts, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %refcnt.i, align 4
  %dec.i = add i32 %7, -1
  store i32 %dec.i, ptr %refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  tail call void @mutex_unlock(ptr noundef %lock) #13
  br i1 %tobool.not.i, label %if.then3.i, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3.i:                                       ; preds = %if.then
  %id_allocated.i = getelementptr inbounds %struct.f_midi_opts, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %id_allocated.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id_allocated.i, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not.i = icmp eq i8 %9, 0
  br i1 %tobool4.not.i, label %if.then3.i.if.end6.i_crit_edge, label %if.then5.i

if.then3.i.if.end6.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  %id.i = getelementptr inbounds %struct.f_midi_opts, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %id.i, align 4
  tail call void @kfree(ptr noundef %11) #13
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.then3.i.if.end6.i_crit_edge
  tail call void @kfree(ptr noundef %1) #13
  br label %if.end4

if.end4.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %lock) #13
  br label %if.end4

if.end4:                                          ; preds = %if.end4.critedge, %if.end6.i, %if.then.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f_midi_in_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -200
  tail call fastcc void @f_midi_transmit(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @f_midi_register_card(ptr noundef %midi) unnamed_addr #2 align 64 {
entry:
  %card = alloca ptr, align 4
  %rmidi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #13
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !195
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi) #13
  %1 = ptrtoint ptr %rmidi to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi, align 4, !annotation !195
  %gadget = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 1
  %2 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gadget, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 11
  %index = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 12
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %id = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 13
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %id, align 4
  %call = call i32 @snd_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 0, ptr noundef nonnull %card) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gadget, align 4
  %dev2 = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.24) #18
  br label %fail

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %card3 = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 4
  %12 = ptrtoint ptr %card3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %card3, align 4
  %call4 = call i32 @snd_device_new(ptr noundef %11, i32 noundef 0, ptr noundef %midi, ptr noundef nonnull @f_midi_register_card.ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gadget, align 4
  %dev11 = getelementptr inbounds %struct.usb_gadget, ptr %14, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.27, i32 noundef %call4) #18
  br label %fail

if.end12:                                         ; preds = %if.end
  %15 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 2
  %17 = call ptr @memcpy(ptr %driver, ptr @f_midi_longname, i32 12)
  %longname = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 4
  %18 = call ptr @memcpy(ptr %longname, ptr @f_midi_longname, i32 12)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 3
  %19 = call ptr @memcpy(ptr %shortname, ptr @f_midi_shortname, i32 7)
  %call18 = call i32 @snd_component_add(ptr noundef %16, ptr noundef nonnull @.str.29) #13
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %longname19 = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 4
  %out_ports = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 11
  %22 = ptrtoint ptr %out_ports to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %out_ports, align 4
  %in_ports = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 10
  %24 = ptrtoint ptr %in_ports to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %in_ports, align 4
  %call21 = call i32 @snd_rawmidi_new(ptr noundef %21, ptr noundef %longname19, i32 noundef 0, i32 noundef %23, i32 noundef %25, ptr noundef nonnull %rmidi) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end26, label %if.end29

do.end26:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %gadget, align 4
  %dev28 = getelementptr inbounds %struct.usb_gadget, ptr %27, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.31, i32 noundef %call21) #18
  br label %fail

if.end29:                                         ; preds = %if.end12
  %28 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmidi, align 4
  %rmidi30 = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 5
  %30 = ptrtoint ptr %rmidi30 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %rmidi30, align 4
  %in_last_port = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 18
  %31 = ptrtoint ptr %in_last_port to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %in_last_port, align 4
  %name = getelementptr inbounds %struct.snd_rawmidi, ptr %29, i32 0, i32 5
  %32 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card, align 4
  %shortname32 = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 3
  %call34 = call ptr @strcpy(ptr noundef %name, ptr noundef %shortname32) #19
  %info_flags = getelementptr inbounds %struct.snd_rawmidi, ptr %29, i32 0, i32 3
  %34 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 7, ptr %info_flags, align 8
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %29, i32 0, i32 9
  %35 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %midi, ptr %private_data, align 4
  %private_free = getelementptr inbounds %struct.snd_rawmidi, ptr %29, i32 0, i32 10
  %36 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @f_midi_rmidi_free, ptr %private_free, align 8
  %free_ref = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 19
  %37 = ptrtoint ptr %free_ref to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %free_ref, align 4
  %inc = add i8 %38, 1
  store i8 %inc, ptr %free_ref, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %29, i32 noundef 0, ptr noundef nonnull @gmidi_in_ops) #13
  %39 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmidi, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %40, i32 noundef 1, ptr noundef nonnull @gmidi_out_ops) #13
  %41 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %card, align 4
  %call35 = call i32 @snd_card_register(ptr noundef %42) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %do.end40, label %do.body44

do.end40:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gadget, align 4
  %dev42 = getelementptr inbounds %struct.usb_gadget, ptr %44, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.34) #18
  br label %fail

do.body44:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f_midi_register_card.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@f_midi_register_card, %cleanup)) #13
          to label %if.then49 [label %cleanup], !srcloc !196

if.then49:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %gadget, align 4
  %dev51 = getelementptr inbounds %struct.usb_gadget, ptr %46, i32 0, i32 11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f_midi_register_card.__UNIQUE_ID_ddebug246, ptr noundef %dev51, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.25) #13
  br label %cleanup

fail:                                             ; preds = %do.end40, %do.end26, %do.end9, %do.end
  %err.0 = phi i32 [ %call, %do.end ], [ %call4, %do.end9 ], [ %call21, %do.end26 ], [ %call35, %do.end40 ]
  %card.i = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 4
  %47 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %card.i, align 4
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %fail.cleanup_crit_edge, label %if.then.i

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = call i32 @snd_card_free(ptr noundef nonnull %48) #13
  %49 = ptrtoint ptr %card.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %card.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %fail.cleanup_crit_edge, %if.then49, %do.body44
  %retval.0 = phi i32 [ 0, %if.then49 ], [ %err.0, %fail.cleanup_crit_edge ], [ %err.0, %if.then.i ], [ 0, %do.body44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_copy_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f_midi_transmit(ptr noundef %midi) unnamed_addr #2 align 64 {
entry:
  %b.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %in_ep = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 2
  %0 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_ep, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.drop_out_crit_edge, label %lor.lhs.false

entry.drop_out_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop_out

lor.lhs.false:                                    ; preds = %entry
  %enabled = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.drop_out_crit_edge, label %do.body2

lor.lhs.false.drop_out_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop_out

do.body2:                                         ; preds = %lor.lhs.false
  %transmit_lock = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 17
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %transmit_lock) #13
  %in_req_fifo.i = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 16
  %out.i = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 16, i32 0, i32 0, i32 1
  %data.i = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 16, i32 0, i32 0, i32 4
  %mask.i = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 16, i32 0, i32 0, i32 2
  %in_last_port.i = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 18
  %in_ports.i = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 10
  %in_ports_array.i = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 20
  %buflen.i = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 14
  %gadget63.i = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 1
  br label %do.body6

do.body6:                                         ; preds = %do.cond13.do.body6_crit_edge, %do.body2
  %4 = ptrtoint ptr %in_req_fifo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %in_req_fifo.i, align 4
  %6 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not.i = icmp eq i32 %5, %7
  br i1 %cmp.not.i, label %if.then10, label %if.end13.i

if.end13.i:                                       ; preds = %do.body6
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %10 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %11, %7
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %and.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !200
  %length.i = getelementptr inbounds %struct.usb_request, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp14.not.i = icmp eq i32 %15, 0
  br i1 %cmp14.not.i, label %if.end17.i, label %if.end13.i.do.end15_crit_edge

if.end13.i.do.end15_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15

if.end17.i:                                       ; preds = %if.end13.i
  %16 = ptrtoint ptr %in_last_port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %in_last_port.i, align 4
  %18 = ptrtoint ptr %in_ports.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %in_ports.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp18178.i = icmp ult i32 %17, %19
  br i1 %cmp18178.i, label %if.end17.i.for.body.i_crit_edge, label %if.end17.i.for.end.i_crit_edge

if.end17.i.for.end.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end17.i.for.body.i_crit_edge:                  ; preds = %if.end17.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end17.i.for.body.i_crit_edge
  %i.0180.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %17, %if.end17.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.gmidi_in_port, ptr %in_ports_array.i, i32 %i.0180.i
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %active21.i = getelementptr %struct.gmidi_in_port, ptr %in_ports_array.i, i32 %i.0180.i, i32 1
  %22 = ptrtoint ptr %active21.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %active21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool22.not.i = icmp eq i32 %23, 0
  %tobool23.not.i = icmp eq ptr %21, null
  %or.cond.i = select i1 %tobool22.not.i, i1 true, i1 %tobool23.not.i
  br i1 %or.cond.i, label %for.body.i.for.inc.i_crit_edge, label %while.cond.preheader.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

while.cond.preheader.i:                           ; preds = %for.body.i
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i, align 4
  %add176.i = add i32 %25, 3
  %26 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buflen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add176.i, i32 %27)
  %cmp27177.i = icmp ult i32 %add176.i, %27
  br i1 %cmp27177.i, label %while.body.lr.ph.i, label %while.cond.preheader.i.cleanup44.i_crit_edge

while.cond.preheader.i.cleanup44.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup44.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %cable.i.i = getelementptr %struct.gmidi_in_port, ptr %in_ports_array.i, i32 %i.0180.i, i32 2
  %data41.i.i = getelementptr %struct.gmidi_in_port, ptr %in_ports_array.i, i32 %i.0180.i, i32 4
  %arrayidx42.i.i = getelementptr %struct.gmidi_in_port, ptr %in_ports_array.i, i32 %i.0180.i, i32 4, i32 1
  %state45.i.i = getelementptr %struct.gmidi_in_port, ptr %in_ports_array.i, i32 %i.0180.i, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #13
  %28 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %b.i, align 1, !annotation !195
  %call29.i = call i32 @snd_rawmidi_transmit(ptr noundef nonnull %21, ptr noundef nonnull %b.i, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call29.i)
  %cmp30.not.i = icmp eq i32 %call29.i, 1
  br i1 %cmp30.not.i, label %if.end34.i, label %cleanup44.thread.i

cleanup44.thread.i:                               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %active21.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %active21.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #13
  br label %for.inc.i

if.end34.i:                                       ; preds = %while.body.i
  %30 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %b.i, align 1
  %32 = ptrtoint ptr %cable.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cable.i.i, align 4
  %shl.i.i = shl i8 %33, 4
  %conv4.i.i = zext i8 %31 to i32
  %34 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i8 %31, label %sw.caserange154.i.i [
    i8 -8, label %if.end34.i.sw.bb.i.i_crit_edge
    i8 -7, label %if.end34.i.sw.bb.i.i_crit_edge41
    i8 -6, label %if.end34.i.sw.bb.i.i_crit_edge42
    i8 -5, label %if.end34.i.sw.bb.i.i_crit_edge43
    i8 -4, label %if.end34.i.sw.bb.i.i_crit_edge44
    i8 -3, label %if.end34.i.sw.bb.i.i_crit_edge45
    i8 -2, label %if.end34.i.sw.bb.i.i_crit_edge46
    i8 -1, label %if.end34.i.sw.bb.i.i_crit_edge47
    i8 -9, label %sw.bb9.i.i
    i8 -16, label %if.end34.i.sw.bb40.i.i_crit_edge
    i8 -15, label %if.end34.i.sw.bb40.i.i_crit_edge48
    i8 -14, label %if.end34.i.sw.bb40.i.i_crit_edge49
    i8 -13, label %if.end34.i.sw.bb40.i.i_crit_edge50
    i8 -12, label %if.end34.i.sw.bb40.i.i_crit_edge51
    i8 -11, label %if.end34.i.sw.bb40.i.i_crit_edge52
    i8 -10, label %if.end34.i.sw.bb40.i.i_crit_edge53
  ]

if.end34.i.sw.bb40.i.i_crit_edge53:               ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb40.i.i

if.end34.i.sw.bb40.i.i_crit_edge52:               ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb40.i.i

if.end34.i.sw.bb40.i.i_crit_edge51:               ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb40.i.i

if.end34.i.sw.bb40.i.i_crit_edge50:               ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb40.i.i

if.end34.i.sw.bb40.i.i_crit_edge49:               ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb40.i.i

if.end34.i.sw.bb40.i.i_crit_edge48:               ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb40.i.i

if.end34.i.sw.bb40.i.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb40.i.i

if.end34.i.sw.bb.i.i_crit_edge47:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i.i

if.end34.i.sw.bb.i.i_crit_edge46:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i.i

if.end34.i.sw.bb.i.i_crit_edge45:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i.i

if.end34.i.sw.bb.i.i_crit_edge44:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i.i

if.end34.i.sw.bb.i.i_crit_edge43:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i.i

if.end34.i.sw.bb.i.i_crit_edge42:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i.i

if.end34.i.sw.bb.i.i_crit_edge41:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i.i

if.end34.i.sw.bb.i.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %if.end34.i.sw.bb.i.i_crit_edge, %if.end34.i.sw.bb.i.i_crit_edge41, %if.end34.i.sw.bb.i.i_crit_edge42, %if.end34.i.sw.bb.i.i_crit_edge43, %if.end34.i.sw.bb.i.i_crit_edge44, %if.end34.i.sw.bb.i.i_crit_edge45, %if.end34.i.sw.bb.i.i_crit_edge46, %if.end34.i.sw.bb.i.i_crit_edge47
  %35 = or i8 %shl.i.i, 15
  %36 = ptrtoint ptr %state45.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %state45.i.i, align 1
  br label %sw.epilog156.i.i

sw.bb9.i.i:                                       ; preds = %if.end34.i
  %38 = ptrtoint ptr %state45.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %state45.i.i, align 1
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %39, label %sw.bb9.i.i.sw.epilog156.i.i_crit_edge [
    i8 4, label %sw.bb12.i.i
    i8 5, label %sw.bb18.i.i
    i8 6, label %sw.bb26.i.i
  ]

sw.bb9.i.i.sw.epilog156.i.i_crit_edge:            ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog156.i.i

sw.bb12.i.i:                                      ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %41 = or i8 %shl.i.i, 5
  br label %if.then179.i.i

sw.bb18.i.i:                                      ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %42 = or i8 %shl.i.i, 6
  %43 = ptrtoint ptr %data41.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %data41.i.i, align 2
  br label %if.then179.i.i

sw.bb26.i.i:                                      ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %45 = or i8 %shl.i.i, 7
  %46 = ptrtoint ptr %data41.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %data41.i.i, align 2
  %48 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx42.i.i, align 1
  br label %if.then179.i.i

sw.bb40.i.i:                                      ; preds = %if.end34.i.sw.bb40.i.i_crit_edge, %if.end34.i.sw.bb40.i.i_crit_edge48, %if.end34.i.sw.bb40.i.i_crit_edge49, %if.end34.i.sw.bb40.i.i_crit_edge50, %if.end34.i.sw.bb40.i.i_crit_edge51, %if.end34.i.sw.bb40.i.i_crit_edge52, %if.end34.i.sw.bb40.i.i_crit_edge53
  %50 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %arrayidx42.i.i, align 1
  %51 = ptrtoint ptr %data41.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %data41.i.i, align 2
  %52 = ptrtoint ptr %state45.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %state45.i.i, align 1
  %53 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %31, label %sw.bb40.i.i.cleanup.i_crit_edge [
    i8 -16, label %sw.bb47.i.i
    i8 -15, label %sw.bb40.i.i.sw.bb52.i.i_crit_edge
    i8 -13, label %sw.bb40.i.i.sw.bb52.i.i_crit_edge54
    i8 -14, label %sw.bb55.i.i
    i8 -10, label %sw.bb59.i.i
  ]

sw.bb40.i.i.sw.bb52.i.i_crit_edge54:              ; preds = %sw.bb40.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb52.i.i

sw.bb40.i.i.sw.bb52.i.i_crit_edge:                ; preds = %sw.bb40.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb52.i.i

sw.bb40.i.i.cleanup.i_crit_edge:                  ; preds = %sw.bb40.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

sw.bb47.i.i:                                      ; preds = %sw.bb40.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %data41.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -16, ptr %data41.i.i, align 2
  br label %cleanup.i

sw.bb52.i.i:                                      ; preds = %sw.bb40.i.i.sw.bb52.i.i_crit_edge, %sw.bb40.i.i.sw.bb52.i.i_crit_edge54
  %55 = ptrtoint ptr %data41.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %31, ptr %data41.i.i, align 2
  br label %lor.lhs.false.ithread-pre-split.i

sw.bb55.i.i:                                      ; preds = %sw.bb40.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %data41.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -14, ptr %data41.i.i, align 2
  br label %cleanup.i

sw.bb59.i.i:                                      ; preds = %sw.bb40.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %57 = or i8 %shl.i.i, 5
  br label %if.then179.i.i

sw.bb66.i.i:                                      ; preds = %sw.caserange.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %data41.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %31, ptr %data41.i.i, align 2
  %59 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %arrayidx42.i.i, align 1
  %60 = and i8 %31, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %60)
  %61 = icmp eq i8 %60, -64
  %spec.select.i.i = select i1 %61, i8 1, i8 2
  br label %cleanup.i

sw.caserange.i.i:                                 ; preds = %sw.caserange154.i.i
  %62 = add nsw i32 %conv4.i.i, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %62)
  %inbounds.i.i = icmp ult i32 %62, 112
  br i1 %inbounds.i.i, label %sw.bb66.i.i, label %sw.caserange.i.i.lor.lhs.false.ithread-pre-split.i_crit_edge

sw.caserange.i.i.lor.lhs.false.ithread-pre-split.i_crit_edge: ; preds = %sw.caserange.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.ithread-pre-split.i

sw.bb77.i.i:                                      ; preds = %sw.caserange154.i.i
  %63 = ptrtoint ptr %state45.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %state45.i.i, align 1
  %65 = zext i8 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %64, label %sw.bb77.i.i.lor.lhs.false.i.i_crit_edge [
    i8 1, label %sw.bb80.i.i
    i8 2, label %sw.bb104.i.i
    i8 3, label %sw.bb107.i.i
    i8 4, label %sw.bb135.i.i
    i8 5, label %sw.bb138.i.i
    i8 6, label %lor.lhs.false.i.thread191.i
  ]

sw.bb77.i.i.lor.lhs.false.i.i_crit_edge:          ; preds = %sw.bb77.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i.i

sw.bb80.i.i:                                      ; preds = %sw.bb77.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %data41.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %data41.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %67)
  %cmp84.i.i = icmp ult i8 %67, -16
  %68 = lshr i8 %67, 4
  %.pn262.i.i = select i1 %cmp84.i.i, i8 %68, i8 2
  %p.sroa.0.0.i.i = or i8 %.pn262.i.i, %shl.i.i
  br label %lor.lhs.false.ithread-pre-split.i

sw.bb104.i.i:                                     ; preds = %sw.bb77.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %31, ptr %arrayidx42.i.i, align 1
  br label %cleanup.i

sw.bb107.i.i:                                     ; preds = %sw.bb77.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %data41.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %data41.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %71)
  %cmp111.i.i = icmp ult i8 %71, -16
  %72 = lshr i8 %71, 4
  %.pn.i.i = select i1 %cmp111.i.i, i8 %72, i8 3
  %p.sroa.0.1.i.i = or i8 %.pn.i.i, %shl.i.i
  %73 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx42.i.i, align 1
  br label %lor.lhs.false.ithread-pre-split.i

sw.bb135.i.i:                                     ; preds = %sw.bb77.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %75 = ptrtoint ptr %data41.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %31, ptr %data41.i.i, align 2
  br label %cleanup.i

sw.bb138.i.i:                                     ; preds = %sw.bb77.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %31, ptr %arrayidx42.i.i, align 1
  br label %cleanup.i

lor.lhs.false.i.thread191.i:                      ; preds = %sw.bb77.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %77 = or i8 %shl.i.i, 4
  %78 = ptrtoint ptr %data41.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %data41.i.i, align 2
  %80 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx42.i.i, align 1
  br label %if.then179.i.i

sw.caserange154.i.i:                              ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %31)
  %inbounds155.i.i = icmp sgt i8 %31, -1
  br i1 %inbounds155.i.i, label %sw.bb77.i.i, label %sw.caserange.i.i

sw.epilog156.i.i:                                 ; preds = %sw.bb9.i.i.sw.epilog156.i.i_crit_edge, %sw.bb.i.i
  %storemerge.i = phi i8 [ 7, %sw.bb.i.i ], [ 0, %sw.bb9.i.i.sw.epilog156.i.i_crit_edge ]
  %p.sroa.25.0.i.i = phi i8 [ %31, %sw.bb.i.i ], [ 0, %sw.bb9.i.i.sw.epilog156.i.i_crit_edge ]
  %p.sroa.0.2.i.i = phi i8 [ %35, %sw.bb.i.i ], [ %shl.i.i, %sw.bb9.i.i.sw.epilog156.i.i_crit_edge ]
  %next_state.0.i.i = phi i8 [ %37, %sw.bb.i.i ], [ %39, %sw.bb9.i.i.sw.epilog156.i.i_crit_edge ]
  %82 = ptrtoint ptr %state45.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %storemerge.i, ptr %state45.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %next_state.0.i.i)
  %cmp158.i.i = icmp eq i8 %next_state.0.i.i, 8
  br i1 %cmp158.i.i, label %sw.epilog156.i.i.if.then179.i.i_crit_edge, label %sw.epilog156.i.i.lor.lhs.false.i.i_crit_edge

sw.epilog156.i.i.lor.lhs.false.i.i_crit_edge:     ; preds = %sw.epilog156.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i.i

sw.epilog156.i.i.if.then179.i.i_crit_edge:        ; preds = %sw.epilog156.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then179.i.i

lor.lhs.false.ithread-pre-split.i:                ; preds = %sw.bb107.i.i, %sw.bb80.i.i, %sw.caserange.i.i.lor.lhs.false.ithread-pre-split.i_crit_edge, %sw.bb52.i.i
  %p.sroa.42.0277.i.ph.i = phi i8 [ %31, %sw.bb107.i.i ], [ 0, %sw.bb80.i.i ], [ 0, %sw.caserange.i.i.lor.lhs.false.ithread-pre-split.i_crit_edge ], [ 0, %sw.bb52.i.i ]
  %p.sroa.35.0275.i.ph.i = phi i8 [ %74, %sw.bb107.i.i ], [ %31, %sw.bb80.i.i ], [ 0, %sw.caserange.i.i.lor.lhs.false.ithread-pre-split.i_crit_edge ], [ 0, %sw.bb52.i.i ]
  %next_state.0273.i.ph.i = phi i8 [ 2, %sw.bb107.i.i ], [ 1, %sw.bb80.i.i ], [ 0, %sw.caserange.i.i.lor.lhs.false.ithread-pre-split.i_crit_edge ], [ 1, %sw.bb52.i.i ]
  %p.sroa.0.2271.i.ph.i = phi i8 [ %p.sroa.0.1.i.i, %sw.bb107.i.i ], [ %p.sroa.0.0.i.i, %sw.bb80.i.i ], [ %shl.i.i, %sw.caserange.i.i.lor.lhs.false.ithread-pre-split.i_crit_edge ], [ %shl.i.i, %sw.bb52.i.i ]
  %p.sroa.25.0269.i.ph.i = phi i8 [ %71, %sw.bb107.i.i ], [ %67, %sw.bb80.i.i ], [ 0, %sw.caserange.i.i.lor.lhs.false.ithread-pre-split.i_crit_edge ], [ 0, %sw.bb52.i.i ]
  %83 = ptrtoint ptr %state45.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %.pr.i = load i8, ptr %state45.i.i, align 1
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %lor.lhs.false.ithread-pre-split.i, %sw.epilog156.i.i.lor.lhs.false.i.i_crit_edge, %sw.bb77.i.i.lor.lhs.false.i.i_crit_edge
  %84 = phi i8 [ %.pr.i, %lor.lhs.false.ithread-pre-split.i ], [ %storemerge.i, %sw.epilog156.i.i.lor.lhs.false.i.i_crit_edge ], [ %64, %sw.bb77.i.i.lor.lhs.false.i.i_crit_edge ]
  %p.sroa.42.0277.i.i = phi i8 [ %p.sroa.42.0277.i.ph.i, %lor.lhs.false.ithread-pre-split.i ], [ 0, %sw.epilog156.i.i.lor.lhs.false.i.i_crit_edge ], [ 0, %sw.bb77.i.i.lor.lhs.false.i.i_crit_edge ]
  %p.sroa.35.0275.i.i = phi i8 [ %p.sroa.35.0275.i.ph.i, %lor.lhs.false.ithread-pre-split.i ], [ 0, %sw.epilog156.i.i.lor.lhs.false.i.i_crit_edge ], [ 0, %sw.bb77.i.i.lor.lhs.false.i.i_crit_edge ]
  %next_state.0273.i.i = phi i8 [ %next_state.0273.i.ph.i, %lor.lhs.false.ithread-pre-split.i ], [ %next_state.0.i.i, %sw.epilog156.i.i.lor.lhs.false.i.i_crit_edge ], [ 0, %sw.bb77.i.i.lor.lhs.false.i.i_crit_edge ]
  %p.sroa.0.2271.i.i = phi i8 [ %p.sroa.0.2271.i.ph.i, %lor.lhs.false.ithread-pre-split.i ], [ %p.sroa.0.2.i.i, %sw.epilog156.i.i.lor.lhs.false.i.i_crit_edge ], [ %shl.i.i, %sw.bb77.i.i.lor.lhs.false.i.i_crit_edge ]
  %p.sroa.25.0269.i.i = phi i8 [ %p.sroa.25.0269.i.ph.i, %lor.lhs.false.ithread-pre-split.i ], [ %p.sroa.25.0.i.i, %sw.epilog156.i.i.lor.lhs.false.i.i_crit_edge ], [ 0, %sw.bb77.i.i.lor.lhs.false.i.i_crit_edge ]
  %85 = zext i8 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %84, label %lor.lhs.false.i.i.cleanup.i_crit_edge [
    i8 6, label %lor.lhs.false.i.i.if.then179.i.i_crit_edge
    i8 1, label %lor.lhs.false.i.i.if.then179.i.i_crit_edge55
    i8 3, label %lor.lhs.false.i.i.if.then179.i.i_crit_edge56
    i8 7, label %lor.lhs.false.i.i.if.then179.i.i_crit_edge57
  ]

lor.lhs.false.i.i.if.then179.i.i_crit_edge57:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then179.i.i

lor.lhs.false.i.i.if.then179.i.i_crit_edge56:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then179.i.i

lor.lhs.false.i.i.if.then179.i.i_crit_edge55:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then179.i.i

lor.lhs.false.i.i.if.then179.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then179.i.i

lor.lhs.false.i.i.cleanup.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.then179.i.i:                                   ; preds = %lor.lhs.false.i.i.if.then179.i.i_crit_edge, %lor.lhs.false.i.i.if.then179.i.i_crit_edge55, %lor.lhs.false.i.i.if.then179.i.i_crit_edge56, %lor.lhs.false.i.i.if.then179.i.i_crit_edge57, %sw.epilog156.i.i.if.then179.i.i_crit_edge, %lor.lhs.false.i.thread191.i, %sw.bb59.i.i, %sw.bb26.i.i, %sw.bb18.i.i, %sw.bb12.i.i
  %cmp158280.i.i = phi i1 [ false, %lor.lhs.false.i.i.if.then179.i.i_crit_edge ], [ false, %lor.lhs.false.i.i.if.then179.i.i_crit_edge55 ], [ false, %lor.lhs.false.i.i.if.then179.i.i_crit_edge56 ], [ false, %lor.lhs.false.i.i.if.then179.i.i_crit_edge57 ], [ true, %sw.epilog156.i.i.if.then179.i.i_crit_edge ], [ true, %sw.bb59.i.i ], [ true, %sw.bb26.i.i ], [ true, %sw.bb18.i.i ], [ true, %sw.bb12.i.i ], [ false, %lor.lhs.false.i.thread191.i ]
  %p.sroa.42.0278.i.i = phi i8 [ %p.sroa.42.0277.i.i, %lor.lhs.false.i.i.if.then179.i.i_crit_edge ], [ %p.sroa.42.0277.i.i, %lor.lhs.false.i.i.if.then179.i.i_crit_edge55 ], [ %p.sroa.42.0277.i.i, %lor.lhs.false.i.i.if.then179.i.i_crit_edge56 ], [ %p.sroa.42.0277.i.i, %lor.lhs.false.i.i.if.then179.i.i_crit_edge57 ], [ 0, %sw.epilog156.i.i.if.then179.i.i_crit_edge ], [ 0, %sw.bb59.i.i ], [ -9, %sw.bb26.i.i ], [ 0, %sw.bb18.i.i ], [ 0, %sw.bb12.i.i ], [ %31, %lor.lhs.false.i.thread191.i ]
  %p.sroa.35.0276.i.i = phi i8 [ %p.sroa.35.0275.i.i, %lor.lhs.false.i.i.if.then179.i.i_crit_edge ], [ %p.sroa.35.0275.i.i, %lor.lhs.false.i.i.if.then179.i.i_crit_edge55 ], [ %p.sroa.35.0275.i.i, %lor.lhs.false.i.i.if.then179.i.i_crit_edge56 ], [ %p.sroa.35.0275.i.i, %lor.lhs.false.i.i.if.then179.i.i_crit_edge57 ], [ 0, %sw.epilog156.i.i.if.then179.i.i_crit_edge ], [ 0, %sw.bb59.i.i ], [ %49, %sw.bb26.i.i ], [ -9, %sw.bb18.i.i ], [ 0, %sw.bb12.i.i ], [ %81, %lor.lhs.false.i.thread191.i ]
  %next_state.0274.i.i = phi i8 [ %next_state.0273.i.i, %lor.lhs.false.i.i.if.then179.i.i_crit_edge ], [ %next_state.0273.i.i, %lor.lhs.false.i.i.if.then179.i.i_crit_edge55 ], [ %next_state.0273.i.i, %lor.lhs.false.i.i.if.then179.i.i_crit_edge56 ], [ %next_state.0273.i.i, %lor.lhs.false.i.i.if.then179.i.i_crit_edge57 ], [ 8, %sw.epilog156.i.i.if.then179.i.i_crit_edge ], [ 8, %sw.bb59.i.i ], [ 8, %sw.bb26.i.i ], [ 8, %sw.bb18.i.i ], [ 8, %sw.bb12.i.i ], [ 4, %lor.lhs.false.i.thread191.i ]
  %p.sroa.0.2272.i.i = phi i8 [ %p.sroa.0.2271.i.i, %lor.lhs.false.i.i.if.then179.i.i_crit_edge ], [ %p.sroa.0.2271.i.i, %lor.lhs.false.i.i.if.then179.i.i_crit_edge55 ], [ %p.sroa.0.2271.i.i, %lor.lhs.false.i.i.if.then179.i.i_crit_edge56 ], [ %p.sroa.0.2271.i.i, %lor.lhs.false.i.i.if.then179.i.i_crit_edge57 ], [ %p.sroa.0.2.i.i, %sw.epilog156.i.i.if.then179.i.i_crit_edge ], [ %57, %sw.bb59.i.i ], [ %45, %sw.bb26.i.i ], [ %42, %sw.bb18.i.i ], [ %41, %sw.bb12.i.i ], [ %77, %lor.lhs.false.i.thread191.i ]
  %p.sroa.25.0270.i.i = phi i8 [ %p.sroa.25.0269.i.i, %lor.lhs.false.i.i.if.then179.i.i_crit_edge ], [ %p.sroa.25.0269.i.i, %lor.lhs.false.i.i.if.then179.i.i_crit_edge55 ], [ %p.sroa.25.0269.i.i, %lor.lhs.false.i.i.if.then179.i.i_crit_edge56 ], [ %p.sroa.25.0269.i.i, %lor.lhs.false.i.i.if.then179.i.i_crit_edge57 ], [ %p.sroa.25.0.i.i, %sw.epilog156.i.i.if.then179.i.i_crit_edge ], [ -10, %sw.bb59.i.i ], [ %47, %sw.bb26.i.i ], [ %44, %sw.bb18.i.i ], [ -9, %sw.bb12.i.i ], [ %79, %lor.lhs.false.i.thread191.i ]
  %86 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %length.i, align 4
  %88 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %13, align 4
  %add.ptr.i.i = getelementptr i8, ptr %89, i32 %87
  %90 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %p.sroa.0.2272.i.i, ptr %add.ptr.i.i, align 1
  %p.sroa.25.0.buf.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i32 1
  %91 = ptrtoint ptr %p.sroa.25.0.buf.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %p.sroa.25.0270.i.i, ptr %p.sroa.25.0.buf.0..sroa_idx.i.i, align 1
  %p.sroa.35.0.buf.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i32 2
  %92 = ptrtoint ptr %p.sroa.35.0.buf.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %p.sroa.35.0276.i.i, ptr %p.sroa.35.0.buf.0..sroa_idx.i.i, align 1
  %p.sroa.42.0.buf.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i32 3
  %93 = ptrtoint ptr %p.sroa.42.0.buf.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %p.sroa.42.0278.i.i, ptr %p.sroa.42.0.buf.0..sroa_idx.i.i, align 1
  %add.i.i = add i32 %87, 4
  store i32 %add.i.i, ptr %length.i, align 4
  br i1 %cmp158280.i.i, label %if.then186.i.i, label %if.then179.i.i.cleanup.i_crit_edge

if.then179.i.i.cleanup.i_crit_edge:               ; preds = %if.then179.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.then186.i.i:                                   ; preds = %if.then179.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %94 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %arrayidx42.i.i, align 1
  %95 = ptrtoint ptr %data41.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %data41.i.i, align 2
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then186.i.i, %if.then179.i.i.cleanup.i_crit_edge, %lor.lhs.false.i.i.cleanup.i_crit_edge, %sw.bb138.i.i, %sw.bb135.i.i, %sw.bb104.i.i, %sw.bb66.i.i, %sw.bb55.i.i, %sw.bb47.i.i, %sw.bb40.i.i.cleanup.i_crit_edge
  %next_state.2.i.i = phi i8 [ %next_state.0273.i.i, %lor.lhs.false.i.i.cleanup.i_crit_edge ], [ 0, %if.then186.i.i ], [ %next_state.0274.i.i, %if.then179.i.i.cleanup.i_crit_edge ], [ 6, %sw.bb138.i.i ], [ 5, %sw.bb135.i.i ], [ 3, %sw.bb104.i.i ], [ 2, %sw.bb55.i.i ], [ 5, %sw.bb47.i.i ], [ 0, %sw.bb40.i.i.cleanup.i_crit_edge ], [ %spec.select.i.i, %sw.bb66.i.i ]
  %96 = ptrtoint ptr %state45.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %next_state.2.i.i, ptr %state45.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #13
  %97 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %length.i, align 4
  %add.i = add i32 %98, 3
  %99 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %buflen.i, align 4
  %cmp27.i = icmp ult i32 %add.i, %100
  br i1 %cmp27.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.cleanup44.i_crit_edge

cleanup.i.cleanup44.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup44.i

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

cleanup44.i:                                      ; preds = %cleanup.i.cleanup44.i_crit_edge, %while.cond.preheader.i.cleanup44.i_crit_edge
  %101 = ptrtoint ptr %active21.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %.pr197.i = load i32, ptr %active21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr197.i)
  %tobool36.not.i = icmp eq i32 %.pr197.i, 0
  br i1 %tobool36.not.i, label %cleanup44.i.for.inc.i_crit_edge, label %cleanup44.i.for.end.i_crit_edge

cleanup44.i.for.end.i_crit_edge:                  ; preds = %cleanup44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

cleanup44.i.for.inc.i_crit_edge:                  ; preds = %cleanup44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %cleanup44.i.for.inc.i_crit_edge, %cleanup44.thread.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0180.i, 1
  %102 = ptrtoint ptr %in_ports.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %in_ports.i, align 4
  %cmp18.i = icmp ult i32 %inc.i, %103
  br i1 %cmp18.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %cleanup44.i.for.end.i_crit_edge, %if.end17.i.for.end.i_crit_edge
  %tobool14.not = phi i1 [ true, %if.end17.i.for.end.i_crit_edge ], [ false, %cleanup44.i.for.end.i_crit_edge ], [ true, %for.inc.i.for.end.i_crit_edge ]
  %104 = phi i32 [ 0, %if.end17.i.for.end.i_crit_edge ], [ %i.0180.i, %cleanup44.i.for.end.i_crit_edge ], [ 0, %for.inc.i.for.end.i_crit_edge ]
  %105 = ptrtoint ptr %in_last_port.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %in_last_port.i, align 4
  %106 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp52.i = icmp eq i32 %107, 0
  br i1 %cmp52.i, label %for.end.i.do.cond13_crit_edge, label %if.end55.i

for.end.i.do.cond13_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond13

if.end55.i:                                       ; preds = %for.end.i
  %call56.i = call i32 @usb_ep_queue(ptr noundef nonnull %1, ptr noundef %13, i32 noundef 2592) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %cmp57.i = icmp slt i32 %call56.i, 0
  br i1 %cmp57.i, label %do.end62.i, label %if.else.i

do.end62.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #15
  %108 = ptrtoint ptr %gadget63.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %gadget63.i, align 4
  %dev64.i = getelementptr inbounds %struct.usb_gadget, ptr %109, i32 0, i32 11
  %110 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %in_ep, align 4
  %name.i = getelementptr inbounds %struct.usb_ep, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %name.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev64.i, ptr noundef nonnull @.str.22, ptr noundef %113, i32 noundef %call56.i) #18
  %114 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %length.i, align 4
  br label %do.cond13

if.else.i:                                        ; preds = %if.end55.i
  %115 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %out.i, align 4
  %inc71.i = add i32 %116, 1
  store i32 %inc71.i, ptr %out.i, align 4
  %117 = ptrtoint ptr %in_req_fifo.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %in_req_fifo.i, align 4
  %sub.i = sub i32 %118, %inc71.i
  %119 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %mask.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %120)
  %cmp88.not.i = icmp ugt i32 %sub.i, %120
  br i1 %cmp88.not.i, label %if.else.i.do.cond13_crit_edge, label %if.then94.i

if.else.i.do.cond13_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond13

if.then94.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %121 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data.i, align 4
  %and98.i = and i32 %120, %118
  %arrayidx99.i = getelementptr ptr, ptr %122, i32 %and98.i
  %123 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %13, ptr %arrayidx99.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !201
  %124 = ptrtoint ptr %in_req_fifo.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %in_req_fifo.i, align 4
  %inc107.i = add i32 %125, 1
  store i32 %inc107.i, ptr %in_req_fifo.i, align 4
  br label %do.cond13

if.then10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #15
  %126 = ptrtoint ptr %gadget63.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %gadget63.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_gadget, ptr %127, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #18
  call void @_raw_spin_unlock_irqrestore(ptr noundef %transmit_lock, i32 noundef %call3) #13
  br label %drop_out

do.cond13:                                        ; preds = %if.then94.i, %if.else.i.do.cond13_crit_edge, %do.end62.i, %for.end.i.do.cond13_crit_edge
  br i1 %tobool14.not, label %do.cond13.do.end15_crit_edge, label %do.cond13.do.body6_crit_edge

do.cond13.do.body6_crit_edge:                     ; preds = %do.cond13
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body6

do.cond13.do.end15_crit_edge:                     ; preds = %do.cond13
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15

do.end15:                                         ; preds = %do.cond13.do.end15_crit_edge, %if.end13.i.do.end15_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %transmit_lock, i32 noundef %call3) #13
  br label %cleanup

drop_out:                                         ; preds = %if.then10, %lor.lhs.false.drop_out_crit_edge, %entry.drop_out_crit_edge
  %in_ports.i28 = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 10
  %128 = ptrtoint ptr %in_ports.i28 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %in_ports.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp8.not.i = icmp eq i32 %129, 0
  br i1 %cmp8.not.i, label %drop_out.cleanup_crit_edge, label %for.body.lr.ph.i30

drop_out.cleanup_crit_edge:                       ; preds = %drop_out
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph.i30:                               ; preds = %drop_out
  %in_ports_array.i29 = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 20
  br label %for.body.i33

for.body.i33:                                     ; preds = %if.end.i.for.body.i33_crit_edge, %for.body.lr.ph.i30
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i30 ], [ %inc.i34, %if.end.i.for.body.i33_crit_edge ]
  %add.ptr.i31 = getelementptr %struct.gmidi_in_port, ptr %in_ports_array.i29, i32 %i.09.i
  %130 = ptrtoint ptr %add.ptr.i31 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %add.ptr.i31, align 4
  %active.i = getelementptr %struct.gmidi_in_port, ptr %in_ports_array.i29, i32 %i.09.i, i32 1
  %132 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i = icmp eq i32 %133, 0
  %tobool2.not.i = icmp eq ptr %131, null
  %or.cond.i32 = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i32, label %for.body.i33.if.end.i_crit_edge, label %if.then.i

for.body.i33.if.end.i_crit_edge:                  ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = call i32 @snd_rawmidi_drop_output(ptr noundef nonnull %131) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i33.if.end.i_crit_edge
  %inc.i34 = add nuw i32 %i.09.i, 1
  %134 = ptrtoint ptr %in_ports.i28 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %in_ports.i28, align 4
  %cmp.i = icmp ult i32 %inc.i34, %135
  br i1 %cmp.i, label %if.end.i.for.body.i33_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.for.body.i33_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i33

cleanup:                                          ; preds = %if.end.i.cleanup_crit_edge, %drop_out.cleanup_crit_edge, %do.end15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_drop_output(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @f_midi_snd_free(ptr nocapture noundef readnone %device) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f_midi_rmidi_free(ptr nocapture noundef readonly %rmidi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %rmidi, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @f_midi_free(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_midi_in_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %in_ports = getelementptr inbounds %struct.f_midi, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %in_ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp ult i32 %5, %7
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f_midi_in_open.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@f_midi_in_open, %do.end)) #13
          to label %if.then4 [label %do.end], !srcloc !196

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %gadget = getelementptr inbounds %struct.f_midi, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gadget, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f_midi_in_open.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38) #13
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %in_ports_array = getelementptr inbounds %struct.f_midi, ptr %3, i32 0, i32 20
  %10 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %number, align 4
  %add.ptr = getelementptr %struct.gmidi_in_port, ptr %in_ports_array, i32 %11
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %substream, ptr %add.ptr, align 4
  %state = getelementptr %struct.gmidi_in_port, ptr %in_ports_array, i32 %11, i32 3
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %state, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_midi_in_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f_midi_in_close.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@f_midi_in_close, %do.end)) #13
          to label %if.then [label %do.end], !srcloc !196

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %gadget = getelementptr inbounds %struct.f_midi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gadget, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f_midi_in_close.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f_midi_in_trigger(ptr nocapture noundef readonly %substream, i32 noundef %up) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %in_ports = getelementptr inbounds %struct.f_midi, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %in_ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp ult i32 %5, %7
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f_midi_in_trigger.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@f_midi_in_trigger, %do.end)) #13
          to label %if.then4 [label %do.end], !srcloc !196

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %gadget = getelementptr inbounds %struct.f_midi, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gadget, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f_midi_in_trigger.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, i32 noundef %up) #13
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %10 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %number, align 4
  %active = getelementptr %struct.f_midi, ptr %3, i32 0, i32 20, i32 %11, i32 1
  %12 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %up, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool7.not = icmp eq i32 %up, 0
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %if.then8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %13 = load ptr, ptr @system_highpri_wq, align 4
  %work = getelementptr inbounds %struct.f_midi, ptr %3, i32 0, i32 9
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %work) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_midi_out_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %5)
  %cmp = icmp sgt i32 %5, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f_midi_out_open.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@f_midi_out_open, %do.end)) #13
          to label %if.then4 [label %do.end], !srcloc !196

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %gadget = getelementptr inbounds %struct.f_midi, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gadget, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f_midi_out_open.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.43) #13
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number, align 4
  %arrayidx = getelementptr %struct.f_midi, ptr %3, i32 0, i32 7, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %substream, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_midi_out_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f_midi_out_close.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@f_midi_out_close, %do.end)) #13
          to label %if.then [label %do.end], !srcloc !196

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %gadget = getelementptr inbounds %struct.f_midi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gadget, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f_midi_out_close.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.44) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f_midi_out_trigger(ptr nocapture noundef readonly %substream, i32 noundef %up) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f_midi_out_trigger.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@f_midi_out_trigger, %do.end)) #13
          to label %if.then [label %do.end], !srcloc !196

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %gadget = getelementptr inbounds %struct.f_midi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gadget, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f_midi_out_trigger.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.45) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool4.not = icmp eq i32 %up, 0
  %number6 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %6 = ptrtoint ptr %number6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number6, align 4
  %out_triggered7 = getelementptr inbounds %struct.f_midi, ptr %3, i32 0, i32 8
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef %7, ptr noundef %out_triggered7) #13
  br label %if.end8

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef %7, ptr noundef %out_triggered7) #13
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free_when_closed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @f_midi_start_ep(ptr noundef %midi, ptr noundef %f, ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  %call = tail call i32 @usb_ep_disable(ptr noundef %ep) #13
  %gadget = getelementptr inbounds %struct.f_midi, ptr %midi, i32 0, i32 1
  %4 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gadget, align 4
  %call2 = tail call i32 @config_ep_by_speed(ptr noundef %5, ptr noundef %f, ptr noundef %ep) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 11
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51, ptr noundef %9, i32 noundef %call2) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @usb_ep_enable(ptr noundef %ep) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end13, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %dev11 = getelementptr inbounds %struct.usb_gadget, ptr %11, i32 0, i32 11
  %name12 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %12 = ptrtoint ptr %name12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.54, ptr noundef %13, i32 noundef %call4) #18
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %midi, ptr %ep, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end9, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call4, %do.end9 ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f_midi_complete(ptr noundef %ep, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %config = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev1, align 4
  %status2 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %6 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status2, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %7, label %do.body18 [
    i32 0, label %sw.bb
    i32 -103, label %entry.do.body_crit_edge
    i32 -104, label %entry.do.body_crit_edge117
    i32 -108, label %entry.do.body_crit_edge118
    i32 -121, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.do.body_crit_edge118:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

entry.do.body_crit_edge117:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

sw.bb:                                            ; preds = %entry
  %out_ep = getelementptr inbounds %struct.f_midi, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %out_ep, align 4
  %cmp = icmp eq ptr %10, %ep
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %11 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req, align 4
  %actual.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %13 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp22.i = icmp ugt i32 %14, 3
  br i1 %cmp22.i, label %if.then.for.body.i_crit_edge, label %if.then.sw.epilog_crit_edge

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.023.i = phi i32 [ %add12.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %12, i32 %i.023.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp2.not.i = icmp eq i8 %16, 0
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %conv.i = zext i8 %16 to i32
  %17 = lshr i32 %conv.i, 4
  %and.i = and i32 %conv.i, 15
  %arrayidx8.i = getelementptr [16 x i8], ptr @f_midi_cin_length, i32 0, i32 %and.i
  %18 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %19 to i32
  %add10.i = or i32 %i.023.i, 1
  %arrayidx11.i = getelementptr i8, ptr %12, i32 %add10.i
  %20 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ep, align 4
  %arrayidx.i.i = getelementptr %struct.f_midi, ptr %21, i32 0, i32 7, i32 %17
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.then.i.for.inc.i_crit_edge, label %if.end.i.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.then.i
  %out_triggered.i.i = getelementptr inbounds %struct.f_midi, ptr %21, i32 0, i32 8
  %24 = ptrtoint ptr %out_triggered.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %out_triggered.i.i, align 4
  %26 = shl nuw nsw i32 1, %17
  %27 = and i32 %25, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool1.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.for.inc.i_crit_edge, label %if.end3.i.i

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call4.i.i = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %23, ptr noundef %arrayidx11.i, i32 noundef %conv9.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end3.i.i, %if.end.i.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %add12.i = add i32 %i.023.i, 4
  %add.i = or i32 %add12.i, 3
  %28 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %actual.i, align 4
  %cmp.i = icmp ult i32 %add.i, %29
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sw.epilog_crit_edge

for.inc.i.sw.epilog_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.else:                                          ; preds = %sw.bb
  %in_ep = getelementptr inbounds %struct.f_midi, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %in_ep, align 4
  %cmp3 = icmp eq ptr %31, %ep
  br i1 %cmp3, label %if.then4, label %if.else.sw.epilog_crit_edge

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %32 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %length, align 4
  tail call fastcc void @f_midi_transmit(ptr noundef %1)
  br label %cleanup

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge117, %entry.do.body_crit_edge118
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f_midi_complete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@f_midi_complete, %do.end)) #13
          to label %if.then10 [label %do.end], !srcloc !196

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %34, i32 0, i32 11
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %35 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %37 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %actual, align 4
  %length11 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %39 = ptrtoint ptr %length11 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f_midi_complete.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.57, ptr noundef %36, i32 noundef %7, i32 noundef %38, i32 noundef %40) #13
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %out_ep13 = getelementptr inbounds %struct.f_midi, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %out_ep13 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %out_ep13, align 4
  %cmp14 = icmp eq ptr %42, %ep
  br i1 %cmp14, label %if.then15, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then15:                                        ; preds = %do.end
  %43 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %req, align 4
  %actual.i89 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %45 = ptrtoint ptr %actual.i89 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %actual.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %cmp22.i90 = icmp ugt i32 %46, 3
  br i1 %cmp22.i90, label %if.then15.for.body.i94_crit_edge, label %if.then15.f_midi_handle_out_data.exit113_crit_edge

if.then15.f_midi_handle_out_data.exit113_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %f_midi_handle_out_data.exit113

if.then15.for.body.i94_crit_edge:                 ; preds = %if.then15
  br label %for.body.i94

for.body.i94:                                     ; preds = %for.inc.i112.for.body.i94_crit_edge, %if.then15.for.body.i94_crit_edge
  %i.023.i91 = phi i32 [ %add12.i109, %for.inc.i112.for.body.i94_crit_edge ], [ 0, %if.then15.for.body.i94_crit_edge ]
  %arrayidx.i92 = getelementptr i8, ptr %44, i32 %i.023.i91
  %47 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i92, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp2.not.i93 = icmp eq i8 %48, 0
  br i1 %cmp2.not.i93, label %for.body.i94.for.inc.i112_crit_edge, label %if.then.i103

for.body.i94.for.inc.i112_crit_edge:              ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i112

if.then.i103:                                     ; preds = %for.body.i94
  %conv.i95 = zext i8 %48 to i32
  %49 = lshr i32 %conv.i95, 4
  %and.i96 = and i32 %conv.i95, 15
  %arrayidx8.i97 = getelementptr [16 x i8], ptr @f_midi_cin_length, i32 0, i32 %and.i96
  %50 = ptrtoint ptr %arrayidx8.i97 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx8.i97, align 1
  %conv9.i98 = zext i8 %51 to i32
  %add10.i99 = or i32 %i.023.i91, 1
  %arrayidx11.i100 = getelementptr i8, ptr %44, i32 %add10.i99
  %52 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ep, align 4
  %arrayidx.i.i101 = getelementptr %struct.f_midi, ptr %53, i32 0, i32 7, i32 %49
  %54 = ptrtoint ptr %arrayidx.i.i101 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i101, align 4
  %tobool.not.i.i102 = icmp eq ptr %55, null
  br i1 %tobool.not.i.i102, label %if.then.i103.for.inc.i112_crit_edge, label %if.end.i.i106

if.then.i103.for.inc.i112_crit_edge:              ; preds = %if.then.i103
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i112

if.end.i.i106:                                    ; preds = %if.then.i103
  %out_triggered.i.i104 = getelementptr inbounds %struct.f_midi, ptr %53, i32 0, i32 8
  %56 = ptrtoint ptr %out_triggered.i.i104 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %out_triggered.i.i104, align 4
  %58 = shl nuw nsw i32 1, %49
  %59 = and i32 %57, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool1.not.i.i105 = icmp eq i32 %59, 0
  br i1 %tobool1.not.i.i105, label %if.end.i.i106.for.inc.i112_crit_edge, label %if.end3.i.i108

if.end.i.i106.for.inc.i112_crit_edge:             ; preds = %if.end.i.i106
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i112

if.end3.i.i108:                                   ; preds = %if.end.i.i106
  call void @__sanitizer_cov_trace_pc() #15
  %call4.i.i107 = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %55, ptr noundef %arrayidx11.i100, i32 noundef %conv9.i98) #13
  br label %for.inc.i112

for.inc.i112:                                     ; preds = %if.end3.i.i108, %if.end.i.i106.for.inc.i112_crit_edge, %if.then.i103.for.inc.i112_crit_edge, %for.body.i94.for.inc.i112_crit_edge
  %add12.i109 = add i32 %i.023.i91, 4
  %add.i110 = or i32 %add12.i109, 3
  %60 = ptrtoint ptr %actual.i89 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %actual.i89, align 4
  %cmp.i111 = icmp ult i32 %add.i110, %61
  br i1 %cmp.i111, label %for.inc.i112.for.body.i94_crit_edge, label %f_midi_handle_out_data.exit113thread-pre-split

for.inc.i112.for.body.i94_crit_edge:              ; preds = %for.inc.i112
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i94

f_midi_handle_out_data.exit113thread-pre-split:   ; preds = %for.inc.i112
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr = load ptr, ptr %req, align 4
  br label %f_midi_handle_out_data.exit113

f_midi_handle_out_data.exit113:                   ; preds = %f_midi_handle_out_data.exit113thread-pre-split, %if.then15.f_midi_handle_out_data.exit113_crit_edge
  %63 = phi ptr [ %.pr, %f_midi_handle_out_data.exit113thread-pre-split ], [ %44, %if.then15.f_midi_handle_out_data.exit113_crit_edge ]
  %cmp.i114 = icmp eq ptr %63, null
  br i1 %cmp.i114, label %do.end.i, label %f_midi_handle_out_data.exit113.free_ep_req.exit_crit_edge, !prof !199

f_midi_handle_out_data.exit113.free_ep_req.exit_crit_edge: ; preds = %f_midi_handle_out_data.exit113
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_ep_req.exit

do.end.i:                                         ; preds = %f_midi_handle_out_data.exit113
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 80, i32 noundef 9, ptr noundef null) #13
  br label %free_ep_req.exit

free_ep_req.exit:                                 ; preds = %do.end.i, %f_midi_handle_out_data.exit113.free_ep_req.exit_crit_edge
  %64 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %req, align 4
  tail call void @kfree(ptr noundef %65) #13
  %66 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %req, align 4
  tail call void @usb_ep_free_request(ptr noundef %ep, ptr noundef %req) #13
  br label %cleanup

do.body18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f_midi_complete.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@f_midi_complete, %sw.epilog)) #13
          to label %if.then32 [label %sw.epilog], !srcloc !196

if.then32:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #15
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %5, align 4
  %dev34 = getelementptr inbounds %struct.usb_gadget, ptr %68, i32 0, i32 11
  %name35 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %69 = ptrtoint ptr %name35 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %name35, align 4
  %actual36 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %71 = ptrtoint ptr %actual36 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %actual36, align 4
  %length37 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %73 = ptrtoint ptr %length37 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %length37, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f_midi_complete.__UNIQUE_ID_ddebug238, ptr noundef %dev34, ptr noundef nonnull @.str.58, ptr noundef %70, i32 noundef %7, i32 noundef %72, i32 noundef %74) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then32, %do.body18, %if.else.sw.epilog_crit_edge, %for.inc.i.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %call41 = tail call i32 @usb_ep_queue(ptr noundef %ep, ptr noundef %req, i32 noundef 2592) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %sw.epilog.cleanup_crit_edge, label %do.end46

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end46:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %75 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %5, align 4
  %dev48 = getelementptr inbounds %struct.usb_gadget, ptr %76, i32 0, i32 11
  %name49 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %77 = ptrtoint ptr %name49 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name49, align 4
  %length50 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %79 = ptrtoint ptr %length50 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %length50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull @.str.59, ptr noundef %78, i32 noundef %80, i32 noundef %call41) #18
  %call51 = tail call i32 @usb_ep_set_halt(ptr noundef %ep) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %sw.epilog.cleanup_crit_edge, %free_ep_req.exit, %do.end.cleanup_crit_edge, %if.then4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_ep_req(ptr noundef %ep, ptr noundef %req) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !199

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 80, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  tail call void @kfree(ptr noundef %3) #13
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %req, align 4
  tail call void @usb_ep_free_request(ptr noundef %ep, ptr noundef %req) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_ep_req(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !14, !16, !18, !20, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !49, !50, !52, !53, !54, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !74, !76, !77, !78, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !96, !98, !100, !101, !102, !104, !105, !107, !108, !109, !111, !113, !114, !116, !117, !119, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !175, !176, !177, !179, !181, !183, !184}
!llvm.module.flags = !{!185, !186, !187, !188, !189, !190, !191, !192}
!llvm.ident = !{!193}

!0 = !{ptr @__UNIQUE_ID_author234, !1, !"__UNIQUE_ID_author234", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 40, i32 1}
!2 = !{ptr @__UNIQUE_ID_file235, !3, !"__UNIQUE_ID_file235", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 41, i32 1}
!4 = !{ptr @__UNIQUE_ID_license236, !3, !"__UNIQUE_ID_license236", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_alias248, !6, !"__UNIQUE_ID_alias248", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 1408, i32 1}
!7 = !{ptr @__initcall__kmod_usb_f_midi__249_1408_midimod_init6, !6, !"__initcall__kmod_usb_f_midi__249_1408_midimod_init6", i1 false, i1 false}
!8 = !{ptr @__exitcall_midimod_exit, !6, !"__exitcall_midimod_exit", i1 false, i1 false}
!9 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @midiusb_func, !6, !"midiusb_func", i1 false, i1 false}
!11 = !{ptr @f_midi_alloc_inst.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 1279, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 1289, i32 54}
!16 = !{ptr @midi_func_type, !17, !"midi_func_type", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 1245, i32 38}
!18 = !{ptr @midi_item_ops, !19, !"midi_item_ops", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 1089, i32 40}
!20 = !{ptr @midi_attrs, !21, !"midi_attrs", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 1235, i32 35}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 1181, i32 1}
!24 = !{ptr @f_midi_opts_attr_index, !23, !"f_midi_opts_attr_index", i1 false, i1 false}
!25 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 1182, i32 1}
!28 = !{ptr @f_midi_opts_attr_buflen, !27, !"f_midi_opts_attr_buflen", i1 false, i1 false}
!29 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 1183, i32 1}
!32 = !{ptr @f_midi_opts_attr_qlen, !31, !"f_midi_opts_attr_qlen", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 1184, i32 1}
!35 = !{ptr @f_midi_opts_attr_in_ports, !34, !"f_midi_opts_attr_in_ports", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 1185, i32 1}
!38 = !{ptr @f_midi_opts_attr_out_ports, !37, !"f_midi_opts_attr_out_ports", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 1233, i32 1}
!41 = !{ptr @f_midi_opts_attr_id, !40, !"f_midi_opts_attr_id", i1 false, i1 false}
!42 = !{ptr @f_midi_alloc.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 1384, i32 2}
!44 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 1389, i32 21}
!47 = !{ptr @f_midi_bind.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 880, i32 2}
!49 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 1071, i32 2}
!52 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @f_midi_bind._entry, !51, !"_entry", i1 false, i1 false}
!57 = !{ptr @f_midi_bind._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 619, i32 3}
!60 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @f_midi_do_transmit._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @f_midi_do_transmit._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 660, i32 3}
!65 = !{ptr @f_midi_do_transmit._entry.21, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @f_midi_do_transmit._entry_ptr.23, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @f_midi_register_card.ops, !68, !"ops", i1 false, i1 false}
!68 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 803, i32 31}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 810, i32 3}
!71 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @f_midi_register_card._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @f_midi_register_card._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 817, i32 3}
!76 = !{ptr @f_midi_register_card._entry.26, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @f_midi_register_card._entry_ptr.28, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 826, i32 26}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 830, i32 3}
!82 = !{ptr @f_midi_register_card._entry.30, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @f_midi_register_card._entry_ptr.32, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 853, i32 3}
!86 = !{ptr @f_midi_register_card._entry.33, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @f_midi_register_card._entry_ptr.35, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 857, i32 2}
!90 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @f_midi_register_card.__UNIQUE_ID_ddebug246, !89, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!92 = !{ptr @f_midi_longname, !93, !"f_midi_longname", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 44, i32 19}
!94 = !{ptr @f_midi_shortname, !95, !"f_midi_shortname", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 43, i32 19}
!96 = !{ptr @gmidi_in_ops, !97, !"gmidi_in_ops", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 777, i32 37}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 717, i32 2}
!100 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @f_midi_in_open.__UNIQUE_ID_ddebug240, !99, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 728, i32 2}
!104 = !{ptr @f_midi_in_close.__UNIQUE_ID_ddebug241, !103, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 739, i32 2}
!107 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @f_midi_in_trigger.__UNIQUE_ID_ddebug242, !106, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!109 = !{ptr @gmidi_out_ops, !110, !"gmidi_out_ops", i1 false, i1 false}
!110 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 783, i32 37}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 752, i32 2}
!113 = !{ptr @f_midi_out_open.__UNIQUE_ID_ddebug243, !112, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 761, i32 2}
!116 = !{ptr @f_midi_out_close.__UNIQUE_ID_ddebug244, !115, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 769, i32 2}
!119 = !{ptr @f_midi_out_trigger.__UNIQUE_ID_ddebug245, !118, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!120 = !{ptr @midi_strings, !121, !"midi_strings", i1 false, i1 false}
!121 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 222, i32 35}
!122 = !{ptr @midi_stringtab, !123, !"midi_stringtab", i1 false, i1 false}
!123 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 217, i32 34}
!124 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 213, i32 24}
!126 = !{ptr @midi_string_defs, !127, !"midi_string_defs", i1 false, i1 false}
!127 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 212, i32 26}
!128 = !{ptr @ac_interface_desc, !129, !"ac_interface_desc", i1 false, i1 false}
!129 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 119, i32 40}
!130 = !{ptr @ms_interface_desc, !131, !"ms_interface_desc", i1 false, i1 false}
!131 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 141, i32 40}
!132 = !{ptr @ac_header_desc, !133, !"ac_header_desc", i1 false, i1 false}
!133 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 130, i32 43}
!134 = !{ptr @bulk_in_desc, !135, !"bulk_in_desc", i1 false, i1 false}
!135 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 185, i32 39}
!136 = !{ptr @bulk_out_desc, !137, !"bulk_out_desc", i1 false, i1 false}
!137 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 161, i32 39}
!138 = !{ptr @ms_header_desc, !139, !"ms_header_desc", i1 false, i1 false}
!139 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 152, i32 40}
!140 = !{ptr @ms_in_desc, !141, !"ms_in_desc", i1 false, i1 false}
!141 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 200, i32 45}
!142 = !{ptr @ms_out_desc, !143, !"ms_out_desc", i1 false, i1 false}
!143 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 176, i32 45}
!144 = !{ptr @bulk_out_ss_comp_desc, !145, !"bulk_out_ss_comp_desc", i1 false, i1 false}
!145 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 168, i32 41}
!146 = !{ptr @bulk_in_ss_comp_desc, !147, !"bulk_in_ss_comp_desc", i1 false, i1 false}
!147 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 192, i32 41}
!148 = !{ptr @.str.47, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 1327, i32 2}
!150 = !{ptr @.str.48, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @f_midi_unbind.__UNIQUE_ID_ddebug247, !149, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!152 = !{ptr @.str.49, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 406, i32 4}
!154 = !{ptr @.str.50, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @f_midi_set_alt._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @f_midi_set_alt._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.51, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 348, i32 3}
!159 = !{ptr @.str.52, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @f_midi_start_ep._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @f_midi_start_ep._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.54, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 354, i32 3}
!164 = !{ptr @f_midi_start_ep._entry.53, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @f_midi_start_ep._entry_ptr.55, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.56, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 294, i32 3}
!168 = !{ptr @.str.57, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @f_midi_complete.__UNIQUE_ID_ddebug237, !167, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!170 = !{ptr @.str.58, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 308, i32 3}
!172 = !{ptr @f_midi_complete.__UNIQUE_ID_ddebug238, !171, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!173 = !{ptr @.str.59, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 317, i32 3}
!175 = !{ptr @f_midi_complete._entry, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @f_midi_complete._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @f_midi_cin_length, !178, !"f_midi_cin_length", i1 false, i1 false}
!178 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 233, i32 22}
!179 = !{ptr @.str.60, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/gadget/u_f.h", i32 80, i32 2}
!181 = !{ptr @.str.61, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/gadget/function/f_midi.c", i32 423, i32 2}
!183 = !{ptr @.str.62, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @f_midi_disable.__UNIQUE_ID_ddebug239, !182, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!185 = !{i32 1, !"wchar_size", i32 2}
!186 = !{i32 1, !"min_enum_size", i32 4}
!187 = !{i32 8, !"branch-target-enforcement", i32 0}
!188 = !{i32 8, !"sign-return-address", i32 0}
!189 = !{i32 8, !"sign-return-address-all", i32 0}
!190 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!191 = !{i32 7, !"uwtable", i32 1}
!192 = !{i32 7, !"frame-pointer", i32 2}
!193 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!194 = !{i8 0, i8 2}
!195 = !{!"auto-init"}
!196 = !{i64 2148725129, i64 2148725134, i64 2148725147, i64 2148725191, i64 2148725225, i64 2148725246}
!197 = !{i64 2154376789}
!198 = !{i64 2154382648}
!199 = !{!"branch_weights", i32 1, i32 2000}
!200 = !{i64 2154384171}
!201 = !{i64 2154389803}
