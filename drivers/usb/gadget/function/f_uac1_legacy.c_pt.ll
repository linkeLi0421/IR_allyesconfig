; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/f_uac1_legacy.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_uac1_legacy.c"
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
%struct.uac_input_terminal_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16, i8, i8 }
%struct.uac_feature_unit_descriptor_0 = type <{ i8, i8, i8, i8, i8, i8, [1 x i16], i8 }>
%struct.uac1_output_terminal_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.uac_format_type_i_discrete_descriptor_1 = type { i8, i8, i8, i8, i8, i8, i8, i8, [1 x [3 x i8]] }
%struct.uac1_ac_header_descriptor_1 = type <{ i8, i8, i8, i16, i16, i8, [1 x i8] }>
%struct.uac1_as_header_descriptor = type <{ i8, i8, i8, i8, i8, i16 }>
%struct.uac_iso_endpoint_descriptor = type <{ i8, i8, i8, i8, i8, i16 }>
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_audio_control_selector = type { %struct.list_head, %struct.list_head, i8, ptr, i8, ptr }
%struct.usb_audio_control = type { %struct.list_head, ptr, i8, [5 x i32], ptr, ptr }
%struct.f_uac1_legacy_opts = type { %struct.usb_function_instance, i32, i32, i32, ptr, ptr, ptr, i8, %struct.mutex, i32 }
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
%struct.f_audio = type { %struct.gaudio, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, i8, ptr }
%struct.gaudio = type { %struct.usb_function, ptr, %struct.gaudio_snd_dev, %struct.gaudio_snd_dev, %struct.gaudio_snd_dev }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.gaudio_snd_dev = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
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
%struct.f_audio_buf = type { ptr, i32, %struct.list_head }
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }

@__UNIQUE_ID_alias238 = internal constant [44 x i8] c"usb_f_uac1_legacy.alias=usbfunc:uac1_legacy\00", section ".modinfo", align 1
@uac1_legacyusb_func = internal global { %struct.usb_function_driver, [40 x i8] } { %struct.usb_function_driver { ptr @.str, ptr null, %struct.list_head zeroinitializer, ptr @f_audio_alloc_inst, ptr @f_audio_alloc }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_usb_f_uac1_legacy__239_1016_uac1_legacymod_init6 = internal global ptr @uac1_legacymod_init, section ".initcall6.init", align 4
@__exitcall_uac1_legacymod_exit = internal global ptr @uac1_legacymod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file240 = internal constant [69 x i8] c"usb_f_uac1_legacy.file=drivers/usb/gadget/function/usb_f_uac1_legacy\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [30 x i8] c"usb_f_uac1_legacy.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [34 x i8] c"usb_f_uac1_legacy.author=Bryan Wu\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uac1_legacy\00", [20 x i8] zeroinitializer }, align 32
@f_audio_alloc_inst.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&opts->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@f_uac1_func_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @f_uac1_item_ops, ptr null, ptr @f_uac1_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"/dev/snd/pcmC0D0p\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"/dev/snd/pcmC0D0c\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"/dev/snd/controlC0\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@f_uac1_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @f_uac1_attr_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@f_uac1_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @f_uac1_opts_attr_req_buf_size, ptr @f_uac1_opts_attr_req_count, ptr @f_uac1_opts_attr_audio_buf_size, ptr @f_uac1_opts_attr_fn_play, ptr @f_uac1_opts_attr_fn_cap, ptr @f_uac1_opts_attr_fn_cntl, ptr null], [36 x i8] zeroinitializer }, align 32
@f_uac1_opts_attr_req_buf_size = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.6, ptr null, i16 420, ptr @f_uac1_opts_req_buf_size_show, ptr @f_uac1_opts_req_buf_size_store }, [44 x i8] zeroinitializer }, align 32
@f_uac1_opts_attr_req_count = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.8, ptr null, i16 420, ptr @f_uac1_opts_req_count_show, ptr @f_uac1_opts_req_count_store }, [44 x i8] zeroinitializer }, align 32
@f_uac1_opts_attr_audio_buf_size = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.9, ptr null, i16 420, ptr @f_uac1_opts_audio_buf_size_show, ptr @f_uac1_opts_audio_buf_size_store }, [44 x i8] zeroinitializer }, align 32
@f_uac1_opts_attr_fn_play = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.10, ptr null, i16 420, ptr @f_uac1_opts_fn_play_show, ptr @f_uac1_opts_fn_play_store }, [44 x i8] zeroinitializer }, align 32
@f_uac1_opts_attr_fn_cap = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.12, ptr null, i16 420, ptr @f_uac1_opts_fn_cap_show, ptr @f_uac1_opts_fn_cap_store }, [44 x i8] zeroinitializer }, align 32
@f_uac1_opts_attr_fn_cntl = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.13, ptr null, i16 420, ptr @f_uac1_opts_fn_cntl_show, ptr @f_uac1_opts_fn_cntl_store }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"req_buf_size\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"req_count\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio_buf_size\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fn_play\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fn_cap\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fn_cntl\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"g_audio\00", [24 x i8] zeroinitializer }, align 32
@f_audio_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&audio->lock\00", [19 x i8] zeroinitializer }, align 32
@f_audio_alloc.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&audio->playback_work)\00", [55 x i8] zeroinitializer }, align 32
@uac1_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @str_uac1, ptr null], [24 x i8] zeroinitializer }, align 32
@ac_interface_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@input_terminal_desc = internal global { %struct.uac_input_terminal_descriptor, [20 x i8] } { %struct.uac_input_terminal_descriptor { i8 12, i8 36, i8 2, i8 1, i16 257, i8 0, i8 0, i16 3, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@feature_unit_desc = internal global { %struct.uac_feature_unit_descriptor_0, [23 x i8] } { %struct.uac_feature_unit_descriptor_0 <{ i8 9, i8 36, i8 6, i8 2, i8 1, i8 2, [1 x i16] [i16 3], i8 0 }>, [23 x i8] zeroinitializer }, align 32
@output_terminal_desc = internal global { %struct.uac1_output_terminal_descriptor, [23 x i8] } { %struct.uac1_output_terminal_descriptor <{ i8 9, i8 36, i8 3, i8 3, i16 769, i8 2, i8 2, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@as_interface_alt_0_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 1, i8 2, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@as_interface_alt_1_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 1, i8 1, i8 1, i8 2, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@as_out_ep_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 9, i8 5, i8 0, i8 9, i16 -14336, i8 4, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@f_audio_desc = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @ac_interface_desc, ptr @ac_header_desc, ptr @input_terminal_desc, ptr @output_terminal_desc, ptr @feature_unit_desc, ptr @as_interface_alt_0_desc, ptr @as_interface_alt_1_desc, ptr @as_header_desc, ptr @as_type_i_desc, ptr @as_out_ep_desc, ptr @as_iso_out_desc, ptr null], [48 x i8] zeroinitializer }, align 32
@str_uac1 = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @strings_uac1 }, [24 x i8] zeroinitializer }, align 32
@strings_uac1 = internal global { [8 x %struct.usb_string], [32 x i8] } { [8 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.18 }, %struct.usb_string { i8 0, ptr @.str.19 }, %struct.usb_string { i8 0, ptr @.str.20 }, %struct.usb_string { i8 0, ptr @.str.21 }, %struct.usb_string { i8 0, ptr @.str.22 }, %struct.usb_string { i8 0, ptr @.str.23 }, %struct.usb_string { i8 0, ptr @.str.23 }, %struct.usb_string zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AC Interface\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Input terminal\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Channels\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Volume control & mute\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Output terminal\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AS Interface\00", [19 x i8] zeroinitializer }, align 32
@as_type_i_desc = internal global { %struct.uac_format_type_i_discrete_descriptor_1, [21 x i8] } { %struct.uac_format_type_i_discrete_descriptor_1 { i8 11, i8 36, i8 2, i8 1, i8 0, i8 2, i8 16, i8 1, [1 x [3 x i8]] zeroinitializer }, [21 x i8] zeroinitializer }, align 32
@ac_header_desc = internal global { %struct.uac1_ac_header_descriptor_1, [23 x i8] } { %struct.uac1_ac_header_descriptor_1 <{ i8 9, i8 36, i8 1, i16 1, i16 9984, i8 1, [1 x i8] c"\01" }>, [23 x i8] zeroinitializer }, align 32
@as_header_desc = internal global { %struct.uac1_as_header_descriptor, [25 x i8] } { %struct.uac1_as_header_descriptor <{ i8 7, i8 36, i8 1, i8 1, i8 1, i16 1 }>, [25 x i8] zeroinitializer }, align 32
@as_iso_out_desc = internal global { %struct.uac_iso_endpoint_descriptor, [25 x i8] } { %struct.uac_iso_endpoint_descriptor <{ i8 7, i8 37, i8 1, i8 1, i8 1, i16 256 }>, [25 x i8] zeroinitializer }, align 32
@f_audio_set_alt.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, i8 0, i8 -110, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb_f_uac1_legacy\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"f_audio_set_alt\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/usb/gadget/function/f_uac1_legacy.c\00", [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"intf %d, alt %d\0A\00", [47 x i8] zeroinitializer }, align 32
@f_audio_set_alt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.26, i32 593, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s:%d Error!\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@f_audio_set_alt._entry_ptr = internal global ptr @f_audio_set_alt._entry, section ".printk_index", align 4
@f_audio_set_alt._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.26, i32 600, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@f_audio_set_alt._entry_ptr.32 = internal global ptr @f_audio_set_alt._entry.31, section ".printk_index", align 4
@f_audio_set_alt._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.25, ptr @.str.26, i32 634, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s queue req: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@f_audio_set_alt._entry_ptr.35 = internal global ptr @f_audio_set_alt._entry.33, section ".printk_index", align 4
@f_audio_out_ep_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.36, ptr @.str.26, i32 354, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"f_audio_out_ep_complete\00", [40 x i8] zeroinitializer }, align 32
@f_audio_out_ep_complete._entry_ptr = internal global ptr @f_audio_out_ep_complete._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@f_audio_get_alt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.26, i32 666, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:%d Invalid Interface %d!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"f_audio_get_alt\00", [16 x i8] zeroinitializer }, align 32
@f_audio_get_alt._entry_ptr = internal global ptr @f_audio_get_alt._entry, section ".printk_index", align 4
@f_audio_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.26, i32 555, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"invalid control req%02x.%02x v%04x i%04x l%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"f_audio_setup\00", [18 x i8] zeroinitializer }, align 32
@f_audio_setup._entry_ptr = internal global ptr @f_audio_setup._entry, section ".printk_index", align 4
@f_audio_setup.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.40, ptr @.str.26, ptr @.str.41, i8 0, i8 -116, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"audio req%02x.%02x v%04x i%04x l%d\0A\00", [60 x i8] zeroinitializer }, align 32
@f_audio_setup._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.40, ptr @.str.26, i32 567, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"audio response on err %d\0A\00", [38 x i8] zeroinitializer }, align 32
@f_audio_setup._entry_ptr.44 = internal global ptr @f_audio_setup._entry.42, section ".printk_index", align 4
@audio_set_intf_req.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.45, ptr @.str.26, ptr @.str.46, i8 0, i8 99, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"audio_set_intf_req\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"bRequest 0x%x, w_value 0x%04x, len %d, entity %d\0A\00", [46 x i8] zeroinitializer }, align 32
@audio_get_intf_req.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.47, ptr @.str.26, ptr @.str.46, i8 0, i8 109, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"audio_get_intf_req\00", [45 x i8] zeroinitializer }, align 32
@audio_set_endpoint_req.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.48, ptr @.str.26, ptr @.str.49, i8 0, i8 117, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"audio_set_endpoint_req\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"bRequest 0x%x, w_value 0x%04x, len %d, endpoint %d\0A\00", [44 x i8] zeroinitializer }, align 32
@audio_get_endpoint_req.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.50, ptr @.str.26, ptr @.str.49, i8 0, i8 126, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"audio_get_endpoint_req\00", [41 x i8] zeroinitializer }, align 32
@feature_unit = internal global { %struct.usb_audio_control_selector, [32 x i8] } { %struct.usb_audio_control_selector { %struct.list_head { ptr @feature_unit, ptr @feature_unit }, %struct.list_head zeroinitializer, i8 2, ptr @.str.51, i8 6, ptr @feature_unit_desc }, [32 x i8] zeroinitializer }, align 32
@mute_control = internal global { %struct.usb_audio_control, [52 x i8] } { %struct.usb_audio_control { %struct.list_head { ptr @mute_control, ptr @mute_control }, ptr @.str.52, i8 1, [5 x i32] zeroinitializer, ptr @generic_set_cmd, ptr @generic_get_cmd }, [52 x i8] zeroinitializer }, align 32
@volume_control = internal global { %struct.usb_audio_control, [52 x i8] } { %struct.usb_audio_control { %struct.list_head { ptr @volume_control, ptr @volume_control }, ptr @.str.53, i8 2, [5 x i32] zeroinitializer, ptr @generic_set_cmd, ptr @generic_get_cmd }, [52 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Mute & Volume Control\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Mute Control\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Volume Control\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 33, i64 34, i64 161, i64 162]
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c"uac1_legacyusb_func\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1016, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 949, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 952, i32 54 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"f_uac1_func_type\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 921, i32 38 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 958, i32 18 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 959, i32 17 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 960, i32 18 }
@___asan_gen_.81 = private unnamed_addr constant [16 x i8] c"f_uac1_item_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 815, i32 40 }
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"f_uac1_attrs\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 911, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant [30 x i8] c"f_uac1_opts_attr_req_buf_size\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [27 x i8] c"f_uac1_opts_attr_req_count\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [32 x i8] c"f_uac1_opts_attr_audio_buf_size\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [25 x i8] c"f_uac1_opts_attr_fn_play\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [24 x i8] c"f_uac1_opts_attr_fn_cap\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [25 x i8] c"f_uac1_opts_attr_fn_cntl\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 860, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 861, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 862, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 907, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 908, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 909, i32 1 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 992, i32 26 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 999, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1011, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [13 x i8] c"uac1_strings\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 234, i32 35 }
@___asan_gen_.147 = private unnamed_addr constant [18 x i8] c"ac_interface_desc\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 34, i32 40 }
@___asan_gen_.150 = private unnamed_addr constant [20 x i8] c"input_terminal_desc\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 67, i32 45 }
@___asan_gen_.153 = private unnamed_addr constant [18 x i8] c"feature_unit_desc\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 80, i32 45 }
@___asan_gen_.156 = private unnamed_addr constant [21 x i8] c"output_terminal_desc\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 117, i32 47 }
@___asan_gen_.159 = private unnamed_addr constant [24 x i8] c"as_interface_alt_0_desc\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 128, i32 40 }
@___asan_gen_.162 = private unnamed_addr constant [24 x i8] c"as_interface_alt_1_desc\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 137, i32 40 }
@___asan_gen_.165 = private unnamed_addr constant [15 x i8] c"as_out_ep_desc\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 169, i32 39 }
@___asan_gen_.168 = private unnamed_addr constant [13 x i8] c"f_audio_desc\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 189, i32 38 }
@___asan_gen_.171 = private unnamed_addr constant [9 x i8] c"str_uac1\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 229, i32 34 }
@___asan_gen_.174 = private unnamed_addr constant [13 x i8] c"strings_uac1\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 218, i32 26 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 219, i32 18 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 220, i32 27 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 221, i32 36 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 222, i32 24 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 223, i32 28 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 224, i32 23 }
@___asan_gen_.195 = private unnamed_addr constant [15 x i8] c"as_type_i_desc\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 158, i32 55 }
@___asan_gen_.198 = private unnamed_addr constant [15 x i8] c"ac_header_desc\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 53, i32 43 }
@___asan_gen_.201 = private unnamed_addr constant [15 x i8] c"as_header_desc\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 147, i32 41 }
@___asan_gen_.204 = private unnamed_addr constant [16 x i8] c"as_iso_out_desc\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 180, i32 43 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 584, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 593, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 600, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 632, i32 8 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 354, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 665, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 553, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 560, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 567, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 398, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 435, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 467, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 503, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant [13 x i8] c"feature_unit\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 108, i32 42 }
@___asan_gen_.294 = private unnamed_addr constant [13 x i8] c"mute_control\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 90, i32 33 }
@___asan_gen_.297 = private unnamed_addr constant [15 x i8] c"volume_control\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 99, i32 33 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 111, i32 10 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 92, i32 10 }
@___asan_gen_.306 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.307 = private constant [47 x i8] c"../drivers/usb/gadget/function/f_uac1_legacy.c\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 101, i32 10 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_alias238, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_uac1_legacymod_exit, ptr @__initcall__kmod_usb_f_uac1_legacy__239_1016_uac1_legacymod_init6, ptr @f_audio_get_alt._entry, ptr @f_audio_get_alt._entry_ptr, ptr @f_audio_out_ep_complete._entry, ptr @f_audio_out_ep_complete._entry_ptr, ptr @f_audio_set_alt._entry, ptr @f_audio_set_alt._entry.31, ptr @f_audio_set_alt._entry.33, ptr @f_audio_set_alt._entry_ptr, ptr @f_audio_set_alt._entry_ptr.32, ptr @f_audio_set_alt._entry_ptr.35, ptr @f_audio_setup._entry, ptr @f_audio_setup._entry.42, ptr @f_audio_setup._entry_ptr, ptr @f_audio_setup._entry_ptr.44, ptr @uac1_legacymod_exit, ptr @uac1_legacyusb_func, ptr @.str, ptr @f_audio_alloc_inst.__key, ptr @.str.1, ptr @.str.2, ptr @f_uac1_func_type, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @f_uac1_item_ops, ptr @f_uac1_attrs, ptr @f_uac1_opts_attr_req_buf_size, ptr @f_uac1_opts_attr_req_count, ptr @f_uac1_opts_attr_audio_buf_size, ptr @f_uac1_opts_attr_fn_play, ptr @f_uac1_opts_attr_fn_cap, ptr @f_uac1_opts_attr_fn_cntl, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @f_audio_alloc.__key, ptr @.str.15, ptr @f_audio_alloc.__key.16, ptr @.str.17, ptr @uac1_strings, ptr @ac_interface_desc, ptr @input_terminal_desc, ptr @feature_unit_desc, ptr @output_terminal_desc, ptr @as_interface_alt_0_desc, ptr @as_interface_alt_1_desc, ptr @as_out_ep_desc, ptr @f_audio_desc, ptr @str_uac1, ptr @strings_uac1, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @as_type_i_desc, ptr @ac_header_desc, ptr @as_header_desc, ptr @as_iso_out_desc, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @feature_unit, ptr @mute_control, ptr @volume_control, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uac1_legacyusb_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_alloc_inst.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_func_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_opts_attr_req_buf_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_opts_attr_req_count to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_opts_attr_audio_buf_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_opts_attr_fn_play to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_opts_attr_fn_cap to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_opts_attr_fn_cntl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_alloc.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uac1_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_interface_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_terminal_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @feature_unit_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @output_terminal_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_interface_alt_0_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_interface_alt_1_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_out_ep_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_desc to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str_uac1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strings_uac1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_type_i_desc to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_header_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_header_desc to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_iso_out_desc to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_set_alt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_set_alt._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_set_alt._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_out_ep_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_get_alt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_setup._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @feature_unit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mute_control to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @volume_control to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uac1_legacymod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_function_unregister(ptr noundef nonnull @uac1_legacyusb_func) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uac1_legacymod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_function_register(ptr noundef nonnull @uac1_legacyusb_func) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @f_audio_alloc_inst() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 224) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %call7.i.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @f_audio_alloc_inst.__key) #12
  %free_func_inst = getelementptr inbounds %struct.usb_function_instance, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %free_func_inst to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @f_audio_free_inst, ptr %free_func_inst, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @f_uac1_func_type) #12
  %req_buf_size = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %req_buf_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 200, ptr %req_buf_size, align 4
  %req_count = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %req_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 256, ptr %req_count, align 8
  %audio_buf_size = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %audio_buf_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 48000, ptr %audio_buf_size, align 4
  %fn_play = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %fn_play to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.3, ptr %fn_play, align 8
  %fn_cap = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %fn_cap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.4, ptr %fn_cap, align 4
  %fn_cntl = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %fn_cntl to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.5, ptr %fn_cntl, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %do.body ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @f_audio_alloc(ptr noundef %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 320) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.14, ptr %call7.i.i, align 8
  %lock = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %fi, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %fi, i32 0, i32 9
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcnt, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %refcnt, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #12
  %play_queue = getelementptr inbounds %struct.f_audio, ptr %call7.i.i, i32 0, i32 9
  %4 = ptrtoint ptr %play_queue to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %play_queue, ptr %play_queue, align 8
  %prev.i = getelementptr inbounds %struct.f_audio, ptr %call7.i.i, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %play_queue, ptr %prev.i, align 4
  %lock3 = getelementptr inbounds %struct.f_audio, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock3, ptr noundef nonnull @.str.15, ptr noundef nonnull @f_audio_alloc.__key, i16 noundef signext 3) #12
  %bind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 9
  %6 = ptrtoint ptr %bind to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @f_audio_bind, ptr %bind, align 4
  %unbind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %unbind to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @f_audio_unbind, ptr %unbind, align 8
  %set_alt = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 13
  %8 = ptrtoint ptr %set_alt to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @f_audio_set_alt, ptr %set_alt, align 4
  %get_alt = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 14
  %9 = ptrtoint ptr %get_alt to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @f_audio_get_alt, ptr %get_alt, align 8
  %setup = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @f_audio_setup, ptr %setup, align 8
  %disable = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 15
  %11 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @f_audio_disable, ptr %disable, align 4
  %free_func = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 11
  %12 = ptrtoint ptr %free_func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @f_audio_free, ptr %free_func, align 4
  %cs.i = getelementptr inbounds %struct.f_audio, ptr %call7.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %cs.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %cs.i, ptr %cs.i, align 8
  %prev.i.i = getelementptr inbounds %struct.f_audio, ptr %call7.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cs.i, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull @feature_unit, ptr noundef %cs.i, ptr noundef %cs.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.list_add.exit.i_crit_edge

if.end.list_add.exit.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @feature_unit, ptr %prev.i.i, align 4
  store ptr %cs.i, ptr @feature_unit, align 4
  store ptr %cs.i, ptr getelementptr inbounds (%struct.usb_audio_control_selector, ptr @feature_unit, i32 0, i32 0, i32 1), align 4
  %16 = ptrtoint ptr %cs.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr @feature_unit, ptr %cs.i, align 8
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.list_add.exit.i_crit_edge
  store volatile ptr getelementptr inbounds (%struct.usb_audio_control_selector, ptr @feature_unit, i32 0, i32 1), ptr getelementptr inbounds (%struct.usb_audio_control_selector, ptr @feature_unit, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.usb_audio_control_selector, ptr @feature_unit, i32 0, i32 1), ptr getelementptr inbounds (%struct.usb_audio_control_selector, ptr @feature_unit, i32 0, i32 1, i32 1), align 4
  %call.i.i1.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull @mute_control, ptr noundef getelementptr inbounds (%struct.usb_audio_control_selector, ptr @feature_unit, i32 0, i32 1), ptr noundef getelementptr inbounds (%struct.usb_audio_control_selector, ptr @feature_unit, i32 0, i32 1)) #12
  br i1 %call.i.i1.i, label %if.end.i.i3.i, label %list_add.exit.i.list_add.exit4.i_crit_edge

list_add.exit.i.list_add.exit4.i_crit_edge:       ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit4.i

if.end.i.i3.i:                                    ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  store ptr @mute_control, ptr getelementptr inbounds (%struct.usb_audio_control_selector, ptr @feature_unit, i32 0, i32 1, i32 1), align 4
  store ptr getelementptr inbounds (%struct.usb_audio_control_selector, ptr @feature_unit, i32 0, i32 1), ptr @mute_control, align 4
  store ptr getelementptr inbounds (%struct.usb_audio_control_selector, ptr @feature_unit, i32 0, i32 1), ptr getelementptr inbounds (%struct.usb_audio_control, ptr @mute_control, i32 0, i32 0, i32 1), align 4
  store volatile ptr @mute_control, ptr getelementptr inbounds (%struct.usb_audio_control_selector, ptr @feature_unit, i32 0, i32 1), align 4
  br label %list_add.exit4.i

list_add.exit4.i:                                 ; preds = %if.end.i.i3.i, %list_add.exit.i.list_add.exit4.i_crit_edge
  %17 = load ptr, ptr getelementptr inbounds (%struct.usb_audio_control_selector, ptr @feature_unit, i32 0, i32 1), align 4
  %call.i.i5.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull @volume_control, ptr noundef getelementptr inbounds (%struct.usb_audio_control_selector, ptr @feature_unit, i32 0, i32 1), ptr noundef %17) #12
  br i1 %call.i.i5.i, label %if.end.i.i7.i, label %list_add.exit4.i.control_selector_init.exit_crit_edge

list_add.exit4.i.control_selector_init.exit_crit_edge: ; preds = %list_add.exit4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %control_selector_init.exit

if.end.i.i7.i:                                    ; preds = %list_add.exit4.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i6.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i6.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @volume_control, ptr %prev1.i.i6.i, align 4
  store ptr %17, ptr @volume_control, align 4
  store ptr getelementptr inbounds (%struct.usb_audio_control_selector, ptr @feature_unit, i32 0, i32 1), ptr getelementptr inbounds (%struct.usb_audio_control, ptr @volume_control, i32 0, i32 0, i32 1), align 4
  store volatile ptr @volume_control, ptr getelementptr inbounds (%struct.usb_audio_control_selector, ptr @feature_unit, i32 0, i32 1), align 4
  br label %control_selector_init.exit

control_selector_init.exit:                       ; preds = %if.end.i.i7.i, %list_add.exit4.i.control_selector_init.exit_crit_edge
  store i32 65472, ptr getelementptr inbounds (%struct.usb_audio_control, ptr @volume_control, i32 0, i32 3, i32 1), align 4
  store i32 58272, ptr getelementptr inbounds (%struct.usb_audio_control, ptr @volume_control, i32 0, i32 3, i32 2), align 4
  store i32 65520, ptr getelementptr inbounds (%struct.usb_audio_control, ptr @volume_control, i32 0, i32 3, i32 3), align 4
  store i32 48, ptr getelementptr inbounds (%struct.usb_audio_control, ptr @volume_control, i32 0, i32 3, i32 4), align 4
  %playback_work = getelementptr inbounds %struct.f_audio, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %playback_work, i32 noundef 0) #12
  %19 = ptrtoint ptr %playback_work to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %playback_work, align 4
  %lockdep_map = getelementptr inbounds %struct.f_audio, ptr %call7.i.i, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.17, ptr noundef nonnull @f_audio_alloc.__key.16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry24 = getelementptr inbounds %struct.f_audio, ptr %call7.i.i, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %entry24 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry24, ptr %entry24, align 8
  %prev.i51 = getelementptr inbounds %struct.f_audio, ptr %call7.i.i, i32 0, i32 8, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i51 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry24, ptr %prev.i51, align 4
  %func26 = getelementptr inbounds %struct.f_audio, ptr %call7.i.i, i32 0, i32 8, i32 2
  %22 = ptrtoint ptr %func26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @f_audio_playback_work, ptr %func26, align 8
  br label %cleanup

cleanup:                                          ; preds = %control_selector_init.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %control_selector_init.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f_audio_free_inst(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fn_play_alloc = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %f, i32 0, i32 7
  %0 = ptrtoint ptr %fn_play_alloc to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %fn_play_alloc, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fn_play = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %f, i32 0, i32 4
  %2 = ptrtoint ptr %fn_play to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fn_play, align 4
  tail call void @kfree(ptr noundef %3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %fn_play_alloc to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load1 = load i8, ptr %fn_play_alloc, align 4
  %5 = and i8 %bf.load1, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %fn_cap = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %f, i32 0, i32 5
  %6 = ptrtoint ptr %fn_cap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fn_cap, align 4
  tail call void @kfree(ptr noundef %7) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %8 = ptrtoint ptr %fn_play_alloc to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load8 = load i8, ptr %fn_play_alloc, align 4
  %9 = and i8 %bf.load8, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool12.not, label %if.end7.if.end14_crit_edge, label %if.then13

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %fn_cntl = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %f, i32 0, i32 6
  %10 = ptrtoint ptr %fn_cntl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fn_cntl, align 4
  tail call void @kfree(ptr noundef %11) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end7.if.end14_crit_edge
  tail call void @kfree(ptr noundef %f) #12
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
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f_uac1_attr_release(ptr noundef %item) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_put_function_instance(ptr noundef %item) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_req_buf_size_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %req_buf_size = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %req_buf_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req_buf_size, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.7, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_req_buf_size_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #12
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !173
  %lock = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 9
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  %req_buf_size = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 1
  %5 = ptrtoint ptr %req_buf_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %req_buf_size, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_req_count_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %req_count = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %req_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req_count, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.7, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_req_count_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #12
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !173
  %lock = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 9
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  %req_count = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 2
  %5 = ptrtoint ptr %req_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %req_count, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_audio_buf_size_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %audio_buf_size = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 3
  %0 = ptrtoint ptr %audio_buf_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %audio_buf_size, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.7, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_audio_buf_size_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #12
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !173
  %lock = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 9
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  %audio_buf_size = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 3
  %5 = ptrtoint ptr %audio_buf_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %audio_buf_size, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_fn_play_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %fn_play = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %fn_play to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fn_play, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.11, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_fn_play_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 9
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @kstrndup(ptr noundef %page, i32 noundef %len, i32 noundef 3264) #12
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end4:                                          ; preds = %if.end
  %fn_play_alloc = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 7
  %2 = ptrtoint ptr %fn_play_alloc to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %fn_play_alloc, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %fn_play = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 4
  %4 = ptrtoint ptr %fn_play to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fn_play, align 4
  tail call void @kfree(ptr noundef %5) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %6 = ptrtoint ptr %fn_play_alloc to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load9 = load i8, ptr %fn_play_alloc, align 4
  %bf.set = or i8 %bf.load9, 64
  store i8 %bf.set, ptr %fn_play_alloc, align 4
  %fn_play11 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 4
  %7 = ptrtoint ptr %fn_play11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %fn_play11, align 4
  br label %end

end:                                              ; preds = %if.end7, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ -16, %entry.end_crit_edge ], [ %len, %if.end7 ], [ -12, %if.end.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_fn_cap_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %fn_cap = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %fn_cap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fn_cap, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.11, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_fn_cap_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 9
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @kstrndup(ptr noundef %page, i32 noundef %len, i32 noundef 3264) #12
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end4:                                          ; preds = %if.end
  %fn_cap_alloc = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 7
  %2 = ptrtoint ptr %fn_cap_alloc to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %fn_cap_alloc, align 4
  %3 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %fn_cap = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 5
  %4 = ptrtoint ptr %fn_cap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fn_cap, align 4
  tail call void @kfree(ptr noundef %5) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %6 = ptrtoint ptr %fn_cap_alloc to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load9 = load i8, ptr %fn_cap_alloc, align 4
  %bf.set = or i8 %bf.load9, 32
  store i8 %bf.set, ptr %fn_cap_alloc, align 4
  %fn_cap11 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 5
  %7 = ptrtoint ptr %fn_cap11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %fn_cap11, align 4
  br label %end

end:                                              ; preds = %if.end7, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ -16, %entry.end_crit_edge ], [ %len, %if.end7 ], [ -12, %if.end.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_fn_cntl_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %fn_cntl = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 6
  %0 = ptrtoint ptr %fn_cntl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fn_cntl, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.11, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_fn_cntl_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 9
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @kstrndup(ptr noundef %page, i32 noundef %len, i32 noundef 3264) #12
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end4:                                          ; preds = %if.end
  %fn_cntl_alloc = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 7
  %2 = ptrtoint ptr %fn_cntl_alloc to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %fn_cntl_alloc, align 4
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %fn_cntl = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 6
  %4 = ptrtoint ptr %fn_cntl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fn_cntl, align 4
  tail call void @kfree(ptr noundef %5) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %6 = ptrtoint ptr %fn_cntl_alloc to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load9 = load i8, ptr %fn_cntl_alloc, align 4
  %bf.set = or i8 %bf.load9, 16
  store i8 %bf.set, ptr %fn_cntl_alloc, align 4
  %fn_cntl11 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %item, i32 0, i32 6
  %7 = ptrtoint ptr %fn_cntl11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %fn_cntl11, align 4
  br label %end

end:                                              ; preds = %if.end7, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ -16, %entry.end_crit_edge ], [ %len, %if.end7 ], [ -12, %if.end.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_audio_bind(ptr noundef %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev1, align 4
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %2 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fi, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %gadget3 = getelementptr inbounds %struct.gaudio, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %gadget3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %gadget3, align 4
  %bound = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %bound to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %bound, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then:                                          ; preds = %entry
  %call5 = tail call i32 @gaudio_setup(ptr noundef %f) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %bound to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load8 = load i8, ptr %bound, align 4
  %bf.set = or i8 %bf.load8, -128
  store i8 %bf.set, ptr %bound, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %call10 = tail call ptr @usb_gstrings_attach(ptr noundef %1, ptr noundef nonnull @uac1_strings, i32 noundef 8) #12
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %10 = ptrtoint ptr %call10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %call10, align 4
  store i8 %11, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ac_interface_desc, i32 0, i32 8), align 1
  %arrayidx15 = getelementptr %struct.usb_string, ptr %call10, i32 1
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx15, align 4
  store i8 %13, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @input_terminal_desc, i32 0, i32 9), align 1
  %arrayidx17 = getelementptr %struct.usb_string, ptr %call10, i32 2
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx17, align 4
  store i8 %15, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @input_terminal_desc, i32 0, i32 8), align 1
  %arrayidx19 = getelementptr %struct.usb_string, ptr %call10, i32 3
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx19, align 4
  store i8 %17, ptr getelementptr inbounds (%struct.uac_feature_unit_descriptor_0, ptr @feature_unit_desc, i32 0, i32 7), align 1
  %arrayidx21 = getelementptr %struct.usb_string, ptr %call10, i32 4
  %18 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx21, align 4
  store i8 %19, ptr getelementptr inbounds (%struct.uac1_output_terminal_descriptor, ptr @output_terminal_desc, i32 0, i32 7), align 1
  %arrayidx23 = getelementptr %struct.usb_string, ptr %call10, i32 5
  %20 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx23, align 4
  store i8 %21, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_interface_alt_0_desc, i32 0, i32 8), align 1
  %arrayidx25 = getelementptr %struct.usb_string, ptr %call10, i32 6
  %22 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx25, align 4
  store i8 %23, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_interface_alt_1_desc, i32 0, i32 8), align 1
  %call.i = tail call i32 @u_audio_get_playback_channels(ptr noundef %f) #12
  %conv.i = trunc i32 %call.i to i8
  store i8 %conv.i, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @input_terminal_desc, i32 0, i32 6), align 1
  %call2.i = tail call i32 @u_audio_get_playback_channels(ptr noundef %f) #12
  %conv3.i = trunc i32 %call2.i to i8
  store i8 %conv3.i, ptr getelementptr inbounds (%struct.uac_format_type_i_discrete_descriptor_1, ptr @as_type_i_desc, i32 0, i32 4), align 1
  %call4.i = tail call i32 @u_audio_get_playback_rate(ptr noundef %f) #12
  %rate.0.extract.shift.i = lshr i32 %call4.i, 8
  %rate.0.extract.trunc.i = trunc i32 %rate.0.extract.shift.i to i24
  store i24 %rate.0.extract.trunc.i, ptr getelementptr inbounds (%struct.uac_format_type_i_discrete_descriptor_1, ptr @as_type_i_desc, i32 0, i32 8), align 1
  %call27 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end14.fail_crit_edge, label %if.end30

if.end14.fail_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end30:                                         ; preds = %if.end14
  %conv = trunc i32 %call27 to i8
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ac_interface_desc, i32 0, i32 2), align 1
  %ac_intf = getelementptr inbounds %struct.f_audio, ptr %f, i32 0, i32 1
  %24 = ptrtoint ptr %ac_intf to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %ac_intf, align 4
  %ac_alt = getelementptr inbounds %struct.f_audio, ptr %f, i32 0, i32 2
  %25 = ptrtoint ptr %ac_alt to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %ac_alt, align 1
  %call32 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end30.fail_crit_edge, label %if.end36

if.end30.fail_crit_edge:                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end36:                                         ; preds = %if.end30
  %conv37 = trunc i32 %call32 to i8
  store i8 %conv37, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_interface_alt_0_desc, i32 0, i32 2), align 1
  store i8 %conv37, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_interface_alt_1_desc, i32 0, i32 2), align 1
  %as_intf = getelementptr inbounds %struct.f_audio, ptr %f, i32 0, i32 3
  %26 = ptrtoint ptr %as_intf to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv37, ptr %as_intf, align 2
  %as_alt = getelementptr inbounds %struct.f_audio, ptr %f, i32 0, i32 4
  %27 = ptrtoint ptr %as_alt to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %as_alt, align 1
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %call41 = tail call ptr @usb_ep_autoconfig(ptr noundef %29, ptr noundef nonnull @as_out_ep_desc) #12
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.end36.fail_crit_edge, label %if.end44

if.end36.fail_crit_edge:                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end44:                                         ; preds = %if.end36
  %out_ep = getelementptr inbounds %struct.f_audio, ptr %f, i32 0, i32 5
  %30 = ptrtoint ptr %out_ep to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call41, ptr %out_ep, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %call41, i32 0, i32 9
  %31 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @as_out_ep_desc, ptr %desc, align 4
  %call46 = tail call i32 @usb_assign_descriptors(ptr noundef %f, ptr noundef nonnull @f_audio_desc, ptr noundef nonnull @f_audio_desc, ptr noundef null, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end44.cleanup_crit_edge, label %if.end44.fail_crit_edge

if.end44.fail_crit_edge:                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

fail:                                             ; preds = %if.end44.fail_crit_edge, %if.end36.fail_crit_edge, %if.end30.fail_crit_edge, %if.end14.fail_crit_edge
  %status.0 = phi i32 [ %call27, %if.end14.fail_crit_edge ], [ %call32, %if.end30.fail_crit_edge ], [ %call46, %if.end44.fail_crit_edge ], [ -19, %if.end36.fail_crit_edge ]
  tail call void @gaudio_cleanup(ptr noundef %f) #12
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end44.cleanup_crit_edge, %if.then12, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then12 ], [ %status.0, %fail ], [ %call5, %if.then.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f_audio_unbind(ptr nocapture noundef readnone %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_free_all_descriptors(ptr noundef %f) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_audio_set_alt(ptr noundef %f, i32 noundef %intf, i32 noundef %alt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  %out_ep2 = getelementptr inbounds %struct.f_audio, ptr %f, i32 0, i32 5
  %4 = ptrtoint ptr %out_ep2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out_ep2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f_audio_set_alt.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@f_audio_set_alt, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !174

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f_audio_set_alt.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %intf, i32 noundef %alt) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %8 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fi, align 4
  %req_buf_size8 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %req_buf_size8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %req_buf_size8, align 4
  %req_count9 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %req_count9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %req_count9, align 4
  %audio_buf_size10 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %audio_buf_size10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %audio_buf_size10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %alt)
  %cmp = icmp ugt i32 %alt, 1
  br i1 %cmp, label %do.end14, label %if.end17

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %dev16 = getelementptr inbounds %struct.usb_gadget, ptr %17, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.25, i32 noundef 593) #16
  br label %cleanup

if.end17:                                         ; preds = %do.end
  %ac_intf = getelementptr inbounds %struct.f_audio, ptr %f, i32 0, i32 1
  %18 = ptrtoint ptr %ac_intf to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ac_intf, align 4
  %conv = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %intf)
  %cmp18 = icmp eq i32 %conv, %intf
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alt)
  %tobool21.not = icmp eq i32 %alt, 0
  br i1 %tobool21.not, label %if.then20.cleanup_crit_edge, label %do.end25

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end25:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %dev27 = getelementptr inbounds %struct.usb_gadget, ptr %21, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.25, i32 noundef 600) #16
  br label %cleanup

if.else:                                          ; preds = %if.end17
  %as_intf = getelementptr inbounds %struct.f_audio, ptr %f, i32 0, i32 3
  %22 = ptrtoint ptr %as_intf to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %as_intf, align 2
  %conv29 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv29, i32 %intf)
  %cmp30 = icmp eq i32 %conv29, %intf
  br i1 %cmp30, label %if.then32, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %alt)
  %cmp33 = icmp eq i32 %alt, 1
  br i1 %cmp33, label %if.then35, label %if.else71

if.then35:                                        ; preds = %if.then32
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %call37 = tail call i32 @config_ep_by_speed(ptr noundef %25, ptr noundef %f, ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end40:                                         ; preds = %if.then35
  %call41 = tail call i32 @usb_ep_enable(ptr noundef %5) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 2848, i32 noundef 16) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end40.f_audio_buffer_alloc.exit.thread_crit_edge, label %if.end8.i.i.i

if.end40.f_audio_buffer_alloc.exit.thread_crit_edge: ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %f_audio_buffer_alloc.exit.thread

if.end8.i.i.i:                                    ; preds = %if.end40
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 2848) #17
  %27 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call9.i.i.i, ptr %call7.i.i.i, align 8
  %tobool4.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %f_audio_buffer_alloc.exit

if.then5.i:                                       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %f_audio_buffer_alloc.exit.thread

f_audio_buffer_alloc.exit.thread:                 ; preds = %if.then5.i, %if.end40.f_audio_buffer_alloc.exit.thread_crit_edge
  %copy_buf141 = getelementptr inbounds %struct.f_audio, ptr %f, i32 0, i32 7
  %28 = ptrtoint ptr %copy_buf141 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -12 to ptr), ptr %copy_buf141, align 4
  br label %cleanup

f_audio_buffer_alloc.exit:                        ; preds = %if.end8.i.i.i
  %copy_buf = getelementptr inbounds %struct.f_audio, ptr %f, i32 0, i32 7
  %29 = ptrtoint ptr %copy_buf to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i.i, ptr %copy_buf, align 4
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %f_audio_buffer_alloc.exit.cleanup_crit_edge, label %for.cond.preheader

f_audio_buffer_alloc.exit.cleanup_crit_edge:      ; preds = %f_audio_buffer_alloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %f_audio_buffer_alloc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp47145 = icmp sgt i32 %13, 0
  br i1 %cmp47145, label %for.body.lr.ph, label %for.cond.preheader.if.end78_crit_edge

for.cond.preheader.if.end78_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %name = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0146 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call51 = tail call ptr @usb_ep_alloc_request(ptr noundef %5, i32 noundef 2592) #12
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %for.body.if.end78_crit_edge, label %if.end8.i.i

for.body.if.end78_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.end8.i.i:                                      ; preds = %for.body
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 2848) #17
  %30 = ptrtoint ptr %call51 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call9.i.i, ptr %call51, align 4
  %tobool56.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool56.not, label %if.end8.i.i.if.end78_crit_edge, label %if.then57

if.end8.i.i.if.end78_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.then57:                                        ; preds = %if.end8.i.i
  %length = getelementptr inbounds %struct.usb_request, ptr %call51, i32 0, i32 1
  %31 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %11, ptr %length, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %call51, i32 0, i32 8
  %32 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %f, ptr %context, align 4
  %complete = getelementptr inbounds %struct.usb_request, ptr %call51, i32 0, i32 7
  %33 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @f_audio_complete, ptr %complete, align 4
  %call58 = tail call i32 @usb_ep_queue(ptr noundef %5, ptr noundef nonnull %call51, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %for.inc, label %do.end63

do.end63:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %dev65 = getelementptr inbounds %struct.usb_gadget, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65, ptr noundef nonnull @.str.34, ptr noundef %37, i32 noundef %call58) #16
  br label %if.end78

for.inc:                                          ; preds = %if.then57
  %inc = add nuw nsw i32 %i.0146, 1
  %cmp47 = icmp slt i32 %inc, %13
  br i1 %cmp47, label %for.inc.for.body_crit_edge, label %for.inc.if.end78_crit_edge

for.inc.if.end78_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.else71:                                        ; preds = %if.then32
  %copy_buf73 = getelementptr inbounds %struct.f_audio, ptr %f, i32 0, i32 7
  %38 = ptrtoint ptr %copy_buf73 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %copy_buf73, align 4
  %tobool74.not = icmp eq ptr %39, null
  br i1 %tobool74.not, label %if.else71.if.end78_crit_edge, label %if.then75

if.else71.if.end78_crit_edge:                     ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.then75:                                        ; preds = %if.else71
  %list = getelementptr inbounds %struct.f_audio_buf, ptr %39, i32 0, i32 2
  %play_queue = getelementptr inbounds %struct.f_audio, ptr %f, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.f_audio, ptr %f, i32 0, i32 9, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %41, ptr noundef %play_queue) #12
  br i1 %call.i.i, label %if.end.i.i137, label %if.then75.list_add_tail.exit_crit_edge

if.then75.list_add_tail.exit_crit_edge:           ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i137:                                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %list, ptr %prev.i, align 4
  %43 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %play_queue, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.f_audio_buf, ptr %39, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %list, ptr %41, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i137, %if.then75.list_add_tail.exit_crit_edge
  %playback_work = getelementptr inbounds %struct.f_audio, ptr %f, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %46 = load ptr, ptr @system_wq, align 4
  %call.i.i138 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %46, ptr noundef %playback_work) #12
  br label %if.end78

if.end78:                                         ; preds = %list_add_tail.exit, %if.else71.if.end78_crit_edge, %for.inc.if.end78_crit_edge, %do.end63, %if.end8.i.i.if.end78_crit_edge, %for.body.if.end78_crit_edge, %for.cond.preheader.if.end78_crit_edge
  %err.2 = phi i32 [ 0, %list_add_tail.exit ], [ 0, %if.else71.if.end78_crit_edge ], [ 0, %for.cond.preheader.if.end78_crit_edge ], [ %call58, %do.end63 ], [ -12, %if.end8.i.i.if.end78_crit_edge ], [ -12, %for.body.if.end78_crit_edge ], [ 0, %for.inc.if.end78_crit_edge ]
  %conv79 = trunc i32 %alt to i8
  %as_alt = getelementptr inbounds %struct.f_audio, ptr %f, i32 0, i32 4
  %47 = ptrtoint ptr %as_alt to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv79, ptr %as_alt, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %f_audio_buffer_alloc.exit.cleanup_crit_edge, %f_audio_buffer_alloc.exit.thread, %if.then35.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end25, %if.then20.cleanup_crit_edge, %do.end14
  %retval.0 = phi i32 [ -22, %do.end14 ], [ -22, %do.end25 ], [ 0, %if.then20.cleanup_crit_edge ], [ %call37, %if.then35.cleanup_crit_edge ], [ -12, %f_audio_buffer_alloc.exit.cleanup_crit_edge ], [ %err.2, %if.end78 ], [ 0, %if.else.cleanup_crit_edge ], [ -12, %f_audio_buffer_alloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_audio_get_alt(ptr nocapture noundef readonly %f, i32 noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  %ac_intf = getelementptr inbounds %struct.f_audio, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %ac_intf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ac_intf, align 4
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %intf)
  %cmp = icmp eq i32 %conv, %intf
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ac_alt = getelementptr inbounds %struct.f_audio, ptr %f, i32 0, i32 2
  %6 = ptrtoint ptr %ac_alt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ac_alt, align 1
  %conv3 = zext i8 %7 to i32
  br label %cleanup

if.else:                                          ; preds = %entry
  %as_intf = getelementptr inbounds %struct.f_audio, ptr %f, i32 0, i32 3
  %8 = ptrtoint ptr %as_intf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %as_intf, align 2
  %conv4 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4, i32 %intf)
  %cmp5 = icmp eq i32 %conv4, %intf
  br i1 %cmp5, label %if.then7, label %do.end

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %as_alt = getelementptr inbounds %struct.f_audio, ptr %f, i32 0, i32 4
  %10 = ptrtoint ptr %as_alt to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %as_alt, align 1
  %conv8 = zext i8 %11 to i32
  br label %cleanup

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %13, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 666, i32 noundef %intf) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then7, %if.then
  %retval.0 = phi i32 [ %conv3, %if.then ], [ %conv8, %if.then7 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_audio_setup(ptr noundef %f, ptr noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  %req2 = getelementptr inbounds %struct.usb_composite_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %req2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req2, align 4
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %6 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %wIndex, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %9 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %wValue, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %12 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %wLength, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %15 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ctrl, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i8 %16, label %do.end [
    i8 33, label %sw.bb
    i8 -95, label %sw.epilog
    i8 34, label %sw.bb5
    i8 -94, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %18 = lshr i16 %11, 8
  %bRequest.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %19 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bRequest.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @audio_set_intf_req.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@f_audio_setup, %do.end.i)) #12
          to label %if.then.i [label %do.end.i], !srcloc !174

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %conv4.i = zext i16 %11 to i32
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.usb_gadget, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bRequest.i, align 1
  %conv16.i = zext i8 %24 to i32
  %conv18.i = zext i16 %14 to i32
  %25 = and i16 %7, 255
  %conv19.i = zext i16 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @audio_set_intf_req.__UNIQUE_ID_ddebug230, ptr noundef %dev.i, ptr noundef nonnull @.str.46, i32 noundef %conv16.i, i32 noundef %conv4.i, i32 noundef %conv18.i, i32 noundef %conv19.i) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %sw.bb
  %cs20.i = getelementptr inbounds %struct.f_audio, ptr %f, i32 0, i32 10
  %26 = trunc i16 %7 to i8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %cs.0.in.i = phi ptr [ %cs20.i, %do.end.i ], [ %cs.0.i, %for.body.i.for.cond.i_crit_edge ]
  %27 = ptrtoint ptr %cs.0.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %cs.0.i = load ptr, ptr %cs.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %cs.0.i, %cs20.i
  br i1 %cmp.not.i, label %for.cond.i.audio_set_intf_req.exit_crit_edge, label %for.body.i

for.cond.i.audio_set_intf_req.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %audio_set_intf_req.exit

for.body.i:                                       ; preds = %for.cond.i
  %id26.i = getelementptr inbounds %struct.usb_audio_control_selector, ptr %cs.0.i, i32 0, i32 2
  %28 = ptrtoint ptr %id26.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %id26.i, align 4
  %cmp29.i = icmp eq i8 %29, %26
  br i1 %cmp29.i, label %if.then31.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

if.then31.i:                                      ; preds = %for.body.i
  %control.i = getelementptr inbounds %struct.usb_audio_control_selector, ptr %cs.0.i, i32 0, i32 1
  br label %for.cond36.i

for.cond36.i:                                     ; preds = %for.body43.i.for.cond36.i_crit_edge, %if.then31.i
  %con.0.in.i = phi ptr [ %control.i, %if.then31.i ], [ %con.0.i, %for.body43.i.for.cond36.i_crit_edge ]
  %30 = ptrtoint ptr %con.0.in.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %con.0.i = load ptr, ptr %con.0.in.i, align 4
  %cmp39.not.i = icmp eq ptr %con.0.i, %control.i
  br i1 %cmp39.not.i, label %for.cond36.i.audio_set_intf_req.exit_crit_edge, label %for.body43.i

for.cond36.i.audio_set_intf_req.exit_crit_edge:   ; preds = %for.cond36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %audio_set_intf_req.exit

for.body43.i:                                     ; preds = %for.cond36.i
  %type.i = getelementptr inbounds %struct.usb_audio_control, ptr %con.0.i, i32 0, i32 2
  %31 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %type.i, align 4
  %33 = zext i8 %32 to i16
  %cmp46.i = icmp eq i16 %18, %33
  br i1 %cmp46.i, label %if.then48.i, label %for.body43.i.for.cond36.i_crit_edge

for.body43.i.for.cond36.i_crit_edge:              ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond36.i

if.then48.i:                                      ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #14
  %set_con.i = getelementptr inbounds %struct.f_audio, ptr %f, i32 0, i32 12
  %34 = ptrtoint ptr %set_con.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %con.0.i, ptr %set_con.i, align 4
  br label %audio_set_intf_req.exit

audio_set_intf_req.exit:                          ; preds = %if.then48.i, %for.cond36.i.audio_set_intf_req.exit_crit_edge, %for.cond.i.audio_set_intf_req.exit_crit_edge
  %35 = and i8 %20, 15
  %set_cmd.i = getelementptr inbounds %struct.f_audio, ptr %f, i32 0, i32 11
  %36 = ptrtoint ptr %set_cmd.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %set_cmd.i, align 4
  %context.i = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 8
  %37 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %f, ptr %context.i, align 4
  %complete.i = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 7
  %38 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @f_audio_complete, ptr %complete.i, align 4
  %conv63.i = zext i16 %14 to i32
  br label %do.body16

sw.bb5:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @audio_set_endpoint_req.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@f_audio_setup, %audio_set_endpoint_req.exit)) #12
          to label %if.then.i80 [label %audio_set_endpoint_req.exit], !srcloc !174

if.then.i80:                                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 4
  %dev.i78 = getelementptr inbounds %struct.usb_gadget, ptr %40, i32 0, i32 11
  %bRequest.i79 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %41 = ptrtoint ptr %bRequest.i79 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bRequest.i79, align 1
  %conv.i = zext i8 %42 to i32
  %conv5.i = zext i16 %11 to i32
  %conv6.i = zext i16 %14 to i32
  %conv7.i = zext i16 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @audio_set_endpoint_req.__UNIQUE_ID_ddebug234, ptr noundef %dev.i78, ptr noundef nonnull @.str.49, i32 noundef %conv.i, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %conv7.i) #12
  br label %audio_set_endpoint_req.exit

audio_set_endpoint_req.exit:                      ; preds = %if.then.i80, %sw.bb5
  %bRequest8.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %43 = ptrtoint ptr %bRequest8.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bRequest8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cond.i = icmp eq i8 %44, 1
  %conv10.i = zext i16 %14 to i32
  br i1 %cond.i, label %audio_set_endpoint_req.exit.do.body16_crit_edge, label %audio_set_endpoint_req.exit.if.end44_crit_edge

audio_set_endpoint_req.exit.if.end44_crit_edge:   ; preds = %audio_set_endpoint_req.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

audio_set_endpoint_req.exit.do.body16_crit_edge:  ; preds = %audio_set_endpoint_req.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16

sw.bb7:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @audio_get_endpoint_req.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@f_audio_setup, %audio_get_endpoint_req.exit)) #12
          to label %if.then.i91 [label %audio_get_endpoint_req.exit], !srcloc !174

if.then.i91:                                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 4
  %dev.i87 = getelementptr inbounds %struct.usb_gadget, ptr %46, i32 0, i32 11
  %bRequest.i88 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %47 = ptrtoint ptr %bRequest.i88 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bRequest.i88, align 1
  %conv6.i89 = zext i8 %48 to i32
  %conv7.i90 = zext i16 %11 to i32
  %conv8.i = zext i16 %14 to i32
  %49 = and i16 %7, 255
  %conv9.i = zext i16 %49 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @audio_get_endpoint_req.__UNIQUE_ID_ddebug235, ptr noundef %dev.i87, ptr noundef nonnull @.str.49, i32 noundef %conv6.i89, i32 noundef %conv7.i90, i32 noundef %conv8.i, i32 noundef %conv9.i) #12
  br label %audio_get_endpoint_req.exit

audio_get_endpoint_req.exit:                      ; preds = %if.then.i91, %sw.bb7
  %bRequest10.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %50 = ptrtoint ptr %bRequest10.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bRequest10.i, align 1
  %.off.i = add i8 %51, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 4
  %conv12.i = zext i16 %14 to i32
  br i1 %switch.i, label %audio_get_endpoint_req.exit.do.body16_crit_edge, label %audio_get_endpoint_req.exit.if.end44_crit_edge

audio_get_endpoint_req.exit.if.end44_crit_edge:   ; preds = %audio_get_endpoint_req.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

audio_get_endpoint_req.exit.do.body16_crit_edge:  ; preds = %audio_get_endpoint_req.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %16 to i32
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %53, i32 0, i32 11
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %54 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bRequest, align 1
  %conv11 = zext i8 %55 to i32
  %conv12 = zext i16 %11 to i32
  %conv13 = zext i16 %8 to i32
  %conv14 = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %conv, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv14) #16
  br label %if.end44

sw.epilog:                                        ; preds = %entry
  %call4 = tail call fastcc i32 @audio_get_intf_req(ptr noundef %f, ptr noundef %ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp = icmp sgt i32 %call4, -1
  br i1 %cmp, label %sw.epilog.do.body16_crit_edge, label %sw.epilog.if.end44_crit_edge

sw.epilog.if.end44_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

sw.epilog.do.body16_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16

do.body16:                                        ; preds = %sw.epilog.do.body16_crit_edge, %audio_get_endpoint_req.exit.do.body16_crit_edge, %audio_set_endpoint_req.exit.do.body16_crit_edge, %audio_set_intf_req.exit
  %value.097 = phi i32 [ %call4, %sw.epilog.do.body16_crit_edge ], [ %conv63.i, %audio_set_intf_req.exit ], [ %conv12.i, %audio_get_endpoint_req.exit.do.body16_crit_edge ], [ %conv10.i, %audio_set_endpoint_req.exit.do.body16_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f_audio_setup.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@f_audio_setup, %do.end32)) #12
          to label %if.then21 [label %do.end32], !srcloc !174

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 4
  %dev23 = getelementptr inbounds %struct.usb_gadget, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ctrl, align 1
  %conv25 = zext i8 %59 to i32
  %bRequest26 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %60 = ptrtoint ptr %bRequest26 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bRequest26, align 1
  %conv27 = zext i8 %61 to i32
  %conv28 = zext i16 %11 to i32
  %conv29 = zext i16 %8 to i32
  %conv30 = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f_audio_setup.__UNIQUE_ID_ddebug236, ptr noundef %dev23, ptr noundef nonnull @.str.41, i32 noundef %conv25, i32 noundef %conv27, i32 noundef %conv28, i32 noundef %conv29, i32 noundef %conv30) #12
  br label %do.end32

do.end32:                                         ; preds = %if.then21, %do.body16
  %zero = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 6
  %62 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %62)
  %bf.load = load i32, ptr %zero, align 4
  %bf.clear = and i32 %bf.load, -8193
  store i32 %bf.clear, ptr %zero, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 1
  %63 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %value.097, ptr %length, align 4
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %3, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ep0, align 4
  %call34 = tail call i32 @usb_ep_queue(ptr noundef %67, ptr noundef %5, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end40, label %do.end32.if.end44_crit_edge

do.end32.if.end44_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

do.end40:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %3, align 4
  %dev42 = getelementptr inbounds %struct.usb_gadget, ptr %69, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.43, i32 noundef %call34) #16
  br label %if.end44

if.end44:                                         ; preds = %do.end40, %do.end32.if.end44_crit_edge, %sw.epilog.if.end44_crit_edge, %do.end, %audio_get_endpoint_req.exit.if.end44_crit_edge, %audio_set_endpoint_req.exit.if.end44_crit_edge
  %value.1 = phi i32 [ %call34, %do.end40 ], [ %call34, %do.end32.if.end44_crit_edge ], [ %call4, %sw.epilog.if.end44_crit_edge ], [ -95, %do.end ], [ -95, %audio_get_endpoint_req.exit.if.end44_crit_edge ], [ -95, %audio_set_endpoint_req.exit.if.end44_crit_edge ]
  ret i32 %value.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @f_audio_disable(ptr nocapture noundef %f) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f_audio_free(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @gaudio_cleanup(ptr noundef %f) #12
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %0 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fi, align 4
  tail call void @kfree(ptr noundef %f) #12
  %lock = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcnt, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refcnt, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f_audio_playback_work(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %data, i32 -48
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %play_queue = getelementptr i8, ptr %data, i32 44
  %0 = ptrtoint ptr %play_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %play_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %play_queue
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %data, i32 -252
  %add.ptr5 = getelementptr i8, ptr %1, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  %10 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr5, align 4
  %actual = getelementptr i8, ptr %1, i32 -4
  %12 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual, align 4
  %call7 = tail call i32 @u_audio_playback(ptr noundef %add.ptr, ptr noundef %11, i32 noundef %13) #12
  %14 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr5, align 4
  tail call void @kfree(ptr noundef %15) #12
  tail call void @kfree(ptr noundef %add.ptr5) #12
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gaudio_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gaudio_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_get_playback_channels(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_get_playback_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f_audio_complete(ptr noundef %ep, ptr noundef %req) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data)
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cond = icmp eq i32 %3, 0
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %out_ep2 = getelementptr inbounds %struct.f_audio, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %out_ep2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %out_ep2, align 4
  %cmp = icmp eq ptr %6, %ep
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %config.i = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %cdev1.i = getelementptr inbounds %struct.usb_configuration, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %cdev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cdev1.i, align 4
  %copy_buf2.i = getelementptr inbounds %struct.f_audio, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %copy_buf2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %copy_buf2.i, align 4
  %fi.i = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 24
  %13 = ptrtoint ptr %fi.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fi.i, align 4
  %audio_buf_size5.i = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %audio_buf_size5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %audio_buf_size5.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then.sw.epilog_crit_edge, label %if.end.i

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then
  %actual.i = getelementptr inbounds %struct.f_audio_buf, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %actual.i, align 4
  %sub.i = sub i32 %16, %18
  %actual6.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %19 = ptrtoint ptr %actual6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %actual6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %20)
  %cmp.i = icmp ult i32 %sub.i, %20
  br i1 %cmp.i, label %if.then7.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then7.i:                                       ; preds = %if.end.i
  %lock.i = getelementptr inbounds %struct.f_audio, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %list.i = getelementptr inbounds %struct.f_audio_buf, ptr %12, i32 0, i32 2
  %play_queue.i = getelementptr inbounds %struct.f_audio, ptr %1, i32 0, i32 9
  %prev.i.i = getelementptr inbounds %struct.f_audio, ptr %1, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %22, ptr noundef %play_queue.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then7.i.list_add_tail.exit.i_crit_edge

if.then7.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %list.i, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %play_queue.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.f_audio_buf, ptr %12, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %list.i, ptr %22, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then7.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  %playback_work.i = getelementptr inbounds %struct.f_audio, ptr %1, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i1.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %playback_work.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 2848, i32 noundef 16) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %list_add_tail.exit.i.sw.epilog_crit_edge, label %if.end8.i.i.i.i

list_add_tail.exit.i.sw.epilog_crit_edge:         ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end8.i.i.i.i:                                  ; preds = %list_add_tail.exit.i
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 2848) #17
  %29 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call9.i.i.i.i, ptr %call7.i.i.i.i, align 8
  %tobool4.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %f_audio_buffer_alloc.exit.i

if.then5.i.i:                                     ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #12
  br label %sw.epilog

f_audio_buffer_alloc.exit.i:                      ; preds = %if.end8.i.i.i.i
  %cmp.i.i = icmp ugt ptr %call7.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %f_audio_buffer_alloc.exit.i.sw.epilog_crit_edge, label %f_audio_buffer_alloc.exit.i.if.end13.i_crit_edge

f_audio_buffer_alloc.exit.i.if.end13.i_crit_edge: ; preds = %f_audio_buffer_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

f_audio_buffer_alloc.exit.i.sw.epilog_crit_edge:  ; preds = %f_audio_buffer_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end13.i:                                       ; preds = %f_audio_buffer_alloc.exit.i.if.end13.i_crit_edge, %if.end.i.if.end13.i_crit_edge
  %copy_buf.0.i = phi ptr [ %call7.i.i.i.i, %f_audio_buffer_alloc.exit.i.if.end13.i_crit_edge ], [ %12, %if.end.i.if.end13.i_crit_edge ]
  %30 = ptrtoint ptr %copy_buf.0.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %copy_buf.0.i, align 4
  %actual14.i = getelementptr inbounds %struct.f_audio_buf, ptr %copy_buf.0.i, i32 0, i32 1
  %32 = ptrtoint ptr %actual14.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %actual14.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %31, i32 %33
  %34 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %req, align 4
  %36 = ptrtoint ptr %actual6.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %actual6.i, align 4
  %38 = call ptr @memcpy(ptr %add.ptr15.i, ptr %35, i32 %37)
  %39 = load i32, ptr %actual6.i, align 4
  %40 = load i32, ptr %actual14.i, align 4
  %add.i = add i32 %40, %39
  store i32 %add.i, ptr %actual14.i, align 4
  %41 = ptrtoint ptr %copy_buf2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %copy_buf.0.i, ptr %copy_buf2.i, align 4
  %call21.i = tail call i32 @usb_ep_queue(ptr noundef %ep, ptr noundef %req, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end13.i.sw.epilog_crit_edge, label %do.end.i

if.end13.i.sw.epilog_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end.i:                                         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %10, align 4
  %dev.i = getelementptr inbounds %struct.usb_gadget, ptr %43, i32 0, i32 11
  %name.i = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %44 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.34, ptr noundef %45, i32 noundef %call21.i) #16
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %set_con = getelementptr inbounds %struct.f_audio, ptr %1, i32 0, i32 12
  %46 = ptrtoint ptr %set_con to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %set_con, align 4
  %tobool.not = icmp eq ptr %47, null
  br i1 %tobool.not, label %if.else.sw.epilog_crit_edge, label %if.then3

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %req, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %50 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %length, align 4
  %52 = call ptr @memcpy(ptr %data, ptr %49, i32 %51)
  %set = getelementptr inbounds %struct.usb_audio_control, ptr %47, i32 0, i32 4
  %53 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set, align 4
  %set_cmd = getelementptr inbounds %struct.f_audio, ptr %1, i32 0, i32 11
  %55 = ptrtoint ptr %set_cmd to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %set_cmd, align 4
  %57 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %57)
  %data.0.data.0.data.0. = load i32, ptr %data, align 4
  %conv = trunc i32 %data.0.data.0.data.0. to i16
  %58 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %conv6 = zext i16 %58 to i32
  %call7 = tail call i32 %54(ptr noundef nonnull %47, i8 noundef zeroext %56, i32 noundef %conv6) #12
  %59 = ptrtoint ptr %set_con to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %set_con, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then3, %if.else.sw.epilog_crit_edge, %do.end.i, %if.end13.i.sw.epilog_crit_edge, %f_audio_buffer_alloc.exit.i.sw.epilog_crit_edge, %if.then5.i.i, %list_add_tail.exit.i.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @audio_get_intf_req(ptr noundef %f, ptr nocapture noundef readonly %ctrl) unnamed_addr #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  %req2 = getelementptr inbounds %struct.usb_composite_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %req2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value)
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -95, ptr %value, align 4
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %7 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %wIndex, align 1
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %9 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %wLength, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %12 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %wValue, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %15 = lshr i16 %14, 8
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %16 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bRequest, align 1
  %18 = and i8 %17, 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @audio_get_intf_req.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@audio_get_intf_req, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !174

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv4 = zext i16 %14 to i32
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bRequest, align 1
  %conv16 = zext i8 %22 to i32
  %conv18 = zext i16 %11 to i32
  %23 = and i16 %8, 255
  %conv19 = zext i16 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @audio_get_intf_req.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %conv16, i32 noundef %conv4, i32 noundef %conv18, i32 noundef %conv19) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cs20 = getelementptr inbounds %struct.f_audio, ptr %f, i32 0, i32 10
  %24 = trunc i16 %8 to i8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %cs.0.in = phi ptr [ %cs20, %do.end ], [ %cs.0, %for.body.for.cond_crit_edge ]
  %25 = ptrtoint ptr %cs.0.in to i32
  call void @__asan_load4_noabort(i32 %25)
  %cs.0 = load ptr, ptr %cs.0.in, align 4
  %cmp.not = icmp eq ptr %cs.0, %cs20
  br i1 %cmp.not, label %for.cond.for.end65_crit_edge, label %for.body

for.cond.for.end65_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end65

for.body:                                         ; preds = %for.cond
  %id26 = getelementptr inbounds %struct.usb_audio_control_selector, ptr %cs.0, i32 0, i32 2
  %26 = ptrtoint ptr %id26 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %id26, align 4
  %cmp29 = icmp eq i8 %27, %24
  br i1 %cmp29, label %if.then31, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then31:                                        ; preds = %for.body
  %control = getelementptr inbounds %struct.usb_audio_control_selector, ptr %cs.0, i32 0, i32 1
  %28 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %28)
  %con.0103 = load ptr, ptr %control, align 4
  %cmp39.not104 = icmp eq ptr %con.0103, %control
  br i1 %cmp39.not104, label %if.then31.for.end65_crit_edge, label %if.then31.for.body43_crit_edge

if.then31.for.body43_crit_edge:                   ; preds = %if.then31
  br label %for.body43

if.then31.for.end65_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end65

for.body43:                                       ; preds = %for.inc.for.body43_crit_edge, %if.then31.for.body43_crit_edge
  %con.0105 = phi ptr [ %con.0, %for.inc.for.body43_crit_edge ], [ %con.0103, %if.then31.for.body43_crit_edge ]
  %type = getelementptr inbounds %struct.usb_audio_control, ptr %con.0105, i32 0, i32 2
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %type, align 4
  %31 = zext i8 %30 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %31)
  %cmp46 = icmp eq i16 %15, %31
  br i1 %cmp46, label %land.lhs.true, label %for.body43.for.inc_crit_edge

for.body43.for.inc_crit_edge:                     ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body43
  %get = getelementptr inbounds %struct.usb_audio_control, ptr %con.0105, i32 0, i32 5
  %32 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get, align 4
  %tobool48.not = icmp eq ptr %33, null
  br i1 %tobool48.not, label %land.lhs.true.for.inc_crit_edge, label %if.then49

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then49:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call51 = tail call i32 %33(ptr noundef %con.0105, i8 noundef zeroext %18) #12
  %34 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call51, ptr %value, align 4
  br label %for.end65

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body43.for.inc_crit_edge
  %35 = ptrtoint ptr %con.0105 to i32
  call void @__asan_load4_noabort(i32 %35)
  %con.0 = load ptr, ptr %con.0105, align 4
  %cmp39.not = icmp eq ptr %con.0, %control
  br i1 %cmp39.not, label %for.inc.for.end65_crit_edge, label %for.inc.for.body43_crit_edge

for.inc.for.body43_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body43

for.inc.for.end65_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end65

for.end65:                                        ; preds = %for.inc.for.end65_crit_edge, %if.then49, %if.then31.for.end65_crit_edge, %for.cond.for.end65_crit_edge
  %context = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 8
  %36 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %f, ptr %context, align 4
  %complete = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 7
  %37 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @f_audio_complete, ptr %complete, align 4
  %38 = tail call i16 @llvm.umin.i16(i16 %11, i16 4)
  %cond = zext i16 %38 to i32
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %5, align 4
  %41 = call ptr @memcpy(ptr %40, ptr %value, i32 %cond)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value)
  ret i32 %cond
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @generic_set_cmd(ptr nocapture noundef writeonly %con, i8 noundef zeroext %cmd, i32 noundef %value) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %cmd to i32
  %arrayidx = getelementptr %struct.usb_audio_control, ptr %con, i32 0, i32 3, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %arrayidx, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @generic_get_cmd(ptr nocapture noundef readonly %con, i8 noundef zeroext %cmd) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %cmd to i32
  %arrayidx = getelementptr %struct.usb_audio_control, ptr %con, i32 0, i32 3, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_playback(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !10, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !42, !44, !45, !47, !48, !50, !52, !53, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !101, !102, !103, !104, !106, !107, !108, !109, !110, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !147, !148, !149, !151, !152, !154, !156, !158, !160, !162}
!llvm.module.flags = !{!164, !165, !166, !167, !168, !169, !170, !171}
!llvm.ident = !{!172}

!0 = !{ptr @__UNIQUE_ID_alias238, !1, !"__UNIQUE_ID_alias238", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 1016, i32 1}
!2 = !{ptr @__initcall__kmod_usb_f_uac1_legacy__239_1016_uac1_legacymod_init6, !1, !"__initcall__kmod_usb_f_uac1_legacy__239_1016_uac1_legacymod_init6", i1 false, i1 false}
!3 = !{ptr @__exitcall_uac1_legacymod_exit, !1, !"__exitcall_uac1_legacymod_exit", i1 false, i1 false}
!4 = !{ptr @__UNIQUE_ID_file240, !5, !"__UNIQUE_ID_file240", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 1017, i32 1}
!6 = !{ptr @__UNIQUE_ID_license241, !5, !"__UNIQUE_ID_license241", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author242, !8, !"__UNIQUE_ID_author242", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 1018, i32 1}
!9 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @uac1_legacyusb_func, !1, !"uac1_legacyusb_func", i1 false, i1 false}
!11 = !{ptr @f_audio_alloc_inst.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 949, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 952, i32 54}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 958, i32 18}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 959, i32 17}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 960, i32 18}
!22 = !{ptr @f_uac1_func_type, !23, !"f_uac1_func_type", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 921, i32 38}
!24 = !{ptr @f_uac1_item_ops, !25, !"f_uac1_item_ops", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 815, i32 40}
!26 = !{ptr @f_uac1_attrs, !27, !"f_uac1_attrs", i1 false, i1 false}
!27 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 911, i32 35}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 860, i32 1}
!30 = !{ptr @f_uac1_opts_attr_req_buf_size, !29, !"f_uac1_opts_attr_req_buf_size", i1 false, i1 false}
!31 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 861, i32 1}
!34 = !{ptr @f_uac1_opts_attr_req_count, !33, !"f_uac1_opts_attr_req_count", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 862, i32 1}
!37 = !{ptr @f_uac1_opts_attr_audio_buf_size, !36, !"f_uac1_opts_attr_audio_buf_size", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 907, i32 1}
!40 = !{ptr @f_uac1_opts_attr_fn_play, !39, !"f_uac1_opts_attr_fn_play", i1 false, i1 false}
!41 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 908, i32 1}
!44 = !{ptr @f_uac1_opts_attr_fn_cap, !43, !"f_uac1_opts_attr_fn_cap", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 909, i32 1}
!47 = !{ptr @f_uac1_opts_attr_fn_cntl, !46, !"f_uac1_opts_attr_fn_cntl", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 992, i32 26}
!50 = !{ptr @f_audio_alloc.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 999, i32 2}
!52 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @f_audio_alloc.__key.16, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 1011, i32 2}
!55 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @uac1_strings, !57, !"uac1_strings", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 234, i32 35}
!58 = !{ptr @str_uac1, !59, !"str_uac1", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 229, i32 34}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 219, i32 18}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 220, i32 27}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 221, i32 36}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 222, i32 24}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 223, i32 28}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 224, i32 23}
!72 = !{ptr @strings_uac1, !73, !"strings_uac1", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 218, i32 26}
!74 = !{ptr @ac_interface_desc, !75, !"ac_interface_desc", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 34, i32 40}
!76 = !{ptr @input_terminal_desc, !77, !"input_terminal_desc", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 67, i32 45}
!78 = !{ptr @feature_unit_desc, !79, !"feature_unit_desc", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 80, i32 45}
!80 = !{ptr @output_terminal_desc, !81, !"output_terminal_desc", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 117, i32 47}
!82 = !{ptr @as_interface_alt_0_desc, !83, !"as_interface_alt_0_desc", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 128, i32 40}
!84 = !{ptr @as_interface_alt_1_desc, !85, !"as_interface_alt_1_desc", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 137, i32 40}
!86 = !{ptr @as_type_i_desc, !87, !"as_type_i_desc", i1 false, i1 false}
!87 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 158, i32 55}
!88 = !{ptr @as_out_ep_desc, !89, !"as_out_ep_desc", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 169, i32 39}
!90 = !{ptr @f_audio_desc, !91, !"f_audio_desc", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 189, i32 38}
!92 = !{ptr @ac_header_desc, !93, !"ac_header_desc", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 53, i32 43}
!94 = !{ptr @as_header_desc, !95, !"as_header_desc", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 147, i32 41}
!96 = !{ptr @as_iso_out_desc, !97, !"as_iso_out_desc", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 180, i32 43}
!98 = !{ptr @.str.24, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 584, i32 2}
!100 = !{ptr @.str.25, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.26, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.27, !99, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @f_audio_set_alt.__UNIQUE_ID_ddebug237, !99, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!104 = !{ptr @.str.28, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 593, i32 3}
!106 = !{ptr @.str.29, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.30, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @f_audio_set_alt._entry, !105, !"_entry", i1 false, i1 false}
!109 = !{ptr @f_audio_set_alt._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @f_audio_set_alt._entry.31, !111, !"_entry", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 600, i32 4}
!112 = !{ptr @f_audio_set_alt._entry_ptr.32, !111, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.34, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 632, i32 8}
!115 = !{ptr @f_audio_set_alt._entry.33, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @f_audio_set_alt._entry_ptr.35, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.36, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 354, i32 3}
!119 = !{ptr @f_audio_out_ep_complete._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @f_audio_out_ep_complete._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.37, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 665, i32 3}
!123 = !{ptr @.str.38, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @f_audio_get_alt._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @f_audio_get_alt._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.39, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 553, i32 3}
!128 = !{ptr @.str.40, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @f_audio_setup._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @f_audio_setup._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.41, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 560, i32 3}
!133 = !{ptr @f_audio_setup.__UNIQUE_ID_ddebug236, !132, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!134 = !{ptr @.str.43, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 567, i32 4}
!136 = !{ptr @f_audio_setup._entry.42, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @f_audio_setup._entry_ptr.44, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.45, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 398, i32 2}
!140 = !{ptr @.str.46, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @audio_set_intf_req.__UNIQUE_ID_ddebug230, !139, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!142 = !{ptr @.str.47, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 435, i32 2}
!144 = !{ptr @audio_get_intf_req.__UNIQUE_ID_ddebug231, !143, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!145 = !{ptr @.str.48, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 467, i32 2}
!147 = !{ptr @.str.49, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @audio_set_endpoint_req.__UNIQUE_ID_ddebug234, !146, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!149 = !{ptr @.str.50, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 503, i32 2}
!151 = !{ptr @audio_get_endpoint_req.__UNIQUE_ID_ddebug235, !150, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!152 = !{ptr @.str.51, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 111, i32 10}
!154 = !{ptr @feature_unit, !155, !"feature_unit", i1 false, i1 false}
!155 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 108, i32 42}
!156 = !{ptr @.str.52, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 92, i32 10}
!158 = !{ptr @mute_control, !159, !"mute_control", i1 false, i1 false}
!159 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 90, i32 33}
!160 = !{ptr @.str.53, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 101, i32 10}
!162 = !{ptr @volume_control, !163, !"volume_control", i1 false, i1 false}
!163 = !{!"../drivers/usb/gadget/function/f_uac1_legacy.c", i32 99, i32 33}
!164 = !{i32 1, !"wchar_size", i32 2}
!165 = !{i32 1, !"min_enum_size", i32 4}
!166 = !{i32 8, !"branch-target-enforcement", i32 0}
!167 = !{i32 8, !"sign-return-address", i32 0}
!168 = !{i32 8, !"sign-return-address-all", i32 0}
!169 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!170 = !{i32 7, !"uwtable", i32 1}
!171 = !{i32 7, !"frame-pointer", i32 2}
!172 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!173 = !{!"auto-init"}
!174 = !{i64 2148226192, i64 2148226197, i64 2148226210, i64 2148226254, i64 2148226288, i64 2148226309}
